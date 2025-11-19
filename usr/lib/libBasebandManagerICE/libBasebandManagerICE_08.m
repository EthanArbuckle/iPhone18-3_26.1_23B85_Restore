void sub_2974DD7C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, char a12, uint64_t a13, uint64_t a14, xpc_object_t a15, char a16, uint64_t a17, uint64_t a18, xpc_object_t object, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *aBlock, xpc_object_t a28, void *a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, xpc_object_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void **xpc::dict::operator=(void **a1, xpc_object_t *a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = *a1;
  *a1 = v3;
  xpc_release(v4);
  return a1;
}

void ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_19(void *a1, _DWORD *a2)
{
  v4 = a1[4];
  v5 = *(v4 + 104);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_297476000, v5, OS_LOG_TYPE_DEBUG, "#D Set property completion called", buf, 2u);
    if (!a1[7])
    {
      return;
    }
  }

  else if (!a1[7])
  {
    return;
  }

  v6 = 3760250880;
  if (!*a2)
  {
    v7 = *(v4 + 248);
    v8 = a1[8];
    object = v8;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      object = xpc_null_create();
    }

    TraceCAReporter::prepTraceStats(v7, &object, &v24);
    xpc_release(object);
    object = 0;
    if (MEMORY[0x29C272BA0](v24) != MEMORY[0x29EDCAA00])
    {
      goto LABEL_24;
    }

    v9 = *MEMORY[0x29EDBEBD0];
    v10 = strlen(*MEMORY[0x29EDBEBD0]);
    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v11 = v10;
    if (v10 >= 0x17)
    {
      if ((v10 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v10 | 7) + 1;
      }

      v12 = operator new(v13);
      v21 = v11;
      v22 = v13 | 0x8000000000000000;
      *buf = v12;
    }

    else
    {
      HIBYTE(v22) = v10;
      v12 = buf;
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    memmove(v12, v9, v11);
LABEL_19:
    *(v12 + v11) = 0;
    v14 = v24;
    v19 = v24;
    if (v24)
    {
      xpc_retain(v24);
    }

    else
    {
      v14 = xpc_null_create();
      v19 = v14;
    }

    v18 = 0;
    Service::runCommand(v4, buf, &v19, &v18);
    xpc_release(v14);
    v19 = 0;
    if (SHIBYTE(v22) < 0)
    {
      operator delete(*buf);
    }

LABEL_24:
    xpc_release(v24);
    if (*a2)
    {
      v6 = 3760250880;
    }

    else
    {
      v6 = 0;
    }
  }

  v15 = xpc_null_create();
  v16 = a1[7];
  *buf = v15;
  v17 = xpc_null_create();
  (*(v16 + 16))(v16, v6, buf);
  xpc_release(*buf);
  xpc_release(v17);
}

void sub_2974DDE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, xpc_object_t a18, xpc_object_t object)
{
  xpc_release(v19);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrI12TraceManagerEE56c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE64c15_ZTSN3xpc4dictE(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[7];
  if (v5)
  {
    v6 = _Block_copy(v5);
    v7 = a2[8];
    a1[7] = v6;
    a1[8] = v7;
    if (v7)
    {
      return xpc_retain(v7);
    }
  }

  else
  {
    v7 = a2[8];
    a1[7] = 0;
    a1[8] = v7;
    if (v7)
    {
      return xpc_retain(v7);
    }
  }

  result = xpc_null_create();
  a1[8] = result;
  return result;
}

void __destroy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrI12TraceManagerEE56c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE64c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 64));
  *(a1 + 64) = 0;
  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::callback(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  *a1 = v4;
  a1[1] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return a1;
}

void *__copy_helper_block_e8_40c15_ZTSN3xpc4dictE48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE56c40_ZTSNSt3__110shared_ptrI12TraceManagerEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (!v4)
  {
    a1[5] = xpc_null_create();
    result = a2[6];
    if (!result)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  xpc_retain(v4);
  result = a2[6];
  if (result)
  {
LABEL_5:
    result = _Block_copy(result);
  }

LABEL_6:
  v7 = a2[7];
  v6 = a2[8];
  a1[6] = result;
  a1[7] = v7;
  a1[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c15_ZTSN3xpc4dictE48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE56c40_ZTSNSt3__110shared_ptrI12TraceManagerEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 48);
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
LABEL_4:
    _Block_release(v3);
  }

LABEL_5:
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

uint64_t __copy_helper_block_e8_40c37_ZTSNSt3__18weak_ptrI12TraceManagerEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c37_ZTSNSt3__18weak_ptrI12TraceManagerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_25(void *a1, void **a2, void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      return;
    }
  }

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_2_26;
  v13[3] = &__block_descriptor_tmp_31;
  v11 = *a2;
  v13[4] = v7;
  object = v11;
  if (v11)
  {
    xpc_retain(v11);
    v12 = *a3;
    if (!*a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  object = xpc_null_create();
  v12 = *a3;
  if (*a3)
  {
LABEL_11:
    v12 = _Block_copy(v12);
  }

LABEL_12:
  aBlock = v12;
  ctu::SharedSynchronizable<TraceManager>::execute_wrapped((v7 + 72), v13);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(object);
}

void ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_2_26(uint64_t a1)
{
  v57 = *MEMORY[0x29EDCA608];
  memset(&v50, 170, sizeof(v50));
  v2 = *(a1 + 32);
  value = xpc_dictionary_get_value(*(a1 + 40), *MEMORY[0x29EDBE598]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v51 = 0uLL;
  v52 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(object);
  memset(__p, 170, sizeof(__p));
  v4 = xpc_dictionary_get_value(*(a1 + 40), *MEMORY[0x29EDBEB28]);
  object = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  v51 = 0uLL;
  v52 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(object);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v48, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
  }

  else
  {
    v48 = v50;
  }

  isSupported = abm::trace::isSupported();
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = isSupported;
    operator delete(v48.__r_.__value_.__l.__data_);
    if (v7)
    {
LABEL_12:
      object = 0;
      p_object = &object;
      v44 = 0x3002000000;
      v45 = __Block_byref_object_copy__0;
      v6 = *(a1 + 40);
      v46 = __Block_byref_object_dispose__0;
      v47 = v6;
      if (v6)
      {
        xpc_retain(v6);
      }

      else
      {
        v47 = xpc_null_create();
      }

      *&v51 = 0;
      *(&v51 + 1) = &v51;
      v52 = 0x4002000000;
      v53 = __Block_byref_object_copy__27;
      v54 = __Block_byref_object_dispose__28;
      v55[0] = 0;
      v55[1] = 0;
      v56 = 0;
      if (prop::get(&v50, __p, v55))
      {
        v12 = (*(&v51 + 1) + 40);
        if (*(*(&v51 + 1) + 63) < 0)
        {
          v12 = *v12;
        }

        v13 = xpc_string_create(v12);
        if (!v13)
        {
          v13 = xpc_null_create();
        }

        xpc_dictionary_set_value(p_object[5], *MEMORY[0x29EDBEC98], v13);
        v14 = xpc_null_create();
        xpc_release(v13);
        xpc_release(v14);
        *buf = 0;
        dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>((a1 + 48), buf, p_object + 5);
LABEL_63:
        _Block_object_dispose(&v51, 8);
        if (SHIBYTE(v56) < 0)
        {
          operator delete(v55[0]);
        }

        _Block_object_dispose(&object, 8);
        xpc_release(v47);
        goto LABEL_66;
      }

      v15 = *(v2 + 104);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_297476000, v15, OS_LOG_TYPE_DEFAULT, "#I Checking with abm-helper daemon", buf, 2u);
      }

      v16 = xpc_dictionary_create(0, 0, 0);
      if (v16 || (v16 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C272BA0](v16) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v16);
          v17 = v16;
        }

        else
        {
          v17 = xpc_null_create();
        }
      }

      else
      {
        v17 = xpc_null_create();
        v16 = 0;
      }

      xpc_release(v16);
      v18 = xpc_int64_create(1500);
      if (!v18)
      {
        v18 = xpc_null_create();
      }

      xpc_dictionary_set_value(v17, *MEMORY[0x29EDBD2D8], v18);
      v19 = xpc_null_create();
      xpc_release(v18);
      xpc_release(v19);
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v50;
      }

      else
      {
        v20 = v50.__r_.__value_.__r.__words[0];
      }

      v21 = xpc_string_create(v20);
      if (!v21)
      {
        v21 = xpc_null_create();
      }

      xpc_dictionary_set_value(v17, *MEMORY[0x29EDBD2F0], v21);
      v22 = xpc_null_create();
      xpc_release(v21);
      xpc_release(v22);
      if (SHIBYTE(__p[2]) >= 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = __p[0];
      }

      v24 = xpc_string_create(v23);
      if (!v24)
      {
        v24 = xpc_null_create();
      }

      xpc_dictionary_set_value(v17, *MEMORY[0x29EDBD318], v24);
      v25 = xpc_null_create();
      xpc_release(v24);
      xpc_release(v25);
      memset(buf, 170, sizeof(buf));
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1174405120;
      aBlock[2] = ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_29;
      aBlock[3] = &unk_2A1E446C8;
      aBlock[4] = &v51;
      aBlock[5] = &object;
      v26 = *(a1 + 48);
      if (v26)
      {
        v26 = _Block_copy(v26);
      }

      v40 = v26;
      v27 = _Block_copy(aBlock);
      v28 = *(v2 + 88);
      if (v28)
      {
        dispatch_retain(*(v2 + 88));
      }

      *buf = v27;
      *&buf[8] = v28;
      v38 = v17;
      if (v17)
      {
        xpc_retain(v17);
        v27 = *buf;
        v37 = 0;
        if (*buf)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v37 = 0;
        v38 = xpc_null_create();
        if (v27)
        {
LABEL_50:
          v29 = _Block_copy(v27);
          v30 = *MEMORY[0x29EDBD380];
          v31 = *&buf[8];
          v35 = v29;
          v36 = *&buf[8];
          if (!*&buf[8])
          {
LABEL_52:
            TraceManager::runOnHelper_sync(v2, 9, v30, 0, 1, &v38, &v37, &v35);
            if (v31)
            {
              dispatch_release(v31);
            }

            if (v29)
            {
              _Block_release(v29);
            }

            xpc_release(v38);
            v38 = 0;
            if (v31)
            {
              dispatch_release(v31);
            }

            if (v27)
            {
              _Block_release(v27);
            }

            if (v40)
            {
              _Block_release(v40);
            }

            xpc_release(v17);
            goto LABEL_63;
          }

LABEL_51:
          dispatch_retain(v31);
          goto LABEL_52;
        }
      }

      v29 = 0;
      v30 = *MEMORY[0x29EDBD380];
      v31 = *&buf[8];
      v35 = 0;
      v36 = *&buf[8];
      if (!*&buf[8])
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }
  }

  else if (isSupported)
  {
    goto LABEL_12;
  }

  v8 = *(v2 + 104);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v34 = &v50;
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v34 = v50.__r_.__value_.__r.__words[0];
    }

    LODWORD(v51) = 136315138;
    *(&v51 + 4) = v34;
    _os_log_error_impl(&dword_297476000, v8, OS_LOG_TYPE_ERROR, "Trace not supported: %s", &v51, 0xCu);
  }

  v9 = xpc_null_create();
  v10 = *(a1 + 48);
  *&v51 = v9;
  v11 = xpc_null_create();
  (*(v10 + 16))(v10, 3760250884, &v51);
  xpc_release(v51);
  xpc_release(v11);
LABEL_66:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_68;
    }
  }

  else if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_68:
    v32 = *MEMORY[0x29EDCA608];
    return;
  }

  operator delete(v50.__r_.__value_.__l.__data_);
  v33 = *MEMORY[0x29EDCA608];
}

void sub_2974DE9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *aBlock, char a21, uint64_t a22, xpc_object_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, xpc_object_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

xpc_object_t __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = xpc_null_create();
  *(a2 + 40) = result;
  return result;
}

__n128 __Block_byref_object_copy__27(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__28(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_29(void *a1, _DWORD *a2, xpc_object_t *a3)
{
  if (!*a2 && MEMORY[0x29C272BA0](*a3) == MEMORY[0x29EDCAA00])
  {
    value = xpc_dictionary_get_value(*a3, *MEMORY[0x29EDBD350]);
    v15 = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      v15 = xpc_null_create();
    }

    xpc::dyn_cast_or_default(object, &v15, "", v9);
    v10 = *(a1[4] + 8);
    if (*(v10 + 63) < 0)
    {
      operator delete(*(v10 + 40));
    }

    *(v10 + 40) = *object;
    *(v10 + 56) = v17;
    HIBYTE(v17) = 0;
    LOBYTE(object[0]) = 0;
    xpc_release(v15);
    v11 = *(a1[4] + 8);
    v12 = (v11 + 40);
    if (*(v11 + 63) < 0)
    {
      v12 = *v12;
    }

    v13 = xpc_string_create(v12);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    xpc_dictionary_set_value(*(*(a1[5] + 8) + 40), *MEMORY[0x29EDBEC98], v13);
    v14 = xpc_null_create();
    xpc_release(v13);
    xpc_release(v14);
    LODWORD(object[0]) = 0;
    dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a1 + 6, object, (*(a1[5] + 8) + 40));
  }

  else
  {
    v5 = xpc_null_create();
    v6 = a1[6];
    object[0] = v5;
    v7 = xpc_null_create();
    (*(v6 + 16))(v6, 3760250880, object);
    xpc_release(object[0]);
    xpc_release(v7);
  }
}

void *__copy_helper_block_e8_48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 48) = result;
  return result;
}

void __destroy_helper_block_e8_48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_35(void *a1, void **a2, const void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = a1[5];
      if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v9)
        {
          return;
        }
      }

      else
      {
        v10 = v8;
        (v8->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v10);
        if (!v9)
        {
          return;
        }
      }

      v13[0] = MEMORY[0x29EDCA5F8];
      v13[1] = 1174405120;
      v13[2] = ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_2_36;
      v13[3] = &__block_descriptor_tmp_37_0;
      v13[4] = v7;
      if (*a3)
      {
        v11 = _Block_copy(*a3);
        v12 = *a2;
        aBlock = v11;
        object = v12;
        if (v12)
        {
LABEL_9:
          xpc_retain(v12);
          goto LABEL_12;
        }
      }

      else
      {
        v12 = *a2;
        aBlock = 0;
        object = v12;
        if (v12)
        {
          goto LABEL_9;
        }
      }

      object = xpc_null_create();
LABEL_12:
      ctu::SharedSynchronizable<TraceManager>::execute_wrapped((v7 + 72), v13);
      xpc_release(object);
      object = 0;
      if (aBlock)
      {
        _Block_release(aBlock);
      }
    }
  }
}

void ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_2_36(uint64_t a1)
{
  v58 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if ((*(*v2 + 96))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(__s1, 170, 24);
    v4 = *MEMORY[0x29EDBEBE0];
    v5 = strlen(*MEMORY[0x29EDBEBE0]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v10 = 25;
      }

      else
      {
        v10 = (v5 | 7) + 1;
      }

      p_dst = operator new(v10);
      *(&__dst + 1) = v6;
      v57 = v10 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v57) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_13:
        *(p_dst + v6) = 0;
        v11 = operator new(0x28uLL);
        v12 = v11;
        strcpy(v11, " rejected; ABM is shutting down ");
        v13 = SHIBYTE(v57);
        if ((SHIBYTE(v57) & 0x8000000000000000) != 0)
        {
          v13 = *(&__dst + 1);
          v16 = (v57 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v16 - *(&__dst + 1) < 0x20)
          {
            v14 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v57 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v16)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v15 = __dst;
            if (v16 > 0x3FFFFFFFFFFFFFF2)
            {
              v21 = 0;
LABEL_33:
              v22 = operator new(v3);
              v23 = v22;
              if (v13)
              {
                memmove(v22, v15, v13);
              }

              v24 = &v23[v13];
              v25 = v12[1];
              *v24 = *v12;
              *(v24 + 1) = v25;
              if (!v21)
              {
                operator delete(v15);
              }

              *(&__dst + 1) = v14;
              v57 = v3 | 0x8000000000000000;
              *&__dst = v23;
              v26 = &v23[v14];
LABEL_52:
              *v26 = 0;
              __s1[0] = __dst;
              *&__s1[1] = v57;
              v57 = 0;
              __dst = 0uLL;
              operator delete(v12);
              if (SHIBYTE(v57) < 0)
              {
                operator delete(__dst);
                v34 = *(v2 + 13);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
LABEL_54:
                  v35 = __s1;
                  if (SBYTE7(__s1[1]) < 0)
                  {
                    v35 = *&__s1[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v35;
                  _os_log_impl(&dword_297476000, v34, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  v37 = *(a1 + 40);
                  v36 = (a1 + 40);
                  if (!v37)
                  {
                    goto LABEL_85;
                  }

LABEL_60:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v39 = BYTE7(__s1[1]);
                  if (SBYTE7(__s1[1]) < 0)
                  {
                    v39 = *(&__s1[0] + 1);
                  }

                  if (v39)
                  {
                    v40 = xpc_dictionary_create(0, 0, 0);
                    if (v40 || (v40 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C272BA0](v40) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v40);
                        v41 = v40;
                      }

                      else
                      {
                        v41 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v41 = xpc_null_create();
                      v40 = 0;
                    }

                    xpc_release(v40);
                    v44 = xpc_null_create();
                    v45 = __dst;
                    *&__dst = v41;
                    xpc_release(v45);
                    xpc_release(v44);
                    if ((SBYTE7(__s1[1]) & 0x80u) == 0)
                    {
                      v46 = __s1;
                    }

                    else
                    {
                      v46 = *&__s1[0];
                    }

                    v47 = xpc_string_create(v46);
                    if (!v47)
                    {
                      v47 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v41, *MEMORY[0x29EDBE648], v47);
                    v48 = xpc_null_create();
                    xpc_release(v47);
                    xpc_release(v48);
                  }

                  v54 = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v36, &v54, &__dst);
                  xpc_release(__dst);
                  goto LABEL_85;
                }
              }

              else
              {
                v34 = *(v2 + 13);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_54;
                }
              }

              v38 = *(a1 + 40);
              v36 = (a1 + 40);
              if (!v38)
              {
                goto LABEL_85;
              }

              goto LABEL_60;
            }

LABEL_24:
            v19 = 2 * v16;
            if (v14 > 2 * v16)
            {
              v19 = v14;
            }

            if ((v19 | 7) == 0x17)
            {
              v20 = 25;
            }

            else
            {
              v20 = (v19 | 7) + 1;
            }

            if (v19 >= 0x17)
            {
              v3 = v20;
            }

            else
            {
              v3 = 23;
            }

            v21 = v16 == 22;
            goto LABEL_33;
          }

          v30 = __dst;
          v32 = (__dst + *(&__dst + 1));
          v33 = v11[1];
          *v32 = *v11;
          v32[1] = v33;
          v31 = v13 + 32;
          *(&__dst + 1) = v13 + 32;
        }

        else
        {
          if (SHIBYTE(v57) < 0x17)
          {
            v14 = SHIBYTE(v57) | 0x20;
            v15 = &__dst;
            v16 = 22;
            goto LABEL_24;
          }

          v30 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v57), " rejected; ABM is shutting down ", 32);
          v31 = v13 + 32;
          HIBYTE(v57) = (v13 + 32) & 0x7F;
        }

        v26 = v30 + v31;
        goto LABEL_52;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_13;
  }

  memset(__s1, 170, 24);
  value = xpc_dictionary_get_value(*(a1 + 48), *MEMORY[0x29EDBE670]);
  *&__dst = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *&__dst = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__s1, &__dst, *MEMORY[0x29EDBEAA0], v9);
  xpc_release(__dst);
  v17 = *MEMORY[0x29EDBE968];
  v18 = strlen(*MEMORY[0x29EDBE968]);
  if ((SBYTE7(__s1[1]) & 0x8000000000000000) != 0)
  {
    if (v18 == *(&__s1[0] + 1))
    {
      if (v18 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(*&__s1[0], v17, v18))
      {
LABEL_67:
        v42 = *(a1 + 48);
        v53 = v42;
        if (v42)
        {
          xpc_retain(v42);
          v43 = *(a1 + 40);
          if (!v43)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v42 = xpc_null_create();
          v53 = v42;
          v43 = *(a1 + 40);
          if (!v43)
          {
LABEL_74:
            aBlock = v43;
            TraceManager::collectBasebandLogs_sync(v2, &v53, &aBlock);
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            xpc_release(v42);
            goto LABEL_85;
          }
        }

        v43 = _Block_copy(v43);
        goto LABEL_74;
      }
    }
  }

  else if (v18 == SBYTE7(__s1[1]) && !memcmp(__s1, v17, v18))
  {
    goto LABEL_67;
  }

  v27 = *(a1 + 48);
  v51 = v27;
  if (!v27)
  {
    v27 = xpc_null_create();
    v51 = v27;
    v28 = *(a1 + 40);
    if (v28)
    {
      goto LABEL_43;
    }

LABEL_46:
    v29 = 0;
    goto LABEL_47;
  }

  xpc_retain(v27);
  v28 = *(a1 + 40);
  if (!v28)
  {
    goto LABEL_46;
  }

