void sub_297504CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, xpc_object_t object, xpc_object_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, xpc_object_t a25, xpc_object_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, xpc_object_t a34)
{
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(v36 - 128);
  xpc_release(object);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  xpc_release(a17);
  std::__shared_weak_count::__release_weak(v34);
  xpc_release(v35);
  _Unwind_Resume(a1);
}

void ___ZN9SARModule27setupTxIndicationWorkaroundEv_block_invoke(void *a1, char a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = a1[5];
      if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      if (a2)
      {
        v9 = *(v5 + 104);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Succeeded in enabling Tx Capping Enable", buf, 2u);
        }
      }

      else
      {
        v11 = a1[7];
        v10 = a1 + 7;
        v12 = *MEMORY[0x29EDC8FA8];
        if (xpc_dictionary_get_value(v11, *MEMORY[0x29EDC8FA8]))
        {
          v13 = *(v5 + 104);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v17[0] = v10;
            v17[1] = v12;
            xpc::dict::object_proxy::operator xpc::object(v17, &object);
            xpc::dyn_cast_or_default(buf, &object, "None", v15);
            if (v20 >= 0)
            {
              v16 = buf;
            }

            else
            {
              v16 = *buf;
            }

            *v21 = 136315138;
            v22 = v16;
            _os_log_error_impl(&dword_297476000, v13, OS_LOG_TYPE_ERROR, "Failed to run command driver: %s", v21, 0xCu);
            if (v20 < 0)
            {
              operator delete(*buf);
            }

            xpc_release(object);
          }
        }
      }
    }
  }

LABEL_12:
  v14 = *MEMORY[0x29EDCA608];
}

void sub_2975050AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t __copy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE56c15_ZTSN3xpc4dictE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a2[7];
  a1[7] = v4;
  if (v4)
  {
    return xpc_retain(v4);
  }

  result = xpc_null_create();
  a1[7] = result;
  return result;
}

void __destroy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE56c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void ___ZN9SARModule27setupTxIndicationWorkaroundEv_block_invoke_57(void *a1, char a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = a1[5];
      if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      if (a2)
      {
        v9 = *(v5 + 104);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Succeeded in enabling Tx indication", buf, 2u);
        }
      }

      else
      {
        v11 = a1[7];
        v10 = a1 + 7;
        v12 = *MEMORY[0x29EDC8FA8];
        if (xpc_dictionary_get_value(v11, *MEMORY[0x29EDC8FA8]))
        {
          v13 = *(v5 + 104);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v17[0] = v10;
            v17[1] = v12;
            xpc::dict::object_proxy::operator xpc::object(v17, &object);
            xpc::dyn_cast_or_default(buf, &object, "None", v15);
            if (v20 >= 0)
            {
              v16 = buf;
            }

            else
            {
              v16 = *buf;
            }

            *v21 = 136315138;
            v22 = v16;
            _os_log_error_impl(&dword_297476000, v13, OS_LOG_TYPE_ERROR, "Failed to run command driver: %s", v21, 0xCu);
            if (v20 < 0)
            {
              operator delete(*buf);
            }

            xpc_release(object);
          }
        }
      }
    }
  }

LABEL_12:
  v14 = *MEMORY[0x29EDCA608];
}

void sub_297505358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN9SARModule27setupTxIndicationWorkaroundEv_block_invoke_58(void *a1, char a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = a1[5];
      if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      if (a2)
      {
        v9 = *(v5 + 104);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Succeeded in registering Tx indication", buf, 2u);
        }
      }

      else
      {
        v11 = a1[7];
        v10 = a1 + 7;
        v12 = *MEMORY[0x29EDC8FA8];
        if (xpc_dictionary_get_value(v11, *MEMORY[0x29EDC8FA8]))
        {
          v13 = *(v5 + 104);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v17[0] = v10;
            v17[1] = v12;
            xpc::dict::object_proxy::operator xpc::object(v17, &object);
            xpc::dyn_cast_or_default(buf, &object, "None", v15);
            if (v20 >= 0)
            {
              v16 = buf;
            }

            else
            {
              v16 = *buf;
            }

            *v21 = 136315138;
            v22 = v16;
            _os_log_error_impl(&dword_297476000, v13, OS_LOG_TYPE_ERROR, "Failed to run command driver: %s", v21, 0xCu);
            if (v20 < 0)
            {
              operator delete(*buf);
            }

            xpc_release(object);
          }
        }
      }
    }
  }

LABEL_12:
  v14 = *MEMORY[0x29EDCA608];
}

void sub_297505550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void SARModule::transmitStateHandler(void *a1, int a2, int a3)
{
  v4 = a1[10];
  if (!v4 || (v7 = a1[9], (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x10uLL);
  *v10 = a1;
  v10[2] = a2;
  v10[3] = a3;
  v11 = a1[11];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0>(SARModule::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0,dispatch_queue_s *::default_delete<SARModule::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void SARModule::createTransmitStateDict_sync(capabilities::radio *a1@<X0>, int a2@<W1>, int a3@<W2>, xpc_object_t *a4@<X8>)
{
  if (capabilities::radio::maverick(a1))
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8 || (v8 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C272BA0](v8) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v8);
        v9 = v8;
      }

      else
      {
        v9 = xpc_null_create();
      }
    }

    else
    {
      v9 = xpc_null_create();
      v8 = 0;
    }

    xpc_release(v8);
    if (a2 == 1)
    {
      v11 = xpc_string_create(*MEMORY[0x29EDBF668]);
      if (!v11)
      {
        v11 = xpc_null_create();
      }
    }

    else
    {
      if (a2)
      {
        *a4 = xpc_null_create();
LABEL_39:
        xpc_release(v9);
        return;
      }

      v11 = xpc_string_create(*MEMORY[0x29EDBF308]);
      if (!v11)
      {
        v11 = xpc_null_create();
      }
    }

    xpc_dictionary_set_value(v9, *MEMORY[0x29EDBF2A0], v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v13 = xpc_string_create(*MEMORY[0x29EDBF300]);
        if (!v13)
        {
          v13 = xpc_null_create();
        }

        goto LABEL_35;
      }

      if (a3 == 3)
      {
        v13 = xpc_string_create(*MEMORY[0x29EDBF0E8]);
        if (!v13)
        {
          v13 = xpc_null_create();
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (!a3)
      {
        v13 = xpc_string_create(*MEMORY[0x29EDBF430]);
        if (!v13)
        {
          v13 = xpc_null_create();
        }

        goto LABEL_35;
      }

      if (a3 == 1)
      {
        v13 = xpc_string_create(*MEMORY[0x29EDBF238]);
        if (!v13)
        {
          v13 = xpc_null_create();
        }

LABEL_35:
        xpc_dictionary_set_value(v9, *MEMORY[0x29EDBF488], v13);
        v14 = xpc_null_create();
        xpc_release(v13);
        xpc_release(v14);
      }
    }

    v15 = xpc_string_create(*MEMORY[0x29EDBEBE8]);
    if (!v15)
    {
      v15 = xpc_null_create();
    }

    xpc_dictionary_set_value(v9, *MEMORY[0x29EDBEC68], v15);
    v16 = xpc_null_create();
    xpc_release(v15);
    xpc_release(v16);
    *a4 = v9;
    v9 = xpc_null_create();
    goto LABEL_39;
  }

  v10 = *(a1 + 13);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v17 = 0;
    _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, "This is not supported device", v17, 2u);
  }

  *a4 = xpc_null_create();
}

void SARModule::submitCASARFusion(uint64_t a1, int a2)
{
  v64.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v64.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v64, 0);
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = MEMORY[0x29EDCAA00];
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v4) == v5)
    {
      xpc_retain(v4);
      v6 = v4;
    }

    else
    {
      v6 = xpc_null_create();
    }
  }

  else
  {
    v6 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v7 = *(a1 + 272);
  if (v7)
  {
    *(a1 + 272) = v64.tv_sec - v7;
    if ((*(a1 + 133) & 0xF) != 0)
    {
      v8 = "Head";
    }

    else
    {
      v8 = "Body";
    }

    v9 = xpc_string_create(v8);
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF1D0], v9);
    v10 = xpc_null_create();
    xpc_release(v9);
    xpc_release(v10);
    if (*(a1 + 133) >= 0x10u)
    {
      v11 = "Freespace";
    }

    else
    {
      v11 = "Non-Freespace";
    }

    v12 = xpc_string_create(v11);
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF3B8], v12);
    v13 = xpc_null_create();
    xpc_release(v12);
    xpc_release(v13);
    if (*(a1 + 137) == 2)
    {
      v14 = "Right";
    }

    else if (*(a1 + 136) == 1)
    {
      v14 = "Left";
    }

    else
    {
      v14 = "Default";
    }

    v19 = xpc_string_create(v14);
    if (!v19)
    {
      v19 = xpc_null_create();
    }
  }

  else
  {
    v15 = xpc_string_create("NONE");
    if (!v15)
    {
      v15 = xpc_null_create();
    }

    xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF1D0], v15);
    v16 = xpc_null_create();
    xpc_release(v15);
    xpc_release(v16);
    v17 = xpc_string_create("NONE");
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF3B8], v17);
    v18 = xpc_null_create();
    xpc_release(v17);
    xpc_release(v18);
    v19 = xpc_string_create("NONE");
    if (!v19)
    {
      v19 = xpc_null_create();
    }
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF1C8], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  if ((*(a1 + 132) & 0xF) != 0)
  {
    v21 = "Head";
  }

  else
  {
    v21 = "Body";
  }

  v22 = xpc_string_create(v21);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF1C0], v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  if (*(a1 + 132) >= 0x10u)
  {
    v24 = "Freespace";
  }

  else
  {
    v24 = "Non-Freespace";
  }

  v25 = xpc_string_create(v24);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF3B0], v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  v27 = *(a1 + 136);
  v28 = "Default";
  if (v27 == 1)
  {
    v28 = "Left";
  }

  if (v27 == 2)
  {
    v29 = "Right";
  }

  else
  {
    v29 = v28;
  }

  v30 = xpc_string_create(v29);
  v31 = MEMORY[0x29EDCAA00];
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF1B8], v30);
  v32 = xpc_null_create();
  xpc_release(v30);
  xpc_release(v32);
  if (a2 == 1)
  {
    v33 = &string + 12;
    HIBYTE(v63) = 12;
    qmemcpy(&string, "EventUpdated", 12);
  }

  else
  {
    v33 = &string + 13;
    HIBYTE(v63) = 13;
    if (a2)
    {
      v34 = "UnknownReason";
    }

    else
    {
      v34 = "CallConnected";
    }

    *&string = *v34;
    *(&string + 5) = *(v34 + 5);
  }

  *v33 = 0;
  v35 = xpc_string_create(&string);
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF718], v35);
  v36 = xpc_null_create();
  xpc_release(v35);
  xpc_release(v36);
  if (SHIBYTE(v63) < 0)
  {
    operator delete(string);
  }

  v37 = xpc_int64_create(*(a1 + 272));
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBEF18], v37);
  v38 = xpc_null_create();
  xpc_release(v37);
  xpc_release(v38);
  v39 = xpc_dictionary_create(0, 0, 0);
  if (v39 || (v39 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v39) == v31)
    {
      xpc_retain(v39);
      v40 = v39;
    }

    else
    {
      v40 = xpc_null_create();
    }
  }

  else
  {
    v40 = xpc_null_create();
    v39 = 0;
  }

  xpc_release(v39);
  v41 = xpc_string_create(*MEMORY[0x29EDBE928]);
  if (!v41)
  {
    v41 = xpc_null_create();
  }

  xpc_dictionary_set_value(v40, *MEMORY[0x29EDBE9B0], v41);
  v42 = xpc_null_create();
  xpc_release(v41);
  xpc_release(v42);
  v43 = xpc_string_create(*MEMORY[0x29EDBEC48]);
  if (!v43)
  {
    v43 = xpc_null_create();
  }

  xpc_dictionary_set_value(v40, *MEMORY[0x29EDBE9B8], v43);
  v44 = xpc_null_create();
  xpc_release(v43);
  xpc_release(v44);
  v45 = xpc_string_create(*MEMORY[0x29EDBE778]);
  if (!v45)
  {
    v45 = xpc_null_create();
  }

  xpc_dictionary_set_value(v40, *MEMORY[0x29EDBE7F8], v45);
  v46 = xpc_null_create();
  xpc_release(v45);
  xpc_release(v46);
  if (v6)
  {
    xpc_retain(v6);
    v47 = v6;
  }

  else
  {
    v47 = xpc_null_create();
  }

  xpc_dictionary_set_value(v40, *MEMORY[0x29EDBF020], v47);
  v48 = xpc_null_create();
  xpc_release(v47);
  xpc_release(v48);
  v49 = xpc_dictionary_create(0, 0, 0);
  if (v49 || (v49 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v49) == v31)
    {
      xpc_retain(v49);
      v50 = v49;
    }

    else
    {
      v50 = xpc_null_create();
    }
  }

  else
  {
    v50 = xpc_null_create();
    v49 = 0;
  }

  xpc_release(v49);
  v51 = xpc_string_create(*MEMORY[0x29EDBE550]);
  if (!v51)
  {
    v51 = xpc_null_create();
  }

  xpc_dictionary_set_value(v50, *MEMORY[0x29EDBE588], v51);
  v52 = xpc_null_create();
  xpc_release(v51);
  xpc_release(v52);
  if (v40)
  {
    xpc_retain(v40);
    v53 = v40;
  }

  else
  {
    v53 = xpc_null_create();
  }

  xpc_dictionary_set_value(v50, *MEMORY[0x29EDBE580], v53);
  v54 = xpc_null_create();
  xpc_release(v53);
  xpc_release(v54);
  v55 = *MEMORY[0x29EDBEBD0];
  v56 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v56 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v57 = v56;
  if (v56 >= 0x17)
  {
    if ((v56 | 7) == 0x17)
    {
      v59 = 25;
    }

    else
    {
      v59 = (v56 | 7) + 1;
    }

    p_string = operator new(v59);
    *(&string + 1) = v57;
    v63 = v59 | 0x8000000000000000;
    *&string = p_string;
LABEL_96:
    memmove(p_string, v55, v57);
    *(p_string + v57) = 0;
    object = v50;
    if (v50)
    {
      goto LABEL_91;
    }

    goto LABEL_97;
  }

  HIBYTE(v63) = v56;
  p_string = &string;
  if (v56)
  {
    goto LABEL_96;
  }

  LOBYTE(string) = 0;
  object = v50;
  if (v50)
  {
LABEL_91:
    xpc_retain(v50);
    goto LABEL_98;
  }

LABEL_97:
  object = xpc_null_create();
LABEL_98:
  v60 = 0;
  Service::runCommand(a1, &string, &object, &v60);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v63) < 0)
  {
    operator delete(string);
  }

  *(a1 + 272) = v64.tv_sec;
  xpc_release(v50);
  xpc_release(v40);
  xpc_release(v6);
}

void sub_297506488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  xpc_release(v18);
  xpc_release(v17);
  _Unwind_Resume(a1);
}

uint64_t SARModule::asString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    a2[23] = 12;
    strcpy(a2, "EventUpdated");
  }

  else
  {
    a2[23] = 13;
    if (result)
    {
      qmemcpy(a2, "UnknownReason", 13);
    }

    else
    {
      qmemcpy(a2, "CallConnected", 13);
    }

    a2[13] = 0;
  }

  return result;
}

void SARModule::processCallStatusSARFusion(SARModule *this, char a2)
{
  v3 = *(this + 10);
  if (!v3 || (v5 = *(this + 9), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = this;
  v8[8] = a2;
  v9 = *(this + 11);
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::processCallStatusSARFusion(BOOL)::$_0>(SARModule::processCallStatusSARFusion(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::processCallStatusSARFusion(BOOL)::$_0,dispatch_queue_s *::default_delete<SARModule::processCallStatusSARFusion(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

double SARModule::asString@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 2)
  {
    v6 = operator new(0x28uLL);
    *a2 = v6;
    *(a2 + 8) = xmmword_29769DFD0;
    result = *"Dump coredump along with telephony logs";
    strcpy(v6, "Dump coredump along with telephony logs");
  }

  else if (a1 == 1)
  {
    v5 = operator new(0x20uLL);
    *a2 = v5;
    *(a2 + 8) = xmmword_29769DFE0;
    result = *"Dump only telephony logs";
    strcpy(v5, "Dump only telephony logs");
  }

  else if (a1)
  {
    *(a2 + 23) = 18;
    result = *"Undefined Behavior";
    strcpy(a2, "Undefined Behavior");
  }

  else
  {
    v3 = operator new(0x20uLL);
    *a2 = v3;
    *(a2 + 8) = xmmword_29769DFF0;
    strcpy(v3, "No Action for dumping log");
    return *" for dumping log";
  }

  return result;
}

uint64_t ctu::PthreadMutexGuardPolicy<AppleSARHelper>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

uint64_t AppleSARHelper::dataAction<sar::SARFusion_WristState>(AppleSARHelper *a1, void *a2)
{
  v6[1] = *MEMORY[0x29EDCA608];
  if (*(a1 + 1))
  {
    v6[0] = 0;
    v5 = 0;
    v4 = 1;
    result = AppleSARHelper::callUserClientMethod(a1, 11, v6, 1, a2, 1, &v5, &v4, a2, 1uLL);
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t dispatch::callback<void({block_pointer})(sar::AppleSARMessageType,void *)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

uint64_t dispatch::callback<void({block_pointer})(BOOL)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

uint64_t dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

uint64_t dispatch::callback<void({block_pointer})(unsigned int)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

uint64_t dispatch::callback<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void std::__shared_ptr_pointer<SARModule *,std::shared_ptr<SARModule> ctu::SharedSynchronizable<SARModule>::make_shared_ptr<SARModule>(SARModule*)::{lambda(SARModule *)#1},std::allocator<SARModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<SARModule *,std::shared_ptr<SARModule> ctu::SharedSynchronizable<SARModule>::make_shared_ptr<SARModule>(SARModule*)::{lambda(SARModule *)#1},std::allocator<SARModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI9SARModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI9SARModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI9SARModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI9SARModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<SARModule> ctu::SharedSynchronizable<SARModule>::make_shared_ptr<SARModule>(SARModule*)::{lambda(SARModule*)#1}::operator() const(SARModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(SARModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<SARModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  __p = *a1;
  v1 = (*a1)->__vftable;
  if (v1[6].~__shared_weak_count_0)
  {
    antenna::CommandDriver::registerHandler();
  }

  on_zero_shared_weak = v1[4].__on_zero_shared_weak;
  if (on_zero_shared_weak)
  {
    IOKitEventNotifier::shutdown(on_zero_shared_weak);
  }

  if (__p)
  {
    shared_owners = __p->__shared_owners_;
    if (shared_owners)
    {
      dispatch_group_leave(shared_owners);
      v4 = __p->__shared_owners_;
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(__p);
  }

  v5 = a1;
  if (a1)
  {
    v6 = a1[2];
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        v5 = a1;
      }
    }

    operator delete(v5);
  }
}

void sub_297506E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void sub_297506E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, char a11)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<antenna::AntennaCommandDriverDelegate<SARModule>::create(std::shared_ptr<SARModule>)::MakeSharedEnabler,std::allocator<antenna::AntennaCommandDriverDelegate<SARModule>::create(std::shared_ptr<SARModule>)::MakeSharedEnabler>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E45788;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void antenna::AntennaCommandDriverDelegate<SARModule>::create(std::shared_ptr<SARModule>)::MakeSharedEnabler::~MakeSharedEnabler(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E45830;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  antenna::AntennaCommandDriverDelegateInterface::~AntennaCommandDriverDelegateInterface(a1);
}

void antenna::AntennaCommandDriverDelegate<SARModule>::create(std::shared_ptr<SARModule>)::MakeSharedEnabler::~MakeSharedEnabler(antenna::AntennaCommandDriverDelegateInterface *this)
{
  *this = &unk_2A1E45830;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  antenna::AntennaCommandDriverDelegateInterface::~AntennaCommandDriverDelegateInterface(this);

  operator delete(v3);
}

void antenna::AntennaCommandDriverDelegate<SARModule>::signalTransmitState(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        SARModule::transmitStateHandler(v9, a2, a3);
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);

        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void antenna::AntennaCommandDriverDelegate<SARModule>::~AntennaCommandDriverDelegate(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E45830;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  antenna::AntennaCommandDriverDelegateInterface::~AntennaCommandDriverDelegateInterface(a1);
}

void antenna::AntennaCommandDriverDelegate<SARModule>::~AntennaCommandDriverDelegate(antenna::AntennaCommandDriverDelegateInterface *this)
{
  *this = &unk_2A1E45830;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  antenna::AntennaCommandDriverDelegateInterface::~AntennaCommandDriverDelegateInterface(this);

  operator delete(v3);
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  SARModule::registerCommandHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_2975071DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  SARModule::registerEventHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_2975072D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>(SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2,dispatch_queue_s *::default_delete<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  SARModule::initializeHelpers_sync(**a1);
  operator delete(v2);
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1;
  }

  else
  {
    v4 = a1;
  }

  operator delete(v4);
}

void sub_2975073B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = 3760250884;
  if (MEMORY[0x29C272BA0]((*a1)[1]) == MEMORY[0x29EDCAA00])
  {
    v5 = *(v3 + 144);
    if (v5)
    {
      v6 = v2[1];
      object = v6;
      if (v6)
      {
        xpc_retain(v6);
      }

      else
      {
        object = xpc_null_create();
      }

      AudioManager::setAudioState(v5, &object);
      xpc_release(object);
      v4 = 0;
      object = 0;
    }

    else
    {
      v7 = *(v3 + 104);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I Audio Manager is not created yet", buf, 2u);
      }
    }
  }

  else
  {
    v4 = 3760250880;
  }

  v8 = v2[2];
  *buf = xpc_null_create();
  (*(v8 + 16))(v8, v4, buf);
  xpc_release(*buf);
  v9 = v2[2];
  if (v9)
  {
    _Block_release(v9);
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v10 = a1[2];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  operator delete(a1);
}

void sub_29750755C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN9SARModule28registerCommandHandlers_syncEvEUb_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9SARModule28registerCommandHandlers_syncEvEUb_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v30 = *a1;
  v2 = (*a1)->__vftable;
  v3 = MEMORY[0x29C272BA0]((*a1)->__shared_owners_);
  get_deleter = v2[2].__get_deleter;
  if (v3 != MEMORY[0x29EDCAA00])
  {
    v5 = 3760250880;
    if (os_log_type_enabled(v2[2].__get_deleter, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_ERROR, "Motion parameter dictionary is empty!", buf, 2u);
    }

    goto LABEL_50;
  }

  if (os_log_type_enabled(v2[2].__get_deleter, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x29C272AD0](v1->__shared_owners_);
    memset(buf, 170, 24);
    v7 = strlen(v6);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      if ((v7 | 7) == 0x17)
      {
        v10 = 25;
      }

      else
      {
        v10 = (v7 | 7) + 1;
      }

      v9 = operator new(v10);
      *&buf[8] = v8;
      *&buf[16] = v10 | 0x8000000000000000;
      *buf = v9;
    }

    else
    {
      buf[23] = v7;
      v9 = buf;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    memcpy(v9, v6, v8);
LABEL_14:
    *(v9 + v8) = 0;
    free(v6);
    v11 = buf;
    if ((buf[23] & 0x80u) != 0)
    {
      v11 = *buf;
    }

    *v33 = 136315138;
    *&v33[4] = v11;
    _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Motion parameter is given: %s", v33, 0xCu);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    get_deleter = v2[2].__get_deleter;
  }

  if (v2[2].__on_zero_shared_weak)
  {
    if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Set CoreMotion On Body Handler's motion parameter!", buf, 2u);
    }

    ctu::xpc_to_cf(v33, v1->__shared_owners_, v12);
    v13 = *v33;
    if (*v33 && (v14 = CFGetTypeID(*v33), v14 == CFDictionaryGetTypeID()))
    {
      *buf = v13;
      CFRetain(v13);
      v15 = *v33;
      if (!*v33)
      {
LABEL_28:
        CMOnBodyDelegate::setThresholds(v2[2].__on_zero_shared_weak, v13);
        if (v13)
        {
          CFRelease(v13);
        }

LABEL_31:
        v16 = v2[4].~__shared_weak_count;
        v17 = v2[2].__get_deleter;
        v18 = v17;
        if (v16)
        {
          goto LABEL_32;
        }

LABEL_42:
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_297476000, v17, OS_LOG_TYPE_DEBUG, "#D OBD manager is empty", buf, 2u);
          on_zero_shared = v2[5].__on_zero_shared;
          v21 = v2[2].__get_deleter;
          v22 = v21;
          if (on_zero_shared)
          {
            goto LABEL_44;
          }
        }

        else
        {
          on_zero_shared = v2[5].__on_zero_shared;
          v21 = v2[2].__get_deleter;
          v22 = v21;
          if (on_zero_shared)
          {
            goto LABEL_44;
          }
        }

LABEL_38:
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_297476000, v21, OS_LOG_TYPE_DEBUG, "#D hand detection manager is empty", buf, 2u);
        }

        v5 = 0;
        goto LABEL_50;
      }
    }

    else
    {
      v13 = 0;
      *buf = 0;
      v15 = *v33;
      if (!*v33)
      {
        goto LABEL_28;
      }
    }

    CFRelease(v15);
    goto LABEL_28;
  }

  if (!os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_31;
  }

  *buf = 0;
  _os_log_debug_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEBUG, "#D CoreMotion On Body Handler is empty", buf, 2u);
  v16 = v2[4].~__shared_weak_count;
  v17 = v2[2].__get_deleter;
  v18 = v17;
  if (!v16)
  {
    goto LABEL_42;
  }

LABEL_32:
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v17, OS_LOG_TYPE_DEFAULT, "#I Setting OBD manager's motion parameter!", buf, 2u);
    v16 = v2[4].~__shared_weak_count;
  }

  shared_owners = v1->__shared_owners_;
  *v33 = shared_owners;
  if (shared_owners)
  {
    xpc_retain(shared_owners);
  }

  else
  {
    shared_owners = xpc_null_create();
    *v33 = shared_owners;
  }

  OBDManager::setMotionParameter(v16, v33);
  xpc_release(shared_owners);
  *v33 = 0;
  on_zero_shared = v2[5].__on_zero_shared;
  v21 = v2[2].__get_deleter;
  v22 = v21;
  if (!on_zero_shared)
  {
    goto LABEL_38;
  }

LABEL_44:
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v21, OS_LOG_TYPE_DEFAULT, "#I Setting hand detection manager's motion parameter!", buf, 2u);
    on_zero_shared = v2[5].__on_zero_shared;
  }

  v23 = v1->__shared_owners_;
  v31 = v23;
  if (v23)
  {
    xpc_retain(v23);
  }

  else
  {
    v23 = xpc_null_create();
    v31 = v23;
  }

  HandDetectionManager::setMotionParameter(on_zero_shared, &v31);
  xpc_release(v23);
  v5 = 0;
  v31 = 0;
LABEL_50:
  shared_weak_owners = v1->__shared_weak_owners_;
  *buf = xpc_null_create();
  (*(shared_weak_owners + 16))(shared_weak_owners, v5, buf);
  xpc_release(*buf);
  if (v30)
  {
    v25 = v30->__shared_weak_owners_;
    if (v25)
    {
      _Block_release(v25);
    }

    xpc_release(v30->__shared_owners_);
    operator delete(v30);
  }

  v26 = a1;
  if (a1)
  {
    v27 = a1[2];
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
      v26 = a1;
    }

    operator delete(v26);
  }

  v28 = *MEMORY[0x29EDCA608];
}

void sub_297507B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, xpc_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9SARModule28registerCommandHandlers_syncEvEUb0_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void std::shared_ptr<AppleSARHelper>::operator=[abi:ne200100](__int128 *a1)
{
  v1 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v2 = *(&off_2A139A120 + 1);
  off_2A139A120 = v1;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t a1)
{
  v46[1] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v39 = *a1;
  v2 = **a1;
  value = xpc_dictionary_get_value(*(*a1 + 8), *MEMORY[0x29EDBE770]);
  v4 = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v4 = xpc_null_create();
  }

  if (MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA40])
  {
    v5 = *(v2 + 104);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (!v1[2])
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    LOWORD(object) = 0;
    _os_log_error_impl(&dword_297476000, v5, OS_LOG_TYPE_ERROR, "Failed to get accessory information!", &object, 2u);
    if (v1[2])
    {
LABEL_7:
      v6 = xpc_null_create();
      v7 = v1[2];
      object = v6;
      v8 = xpc_null_create();
      (*(v7 + 16))(v7, 3760250880, &object);
      xpc_release(object);
      xpc_release(v8);
    }
  }

LABEL_8:
  bytes_ptr = xpc_data_get_bytes_ptr(v4);
  length = xpc_data_get_length(v4);
  object = 0;
  v41 = 0;
  v42 = 0;
  if (length >= 0xC)
  {
    v11 = 12 * (length / 0xC);
    v12 = operator new(v11);
    v13 = 0;
    do
    {
      v14 = &v12[v13];
      v15 = *&bytes_ptr[v13];
      *(v14 + 2) = *&bytes_ptr[v13 + 8];
      *v14 = v15;
      v13 += 12;
    }

    while (v11 != v13);
    object = v12;
    v41 = &v12[v11];
    v42 = &v12[v11];
  }

  v16 = SARModule::convertUSBCAccessoryBitMask(v2, &object);
  *(v2 + 236) = v16;
  v17 = *(v2 + 240) | v16;
  *(v2 + 128) = v17;
  v18 = *(v2 + 104);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v17;
    _os_log_impl(&dword_297476000, v18, OS_LOG_TYPE_DEFAULT, "#I Sending Accessory State with USB-C: 0x%x", buf, 8u);
  }

  v19 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v20 = off_2A139A120;
  if (!off_2A139A120)
  {
    AppleSARHelper::create_default_global(buf, v19);
    v21 = *buf;
    memset(buf, 0, sizeof(buf));
    v22 = *(&off_2A139A120 + 1);
    off_2A139A120 = v21;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }

    v23 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }

    v20 = off_2A139A120;
  }

  v24 = *(&off_2A139A120 + 1);
  if (*(&off_2A139A120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A139A120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v43 = *(v2 + 128);
  if (*(v20 + 1))
  {
    *buf = 0;
    v46[0] = 0;
    v44 = 1;
    v25 = AppleSARHelper::callUserClientMethod(v20, 3, buf, 1, &v43, 4, v46, &v44, &v43, 4uLL);
    if (!v24)
    {
LABEL_29:
      if (v25)
      {
        goto LABEL_30;
      }

LABEL_33:
      v30 = *(v2 + 104);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297476000, v30, OS_LOG_TYPE_ERROR, "Failed to set SAR Fusion State!", buf, 2u);
        if (!v1[2])
        {
          goto LABEL_36;
        }
      }

      else if (!v1[2])
      {
        goto LABEL_36;
      }

      v31 = xpc_null_create();
      v32 = v1[2];
      *buf = v31;
      v33 = xpc_null_create();
      (*(v32 + 16))(v32, 3760250880, buf);
      xpc_release(*buf);
      xpc_release(v33);
      goto LABEL_36;
    }
  }

  else
  {
    v25 = 0;
    if (!v24)
    {
      goto LABEL_29;
    }
  }

  if (atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_29;
  }

  v29 = v25;
  (v24->__on_zero_shared)(v24);
  std::__shared_weak_count::__release_weak(v24);
  if ((v29 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_30:
  if (v1[2])
  {
    v26 = xpc_null_create();
    v27 = v1[2];
    *buf = v26;
    v28 = xpc_null_create();
    (*(v27 + 16))(v27, 0, buf);
    xpc_release(*buf);
    xpc_release(v28);
  }

LABEL_36:
  if (object)
  {
    operator delete(object);
  }

  xpc_release(v4);
  if (v39)
  {
    v34 = v39[2];
    if (v34)
    {
      _Block_release(v34);
    }

    xpc_release(v39[1]);
    operator delete(v39);
  }

  v35 = a1;
  if (a1)
  {
    v36 = *(a1 + 16);
    if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v36->__on_zero_shared)(v36);
      std::__shared_weak_count::__release_weak(v36);
      v35 = a1;
    }

    operator delete(v35);
  }

  v37 = *MEMORY[0x29EDCA608];
}

void sub_2975081E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, xpc_object_t object, uint64_t a22, uint64_t a23, uint64_t a24, xpc_object_t a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9SARModule28registerCommandHandlers_syncEvEUb1_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__7EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v24[1] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  LOBYTE(v2[6].__get_deleter) = 1;
  get_deleter = v2[2].__get_deleter;
  if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Blocking accessories", buf, 2u);
  }

  v4 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v5 = off_2A139A120;
  if (!off_2A139A120)
  {
    AppleSARHelper::create_default_global(buf, v4);
    v6 = *buf;
    memset(buf, 0, sizeof(buf));
    v7 = *(&off_2A139A120 + 1);
    off_2A139A120 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v5 = off_2A139A120;
  }

  v9 = *(&off_2A139A120 + 1);
  if (*(&off_2A139A120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A139A120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v21 = v2[6].__get_deleter;
  if (*(v5 + 1))
  {
    *buf = 0;
    v24[0] = 0;
    v22 = 1;
    v10 = AppleSARHelper::callUserClientMethod(v5, 31, buf, 1, &v21, 1, v24, &v22, &v21, 1uLL);
    if (!v9)
    {
LABEL_18:
      if (v10)
      {
        goto LABEL_19;
      }

LABEL_22:
      v13 = v2[2].__get_deleter;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297476000, v13, OS_LOG_TYPE_ERROR, "Failed to set blocking accessories", buf, 2u);
        shared_owners = v1->__shared_owners_;
        if (!shared_owners)
        {
          goto LABEL_25;
        }
      }

      else
      {
        shared_owners = v1->__shared_owners_;
        if (!shared_owners)
        {
          goto LABEL_25;
        }
      }

      *buf = xpc_null_create();
      (*(shared_owners + 16))(shared_owners, 3760250880, buf);
      xpc_release(*buf);
      goto LABEL_25;
    }
  }

  else
  {
    v10 = 0;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }

  v12 = v10;
  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if ((v12 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v11 = v1->__shared_owners_;
  if (v11)
  {
    *buf = xpc_null_create();
    (*(v11 + 16))(v11, 0, buf);
    xpc_release(*buf);
  }

LABEL_25:
  if (__p)
  {
    v15 = __p->__shared_owners_;
    if (v15)
    {
      _Block_release(v15);
    }

    operator delete(__p);
  }

  v16 = a1;
  if (a1)
  {
    v17 = a1[2];
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
      v16 = a1;
    }

    operator delete(v16);
  }

  v18 = *MEMORY[0x29EDCA608];
}

void sub_2975086CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN9SARModule28registerCommandHandlers_syncEvEUb2_E3__7NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb3_E3__8EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v24[1] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  LOBYTE(v2[6].__get_deleter) = 0;
  get_deleter = v2[2].__get_deleter;
  if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Unblocking accessories", buf, 2u);
  }

  v4 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v5 = off_2A139A120;
  if (!off_2A139A120)
  {
    AppleSARHelper::create_default_global(buf, v4);
    v6 = *buf;
    memset(buf, 0, sizeof(buf));
    v7 = *(&off_2A139A120 + 1);
    off_2A139A120 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v5 = off_2A139A120;
  }

  v9 = *(&off_2A139A120 + 1);
  if (*(&off_2A139A120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A139A120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v21 = v2[6].__get_deleter;
  if (*(v5 + 1))
  {
    *buf = 0;
    v24[0] = 0;
    v22 = 1;
    v10 = AppleSARHelper::callUserClientMethod(v5, 31, buf, 1, &v21, 1, v24, &v22, &v21, 1uLL);
    if (!v9)
    {
LABEL_18:
      if (v10)
      {
        goto LABEL_19;
      }

LABEL_22:
      v13 = v2[2].__get_deleter;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297476000, v13, OS_LOG_TYPE_ERROR, "Failed to set unblocking accessories", buf, 2u);
        shared_owners = v1->__shared_owners_;
        if (!shared_owners)
        {
          goto LABEL_25;
        }
      }

      else
      {
        shared_owners = v1->__shared_owners_;
        if (!shared_owners)
        {
          goto LABEL_25;
        }
      }

      *buf = xpc_null_create();
      (*(shared_owners + 16))(shared_owners, 3760250880, buf);
      xpc_release(*buf);
      goto LABEL_25;
    }
  }

  else
  {
    v10 = 0;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }

  v12 = v10;
  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if ((v12 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v11 = v1->__shared_owners_;
  if (v11)
  {
    *buf = xpc_null_create();
    (*(v11 + 16))(v11, 0, buf);
    xpc_release(*buf);
  }

LABEL_25:
  if (__p)
  {
    v15 = __p->__shared_owners_;
    if (v15)
    {
      _Block_release(v15);
    }

    operator delete(__p);
  }

  v16 = a1;
  if (a1)
  {
    v17 = a1[2];
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
      v16 = a1;
    }

    operator delete(v16);
  }

  v18 = *MEMORY[0x29EDCA608];
}

void sub_297508B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN9SARModule28registerCommandHandlers_syncEvEUb3_E3__8NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb4_E3__9EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  object[3] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v33 = *a1;
  v2 = (*a1)->__vftable;
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xdict = v3;
  }

  else
  {
    v4 = xpc_null_create();
    xdict = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  xdict = v5;
LABEL_9:
  xpc_release(v4);
  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(v1->__shared_owners_, *MEMORY[0x29EDBED18]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__s1, object, "", v7);
  xpc_release(object[0]);
  v8 = *MEMORY[0x29EDBF2A0];
  v9 = strlen(*MEMORY[0x29EDBF2A0]);
  v10 = v9;
  v11 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) == 0)
  {
    if (v9 != -1)
    {
      v12 = SHIBYTE(__s1[2]);
      if (SHIBYTE(__s1[2]) >= v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = SHIBYTE(__s1[2]);
      }

      if (memcmp(__s1, v8, v13))
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

LABEL_63:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v9 == -1)
  {
    goto LABEL_63;
  }

  v12 = __s1[1];
  if (__s1[1] >= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = __s1[1];
  }

  if (memcmp(__s1[0], v8, v14))
  {
LABEL_31:
    get_deleter = v2[2].__get_deleter;
    if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
    {
      v21 = __s1[0];
      if (v11 >= 0)
      {
        v21 = __s1;
      }

      LODWORD(object[0]) = 136315138;
      *(object + 4) = v21;
      _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Get property for %s command is not supported", object, 0xCu);
    }

    goto LABEL_51;
  }

LABEL_24:
  if (v12 != v10)
  {
    goto LABEL_31;
  }

  memset(object, 170, 24);
  v15 = MEMORY[0x29EDBF668];
  if (!LOBYTE(v2[5].__on_zero_shared_weak))
  {
    v15 = MEMORY[0x29EDBF308];
  }

  v16 = *v15;
  v17 = strlen(*v15);
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v18 = v17;
  if (v17 >= 0x17)
  {
    if ((v17 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v17 | 7) + 1;
    }

    v19 = operator new(v22);
    object[1] = v18;
    object[2] = (v22 | 0x8000000000000000);
    object[0] = v19;
  }

  else
  {
    HIBYTE(object[2]) = v17;
    v19 = object;
    if (!v17)
    {
      goto LABEL_40;
    }
  }

  memmove(v19, v16, v18);
LABEL_40:
  *(v18 + v19) = 0;
  if (SHIBYTE(object[2]) >= 0)
  {
    v23 = object;
  }

  else
  {
    v23 = object[0];
  }

  v24 = xpc_string_create(v23);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, v8, v24);
  v25 = xpc_null_create();
  xpc_release(v24);
  xpc_release(v25);
  v26 = v2[2].__get_deleter;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = object;
    if (SHIBYTE(object[2]) < 0)
    {
      v27 = object[0];
    }

    *buf = 136315138;
    v37 = v27;
    _os_log_impl(&dword_297476000, v26, OS_LOG_TYPE_DEFAULT, "#I cellular transmit state: %s", buf, 0xCu);
  }

  if (SHIBYTE(object[2]) < 0)
  {
    operator delete(object[0]);
  }