LABEL_43:
  v29 = _Block_copy(v28);
LABEL_47:
  v50 = v29;
  TraceManager::collectLogs_sync(v2, &v51, &v50);
  if (v29)
  {
    _Block_release(v29);
  }

  xpc_release(v27);
LABEL_85:
  if (SBYTE7(__s1[1]) < 0)
  {
    operator delete(*&__s1[0]);
  }

  v49 = *MEMORY[0x29EDCA608];
}

void sub_2974DF614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *aBlock, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, xpc_object_t object, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void TraceManager::collectBasebandLogs_sync(char *a1, xpc_object_t *a2, const void **a3)
{
  v160 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C272BA0](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = xpc_null_create();
    v7 = *a3;
    *object = v6;
    v8 = xpc_null_create();
    v7[2](v7, 3760250880, object);
    xpc_release(*object);
    xpc_release(v8);
LABEL_238:
    v111 = *MEMORY[0x29EDCA608];
    return;
  }

  memset(v155, 170, sizeof(v155));
  v9 = *MEMORY[0x29EDBE670];
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE670]);
  *object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(v155, object, *MEMORY[0x29EDBE968], v11);
  xpc_release(*object);
  memset(&v154, 170, sizeof(v154));
  v12 = *MEMORY[0x29EDBE930];
  v13 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE930]);
  v153.__r_.__value_.__r.__words[0] = v13;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    v153.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  Timestamp::Timestamp(&__dst);
  Timestamp::asString(v14, 0, 9, object);
  xpc::dyn_cast_or_default();
  if ((object[23] & 0x80000000) != 0)
  {
    operator delete(*object);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&__dst, __dst.__r_.__value_.__l.__size_);
  xpc_release(v153.__r_.__value_.__l.__data_);
  memset(&v153, 170, sizeof(v153));
  v15 = *MEMORY[0x29EDBEF60];
  v16 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEF60]);
  __dst.__r_.__value_.__r.__words[0] = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    __dst.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  memset(object, 0, 24);
  xpc::dyn_cast_or_default();
  if ((object[23] & 0x80000000) != 0)
  {
    operator delete(*object);
  }

  xpc_release(__dst.__r_.__value_.__l.__data_);
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  v125 = v9;
  v126 = a3;
  v127 = v12;
  if ((IsInternalBuild & 1) != 0 || (IsInternalBuild = TelephonyUtilIsCarrierBuild(), IsInternalBuild))
  {
    CompressionMode = capabilities::trace::getCompressionMode(IsInternalBuild);
  }

  else
  {
    CompressionMode = 2;
  }

  v19 = 0x7FFFFFFFFFFFFFF7;
  v152 = 0;
  v20 = *MEMORY[0x29EDBD4A0];
  v21 = strlen(*MEMORY[0x29EDBD4A0]);
  if (v21 > 0x7FFFFFFFFFFFFFF7)
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

    p_dst = operator new(v24);
    __dst.__r_.__value_.__l.__size_ = v22;
    __dst.__r_.__value_.__r.__words[2] = v24 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_28;
  }

  *(&__dst.__r_.__value_.__s + 23) = v21;
  p_dst = &__dst;
  if (v21)
  {
LABEL_28:
    memmove(p_dst, v20, v22);
  }

  p_dst->__r_.__value_.__s.__data_[v22] = 0;
  memset(object, 0, 24);
  if (prop::compression::get(&__dst, object))
  {
    LODWORD(v158[0]) = -1431655766;
    if (util::convert<int>(object, v158, 0))
    {
      CompressionMode = LODWORD(v158[0]);
    }

    else
    {
      CompressionMode = CompressionMode;
    }
  }

  if ((object[23] & 0x80000000) != 0)
  {
    operator delete(*object);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_35:
  v25 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF7C0]);
  *object = v25;
  if (v25)
  {
    xpc_retain(v25);
  }

  else
  {
    *object = xpc_null_create();
  }

  v26 = xpc::dyn_cast_or_default(object, CompressionMode);
  xpc_release(*object);
  v128 = v26;
  if (v26)
  {
    v152 = 0;
    v28 = *MEMORY[0x29EDBD340];
    v29 = strlen(*MEMORY[0x29EDBD340]);
    if (v29 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v30 = v29;
    if (v29 >= 0x17)
    {
      if ((v29 | 7) == 0x17)
      {
        v32 = 25;
      }

      else
      {
        v32 = (v29 | 7) + 1;
      }

      v31 = operator new(v32);
      __dst.__r_.__value_.__l.__size_ = v30;
      __dst.__r_.__value_.__r.__words[2] = v32 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = v31;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v29;
      v31 = &__dst;
      if (!v29)
      {
LABEL_50:
        v31->__r_.__value_.__s.__data_[v30] = 0;
        memset(object, 0, 24);
        if (prop::compression::get(&__dst, object))
        {
          util::convert<BOOL>(object, &v152, 0);
        }

        if ((object[23] & 0x80000000) != 0)
        {
          operator delete(*object);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_54;
          }
        }

        else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_54:
          v33 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF508]);
          *object = v33;
          if (v33)
          {
            xpc_retain(v33);
          }

          else
          {
            *object = xpc_null_create();
          }

          v152 = xpc::dyn_cast_or_default(object, v152);
          xpc_release(*object);
          goto LABEL_60;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
        goto LABEL_54;
      }
    }

    memmove(v31, v28, v30);
    goto LABEL_50;
  }

LABEL_60:
  size = HIBYTE(v153.__r_.__value_.__r.__words[2]);
  if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v153.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    std::string::__assign_external(&v153, *MEMORY[0x29EDBE5C0]);
  }

  v150 = 0xAAAAAAAAAAAAAAAALL;
  v151 = 0xAAAAAAAAAAAAAAAALL;
  abm::HelperClient::create(&v150, "tracing.helper", v27);
  xdict = 0xAAAAAAAAAAAAAAAALL;
  xdict = xpc_null_create();
  v35 = xpc_dictionary_create(0, 0, 0);
  if (v35 || (v35 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v35) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v35);
      v36 = v35;
    }

    else
    {
      v36 = xpc_null_create();
    }
  }

  else
  {
    v36 = xpc_null_create();
    v35 = 0;
  }

  xpc_release(v35);
  v37 = xpc_int64_create(1500);
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  xpc_dictionary_set_value(v36, *MEMORY[0x29EDBD2D8], v37);
  v38 = xpc_null_create();
  xpc_release(v37);
  xpc_release(v38);
  *&v39 = 0xAAAAAAAAAAAAAAAALL;
  *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *object = v39;
  *&object[16] = v39;
  v147 = v36;
  if (v36)
  {
    xpc_retain(v36);
  }

  else
  {
    v147 = xpc_null_create();
  }

  v40 = *MEMORY[0x29EDBD420];
  abm::HelperClient::perform();
  xpc_release(v147);
  v147 = 0;
  v146 = xpc_null_create();
  if (*object || MEMORY[0x29C272BA0](xdict) != MEMORY[0x29EDCAA00] || !*(a1 + 25))
  {
LABEL_77:
    xpc_release(v146);
    if ((object[31] & 0x80000000) != 0)
    {
      operator delete(*&object[8]);
    }

    xpc_release(v36);
    xpc_release(xdict);
    v41 = v151;
    if (v151 && !atomic_fetch_add((v151 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v41->__on_zero_shared)(v41);
      std::__shared_weak_count::__release_weak(v41);
    }

    v42 = MEMORY[0x29EDBFC08];
    v43 = *MEMORY[0x29EDBFC08];
    v44 = strlen(*MEMORY[0x29EDBFC08]);
    if (v44 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v45 = v44;
    if (v44 >= 0x17)
    {
      if ((v44 | 7) == 0x17)
      {
        v47 = 25;
      }

      else
      {
        v47 = (v44 | 7) + 1;
      }

      v46 = operator new(v47);
      *&object[8] = v45;
      *&object[16] = v47 | 0x8000000000000000;
      *object = v46;
    }

    else
    {
      object[23] = v44;
      v46 = object;
      if (!v44)
      {
LABEL_91:
        v46[v45] = 0;
        support::fs::createDir(object, 0x1EDu, 1);
        if ((object[23] & 0x80000000) != 0)
        {
          operator delete(*object);
        }

        cf[0] = 0;
        v48 = *MEMORY[0x29EDB8ED8];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        v51 = Mutable;
        if (Mutable)
        {
          cf[0] = Mutable;
        }

        if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(object, v153.__r_.__value_.__l.__data_, v153.__r_.__value_.__l.__size_);
        }

        else
        {
          *object = v153;
        }

        ctu::cf::insert<char const*,std::string>(v51, v15, object, v48, v50);
        if ((object[23] & 0x80000000) != 0)
        {
          operator delete(*object);
          if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_100;
          }
        }

        else if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_100:
          *object = v154;
          goto LABEL_103;
        }

        std::string::__init_copy_ctor_external(object, v154.__r_.__value_.__l.__data_, v154.__r_.__value_.__l.__size_);
LABEL_103:
        ctu::cf::insert<char const*,std::string>(v51, v127, object, v48, v52);
        if ((object[23] & 0x80000000) != 0)
        {
          operator delete(*object);
        }

        memset(&__dst, 170, sizeof(__dst));
        v53 = *v42;
        v54 = strlen(*v42);
        if (v54 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v55 = v54;
        v56 = v26;
        if (v54 >= 0x17)
        {
          if ((v54 | 7) == 0x17)
          {
            v58 = 25;
          }

          else
          {
            v58 = (v54 | 7) + 1;
          }

          v57 = operator new(v58);
          __dst.__r_.__value_.__l.__size_ = v55;
          __dst.__r_.__value_.__r.__words[2] = v58 | 0x8000000000000000;
          __dst.__r_.__value_.__r.__words[0] = v57;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v54;
          v57 = &__dst;
          if (!v54)
          {
            __dst.__r_.__value_.__s.__data_[0] = 0;
            if (!v26)
            {
              goto LABEL_164;
            }

LABEL_115:
            v59 = *MEMORY[0x29EDBFC20];
            v60 = strlen(*MEMORY[0x29EDBFC20]);
            v61 = SHIBYTE(v154.__r_.__value_.__r.__words[2]);
            if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v62 = HIBYTE(v154.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v62 = v154.__r_.__value_.__l.__size_;
            }

            v63 = v62 + v60;
            if (v62 + v60 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v64 = v60;
            if (v63 <= 0x16)
            {
              memset(object, 0, 24);
              v66 = object;
              object[23] = v62 + v60;
              if (!v60)
              {
                goto LABEL_127;
              }
            }

            else
            {
              if ((v63 | 7) == 0x17)
              {
                v65 = 25;
              }

              else
              {
                v65 = (v63 | 7) + 1;
              }

              v66 = operator new(v65);
              *&object[8] = v63;
              *&object[16] = v65 | 0x8000000000000000;
              *object = v66;
              v56 = v128;
              if (!v64)
              {
LABEL_127:
                v67 = &v66[v64];
                if (v62)
                {
                  if (v61 >= 0)
                  {
                    v68 = &v154;
                  }

                  else
                  {
                    v68 = v154.__r_.__value_.__r.__words[0];
                  }

                  memmove(v67, v68, v62);
                }

                v67[v62] = 0;
                v69 = object[23];
                if ((object[23] & 0x8000000000000000) != 0)
                {
                  v69 = *&object[8];
                  v72 = *&object[16] & 0x7FFFFFFFFFFFFFFFLL;
                  v71 = (*&object[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                  if (v71 == *&object[8])
                  {
                    if (v72 == 0x7FFFFFFFFFFFFFF7)
                    {
                      std::string::__throw_length_error[abi:ne200100]();
                    }

                    v70 = *object;
                    if (v71 > 0x3FFFFFFFFFFFFFF2)
                    {
                      v75 = 0;
LABEL_147:
                      v76 = operator new(v19);
                      v77 = v76;
                      if (v71)
                      {
                        memmove(v76, v70, v71);
                      }

                      v77[v71] = 47;
                      if (!v75)
                      {
                        operator delete(v70);
                      }

                      *&object[8] = v72;
                      *&object[16] = v19 | 0x8000000000000000;
                      *object = v77;
                      v78 = &v77[v72];
                      goto LABEL_160;
                    }

LABEL_138:
                    v73 = 2 * v71;
                    if (v72 > 2 * v71)
                    {
                      v73 = v72;
                    }

                    if ((v73 | 7) == 0x17)
                    {
                      v74 = 25;
                    }

                    else
                    {
                      v74 = (v73 | 7) + 1;
                    }

                    if (v73 >= 0x17)
                    {
                      v19 = v74;
                    }

                    else
                    {
                      v19 = 23;
                    }

                    v75 = v71 == 22;
                    goto LABEL_147;
                  }

                  v70 = *object;
                }

                else
                {
                  v70 = object;
                  if (object[23] == 22)
                  {
                    v71 = 22;
                    v72 = 23;
                    goto LABEL_138;
                  }
                }

                v70[v69] = 47;
                v80 = v69 + 1;
                if ((object[23] & 0x80000000) != 0)
                {
                  *&object[8] = v80;
                }

                else
                {
                  object[23] = v80 & 0x7F;
                }

                v78 = &v70[v80];
LABEL_160:
                *v78 = 0;
                v81 = *object;
                v158[0] = *&object[8];
                *(v158 + 7) = *&object[15];
                v82 = object[23];
                memset(object, 0, 24);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                  __dst.__r_.__value_.__r.__words[0] = v81;
                  __dst.__r_.__value_.__l.__size_ = v158[0];
                  *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(v158 + 7);
                  *(&__dst.__r_.__value_.__s + 23) = v82;
                  if ((object[23] & 0x80000000) != 0)
                  {
                    operator delete(*object);
                  }
                }

                else
                {
                  __dst.__r_.__value_.__r.__words[0] = v81;
                  __dst.__r_.__value_.__l.__size_ = v158[0];
                  *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(v158 + 7);
                  *(&__dst.__r_.__value_.__s + 23) = v82;
                }

LABEL_164:
                support::fs::createDir(&__dst, 0x1EDu, 1);
                v84 = cf[0];
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(object, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
                }

                else
                {
                  *object = __dst;
                }

                ctu::cf::insert<char const*,std::string>(v84, *MEMORY[0x29EDBEC90], object, v48, v83);
                if ((object[23] & 0x80000000) != 0)
                {
                  operator delete(*object);
                  if ((v155[23] & 0x80000000) == 0)
                  {
                    goto LABEL_169;
                  }
                }

                else if ((v155[23] & 0x80000000) == 0)
                {
LABEL_169:
                  *object = *v155;
                  *&object[16] = *&v155[16];
                  goto LABEL_172;
                }

                std::string::__init_copy_ctor_external(object, *v155, *&v155[8]);
LABEL_172:
                ctu::cf::insert<char const*,std::string>(v84, v125, object, v48, v85);
                if ((object[23] & 0x80000000) != 0)
                {
                  operator delete(*object);
                }

                v86 = *(a1 + 10);
                if (!v86 || (v87 = *(a1 + 9), (v88 = std::__shared_weak_count::lock(v86)) == 0))
                {
                  std::__throw_bad_weak_ptr[abi:ne200100]();
                }

                v89 = v88;
                p_shared_weak_owners = &v88->__shared_weak_owners_;
                atomic_fetch_add_explicit(&v88->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v88->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v88->__on_zero_shared)(v88);
                  std::__shared_weak_count::__release_weak(v89);
                }

                v158[0] = 0xAAAAAAAAAAAAAAAALL;
                v158[1] = 0xAAAAAAAAAAAAAAAALL;
                aBlock[0] = MEMORY[0x29EDCA5F8];
                aBlock[1] = 1174405120;
                aBlock[2] = ___ZN12TraceManager24collectBasebandLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEE_block_invoke;
                aBlock[3] = &__block_descriptor_tmp_57;
                aBlock[4] = a1;
                aBlock[5] = v87;
                v135 = v89;
                atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
                if (*v126)
                {
                  v91 = _Block_copy(*v126);
                  v92 = MEMORY[0x29EDCAA00];
                  v136 = v91;
                  if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_180:
                    v137 = v154;
                    goto LABEL_183;
                  }
                }

                else
                {
                  v92 = MEMORY[0x29EDCAA00];
                  v136 = 0;
                  if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_180;
                  }
                }

                std::string::__init_copy_ctor_external(&v137, v154.__r_.__value_.__l.__data_, v154.__r_.__value_.__l.__size_);
LABEL_183:
                v139 = v56;
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
                }

                else
                {
                  __p = __dst;
                }

                v140 = v152;
                v94 = _Block_copy(aBlock);
                v95 = *(a1 + 11);
                if (v95)
                {
                  dispatch_retain(*(a1 + 11));
                }

                v158[0] = v94;
                v158[1] = v95;
                ctu::cf_to_xpc(object, cf[0], v93);
                v96 = *object;
                if (*object && MEMORY[0x29C272BA0](*object) == v92)
                {
                  xpc_retain(v96);
                }

                else
                {
                  v96 = xpc_null_create();
                }

                xpc_release(*object);
                v97 = a1 + 112;
                if (a1[135] < 0)
                {
                  v97 = *v97;
                }

                v98 = xpc_string_create(v97);
                if (!v98)
                {
                  v98 = xpc_null_create();
                }

                xpc_dictionary_set_value(v96, *MEMORY[0x29EDBE8F0], v98);
                v99 = xpc_null_create();
                xpc_release(v98);
                xpc_release(v99);
                if (capabilities::radio::dal(v100))
                {
                  v150 = 0xAAAAAAAAAAAAAAAALL;
                  v151 = 0xAAAAAAAAAAAAAAAALL;
                  (*(*a1 + 88))(&v150, a1);
                  v101 = v150;
                  if (v150)
                  {
                    v102 = operator new(0x28uLL);
                    strcpy(v102, "com.apple.Baseband.Logging.Snapshot");
                    v103 = *(v101 + 48);
                    std::string::__init_copy_ctor_external(object, v102, 0x23uLL);
                    (*(*v103 + 24))(&v133, v103, object, 300000);
                    if ((object[23] & 0x80000000) != 0)
                    {
                      operator delete(*object);
                    }

                    if (v133)
                    {
                      dispatch_release(v133);
                    }

                    operator delete(v102);
                  }

                  v104 = v151;
                  if (v151 && !atomic_fetch_add((v151 + 8), 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v104->__on_zero_shared)(v104);
                    std::__shared_weak_count::__release_weak(v104);
                  }
                }

                v132 = v96;
                if (v96)
                {
                  xpc_retain(v96);
                  v131 = 0;
                  v105 = v158[0];
                  if (v158[0])
                  {
                    goto LABEL_208;
                  }
                }

                else
                {
                  v131 = 0;
                  v132 = xpc_null_create();
                  v105 = v158[0];
                  if (v158[0])
                  {
LABEL_208:
                    v106 = _Block_copy(v105);
                    v107 = *MEMORY[0x29EDBD458];
                    v108 = v158[1];
                    v129 = v106;
                    v130 = v158[1];
                    if (!v158[1])
                    {
                      goto LABEL_210;
                    }

                    goto LABEL_209;
                  }
                }

                v106 = 0;
                v107 = *MEMORY[0x29EDBD458];
                v108 = v158[1];
                v129 = 0;
                v130 = v158[1];
                if (!v158[1])
                {
LABEL_210:
                  TraceManager::runOnHelper_sync(a1, 9, v107, 0x1388u, 1, &v132, &v131, &v129);
                  if (v108)
                  {
                    dispatch_release(v108);
                  }

                  if (v106)
                  {
                    _Block_release(v106);
                  }

                  xpc_release(v132);
                  v132 = 0;
                  xpc_release(v96);
                  if (v108)
                  {
                    dispatch_release(v108);
                  }

                  if (v105)
                  {
                    _Block_release(v105);
                  }

                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                    if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
LABEL_220:
                      v109 = v136;
                      if (!v136)
                      {
LABEL_228:
                        if (v135)
                        {
                          std::__shared_weak_count::__release_weak(v135);
                        }

                        std::__shared_weak_count::__release_weak(v89);
                        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__dst.__r_.__value_.__l.__data_);
                          v110 = cf[0];
                          if (!cf[0])
                          {
                            goto LABEL_235;
                          }
                        }

                        else
                        {
                          v110 = cf[0];
                          if (!cf[0])
                          {
LABEL_235:
                            if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
                            {
                              goto LABEL_273;
                            }

LABEL_236:
                            if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
                            {
                              goto LABEL_274;
                            }

                            goto LABEL_237;
                          }
                        }

                        CFRelease(v110);
                        goto LABEL_235;
                      }

LABEL_227:
                      _Block_release(v109);
                      goto LABEL_228;
                    }
                  }

                  else if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_220;
                  }

                  operator delete(v137.__r_.__value_.__l.__data_);
                  v109 = v136;
                  if (!v136)
                  {
                    goto LABEL_228;
                  }

                  goto LABEL_227;
                }