LABEL_51:
  LODWORD(object[0]) = 0;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(&v1->__shared_weak_owners_, object, &xdict);
  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
  }

  xpc_release(xdict);
  if (v33)
  {
    shared_weak_owners = v33->__shared_weak_owners_;
    if (shared_weak_owners)
    {
      _Block_release(shared_weak_owners);
    }

    xpc_release(v33->__shared_owners_);
    operator delete(v33);
  }

  v29 = a1;
  if (a1)
  {
    v30 = a1[2];
    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
      v29 = a1;
    }

    operator delete(v29);
  }

  v31 = *MEMORY[0x29EDCA608];
}

void sub_297508FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t object, uint64_t a18, uint64_t a19, xpc_object_t a20)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9SARModule28registerCommandHandlers_syncEvEUb4_E3__9NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_0,std::allocator<SARModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E45858;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_0,std::allocator<SARModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E45858;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_0,std::allocator<SARModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E45858;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_0,std::allocator<SARModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E45858;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_0,std::allocator<SARModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_0,std::allocator<SARModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_0,std::allocator<SARModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    v19 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[2] || MEMORY[0x29C272BA0](v5) != MEMORY[0x29EDCAA00])
      {
        goto LABEL_25;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      if (v5)
      {
        xpc_retain(v5);
        v10 = v5;
        v11 = v7[10];
        if (!v11)
        {
LABEL_22:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v11 = v7[10];
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      v12 = v7[9];
      v13 = std::__shared_weak_count::lock(v11);
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = v13;
      v15 = operator new(0x18uLL);
      *v15 = v7;
      v15[1] = v4;
      v15[2] = v10;
      v16 = xpc_null_create();
      v17 = v7[11];
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = operator new(0x18uLL);
      *v18 = v15;
      v18[1] = v12;
      v18[2] = v14;
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      xpc_release(v16);
      v9 = v19;
      if (v19)
      {
LABEL_25:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }
  }

  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

void sub_2975094D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  xpc_release(v10);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_0,std::allocator<SARModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN9SARModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN9SARModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN9SARModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN9SARModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  v34 = &v1->__vftable;
  v2 = (*a1)->__vftable;
  v40 = 0xAAAAAAAAAAAAAAAALL;
  shared_weak_owners = v1->__shared_weak_owners_;
  object[0] = shared_weak_owners;
  if (shared_weak_owners)
  {
    xpc_retain(shared_weak_owners);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::bridge(cf, object, v4);
  v5 = cf[0];
  if (!cf[0] || (v6 = CFGetTypeID(cf[0]), v6 != CFDictionaryGetTypeID()))
  {
    v5 = 0;
    v40 = 0;
    v7 = cf[0];
    if (!cf[0])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v40 = v5;
  CFRetain(v5);
  v7 = cf[0];
  if (cf[0])
  {
LABEL_9:
    CFRelease(v7);
  }

LABEL_10:
  xpc_release(object[0]);
  if (!v5)
  {
    goto LABEL_44;
  }

  v39[0] = 0xAAAAAAAAAAAAAAAALL;
  v39[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v39, v5);
  cf[0] = 0;
  cf[1] = 0;
  v38 = 0;
  ctu::cf::MakeCFString::MakeCFString(&v41, *MEMORY[0x29EDBEAF8]);
  ctu::cf::map_adapter::getString();
  MEMORY[0x29C270E70](&v41);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(cf[0]);
  }

  *cf = *object;
  v38 = v36;
  v8 = *MEMORY[0x29EDBEFB8];
  v9 = strlen(*MEMORY[0x29EDBEFB8]);
  v10 = SHIBYTE(v36);
  if ((SHIBYTE(v36) & 0x8000000000000000) != 0)
  {
    if (v9 == cf[1])
    {
      if (v9 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(cf[0], v8, v9))
      {
LABEL_33:
        shared_owners = v1->__shared_owners_;
        if (shared_owners)
        {
          dispatch_retain(v1->__shared_owners_);
          dispatch_group_enter(shared_owners);
        }

        v22 = v2[2].~__shared_weak_count;
        if (!v22 || (on_zero_shared_weak = v2[1].__on_zero_shared_weak, (v24 = std::__shared_weak_count::lock(v22)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v17 = v24;
        v25 = operator new(0x10uLL);
        *v25 = v2;
        v25[1] = shared_owners;
        v26 = v2[2].~__shared_weak_count_0;
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        v27 = operator new(0x18uLL);
        *v27 = v25;
        v27[1] = on_zero_shared_weak;
        v27[2] = v17;
        dispatch_async_f(v26, v27, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZZNS3_26registerEventHandlers_syncEvENK3__0clENS_13group_sessionEN3xpc4dictEENKUlvE_clEvEUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISC_NSH_14default_deleteISC_EEEEENUlPvE_8__invokeESM_);
        if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_38:
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
          goto LABEL_39;
        }

        goto LABEL_39;
      }
    }
  }

  else if (v9 == SHIBYTE(v38) && !memcmp(cf, v8, v9))
  {
    goto LABEL_33;
  }

  v11 = *MEMORY[0x29EDBF210];
  v12 = strlen(*MEMORY[0x29EDBF210]);
  if ((v10 & 0x80000000) != 0)
  {
    if (v12 != cf[1])
    {
      goto LABEL_39;
    }

    if (v12 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (memcmp(cf[0], v11, v12))
    {
      goto LABEL_39;
    }
  }

  else if (v12 != v10 || memcmp(cf, v11, v12))
  {
    goto LABEL_39;
  }

  v13 = v1->__shared_owners_;
  if (v13)
  {
    dispatch_retain(v1->__shared_owners_);
    dispatch_group_enter(v13);
  }

  v14 = v2[2].~__shared_weak_count;
  if (!v14 || (v15 = v2[1].__on_zero_shared_weak, (v16 = std::__shared_weak_count::lock(v14)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v17 = v16;
  v18 = operator new(0x10uLL);
  *v18 = v2;
  v18[1] = v13;
  v19 = v2[2].~__shared_weak_count_0;
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v20 = operator new(0x18uLL);
  *v20 = v18;
  v20[1] = v15;
  v20[2] = v17;
  dispatch_async_f(v19, v20, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZZNS3_26registerEventHandlers_syncEvENK3__0clENS_13group_sessionEN3xpc4dictEENKUlvE_clEvEUlvE0_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISC_NSH_14default_deleteISC_EEEEENUlPvE_8__invokeESM_);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_38;
  }

LABEL_39:
  if (SHIBYTE(v38) < 0)
  {
    operator delete(cf[0]);
    MEMORY[0x29C270ED0](v39);
    v28 = v40;
    if (!v40)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  MEMORY[0x29C270ED0](v39);
  v28 = v40;
  if (v40)
  {
LABEL_43:
    CFRelease(v28);
  }

LABEL_44:
  if (v34)
  {
    xpc_release(v34[2]);
    v34[2] = 0;
    v29 = v34[1];
    if (v29)
    {
      dispatch_group_leave(v29);
      v30 = v34[1];
      if (v30)
      {
        dispatch_release(v30);
      }
    }

    operator delete(v34);
  }

  v31 = a1;
  if (a1)
  {
    v32 = a1[2];
    if (v32)
    {
      if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v32->__on_zero_shared)(v32);
        std::__shared_weak_count::__release_weak(v32);
        v31 = a1;
      }
    }

    operator delete(v31);
  }
}

void *std::unique_ptr<SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZZNS3_26registerEventHandlers_syncEvENK3__0clENS_13group_sessionEN3xpc4dictEENKUlvE_clEvEUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISC_NSH_14default_deleteISC_EEEEENUlPvE_8__invokeESM_(SARModule ***a1)
{
  v1 = *a1;
  v17 = *a1;
  v2 = **a1;
  if (capabilities::radio::maverick(a1))
  {
    SARModule::setupTxIndicationWorkaround(v2);
  }

  SARModule::sendCurrentState_sync(v2);
  capabilities::abs::supportedSARFeatures(v3);
  if (!capabilities::abs::operator&())
  {
    goto LABEL_17;
  }

  v4 = *(v2 + 10);
  if (!v4 || (v5 = *(v2 + 9), (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v9 = *(v2 + 31);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZZZZN9SARModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEvENKUlvE_clEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE_e11_v16__0B8i12l;
  aBlock[4] = v2;
  aBlock[5] = v5;
  v19 = v7;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v10 = _Block_copy(aBlock);
  v11 = *(v2 + 11);
  if (v11)
  {
    dispatch_retain(v11);
  }

  v20 = v10;
  v21 = v11;
  (*(*v9 + 24))(v9, &v20);
  if (v21)
  {
    dispatch_release(v21);
  }

  if (v20)
  {
    _Block_release(v20);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  std::__shared_weak_count::__release_weak(v7);
  v1 = v17;
  if (v17)
  {
LABEL_17:
    v12 = v1[1];
    if (v12)
    {
      dispatch_group_leave(v12);
      v13 = v1[1];
      if (v13)
      {
        dispatch_release(v13);
      }
    }

    operator delete(v1);
  }

  v14 = a1;
  if (a1)
  {
    v15 = a1[2];
    if (v15)
    {
      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
        v14 = a1;
      }
    }

    operator delete(v14);
  }
}

void sub_297509CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  dispatch::callback<void({block_pointer})(BOOL,antenna::NVItems)>::~callback(v19 - 64);
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  std::__shared_weak_count::__release_weak(v18);
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void sub_297509D38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](va1);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void ___ZZZZN9SARModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEvENKUlvE_clEv_block_invoke(void *a1, char a2, int a3)
{
  v31[1] = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_35;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    goto LABEL_35;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
LABEL_35:
      v23 = *MEMORY[0x29EDCA608];
      return;
    }
  }

  if ((a2 & 1) == 0 && (v11 = *(v7 + 104), os_log_type_enabled(v11, OS_LOG_TYPE_ERROR)))
  {
    LOWORD(__p[0]) = 0;
    _os_log_error_impl(&dword_297476000, v11, OS_LOG_TYPE_ERROR, "Failed to get NV item!", __p, 2u);
    v12 = *(v7 + 104);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v12 = *(v7 + 104);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }
  }

  antenna::CommandDriver::toString();
  if (v27 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  LODWORD(buf) = 136315138;
  *(&buf + 4) = v13;
  _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#I %s nv item is detected", &buf, 0xCu);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_15:
  if (a3 != 4 && a3 != 1)
  {
    goto LABEL_35;
  }

  *(v7 + 329) = 0;
  v14 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v15 = off_2A139A120;
  if (!off_2A139A120)
  {
    AppleSARHelper::create_default_global(__p, v14);
    v16 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v17 = *(&off_2A139A120 + 1);
    off_2A139A120 = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    v15 = off_2A139A120;
  }

  v19 = *(&off_2A139A120 + 1);
  *&buf = v15;
  *(&buf + 1) = *(&off_2A139A120 + 1);
  if (*(&off_2A139A120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A139A120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  *__p = *(v7 + 329);
  v26 = *(v7 + 345);
  if (*(v15 + 1))
  {
    v31[0] = 0;
    v30 = 0;
    v28 = 1;
    v20 = AppleSARHelper::callUserClientMethod(v15, 25, v31, 1, __p, 20, &v30, &v28, __p, 0x14uLL);
    if (!v19)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v20 = 0;
    if (!v19)
    {
      goto LABEL_33;
    }
  }

  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v21 = v20;
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = v21;
  }

LABEL_33:
  if (v20)
  {
    goto LABEL_35;
  }

  v22 = *(v7 + 104);
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_35;
  }

  LOWORD(__p[0]) = 0;
  _os_log_error_impl(&dword_297476000, v22, OS_LOG_TYPE_ERROR, "Failed to set HSAR configuration!", __p, 2u);
  v24 = *MEMORY[0x29EDCA608];
}

uint64_t dispatch::callback<void({block_pointer})(BOOL,antenna::NVItems)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZZNS3_26registerEventHandlers_syncEvENK3__0clENS_13group_sessionEN3xpc4dictEENKUlvE_clEvEUlvE0_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISC_NSH_14default_deleteISC_EEEEENUlPvE_8__invokeESM_(uint64_t a1)
{
  v2 = *a1;
  SARModule::processTxOff_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_29750A25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_1,std::allocator<SARModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E45908;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_1,std::allocator<SARModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E45908;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_1,std::allocator<SARModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E45908;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_1,std::allocator<SARModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E45908;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_1,std::allocator<SARModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_1,std::allocator<SARModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_1,std::allocator<SARModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (!a1[2])
      {
        goto LABEL_21;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      v10 = v7[10];
      if (!v10 || (v11 = v7[9], (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = operator new(0x10uLL);
      *v14 = v7;
      v14[1] = v4;
      v15 = v7[11];
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(SARModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<SARModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_21:
        if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_10:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

LABEL_11:
  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_1,std::allocator<SARModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN9SARModule26registerEventHandlers_syncEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN9SARModule26registerEventHandlers_syncEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN9SARModule26registerEventHandlers_syncEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN9SARModule26registerEventHandlers_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(SARModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<SARModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  SARModule::dumpSARFusionState(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_29750A748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_2,std::allocator<SARModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E45988;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_2,std::allocator<SARModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E45988;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_2,std::allocator<SARModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E45988;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_2,std::allocator<SARModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E45988;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_2,std::allocator<SARModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_2,std::allocator<SARModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_2,std::allocator<SARModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[2])
      {
        if (v4)
        {
          dispatch_retain(v4);
          dispatch_group_enter(v4);
        }

        if (v5)
        {
          xpc_retain(v5);
          v10 = v5;
          v11 = v7[10];
          if (!v11)
          {
LABEL_21:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v10 = xpc_null_create();
          v11 = v7[10];
          if (!v11)
          {
            goto LABEL_21;
          }
        }

        v12 = v7[9];
        v13 = std::__shared_weak_count::lock(v11);
        if (!v13)
        {
          goto LABEL_21;
        }

        v14 = v13;
        v15 = operator new(0x18uLL);
        *v15 = v7;
        v15[1] = v4;
        v15[2] = v10;
        v16 = xpc_null_create();
        v17 = v7[11];
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = operator new(0x18uLL);
        *v18 = v15;
        v18[1] = v12;
        v18[2] = v14;
        dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        xpc_release(v16);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_2,std::allocator<SARModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN9SARModule26registerEventHandlers_syncEvE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN9SARModule26registerEventHandlers_syncEvE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN9SARModule26registerEventHandlers_syncEvE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN9SARModule26registerEventHandlers_syncEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(SARModule ***a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[2];
  object = v4;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::bridge(cf, &object, v5);
  v6 = *cf;
  if (!*cf || (v7 = CFGetTypeID(*cf), v7 != CFDictionaryGetTypeID()))
  {
    v6 = 0;
    v22 = 0;
    v8 = *cf;
    if (!*cf)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v22 = v6;
  CFRetain(v6);
  v8 = *cf;
  if (*cf)
  {
LABEL_9:
    CFRelease(v8);
  }

LABEL_10:
  xpc_release(object);
  if (v6)
  {
    ctu::cf_to_xpc(cf, v6, v9);
    v10 = *cf;
    if (*cf && MEMORY[0x29C272BA0](*cf) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v10);
    }

    else
    {
      v10 = xpc_null_create();
    }

    xpc_release(*cf);
    value = xpc_dictionary_get_value(v10, *MEMORY[0x29EDBE5A8]);
    *cf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *cf = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(cf, 0);
    xpc_release(*cf);
    v14 = *(v3 + 13);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      v16 = "Off";
      if (v13)
      {
        v16 = "On";
      }

      *cf = 136315138;
      *&cf[4] = v16;
      _os_log_impl(&dword_297476000, v14, OS_LOG_TYPE_DEFAULT, "#I Received voice call event with state: %s", cf, 0xCu);
    }

    if (v13)
    {
      SARModule::submitCASARFusion(v3, 0);
    }

    if (capabilities::radio::dal(v15))
    {
      SARModule::processCallStatusSARFusion(v3, v13);
    }

    else
    {
      SARModule::processCallStatus(v3, v13);
    }

    xpc_release(v10);
    CFRelease(v6);
  }

  else
  {
    v11 = *(v3 + 13);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *cf = 0;
      _os_log_error_impl(&dword_297476000, v11, OS_LOG_TYPE_ERROR, "No input is given for voice call active state", cf, 2u);
    }
  }

  xpc_release(v2[2]);
  v2[2] = 0;
  v17 = v2[1];
  if (v17)
  {
    dispatch_group_leave(v17);
    v18 = v2[1];
    if (v18)
    {
      dispatch_release(v18);
    }
  }

  operator delete(v2);
  v19 = a1[2];
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  operator delete(a1);
  v20 = *MEMORY[0x29EDCA608];
}

void sub_29750AE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t a11, char a12, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *std::unique_ptr<SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_18initializeOBD_syncEvEUb5_E4__13EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  SARModule::submitCASARFusion(v3, 1);
  *(v3 + 133) = *(v3 + 132);
  operator delete(v2);
  v4 = *(a1 + 2);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void sub_29750B12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28initializeHandDetection_syncEvEUb6_E4__14EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  SARModule::submitCASARFusion(v3, 1);
  *(v3 + 137) = *(v3 + 136);
  operator delete(v2);
  v4 = *(a1 + 2);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void sub_29750B200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void *std::__function::__func<void({block_pointer})(BOOL,BOOL,char const*),std::allocator<void({block_pointer})(BOOL,BOOL,char const*)>,void ()(BOOL,BOOL,char const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2A1E45A08;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void std::__function::__func<void({block_pointer})(BOOL,BOOL,char const*),std::allocator<void({block_pointer})(BOOL,BOOL,char const*)>,void ()(BOOL,BOOL,char const*)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  *(a1 + 8) = 0;
}

uint64_t std::__function::__func<void({block_pointer})(BOOL,BOOL,char const*),std::allocator<void({block_pointer})(BOOL,BOOL,char const*)>,void ()(BOOL,BOOL,char const*)>::operator()(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a4;
  return (*(*(a1 + 8) + 16))();
}

uint64_t std::__function::__func<void({block_pointer})(BOOL,BOOL,char const*),std::allocator<void({block_pointer})(BOOL,BOOL,char const*)>,void ()(BOOL,BOOL,char const*)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000029769E591)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000029769E591 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029769E591))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029769E591 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::processTxOff_sync(void)::$_0>(SARModule::processTxOff_sync(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::processTxOff_sync(void)::$_0,dispatch_queue_s *::default_delete<SARModule::processTxOff_sync(void)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  SARModule::submitCASARFusion(v3, 1);
  *(v3 + 137) = *(v3 + 136);
  operator delete(v2);
  v4 = *(a1 + 2);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void sub_29750B40C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0>(SARModule::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0,dispatch_queue_s *::default_delete<SARModule::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0>>)::{lambda(void *)#1}::__invoke(capabilities::radio *a1)
{
  v1 = a1;
  v55 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  if (capabilities::radio::maverick(a1))
  {
    v43 = 0xAAAAAAAAAAAAAAAALL;
    SARModule::createTransmitStateDict_sync(v3, v2[2], v2[3], &v43);
    v4 = v43;
    if (MEMORY[0x29C272BA0](v43) != MEMORY[0x29EDCAA00])
    {
      v5 = *(v3 + 13);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = v2[2];
        v7 = v2[3];
        *buf = 67109376;
        *&buf[4] = v6;
        *&buf[8] = 1024;
        *&buf[10] = v7;
        _os_log_error_impl(&dword_297476000, v5, OS_LOG_TYPE_ERROR, "Failed to get the Tx state from the state (%d) and trigger (%d)", buf, 0xEu);
      }

LABEL_74:
      xpc_release(v4);
      v1 = a1;
      operator delete(v2);
      if (!a1)
      {
        goto LABEL_79;
      }

      goto LABEL_75;
    }

    memset(__s1, 170, sizeof(__s1));
    value = xpc_dictionary_get_value(v4, *MEMORY[0x29EDBF2A0]);
    *buf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *buf = xpc_null_create();
    }

    xpc::dyn_cast_or_default(__s1, buf, "", v10);
    xpc_release(*buf);
    memset(v41, 170, sizeof(v41));
    v11 = xpc_dictionary_get_value(v4, *MEMORY[0x29EDBF488]);
    *buf = v11;
    if (v11)
    {
      xpc_retain(v11);
    }

    else
    {
      *buf = xpc_null_create();
    }

    xpc::dyn_cast_or_default(v41, buf, "", v12);
    xpc_release(*buf);
    v54 = 0xAAAAAAAAAAAAAAAALL;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v53[7] = v13;
    v53[8] = v13;
    v53[5] = v13;
    v53[6] = v13;
    v53[3] = v13;
    v53[4] = v13;
    v53[1] = v13;
    v53[2] = v13;
    v52 = v13;
    v53[0] = v13;
    v50 = v13;
    v51 = v13;
    v48 = v13;
    v49 = v13;
    *buf = v13;
    v47 = v13;
    std::ostringstream::basic_ostringstream[abi:ne200100](buf);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "Transmit State: ", 16);
    if (__s1[2] >= 0)
    {
      v15 = __s1;
    }

    else
    {
      v15 = __s1[0];
    }

    if (__s1[2] >= 0)
    {
      v16 = HIBYTE(__s1[2]);
    }

    else
    {
      v16 = __s1[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
    v17 = HIBYTE(v41[2]);
    if (SHIBYTE(v41[2]) < 0)
    {
      v17 = v41[1];
    }

    if (v17)
    {
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, " (", 2);
      if (SHIBYTE(v41[2]) >= 0)
      {
        v19 = v41;
      }

      else
      {
        v19 = v41[0];
      }

      if (SHIBYTE(v41[2]) >= 0)
      {
        v20 = HIBYTE(v41[2]);
      }

      else
      {
        v20 = v41[1];
      }

      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ")", 1);
    }

    v22 = *(v3 + 13);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
LABEL_49:
      v29 = *MEMORY[0x29EDBF668];
      v30 = strlen(*MEMORY[0x29EDBF668]);
      v31 = SHIBYTE(__s1[2]);
      if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
      {
        if (v30 == __s1[1])
        {
          if (v30 == -1)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          if (!memcmp(__s1[0], v29, v30))
          {
            goto LABEL_66;
          }
        }
      }

      else if (v30 == SHIBYTE(__s1[2]) && !memcmp(__s1, v29, v30))
      {
LABEL_66:
        v35 = *(v3 + 13);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__dst[0]) = 0;
          _os_log_impl(&dword_297476000, v35, OS_LOG_TYPE_DEFAULT, "#I Tx is on from QMI", __dst, 2u);
        }

        SARModule::processTxOn_sync(v3);
        goto LABEL_69;
      }

      v32 = *MEMORY[0x29EDBF308];
      v33 = strlen(*MEMORY[0x29EDBF308]);
      if ((v31 & 0x80000000) != 0)
      {
        if (v33 != __s1[1])
        {
          goto LABEL_69;
        }

        if (v33 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (memcmp(__s1[0], v32, v33))
        {
LABEL_69:
          *buf = *MEMORY[0x29EDC9538];
          *&buf[*(*buf - 24)] = *(MEMORY[0x29EDC9538] + 24);
          *&buf[8] = MEMORY[0x29EDC9570] + 16;
          if (SHIBYTE(v51) < 0)
          {
            operator delete(*(&v50 + 1));
          }

          *&buf[8] = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(&v47);
          std::ostream::~ostream();
          MEMORY[0x29C271DA0](v53);
          if (SHIBYTE(v41[2]) < 0)
          {
            operator delete(v41[0]);
            if ((SHIBYTE(__s1[2]) & 0x80000000) == 0)
            {
              goto LABEL_73;
            }
          }

          else if ((SHIBYTE(__s1[2]) & 0x80000000) == 0)
          {
LABEL_73:
            v4 = v43;
            goto LABEL_74;
          }

          operator delete(__s1[0]);
          goto LABEL_73;
        }
      }

      else if (v33 != v31 || memcmp(__s1, v32, v33))
      {
        goto LABEL_69;
      }

      v34 = *(v3 + 13);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__dst[0]) = 0;
        _os_log_impl(&dword_297476000, v34, OS_LOG_TYPE_DEFAULT, "#I Tx is off from QMI", __dst, 2u);
      }

      SARModule::processTxOff_sync(v3);
      goto LABEL_69;
    }

    if ((BYTE8(v52) & 0x10) != 0)
    {
      v25 = v52;
      if (v52 < *(&v49 + 1))
      {
        *&v52 = *(&v49 + 1);
        v25 = *(&v49 + 1);
      }

      v26 = v49;
      v23 = v25 - v49;
      if ((v25 - v49) >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if ((BYTE8(v52) & 8) == 0)
      {
        v23 = 0;
        HIBYTE(v40) = 0;
        v24 = __dst;
        goto LABEL_45;
      }

      v26 = *(&v47 + 1);
      v23 = *(&v48 + 1) - *(&v47 + 1);
      if (*(&v48 + 1) - *(&v47 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
      {
LABEL_83:
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    if (v23 >= 0x17)
    {
      if ((v23 | 7) == 0x17)
      {
        v27 = 25;
      }

      else
      {
        v27 = (v23 | 7) + 1;
      }

      v24 = operator new(v27);
      __dst[1] = v23;
      v40 = v27 | 0x8000000000000000;
      __dst[0] = v24;
    }

    else
    {
      HIBYTE(v40) = v23;
      v24 = __dst;
      if (!v23)
      {
        goto LABEL_45;
      }
    }

    memmove(v24, v26, v23);
LABEL_45:
    *(v24 + v23) = 0;
    v28 = __dst;
    if (v40 < 0)
    {
      v28 = __dst[0];
    }

    *v44 = 136315138;
    v45 = v28;
    _os_log_impl(&dword_297476000, v22, OS_LOG_TYPE_DEFAULT, "#I %s", v44, 0xCu);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(__dst[0]);
    }

    goto LABEL_49;
  }

  v8 = *(v3 + 13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297476000, v8, OS_LOG_TYPE_ERROR, "This is not supported device", buf, 2u);
  }

  operator delete(v2);
LABEL_75:
  v36 = *(v1 + 2);
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  operator delete(v1);
LABEL_79:
  v37 = *MEMORY[0x29EDCA608];
}

void sub_29750BB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, xpc_object_t object, uint64_t a27, uint64_t a28, xpc_object_t a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::processCallStatus(BOOL)::$_0>(SARModule::processCallStatus(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::processCallStatus(BOOL)::$_0,dispatch_queue_s *::default_delete<SARModule::processCallStatus(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(unsigned __int8 **a1)
{
  v38[1] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Getting call state", buf, 2u);
  }

  v4 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v5 = off_2A139A120;
  if (!off_2A139A120)
  {
    AppleSARHelper::create_default_global(buf, v4);
    v6 = *buf;
    memset(buf, 0, sizeof(buf));
    v7 = *(&off_2A139A120 + 1);
    off_2A139A120 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v5 = off_2A139A120;
  }

  v9 = *(&off_2A139A120 + 1);
  if (*(&off_2A139A120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A139A120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v10 = (v2 + 280);
  if (*(v5 + 1))
  {
    *buf = 3;
    v38[0] = 0;
    v36 = 1;
    v11 = AppleSARHelper::callUserClientMethod(v5, 35, buf, 1, (v2 + 280), 1, v38, &v36, (v2 + 280), 1uLL);
    if (!v9)
    {
LABEL_18:
      v12 = *(v2 + 104);
      if (v11)
      {
        goto LABEL_19;
      }

LABEL_26:
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297476000, v12, OS_LOG_TYPE_ERROR, "Failed to get call state!", buf, 2u);
        v14 = v1[8];
        if (v14 != *v10)
        {
          goto LABEL_33;
        }

LABEL_28:
        v16 = *(v2 + 104);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = "YES";
          if (!v14)
          {
            v17 = "NO";
          }

          *buf = 136315138;
          *&buf[4] = v17;
          v18 = "#I Call state is same as before. No update the HSAR Voice Call: %s";
          v19 = v16;
LABEL_54:
          _os_log_impl(&dword_297476000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
          operator delete(v1);
          v29 = a1;
          if (!a1)
          {
            goto LABEL_63;
          }

          goto LABEL_59;
        }

LABEL_58:
        operator delete(v1);
        v29 = a1;
        if (!a1)
        {
          goto LABEL_63;
        }

        goto LABEL_59;
      }

LABEL_27:
      v14 = v1[8];
      if (v14 != *v10)
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v11 = 0;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }

  v15 = v11;
  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  v12 = *(v2 + 104);
  if ((v15 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_19:
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_27;
  }

  if (*v10)
  {
    v13 = "On";
  }

  else
  {
    v13 = "Off";
  }

  *buf = 136315138;
  *&buf[4] = v13;
  _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#I Succeeded getting call state: %s", buf, 0xCu);
  v14 = v1[8];
  if (v14 == *v10)
  {
    goto LABEL_28;
  }

LABEL_33:
  *v10 = v14;
  v20 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v21 = off_2A139A120;
  if (!off_2A139A120)
  {
    AppleSARHelper::create_default_global(buf, v20);
    v22 = *buf;
    memset(buf, 0, sizeof(buf));
    v23 = *(&off_2A139A120 + 1);
    off_2A139A120 = v22;
    if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }

    v24 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

    v21 = off_2A139A120;
  }

  v25 = *(&off_2A139A120 + 1);
  if (*(&off_2A139A120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A139A120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v35 = *v10;
  if (*(v21 + 1))
  {
    *buf = 0;
    v38[0] = 0;
    v36 = 1;
    v26 = AppleSARHelper::callUserClientMethod(v21, 35, buf, 1, &v35, 1, v38, &v36, &v35, 1uLL);
    if (!v25)
    {
LABEL_48:
      v27 = *(v2 + 104);
      if (v26)
      {
        goto LABEL_49;
      }

      goto LABEL_57;
    }
  }

  else
  {
    v26 = 0;
    if (!v25)
    {
      goto LABEL_48;
    }
  }

  if (atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_48;
  }

  v30 = v26;
  (v25->__on_zero_shared)(v25);
  std::__shared_weak_count::__release_weak(v25);
  v27 = *(v2 + 104);
  if (v30)
  {
LABEL_49:
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      if (*v10)
      {
        v28 = "YES";
      }

      else
      {
        v28 = "NO";
      }

      *buf = 136315138;
      *&buf[4] = v28;
      v18 = "#I Setting HSAR Voice Call: %s";
      v19 = v27;
      goto LABEL_54;
    }

    goto LABEL_58;
  }

LABEL_57:
  if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_58;
  }

  *buf = 0;
  _os_log_error_impl(&dword_297476000, v27, OS_LOG_TYPE_ERROR, "Failed to set call state!", buf, 2u);
  operator delete(v1);
  v29 = a1;
  if (!a1)
  {
    goto LABEL_63;
  }

LABEL_59:
  v31 = v29[2];
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v32 = v29;
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
    v29 = v32;
  }

  operator delete(v29);
LABEL_63:
  v33 = *MEMORY[0x29EDCA608];
}

void sub_29750C228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  operator delete(v3);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::processCallStatusSARFusion(BOOL)::$_0>(SARModule::processCallStatusSARFusion(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::processCallStatusSARFusion(BOOL)::$_0,dispatch_queue_s *::default_delete<SARModule::processCallStatusSARFusion(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(unsigned __int8 **a1)
{
  v39[1] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  v3 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v4 = off_2A139A120;
  if (!off_2A139A120)
  {
    AppleSARHelper::create_default_global(buf, v3);
    v5 = *buf;
    memset(buf, 0, sizeof(buf));
    v6 = *(&off_2A139A120 + 1);
    off_2A139A120 = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v4 = off_2A139A120;
  }

  v8 = *(&off_2A139A120 + 1);
  if (*(&off_2A139A120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A139A120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v9 = (v2 + 134);
  if (*(v4 + 1))
  {
    *buf = 3;
    v39[0] = 0;
    v37 = 1;
    v10 = AppleSARHelper::callUserClientMethod(v4, 6, buf, 1, (v2 + 134), 1, v39, &v37, (v2 + 134), 1uLL);
    if (!v8)
    {
LABEL_16:
      v11 = *(v2 + 104);
      if (v10)
      {
        goto LABEL_17;
      }

LABEL_24:
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297476000, v11, OS_LOG_TYPE_ERROR, "Failed to get voice state!", buf, 2u);
        v13 = v1[8];
        if (v13 != *v9)
        {
          goto LABEL_31;
        }

LABEL_26:
        v15 = *(v2 + 104);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = "YES";
          if (!v13)
          {
            v16 = "NO";
          }

          *buf = 136315138;
          *&buf[4] = v16;
          v17 = "#I Voice state is the same as before; not updating the voice state: %s";
          v18 = v15;
LABEL_56:
          _os_log_impl(&dword_297476000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
          operator delete(v1);
          v30 = a1;
          if (!a1)
          {
            goto LABEL_65;
          }

          goto LABEL_61;
        }

LABEL_60:
        operator delete(v1);
        v30 = a1;
        if (!a1)
        {
          goto LABEL_65;
        }

        goto LABEL_61;
      }

LABEL_25:
      v13 = v1[8];
      if (v13 != *v9)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v10 = 0;
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_16;
  }

  v14 = v10;
  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  v11 = *(v2 + 104);
  if ((v14 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_25;
  }

  if (*v9)
  {
    v12 = "On";
  }

  else
  {
    v12 = "Off";
  }

  *buf = 136315138;
  *&buf[4] = v12;
  _os_log_impl(&dword_297476000, v11, OS_LOG_TYPE_DEFAULT, "#I Succeeded getting voice state: %s", buf, 0xCu);
  v13 = v1[8];
  if (v13 == *v9)
  {
    goto LABEL_26;
  }

LABEL_31:
  *(v2 + 134) = v13;
  v19 = *(v2 + 104);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = "On";
    if (!v13)
    {
      v20 = "Off";
    }

    *buf = 136315138;
    *&buf[4] = v20;
    _os_log_impl(&dword_297476000, v19, OS_LOG_TYPE_DEFAULT, "#I Sending voice state to driver: %s", buf, 0xCu);
  }

  v21 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v22 = off_2A139A120;
  if (!off_2A139A120)
  {
    AppleSARHelper::create_default_global(buf, v21);
    v23 = *buf;
    memset(buf, 0, sizeof(buf));
    v24 = *(&off_2A139A120 + 1);
    off_2A139A120 = v23;
    if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

    v25 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
    }

    v22 = off_2A139A120;
  }

  v26 = *(&off_2A139A120 + 1);
  if (*(&off_2A139A120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A139A120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v36 = *v9;
  if (*(v22 + 1))
  {
    *buf = 0;
    v39[0] = 0;
    v37 = 1;
    v27 = AppleSARHelper::callUserClientMethod(v22, 6, buf, 1, &v36, 1, v39, &v37, &v36, 1uLL);
    if (!v26)
    {
LABEL_50:
      v28 = *(v2 + 104);
      if (v27)
      {
        goto LABEL_51;
      }

      goto LABEL_59;
    }
  }

  else
  {
    v27 = 0;
    if (!v26)
    {
      goto LABEL_50;
    }
  }

  if (atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_50;
  }

  v31 = v27;
  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  v28 = *(v2 + 104);
  if (v31)
  {
LABEL_51:
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      if (*v9)
      {
        v29 = "YES";
      }

      else
      {
        v29 = "NO";
      }

      *buf = 136315138;
      *&buf[4] = v29;
      v17 = "#I Setting SAR Fusion Voice state: %s";
      v18 = v28;
      goto LABEL_56;
    }

    goto LABEL_60;
  }

LABEL_59:
  if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_60;
  }

  *buf = 0;
  _os_log_error_impl(&dword_297476000, v28, OS_LOG_TYPE_ERROR, "Failed to set voice state!", buf, 2u);
  operator delete(v1);
  v30 = a1;
  if (!a1)
  {
    goto LABEL_65;
  }

LABEL_61:
  v32 = v30[2];
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v33 = v30;
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
    v30 = v33;
  }

  operator delete(v30);
LABEL_65:
  v34 = *MEMORY[0x29EDCA608];
}

void sub_29750C8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  operator delete(v3);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_74()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_75()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<AppleSARHelper>::~PthreadMutexGuardPolicy, &ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_76()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_77()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_297476000);
  }

  return result;
}

BOOL MobileAssetSupport::lockAsset(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v102 = *MEMORY[0x29EDCA608];
  v8 = MobileAssetSupport::getMAAutoAssetSet(a1, a2);
  if (v8)
  {
    *(a4 + 24) = 0;
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%s.%s", @"AppleBasebandServices", v9, v10];
    if ((atomic_load_explicit(&qword_2A18CB198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB198))
    {
      qword_2A18CB1A0 = 0;
      qword_2A18CB1A8 = 0;
      __cxa_guard_release(&qword_2A18CB198);
    }

    if (_MergedGlobals_2 != -1)
    {
      dispatch_once(&_MergedGlobals_2, &__block_literal_global_43);
    }

    v12 = qword_2A18CB1A8;
    if (os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_INFO, "Trying to lock assetSetId %@, timeout:%ld", buf, 0x16u);
    }

    v13 = objc_opt_new();
    [v13 setAllowCheckDownloadWhenBatteryLow:1];
    [v13 setAllowCheckDownloadWhenCPUHigh:1];
    [v13 setAllowCheckDownloadOverExpensive:1];
    [v13 setAllowCheckDownloadOverCellular:1];
    [v13 setUserInitiated:1];
    v95 = 0;
    v96 = 0;
    v89 = [v8 lockAtomicSync:@"AppleBasebandServicesAccess" forAtomicInstance:0 withNeedPolicy:v13 withTimeout:a3 lockedAtomicEntries:&v96 error:&v95];
    v90 = v96;
    v14 = v95;

    if (v14)
    {
      if ((atomic_load_explicit(&qword_2A18CB198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB198))
      {
        qword_2A18CB1A0 = 0;
        qword_2A18CB1A8 = 0;
        __cxa_guard_release(&qword_2A18CB198);
      }

      if (_MergedGlobals_2 == -1)
      {
        v15 = qword_2A18CB1A8;
        if (!os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_ERROR))
        {
LABEL_17:
          v16 = 0;
LABEL_143:

          goto LABEL_144;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_2, &__block_literal_global_43);
        v15 = qword_2A18CB1A8;
        if (!os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }
      }

      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      _os_log_error_impl(&dword_297476000, v15, OS_LOG_TYPE_ERROR, "Failed to lock assetSetId %@: %@", buf, 0x16u);
      goto LABEL_17;
    }

    if (![v90 count])
    {
      if ((atomic_load_explicit(&qword_2A18CB198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB198))
      {
        qword_2A18CB1A0 = 0;
        qword_2A18CB1A8 = 0;
        __cxa_guard_release(&qword_2A18CB198);
      }

      if (_MergedGlobals_2 != -1)
      {
        dispatch_once(&_MergedGlobals_2, &__block_literal_global_43);
      }

      v26 = qword_2A18CB1A8;
      if (os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v11;
        _os_log_error_impl(&dword_297476000, v26, OS_LOG_TYPE_ERROR, "url is missing for assetSetId %@", buf, 0xCu);
      }

      v14 = 0;
      v16 = 0;
      goto LABEL_143;
    }

    v17 = [v90 objectAtIndex:0];
    v88 = [v17 localContentURL];

    v18 = v88;
    v16 = v88 != 0;
    if (!v88)
    {
      v14 = 0;
LABEL_142:

      goto LABEL_143;
    }

    v87 = v11;
    v19 = [v88 path];
    v20 = v19;
    v21 = [v19 UTF8String];
    v22 = 0x7FFFFFFFFFFFFFF7;
    v23 = strlen(v21);
    if (v23 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v24 = v23;
    if (v23 >= 0x17)
    {
      if ((v23 | 7) == 0x17)
      {
        v27 = 25;
      }

      else
      {
        v27 = (v23 | 7) + 1;
      }

      v25 = operator new(v27);
      *&buf[8] = v24;
      *&buf[16] = v27 | 0x8000000000000000;
      *buf = v25;
    }

    else
    {
      buf[23] = v23;
      v25 = buf;
      if (!v23)
      {
LABEL_37:
        v25[v24] = 0;
        if (*(a4 + 23) < 0)
        {
          operator delete(*a4);
        }

        *a4 = *buf;
        *(a4 + 16) = *&buf[16];

        memset(__dst, 170, sizeof(__dst));
        v28 = [v88 path];
        v29 = v28;
        v30 = [v28 UTF8String];
        v31 = strlen(v30);
        if (v31 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v32 = v31;
        if (v31 >= 0x17)
        {
          if ((v31 | 7) == 0x17)
          {
            v34 = 25;
          }

          else
          {
            v34 = (v31 | 7) + 1;
          }

          v33 = operator new(v34);
          __dst[1] = v32;
          __dst[2] = (v34 | 0x8000000000000000);
          __dst[0] = v33;
        }

        else
        {
          HIBYTE(__dst[2]) = v31;
          v33 = __dst;
          if (!v31)
          {
LABEL_48:
            *(v32 + v33) = 0;

            v86 = MEMORY[0x29EDB8E70];
            v35 = MEMORY[0x29EDBA0F8];
            if (SHIBYTE(__dst[2]) >= 0)
            {
              v36 = __dst;
            }

            else
            {
              v36 = __dst[0];
            }

            if (SHIBYTE(__dst[2]) >= 0)
            {
              v37 = SHIBYTE(__dst[2]);
            }

            else
            {
              v37 = __dst[1];
            }

            v38 = v36 + v37;
            if (v37 >= 9)
            {
              v40 = MEMORY[0x29EDBA0F8];
              v41 = v37;
              v42 = v36;
              do
              {
                v39 = memchr(v42, 65, v41 - 8);
                if (!v39)
                {
                  break;
                }

                if (*v39 == 0x7461447465737341 && v39[8] == 97)
                {
                  goto LABEL_64;
                }

                v42 = (v39 + 1);
                v41 = v38 - v42;
              }

              while (v38 - v42 > 8);
              v39 = v36 + v37;
LABEL_64:
              v35 = v40;
            }

            else
            {
              v39 = v36 + v37;
            }

            v44 = v39 - v36;
            if (v39 == v38)
            {
              v44 = -1;
            }

            if (v37 >= v44)
            {
              v45 = v44;
            }

            else
            {
              v45 = v37;
            }

            if (v45 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v45 >= 0x17)
            {
              if ((v45 | 7) == 0x17)
              {
                v47 = 25;
              }

              else
              {
                v47 = (v45 | 7) + 1;
              }

              v46 = operator new(v47);
              __p[1] = v45;
              v93 = v47 | 0x8000000000000000;
              __p[0] = v46;
            }

            else
            {
              HIBYTE(v93) = v45;
              v46 = __p;
              if (!v45)
              {
LABEL_79:
                *(v46 + v45) = 0;
                v48 = SHIBYTE(v93);
                if ((SHIBYTE(v93) & 0x8000000000000000) != 0)
                {
                  v48 = __p[1];
                  v51 = (v93 & 0x7FFFFFFFFFFFFFFFLL) - 1;
                  if (v51 - __p[1] < 0xA)
                  {
                    v49 = __p[1] + 10;
                    if ((0x7FFFFFFFFFFFFFF7 - (v93 & 0x7FFFFFFFFFFFFFFFLL)) < __p[1] - v51 + 10)
                    {
                      std::string::__throw_length_error[abi:ne200100]();
                    }

                    v50 = __p[0];
                    if (v51 > 0x3FFFFFFFFFFFFFF2)
                    {
                      v54 = 0;
LABEL_94:
                      v55 = operator new(v22);
                      v56 = v55;
                      if (v48)
                      {
                        memmove(v55, v50, v48);
                      }

                      v57 = v56 + v48;
                      *v57 = *"Info.plist";
                      *(v57 + 4) = 29811;
                      if (!v54)
                      {
                        operator delete(v50);
                      }

                      __p[1] = v49;
                      v93 = v22 | 0x8000000000000000;
                      __p[0] = v56;
                      v58 = &v49[v56];
LABEL_105:
                      *v58 = 0;
                      *&buf[16] = v93;
                      *buf = *__p;
                      __p[1] = 0;
                      v93 = 0;
                      __p[0] = 0;
                      if (buf[23] >= 0)
                      {
                        v62 = buf;
                      }

                      else
                      {
                        v62 = *buf;
                      }

                      v63 = [v35 stringWithUTF8String:v62];
                      v64 = [v86 fileURLWithPath:v63];

                      if ((buf[23] & 0x80000000) != 0)
                      {
                        operator delete(*buf);
                      }

                      if (SHIBYTE(v93) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      v65 = objc_alloc(MEMORY[0x29EDB8DC0]);
                      v91 = 0;
                      v66 = [v65 initWithContentsOfURL:v64 error:&v91];
                      v14 = v91;
                      if (!v14 && v66)
                      {
                        v67 = [v66 objectForKey:@"ManagerProperties"];
                        v68 = [v67 objectForKey:@"IsNotificationEnabled"];

                        if (v68)
                        {
                          v69 = [MEMORY[0x29EDBA070] numberWithBool:1];
                          v70 = [v68 isEqual:v69];

                          if (v70)
                          {
                            *(a4 + 24) = 1;
                          }
                        }

                        v71 = [v66 objectForKey:@"ManagerProperties"];
                        v72 = [v71 objectForKey:@"notificationActionUrl"];

                        if (v72)
                        {
                          v73 = v72;
                          std::string::__assign_external((a4 + 32), [v72 UTF8String]);
                        }

                        v74 = [v66 objectForKey:@"CFBundleVersion"];
                        v75 = v74;
                        if (v74)
                        {
                          v76 = v74;
                          std::string::__assign_external((a4 + 56), [v75 UTF8String]);
                        }

LABEL_125:
                        if (atomic_load_explicit(&qword_2A18CB198, memory_order_acquire))
                        {
LABEL_126:
                          if (_MergedGlobals_2 != -1)
                          {
                            dispatch_once(&_MergedGlobals_2, &__block_literal_global_43);
                          }

                          v11 = v87;
                          v78 = qword_2A18CB1A8;
                          if (os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_INFO))
                          {
                            v79 = *(a4 + 24);
                            if (*(a4 + 55) >= 0)
                            {
                              v80 = a4 + 32;
                            }

                            else
                            {
                              v80 = *(a4 + 32);
                            }

                            if (*(a4 + 79) >= 0)
                            {
                              v81 = a4 + 56;
                            }

                            else
                            {
                              v81 = *(a4 + 56);
                            }

                            if (*(a4 + 23) >= 0)
                            {
                              v82 = a4;
                            }

                            else
                            {
                              v82 = *a4;
                            }

                            *buf = 138413314;
                            *&buf[4] = v87;
                            *&buf[12] = 1024;
                            *&buf[14] = v79;
                            *&buf[18] = 2080;
                            *&buf[20] = v80;
                            v98 = 2080;
                            v99 = v81;
                            v100 = 2080;
                            v101 = v82;
                            _os_log_impl(&dword_297476000, v78, OS_LOG_TYPE_INFO, "Locked assetSetId %@: enableNotification=%d, actionURL=%s, assetVersion=%s, path=%s", buf, 0x30u);
                          }

                          if (SHIBYTE(__dst[2]) < 0)
                          {
                            operator delete(__dst[0]);
                          }

                          v18 = v88;
                          goto LABEL_142;
                        }

LABEL_152:
                        if (__cxa_guard_acquire(&qword_2A18CB198))
                        {
                          qword_2A18CB1A0 = 0;
                          qword_2A18CB1A8 = 0;
                          __cxa_guard_release(&qword_2A18CB198);
                        }

                        goto LABEL_126;
                      }

                      if ((atomic_load_explicit(&qword_2A18CB198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB198))
                      {
                        qword_2A18CB1A0 = 0;
                        qword_2A18CB1A8 = 0;
                        __cxa_guard_release(&qword_2A18CB198);
                      }

                      if (_MergedGlobals_2 == -1)
                      {
                        v77 = qword_2A18CB1A8;
                        if (!os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_125;
                        }
                      }

                      else
                      {
                        dispatch_once(&_MergedGlobals_2, &__block_literal_global_43);
                        v77 = qword_2A18CB1A8;
                        if (!os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_125;
                        }
                      }

                      v85 = ", plist dictionary is null";
                      if (v66)
                      {
                        v85 = "";
                      }

                      *buf = 138412546;
                      *&buf[4] = v14;
                      *&buf[12] = 2080;
                      *&buf[14] = v85;
                      _os_log_error_impl(&dword_297476000, v77, OS_LOG_TYPE_ERROR, "Failed to read Info file: error=%@ %s", buf, 0x16u);
                      if (atomic_load_explicit(&qword_2A18CB198, memory_order_acquire))
                      {
                        goto LABEL_126;
                      }

                      goto LABEL_152;
                    }

LABEL_85:
                    v52 = 2 * v51;
                    if (v49 > 2 * v51)
                    {
                      v52 = v49;
                    }

                    if ((v52 | 7) == 0x17)
                    {
                      v53 = 25;
                    }

                    else
                    {
                      v53 = (v52 | 7) + 1;
                    }

                    if (v52 >= 0x17)
                    {
                      v22 = v53;
                    }

                    else
                    {
                      v22 = 23;
                    }

                    v54 = v51 == 22;
                    goto LABEL_94;
                  }

                  v59 = __p[0];
                }

                else
                {
                  if ((SHIBYTE(v93) - 13) < 0xA)
                  {
                    v49 = (SHIBYTE(v93) + 10);
                    v50 = __p;
                    v51 = 22;
                    goto LABEL_85;
                  }

                  v59 = __p;
                }

                v60 = v59 + v48;
                *v60 = *"Info.plist";
                *(v60 + 4) = 29811;
                v61 = v48 + 10;
                if (SHIBYTE(v93) < 0)
                {
                  __p[1] = (v48 + 10);
                }

                else
                {
                  HIBYTE(v93) = v61 & 0x7F;
                }

                v58 = v59 + v61;
                goto LABEL_105;
              }
            }

            memmove(v46, v36, v45);
            goto LABEL_79;
          }
        }

        memmove(v33, v30, v32);
        goto LABEL_48;
      }
    }

    memmove(v25, v21, v24);
    goto LABEL_37;
  }

  v16 = 0;
LABEL_144:

  v83 = *MEMORY[0x29EDCA608];
  return v16;
}

void sub_29750D618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL MobileAssetSupport::unlockAsset(uint64_t *a1, uint64_t *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%s.%s", @"AppleBasebandServices", v2, v3];
  if ((atomic_load_explicit(&qword_2A18CB198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB198))
  {
    qword_2A18CB1A0 = 0;
    qword_2A18CB1A8 = 0;
    __cxa_guard_release(&qword_2A18CB198);
  }

  if (_MergedGlobals_2 == -1)
  {
    v5 = qword_2A18CB1A8;
    if (!os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  dispatch_once(&_MergedGlobals_2, &__block_literal_global_43);
  v5 = qword_2A18CB1A8;
  if (os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_INFO))
  {
LABEL_10:
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_297476000, v5, OS_LOG_TYPE_INFO, "Trying to unlock assetSetId %@", buf, 0xCu);
  }

LABEL_11:
  v6 = [MEMORY[0x29EDC5D08] endAtomicLocksSync:0 usingClientDomain:@"com.apple.AppleBasebandServices" forClientName:@"com.apple.AppleBasebandServices" forAssetSetIdentifier:v4 ofAtomicInstance:@"ALL_INSTANCES" removingLockCount:-1];
  explicit = atomic_load_explicit(&qword_2A18CB198, memory_order_acquire);
  if (!v6)
  {
    if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB198))
    {
      qword_2A18CB1A0 = 0;
      qword_2A18CB1A8 = 0;
      __cxa_guard_release(&qword_2A18CB198);
    }

    if (_MergedGlobals_2 == -1)
    {
      v12 = qword_2A18CB1A8;
      if (!os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_2, &__block_literal_global_43);
      v12 = qword_2A18CB1A8;
      if (!os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }
    }

    *buf = 138412290;
    v16 = v4;
    v9 = "Unlocked assetSetId %@";
    v10 = v12;
    v11 = 12;
    goto LABEL_20;
  }

  if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB198))
  {
    qword_2A18CB1A0 = 0;
    qword_2A18CB1A8 = 0;
    __cxa_guard_release(&qword_2A18CB198);
  }

  if (_MergedGlobals_2 != -1)
  {
    dispatch_once(&_MergedGlobals_2, &__block_literal_global_43);
    v8 = qword_2A18CB1A8;
    if (!os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v8 = qword_2A18CB1A8;
  if (os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_INFO))
  {
LABEL_15:
    *buf = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v6;
    v9 = "Failed to unlock assetSetId %@: %@";
    v10 = v8;
    v11 = 22;
LABEL_20:
    _os_log_impl(&dword_297476000, v10, OS_LOG_TYPE_INFO, v9, buf, v11);
  }

LABEL_21:

  v13 = *MEMORY[0x29EDCA608];
  return v6 == 0;
}

uint64_t support::mobileasset::registerForUpdates(std::string::size_type a1, std::string::size_type a2, NSObject *a3, void *a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v7 = a4;
  if ((atomic_load_explicit(&qword_2A18CB198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB198))
  {
    qword_2A18CB1A0 = 0;
    qword_2A18CB1A8 = 0;
    __cxa_guard_release(&qword_2A18CB198);
  }

  if (_MergedGlobals_2 == -1)
  {
    v8 = qword_2A18CB1A8;
    if (!os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_2, &__block_literal_global_43);
    v8 = qword_2A18CB1A8;
    if (!os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }
  }

  if (*(a1 + 23) >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v9;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v10;
  _os_log_impl(&dword_297476000, v8, OS_LOG_TYPE_INFO, "Registering for assetType %s, directory %s", &buf, 0x16u);
LABEL_11:
  v11 = MobileAssetSupport::registerDownloadedHandler(a1, a2, a3, v7);
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3321888768;
  v14[2] = ___ZN7support11mobileasset18registerForUpdatesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_P16dispatch_queue_sU13block_pointerFviE_block_invoke;
  v14[3] = &__block_descriptor_80_ea8_32c162_ZTSKZN7support11mobileasset18registerForUpdatesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_P16dispatch_queue_sU13block_pointerFviEE3__0_e5_v8__0l;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, *a1, *(a1 + 8));
  }

  else
  {
    buf = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = buf;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = __p;
  }

  dispatch_async(a3, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

LABEL_30:
      operator delete(v16.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_31:
      operator delete(v15.__r_.__value_.__l.__data_);
      goto LABEL_27;
    }
  }

  else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_31;
  }

LABEL_27:

  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

void sub_29750DD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::pair<std::string,std::string>::~pair(&a22);

  _Unwind_Resume(a1);
}

uint64_t MobileAssetSupport::registerDownloadedHandler(uint64_t *a1, uint64_t *a2, NSObject *a3, void *a4)
{
  v7 = a4;
  out_token = -1;
  v8 = MEMORY[0x29EDC5D18];
  if (*(a1 + 23) >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%s.%s", @"AppleBasebandServices", v9, v10];
  v12 = [v8 notifyRegistrationName:@"ATOMIC_INSTANCE_DOWNLOADED" forAssetSetIdentifier:v11];

  notify_register_dispatch([v12 UTF8String], &out_token, a3, v7);
  v13 = out_token;

  return v13;
}

void ___ZN7support11mobileasset18registerForUpdatesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_P16dispatch_queue_sU13block_pointerFviE_block_invoke(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v3, *(a1 + 32), *(a1 + 40));
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *(a1 + 32);
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
LABEL_3:
      __p = *(a1 + 56);
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&__p, *(a1 + 56), *(a1 + 64));
LABEL_6:
  MobileAssetSupport::indicateNeedForAsset(&v3, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v3.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_10:
    operator delete(v3.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_10;
  }
}

void sub_29750DFAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void __copy_helper_block_ea8_32c162_ZTSKZN7support11mobileasset18registerForUpdatesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_P16dispatch_queue_sU13block_pointerFviEE3__0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
    if ((*(a2 + 79) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
    if ((*(a2 + 79) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v5;
      return;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
}

void sub_29750E078(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c162_ZTSKZN7support11mobileasset18registerForUpdatesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_P16dispatch_queue_sU13block_pointerFviEE3__0(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 55) & 0x80000000) == 0)
  {
    return;
  }

  v2 = *(a1 + 32);

  operator delete(v2);
}

uint64_t MobileAssetSupport::getAssetSetIdentifier(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%s.%s", @"AppleBasebandServices", v2, v3];
}

void MobileAssetSupport::indicateNeedForAsset(uint64_t *a1, uint64_t *a2)
{
  v2 = MobileAssetSupport::getMAAutoAssetSet(a1, a2);
  if (v2)
  {
    v4 = v2;
    v3 = objc_opt_new();
    [v3 setAllowCheckDownloadWhenBatteryLow:1];
    [v3 setAllowCheckDownloadWhenCPUHigh:1];
    [v3 setAllowCheckDownloadOverExpensive:1];
    [v3 setAllowCheckDownloadOverCellular:1];
    [v3 setUserInitiated:1];
    [v4 needForAtomic:@"AppleBasebandServicesAccess" withNeedPolicy:v3 completion:&__block_literal_global_1];

    v2 = v4;
  }
}

id MobileAssetSupport::getMAAutoAssetSet(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = objc_opt_new();
  v5 = objc_alloc(MEMORY[0x29EDC5D10]);
  if (*(a1 + 23) >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = [MEMORY[0x29EDBA0F8] stringWithCString:v6 encoding:4];
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [MEMORY[0x29EDBA0F8] stringWithCString:v8 encoding:4];
  v10 = [v5 initForAssetType:v7 withAssetSpecifier:v9];

  [v4 addObject:v10];
  v11 = objc_alloc(MEMORY[0x29EDC5D08]);
  if (*(a1 + 23) >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v14 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%s.%s", @"AppleBasebandServices", v12, v13];
  v22 = 0;
  v15 = [v11 initUsingClientDomain:@"com.apple.AppleBasebandServices" forClientName:@"com.apple.AppleBasebandServices" forAssetSetIdentifier:v14 comprisedOfEntries:v4 error:&v22];
  v16 = v22;

  if (v16 || !v15)
  {
    if ((atomic_load_explicit(&qword_2A18CB198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB198))
    {
      qword_2A18CB1A0 = 0;
      qword_2A18CB1A8 = 0;
      __cxa_guard_release(&qword_2A18CB198);
    }

    if (_MergedGlobals_2 == -1)
    {
      v17 = qword_2A18CB1A8;
      if (!os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

LABEL_22:
      if (*(a1 + 23) >= 0)
      {
        v20 = a1;
      }

      else
      {
        v20 = *a1;
      }

      if (*(a2 + 23) >= 0)
      {
        v21 = a2;
      }

      else
      {
        v21 = *a2;
      }

      *buf = 136315650;
      v24 = v20;
      v25 = 2080;
      v26 = v21;
      v27 = 2112;
      v28 = v16;
      _os_log_error_impl(&dword_297476000, v17, OS_LOG_TYPE_ERROR, "Failed to create assetSet for %s-%s: %@", buf, 0x20u);
      goto LABEL_18;
    }

    dispatch_once(&_MergedGlobals_2, &__block_literal_global_43);
    v17 = qword_2A18CB1A8;
    if (os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }
  }

LABEL_18:

  v18 = *MEMORY[0x29EDCA608];

  return v15;
}

id MobileAssetSupport::getMAAssetSetPolicy(MobileAssetSupport *this)
{
  v1 = objc_opt_new();
  [v1 setAllowCheckDownloadWhenBatteryLow:1];
  [v1 setAllowCheckDownloadWhenCPUHigh:1];
  [v1 setAllowCheckDownloadOverExpensive:1];
  [v1 setAllowCheckDownloadOverCellular:1];
  [v1 setUserInitiated:1];

  return v1;
}

void ___ZN18MobileAssetSupport20indicateNeedForAssetENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = a2;
  v5 = a3;
  explicit = atomic_load_explicit(&qword_2A18CB198, memory_order_acquire);
  if (!v5)
  {
    if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB198))
    {
      qword_2A18CB1A0 = 0;
      qword_2A18CB1A8 = 0;
      __cxa_guard_release(&qword_2A18CB198);
    }

    if (_MergedGlobals_2 == -1)
    {
      v8 = qword_2A18CB1A8;
      if (!os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_2, &__block_literal_global_43);
      v8 = qword_2A18CB1A8;
      if (!os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }
    }

    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_297476000, v8, OS_LOG_TYPE_INFO, "Indicated need for assetSetId %@", &v10, 0xCu);
    goto LABEL_10;
  }

  if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB198))
  {
    qword_2A18CB1A0 = 0;
    qword_2A18CB1A8 = 0;
    __cxa_guard_release(&qword_2A18CB198);
  }

  if (_MergedGlobals_2 != -1)
  {
    dispatch_once(&_MergedGlobals_2, &__block_literal_global_43);
    v7 = qword_2A18CB1A8;
    if (!os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  v7 = qword_2A18CB1A8;
  if (os_log_type_enabled(qword_2A18CB1A8, OS_LOG_TYPE_ERROR))
  {
LABEL_5:
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_error_impl(&dword_297476000, v7, OS_LOG_TYPE_ERROR, "Failed to indicate need for assetSetId %@: %@", &v10, 0x16u);
  }

LABEL_10:

  v9 = *MEMORY[0x29EDCA608];
}

void ___ZN12_GLOBAL__N_116sGetOsLogContextEv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "support.mobileasset");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

uint64_t lcdm::CrashEntry::CrashEntry(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0u;
  v6 = (a1 + 24);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v65 = v7;
  v66 = v7;
  v64 = v7;
  lcdm::deserializeToSubTLVs(a2, a3, &v64);
  if (v64 != 1)
  {
    goto LABEL_23;
  }

  v8 = v67;
  if (v67 < 2)
  {
    goto LABEL_23;
  }

  v9 = *(&v66 + 1);
  v10 = (*(v65 + ((*(&v66 + 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (BYTE8(v66) & 0x7F));
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v14 = v13 - v11;
  if (v13 == v11)
  {
    __p = 0;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
    }

    __p = operator new(v13 - v11);
    memcpy(__p, v11, v14);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v10[2] = v11;
  operator delete(v11);
  v9 = *(&v66 + 1);
  v8 = v67;
LABEL_7:
  v15 = v9 + 1;
  *(&v66 + 1) = v9 + 1;
  v67 = v8 - 1;
  if ((v9 + 1) >= 0x100)
  {
    operator delete(*v65);
    v15 = *(&v66 + 1) - 128;
    *&v65 = v65 + 8;
    *(&v66 + 1) -= 128;
  }

  if (HIDWORD(v12) == 4)
  {
    v16 = *__p;
    LOBYTE(v64) = 1;
    *a1 = v16;
    v17 = *(v65 + ((v15 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v15 & 0x7F);
    v18 = *(v17 + 8);
    if (v18)
    {
      *(v17 + 16) = v18;
      operator delete(v18);
      v15 = *(&v66 + 1);
    }

    v19 = v15 + 1;
    *(&v66 + 1) = v19;
    --v67;
    if (v19 >= 0x100)
    {
      operator delete(*v65);
      v19 = *(&v66 + 1) - 128;
      *&v65 = v65 + 8;
      *(&v66 + 1) -= 128;
    }

    *(a1 + 8) = a4;
    if (v6 == (&v64 + 8))
    {
      goto LABEL_69;
    }

    v20 = (v19 >> 4) & 0xFFFFFFFFFFFFFF8;
    v21 = (v65 + v20);
    if (*(&v65 + 1) == v65)
    {
      v23 = 0;
    }

    else
    {
      v22 = v19 & 0x7F;
      v23 = *v21 + 32 * v22;
      v24 = v67 + v19;
      v25 = ((v67 + v19) >> 4) & 0xFFFFFFFFFFFFFF8;
      if (*(v65 + v25) + 32 * (v24 & 0x7F) != v23)
      {
        v26 = (v24 & 0x7F) - v22 + 16 * (v25 - v20);
        v28 = (a1 + 64);
        v27 = *(a1 + 64);
        if (v27 < v26)
        {
          v29 = (*v21 + 32 * v22);
          v30 = (v65 + v20);
          if (v27)
          {
            v31 = v22 + v27;
            if (v31 < 1)
            {
              v53 = 127 - v31;
              v30 = &v21[-(v53 >> 7)];
              v29 = (*v30 + 32 * (~v53 & 0x7F));
            }

            else
            {
              v30 = &v21[v31 >> 7];
              v29 = (*v30 + 32 * (v31 & 0x7F));
            }
          }

          v54 = *(a1 + 32);
          if (*(a1 + 40) == v54)
          {
            v55 = 0;
          }

          else
          {
            v55 = *(v54 + 8 * (*(a1 + 56) >> 7)) + 32 * (*(a1 + 56) & 0x7FLL);
          }

          v68 = (v54 + 8 * (*(a1 + 56) >> 7));
          v69 = v55;
          std::__for_each_segment[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>,std::__copy_impl::_CopySegment<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>,std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV*,lcdm::SubTLV&,lcdm::SubTLV**,long,128l>>>(v21, v23, v30, v29, &v68);
          std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(v6, v30, v29, v26 - *v28);
          goto LABEL_69;
        }

LABEL_28:
        v34 = v23;
        v35 = *(a1 + 32);
        v36 = (v35 + 8 * (*(a1 + 56) >> 7));
        if (*(a1 + 40) == v35)
        {
          v37 = 0;
          v38 = v21;
          if (!v26)
          {
LABEL_35:
            v68 = v36;
            v69 = v37;
            std::__for_each_segment[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>,std::__copy_impl::_CopySegment<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>,std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV*,lcdm::SubTLV&,lcdm::SubTLV**,long,128l>>>(v21, v34, v38, v23, &v68);
            v42 = *(a1 + 56);
            v41 = *(a1 + 64);
            v44 = *(a1 + 32);
            v43 = *(a1 + 40);
            v45 = (v44 + 8 * ((v42 + v41) >> 7));
            if (v43 == v44)
            {
              v46 = 0;
              if (!v69)
              {
                goto LABEL_69;
              }
            }

            else
            {
              v46 = *v45 + 32 * ((v42 + v41) & 0x7F);
              if (v46 == v69)
              {
                goto LABEL_69;
              }
            }

            v47 = ((v46 - *v45) >> 5) + 16 * (v45 - v68);
            v48 = (v69 - *v68) >> 5;
            v49 = v47 - v48;
            if (v47 - v48 >= 1)
            {
              v50 = (v44 + 8 * (v42 >> 7));
              if (v43 == v44)
              {
                v51 = 0;
              }

              else
              {
                v51 = *v50 + 32 * (*(a1 + 56) & 0x7FLL);
              }

              if (v51 != v69)
              {
                v52 = v48 + 16 * (v68 - v50);
                if (v52 != (v51 - *v50) >> 5)
                {
                  if (v52 < 1)
                  {
                    v56 = 127 - v52;
                    v50 -= 8 * (v56 >> 7);
                    v51 = *v50 + 32 * (~v56 & 0x7F);
                  }

                  else
                  {
                    v50 += 8 * (v52 >> 7);
                    v51 = *v50 + 32 * (v52 & 0x7F);
                  }
                }
              }

              if (v51 != v46)
              {
                do
                {
                  v57 = *(v51 + 8);
                  if (v57)
                  {
                    *(v51 + 16) = v57;
                    operator delete(v57);
                  }

                  v51 += 32;
                  if (v51 - *v50 == 4096)
                  {
                    v58 = *(v50 + 1);
                    v50 += 8;
                    v51 = v58;
                  }
                }

                while (v51 != v46);
                v44 = *(a1 + 32);
                v43 = *(a1 + 40);
                v42 = *(a1 + 56);
                v41 = *(a1 + 64);
              }

              if (v43 == v44)
              {
                v59 = 0;
              }

              else
              {
                v59 = 16 * (v43 - v44) - 1;
              }

              v60 = v41 - v49;
              *v28 = v60;
              if (v59 - (v60 + v42) >= 0x100)
              {
                do
                {
                  operator delete(*(v43 - 8));
                  v61 = *(a1 + 32);
                  v43 = *(a1 + 40) - 8;
                  *(a1 + 40) = v43;
                  if (v43 == v61)
                  {
                    v62 = 0;
                  }

                  else
                  {
                    v62 = 16 * (v43 - v61) - 1;
                  }
                }

                while ((v62 - (*(a1 + 64) + *(a1 + 56))) > 0xFF);
              }
            }

LABEL_69:
            *(a1 + 16) = 1;
            v32 = __p;
            if (!__p)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }
        }

        else
        {
          v37 = *v36 + 32 * (*(a1 + 56) & 0x7FLL);
          v38 = v21;
          if (!v26)
          {
            goto LABEL_35;
          }
        }

        v39 = v26 + ((v23 - *v21) >> 5);
        if (v39 < 1)
        {
          v40 = 127 - v39;
          v38 = &v21[-(v40 >> 7)];
          v23 = *v38 + 32 * (~v40 & 0x7F);
        }

        else
        {
          v38 = &v21[v39 >> 7];
          v23 = *v38 + 32 * (v39 & 0x7F);
        }

        goto LABEL_35;
      }
    }

    v26 = 0;
    v28 = (a1 + 64);
    goto LABEL_28;
  }

  LOBYTE(v64) = 0;
  *a1 = 0;
  v32 = __p;
  if (__p)
  {
LABEL_22:
    operator delete(v32);
  }

LABEL_23:
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&v64 + 8);
  return a1;
}

void sub_29750EDA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  operator delete(__p);
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](v10);
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::deque<lcdm::SubTLV>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    v3 = *(a1 + 8);
    *(a1 + 40) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 >> 7];
    v6 = *v5;
    v7 = *v5 + 32 * (v4 & 0x7F);
    v8 = *(v2 + (((*(a1 + 40) + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 40) + v4) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 8);
        if (v9)
        {
          *(v7 + 16) = v9;
          operator delete(v9);
          v6 = *v5;
        }

        v7 += 32;
        if (v7 - v6 == 4096)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 64;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    v12 = 128;
LABEL_17:
    *(a1 + 32) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      *(a1 + 16) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t lcdm::CrashEntry::serialize(lcdm::CrashEntry *a1, uint64_t a2, unint64_t a3)
{
  v18 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16 = v5;
  v17 = v5;
  v15 = v5;
  lcdm::CrashEntry::convertToSubTLVs(a1, &v15);
  if (v15 == 1 && (v6 = (v16 + 8 * (*(&v17 + 1) >> 7)), v7 = *v6 + 32 * (BYTE8(v17) & 0x7F), *(v7 + 4) == 4) && a3 >= **(v7 + 8))
  {
    if (*(&v16 + 1) == v16 || (v10 = *(v16 + (((v18 + *(&v17 + 1)) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v18 + *(&v17 + 1)) & 0x7F), v7 == v10))
    {
      v8 = 1;
    }

    else
    {
      v11 = 0;
      v8 = 1;
      while (a3 - v11 >= *(v7 + 4) + 8)
      {
        v12 = (a2 + v11);
        *v12 = *v7;
        v12[1] = *(v7 + 4);
        memcpy((a2 + v11 + 8), *(v7 + 8), *(v7 + 4));
        v13 = v7 + 32;
        if (v7 + 32 - *v6 == 4096)
        {
          v14 = v6[1];
          ++v6;
          v13 = v14;
        }

        v11 += *(v7 + 4) + 8;
        v7 = v13;
        if (v13 == v10)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_5:
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&v15 + 8);
  return v8;
}

void lcdm::CrashEntry::convertToSubTLVs(lcdm::CrashEntry *this@<X0>, uint64_t a2@<X8>)
{
  memset(v27, 0, sizeof(v27));
  v26 = 4;
  strcpy(__p, "TIME");
  lcdm::constructSubTLVWithUInt64Value(__p, *(this + 1), &v22);
  v4 = v22;
  v28 = *(&v22 + 1);
  v21 = v23;
  v29 = v23;
  v30 = v24;
  *&v24 = 0;
  v23 = 0uLL;
  if ((v26 & 0x80000000) == 0)
  {
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_9:
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    *a2 = 0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>((a2 + 8), 0, 0, 0);
    std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&v22);
    goto LABEL_22;
  }

  operator delete(__p[0]);
  if ((v4 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v26 = 4;
  strcpy(__p, "SAH ");
  lcdm::constructSubTLVWithUInt32Value(__p, *this, &v22);
  v5 = v22;
  *&v27[0] = *(&v22 + 1);
  v20 = v23;
  *(v27 + 8) = v23;
  *(&v27[1] + 1) = v24;
  *&v24 = 0;
  v23 = 0uLL;
  if ((v26 & 0x80000000) == 0)
  {
    v6 = 0uLL;
    if (v22)
    {
      goto LABEL_5;
    }

LABEL_11:
    v23 = v6;
    v24 = v6;
    v22 = v6;
    *a2 = 0;
    *(a2 + 8) = v6;
    *(a2 + 24) = v6;
    *(a2 + 40) = v6;
    std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>((a2 + 8), 0, 0, 0);
    goto LABEL_20;
  }

  operator delete(__p[0]);
  v6 = 0uLL;
  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v23 = v6;
  v24 = v6;
  v22 = v6;
  v7 = *(this + 7);
  v8 = (v7 >> 4) & 0xFFFFFFFFFFFFFF8;
  v9 = *(this + 4);
  if (*(this + 5) == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(v9 + v8) + 32 * (*(this + 7) & 0x7FLL));
    v11 = *(this + 8) + v7;
    v12 = (v11 >> 4) & 0xFFFFFFFFFFFFFF8;
    v13 = v11 & 0x7F;
    if ((*(v9 + v12) + 32 * v13) != v10)
    {
      v14 = v13 - (*(this + 7) & 0x7FLL) + 16 * (v12 - v8);
      goto LABEL_14;
    }
  }

  v14 = 0;
LABEL_14:
  std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(&v22, (v9 + v8), v10, v14);
  std::deque<lcdm::SubTLV>::push_front(&v22, &v28);
  std::deque<lcdm::SubTLV>::push_front(&v22, v27);
  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  v15 = (v24 >> 4) & 0xFFFFFFFFFFFFFF8;
  if (v23 == *(&v22 + 1))
  {
    v16 = 0;
    goto LABEL_18;
  }

  v16 = (*(*(&v22 + 1) + v15) + 32 * (v24 & 0x7F));
  v17 = ((*(&v24 + 1) + v24) >> 4) & 0xFFFFFFFFFFFFFF8;
  v18 = (BYTE8(v24) + v24) & 0x7F;
  if ((*(*(&v22 + 1) + v17) + 32 * v18) == v16)
  {
LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

  v19 = v18 - (v24 & 0x7F) + 16 * (v17 - v15);
LABEL_19:
  std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>((a2 + 8), (*(&v22 + 1) + v15), v16, v19);
LABEL_20:
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&v22);
  if (v20)
  {
    operator delete(v20);
  }

LABEL_22:
  if (v21)
  {
    operator delete(v21);
  }
}

void sub_29750F3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::__split_buffer<lcdm::SubTLV *>::~__split_buffer(v23);
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&__p);
  if (a9)
  {
    operator delete(a9);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void lcdm::CrashEntry::toDebugString(lcdm::CrashEntry *this@<X0>, void *a2@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  v12[0] = *this;
  v12[1] = 0;
  v3 = *(this + 1);
  v12[3] = 0;
  v12[4] = 230;
  v12[2] = v3;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[14] = v4;
  v17[15] = v4;
  v17[13] = v4;
  v17[12] = v4;
  v17[11] = v4;
  v17[10] = v4;
  v17[9] = v4;
  v17[8] = v4;
  v17[7] = v4;
  v17[6] = v4;
  v17[5] = v4;
  v17[4] = v4;
  v17[3] = v4;
  v17[2] = v4;
  v17[1] = v4;
  v17[0] = v4;
  v13 = v17;
  *__len = xmmword_29769E5C0;
  v15 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v16 = 0;
  __p = v17;
  v11[0] = 2;
  v11[1] = v12;
  v11[2] = 230;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v13, "fLength = {}, fTimestamp = {}", 29, v11);
  v5 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = __p;
  if (__len[1] >= 0x17)
  {
    if ((__len[1] | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (__len[1] | 7) + 1;
    }

    v10 = operator new(v9);
    a2[1] = v5;
    a2[2] = v9 | 0x8000000000000000;
    *a2 = v10;
    a2 = v10;
LABEL_11:
    memmove(a2, v6, v5);
    *(a2 + v5) = 0;
    v7 = __p;
    if (__p == v17)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *(a2 + 23) = __len[1];
  if (v5)
  {
    goto LABEL_11;
  }

  *a2 = 0;
  v7 = __p;
  if (__p != v17)
  {
LABEL_5:
    operator delete(v7);
  }

LABEL_6:
  v8 = *MEMORY[0x29EDCA608];
}

void sub_29750F640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p)
{
  if (__p != v57)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int64x2_t std::deque<lcdm::SubTLV>::push_front(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    goto LABEL_50;
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = 16 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  if ((v7 - *(a1 + 40)) < 0x80)
  {
    v8 = *(a1 + 24);
    v9 = *a1;
    v10 = &v8[-*a1];
    if (v5 - v6 < v10)
    {
      if (v6 == v9)
      {
        v55 = operator new(0x1000uLL);
        std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v55);
        v38 = *(a1 + 16);
        v55 = *(v38 - 8);
        *(a1 + 16) = v38 - 8;
        std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v55);
        if (*(a1 + 16) - *(a1 + 8) == 8)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v55 = operator new(0x1000uLL);
        std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v55);
        if (*(a1 + 16) - *(a1 + 8) == 8)
        {
LABEL_9:
          *(a1 + 32) = 64;
          goto LABEL_49;
        }
      }

      *(a1 + 32) += 128;
      goto LABEL_49;
    }

    if (v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10 >> 2;
    }

    if (v11 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = operator new(8 * v11);
    v13 = operator new(0x1000uLL);
    v14 = v13;
    if (v11)
    {
      v15 = &v12[8 * v11];
      *v12 = v13;
      v16 = v12 + 8;
      if (v6 != v5)
      {
LABEL_16:
        v17 = v12;
        while (1)
        {
          if (v16 == v15)
          {
            if (v17 <= v12)
            {
              if (v16 == v12)
              {
                v21 = 1;
              }

              else
              {
                v21 = (v16 - v12) >> 2;
              }

              if (v21 >> 61)
              {
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v22 = operator new(8 * v21);
              v23 = v22;
              v24 = v21 >> 2;
              v18 = &v22[8 * (v21 >> 2)];
              v26 = v16 - v17;
              v25 = v16 == v17;
              v16 = v18;
              if (!v25)
              {
                v16 = &v18[v26];
                v27 = v26 - 8;
                if (v27 < 0x18 || (v28 = 8 * v24, (&v22[8 * v24] - v17) < 0x20))
                {
                  v29 = &v22[8 * (v21 >> 2)];
                  v30 = v17;
                  goto LABEL_32;
                }

                v32 = (v27 >> 3) + 1;
                v33 = 8 * (v32 & 0x3FFFFFFFFFFFFFFCLL);
                v29 = &v18[v33];
                v30 = &v17[v33];
                v34 = (v17 + 16);
                v35 = &v22[v28 + 16];
                v36 = v32 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v37 = *v34;
                  *(v35 - 1) = *(v34 - 1);
                  *v35 = v37;
                  v34 += 2;
                  v35 += 32;
                  v36 -= 4;
                }

                while (v36);
                if (v32 != (v32 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  do
                  {
LABEL_32:
                    v31 = *v30;
                    v30 += 8;
                    *v29 = v31;
                    v29 += 8;
                  }

                  while (v29 != v16);
                }
              }

              v15 = &v22[8 * v21];
              if (v12)
              {
                operator delete(v12);
              }

              v12 = v23;
              goto LABEL_18;
            }

            v20 = (((v17 - v12) >> 3) + 1 + ((((v17 - v12) >> 3) + 1) >> 63)) >> 1;
            v18 = &v17[-8 * v20];
            if (v16 != v17)
            {
              memmove(&v17[-8 * v20], v17, v16 - v17);
            }

            v16 = &v18[v16 - v17];
          }

          else
          {
            v18 = v17;
          }

LABEL_18:
          v19 = *v6;
          v6 += 8;
          *v16 = v19;
          v16 += 8;
          v17 = v18;
          if (v6 == *(a1 + 16))
          {
            goto LABEL_44;
          }
        }
      }
    }

    else
    {
      v39 = operator new(8uLL);
      v15 = v39 + 8;
      operator delete(v12);
      v6 = *(a1 + 8);
      v40 = *(a1 + 16);
      v12 = v39;
      *v39 = v14;
      v16 = v39 + 8;
      if (v6 != v40)
      {
        goto LABEL_16;
      }
    }

    v18 = v12;
LABEL_44:
    v41 = *a1;
    *a1 = v12;
    *(a1 + 8) = v18;
    *(a1 + 16) = v16;
    *(a1 + 24) = v15;
    if (v16 - v18 == 8)
    {
      v42 = 64;
    }

    else
    {
      v42 = *(a1 + 32) + 128;
    }

    *(a1 + 32) = v42;
    if (v41)
    {
      operator delete(v41);
    }

    goto LABEL_49;
  }

  *(a1 + 32) = 128;
  v55 = *(v5 - 1);
  *(a1 + 16) = v5 - 8;
  std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v55);
LABEL_49:
  v4 = *(a1 + 32);
LABEL_50:
  v43 = *(a1 + 8);
  v44 = (v43 + 8 * (v4 >> 7));
  v45 = *v44 + 32 * (v4 & 0x7F);
  if (*(a1 + 16) == v43)
  {
    v46 = 0;
  }

  else
  {
    v46 = v45;
  }

  if (v46 == *v44)
  {
    v46 = *(v44 - 1) + 4096;
  }

  v47 = *a2;
  *(v46 - 24) = 0;
  v48 = v46 - 24;
  *(v46 - 32) = v47;
  *(v48 + 8) = 0;
  *(v48 + 16) = 0;
  v50 = a2[1];
  v49 = a2[2];
  v51 = v49 - v50;
  if (v49 != v50)
  {
    if ((v51 & 0x8000000000000000) != 0)
    {
      std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
    }

    v52 = operator new(v49 - v50);
    *(v46 - 24) = v52;
    *(v46 - 16) = v52;
    v53 = &v52[v51];
    *(v46 - 8) = &v52[v51];
    memcpy(v52, v50, v51);
    *(v46 - 16) = v53;
  }

  result = vaddq_s64(*(a1 + 32), xmmword_29769C6C0);
  *(a1 + 32) = result;
  return result;
}

void sub_29750FA2C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<lcdm::SubTLV *>::~__split_buffer(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    *(result + 16) = v1 + ((v2 - v1 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*result)
  {
    v3 = result;
    operator delete(*result);
    return v3;
  }

  return result;
}

void std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(void *a1, void *a2, void *a3, unint64_t a4)
{
  v7 = a1;
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 16 * (v9 - v8) - 1;
  }

  v11 = a1[5];
  v12 = v11 + a1[4];
  v13 = v10 - v12;
  if (a4 > v13)
  {
    std::deque<lcdm::SubTLV>::__add_back_capacity(a1, a4 - v13);
    v11 = v7[5];
    v8 = v7[1];
    v9 = v7[2];
    v12 = v7[4] + v11;
  }

  v14 = (v8 + 8 * (v12 >> 7));
  if (v9 == v8)
  {
    v15 = 0;
    v16 = 0;
    if (a4)
    {
      goto LABEL_8;
    }

LABEL_12:
    v18 = (v8 + 8 * (v12 >> 7));
    if (v15 != v16)
    {
      goto LABEL_15;
    }

    return;
  }

  v15 = *v14 + 32 * (v12 & 0x7F);
  v16 = v15;
  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_8:
  v17 = a4 + ((v16 - *v14) >> 5);
  if (v17 >= 1)
  {
    v18 = &v14[v17 >> 7];
    v16 = *v18 + 32 * (v17 & 0x7F);
    if (v15 == v16)
    {
      return;
    }

LABEL_15:
    v31 = v16;
    v32 = v7;
    v30 = v18;
    while (1)
    {
      v20 = v16;
      if (v14 != v18)
      {
        v20 = *v14 + 4096;
      }

      if (v15 == v20)
      {
        v7[5] = v11;
        if (v14 == v18)
        {
          return;
        }
      }

      else
      {
        v21 = 0;
        v22 = v15;
        do
        {
          *v22 = *a3;
          v22[1] = 0;
          v22[2] = 0;
          v22[3] = 0;
          v24 = a3[1];
          v23 = a3[2];
          v25 = v23 - v24;
          if (v23 != v24)
          {
            if ((v25 & 0x8000000000000000) != 0)
            {
              std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
            }

            v26 = operator new(v23 - v24);
            v22[1] = v26;
            v22[2] = v26;
            v27 = &v26[v25];
            v22[3] = &v26[v25];
            memcpy(v26, v24, v25);
            v22[2] = v27;
          }

          a3 += 4;
          if ((a3 - *a2) == 4096)
          {
            v28 = a2[1];
            ++a2;
            a3 = v28;
          }

          v22 += 4;
          v21 -= 32;
        }

        while (v22 != v20);
        v16 = v31;
        v7 = v32;
        v18 = v30;
        v11 = v32[5] + ((v20 - v15) >> 5);
        v32[5] = v11;
        if (v14 == v30)
        {
          return;
        }
      }

      v29 = v14[1];
      ++v14;
      v15 = v29;
      if (v29 == v16)
      {
        return;
      }
    }
  }

  v19 = 127 - v17;
  v18 = &v14[-(v19 >> 7)];
  v16 = *v18 + 32 * (~v19 & 0x7F);
  if (v15 != v16)
  {
    goto LABEL_15;
  }
}

void sub_29750FCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    *(v12 + 16) = v14;
    v15 = a1;
    operator delete(v14);
    a1 = v15;
  }

  *(a12 + 40) += -v13 >> 5;
  _Unwind_Resume(a1);
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>,std::__copy_impl::_CopySegment<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>,std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV*,lcdm::SubTLV&,lcdm::SubTLV**,long,128l>>>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    memset(v16, 170, sizeof(v16));
  }

  else
  {
    v11 = a1 + 1;
    v10 = *a1;
    v12 = *a5;
    v13 = *(a5 + 8);
    memset(v16, 170, sizeof(v16));
    std::__copy_impl::operator()[abi:ne200100]<lcdm::SubTLV const*,std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV*,lcdm::SubTLV&,lcdm::SubTLV**,long,128l>,0>(v16, a2, v10 + 4096, v12, v13);
    v8 = v16[2];
    v7 = v16[1];
    *a5 = v16[1];
    for (*(a5 + 8) = v8; v11 != a3; *(a5 + 8) = v8)
    {
      v14 = *v11++;
      memset(v16, 170, sizeof(v16));
      std::__copy_impl::operator()[abi:ne200100]<lcdm::SubTLV const*,std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV*,lcdm::SubTLV&,lcdm::SubTLV**,long,128l>,0>(v16, v14, v14 + 4096, v7, v8);
      v8 = v16[2];
      v7 = v16[1];
      *a5 = v16[1];
    }

    a2 = *v11;
    memset(v16, 170, sizeof(v16));
  }

  std::__copy_impl::operator()[abi:ne200100]<lcdm::SubTLV const*,std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV*,lcdm::SubTLV&,lcdm::SubTLV**,long,128l>,0>(v16, a2, a4, v7, v8);
  result = *&v16[1];
  *a5 = *&v16[1];
  return result;
}

void *std::__copy_impl::operator()[abi:ne200100]<lcdm::SubTLV const*,std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV*,lcdm::SubTLV&,lcdm::SubTLV**,long,128l>,0>(void *result, uint64_t a2, uint64_t a3, char **a4, char *a5)
{
  v6 = a2;
  if (a2 == a3)
  {
    goto LABEL_37;
  }

  v26 = result;
  v27 = a3;
  v7 = *a4;
  while (1)
  {
    v9 = (v7 - a5 + 4096) >> 5;
    if ((a3 - v6) >> 5 < v9)
    {
      v9 = (a3 - v6) >> 5;
    }

    if (v9)
    {
      break;
    }

LABEL_3:
    v8 = a4[1];
    ++a4;
    v7 = v8;
    a5 = v8;
  }

  v10 = 32 * v9;
  v28 = v6 + 32 * v9;
  v29 = a4;
  do
  {
    *a5 = *v6;
    if (v6 != a5)
    {
      v12 = *(a5 + 1);
      v14 = *(v6 + 8);
      v13 = *(v6 + 16);
      v15 = v13 - v14;
      v16 = *(a5 + 3);
      if (v16 - v12 >= v13 - v14)
      {
        v21 = *(a5 + 2);
        v22 = v21 - v12;
        if (v21 - v12 >= v15)
        {
          if (v13 != v14)
          {
            v25 = *(a5 + 1);
            memmove(v12, *(v6 + 8), v13 - v14);
            v12 = v25;
          }

          v11 = &v12[v15];
        }

        else
        {
          if (v21 != v12)
          {
            memmove(v12, *(v6 + 8), v21 - v12);
            v21 = *(a5 + 2);
          }

          v23 = &v14[v22];
          v24 = v13 - &v14[v22];
          if (v24)
          {
            memmove(v21, v23, v24);
          }

          v11 = &v21[v24];
        }
      }

      else
      {
        if (v12)
        {
          *(a5 + 2) = v12;
          operator delete(v12);
          v16 = 0;
          *(a5 + 1) = 0;
          *(a5 + 2) = 0;
          *(a5 + 3) = 0;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
        }

        v17 = 2 * v16;
        if (2 * v16 <= v15)
        {
          v17 = v13 - v14;
        }

        if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v18 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v17;
        }

        v19 = operator new(v18);
        v20 = v19;
        *(a5 + 1) = v19;
        *(a5 + 2) = v19;
        *(a5 + 3) = &v19[v18];
        if (v13 != v14)
        {
          memcpy(v19, v14, v13 - v14);
        }

        v11 = &v20[v15];
      }

      *(a5 + 2) = v11;
    }

    v6 += 32;
    a5 += 32;
    v10 -= 32;
  }

  while (v10);
  a3 = v27;
  v6 = v28;
  if (v28 != v27)
  {
    a4 = v29;
    goto LABEL_3;
  }

  a4 = v29;
  if (a5 == *v29 + 4096)
  {
    a4 = v29 + 1;
    a5 = v29[1];
  }

  result = v26;
LABEL_37:
  *result = v6;
  result[1] = a4;
  result[2] = a5;
  return result;
}

void std::deque<lcdm::SubTLV>::__add_back_capacity(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16) - *(a1 + 8);
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x7F) != 0)
  {
    v5 = (v4 >> 7) + 1;
  }

  else
  {
    v5 = v4 >> 7;
  }

  v6 = *(a1 + 32);
  if (v5 >= v6 >> 7)
  {
    v7 = v6 >> 7;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 7)
  {
    for (*(a1 + 32) = v6 - (v7 << 7); v7; --v7)
    {
      v13 = *(a1 + 8);
      v86 = *v13;
      *(a1 + 8) = v13 + 1;
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v86);
    }

    return;
  }

  v8 = v5 - v7;
  v9 = *(a1 + 24) - *a1;
  v10 = v3 >> 3;
  if (v5 - v7 <= (v9 >> 3) - (v3 >> 3))
  {
    if (v8)
    {
      while (*(a1 + 24) != *(a1 + 16))
      {
        v86 = operator new(0x1000uLL);
        std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v86);
        --v5;
        if (!--v8)
        {
          v6 = *(a1 + 32);
          goto LABEL_25;
        }
      }

      do
      {
        v86 = operator new(0x1000uLL);
        std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v86);
        if (*(a1 + 16) - *(a1 + 8) == 8)
        {
          v80 = 127;
        }

        else
        {
          v80 = 128;
        }

        v81 = *(a1 + 32);
        *(a1 + 32) = v80 + v81;
        --v8;
      }

      while (v8);
      v7 = v5;
      *(a1 + 32) = v80 + v81 - (v5 << 7);
      if (!v5)
      {
        return;
      }
    }

    else
    {
LABEL_25:
      *(a1 + 32) = v6 - (v7 << 7);
      if (!v7)
      {
        return;
      }
    }

    do
    {
      v82 = *(a1 + 8);
      v86 = *v82;
      *(a1 + 8) = v82 + 1;
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v86);
      --v7;
    }

    while (v7);
    return;
  }

  if (v9 >> 2 <= v8 + v10)
  {
    v11 = v8 + v10;
  }

  else
  {
    v11 = v9 >> 2;
  }

  v84 = *(a1 + 32);
  if (v11)
  {
    if (v11 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = operator new(8 * v11);
  }

  else
  {
    v12 = 0;
  }

  v83 = v7 << 7;
  v14 = &v12[8 * (v10 - v7)];
  __p = v12;
  v15 = &v12[8 * v11];
  v16 = v14;
  do
  {
    v17 = operator new(0x1000uLL);
    if (v14 != v15)
    {
      goto LABEL_30;
    }

    if (v16 > __p)
    {
      v18 = (((v16 - __p) >> 3) + 1 + ((((v16 - __p) >> 3) + 1) >> 63)) >> 1;
      v19 = &v16[-8 * v18];
      if (v15 != v16)
      {
        memmove(&v16[-8 * v18], v16, v15 - v16);
      }

      v14 = &v19[v15 - v16];
      v16 = v19;
      goto LABEL_30;
    }

    if (v15 == __p)
    {
      v20 = 1;
    }

    else
    {
      v20 = (v15 - __p) >> 2;
    }

    if (v20 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v21 = operator new(8 * v20);
    v22 = v21;
    v23 = v20 >> 2;
    v24 = &v21[8 * (v20 >> 2)];
    v14 = v24;
    v25 = v15 - v16;
    if (v15 != v16)
    {
      v14 = &v24[v25];
      v26 = v25 - 8;
      if (v26 >= 0x18 && (v27 = 8 * v23, (&v21[8 * v23] - v16) >= 0x20))
      {
        v31 = (v26 >> 3) + 1;
        v32 = 8 * (v31 & 0x3FFFFFFFFFFFFFFCLL);
        v28 = &v24[v32];
        v29 = &v16[v32];
        v33 = (v16 + 16);
        v34 = &v21[v27 + 16];
        v35 = v31 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v36 = *v33;
          *(v34 - 1) = *(v33 - 1);
          *v34 = v36;
          v33 += 2;
          v34 += 2;
          v35 -= 4;
        }

        while (v35);
        if (v31 == (v31 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v28 = &v21[8 * (v20 >> 2)];
        v29 = v16;
      }

      do
      {
        v30 = *v29;
        v29 += 8;
        *v28 = v30;
        v28 += 8;
      }

      while (v28 != v14);
    }

LABEL_44:
    v15 = &v21[8 * v20];
    if (__p)
    {
      operator delete(__p);
    }

    v16 = v24;
    __p = v22;
LABEL_30:
    *v14 = v17;
    v14 += 8;
    --v8;
  }

  while (v8);
  v37 = *(a1 + 8);
  if (v84 >= 0x80)
  {
    while (1)
    {
      if (v14 == v15)
      {
        if (v16 <= __p)
        {
          if (v15 == __p)
          {
            v63 = 1;
          }

          else
          {
            v63 = (v15 - __p) >> 2;
          }

          if (v63 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v64 = operator new(8 * v63);
          v65 = v64;
          v66 = v63 >> 2;
          v38 = &v64[8 * (v63 >> 2)];
          v14 = v38;
          v67 = v15 - v16;
          if (v15 != v16)
          {
            v14 = &v38[v67];
            v68 = v67 - 8;
            if (v68 < 0x18 || (v69 = 8 * v66, (&v64[8 * v66] - v16) < 0x20))
            {
              v70 = &v64[8 * (v63 >> 2)];
              v71 = v16;
              goto LABEL_92;
            }

            v73 = (v68 >> 3) + 1;
            v74 = 8 * (v73 & 0x3FFFFFFFFFFFFFFCLL);
            v70 = &v38[v74];
            v71 = &v16[v74];
            v75 = (v16 + 16);
            v76 = &v64[v69 + 16];
            v77 = v73 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v78 = *v75;
              *(v76 - 1) = *(v75 - 1);
              *v76 = v78;
              v75 += 2;
              v76 += 2;
              v77 -= 4;
            }

            while (v77);
            if (v73 != (v73 & 0x3FFFFFFFFFFFFFFCLL))
            {
              do
              {
LABEL_92:
                v72 = *v71;
                v71 += 8;
                *v70 = v72;
                v70 += 8;
              }

              while (v70 != v14);
            }
          }

          v15 = &v64[8 * v63];
          if (__p)
          {
            operator delete(__p);
          }

          __p = v65;
          goto LABEL_78;
        }

        v62 = (((v16 - __p) >> 3) + 1 + ((((v16 - __p) >> 3) + 1) >> 63)) >> 1;
        v38 = &v16[-8 * v62];
        if (v15 != v16)
        {
          memmove(&v16[-8 * v62], v16, v15 - v16);
        }

        v14 = &v38[v15 - v16];
      }

      else
      {
        v38 = v16;
      }

LABEL_78:
      *v14 = *v37;
      v14 += 8;
      v37 = (*(a1 + 8) + 8);
      *(a1 + 8) = v37;
      v16 = v38;
      if (!--v7)
      {
        goto LABEL_53;
      }
    }
  }

  v38 = v16;
LABEL_53:
  v39 = *(a1 + 16);
  if (v39 != v37)
  {
    v40 = __p;
    while (1)
    {
      if (v38 == v40)
      {
        if (v14 >= v15)
        {
          if (v15 == v40)
          {
            v46 = 1;
          }

          else
          {
            v46 = (v15 - v40) >> 2;
          }

          if (v46 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v47 = operator new(8 * v46);
          v48 = v47;
          v49 = (v46 + 3) >> 2;
          v41 = &v47[8 * v49];
          v50 = v14 - v40;
          v44 = v14 == v40;
          v14 = v41;
          if (!v44)
          {
            v14 = &v41[v50];
            v51 = v50 - 8;
            if (v51 < 0x18 || (v52 = 8 * v49, (&v47[8 * v49] - v38) < 0x20))
            {
              v53 = &v47[8 * v49];
              v54 = v38;
              goto LABEL_69;
            }

            v56 = (v51 >> 3) + 1;
            v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
            v53 = &v41[v57];
            v54 = &v38[v57];
            v58 = (v38 + 16);
            v59 = &v47[v52 + 16];
            v60 = v56 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v61 = *v58;
              *(v59 - 1) = *(v58 - 1);
              *v59 = v61;
              v58 += 2;
              v59 += 32;
              v60 -= 4;
            }

            while (v60);
            if (v56 != (v56 & 0x3FFFFFFFFFFFFFFCLL))
            {
              do
              {
LABEL_69:
                v55 = *v54;
                v54 += 8;
                *v53 = v55;
                v53 += 8;
              }

              while (v53 != v14);
            }
          }

          v15 = &v47[8 * v46];
          if (v40)
          {
            operator delete(v40);
          }

          v40 = v48;
          goto LABEL_56;
        }

        v41 = &v40[8 * ((((v15 - v14) >> 3) + 1 + ((((v15 - v14) >> 3) + 1) >> 63)) >> 1)];
        v45 = v14 - v40;
        v44 = v14 == v40;
        v14 += 8 * ((((v15 - v14) >> 3) + 1 + ((((v15 - v14) >> 3) + 1) >> 63)) >> 1);
        if (!v44)
        {
          memmove(v41, v38, v45);
        }
      }

      else
      {
        v41 = v38;
      }

LABEL_56:
      v42 = *--v39;
      *(v41 - 1) = v42;
      v43 = v41 - 8;
      v38 = v43;
      if (v39 == *(a1 + 8))
      {
        goto LABEL_101;
      }
    }
  }

  v43 = v38;
  v40 = __p;
LABEL_101:
  v79 = *a1;
  *a1 = v40;
  *(a1 + 8) = v43;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) -= v83;
  if (v79)
  {

    operator delete(v79);
  }
}

void sub_297510624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  if (v4 >= 0x100)
  {
    v6 = operator new(v4);
    v7 = v6;
    v8 = *(a1 + 296);
    v9 = *(a1 + 16);
    if (v9)
    {
      memmove(v6, *(a1 + 296), v9);
    }

    if (v8 != (a1 + 40))
    {
      operator delete(v8);
    }

    *(a1 + 296) = v7;
    *a1 = v7;
    *(a1 + 8) = v4;
  }
}

uint64_t *std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v14[0] = a2;
  v14[1] = &a2[a3];
  v15 = 0;
  v16 = 0;
  v17 = v4;
  v10 = *a4;
  v11 = a4[2];
  LOBYTE(v7.__locale_) = 0;
  v8 = 0;
  v9 = a1;
  LOBYTE(v12.__locale_) = 0;
  v13 = 0;
  result = std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v14, &v9);
  if (v13 == 1)
  {
    v6 = result;
    std::locale::~locale(&v12);
    return v6;
  }

  return result;
}

void sub_2975107C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 **a1, uint64_t **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  if (v3 != v4)
  {
    while (1)
    {
      v7 = *v3;
      if (v7 == 125)
      {
        break;
      }

      if (v7 != 123)
      {
        goto LABEL_12;
      }

      if (++v3 == v4)
      {
        std::__throw_format_error[abi:ne200100]("The format string terminates at a '{'");
      }

      if (*v3 == 123)
      {
LABEL_12:
        v8 = v5[4];
        if (!v8 || (v10 = *v8, v9 = v8[1], v8[1] = v9 + 1, v9 < v10))
        {
          v11 = *v5;
          v12 = v5[2];
          v5[2] = v12 + 1;
          *(v11 + v12) = v7;
          if (v5[2] == v5[1])
          {
            v13 = v3;
            (v5[3])(v5, 2);
            v3 = v13;
          }
        }

        if (++v3 == v4)
        {
          return v5;
        }
      }

      else
      {
        *a2 = v5;
        v3 = std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v3, v4, a1, a2);
        v5 = *a2;
        if (v3 == v4)
        {
          return v5;
        }
      }
    }

    if (++v3 == v4 || *v3 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format string contains an invalid escape sequence");
    }

    goto LABEL_12;
  }

  return v5;
}

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

unsigned __int8 *std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, void *a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v7 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_14;
  }

  v9 = *v7;
  v21 = v9 == 58;
  if (v9 == 125)
  {
    goto LABEL_5;
  }

  if (v9 != 58)
  {
LABEL_14:
    std::__throw_format_error[abi:ne200100]("The argument index should end with a ':' or a '}'");
  }

  ++v7;
LABEL_5:
  *a3 = v7;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = &v21;
  v10 = a4[1];
  if (v10 <= v8)
  {
    LOBYTE(v23) = 0;
  }

  else if (v10 > 0xC)
  {
    v15 = (a4[2] + 32 * v8);
    v16 = v15[1];
    v22 = *v15;
    v23 = v16;
  }

  else
  {
    v11 = (a4[2] + 16 * v8);
    v13 = *v11;
    v12 = v11[1];
    v14 = (a4[3] >> (5 * v8)) & 0x1FLL;
    *&v22 = v13;
    *(&v22 + 1) = v12;
    LOBYTE(v23) = v14;
  }

  std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v20, &v22);
  v17 = *a3;
  if (*a3 == a2 || *v17 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The replacement field misses a terminating '}'");
  }

  v18 = *MEMORY[0x29EDCA608];
  return v17 + 1;
}

std::runtime_error *std::format_error::format_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2A1E45B20;
  return result;
}

void std::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

unsigned __int8 *std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *result;
  if (v3 == 125 || (v4 = v3 - 58, v3 == 58))
  {
    v7 = *(a3 + 16);
    if (v7)
    {
      if (v7 == 1)
      {
        std::__throw_format_error[abi:ne200100]("Using automatic argument numbering in manual argument numbering mode");
      }

      ++*(a3 + 24);
    }

    else
    {
      *(a3 + 16) = 2;
      ++*(a3 + 24);
    }
  }

  else
  {
    v5 = v3 - 48;
    if (!v5)
    {
      v6 = *(a3 + 16);
      if (!v6)
      {
        *(a3 + 16) = 1;
        return ++result;
      }

      if (v6 != 2)
      {
        return ++result;
      }

      goto LABEL_37;
    }

    if (v4 <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The argument index starts with an invalid character");
    }

    if (a2 - result <= 9)
    {
      v8 = a2;
    }

    else
    {
      v8 = result + 9;
    }

    v9 = result + 1;
    if (result + 1 == v8)
    {
      v8 = result + 1;
      if (v9 == a2)
      {
        goto LABEL_27;
      }

LABEL_19:
      v11 = *v8;
      if ((v11 - 48) > 9)
      {
        result = v8;
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if ((v11 + 10 * v5 - 48) >> 31 || (result += 2, result != a2) && *result - 48 <= 9)
        {
          std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
        }

LABEL_30:
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      result = v8 - 1;
      do
      {
        v10 = *v9;
        if ((v10 - 58) < 0xFFFFFFF6)
        {
          result = v9;
          goto LABEL_30;
        }

        v5 = v10 + 10 * v5 - 48;
        ++v9;
      }

      while (v9 != v8);
      if (v8 != a2)
      {
        goto LABEL_19;
      }

LABEL_27:
      result = a2;
      v12 = *(a3 + 16);
      if (!v12)
      {
LABEL_34:
        *(a3 + 16) = 1;
        return result;
      }
    }

    if (v12 == 2)
    {
LABEL_37:
      std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
    }
  }

  return result;
}

uint64_t std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 *a2)
{
  switch(a2[16])
  {
    case 1u:
      v2 = *a2;

      return std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<BOOL>(a1, v2);
    case 2u:
      v18 = *a2;

      return std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<char>(a1, v18);
    case 3u:
      v19 = *a2;

      return std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<int>(a1, v19);
    case 4u:
      v10 = *a2;

      return std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<long long>(a1, v10);
    case 5u:
      v21 = *a2;
      v22 = *(a2 + 1);

      return std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<__int128>(a1, v21, v22);
    case 6u:
      v20 = *a2;

      return std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<unsigned int>(a1, v20);
    case 7u:
      v28 = *a2;

      return std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<unsigned long long>(a1, v28);
    case 8u:
      v15 = *a2;
      v16 = *(a2 + 1);

      return std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<unsigned __int128>(a1, v15, v16);
    case 9u:
      v11 = *a2;
      *v50 = 0;
      *&v50[8] = -1;
      v51 = 32;
      v52 = 0;
      v53 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_60;
      }

      v12 = a1;
      v13 = *a1;
      v14 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v50, *a1, 319);
      if (v50[1] - 13 >= 6)
      {
        if (v50[1] <= 0xCu && ((1 << v50[1]) & 0x1801) != 0)
        {
          goto LABEL_59;
        }

LABEL_72:
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a floating-point");
      }

      if ((*&v50[2] & 0x80000000) == 0 && *&v50[8] == -1)
      {
        *&v50[8] = 6;
      }