LABEL_209:
                dispatch_retain(v108);
                goto LABEL_210;
              }
            }

            memcpy(v66, v59, v64);
            goto LABEL_127;
          }
        }

        memmove(v57, v53, v55);
        v57->__r_.__value_.__s.__data_[v55] = 0;
        if (!v26)
        {
          goto LABEL_164;
        }

        goto LABEL_115;
      }
    }

    memmove(v46, v43, v45);
    goto LABEL_91;
  }

  memset(v158, 170, sizeof(v158));
  v79 = xpc_dictionary_get_value(xdict, *MEMORY[0x29EDBD3B0]);
  cf[0] = v79;
  if (v79)
  {
    xpc_retain(v79);
  }

  else
  {
    cf[0] = xpc_null_create();
  }

  memset(&__dst, 0, sizeof(__dst));
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  xpc_release(cf[0]);
  v112 = *(a1 + 13);
  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
  {
    v113 = *(*(a1 + 25) + 16);
    LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(__dst.__r_.__value_.__r.__words[0]) = v113;
    _os_log_impl(&dword_297476000, v112, OS_LOG_TYPE_DEFAULT, "#I Baseband Log tracker size: %d", &__dst, 8u);
  }

  cf[0] = 0xAAAAAAAAAAAAAAAALL;
  cf[1] = 0xAAAAAAAAAAAAAAAALL;
  BBLogTracker::getLog(*(a1 + 25), v158, cf);
  v114 = cf[0];
  if (!cf[0])
  {
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](cf);
    if (SHIBYTE(v158[2]) < 0)
    {
      operator delete(v158[0]);
    }

    goto LABEL_77;
  }

  v115 = *(a1 + 13);
  v116 = os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT);
  v117 = MEMORY[0x29EDCAA00];
  if (v116)
  {
    asString(v114, &__dst);
    v118 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
    *buf = 136315138;
    v157 = v118;
    _os_log_impl(&dword_297476000, v115, OS_LOG_TYPE_DEFAULT, "#I Log tracker info: %s", buf, 0xCu);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  v119 = xpc_dictionary_create(0, 0, 0);
  v120 = v119;
  if (v119)
  {
    __dst.__r_.__value_.__r.__words[0] = v119;
  }

  else
  {
    v120 = xpc_null_create();
    __dst.__r_.__value_.__r.__words[0] = v120;
    if (!v120)
    {
      v121 = xpc_null_create();
      v120 = 0;
      goto LABEL_261;
    }
  }

  if (MEMORY[0x29C272BA0](v120) == v117)
  {
    xpc_retain(v120);
    goto LABEL_262;
  }

  v121 = xpc_null_create();
LABEL_261:
  __dst.__r_.__value_.__r.__words[0] = v121;
LABEL_262:
  xpc_release(v120);
  xpc::dict::operator=(&v146, &__dst.__r_.__value_.__l.__data_);
  xpc_release(__dst.__r_.__value_.__l.__data_);
  v143 = xpc_string_create(*MEMORY[0x29EDBFC08]);
  if (!v143)
  {
    v143 = xpc_null_create();
  }

  v122 = *MEMORY[0x29EDBEC90];
  __dst.__r_.__value_.__r.__words[0] = &v146;
  __dst.__r_.__value_.__l.__size_ = v122;
  xpc::dict::object_proxy::operator=(&__dst, &v143, &v144);
  xpc_release(v144);
  v144 = 0;
  xpc_release(v143);
  v143 = 0;
  v123 = cf[0];
  if (*(cf[0] + 23) < 0)
  {
    v123 = *cf[0];
  }

  v141 = xpc_string_create(v123);
  if (!v141)
  {
    v141 = xpc_null_create();
  }

  __dst.__r_.__value_.__r.__words[0] = &v146;
  __dst.__r_.__value_.__l.__size_ = v127;
  xpc::dict::object_proxy::operator=(&__dst, &v141, &v142);
  xpc_release(v142);
  v142 = 0;
  xpc_release(v141);
  v141 = 0;
  LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v126, &__dst, &v146);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](cf);
  if (SHIBYTE(v158[2]) < 0)
  {
    operator delete(v158[0]);
  }

  xpc_release(v146);
  if ((object[31] & 0x80000000) != 0)
  {
    operator delete(*&object[8]);
  }

  xpc_release(v36);
  xpc_release(xdict);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&v150);
  if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_236;
  }

LABEL_273:
  operator delete(v153.__r_.__value_.__l.__data_);
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_274:
    operator delete(v154.__r_.__value_.__l.__data_);
    if ((v155[23] & 0x80000000) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_275;
  }

LABEL_237:
  if ((v155[23] & 0x80000000) == 0)
  {
    goto LABEL_238;
  }

LABEL_275:
  operator delete(*v155);
  v124 = *MEMORY[0x29EDCA608];
}

void sub_2974E0AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, xpc_object_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, void *aBlock, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, xpc_object_t a43, uint64_t a44, xpc_object_t object, xpc_object_t a46, xpc_object_t a47, void *__p, int a49, __int16 a50, char a51, char a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, xpc_object_t a58, char a59)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void TraceManager::collectLogs_sync(void *a1, xpc_object_t *a2, void **a3)
{
  v252 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C272BA0](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = xpc_null_create();
    v7 = *a3;
    *&buf.st_dev = v6;
    v8 = xpc_null_create();
    v7[2](v7, 3760250880, &buf);
    xpc_release(*&buf.st_dev);
    xpc_release(v8);
LABEL_431:
    v202 = *MEMORY[0x29EDCA608];
    return;
  }

  memset(__s1, 170, sizeof(__s1));
  v9 = *MEMORY[0x29EDBE670];
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE670]);
  *&buf.st_dev = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *&buf.st_dev = xpc_null_create();
  }

  v12 = *MEMORY[0x29EDBEAA0];
  xpc::dyn_cast_or_default(__s1, &buf, *MEMORY[0x29EDBEAA0], v11);
  xpc_release(*&buf.st_dev);
  memset(v247, 170, sizeof(v247));
  v13 = *MEMORY[0x29EDBE930];
  v14 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE930]);
  v245[1].__r_.__value_.__r.__words[0] = v14;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    v245[1].__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  Timestamp::Timestamp(v246);
  Timestamp::asString(v246, 0, 9, &buf);
  xpc::dyn_cast_or_default();
  if (SHIBYTE(buf.st_gid) < 0)
  {
    operator delete(*&buf.st_dev);
  }

  v214 = v13;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v246, v246[1]);
  xpc_release(v245[1].__r_.__value_.__l.__data_);
  memset(v246, 170, sizeof(v246));
  v15 = *MEMORY[0x29EDBEB00];
  v16 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEB00]);
  v245[1].__r_.__value_.__r.__words[0] = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    v245[1].__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  memset(&buf, 0, 24);
  xpc::dyn_cast_or_default();
  if (SHIBYTE(buf.st_gid) < 0)
  {
    operator delete(*&buf.st_dev);
  }

  xpc_release(v245[1].__r_.__value_.__l.__data_);
  memset(&v245[1], 170, sizeof(std::string));
  v17 = *a2;
  v212 = *MEMORY[0x29EDBEEE0];
  v18 = xpc_dictionary_get_value(v17, v212);
  v245[0].__r_.__value_.__r.__words[0] = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v245[0].__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  memset(&buf, 0, 24);
  xpc::dyn_cast_or_default();
  if (SHIBYTE(buf.st_gid) < 0)
  {
    operator delete(*&buf.st_dev);
  }

  xpc_release(v245[0].__r_.__value_.__l.__data_);
  memset(v245, 170, 24);
  v19 = *a2;
  v213 = *MEMORY[0x29EDBEF60];
  v20 = xpc_dictionary_get_value(v19, v213);
  __dst[0] = v20;
  if (v20)
  {
    xpc_retain(v20);
  }

  else
  {
    __dst[0] = xpc_null_create();
  }

  memset(&buf, 0, 24);
  xpc::dyn_cast_or_default();
  if (SHIBYTE(buf.st_gid) < 0)
  {
    operator delete(*&buf.st_dev);
  }

  xpc_release(__dst[0]);
  v21 = *a2;
  v211 = *MEMORY[0x29EDBE578];
  v22 = xpc_dictionary_get_value(v21, v211);
  *&buf.st_dev = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    *&buf.st_dev = xpc_null_create();
  }

  v209 = xpc::dyn_cast_or_default(&buf, 7);
  v210 = v15;
  xpc_release(*&buf.st_dev);
  v244 = 1;
  __src = *MEMORY[0x29EDBF810];
  v23 = strlen(__src);
  if (v23 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v24 = v23;
  v204 = a3;
  if (v23 >= 0x17)
  {
    if ((v23 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v23 | 7) + 1;
    }

    v25 = operator new(v26);
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v25;
    __dst[1] = v24;
    goto LABEL_37;
  }

  HIBYTE(__dst[2]) = v23;
  v25 = __dst;
  if (v23)
  {
LABEL_37:
    memmove(v25, __src, v24);
  }

  *(v24 + v25) = 0;
  memset(&buf, 0, 24);
  if (prop::logfilter::get(__dst, &buf))
  {
    util::convert<BOOL>(&buf, &v244, 0);
  }

  if (SHIBYTE(buf.st_gid) < 0)
  {
    operator delete(*&buf.st_dev);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }
  }

  else if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(__dst[0]);
LABEL_42:
  v27 = xpc_dictionary_get_value(*a2, __src);
  *&buf.st_dev = v27;
  if (v27)
  {
    xpc_retain(v27);
  }

  else
  {
    *&buf.st_dev = xpc_null_create();
  }

  v244 = xpc::dyn_cast_or_default(&buf, v244);
  xpc_release(*&buf.st_dev);
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  v208 = v9;
  if ((IsInternalBuild & 1) != 0 || (IsInternalBuild = TelephonyUtilIsCarrierBuild(), IsInternalBuild))
  {
    CompressionMode = capabilities::trace::getCompressionMode(IsInternalBuild);
  }

  else
  {
    CompressionMode = 2;
  }

  v243 = 0;
  v30 = *MEMORY[0x29EDBD4A0];
  v31 = strlen(*MEMORY[0x29EDBD4A0]);
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
    __dst[2] = (v34 | 0x8000000000000000);
    __dst[0] = v33;
    __dst[1] = v32;
    goto LABEL_59;
  }

  HIBYTE(__dst[2]) = v31;
  v33 = __dst;
  if (v31)
  {
LABEL_59:
    memmove(v33, v30, v32);
  }

  *(v32 + v33) = 0;
  memset(&buf, 0, 24);
  if (prop::compression::get(__dst, &buf))
  {
    LODWORD(__s.__r_.__value_.__l.__data_) = -1431655766;
    if (util::convert<int>(&buf, &__s, 0))
    {
      CompressionMode = LODWORD(__s.__r_.__value_.__l.__data_);
    }

    else
    {
      CompressionMode = CompressionMode;
    }
  }

  if (SHIBYTE(buf.st_gid) < 0)
  {
    operator delete(*&buf.st_dev);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }
  }

  else if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

  operator delete(__dst[0]);
LABEL_66:
  v35 = *a2;
  v207 = *MEMORY[0x29EDBF7C0];
  v36 = xpc_dictionary_get_value(v35, v207);
  *&buf.st_dev = v36;
  if (v36)
  {
    xpc_retain(v36);
  }

  else
  {
    *&buf.st_dev = xpc_null_create();
  }

  v216 = xpc::dyn_cast_or_default(&buf, CompressionMode);
  xpc_release(*&buf.st_dev);
  if (v216)
  {
    v243 = 0;
    v37 = *MEMORY[0x29EDBD340];
    v38 = strlen(*MEMORY[0x29EDBD340]);
    if (v38 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v39 = v38;
    if (v38 >= 0x17)
    {
      if ((v38 | 7) == 0x17)
      {
        v41 = 25;
      }

      else
      {
        v41 = (v38 | 7) + 1;
      }

      v40 = operator new(v41);
      __dst[2] = (v41 | 0x8000000000000000);
      __dst[0] = v40;
      __dst[1] = v39;
    }

    else
    {
      HIBYTE(__dst[2]) = v38;
      v40 = __dst;
      if (!v38)
      {
LABEL_81:
        *(v39 + v40) = 0;
        memset(&buf, 0, 24);
        if (prop::compression::get(__dst, &buf))
        {
          util::convert<BOOL>(&buf, &v243, 0);
        }

        if (SHIBYTE(buf.st_gid) < 0)
        {
          operator delete(*&buf.st_dev);
          if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
          {
            goto LABEL_85;
          }
        }

        else if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
        {
LABEL_85:
          v42 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF508]);
          *&buf.st_dev = v42;
          if (v42)
          {
            xpc_retain(v42);
          }

          else
          {
            *&buf.st_dev = xpc_null_create();
          }

          v243 = xpc::dyn_cast_or_default(&buf, v243);
          xpc_release(*&buf.st_dev);
          goto LABEL_91;
        }

        operator delete(__dst[0]);
        goto LABEL_85;
      }
    }

    memmove(v40, v37, v39);
    goto LABEL_81;
  }

LABEL_91:
  v242 = 1;
  v43 = *MEMORY[0x29EDBF0A8];
  v44 = strlen(*MEMORY[0x29EDBF0A8]);
  if (v44 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v45 = v44;
  if (v44 >= 0x17)
  {
    if ((v44 | 7) == 0x17)
    {
      v47 = 25;
    }

    else
    {
      v47 = (v44 | 7) + 1;
    }

    v46 = operator new(v47);
    __dst[2] = (v47 | 0x8000000000000000);
    __dst[0] = v46;
    __dst[1] = v45;
    goto LABEL_99;
  }

  HIBYTE(__dst[2]) = v44;
  v46 = __dst;
  if (v44)
  {
LABEL_99:
    memmove(v46, v43, v45);
  }

  *(v45 + v46) = 0;
  memset(&buf, 0, 24);
  if (prop::systemlogs::get(__dst, &buf))
  {
    util::convert<BOOL>(&buf, &v242, 0);
  }

  if (SHIBYTE(buf.st_gid) < 0)
  {
    operator delete(*&buf.st_dev);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_104;
    }
  }

  else if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_104;
  }

  operator delete(__dst[0]);