LABEL_59:
      *v13 = v14;
      a1 = v12;
LABEL_60:
      v43 = *(a1 + 8);
      v44 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v50, v43);
      result = std::__formatter::__format_floating_point[abi:ne200100]<float,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v43, v44, v45, v11);
LABEL_69:
      *v43 = result;
      return result;
    case 0xAu:
      v29 = *a2;
      *v50 = 0;
      *&v50[8] = -1;
      v51 = 32;
      v52 = 0;
      v53 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_68;
      }

      v30 = a1;
      v31 = *a1;
      v32 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v50, *a1, 319);
      if (v50[1] - 13 >= 6)
      {
        if (v50[1] > 0xCu || ((1 << v50[1]) & 0x1801) == 0)
        {
          goto LABEL_72;
        }
      }

      else if ((*&v50[2] & 0x80000000) == 0 && *&v50[8] == -1)
      {
        *&v50[8] = 6;
      }

      *v31 = v32;
      a1 = v30;
LABEL_68:
      v43 = *(a1 + 8);
      v48 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v50, v43);
      result = std::__formatter::__format_floating_point[abi:ne200100]<double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v43, v48, v49, v29);
      goto LABEL_69;
    case 0xBu:
      v24 = *a2;
      *v50 = 0;
      *&v50[8] = -1;
      v51 = 32;
      v52 = 0;
      v53 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_64;
      }

      v25 = a1;
      v26 = *a1;
      v27 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v50, *a1, 319);
      if (v50[1] - 13 >= 6)
      {
        if (v50[1] > 0xCu || ((1 << v50[1]) & 0x1801) == 0)
        {
          goto LABEL_72;
        }
      }

      else if ((*&v50[2] & 0x80000000) == 0 && *&v50[8] == -1)
      {
        *&v50[8] = 6;
      }

      *v26 = v27;
      a1 = v25;