LABEL_104:
  v48 = xpc_dictionary_get_value(*a2, v43);
  *&buf.st_dev = v48;
  if (v48)
  {
    xpc_retain(v48);
  }

  else
  {
    *&buf.st_dev = xpc_null_create();
  }

  v242 = xpc::dyn_cast_or_default(&buf, v242);
  xpc_release(*&buf.st_dev);
  size = HIBYTE(v245[0].__r_.__value_.__r.__words[2]);
  if ((v245[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v245[0].__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    std::string::__assign_external(v245, *MEMORY[0x29EDBE5C0]);
  }

  v50 = *MEMORY[0x29EDBE590];
  v51 = strlen(*MEMORY[0x29EDBE590]);
  if (v51 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v52 = v51;
  if (v51 >= 0x17)
  {
    v54 = v43;
    if ((v51 | 7) == 0x17)
    {
      v55 = 25;
    }

    else
    {
      v55 = (v51 | 7) + 1;
    }

    v53 = operator new(v55);
    __dst[2] = (v55 | 0x8000000000000000);
    __dst[0] = v53;
    __dst[1] = v52;
    v43 = v54;
    goto LABEL_121;
  }

  HIBYTE(__dst[2]) = v51;
  v53 = __dst;
  if (v51)
  {
LABEL_121:
    memmove(v53, v50, v52);
  }

  *(v52 + v53) = 0;
  memset(&buf, 0, 24);
  if (!prop::systemlogs::get(__dst, &buf))
  {
    data_low = 0;
    if ((SHIBYTE(buf.st_gid) & 0x80000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_129;
  }

  LODWORD(__s.__r_.__value_.__l.__data_) = -1431655766;
  if (util::convert<int>(&buf, &__s, 0))
  {
    data_low = LODWORD(__s.__r_.__value_.__l.__data_);
  }

  else
  {
    data_low = 0;
  }

  if (SHIBYTE(buf.st_gid) < 0)
  {
LABEL_129:
    operator delete(*&buf.st_dev);
  }

LABEL_130:
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  v57 = *a2;
  v206 = *MEMORY[0x29EDBE710];
  v58 = xpc_dictionary_get_value(v57, v206);
  *&buf.st_dev = v58;
  if (v58)
  {
    xpc_retain(v58);
  }

  else
  {
    *&buf.st_dev = xpc_null_create();
  }

  v59 = xpc::dyn_cast_or_default(&buf, data_low);
  v217 = a1;
  xpc_release(*&buf.st_dev);
  v205 = v43;
  if (TelephonyUtilIsInternalBuild() & 1) != 0 || ((IsCarrierBuild = TelephonyUtilIsCarrierBuild(), v59 != 2) ? (v61 = 1) : (v61 = IsCarrierBuild), (v61))
  {
    if (v59 == 2)
    {
      v62 = v217[25];
      if (v62)
      {
        v63 = v217[13];
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          abm::helper::asString();
          if ((buf.st_gid & 0x80000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = *&buf.st_dev;
          }

          LODWORD(__dst[0]) = 136315138;
          *(__dst + 4) = p_buf;
          _os_log_impl(&dword_297476000, v63, OS_LOG_TYPE_DEFAULT, "#I Detected a log dump with sysdiagnose mode, overriding compression mode to %s", __dst, 0xCu);
          if (SHIBYTE(buf.st_gid) < 0)
          {
            operator delete(*&buf.st_dev);
          }

          v62 = v217[25];
        }

        BBLogTracker::addLog(v62, v247, 2, __s1);
        v65 = v217[25];
        if (v65[2] >= 0xB)
        {
          do
          {
            std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::erase(v65, *v65);
          }

          while (v65[2] > 0xA);
        }

        v216 = 0;
      }

      v59 = 2;
    }
  }

  else
  {
    v66 = v217[13];
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.st_dev) = 0;
      _os_log_error_impl(&dword_297476000, v66, OS_LOG_TYPE_ERROR, "Detected a log dump with SYSDIAGNOSE mode in customer build, overriding to OFF", &buf, 2u);
    }

    v59 = 0;
  }

  memset(__dst, 170, 24);
  v67 = *MEMORY[0x29EDBFC08];
  v68 = strlen(*MEMORY[0x29EDBFC08]);
  if (v68 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v69 = v68;
  if (v68 >= 0x17)
  {
    if ((v68 | 7) == 0x17)
    {
      v71 = 25;
    }

    else
    {
      v71 = (v68 | 7) + 1;
    }

    v70 = operator new(v71);
    __dst[2] = (v71 | 0x8000000000000000);
    __dst[0] = v70;
    __dst[1] = v69;
LABEL_165:
    memmove(v70, v67, v69);
    *(v69 + v70) = 0;
    if (!v216)
    {
      goto LABEL_212;
    }

    goto LABEL_166;
  }

  HIBYTE(__dst[2]) = v68;
  v70 = __dst;
  if (v68)
  {
    goto LABEL_165;
  }

  LOBYTE(__dst[0]) = 0;
  if (!v216)
  {
    goto LABEL_212;
  }

LABEL_166:
  v72 = *MEMORY[0x29EDBFC20];
  v73 = strlen(*MEMORY[0x29EDBFC20]);
  v74 = SHIBYTE(v247[2]);
  if (SHIBYTE(v247[2]) >= 0)
  {
    v75 = HIBYTE(v247[2]);
  }

  else
  {
    v75 = v247[1];
  }

  v76 = v75 + v73;
  if (v75 + v73 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v77 = v73;
  if (v76 <= 0x16)
  {
    memset(&buf, 0, 24);
    v81 = &buf;
    HIBYTE(buf.st_gid) = v75 + v73;
    if (!v73)
    {
      goto LABEL_178;
    }

    goto LABEL_177;
  }

  v78 = v59;
  v79 = v12;
  if ((v76 | 7) == 0x17)
  {
    v80 = 25;
  }

  else
  {
    v80 = (v76 | 7) + 1;
  }

  v81 = operator new(v80);
  buf.st_ino = v76;
  *&buf.st_uid = v80 | 0x8000000000000000;
  *&buf.st_dev = v81;
  v12 = v79;
  v59 = v78;
  if (v77)
  {
LABEL_177:
    memcpy(v81, v72, v77);
  }

LABEL_178:
  v82 = v81 + v77;
  if (v75)
  {
    if (v74 >= 0)
    {
      v83 = v247;
    }

    else
    {
      v83 = v247[0];
    }

    memmove(v82, v83, v75);
  }

  v82[v75] = 0;
  st_gid_high = SHIBYTE(buf.st_gid);
  if ((SHIBYTE(buf.st_gid) & 0x8000000000000000) != 0)
  {
    v86 = v12;
    st_gid_high = buf.st_ino;
    v88 = *&buf.st_uid & 0x7FFFFFFFFFFFFFFFLL;
    v87 = (*&buf.st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v87 == buf.st_ino)
    {
      if (v88 == 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v85 = *&buf.st_dev;
      if (v87 >= 0x3FFFFFFFFFFFFFF3)
      {
        v92 = 0;
        v91 = 0x7FFFFFFFFFFFFFF7;
LABEL_198:
        v93 = operator new(v91);
        v94 = v93;
        if (v87)
        {
          memmove(v93, v85, v87);
        }

        v94[v87] = 47;
        if (!v92)
        {
          operator delete(v85);
        }

        buf.st_ino = v88;
        *&buf.st_uid = v91 | 0x8000000000000000;
        *&buf.st_dev = v94;
        v95 = &v94[v88];
        v12 = v86;
        goto LABEL_208;
      }

LABEL_189:
      v89 = 2 * v87;
      if (v88 > 2 * v87)
      {
        v89 = v88;
      }

      if ((v89 | 7) == 0x17)
      {
        v90 = 25;
      }

      else
      {
        v90 = (v89 | 7) + 1;
      }

      if (v89 >= 0x17)
      {
        v91 = v90;
      }

      else
      {
        v91 = 23;
      }

      v92 = v87 == 22;
      goto LABEL_198;
    }

    v85 = *&buf.st_dev;
    v12 = v86;
  }

  else
  {
    v85 = &buf;
    if (SHIBYTE(buf.st_gid) == 22)
    {
      v86 = v12;
      v87 = 22;
      v88 = 23;
      goto LABEL_189;
    }
  }

  *(&v85->st_dev + st_gid_high) = 47;
  v96 = st_gid_high + 1;
  if (SHIBYTE(buf.st_gid) < 0)
  {
    buf.st_ino = v96;
  }

  else
  {
    HIBYTE(buf.st_gid) = v96 & 0x7F;
  }

  v95 = v85 + v96;
LABEL_208:
  *v95 = 0;
  v97 = *&buf.st_dev;
  __s.__r_.__value_.__r.__words[0] = buf.st_ino;
  *(__s.__r_.__value_.__r.__words + 7) = *(&buf.st_ino + 7);
  v98 = HIBYTE(buf.st_gid);
  memset(&buf, 0, 24);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
    __dst[0] = v97;
    __dst[1] = __s.__r_.__value_.__l.__data_;
    *(&__dst[1] + 7) = *(__s.__r_.__value_.__r.__words + 7);
    HIBYTE(__dst[2]) = v98;
    if (SHIBYTE(buf.st_gid) < 0)
    {
      operator delete(*&buf.st_dev);
    }
  }

  else
  {
    __dst[0] = v97;
    __dst[1] = __s.__r_.__value_.__l.__data_;
    *(&__dst[1] + 7) = *(__s.__r_.__value_.__r.__words + 7);
    HIBYTE(__dst[2]) = v98;
  }

LABEL_212:
  support::fs::createDir(__dst, 0x1EDu, 1);
  v99 = strlen(v12);
  if ((__s1[23] & 0x8000000000000000) == 0)
  {
    if (v99 != __s1[23] || memcmp(__s1, v12, v99))
    {
      goto LABEL_226;
    }

    goto LABEL_219;
  }

  if (v99 == *&__s1[8])
  {
    if (v99 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (!memcmp(*__s1, v12, v99))
    {
LABEL_219:
      v241 = 9;
      strcpy(__p, "StateDump");
      if (SHIBYTE(v245[0].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v239, v245[0].__r_.__value_.__l.__data_, v245[0].__r_.__value_.__l.__size_);
      }

      else
      {
        v239 = v245[0];
      }

      TraceManager::submitTraceMetric_sync(v217, __p, &v239);
      if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v239.__r_.__value_.__l.__data_);
      }

      if (v241 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_226:
  memset(&__s, 0, sizeof(__s));
  TraceFilter::determineFilterAction(&__s);
  v100 = *MEMORY[0x29EDBECB0];
  v101 = strlen(*MEMORY[0x29EDBECB0]);
  if (v101 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v102 = v101;
  if (v101 >= 0x17)
  {
    if ((v101 | 7) == 0x17)
    {
      v104 = 25;
    }

    else
    {
      v104 = (v101 | 7) + 1;
    }

    v103 = operator new(v104);
    buf.st_ino = v102;
    *&buf.st_uid = v104 | 0x8000000000000000;
    *&buf.st_dev = v103;
    goto LABEL_234;
  }

  HIBYTE(buf.st_gid) = v101;
  v103 = &buf;
  if (v101)
  {
LABEL_234:
    memmove(v103, v100, v102);
  }

  *(&v103->st_dev + v102) = 0;
  v105 = SHIBYTE(buf.st_gid);
  v106 = *&buf.st_dev;
  if ((buf.st_gid & 0x80000000) == 0)
  {
    v107 = &buf;
  }

  else
  {
    v107 = *&buf.st_dev;
  }

  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_s = &__s;
  }

  else
  {
    p_s = __s.__r_.__value_.__r.__words[0];
  }

  v109 = strlen(v100);
  v110 = strncasecmp(v107, p_s, v109);
  v111 = v110;
  if (v105 < 0)
  {
    operator delete(v106);
    if (v111)
    {
LABEL_243:
      v112 = SHIBYTE(v245[0].__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v245[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v112 = v245[0].__r_.__value_.__l.__size_;
        v115 = (v245[0].__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v115 - v245[0].__r_.__value_.__l.__size_ < 0x3B)
        {
          v113 = v245[0].__r_.__value_.__l.__size_ + 59;
          if (0x7FFFFFFFFFFFFFF7 - (v245[0].__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v245[0].__r_.__value_.__l.__size_ + 59 - v115)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v114 = v245[0].__r_.__value_.__r.__words[0];
          if (v115 >= 0x3FFFFFFFFFFFFFF3)
          {
            v152 = 0;
            v151 = 0x7FFFFFFFFFFFFFF7;
LABEL_314:
            v153 = operator new(v151);
            v154 = v153;
            if (v112)
            {
              memmove(v153, v114, v112);
            }

            qmemcpy((v154 + v112), " (some logs are dropped due to not enough space on device!)", 59);
            if (!v152)
            {
              operator delete(v114);
            }

            v245[0].__r_.__value_.__l.__size_ = v113;
            v245[0].__r_.__value_.__r.__words[2] = v151 | 0x8000000000000000;
            v245[0].__r_.__value_.__r.__words[0] = v154;
            v155 = (v154 + v113);
LABEL_443:
            *v155 = 0;
            v116 = v217[13];
            if (!os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_251;
            }

            goto LABEL_248;
          }

LABEL_305:
          v149 = 2 * v115;
          if (v113 > 2 * v115)
          {
            v149 = v113;
          }

          if ((v149 | 7) == 0x17)
          {
            v150 = 25;
          }

          else
          {
            v150 = (v149 | 7) + 1;
          }

          if (v149 >= 0x17)
          {
            v151 = v150;
          }

          else
          {
            v151 = 23;
          }

          v152 = v115 == 22;
          goto LABEL_314;
        }

        v156 = v245[0].__r_.__value_.__r.__words[0];
        qmemcpy((v245[0].__r_.__value_.__r.__words[0] + v245[0].__r_.__value_.__l.__size_), " (some logs are dropped due to not enough space on device!)", 59);
        v157 = v112 + 59;
        v245[0].__r_.__value_.__l.__size_ = v112 + 59;
      }

      else
      {
        if (SHIBYTE(v245[0].__r_.__value_.__r.__words[2]) < 0x17)
        {
          v113 = SHIBYTE(v245[0].__r_.__value_.__r.__words[2]) + 59;
          v114 = v245;
          v115 = 22;
          goto LABEL_305;
        }

        v156 = v245;
        qmemcpy(v245 + SHIBYTE(v245[0].__r_.__value_.__r.__words[2]), " (some logs are dropped due to not enough space on device!)", 59);
        v157 = v112 + 59;
        *(&v245[0].__r_.__value_.__s + 23) = (v112 + 59) & 0x7F;
      }

      v155 = v156 + v157;
      goto LABEL_443;
    }
  }

  else if (v110)
  {
    goto LABEL_243;
  }

  v116 = v217[13];
  if (!os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_251;
  }

LABEL_248:
  v117 = &__s;
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v117 = __s.__r_.__value_.__r.__words[0];
  }

  buf.st_dev = 136315138;
  *&buf.st_mode = v117;
  _os_log_impl(&dword_297476000, v116, OS_LOG_TYPE_DEFAULT, "#I Trace filter '%s'", &buf, 0xCu);
LABEL_251:
  cf = 0;
  v118 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v121 = Mutable;
  if (Mutable)
  {
    cf = Mutable;
  }

  if (SHIBYTE(v245[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, v245[0].__r_.__value_.__l.__data_, v245[0].__r_.__value_.__l.__size_);
  }

  else
  {
    *&buf.st_dev = *&v245[0].__r_.__value_.__l.__data_;
    *&buf.st_uid = *(&v245[0].__r_.__value_.__l + 2);
  }

  ctu::cf::insert<char const*,std::string>(v121, v213, &buf, v118, v120);
  if (SHIBYTE(buf.st_gid) < 0)
  {
    operator delete(*&buf.st_dev);
    if ((SHIBYTE(v247[2]) & 0x80000000) == 0)
    {
      goto LABEL_258;
    }
  }

  else if ((SHIBYTE(v247[2]) & 0x80000000) == 0)
  {
LABEL_258:
    *&buf.st_dev = *v247;
    *&buf.st_uid = v247[2];
    goto LABEL_261;
  }

  std::string::__init_copy_ctor_external(&buf, v247[0], v247[1]);
LABEL_261:
  ctu::cf::insert<char const*,std::string>(v121, v214, &buf, v118, v122);
  if (SHIBYTE(buf.st_gid) < 0)
  {
    operator delete(*&buf.st_dev);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_263;
    }
  }

  else if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
LABEL_263:
    *&buf.st_dev = *__dst;
    *&buf.st_uid = __dst[2];
    goto LABEL_266;
  }

  std::string::__init_copy_ctor_external(&buf, __dst[0], __dst[1]);
LABEL_266:
  ctu::cf::insert<char const*,std::string>(v121, *MEMORY[0x29EDBEC90], &buf, v118, v123);
  if (SHIBYTE(buf.st_gid) < 0)
  {
    operator delete(*&buf.st_dev);
    if ((__s1[23] & 0x80000000) == 0)
    {
      goto LABEL_268;
    }
  }

  else if ((__s1[23] & 0x80000000) == 0)
  {
LABEL_268:
    *&buf.st_dev = *__s1;
    *&buf.st_uid = *&__s1[16];
    goto LABEL_271;
  }

  std::string::__init_copy_ctor_external(&buf, *__s1, *&__s1[8]);
LABEL_271:
  ctu::cf::insert<char const*,std::string>(v121, v208, &buf, v118, v124);
  if (SHIBYTE(buf.st_gid) < 0)
  {
    operator delete(*&buf.st_dev);
    if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_273;
    }
  }

  else if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_273:
    *&buf.st_dev = *&__s.__r_.__value_.__l.__data_;
    *&buf.st_uid = *(&__s.__r_.__value_.__l + 2);
    goto LABEL_276;
  }

  std::string::__init_copy_ctor_external(&buf, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
LABEL_276:
  ctu::cf::insert<char const*,std::string>(v121, *MEMORY[0x29EDBEB18], &buf, v118, v125);
  if (SHIBYTE(buf.st_gid) < 0)
  {
    operator delete(*&buf.st_dev);
    if ((SHIBYTE(v246[2]) & 0x80000000) == 0)
    {
      goto LABEL_278;
    }
  }

  else if ((SHIBYTE(v246[2]) & 0x80000000) == 0)
  {
LABEL_278:
    *&buf.st_dev = *v246;
    *&buf.st_uid = v246[2];
    goto LABEL_281;
  }

  std::string::__init_copy_ctor_external(&buf, v246[0], v246[1]);
LABEL_281:
  ctu::cf::insert<char const*,std::string>(v121, v210, &buf, v118, v126);
  if (SHIBYTE(buf.st_gid) < 0)
  {
    operator delete(*&buf.st_dev);
    if ((SHIBYTE(v245[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_283;
    }
  }

  else if ((SHIBYTE(v245[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_283:
    *&buf.st_dev = *&v245[1].__r_.__value_.__l.__data_;
    *&buf.st_uid = *(&v245[1].__r_.__value_.__l + 2);
    goto LABEL_286;
  }

  std::string::__init_copy_ctor_external(&buf, v245[1].__r_.__value_.__l.__data_, v245[1].__r_.__value_.__l.__size_);
LABEL_286:
  ctu::cf::insert<char const*,std::string>(v121, v212, &buf, v118, v127);
  if (SHIBYTE(buf.st_gid) < 0)
  {
    operator delete(*&buf.st_dev);
  }

  ctu::cf::insert<char const*,int>(v121, v211, v209, v118, v128);
  ctu::cf::insert<char const*,int>(v121, v207, v216, v118, v129);
  ctu::cf::insert<char const*,BOOL>(v121, *MEMORY[0x29EDBF508], v243, v118, v130);
  ctu::cf::insert<char const*,int>(v121, v206, v59, v118, v131);
  ctu::cf::insert<char const*,BOOL>(v121, v205, v242, v118, v132);
  v133 = *MEMORY[0x29EDBED80];
  v134 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBED80]);
  *&buf.st_dev = v134;
  if (v134)
  {
    xpc_retain(v134);
  }

  else
  {
    *&buf.st_dev = xpc_null_create();
  }

  v135 = xpc::dyn_cast_or_default(&buf, 0);
  ctu::cf::insert<char const*,BOOL>(v121, v133, v135, v118, v136);
  xpc_release(*&buf.st_dev);
  v137 = *MEMORY[0x29EDBED98];
  v138 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBED98]);
  *&buf.st_dev = v138;
  if (v138)
  {
    xpc_retain(v138);
  }

  else
  {
    *&buf.st_dev = xpc_null_create();
  }

  v139 = xpc::dyn_cast_or_default(&buf, 0);
  ctu::cf::insert<char const*,BOOL>(v121, v137, v139, v118, v140);
  xpc_release(*&buf.st_dev);
  v141 = *MEMORY[0x29EDBED90];
  v142 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBED90]);
  *&buf.st_dev = v142;
  if (v142)
  {
    xpc_retain(v142);
  }

  else
  {
    *&buf.st_dev = xpc_null_create();
  }

  v143 = xpc::dyn_cast_or_default(&buf, 0);
  ctu::cf::insert<char const*,BOOL>(v121, v141, v143, v118, v144);
  xpc_release(*&buf.st_dev);
  ctu::cf::insert<char const*,BOOL>(v121, __src, v244, v118, v145);
  v236 = 0xAAAAAAAAAAAAAAAALL;
  v237 = 0xAAAAAAAAAAAAAAAALL;
  abm::HelperClient::create(&v236, "tracing.helper", v146);
  v147 = xpc_dictionary_create(0, 0, 0);
  if (v147 || (v147 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v147) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v147);
      v148 = v147;
    }

    else
    {
      v148 = xpc_null_create();
    }
  }

  else
  {
    v148 = xpc_null_create();
    v147 = 0;
  }

  xpc_release(v147);
  v235 = 0xAAAAAAAAAAAAAAAALL;
  v158 = xpc_dictionary_create(0, 0, 0);
  v159 = v158;
  if (v158)
  {
    v235 = v158;
  }

  else
  {
    v159 = xpc_null_create();
    v235 = v159;
    if (!v159)
    {
      v160 = xpc_null_create();
      v159 = 0;
      goto LABEL_328;
    }
  }

  if (MEMORY[0x29C272BA0](v159) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v159);
    goto LABEL_329;
  }

  v160 = xpc_null_create();
LABEL_328:
  v235 = v160;
LABEL_329:
  xpc_release(v159);
  v161 = xpc_int64_create(1500);
  if (!v161)
  {
    v161 = xpc_null_create();
  }

  xpc_dictionary_set_value(v148, *MEMORY[0x29EDBD2D8], v161);
  v162 = xpc_null_create();
  xpc_release(v161);
  xpc_release(v162);
  if (prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], v163) || prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v164) || prop::tracesettings::enabled(*MEMORY[0x29EDBE690], v165))
  {
    v166 = MEMORY[0x29EDBFC48];
    v167 = *MEMORY[0x29EDBFC48];
    v168 = strlen(*MEMORY[0x29EDBFC48]);
    if (v168 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v169 = v168;
    if (v168 >= 0x17)
    {
      if ((v168 | 7) == 0x17)
      {
        v171 = 25;
      }

      else
      {
        v171 = (v168 | 7) + 1;
      }

      v170 = operator new(v171);
      v233 = v169;
      v234 = v171 | 0x8000000000000000;
      v232 = v170;
    }

    else
    {
      HIBYTE(v234) = v168;
      v170 = &v232;
      if (!v168)
      {
LABEL_343:
        *(v170 + v169) = 0;
        v172.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v172.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *&buf.st_blksize = v172;
        *buf.st_qspare = v172;
        buf.st_birthtimespec = v172;
        *&buf.st_size = v172;
        buf.st_mtimespec = v172;
        buf.st_ctimespec = v172;
        *&buf.st_uid = v172;
        buf.st_atimespec = v172;
        *&buf.st_dev = v172;
        if (v234 >= 0)
        {
          v173 = &v232;
        }

        else
        {
          v173 = v232;
        }

        v174 = stat(v173, &buf);
        if (SHIBYTE(v234) < 0)
        {
          v177 = v174;
          operator delete(v232);
          if (v177)
          {
            goto LABEL_348;
          }
        }

        else if (v174)
        {
LABEL_348:
          *&v176 = 0xAAAAAAAAAAAAAAAALL;
          *(&v176 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&buf.st_dev = v176;
          *&buf.st_uid = v176;
          v231 = v148;
          if (v148)
          {
            xpc_retain(v148);
          }

          else
          {
            v231 = xpc_null_create();
          }

          v179 = *MEMORY[0x29EDBD358];
          abm::HelperClient::perform();
          xpc_release(v231);
          v231 = 0;
          if (!buf.st_dev)
          {
            v178 = ctu::cf::insert<char const*,char const*>(cf, *MEMORY[0x29EDBF868], *v166, v118, v180);
          }

          if (*(&buf.st_rdev + 7) < 0)
          {
            operator delete(buf.st_ino);
          }

          goto LABEL_359;
        }

        v178 = ctu::cf::insert<char const*,char const*>(cf, *MEMORY[0x29EDBF868], *v166, v118, v175);
        goto LABEL_359;
      }
    }

    memmove(v170, v167, v169);
    goto LABEL_343;
  }

  v181 = v217[13];
  v178 = os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT);
  if (v178)
  {
    LOWORD(buf.st_dev) = 0;
    _os_log_impl(&dword_297476000, v181, OS_LOG_TYPE_DEFAULT, "#I mobile BasebandServices path is disabled as baseband log is off", &buf, 2u);
  }

LABEL_359:
  if (capabilities::radio::dal(v178))
  {
    v232 = 0xAAAAAAAAAAAAAAAALL;
    v233 = 0xAAAAAAAAAAAAAAAALL;
    (*(*v217 + 88))(&v232);
    v182 = v232;
    if (v232)
    {
      v183 = operator new(0x28uLL);
      strcpy(v183, "com.apple.Baseband.Logging.Snapshot");
      v184 = v182[6];
      std::string::__init_copy_ctor_external(&buf, v183, 0x23uLL);
      (*(*v184 + 24))(&v230, v184, &buf, 300000);
      if (SHIBYTE(buf.st_gid) < 0)
      {
        operator delete(*&buf.st_dev);
      }

      if (v230)
      {
        dispatch_release(v230);
      }

      operator delete(v183);
    }

    v185 = v233;
    if (v233 && !atomic_fetch_add((v233 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v185->__on_zero_shared)(v185);
      std::__shared_weak_count::__release_weak(v185);
    }
  }

  v186 = v217[10];
  *&buf.st_dev = v217[9];
  if (!v186 || (buf.st_ino = std::__shared_weak_count::lock(v186)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v187 = *MEMORY[0x29EDBEFF0];
  v188 = strlen(*MEMORY[0x29EDBEFF0]);
  if (v188 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v189 = v188;
  if (v188 >= 0x17)
  {
    if ((v188 | 7) == 0x17)
    {
      v192 = 25;
    }

    else
    {
      v192 = (v188 | 7) + 1;
    }

    v190 = operator new(v192);
    v228[1] = v189;
    v229 = v192 | 0x8000000000000000;
    v228[0] = v190;
LABEL_380:
    memmove(v190, v187, v189);
    *(v189 + v190) = 0;
    v191 = cf;
    if (!cf)
    {
      goto LABEL_383;
    }

    goto LABEL_381;
  }

  HIBYTE(v229) = v188;
  v190 = v228;
  if (v188)
  {
    goto LABEL_380;
  }

  LOBYTE(v228[0]) = 0;
  v191 = cf;
  if (!cf)
  {
    goto LABEL_383;
  }

LABEL_381:
  v193 = CFGetTypeID(v191);
  if (v193 == CFDictionaryGetTypeID())
  {
    v227 = v191;
    CFRetain(v191);
    goto LABEL_384;
  }

LABEL_383:
  v227 = 0;
LABEL_384:
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN12TraceManager16collectLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_56_0;
  aBlock[4] = v217;
  aBlock[5] = *&buf.st_dev;
  st_ino = buf.st_ino;
  if (buf.st_ino)
  {
    atomic_fetch_add_explicit((buf.st_ino + 8), 1uLL, memory_order_relaxed);
  }

  v220 = v236;
  v221 = v237;
  if (v237)
  {
    atomic_fetch_add_explicit((v237 + 8), 1uLL, memory_order_relaxed);
  }

  v222 = v148;
  if (!v148)
  {
    v222 = xpc_null_create();
    v223 = v191;
    if (!v191)
    {
      goto LABEL_393;
    }

    goto LABEL_392;
  }

  xpc_retain(v148);
  v191 = cf;
  v223 = cf;
  if (cf)
  {
LABEL_392:
    CFRetain(v191);
  }

LABEL_393:
  v194 = *v204;
  if (*v204)
  {
    v194 = _Block_copy(v194);
  }

  v224 = v194;
  if (SHIBYTE(v245[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v225, v245[0].__r_.__value_.__l.__data_, v245[0].__r_.__value_.__l.__size_);
  }

  else
  {
    v225 = v245[0];
  }

  v195 = v217;
  v226 = _Block_copy(aBlock);
  Service::broadcastEvent(v195, v228, &v227, &v226);
  if (v226)
  {
    _Block_release(v226);
  }

  if (v227)
  {
    CFRelease(v227);
  }

  if ((SHIBYTE(v229) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v225.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_404;
    }

LABEL_407:
    operator delete(v225.__r_.__value_.__l.__data_);
    v196 = v224;
    if (!v224)
    {
      goto LABEL_409;
    }

    goto LABEL_408;
  }

  operator delete(v228[0]);
  if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_407;
  }

LABEL_404:
  v196 = v224;
  if (v224)
  {
LABEL_408:
    _Block_release(v196);
  }

LABEL_409:
  if (v223)
  {
    CFRelease(v223);
  }

  xpc_release(v222);
  v222 = 0;
  v197 = v221;
  if (v221 && !atomic_fetch_add(&v221->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v197->__on_zero_shared)(v197);
    std::__shared_weak_count::__release_weak(v197);
  }

  v198 = st_ino;
  if (st_ino && !atomic_fetch_add((st_ino + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v198->__on_zero_shared)(v198);
    std::__shared_weak_count::__release_weak(v198);
  }

  v199 = buf.st_ino;
  if (buf.st_ino && !atomic_fetch_add((buf.st_ino + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v199->__on_zero_shared)(v199);
    std::__shared_weak_count::__release_weak(v199);
  }

  xpc_release(v235);
  xpc_release(v148);
  v200 = v237;
  if (!v237 || atomic_fetch_add((v237 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v201 = cf;
    if (!cf)
    {
      goto LABEL_424;
    }

    goto LABEL_423;
  }

  (v200->__on_zero_shared)(v200);
  std::__shared_weak_count::__release_weak(v200);
  v201 = cf;
  if (cf)
  {
LABEL_423:
    CFRelease(v201);
  }

LABEL_424:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
LABEL_426:
      if ((SHIBYTE(v245[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_427;
      }

      goto LABEL_434;
    }
  }

  else if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_426;
  }

  operator delete(__dst[0]);
  if ((SHIBYTE(v245[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_427:
    if ((SHIBYTE(v245[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_428;
    }

    goto LABEL_435;
  }

LABEL_434:
  operator delete(v245[0].__r_.__value_.__l.__data_);
  if ((SHIBYTE(v245[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_428:
    if ((SHIBYTE(v246[2]) & 0x80000000) == 0)
    {
      goto LABEL_429;
    }

    goto LABEL_436;
  }

LABEL_435:
  operator delete(v245[1].__r_.__value_.__l.__data_);
  if ((SHIBYTE(v246[2]) & 0x80000000) == 0)
  {
LABEL_429:
    if ((SHIBYTE(v247[2]) & 0x80000000) == 0)
    {
      goto LABEL_430;
    }

LABEL_437:
    operator delete(v247[0]);
    if ((__s1[23] & 0x80000000) == 0)
    {
      goto LABEL_431;
    }

    goto LABEL_438;
  }

LABEL_436:
  operator delete(v246[0]);
  if (SHIBYTE(v247[2]) < 0)
  {
    goto LABEL_437;
  }

LABEL_430:
  if ((__s1[23] & 0x80000000) == 0)
  {
    goto LABEL_431;
  }

LABEL_438:
  operator delete(*__s1);
  v203 = *MEMORY[0x29EDCA608];
}

void sub_2974E2E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, xpc_object_t a33, uint64_t a34, void *aBlock, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, xpc_object_t a45, void *a46, uint64_t a47, uint64_t a48, xpc_object_t object, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (a69 < 0)
  {
    operator delete(a64);
  }

  if (a72 < 0)
  {
    operator delete(a70);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_40c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE48c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = *(a2 + 48);
    *(a1 + 40) = v5;
    *(a1 + 48) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 40) = 0;
    *(a1 + 48) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  result = xpc_null_create();
  *(a1 + 48) = result;
  return result;
}

void __destroy_helper_block_e8_40c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE48c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    _Block_release(v2);
  }
}

void ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_41(void *a1, void **a2, void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      return;
    }
  }

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_2_42;
  v13[3] = &__block_descriptor_tmp_47_0;
  v11 = *a2;
  v13[4] = v7;
  object = v11;
  if (v11)
  {
    xpc_retain(v11);
    v12 = *a3;
    if (!*a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  object = xpc_null_create();
  v12 = *a3;
  if (*a3)
  {
LABEL_11:
    v12 = _Block_copy(v12);
  }

LABEL_12:
  aBlock = v12;
  ctu::SharedSynchronizable<TraceManager>::execute_wrapped((v7 + 72), v13);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(object);
}

void ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_2_42(uint64_t a1)
{
  v36 = *MEMORY[0x29EDCA608];
  memset(&v33, 170, sizeof(v33));
  v2 = *(a1 + 32);
  value = xpc_dictionary_get_value(*(a1 + 40), *MEMORY[0x29EDBE598]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  memset(buf, 0, sizeof(buf));
  v35 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(object);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    v31 = v33;
  }

  isSupported = abm::trace::isSupported();
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = isSupported;
    operator delete(v31.__r_.__value_.__l.__data_);
    if (v7)
    {
      goto LABEL_9;
    }
  }

  else if (isSupported)
  {
LABEL_9:
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v5 || (v5 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C272BA0](v5) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v5);
        v6 = v5;
      }

      else
      {
        v6 = xpc_null_create();
      }
    }

    else
    {
      v6 = xpc_null_create();
      v5 = 0;
    }

    xpc_release(v5);
    v12 = xpc_int64_create(10000);
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    xpc_dictionary_set_value(v6, *MEMORY[0x29EDBD2D8], v12);
    v13 = xpc_null_create();
    xpc_release(v12);
    xpc_release(v13);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v33;
    }

    else
    {
      v14 = v33.__r_.__value_.__r.__words[0];
    }

    v15 = xpc_string_create(v14);
    if (!v15)
    {
      v15 = xpc_null_create();
    }

    xpc_dictionary_set_value(v6, *MEMORY[0x29EDBD2F0], v15);
    v16 = xpc_null_create();
    xpc_release(v15);
    xpc_release(v16);
    memset(buf, 170, sizeof(buf));
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_43;
    aBlock[3] = &__block_descriptor_tmp_44_0;
    v17 = *(a1 + 48);
    if (v17)
    {
      v17 = _Block_copy(v17);
    }

    v30 = v17;
    v18 = _Block_copy(aBlock);
    v19 = *(v2 + 88);
    if (v19)
    {
      dispatch_retain(*(v2 + 88));
    }

    *buf = v18;
    *&buf[8] = v19;
    v28 = v6;
    if (v6)
    {
      xpc_retain(v6);
      v18 = *buf;
      v27 = 0;
      if (*buf)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v27 = 0;
      v28 = xpc_null_create();
      if (v18)
      {
LABEL_31:
        v20 = _Block_copy(v18);
        v21 = *MEMORY[0x29EDBD368];
        v22 = *&buf[8];
        v25 = v20;
        v26 = *&buf[8];
        if (!*&buf[8])
        {
LABEL_33:
          TraceManager::runOnHelper_sync(v2, 9, v21, 0, 1, &v28, &v27, &v25);
          if (v22)
          {
            dispatch_release(v22);
          }

          if (v20)
          {
            _Block_release(v20);
          }

          xpc_release(v28);
          v28 = 0;
          if (v22)
          {
            dispatch_release(v22);
          }

          if (v18)
          {
            _Block_release(v18);
          }

          if (v30)
          {
            _Block_release(v30);
          }

          xpc_release(v6);
          goto LABEL_44;
        }

LABEL_32:
        dispatch_retain(v22);
        goto LABEL_33;
      }
    }

    v20 = 0;
    v21 = *MEMORY[0x29EDBD368];
    v22 = *&buf[8];
    v25 = 0;
    v26 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v8 = *(v2 + 104);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v24 = &v33;
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v33.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    *&buf[4] = v24;
    _os_log_error_impl(&dword_297476000, v8, OS_LOG_TYPE_ERROR, "Trace not supported: %s", buf, 0xCu);
  }

  v9 = xpc_null_create();
  v10 = *(a1 + 48);
  *buf = v9;
  v11 = xpc_null_create();
  (*(v10 + 16))(v10, 3760250884, buf);
  xpc_release(*buf);
  xpc_release(v11);
LABEL_44:
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v23 = *MEMORY[0x29EDCA608];
}

void sub_2974E3A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *aBlock, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, xpc_object_t a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_43(uint64_t a1, _DWORD *a2)
{
  if (*a2)
  {
    v3 = xpc_null_create();
    v4 = *(a1 + 32);
    object = v3;
    v5 = xpc_null_create();
    (*(v4 + 16))(v4, 3760250880, &object);
  }

  else
  {
    v6 = xpc_null_create();
    v7 = *(a1 + 32);
    object = v6;
    v5 = xpc_null_create();
    (*(v7 + 16))(v7, 0, &object);
  }

  xpc_release(object);
  xpc_release(v5);
}

void sub_2974E3C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void TraceManager::submitTraceMetric_sync(uint64_t a1, const char *a2, const char *a3)
{
  v6 = *(a1 + 104);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Submitting AWD of trace stats", buf, 2u);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = MEMORY[0x29EDCAA00];
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v7) == v8)
    {
      xpc_retain(v7);
      v9 = v7;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  v10 = xpc_dictionary_create(0, 0, 0);
  if (v10 || (v10 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v10) == v8)
    {
      xpc_retain(v10);
      v11 = v10;
    }

    else
    {
      v11 = xpc_null_create();
    }
  }

  else
  {
    v11 = xpc_null_create();
    v10 = 0;
  }

  xpc_release(v10);
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v12 = xpc_string_create(a2);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBED68], v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  v14 = xpc_string_create(a3);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBF010], v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  v16 = xpc_string_create(*MEMORY[0x29EDBF880]);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, *MEMORY[0x29EDBE588], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = xpc_int64_create(524539);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, *MEMORY[0x29EDBE660], v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  if (v11)
  {
    xpc_retain(v11);
    v20 = v11;
  }

  else
  {
    v20 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, *MEMORY[0x29EDBE580], v20);
  v21 = xpc_null_create();
  xpc_release(v20);
  xpc_release(v21);
  v22 = *MEMORY[0x29EDBEBD0];
  v23 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v23 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v24 = v23;
  if (v23 >= 0x17)
  {
    if ((v23 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v23 | 7) + 1;
    }

    v25 = operator new(v26);
    v30 = v24;
    v31 = v26 | 0x8000000000000000;
    *buf = v25;
LABEL_39:
    memmove(v25, v22, v24);
    *(v25 + v24) = 0;
    object = v9;
    if (v9)
    {
      goto LABEL_34;
    }

    goto LABEL_40;
  }

  HIBYTE(v31) = v23;
  v25 = buf;
  if (v23)
  {
    goto LABEL_39;
  }

  buf[0] = 0;
  object = v9;
  if (v9)
  {
LABEL_34:
    xpc_retain(v9);
    goto LABEL_41;
  }

LABEL_40:
  object = xpc_null_create();
LABEL_41:
  v27 = 0;
  Service::runCommand(a1, buf, &object, &v27);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v11);
  xpc_release(v9);
}

void sub_2974E4110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v17);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

uint64_t ___ZN12TraceManager16collectLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v21 = *(a1 + 56);
  v22 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 72);
  object = v4;
  if (!v4)
  {
    object = xpc_null_create();
    v5 = *(a1 + 80);
    v24 = v2;
    v25 = v5;
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  xpc_retain(v4);
  v5 = *(a1 + 80);
  v24 = v2;
  v25 = v5;
  if (v5)
  {
LABEL_7:
    CFRetain(v5);
  }

LABEL_8:
  v6 = *(a1 + 88);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  aBlock = v6;
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    v27 = *(a1 + 96);
  }

  v7 = v2[10];
  if (!v7 || (v8 = v2[9], (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  v11 = operator new(0x48uLL);
  v12 = v22;
  v11->__r_.__value_.__r.__words[0] = v21;
  v11->__r_.__value_.__l.__size_ = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = object;
  v11->__r_.__value_.__r.__words[2] = object;
  if (!v13)
  {
    v11->__r_.__value_.__r.__words[2] = xpc_null_create();
    v16 = v24;
    v14 = v25;
    v11[1].__r_.__value_.__l.__size_ = v25;
    v11[1].__r_.__value_.__r.__words[0] = v16;
    if (!v14)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  xpc_retain(v13);
  v15 = v24;
  v14 = v25;
  v11[1].__r_.__value_.__l.__size_ = v25;
  v11[1].__r_.__value_.__r.__words[0] = v15;
  if (v14)
  {
LABEL_21:
    CFRetain(v14);
  }

LABEL_22:
  v17 = aBlock;
  if (aBlock)
  {
    v17 = _Block_copy(aBlock);
  }

  v11[1].__r_.__value_.__r.__words[2] = v17;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v11 + 2, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    v11[2] = v27;
  }

  v18 = v2[11];
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  v19 = operator new(0x18uLL);
  *v19 = v11;
  v19[1] = v8;
  v19[2] = v10;
  dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI12TraceManagerE15execute_wrappedIZZNS3_16collectLogs_syncEN3xpc4dictENS_5blockIU13block_pointerFviS7_EEEEUb0_E3__2EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSI_14default_deleteISD_EEEEENUlPvE_8__invokeESN_);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  return _ZZZN12TraceManager16collectLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEEEUb0_EN3__2D1Ev(&v21);
}

void sub_2974E43F8(void *a1)
{
  v5 = *(v1 + 40);
  if (v5)
  {
    _Block_release(v5);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(v3);
  xpc::dict::~dict(v2);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v1);
  __clang_call_terminate(a1);
}

void sub_2974E442C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v15 + 32));
  xpc_release(object);
  object = 0;
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t _ZZZN12TraceManager16collectLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEEEUb0_EN3__2D1Ev(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    v2 = *(a1 + 40);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = *(a1 + 40);
  if (v2)
  {
LABEL_5:
    _Block_release(v2);
  }

LABEL_6:
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v4 = *(a1 + 8);
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void __copy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrI12TraceManagerEE56c46_ZTSNSt3__110shared_ptrIN3abm12HelperClientEEE72c15_ZTSN3xpc4dictE80c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE88c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE96c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  a1[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  a1[2].__r_.__value_.__r.__words[0] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 64);
  a1[2].__r_.__value_.__l.__size_ = *(a2 + 56);
  a1[2].__r_.__value_.__r.__words[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 72);
  a1[3].__r_.__value_.__r.__words[0] = v6;
  if (!v6)
  {
    a1[3].__r_.__value_.__r.__words[0] = xpc_null_create();
    v7 = *(a2 + 80);
    a1[3].__r_.__value_.__l.__size_ = v7;
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  xpc_retain(v6);
  v7 = *(a2 + 80);
  a1[3].__r_.__value_.__l.__size_ = v7;
  if (v7)
  {
LABEL_9:
    CFRetain(v7);
  }

LABEL_10:
  v8 = *(a2 + 88);
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  a1[3].__r_.__value_.__r.__words[2] = v8;
  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 4, *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v9 = *(a2 + 96);
    a1[4].__r_.__value_.__r.__words[2] = *(a2 + 112);
    *&a1[4].__r_.__value_.__l.__data_ = v9;
  }
}

void sub_2974E4648(_Unwind_Exception *a1)
{
  v7 = *(v3 + 88);
  if (v7)
  {
    _Block_release(v7);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(v5);
  xpc::dict::~dict(v4);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v2);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrI12TraceManagerEE56c46_ZTSNSt3__110shared_ptrIN3abm12HelperClientEEE72c15_ZTSN3xpc4dictE80c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE88c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE96c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    v2 = *(a1 + 88);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = *(a1 + 88);
  if (v2)
  {
LABEL_5:
    _Block_release(v2);
  }

LABEL_6:
  v3 = *(a1 + 80);
  if (v3)
  {
    CFRelease(v3);
  }

  xpc_release(*(a1 + 72));
  *(a1 + 72) = 0;
  v4 = *(a1 + 64);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = *(a1 + 48);
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *(a1 + 48);
    if (!v5)
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

void ___ZN12TraceManager24collectBasebandLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (capabilities::radio::dal(a1))
  {
    v35 = 0xAAAAAAAAAAAAAAAALL;
    v36 = 0xAAAAAAAAAAAAAAAALL;
    (*(*v2 + 88))(&v35, v2);
    v3 = v35;
    if (v35)
    {
      v4 = operator new(0x28uLL);
      strcpy(v4, "com.apple.Baseband.Logging.Snapshot");
      v5 = v3[6];
      std::string::__init_copy_ctor_external(&__p, v4, 0x23uLL);
      (*(*v5 + 32))(v5, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      operator delete(v4);
    }

    v6 = v36;
    if (v36)
    {
      if (!atomic_fetch_add((v36 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        v7 = *(a1 + 48);
        if (v7)
        {
          goto LABEL_9;
        }

LABEL_14:
        v9 = 0;
LABEL_15:
        v11 = xpc_null_create();
        v12 = *(a1 + 56);
        v35 = v11;
        v13 = xpc_null_create();
        (*(v12 + 16))(v12, 3760250880, &v35);
        xpc_release(v35);
        xpc_release(v13);
        if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }

        v10 = 1;
        goto LABEL_18;
      }
    }
  }

  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  v7 = *(a1 + 48);
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_9:
  v8 = std::__shared_weak_count::lock(v7);
  v9 = v8;
  __p.__r_.__value_.__l.__size_ = v8;
  if (!v8)
  {
    goto LABEL_15;
  }

  __p.__r_.__value_.__r.__words[0] = *(a1 + 40);
  if (!__p.__r_.__value_.__r.__words[0])
  {
    goto LABEL_15;
  }

  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_19;
  }

  v10 = 0;
LABEL_18:
  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (v10)
  {
    return;
  }

LABEL_19:
  __p.__r_.__value_.__r.__words[0] = v2;
  if (*(a1 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(&__p.__r_.__value_.__r.__words[1], *(a1 + 64), *(a1 + 72));
    v14 = *(a1 + 56);
    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  *&__p.__r_.__value_.__r.__words[1] = *(a1 + 64);
  v28 = *(a1 + 80);
  v14 = *(a1 + 56);
  if (v14)
  {
LABEL_23:
    v14 = _Block_copy(v14);
  }

LABEL_24:
  aBlock = v14;
  v30 = *(a1 + 112);
  v15 = *(a1 + 48);
  v31 = *(a1 + 40);
  v32 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 111) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    v33 = *(a1 + 88);
  }

  v34 = *(a1 + 116);
  v16 = v2[10];
  if (!v16 || (v17 = v2[9], (v18 = std::__shared_weak_count::lock(v16)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v19 = v18;
  v20 = operator new(0x60uLL);
  v21 = v20;
  *v20 = __p.__r_.__value_.__r.__words[0];
  if (SHIBYTE(v28) < 0)
  {
    std::string::__init_copy_ctor_external((v20 + 8), __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    *(v20 + 8) = *&__p.__r_.__value_.__r.__words[1];
    *(v20 + 3) = v28;
  }

  v22 = aBlock;
  if (aBlock)
  {
    v22 = _Block_copy(aBlock);
  }

  *(v21 + 4) = v22;
  *(v21 + 10) = v30;
  v23 = v32;
  *(v21 + 6) = v31;
  *(v21 + 7) = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v21 + 64), v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v21 + 64) = v33;
  }

  v21[88] = v34;
  v24 = v2[11];
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  v25 = operator new(0x18uLL);
  *v25 = v21;
  v25[1] = v17;
  v25[2] = v19;
  dispatch_async_f(v24, v25, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI12TraceManagerE15execute_wrappedIZZNS3_24collectBasebandLogs_syncEN3xpc4dictENS_5blockIU13block_pointerFviS7_EEEEUb1_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSI_14default_deleteISD_EEEEENUlPvE_8__invokeESN_);
  if (atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_51:
    operator delete(v33.__r_.__value_.__l.__data_);
    v26 = v32;
    if (!v32)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }

LABEL_43:
  v26 = v32;
  if (v32)
  {
LABEL_44:
    std::__shared_weak_count::__release_weak(v26);
  }

LABEL_45:
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__size_);
  }
}

void sub_2974E4C00(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, void *aBlock, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  v25 = *(v22 + 56);
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(v22 + 32);
  if (v26)
  {
    _Block_release(v26);
  }

  if (*(v22 + 31) < 0)
  {
    operator delete(*v23);
    __clang_call_terminate(a1);
  }

  __clang_call_terminate(a1);
}

void __copy_helper_block_e8_40c37_ZTSNSt3__18weak_ptrI12TraceManagerEE56c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 56);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  *(a1 + 56) = v5;
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v7;
  }
}