LABEL_64:
      v43 = *(a1 + 8);
      v46 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v50, v43);
      result = std::__formatter::__format_floating_point[abi:ne200100]<long double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v43, v46, v47, v24);
      goto LABEL_69;
    case 0xCu:
      v33 = *a2;
      *v50 = 1;
      *&v50[4] = 0xFFFFFFFF00000000;
      v51 = 32;
      v52 = 0;
      v53 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_53;
      }

      v34 = a1;
      v35 = *a1;
      v36 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v50, *a1, 296);
      if (v50[1] >= 2u && v50[1] != 19)
      {
        goto LABEL_71;
      }

      *v35 = v36;
      a1 = v34;
LABEL_53:
      v37 = *(a1 + 8);
      v38 = strlen(v33);
      result = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v50, v33, v38, v37);
      *v37 = result;
      return result;
    case 0xDu:
      v4 = *a2;
      v5 = *(a2 + 1);
      *v50 = 1;
      *&v50[4] = 0xFFFFFFFF00000000;
      v51 = 32;
      v52 = 0;
      v53 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_12;
      }

      v6 = a1;
      v7 = *a1;
      v8 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v50, *a1, 296);
      if (v50[1] >= 2u && v50[1] != 19)
      {
LABEL_71:
        std::__throw_format_error[abi:ne200100]("The type option contains an invalid value for a string formatting argument");
      }

      *v7 = v8;
      a1 = v6;
LABEL_12:
      v9 = *(a1 + 8);
      result = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v50, v4, v5, v9);
      *v9 = result;
      return result;
    case 0xEu:

      return std::invoke[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},void const*&>(a1, a2);
    case 0xFu:
      v39 = *(a1 + 8);
      v40 = *a2;
      v41 = *(a2 + 1);
      v42 = *a1;

      return v41(v42, v39, v40);
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

uint64_t std::invoke[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},void const*&>(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v12 = 0;
  v13 = -1;
  v14 = 32;
  v15 = 0;
  v16 = 0;
  if (**(a1 + 16) == 1)
  {
    v4 = *a1;
    v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v12, *a1, 292);
    if (BYTE1(v12) - 8 >= 2 && BYTE1(v12) != 0)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a pointer");
    }

    *v4 = v5;
  }

  v7 = *(a1 + 8);
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v12, v7);
  v10 = 1536;
  if ((v8 & 0xFF00) == 0x900)
  {
    v10 = 1792;
  }

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v3, v7, v8 & 0xFFFFFFFFFFFF00FFLL | v10 | 0x20, v9, 0);
  *v7 = result;
  return result;
}

uint64_t std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<BOOL>(uint64_t a1, unsigned int a2)
{
  v15 = 0;
  v16 = -1;
  v17 = 32;
  v18 = 0;
  v19 = 0;
  if (**(a1 + 16))
  {
    v4 = *a1;
    v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v15, *a1, 311);
    if (BYTE1(v15) - 2 < 6)
    {
      *v4 = v5;
      v6 = *(a1 + 8);
LABEL_4:
      v7 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v15, v6);
      result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, v6, v7, v8, 0);
      *v6 = result;
      return result;
    }

    if (BYTE1(v15) > 1u)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a BOOL");
    }

    v12 = v5;
    std::__format_spec::__parser<char>::__validate[abi:ne200100](&v15, 48, "a BOOL", -1);
    if ((v15 & 7) != 0)
    {
      v13 = BYTE1(v15);
      *v4 = v12;
      v6 = *(a1 + 8);
      if (v13 > 1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      LOBYTE(v15) = v15 | 1;
      v14 = BYTE1(v15);
      *v4 = v12;
      v6 = *(a1 + 8);
      if (v14 > 1)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v10 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v15, v6);
  result = std::__formatter::__format_BOOL[abi:ne200100]<char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, v6, v10, v11);
  *v6 = result;
  return result;
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2, __int16 a3)
{
  result = *a2;
  v5 = a2[1];
  v18 = result;
  if (result == v5)
  {
    return result;
  }

  v6 = *result;
  if (v6 == 125 || (a3 & 0x40) != 0 && v6 == 58)
  {
    return result;
  }

  v9 = a1;
  v10 = std::__format_spec::__parser<char>::__parse_fill_align[abi:ne200100]<char const*>(a1, &v18, v5);
  result = v18;
  if (v10)
  {
    if (v18 == v5)
    {
      return result;
    }
  }

  if (a3)
  {
    v13 = *v18;
    v11 = v9;
    v12 = a2;
    switch(v13)
    {
      case ' ':
        v14 = *v9 | 0x18;
        break;
      case '+':
        v14 = *v9 & 0xE7 | 0x10;
        break;
      case '-':
        v14 = *v9 & 0xE7 | 8;
        break;
      default:
        goto LABEL_16;
    }

    *v9 = v14;
    v18 = ++result;
    if (result == v5)
    {
      return result;
    }
  }

  else
  {
    v11 = v9;
    v12 = a2;
  }

LABEL_16:
  if ((a3 & 2) == 0 || *result != 35 || (*v11 |= 0x20u, ++result, v18 = result, result != v5))
  {
    if ((a3 & 4) == 0 || *result != 48)
    {
      goto LABEL_24;
    }

    if ((*v11 & 7) == 0)
    {
      *v11 |= 4u;
    }

    v18 = ++result;
    if (result != v5)
    {
LABEL_24:
      v15 = std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v11, &v18, v5, v12);
      result = v18;
      if (!v15 || v18 != v5)
      {
        v16 = v9;
        if ((a3 & 8) != 0)
        {
          v17 = std::__format_spec::__parser<char>::__parse_precision[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v9, &v18, v5, a2);
          result = v18;
          if (v17)
          {
            v16 = v9;
            if (v18 == v5)
            {
              return result;
            }
          }

          else
          {
            v16 = v9;
          }
        }

        if ((a3 & 0x10) == 0 || *result != 76 || (*v16 |= 0x40u, ++result, v18 = result, result != v5))
        {
          if ((a3 & 0x80) == 0 || *result != 110 || (*v16 |= 0x80u, ++result, v18 = result, result != v5))
          {
            if ((a3 & 0x20) != 0)
            {
              std::__format_spec::__parser<char>::__parse_type[abi:ne200100]<char const*>(v16, &v18);
              result = v18;
            }

            if ((a3 & 0x100) != 0 && result != v5 && *result != 125)
            {
              std::__throw_format_error[abi:ne200100]("The format specifier should consume the input or end with a '}'");
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__format_spec::__parser<char>::__parse_fill_align[abi:ne200100]<char const*>(_BYTE *a1, unsigned __int8 **a2, unsigned __int8 *a3)
{
  v16[0] = *a2;
  v16[1] = a3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v16) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  v6 = v16[0];
  if (v16[0] < a3)
  {
    v7 = *v16[0];
    switch(v7)
    {
      case '<':
        v8 = 1;
        goto LABEL_17;
      case '>':
        v8 = 3;
        goto LABEL_17;
      case '^':
        v8 = 2;
LABEL_17:
        *a1 = *a1 & 0xF8 | v8;
        v13 = *a2;
        v14 = v6 - *a2;
        if (v14 == 1)
        {
          v15 = *v13;
          if (v15 == 123)
          {
            std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
          }

          a1[12] = v15;
        }

        else if (v6 != v13)
        {
          memmove(a1 + 12, v13, v6 - *a2);
        }

        v11 = &(*a2)[v14];
        goto LABEL_23;
    }
  }

  v9 = **a2;
  switch(v9)
  {
    case '<':
      v10 = 1;
      break;
    case '>':
      v10 = 3;
      break;
    case '^':
      v10 = 2;
      break;
    default:
      return 0;
  }

  *a1 = *a1 & 0xF8 | v10;
  v11 = *a2;
LABEL_23:
  *a2 = v11 + 1;
  return 1;
}

uint64_t std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = **a2;
  if (v7 == 123)
  {
    *a2 = v6 + 1;
    if (v6 + 1 == a3)
    {
      std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
    }

    v11 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v6 + 1, a3, a4);
    if (v11 == a3 || *v11 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The argument index is invalid");
    }

    v12 = v11 + 1;
    *(a1 + 2) |= 0x4000u;
  }

  else
  {
    LODWORD(v8) = v7 - 48;
    if (v7 == 48)
    {
      std::__throw_format_error[abi:ne200100]("The width option should not have a leading zero");
    }

    if ((v7 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v13 = v6 + 9;
    if (a3 - v6 <= 9)
    {
      v13 = a3;
    }

    v12 = v6 + 1;
    if (v6 + 1 == v13)
    {
LABEL_17:
      if (v12 == a3)
      {
        v12 = a3;
      }

      else
      {
        v15 = *v12;
        if ((v15 - 48) <= 9)
        {
          v8 = v15 + 10 * v8 - 48;
          if (v8 >> 31 || (v12 = v6 + 2, v6 + 2 != a3) && *v12 - 48 <= 9)
          {
            std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
          }
        }
      }
    }

    else
    {
      v6 = v13 - 1;
      while (1)
      {
        v14 = *v12;
        if ((v14 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        LODWORD(v8) = v14 + 10 * v8 - 48;
        if (++v12 == v13)
        {
          v12 = v13;
          goto LABEL_17;
        }
      }
    }
  }

  *(a1 + 4) = v8;
  *a2 = v12;
  return 1;
}

BOOL std::__format_spec::__parser<char>::__parse_precision[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = **a2;
  if (v5 == 46)
  {
    v6 = v4 + 1;
    *a2 = v4 + 1;
    if (v4 + 1 == a3)
    {
      std::__throw_format_error[abi:ne200100]("End of input while parsing format specifier precision");
    }

    v7 = *v6;
    if (v7 == 123)
    {
      *a2 = v4 + 2;
      if (v4 + 2 == a3)
      {
        std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
      }

      v9 = a2;
      v11 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 2, a3, a4);
      if (v11 == a3 || *v11 != 125)
      {
        std::__throw_format_error[abi:ne200100]("The argument index is invalid");
      }

      v13 = v11 + 1;
      *(a1 + 2) |= 0x8000u;
      *(a1 + 8) = v12;
      a2 = v9;
    }

    else
    {
      if ((v7 - 58) <= 0xFFFFFFF5)
      {
        std::__throw_format_error[abi:ne200100]("The precision option does not contain a value or an argument index");
      }

      if (a3 - v6 <= 9)
      {
        v14 = a3;
      }

      else
      {
        v14 = v4 + 10;
      }

      LODWORD(v15) = v7 - 48;
      v13 = v4 + 2;
      if (v13 == v14)
      {
        v14 = v13;
        if (v13 == a3)
        {
LABEL_23:
          v13 = a3;
        }

        else
        {
LABEL_17:
          v17 = *v14;
          if ((v17 - 48) > 9)
          {
            v13 = v14;
          }

          else
          {
            v15 = v17 + 10 * v15 - 48;
            if (v15 >> 31 || (v13 = v6 + 2, v6 + 2 != a3) && *v13 - 48 <= 9)
            {
              std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
            }
          }
        }
      }

      else
      {
        v6 = v14 - 1;
        while (1)
        {
          v16 = *v13;
          if ((v16 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          LODWORD(v15) = v16 + 10 * v15 - 48;
          if (++v13 == v14)
          {
            if (v14 == a3)
            {
              goto LABEL_23;
            }

            goto LABEL_17;
          }
        }
      }

      *(a1 + 8) = v15;
      *(a1 + 2) &= ~0x8000u;
    }

    *a2 = v13;
  }

  return v5 == 46;
}