void sub_2974E4DB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  v3 = *(v1 + 56);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(v1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c37_ZTSNSt3__18weak_ptrI12TraceManagerEE56c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if ((*(a1 + 111) & 0x80000000) == 0)
  {
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 64));
    v2 = *(a1 + 56);
    if (!v2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 88));
  if (*(a1 + 87) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 56);
  if (v2)
  {
LABEL_7:
    _Block_release(v2);
  }

LABEL_8:
  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void TraceManager::registerEventHandlers_sync(TraceManager *this)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", &__p, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_53:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_53;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_53;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBF460];
  v8 = strlen(*MEMORY[0x29EDBF460]);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
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

    p_p = operator new(v11);
    *(&__p + 1) = v9;
    v27 = v11 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_14;
  }

  HIBYTE(v27) = v8;
  p_p = &__p;
  if (v8)
  {
LABEL_14:
    memmove(p_p, v7, v9);
  }

  *(p_p + v9) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v33 = 0;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E44E30;
  v12[1] = this;
  v12[2] = v4;
  v12[3] = v6;
  v33 = v12;
  Service::registerEventHandler(this, &__p, v32);
  if (v33 == v32)
  {
    (*(*v33 + 32))(v33);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

  if (v33)
  {
    (*(*v33 + 40))();
  }

  if (SHIBYTE(v27) < 0)
  {
LABEL_47:
    operator delete(__p);
  }

LABEL_19:
  v13 = *MEMORY[0x29EDBEFF0];
  v14 = strlen(*MEMORY[0x29EDBEFF0]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    v16 = operator new(v17);
    *(&__p + 1) = v15;
    v27 = v17 | 0x8000000000000000;
    *&__p = v16;
    goto LABEL_27;
  }

  HIBYTE(v27) = v14;
  v16 = &__p;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v31 = 0;
  v18 = operator new(0x20uLL);
  *v18 = &unk_2A1E45030;
  v18[1] = this;
  v18[2] = v4;
  v18[3] = v6;
  v31 = v18;
  Service::registerEventHandler(this, &__p, v30);
  if (v31 == v30)
  {
    (*(*v31 + 32))(v31);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_49;
  }

  if (v31)
  {
    (*(*v31 + 40))();
  }

  if (SHIBYTE(v27) < 0)
  {
LABEL_49:
    operator delete(__p);
  }

LABEL_32:
  v19 = *MEMORY[0x29EDBEFF8];
  v20 = strlen(*MEMORY[0x29EDBEFF8]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    *(&__p + 1) = v21;
    v27 = v23 | 0x8000000000000000;
    *&__p = v22;
    goto LABEL_40;
  }

  HIBYTE(v27) = v20;
  v22 = &__p;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v29 = 0;
  v24 = operator new(0x20uLL);
  *v24 = &unk_2A1E450E0;
  v24[1] = this;
  v24[2] = v4;
  v24[3] = v6;
  v29 = v24;
  Service::registerEventHandler(this, &__p, v28);
  if (v29 == v28)
  {
    (*(*v29 + 32))(v29);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_51:
    operator delete(__p);
    goto LABEL_45;
  }

  if (v29)
  {
    (*(*v29 + 40))();
  }

  if (SHIBYTE(v27) < 0)
  {
    goto LABEL_51;
  }

LABEL_45:
  Service::eventsOn(this);
  std::__shared_weak_count::__release_weak(v6);
  v25 = *MEMORY[0x29EDCA608];
}

void TraceManager::sleep(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<TraceManager>::execute_wrapped<TraceManager::sleep(dispatch::group_session)::$_0>(TraceManager::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceManager::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<TraceManager::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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

void TraceManager::updateBasebandFWInfo(TraceManager *this)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v2) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v2);
      v3 = v2;
    }

    else
    {
      v3 = xpc_null_create();
    }
  }

  else
  {
    v3 = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  v4 = *(this + 10);
  if (!v4 || (v5 = *(this + 9), (v6 = std::__shared_weak_count::lock(v4)) == 0))
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

  v8 = *MEMORY[0x29EDBF4B0];
  v9 = strlen(*MEMORY[0x29EDBF4B0]);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    v11 = operator new(v12);
    __dst[1] = v10;
    v19 = v12 | 0x8000000000000000;
    __dst[0] = v11;
LABEL_20:
    memmove(v11, v8, v10);
    *(v10 + v11) = 0;
    object = v3;
    if (v3)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  HIBYTE(v19) = v9;
  v11 = __dst;
  if (v9)
  {
    goto LABEL_20;
  }

  LOBYTE(__dst[0]) = 0;
  object = v3;
  if (v3)
  {
LABEL_15:
    xpc_retain(v3);
    goto LABEL_22;
  }

LABEL_21:
  object = xpc_null_create();
LABEL_22:
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 1174405120;
  v14[2] = ___ZN12TraceManager20updateBasebandFWInfoEv_block_invoke;
  v14[3] = &__block_descriptor_tmp_61_0;
  v14[4] = this;
  v14[5] = v5;
  v15 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v13 = _Block_copy(v14);
  v16 = v13;
  Service::runCommand(this, __dst, &object, &v16);
  if (v13)
  {
    _Block_release(v13);
  }

  xpc_release(object);
  object = 0;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  std::__shared_weak_count::__release_weak(v7);
  xpc_release(v3);
}

void sub_2974E58C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, xpc_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v25)
  {
    _Block_release(v25);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  xpc_release(object);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v24);
  xpc_release(v23);
  _Unwind_Resume(a1);
}

void ___ZN12TraceManager20updateBasebandFWInfoEv_block_invoke(void *a1, int a2, xpc_object_t *a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = a1[5];
      if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (a2)
        {
          return;
        }
      }

      else
      {
        v10 = v8;
        (v8->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v10);
        if (a2)
        {
          return;
        }
      }

      if (v9)
      {
        value = xpc_dictionary_get_value(*a3, *MEMORY[0x29EDBE8F0]);
        object = value;
        if (value)
        {
          xpc_retain(value);
        }

        else
        {
          object = xpc_null_create();
        }

        xpc::dyn_cast_or_default(&v14, &object, "", v12);
        if (*(v7 + 135) < 0)
        {
          operator delete(*(v7 + 112));
        }

        *(v7 + 112) = v14;
        *(v7 + 128) = v15;
        HIBYTE(v15) = 0;
        LOBYTE(v14) = 0;
        xpc_release(object);
      }
    }
  }
}

void ___ZN12TraceManager20initTraceHelper_syncEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (!v2)
  {
    return;
  }

  v3 = a1[4];
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    return;
  }

  v5 = a1[5];
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
    if (!v5)
    {
      return;
    }
  }

  v7 = *(v3 + 104);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I Wireless helper server has started", buf, 2u);
  }

  v9 = capabilities::radio::initium(v8);
  v10 = *MEMORY[0x29EDBEFB8];
  v11 = strlen(*MEMORY[0x29EDBEFB8]);
  v12 = *(v3 + 159);
  if (v12 < 0)
  {
    if (v11 != *(v3 + 144))
    {
      goto LABEL_16;
    }

    if (v11 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (memcmp(*(v3 + 136), v10, v11))
    {
      goto LABEL_16;
    }
  }

  else if (v11 != v12 || memcmp((v3 + 136), v10, v11))
  {
    goto LABEL_16;
  }

  if (prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], v13) || prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v15) || ((prop::tracesettings::enabled(*MEMORY[0x29EDBE690], v16) | v9) & 1) != 0)
  {
    v17 = xpc_dictionary_create(0, 0, 0);
    if (v17 || (v17 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C272BA0](v17) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v17);
        v18 = v17;
      }

      else
      {
        v18 = xpc_null_create();
      }
    }

    else
    {
      v18 = xpc_null_create();
      v17 = 0;
    }

    xpc_release(v17);
    v19 = xpc_string_create(v10);
    if (!v19)
    {
      v19 = xpc_null_create();
    }

    xpc_dictionary_set_value(v18, *MEMORY[0x29EDBEAF8], v19);
    v20 = xpc_null_create();
    xpc_release(v19);
    xpc_release(v20);
    object = v18;
    if (v18)
    {
      xpc_retain(v18);
    }

    else
    {
      object = xpc_null_create();
    }

    v21 = *MEMORY[0x29EDBD370];
    v22[1] = 0;
    v23 = 0;
    v22[0] = 0;
    TraceManager::runOnHelper_sync(v3, 9, v21, 0x1388u, v9, &object, &v23, v22);
    xpc_release(object);
    object = 0;
    xpc_release(v18);
    return;
  }

LABEL_16:
  v14 = *(v3 + 104);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v14, OS_LOG_TYPE_DEFAULT, "#I Skipping trace start", buf, 2u);
  }
}

void sub_2974E5D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a9);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  _Unwind_Resume(a1);
}

void ___ZN12TraceManager16runOnHelper_syncEN3abm6helper6TaskIDEPKcjbN3xpc4dictEN8dispatch13group_sessionENS7_8callbackIU13block_pointerFvN12TelephonyXPC6ResultES6_EEE_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = *(a1 + 40);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v6);
      }

      if (v5)
      {
        v7 = *(v3 + 104);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 88);
          v9 = abm::helper::asString();
          v10 = *(a1 + 80);
          v12 = 136315394;
          v13 = v9;
          v14 = 2080;
          v15 = v10;
          _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I %s:%s: complete", &v12, 0x16u);
        }
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void __copy_helper_block_e8_40c37_ZTSNSt3__18weak_ptrI12TraceManagerEE56c30_ZTSN8dispatch13group_sessionE64c46_ZTSNSt3__110shared_ptrIN3abm12HelperClientEEE(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[7];
  a1[7] = v5;
  if (v5)
  {
    dispatch_retain(v5);
    v6 = a1[7];
    if (v6)
    {
      dispatch_group_enter(v6);
    }
  }

  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_40c37_ZTSNSt3__18weak_ptrI12TraceManagerEE56c30_ZTSN8dispatch13group_sessionE64c46_ZTSNSt3__110shared_ptrIN3abm12HelperClientEEE(void *a1)
{
  v2 = a1[9];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[7];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = a1[6];
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  LODWORD(v5) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x80000000) != 0)
  {
    v10 = this->__r_.__value_.__r.__words[2];
    v8 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__n > v8)
    {
      v11 = 0x7FFFFFFFFFFFFFF7;
      if (0x7FFFFFFFFFFFFFF7 - (v10 & 0x7FFFFFFFFFFFFFFFLL) >= __n - v8)
      {
        v9 = this->__r_.__value_.__r.__words[0];
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          v6 = operator new(0x7FFFFFFFFFFFFFF7uLL);
          memcpy(v6, __s, __n);
LABEL_25:
          operator delete(v9);
LABEL_26:
          this->__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
          this->__r_.__value_.__r.__words[0] = v6;
LABEL_27:
          this->__r_.__value_.__l.__size_ = __n;
          goto LABEL_28;
        }

        v7 = __s;
LABEL_9:
        v12 = 2 * v8;
        if (__n > 2 * v8)
        {
          v12 = __n;
        }

        if ((v12 | 7) == 0x17)
        {
          v13 = 25;
        }

        else
        {
          v13 = (v12 | 7) + 1;
        }

        if (v12 >= 0x17)
        {
          v11 = v13;
        }

        else
        {
          v11 = 23;
        }

        v6 = operator new(v11);
        memcpy(v6, v7, __n);
        if (v8 == 22)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_29:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = HIBYTE(v10);
    v6 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v6 = this;
    if (__n > 0x16)
    {
      if (__n - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        v7 = __s;
        v8 = 22;
        v9 = this;
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  if (__n)
  {
    memmove(v6, __s, __n);
    LOBYTE(v5) = *(&this->__r_.__value_.__s + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    goto LABEL_27;
  }

  *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
LABEL_28:
  *(v6 + __n) = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

atomic_ullong *std::shared_ptr<TraceManager>::shared_ptr[abi:ne200100]<TraceManager,std::shared_ptr<TraceManager> ctu::SharedSynchronizable<TraceManager>::make_shared_ptr<TraceManager>(TraceManager*)::{lambda(TraceManager*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E449F0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 72) = a2;
      *(a2 + 80) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 72) = a2;
  *(a2 + 80) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_2974E6310(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<TraceManager> ctu::SharedSynchronizable<TraceManager>::make_shared_ptr<TraceManager>(TraceManager*)::{lambda(TraceManager*)#1}::operator() const(TraceManager*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<TraceManager *,std::shared_ptr<TraceManager> ctu::SharedSynchronizable<TraceManager>::make_shared_ptr<TraceManager>(TraceManager*)::{lambda(TraceManager *)#1},std::allocator<TraceManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<TraceManager *,std::shared_ptr<TraceManager> ctu::SharedSynchronizable<TraceManager>::make_shared_ptr<TraceManager>(TraceManager*)::{lambda(TraceManager *)#1},std::allocator<TraceManager>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI12TraceManagerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI12TraceManagerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI12TraceManagerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI12TraceManagerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<TraceManager> ctu::SharedSynchronizable<TraceManager>::make_shared_ptr<TraceManager>(TraceManager*)::{lambda(TraceManager*)#1}::operator() const(TraceManager*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<BBLogTracker *,std::shared_ptr<BBLogTracker>::__shared_ptr_default_delete<BBLogTracker,BBLogTracker>,std::allocator<BBLogTracker>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<BBLogTracker *,std::shared_ptr<BBLogTracker>::__shared_ptr_default_delete<BBLogTracker,BBLogTracker>,std::allocator<BBLogTracker>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::destroy(v1[1]);

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<BBLogTracker *,std::shared_ptr<BBLogTracker>::__shared_ptr_default_delete<BBLogTracker,BBLogTracker>,std::allocator<BBLogTracker>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029769D478)
  {
    if (((v2 & 0x800000029769D478 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029769D478))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029769D478 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::destroy(uint64_t a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::destroy(*(a1 + 8));
    v2 = *(a1 + 64);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
LABEL_5:
        v3 = a1;

LABEL_7:
        operator delete(v3);
        return;
      }
    }

    else if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(*(a1 + 32));
    v3 = a1;

    goto LABEL_7;
  }
}

uint64_t **std::unique_ptr<BBLogTracker>::~unique_ptr[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::destroy(v1[1]);
    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZN3ctu20SharedSynchronizableI12TraceManagerE13connect_eventIN5boost8signals26signalIFvNS_2cf11CFSharedRefIK14__CFDictionaryEEENS5_19optional_last_valueIvEEiNSt3__14lessIiEENS4_8functionISC_EENSI_IFvRKNS5_10connectionESB_EEENS5_5mutexEEES1_vJSB_EEEDTcl7connectfp_cvNSF_10shared_ptrIS1_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FSV_SX_E_block_invoke(void *a1, const void **a2)
{
  v3 = a1[5];
  v2 = a1[6];
  v4 = (a1[4] + (v2 >> 1) - 72);
  if (v2)
  {
    v3 = *(*v4 + v3);
    v5 = *a2;
    cf = v5;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = *a2;
  cf = v5;
  if (v5)
  {
LABEL_5:
    CFRetain(v5);
  }

LABEL_6:
  v3(v4, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974E66C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>>::~DispatchSlot(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::invocation_state>(void *a1)
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
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

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
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
        v5 = v2[1];
        v6 = v2[3];
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
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

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>>(uint64_t *a1)
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
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

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  v1 = boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete(v1);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>::connected(uint64_t a1)
{
  v20[3] = *MEMORY[0x29EDCA608];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[8] = v2;
  v15[9] = v2;
  v15[6] = v2;
  v15[7] = v2;
  v15[4] = v2;
  v15[5] = v2;
  v15[2] = v2;
  v15[3] = v2;
  v15[0] = v2;
  v15[1] = v2;
  v3 = *(a1 + 48);
  v16 = 10;
  v17 = v15;
  v18 = 0;
  v19 = v3;
  pthread_mutex_lock(v3);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *v4;
    if (*v4 != v4[1])
    {
      while (1)
      {
        memset(v20, 170, 24);
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v5, v20);
        if ((*v5 ^ (*v5 >> 31)) == 2)
        {
          if (!(*(**(v5 + 8) + 24))(*(v5 + 8)))
          {
            goto LABEL_6;
          }
        }

        else
        {
          v6 = *(v5 + 16);
          if (v6 && atomic_load_explicit((v6 + 8), memory_order_acquire))
          {
LABEL_6:
            v7 = 0;
            if (LODWORD(v20[0]) == SLODWORD(v20[0]) >> 31)
            {
              goto LABEL_13;
            }

            goto LABEL_7;
          }
        }

        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(a1, v15);
        }

        v7 = 1;
        if (LODWORD(v20[0]) == SLODWORD(v20[0]) >> 31)
        {
LABEL_13:
          v8 = v20[2];
          if (v20[2])
          {
            if (atomic_fetch_add((v20[2] + 8), 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          goto LABEL_17;
        }

LABEL_7:
        if (v20[1])
        {
          (*(*v20[1] + 8))(v20[1]);
        }

LABEL_17:
        if ((v7 & 1) == 0)
        {
          v5 += 24;
          if (v5 != *(*(a1 + 32) + 8))
          {
            continue;
          }
        }

        break;
      }
    }
  }

  v9 = *(a1 + 24);
  pthread_mutex_unlock(v19);
  v10 = v17;
  if (v17)
  {
    if (v18 > 0)
    {
      v13 = &v17[16 * v18];
      do
      {
        v14 = *(v13 - 1);
        if (v14)
        {
          if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v14 + 16))(v14);
            if (atomic_fetch_add(v14 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v14 + 24))(v14);
            }
          }
        }

        v13 -= 16;
      }

      while (v13 > v10);
    }

    if (v16 >= 0xB)
    {
      operator delete(v17);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_2974E7168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>::release_slot@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 40);
  v2 = (result + 32);
  *a2 = *(result + 32);
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
    v4 = *(result + 40);
    *v2 = 0;
    *(result + 40) = 0;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v4 + 16))(v4);
      if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
      {
        return (*(*v4 + 24))(v4);
      }
    }
  }

  else
  {
    *v2 = 0;
    *(result + 40) = 0;
  }

  return result;
}

void boost::checked_delete<boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>>(void **__p)
{
  if (__p)
  {
    v2 = __p[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(__p + 4, __p + 4, 2);
        }
      }

      __p[3] = 0;
    }

    v4 = *__p;
    if (*__p)
    {
      v5 = __p[1];
      v6 = *__p;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *__p;
      }

      __p[1] = v4;
      operator delete(v6);
    }

    operator delete(__p);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(v1 + 4, v1 + 4, 2);
        }
      }

      v1[3] = 0;
    }

    v4 = *v1;
    if (*v1)
    {
      v5 = v1[1];
      v6 = *v1;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *v1;
      }

      v1[1] = v4;
      operator delete(v6);
    }

    operator delete(v1);
  }
}

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = &unk_2A1E44B50;
  v2 = a1[7];
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

  v3 = a1[5];
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

  *a1 = &unk_2A1E41C60;
  v4 = a1[2];
  if (v4 && atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>::~shared_ptr(uint64_t result)
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

void (***boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>::~function(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void boost::detail::function::functor_manager<ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>>>::manage(uint64_t a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v9 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v9 == (0x800000029769D8C1 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v9, (0x800000029769D8C1 & 0x7FFFFFFFFFFFFFFFLL)))
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

      dispatch_release(*a2);
      v8 = *(a2 + 1);
      if (v8)
      {
LABEL_9:
        _Block_release(v8);
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    *a2 = *a1;
    if (v7)
    {
      v7 = _Block_copy(v7);
      v6 = *a2;
    }

    *(a2 + 1) = v7;
    dispatch_retain(v6);
    if (a3 == 1)
    {
      dispatch_release(*a1);
      v8 = *(a1 + 8);
      if (v8)
      {
        goto LABEL_9;
      }
    }
  }
}

void boost::detail::function::void_function_obj_invoker1<ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>>,void,ctu::cf::CFSharedRef<__CFDictionary const>>::invoke(uint64_t a1, const void **a2)
{
  v2 = *a2;
  v21 = *a2;
  *a2 = 0;
  v4 = *a1;
  v3 = *(a1 + 8);
  if (!v3)
  {
    v6 = 0;
LABEL_10:
    v17 = 1;
    *&v22 = 0;
    if (!v2)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v5 = _Block_copy(v3);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  v7 = _Block_copy(v5);
  v8 = v7;
  if (!v7)
  {
    v17 = 0;
    *&v22 = 0;
    if (!v2)
    {
      goto LABEL_23;
    }

LABEL_22:
    CFRetain(v2);
    goto LABEL_23;
  }

  v9 = _Block_copy(v7);
  v10 = v9;
  if (v9)
  {
    v11 = _Block_copy(v9);
    v12 = v11;
    if (v11)
    {
      v13 = _Block_copy(v11);
      v14 = v13;
      if (v13)
      {
        v15 = _Block_copy(v13);
        v16 = v15;
        if (v15)
        {
          *&v22 = _Block_copy(v15);
          _Block_release(v16);
        }

        else
        {
          *&v22 = 0;
        }

        _Block_release(v14);
      }

      else
      {
        *&v22 = 0;
      }

      _Block_release(v12);
    }

    else
    {
      *&v22 = 0;
    }

    _Block_release(v10);
  }

  else
  {
    *&v22 = 0;
  }

  _Block_release(v8);
  v17 = 0;
  if (v2)
  {
    goto LABEL_22;
  }

LABEL_23:
  v18 = operator new(8uLL);
  *v18 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  v19 = operator new(0x20uLL);
  v20 = v19;
  *v19 = 0;
  if (boost::function1<void,ctu::cf::CFSharedRef<__CFDictionary const>>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>)::stored_vtable)
  {
    *v19 = boost::function1<void,ctu::cf::CFSharedRef<__CFDictionary const>>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>)::stored_vtable;
    if (boost::function1<void,ctu::cf::CFSharedRef<__CFDictionary const>>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>)::stored_vtable)
    {
      *(v19 + 8) = v22;
      *(v19 + 3) = v23;
    }

    else
    {
      (boost::function1<void,ctu::cf::CFSharedRef<__CFDictionary const>>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>)::stored_vtable[0])(&v22, v19 + 8, 0);
    }
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEES8__block_invoke;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = v20;
  block[5] = v18;
  dispatch_async(v4, block);
  if (v2)
  {
    CFRelease(v2);
  }

  if (boost::function1<void,ctu::cf::CFSharedRef<__CFDictionary const>>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>)::stored_vtable && (boost::function1<void,ctu::cf::CFSharedRef<__CFDictionary const>>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>)::stored_vtable & 1) == 0 && boost::function1<void,ctu::cf::CFSharedRef<__CFDictionary const>>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>)::stored_vtable[0])
  {
    (boost::function1<void,ctu::cf::CFSharedRef<__CFDictionary const>>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>)::stored_vtable[0])(&v22, &v22, 2);
  }

  if ((v17 & 1) == 0)
  {
    _Block_release(v6);
    v2 = v21;
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_2974E7AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void (**a11)(void, void, void))
{
  operator delete(v12);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>::~function(&a11);
  if ((v13 & 1) == 0)
  {
    _Block_release(v11);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  _Unwind_Resume(a1);
}

void ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEES8__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = **(a1 + 40);
  if (v3)
  {
    CFRetain(v3);
  }

  if (!*v2)
  {
    std::runtime_error::runtime_error(&cf, "call to empty boost::function");
    cf.__vftable = &unk_2A1E420B0;
    boost::throw_exception<boost::bad_function_call>(&cf);
  }

  v4 = *((*v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  cf.__vftable = v3;
  v4(v2 + 1, &cf);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *v5;
    if (*v5)
    {
      if ((v6 & 1) == 0)
      {
        v7 = *v6;
        if (v7)
        {
          v8 = *(a1 + 32);
          v7(v5 + 1, v8 + 1, 2);
          v5 = v8;
        }
      }

      *v5 = 0;
    }

    operator delete(v5);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    if (*v9)
    {
      CFRelease(*v9);
    }

    operator delete(v9);
  }
}

void sub_2974E7C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, std::runtime_error a11)
{
  std::runtime_error::~runtime_error(&a11);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void sub_2974E7C64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_2974E7C80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void boost::detail::function::functor_manager<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>>::manage(void **a1, _WORD *a2, unsigned int a3)
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
      if (v8 == (0x800000029769D925 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, (0x800000029769D925 & 0x7FFFFFFFFFFFFFFFLL)))
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

void boost::detail::function::void_function_obj_invoker1<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>,void,ctu::cf::CFSharedRef<__CFDictionary const>>::invoke(uint64_t *a1, CFTypeRef *a2)
{
  v2 = *a1;
  cf = *a2;
  *a2 = 0;
  (*(v2 + 16))();
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974E7DEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t boost::function1<void,ctu::cf::CFSharedRef<__CFDictionary const>>::move_assign(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = *a2;
    if (*a2)
    {
      *result = v2;
      if (v2)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        v3 = a2;
        result = (*v2)(a2 + 8, result + 8, 1);
        a2 = v3;
      }
    }

    else
    {
      v4 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v4 & 1) != 0 || (v5 = *v4) == 0)
      {
        a2 = result;
      }

      else
      {
        v6 = result;
        result = v5(result + 8, result + 8, 2);
        a2 = v6;
      }
    }

    *a2 = 0;
  }

  return result;
}

void sub_2974E7EAC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***boost::function1<void,ctu::cf::CFSharedRef<__CFDictionary const>>::~function1(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

uint64_t boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<TraceManager>>::~foreign_weak_ptr_impl(uint64_t result)
{
  *result = &unk_2A1E44CA8;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<TraceManager>>::~foreign_weak_ptr_impl(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E44CA8;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<TraceManager>>::lock(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 8);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_6:
  v7 = operator new(0x18uLL);
  *v7 = &unk_2A1E44CF8;
  v7[1] = v6;
  v7[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a2 = v7;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a2 = v7;
  }
}

void *boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<TraceManager>>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1E44CA8;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<TraceManager>>::~foreign_shared_ptr_impl(void *result)
{
  *result = &unk_2A1E44CF8;
  v1 = result[2];
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

void boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<TraceManager>>::~foreign_shared_ptr_impl(void *a1)
{
  *a1 = &unk_2A1E44CF8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void *boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<TraceManager>>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1E44CF8;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void **boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>::~slot(void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 4, a1 + 4, 2);
      }
    }

    a1[3] = 0;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v5 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
  }

  return a1;
}

uint64_t util::convert<int>(const std::string *a1, _DWORD *a2, int a3)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    LODWORD(v6) = strcasecmp(a1, "false");
    if (!v6)
    {
      goto LABEL_29;
    }

    LODWORD(v6) = strcasecmp(a1, "off");
    if (!v6)
    {
      goto LABEL_29;
    }

    LODWORD(v6) = strcasecmp(a1, "no");
    if (!v6)
    {
      goto LABEL_29;
    }

    if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
    {
      v7 = a1;
      if (!strcasecmp(a1, "lite"))
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

LABEL_28:
    LODWORD(v6) = 1;
    goto LABEL_29;
  }

  v7 = a1->__r_.__value_.__r.__words[0];
  LODWORD(v6) = strcasecmp(a1->__r_.__value_.__l.__data_, "false");
  if (!v6)
  {
    goto LABEL_29;
  }

  LODWORD(v6) = strcasecmp(v7, "off");
  if (!v6)
  {
    goto LABEL_29;
  }

  LODWORD(v6) = strcasecmp(v7, "no");
  if (!v6)
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v7, "true") || !strcasecmp(v7, "on") || !strcasecmp(v7, "yes") || !strcasecmp(v7, "full") || !strcasecmp(v7, "streaming"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(v7, "lite"))
  {
LABEL_30:
    LODWORD(v6) = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v7, "background"))
  {
    goto LABEL_30;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  v6 = std::stol(a1, &__idx, a3);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx != size || v6 < 0xFFFFFFFF80000000 || v6 > 0x7FFFFFFF)
  {
    return 0;
  }

LABEL_29:
  *a2 = v6;
  return 1;
}

uint64_t sub_2974E8604(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

void ctu::SharedSynchronizable<TraceManager>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI12TraceManagerE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E44D30;
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

uint64_t __copy_helper_block_e8_40c41_ZTSNSt3__110shared_ptrIK12TraceManagerEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c41_ZTSNSt3__110shared_ptrIK12TraceManagerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<TraceManager>::execute_wrapped<TraceManager::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(TraceManager::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceManager::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<TraceManager::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  TraceManager::registerCommandHandlers_sync(**a1);
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

void sub_2974E8908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<TraceManager>::execute_wrapped<TraceManager::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(TraceManager::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceManager::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<TraceManager::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  TraceManager::registerEventHandlers_sync(**a1);
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

void sub_2974E8A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t util::convert<BOOL>(const std::string *a1, BOOL *a2, int a3)
{
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = a1->__r_.__value_.__r.__words[0];
    if (strcasecmp(a1->__r_.__value_.__l.__data_, "false") && strcasecmp(v6, "off") && strcasecmp(v6, "no"))
    {
      if (!strcasecmp(v6, "true") || !strcasecmp(v6, "on") || !strcasecmp(v6, "yes") || !strcasecmp(v6, "full") || !strcasecmp(v6, "streaming") || !strcasecmp(v6, "lite"))
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

LABEL_28:
    v10 = 0;
LABEL_30:
    *a2 = v10;
    return 1;
  }

  if (!strcasecmp(a1, "false") || !strcasecmp(a1, "off") || !strcasecmp(a1, "no"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(a1, "true"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "on"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "yes"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "full"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "streaming"))
  {
    goto LABEL_29;
  }

  v6 = a1;
  if (!strcasecmp(a1, "lite"))
  {
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v6, "background"))
  {
LABEL_29:
    v10 = 1;
    goto LABEL_30;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  v7 = std::stol(a1, &__idx, a3);
  result = 0;
  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v10 = v7 != 0;
  if (__idx == size && v7 < 2)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_2974E8C4C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

void ___ZN9analytics29registerCallbackForTimedEventI12TraceManagerEEvPKcNS_9TimerTypeENSt3__18weak_ptrIT_EEN8dispatch5queueEU13block_pointerFvNS5_12basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEE_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (!a1[4])
      {
        goto LABEL_14;
      }

      v7 = a1[6];
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v8, *a2, *(a2 + 8));
      }

      else
      {
        v8 = *a2;
      }

      (*(v7 + 16))(v7, &v8);
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_14:
        if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }

LABEL_11:
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        return;
      }

      operator delete(v8.__r_.__value_.__l.__data_);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_11;
      }
    }
  }
}

void sub_2974E8D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c37_ZTSNSt3__18weak_ptrI12TraceManagerEE48c106_ZTSN8dispatch5blockIU13block_pointerFvNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[6] = result;
  return result;
}

void __destroy_helper_block_e8_32c37_ZTSNSt3__18weak_ptrI12TraceManagerEE48c106_ZTSN8dispatch5blockIU13block_pointerFvNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t ctu::cf::insert<char const*,std::string>(__CFDictionary *a1, const __CFString **a2, uint64_t a3, uint64_t a4, const __CFAllocator *a5)
{
  value = 0;
  ctu::cf::convert_copy(&value, a2, 0x8000100, a4, a5);
  v6 = value;
  value = 0;
  ctu::cf::convert_copy();
  v7 = value;
  if (v6)
  {
    v8 = value == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v8)
  {
    if (!value)
    {
      goto LABEL_11;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, v6, value);
  }

  CFRelease(v7);
LABEL_11:
  if (v6)
  {
    CFRelease(v6);
  }

  return v9;
}

void sub_2974E8F04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_2974E8F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<char const*,int>(__CFDictionary *a1, const __CFString **a2, int a3, const __CFAllocator *a4, const __CFAllocator *a5)
{
  v12 = 0;
  ctu::cf::convert_copy(&v12, a2, 0x8000100, a4, a5);
  v8 = v12;
  valuePtr = a3;
  v9 = CFNumberCreate(a4, kCFNumberIntType, &valuePtr);
  v10 = v9;
  v12 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, v8, v9);
  }

  CFRelease(v10);
LABEL_8:
  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_2974E8FE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void sub_2974E9008(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
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

void sub_2974E90CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::insert<char const*,char const*>(__CFDictionary *a1, const __CFString **a2, const __CFString **a3, uint64_t a4, const __CFAllocator *a5)
{
  value = 0;
  ctu::cf::convert_copy(&value, a2, 0x8000100, a4, a5);
  v8 = value;
  value = 0;
  ctu::cf::convert_copy(&value, a3, 0x8000100, a4, v9);
  v10 = value;
  if (v8)
  {
    v11 = value == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11)
  {
    if (!value)
    {
      goto LABEL_11;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, v8, value);
  }

  CFRelease(v10);
LABEL_11:
  if (v8)
  {
    CFRelease(v8);
  }

  return v12;
}

void sub_2974E91A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_2974E91C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI12TraceManagerE15execute_wrappedIZZNS3_16collectLogs_syncEN3xpc4dictENS_5blockIU13block_pointerFviS7_EEEEUb0_E3__2EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSI_14default_deleteISD_EEEEENUlPvE_8__invokeESN_(uint64_t *a1)
{
  v1 = *a1;
  v59 = *a1;
  v2 = *(*a1 + 24);
  memset(&v84, 0, sizeof(v84));
  v3 = xpc_null_create();
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = MEMORY[0x29EDCAA00];
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v4) == v5)
    {
      xpc_retain(v4);
      xdict = v4;
    }

    else
    {
      xdict = xpc_null_create();
    }
  }

  else
  {
    xdict = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v83 = 0xAAAAAAAAAAAAAAAALL;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v83 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v83 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_14;
    }
  }

  if (MEMORY[0x29C272BA0](v7) == v5)
  {
    xpc_retain(v7);
    goto LABEL_15;
  }

  v8 = xpc_null_create();
LABEL_14:
  v83 = v8;
LABEL_15:
  xpc_release(v7);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v81 = v9;
  v82 = v9;
  v10 = *v1;
  v11 = *(v1 + 16);
  v80 = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    v80 = xpc_null_create();
  }

  v12 = *MEMORY[0x29EDBD438];
  abm::HelperClient::perform();
  xpc_release(v80);
  v80 = 0;
  v14 = MEMORY[0x29EDBD408];
  v15 = MEMORY[0x29EDB8ED8];
  if (v81 || MEMORY[0x29C272BA0](v83) != v5)
  {
    v16 = v3;
    goto LABEL_21;
  }

  value = xpc_dictionary_get_value(v83, *v14);
  __dst[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    __dst[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&v64, __dst, "", v35);
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  v84 = v64;
  *(&v64.__r_.__value_.__s + 23) = 0;
  v64.__r_.__value_.__s.__data_[0] = 0;
  xpc_release(__dst[0]);
  v46 = *MEMORY[0x29EDBD418];
  v47 = xpc_dictionary_get_value(v83, *MEMORY[0x29EDBD418]);
  v16 = v47;
  if (v47)
  {
    xpc_retain(v47);
  }

  else
  {
    v16 = xpc_null_create();
  }

  xpc_release(v3);
  if (ResetInfo::reasonMatchesAtLeastOneApplicablePattern(2, &v84, (*(v2 + 232) + 48)))
  {
    ctu::cf::update<char const*,BOOL>(*(v1 + 32), *MEMORY[0x29EDBED98], 1, *v15, v48);
  }

  if (ResetInfo::reasonMatchesAtLeastOneApplicablePattern(4, &v84, (*(v2 + 232) + 48)))
  {
    ctu::cf::update<char const*,BOOL>(*(v1 + 32), *MEMORY[0x29EDBED90], 1, *v15, v49);
  }

  if (MEMORY[0x29C272BA0](v16) != MEMORY[0x29EDCAA40])
  {
    if (v16)
    {
      xpc_retain(v16);
      v50 = v16;
    }

    else
    {
      v50 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, v46, v50);
    v51 = xpc_null_create();
    xpc_release(v50);
    xpc_release(v51);
    v52 = *MEMORY[0x29EDBF620];
    v53 = strlen(*MEMORY[0x29EDBF620]);
    if (v53 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v54 = v53;
    if (v53 >= 0x17)
    {
      if ((v53 | 7) == 0x17)
      {
        v56 = 25;
      }

      else
      {
        v56 = (v53 | 7) + 1;
      }

      v55 = operator new(v56);
      __dst[1] = v54;
      v79 = v56 | 0x8000000000000000;
      __dst[0] = v55;
    }

    else
    {
      HIBYTE(v79) = v53;
      v55 = __dst;
      if (!v53)
      {
        goto LABEL_113;
      }
    }

    memmove(v55, v52, v54);
LABEL_113:
    *(v54 + v55) = 0;
    v77 = xdict;
    if (xdict)
    {
      xpc_retain(xdict);
    }

    else
    {
      v77 = xpc_null_create();
    }

    v76 = 0;
    Service::broadcastEvent(v2, __dst, &v77, &v76);
    if (v76)
    {
      _Block_release(v76);
    }

    xpc_release(v77);
    v77 = 0;
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__dst[0]);
    }
  }

LABEL_21:
  v17 = *(v1 + 32);
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v64, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
  }

  else
  {
    v64 = v84;
  }

  ctu::cf::insert<char const*,std::string>(v17, *MEMORY[0x29EDBED78], &v64, *v15, v13);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  v18 = xpc_string_create("");
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(v1 + 16), *v14, v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = *v1;
  v21 = *(v1 + 16);
  v75 = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v75 = xpc_null_create();
  }

  v22 = *MEMORY[0x29EDBD440];
  aBlock = 0;
  object = 0;
  abm::HelperClient::perform();
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v75);
  v75 = 0;
  v23 = *(v2 + 80);
  if (!v23 || (v24 = *(v2 + 72), (v25 = std::__shared_weak_count::lock(v23)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v26 = v25;
  p_shared_weak_owners = &v25->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v26);
  }

  v71 = 0xAAAAAAAAAAAAAAAALL;
  v72 = 0xAAAAAAAAAAAAAAAALL;
  v64.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  v64.__r_.__value_.__l.__size_ = 1174405120;
  v64.__r_.__value_.__r.__words[2] = ___ZZZN12TraceManager16collectLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEEEUb0_ENK3__2clEv_block_invoke;
  v65 = &__block_descriptor_tmp_125;
  v66 = v2;
  v67 = v24;
  v68 = v26;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v28 = *(v1 + 40);
  if (v28)
  {
    v28 = _Block_copy(v28);
  }

  v69 = v28;
  v29 = *(v1 + 32);
  cf = v29;
  if (v29)
  {
    CFRetain(v29);
  }

  v30 = _Block_copy(&v64);
  v31 = *(v2 + 88);
  if (v31)
  {
    dispatch_retain(*(v2 + 88));
  }

  v71 = v30;
  v72 = v31;
  v32 = xpc_dictionary_create(0, 0, 0);
  if (v32 || (v32 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v32) == v5)
    {
      xpc_retain(v32);
      v33 = v32;
    }

    else
    {
      v33 = xpc_null_create();
    }
  }

  else
  {
    v33 = xpc_null_create();
    v32 = 0;
  }

  xpc_release(v32);
  v36 = (v1 + 48);
  if (*(v1 + 71) < 0)
  {
    v36 = *v36;
  }

  v37 = xpc_string_create(v36);
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  xpc_dictionary_set_value(v33, *MEMORY[0x29EDBD398], v37);
  v38 = xpc_null_create();
  xpc_release(v37);
  xpc_release(v38);
  v63 = v33;
  if (v33)
  {
    xpc_retain(v33);
    v62 = 0;
    v39 = v71;
    if (v71)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v62 = 0;
    v63 = xpc_null_create();
    v39 = v71;
    if (v71)
    {
LABEL_59:
      v40 = _Block_copy(v39);
      v41 = *MEMORY[0x29EDBD348];
      v42 = v72;
      v60 = v40;
      v61 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }
  }

  v40 = 0;
  v41 = *MEMORY[0x29EDBD348];
  v42 = v72;
  v60 = 0;
  v61 = v72;
  if (v72)
  {
LABEL_60:
    dispatch_retain(v42);
  }

LABEL_61:
  TraceManager::runOnHelper_sync(v2, 9, v41, 0, 1, &v63, &v62, &v60);
  if (v42)
  {
    dispatch_release(v42);
  }

  if (v40)
  {
    _Block_release(v40);
  }

  xpc_release(v63);
  v63 = 0;
  xpc_release(v33);
  if (v72)
  {
    dispatch_release(v72);
  }

  if (v71)
  {
    _Block_release(v71);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v69)
  {
    _Block_release(v69);
  }

  if (v68)
  {
    std::__shared_weak_count::__release_weak(v68);
  }

  std::__shared_weak_count::__release_weak(v26);
  if (SHIBYTE(v82) < 0)
  {
    operator delete(*(&v81 + 1));
  }

  xpc_release(v83);
  xpc_release(xdict);
  xpc_release(v16);
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (v59)
  {
    v43 = _ZZZN12TraceManager16collectLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEEEUb0_EN3__2D1Ev(v59);
    operator delete(v43);
  }

  v44 = a1;
  if (a1)
  {
    v45 = a1[2];
    if (v45)
    {
      if (!atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v45->__on_zero_shared)(v45);
        std::__shared_weak_count::__release_weak(v45);
        v44 = a1;
      }
    }

    operator delete(v44);
  }
}

void sub_2974E9A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, void *a11, uint64_t a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, xpc_object_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, void *a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, xpc_object_t a35, void *aBlock, xpc_object_t object, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(object);
  object = 0;
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 129) < 0)
  {
    operator delete(*(v44 - 152));
  }

  xpc_release(*(v44 - 120));
  xpc_release(a10);
  xpc_release(v43);
  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  _ZNSt3__110unique_ptrIZZN12TraceManager16collectLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS3_EEEEUb0_E3__2NS_14default_deleteIS9_EEED1B8ne200100Ev(&a12);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a11);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN12TraceManager16collectLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS3_EEEEUb0_E3__2NS_14default_deleteIS9_EEED1B8ne200100Ev(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = _ZZZN12TraceManager16collectLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEEEUb0_EN3__2D1Ev(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void ___ZZZN12TraceManager16collectLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEEEUb0_ENK3__2clEv_block_invoke(void *a1)
{
  v2 = a1[4];
  v33 = 0;
  v34 = 0;
  v3 = a1[6];
  if (!v3 || (v4 = std::__shared_weak_count::lock(v3), (v34 = v4) == 0) || (v33 = a1[5]) == 0)
  {
    v14 = xpc_null_create();
    v15 = a1[7];
    v35.__r_.__value_.__r.__words[0] = v14;
    v16 = xpc_null_create();
    (*(v15 + 16))(v15, 3760250880, &v35);
    xpc_release(v35.__r_.__value_.__l.__data_);
    xpc_release(v16);
    goto LABEL_18;
  }

  if (capabilities::radio::dal(v4))
  {
    v31 = 0xAAAAAAAAAAAAAAAALL;
    v32 = 0xAAAAAAAAAAAAAAAALL;
    (*(*v2 + 88))(&v31, v2);
    v5 = v31;
    if (v31)
    {
      v6 = operator new(0x28uLL);
      strcpy(v6, "com.apple.Baseband.Logging.Snapshot");
      v7 = *(v5 + 48);
      std::string::__init_copy_ctor_external(&v35, v6, 0x23uLL);
      (*(*v7 + 32))(v7, &v35);
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      operator delete(v6);
    }

    v8 = v32;
    if (v32 && !atomic_fetch_add((v32 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v9 = *MEMORY[0x29EDBED40];
  v10 = strlen(*MEMORY[0x29EDBED40]);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v10 | 7) + 1;
    }

    v12 = operator new(v18);
    __dst[1] = v11;
    v30 = v18 | 0x8000000000000000;
    __dst[0] = v12;
LABEL_26:
    memmove(v12, v9, v11);
    *(v11 + v12) = 0;
    v13 = a1[8];
    if (!v13)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  HIBYTE(v30) = v10;
  v12 = __dst;
  if (v10)
  {
    goto LABEL_26;
  }

  LOBYTE(__dst[0]) = 0;
  v13 = a1[8];
  if (!v13)
  {
    goto LABEL_29;
  }

LABEL_27:
  v19 = CFGetTypeID(v13);
  if (v19 == CFDictionaryGetTypeID())
  {
    cf = v13;
    CFRetain(v13);
    goto LABEL_30;
  }

LABEL_29:
  cf = 0;
LABEL_30:
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 1174405120;
  v24[2] = ___ZZZN12TraceManager16collectLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEEEUb0_ENK3__2clEv_block_invoke_2;
  v24[3] = &__block_descriptor_tmp_124;
  v20 = a1[7];
  if (!v20)
  {
    v22 = a1[8];
    v25 = 0;
    v26 = v22;
    if (!v22)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v21 = _Block_copy(v20);
  v22 = a1[8];
  v25 = v21;
  v26 = v22;
  if (v22)
  {
LABEL_34:
    CFRetain(v22);
  }

LABEL_35:
  aBlock = _Block_copy(v24);
  Service::broadcastEvent(v2, __dst, &cf, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(__dst[0]);
    v23 = v26;
    if (!v26)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v23 = v26;
  if (v26)
  {
LABEL_43:
    CFRelease(v23);
  }

LABEL_44:
  if (v25)
  {
    _Block_release(v25);
  }

LABEL_18:
  v17 = v34;
  if (v34)
  {
    if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }
}

void sub_2974EA0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (*(v21 - 49) < 0)
  {
    operator delete(*(v21 - 72));
  }

  operator delete(v20);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a20);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v21 - 88);
  _Unwind_Resume(a1);
}

void sub_2974EA128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *aBlock, const void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v22 + 40));
  if (a13)
  {
    _Block_release(a13);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a16);
  if (a22 < 0)
  {
    operator delete(__p);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v23 - 88);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v23 - 88);
  _Unwind_Resume(a1);
}

void ___ZZZN12TraceManager16collectLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEEEUb0_ENK3__2clEv_block_invoke_2(uint64_t a1, const void *a2)
{
  v4 = 0;
  ctu::cf_to_xpc(&object, *(a1 + 40), a2);
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::object>((a1 + 32), &v4, &object);
  xpc_release(object);
}

void dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::object>(uint64_t *a1, unsigned int *a2, void **a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  object = v5;
  if (v5 && MEMORY[0x29C272BA0](v5) == MEMORY[0x29EDCAA00])
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

CFTypeRef __copy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (!v4)
  {
    result = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = result;
    if (!result)
    {
      return result;
    }

    return CFRetain(result);
  }

  v5 = _Block_copy(v4);
  result = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 40) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }
}

CFTypeRef __copy_helper_block_e8_40c37_ZTSNSt3__18weak_ptrI12TraceManagerEE56c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE64c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[7];
  if (!v5)
  {
    result = a2[8];
    a1[7] = 0;
    a1[8] = result;
    if (!result)
    {
      return result;
    }

    return CFRetain(result);
  }

  v6 = _Block_copy(v5);
  result = a2[8];
  a1[7] = v6;
  a1[8] = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c37_ZTSNSt3__18weak_ptrI12TraceManagerEE56c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE64c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI12TraceManagerE15execute_wrappedIZZNS3_24collectBasebandLogs_syncEN3xpc4dictENS_5blockIU13block_pointerFviS7_EEEEUb1_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSI_14default_deleteISD_EEEEENUlPvE_8__invokeESN_(uint64_t *a1)
{
  v1 = *a1;
  v33 = v1;
  v2 = *v1;
  v3 = *(*v1 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Snapshot of baseband trace complete", buf, 2u);
  }

  v4 = (v1 + 8);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v51 = v5;
  v52 = v5;
  if (*(v1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v6 = *v4;
    *&v52 = *(v1 + 24);
    v51 = v6;
  }

  v7 = *(v1 + 32);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  *(&v52 + 1) = v7;
  if (!*(v1 + 40))
  {
    _ZZZZN12TraceManager24collectBasebandLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEEEUb1_ENK3__3clEvENKUlvE_clEv(&v51);
    goto LABEL_66;
  }

  v49 = 0xAAAAAAAAAAAAAAAALL;
  v50 = 0xAAAAAAAAAAAAAAAALL;
  *buf = MEMORY[0x29EDCA5F8];
  v40 = 1174405120;
  v41 = ___ZZZN12TraceManager24collectBasebandLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEEEUb1_ENK3__3clEv_block_invoke;
  v42 = &__block_descriptor_tmp_126;
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v43 = v2;
  v44 = v9;
  v45 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(v1 + 32);
  if (v10)
  {
    v10 = _Block_copy(v10);
  }

  v46 = v10;
  if (SBYTE7(v52) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v51, *(&v51 + 1));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = v51;
    __p.__r_.__value_.__r.__words[2] = v52;
  }

  v11 = *(&v52 + 1);
  if (*(&v52 + 1))
  {
    v11 = _Block_copy(*(&v52 + 1));
  }

  v48 = v11;
  v12 = _Block_copy(buf);
  v13 = *(v2 + 88);
  if (v13)
  {
    dispatch_retain(v13);
  }

  v49 = v12;
  v50 = v13;
  v14 = xpc_dictionary_create(0, 0, 0);
  if (v14 || (v14 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v14) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v14);
      v15 = v14;
    }

    else
    {
      v15 = xpc_null_create();
    }
  }

  else
  {
    v15 = xpc_null_create();
    v14 = 0;
  }

  xpc_release(v14);
  if (*(v1 + 31) < 0)
  {
    v4 = *v4;
  }

  v16 = xpc_string_create(v4);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, *MEMORY[0x29EDBD3B0], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = (v1 + 64);
  if (*(v1 + 87) < 0)
  {
    v18 = *v18;
  }

  v19 = xpc_string_create(v18);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, *MEMORY[0x29EDBD3C8], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  v21 = xpc_int64_create(*(v1 + 40));
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, *MEMORY[0x29EDBD4A0], v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = xpc_BOOL_create(*(v1 + 88));
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, *MEMORY[0x29EDBD340], v23);
  v24 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v24);
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  abm::HelperClient::create(&v37, "tracing.helper", v25);
  v36 = v15;
  if (!v15)
  {
    v36 = xpc_null_create();
    v26 = v49;
    if (!v49)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  xpc_retain(v15);
  v26 = v49;
  if (v49)
  {
LABEL_43:
    v26 = _Block_copy(v26);
  }

LABEL_44:
  v27 = *MEMORY[0x29EDBD3D8];
  aBlock = v26;
  object = v50;
  if (v50)
  {
    dispatch_retain(v50);
  }

  abm::HelperClient::perform();
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v36);
  v36 = 0;
  v28 = v38;
  if (v38 && !atomic_fetch_add((v38 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  xpc_release(v15);
  if (v50)
  {
    dispatch_release(v50);
  }

  if (v49)
  {
    _Block_release(v49);
  }

  if (v48)
  {
    _Block_release(v48);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v29 = v46;
    if (!v46)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v29 = v46;
  if (v46)
  {
LABEL_63:
    _Block_release(v29);
  }

LABEL_64:
  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

LABEL_66:
  if (*(&v52 + 1))
  {
    _Block_release(*(&v52 + 1));
  }

  if (SBYTE7(v52) < 0)
  {
    operator delete(v51);
  }

  _ZNSt3__110unique_ptrIZZN12TraceManager24collectBasebandLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS3_EEEEUb1_E3__3NS_14default_deleteIS9_EEED1B8ne200100Ev(&v33);
  v30 = a1;
  if (a1)
  {
    v31 = a1[2];
    if (v31)
    {
      if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
        v30 = a1;
      }
    }

    operator delete(v30);
  }
}