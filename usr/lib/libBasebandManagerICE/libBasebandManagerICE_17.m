void sub_29754FCB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::setAudioState(xpc::dict)::$_0>(antenna::Service::Internal::setAudioState(xpc::dict)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::setAudioState(xpc::dict)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::setAudioState(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke(xpc_object_t **a1)
{
  v1 = *a1;
  v82 = *a1;
  v2 = **a1;
  if (!*(v2 + 60))
  {
    xdict = 0xAAAAAAAAAAAAAAAALL;
    v3 = *MEMORY[0x29EDBE6B0];
    object = v1 + 1;
    v84 = v3;
    xpc::dict::object_proxy::operator xpc::dict(&object, &xdict);
    value = xpc_dictionary_get_value(xdict, *MEMORY[0x29EDBEED0]);
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    v5 = xpc::dyn_cast_or_default(&object, 0);
    v7 = v2 + 25;
    v6 = v2[25];
    v8 = v2 + 25;
    v9 = v2 + 25;
    if (v6)
    {
      while (1)
      {
        while (1)
        {
          v9 = v6;
          v10 = *(v6 + 28);
          if (v10 < 1)
          {
            break;
          }

          v6 = *v9;
          v8 = v9;
          if (!*v9)
          {
            goto LABEL_12;
          }
        }

        if ((v10 & 0x80000000) == 0)
        {
          break;
        }

        v6 = v9[1];
        if (!v6)
        {
          v8 = v9 + 1;
          goto LABEL_12;
        }
      }

      v11 = v9;
    }

    else
    {
LABEL_12:
      v11 = operator new(0x28uLL);
      v11[7] = 0;
      *(v11 + 32) = 0;
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 2) = v9;
      *v8 = v11;
      v12 = *v2[24];
      if (v12)
      {
        v2[24] = v12;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[25], v11);
      ++v2[26];
    }

    *(v11 + 32) = v5;
    xpc_release(object);
    v13 = xpc_dictionary_get_value(xdict, *MEMORY[0x29EDBEAF0]);
    object = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      object = xpc_null_create();
    }

    v14 = xpc::dyn_cast_or_default(&object, 0);
    v15 = *v7;
    v16 = v2 + 25;
    v17 = v2 + 25;
    if (*v7)
    {
      while (1)
      {
        while (1)
        {
          v17 = v15;
          v18 = *(v15 + 28);
          if (v18 < 2)
          {
            break;
          }

          v15 = *v17;
          v16 = v17;
          if (!*v17)
          {
            goto LABEL_25;
          }
        }

        if (v18 == 1)
        {
          break;
        }

        v15 = v17[1];
        if (!v15)
        {
          v16 = v17 + 1;
          goto LABEL_25;
        }
      }

      v19 = v17;
    }

    else
    {
LABEL_25:
      v19 = operator new(0x28uLL);
      v19[7] = 1;
      *(v19 + 32) = 0;
      *v19 = 0;
      *(v19 + 1) = 0;
      *(v19 + 2) = v17;
      *v16 = v19;
      v20 = *v2[24];
      if (v20)
      {
        v2[24] = v20;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[25], v19);
      ++v2[26];
    }

    *(v19 + 32) = v14;
    xpc_release(object);
    v21 = xpc_dictionary_get_value(xdict, *MEMORY[0x29EDBED70]);
    object = v21;
    if (v21)
    {
      xpc_retain(v21);
    }

    else
    {
      object = xpc_null_create();
    }

    v22 = xpc::dyn_cast_or_default(&object, 0);
    v23 = *v7;
    v24 = v2 + 25;
    v25 = v2 + 25;
    if (*v7)
    {
      while (1)
      {
        while (1)
        {
          v25 = v23;
          v26 = *(v23 + 28);
          if (v26 < 4)
          {
            break;
          }

          v23 = *v25;
          v24 = v25;
          if (!*v25)
          {
            goto LABEL_39;
          }
        }

        if (v26 == 3)
        {
          break;
        }

        v23 = v25[1];
        if (!v23)
        {
          v24 = v25 + 1;
          goto LABEL_39;
        }
      }

      v27 = v25;
    }

    else
    {
LABEL_39:
      v27 = operator new(0x28uLL);
      v27[7] = 3;
      *(v27 + 32) = 0;
      *v27 = 0;
      *(v27 + 1) = 0;
      *(v27 + 2) = v25;
      *v24 = v27;
      v28 = *v2[24];
      if (v28)
      {
        v2[24] = v28;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[25], v27);
      ++v2[26];
    }

    *(v27 + 32) = v22;
    xpc_release(object);
    v29 = *v7;
    v30 = v2 + 25;
    v31 = v2 + 25;
    if (*v7)
    {
      while (1)
      {
        while (1)
        {
          v31 = v29;
          v32 = *(v29 + 7);
          if (v32 < 1)
          {
            break;
          }

          v29 = *v31;
          v30 = v31;
          if (!*v31)
          {
            goto LABEL_50;
          }
        }

        if ((v32 & 0x80000000) == 0)
        {
          break;
        }

        v29 = v31[1];
        if (!v29)
        {
          v30 = v31 + 1;
          goto LABEL_50;
        }
      }

      v35 = *(v31 + 32);
      v37 = v2 + 28;
      v36 = v2[28];
      v38 = v2 + 28;
      v39 = v2 + 28;
      if (v36)
      {
        goto LABEL_58;
      }
    }

    else
    {
LABEL_50:
      v33 = operator new(0x28uLL);
      v33[7] = 0;
      *(v33 + 32) = 0;
      *v33 = 0;
      *(v33 + 1) = 0;
      *(v33 + 2) = v31;
      *v30 = v33;
      v34 = *v2[24];
      if (v34)
      {
        v2[24] = v34;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[25], v33);
      ++v2[26];
      v35 = *(v33 + 32);
      v37 = v2 + 28;
      v36 = v2[28];
      v38 = v2 + 28;
      v39 = v2 + 28;
      if (v36)
      {
        while (1)
        {
LABEL_58:
          while (1)
          {
            v39 = v36;
            v40 = *(v36 + 7);
            if (v40 < 1)
            {
              break;
            }

            v36 = *v39;
            v38 = v39;
            if (!*v39)
            {
              goto LABEL_62;
            }
          }

          if ((v40 & 0x80000000) == 0)
          {
            break;
          }

          v36 = v39[1];
          if (!v36)
          {
            v38 = v39 + 1;
            goto LABEL_62;
          }
        }

        *(v39 + 32) = v35;
        v43 = *v7;
        v44 = v2 + 25;
        v45 = v2 + 25;
        if (*v7)
        {
          goto LABEL_69;
        }

        goto LABEL_73;
      }
    }

LABEL_62:
    v41 = operator new(0x28uLL);
    v41[7] = 0;
    *(v41 + 32) = 0;
    *v41 = 0;
    *(v41 + 1) = 0;
    *(v41 + 2) = v39;
    *v38 = v41;
    v42 = *v2[27];
    if (v42)
    {
      v2[27] = v42;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[28], v41);
    ++v2[29];
    *(v41 + 32) = v35;
    v43 = *v7;
    v44 = v2 + 25;
    v45 = v2 + 25;
    if (*v7)
    {
      while (1)
      {
LABEL_69:
        while (1)
        {
          v45 = v43;
          v46 = *(v43 + 7);
          if (v46 < 2)
          {
            break;
          }

          v43 = *v45;
          v44 = v45;
          if (!*v45)
          {
            goto LABEL_73;
          }
        }

        if (v46 == 1)
        {
          break;
        }

        v43 = v45[1];
        if (!v43)
        {
          v44 = v45 + 1;
          goto LABEL_73;
        }
      }

      v49 = *(v45 + 32);
      v50 = *v37;
      v51 = v37;
      v52 = v37;
      if (*v37)
      {
        goto LABEL_80;
      }

      goto LABEL_84;
    }

LABEL_73:
    v47 = operator new(0x28uLL);
    v47[7] = 1;
    *(v47 + 32) = 0;
    *v47 = 0;
    *(v47 + 1) = 0;
    *(v47 + 2) = v45;
    *v44 = v47;
    v48 = *v2[24];
    if (v48)
    {
      v2[24] = v48;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[25], v47);
    ++v2[26];
    v49 = *(v47 + 32);
    v50 = *v37;
    v51 = v37;
    v52 = v37;
    if (*v37)
    {
      while (1)
      {
LABEL_80:
        while (1)
        {
          v52 = v50;
          v53 = *(v50 + 28);
          if (v53 < 2)
          {
            break;
          }

          v50 = *v52;
          v51 = v52;
          if (!*v52)
          {
            goto LABEL_84;
          }
        }

        if (v53 == 1)
        {
          break;
        }

        v50 = v52[1];
        if (!v50)
        {
          v51 = v52 + 1;
          goto LABEL_84;
        }
      }

      *(v52 + 32) = v49;
      v56 = *v7;
      v57 = v2 + 25;
      if (*v7)
      {
        goto LABEL_91;
      }

      goto LABEL_95;
    }

LABEL_84:
    v54 = operator new(0x28uLL);
    v54[7] = 1;
    *(v54 + 32) = 0;
    *v54 = 0;
    *(v54 + 1) = 0;
    *(v54 + 2) = v52;
    *v51 = v54;
    v55 = *v2[27];
    if (v55)
    {
      v2[27] = v55;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[28], v54);
    ++v2[29];
    *(v54 + 32) = v49;
    v56 = *v7;
    v57 = v2 + 25;
    if (*v7)
    {
      while (1)
      {
LABEL_91:
        while (1)
        {
          v57 = v56;
          v58 = *(v56 + 7);
          if (v58 < 4)
          {
            break;
          }

          v56 = *v57;
          v7 = v57;
          if (!*v57)
          {
            goto LABEL_95;
          }
        }

        if (v58 == 3)
        {
          break;
        }

        v56 = v57[1];
        if (!v56)
        {
          v7 = v57 + 1;
          goto LABEL_95;
        }
      }

      v61 = *(v57 + 32);
      v62 = *v37;
      v63 = v37;
      if (*v37)
      {
        goto LABEL_102;
      }

      goto LABEL_106;
    }

LABEL_95:
    v59 = operator new(0x28uLL);
    v59[7] = 3;
    *(v59 + 32) = 0;
    *v59 = 0;
    *(v59 + 1) = 0;
    *(v59 + 2) = v57;
    *v7 = v59;
    v60 = *v2[24];
    if (v60)
    {
      v2[24] = v60;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[25], v59);
    ++v2[26];
    v61 = *(v59 + 32);
    v62 = *v37;
    v63 = v37;
    if (*v37)
    {
      while (1)
      {
LABEL_102:
        while (1)
        {
          v63 = v62;
          v64 = *(v62 + 28);
          if (v64 < 4)
          {
            break;
          }

          v62 = *v63;
          v37 = v63;
          if (!*v63)
          {
            goto LABEL_106;
          }
        }

        if (v64 == 3)
        {
          break;
        }

        v62 = v63[1];
        if (!v62)
        {
          v37 = v63 + 1;
          goto LABEL_106;
        }
      }

      v65 = v63;
      goto LABEL_110;
    }

LABEL_106:
    v65 = operator new(0x28uLL);
    v65[7] = 3;
    *(v65 + 32) = 0;
    *v65 = 0;
    *(v65 + 1) = 0;
    *(v65 + 2) = v63;
    *v37 = v65;
    v66 = *v2[27];
    if (v66)
    {
      v2[27] = v66;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[28], v65);
    ++v2[29];
LABEL_110:
    *(v65 + 32) = v61;
    xpc_release(xdict);
  }

  v68 = v2 + 25;
  v67 = v2[25];
  if (v67)
  {
    while (1)
    {
      while (1)
      {
        v69 = v67;
        v70 = *(v67 + 28);
        if (v70 < 3)
        {
          break;
        }

        v67 = *v69;
        v68 = v69;
        if (!*v69)
        {
          goto LABEL_118;
        }
      }

      if (v70 == 2)
      {
        break;
      }

      v67 = v69[1];
      if (!v67)
      {
        v68 = v69 + 1;
        goto LABEL_118;
      }
    }

    v71 = v69;
  }

  else
  {
    v69 = v2 + 25;
LABEL_118:
    v71 = operator new(0x28uLL);
    v71[7] = 2;
    *(v71 + 32) = 0;
    *v71 = 0;
    *(v71 + 1) = 0;
    *(v71 + 2) = v69;
    *v68 = v71;
    v72 = *v2[24];
    if (v72)
    {
      v2[24] = v72;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[25], v71);
    ++v2[26];
  }

  *(v71 + 32) = 0;
  pthread_mutex_lock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  v73 = unk_2A18CAF68;
  if (!unk_2A18CAF68)
  {
    v74 = operator new(1uLL);
    v75 = operator new(0x20uLL);
    *v75 = &unk_2A1E4FD98;
    v75[1] = 0;
    v75[2] = 0;
    v75[3] = v74;
    v76 = off_2A18CAF70;
    unk_2A18CAF68 = v74;
    off_2A18CAF70 = v75;
    if (v76 && !atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v76->__on_zero_shared)(v76);
      std::__shared_weak_count::__release_weak(v76);
    }

    v73 = unk_2A18CAF68;
  }

  v77 = off_2A18CAF70;
  object = v73;
  v84 = off_2A18CAF70;
  if (off_2A18CAF70)
  {
    atomic_fetch_add_explicit(off_2A18CAF70 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  if (Capabilities::isCMHandDetectionSupported(v73))
  {
    v78 = *(v2 + 128);
    if (!v77 || atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v78)
      {
        goto LABEL_138;
      }

      goto LABEL_133;
    }

    (v77->__on_zero_shared)(v77);
    std::__shared_weak_count::__release_weak(v77);
    if (v78)
    {
LABEL_133:
      antenna::Service::Internal::processHandDetection_sync(v2);
    }
  }

  else if (v77 && !atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v77->__on_zero_shared)(v77);
    std::__shared_weak_count::__release_weak(v77);
  }

LABEL_138:
  if (v82)
  {
    xpc_release(v82[1]);
    operator delete(v82);
  }

  v79 = a1;
  if (a1)
  {
    v80 = a1[2];
    if (v80)
    {
      if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v80->__on_zero_shared)(v80);
        std::__shared_weak_count::__release_weak(v80);
        v79 = a1;
      }
    }

    operator delete(v79);
  }
}

void sub_297550744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t a12, uint64_t a13, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<antenna::Service::Internal::setAudioState(xpc::dict)::$_0,std::default_delete<antenna::Service::Internal::setAudioState(xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **std::unique_ptr<antenna::Service::Internal::setAudioState(xpc::dict)::$_0,std::default_delete<antenna::Service::Internal::setAudioState(xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](xpc_object_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(v1[1]);
    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::handDetectCallback(CMHandDetectionDelegate::CMHandDetectionResult)::$_0>(antenna::Service::Internal::handDetectCallback(CMHandDetectionDelegate::CMHandDetectionResult)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::handDetectCallback(CMHandDetectionDelegate::CMHandDetectionResult)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::handDetectCallback(CMHandDetectionDelegate::CMHandDetectionResult)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(v2 + 2);
    *buf = 67109120;
    v9 = v7;
    _os_log_debug_impl(&dword_297476000, v4, OS_LOG_TYPE_DEBUG, "#D Hand Detection State: %d", buf, 8u);
  }

  *(v3 + 432) = *(v2 + 2);
  antenna::Service::Internal::processHandDetection_sync(v3);
  operator delete(v2);
  v5 = a1[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_2975509B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::antennaSetProperty(xpc::dict const&)::$_0>(antenna::Service::Internal::antennaSetProperty(xpc::dict const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::antennaSetProperty(xpc::dict const&)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::antennaSetProperty(xpc::dict const&)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v125 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v117 = *a1;
  v2 = **a1;
  v3 = *(v2 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(v124, (v1 + 1));
    v4 = (v124[23] & 0x80u) == 0 ? v124 : *v124;
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v4;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Set Property: %s", &buf, 0xCu);
    if (v124[23] < 0)
    {
      operator delete(*v124);
    }
  }

  memset(&buf, 170, sizeof(buf));
  v6 = v1[1];
  v5 = (v1 + 1);
  value = xpc_dictionary_get_value(v6, *MEMORY[0x29EDBED18]);
  *v124 = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *v124 = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&buf, v124, "", v8);
  xpc_release(*v124);
  v9 = strlen(*MEMORY[0x29EDBEFD0]);
  v10 = v9;
  v11 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v9 != -1)
    {
      p_buf = &buf;
      size = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      goto LABEL_15;
    }

LABEL_222:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v9 == -1)
  {
    goto LABEL_222;
  }

  size = buf.__r_.__value_.__l.__size_;
  p_buf = buf.__r_.__value_.__r.__words[0];
LABEL_15:
  if (size >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = size;
  }

  if (memcmp(p_buf, *MEMORY[0x29EDBEFD0], v14) || size != v10)
  {
    v16 = *MEMORY[0x29EDBE978];
    v17 = strlen(*MEMORY[0x29EDBE978]);
    v18 = v17;
    if ((v11 & 0x80000000) != 0)
    {
      if (v17 != -1)
      {
        v19 = buf.__r_.__value_.__l.__size_;
        if (buf.__r_.__value_.__l.__size_ >= v17)
        {
          v22 = v17;
        }

        else
        {
          v22 = buf.__r_.__value_.__l.__size_;
        }

        if (memcmp(buf.__r_.__value_.__l.__data_, v16, v22))
        {
          goto LABEL_40;
        }

        goto LABEL_36;
      }
    }

    else if (v17 != -1)
    {
      v19 = v11;
      if (v11 >= v17)
      {
        v20 = v17;
      }

      else
      {
        v20 = v11;
      }

      if (memcmp(&buf, v16, v20))
      {
        goto LABEL_40;
      }

LABEL_36:
      if (v19 == v18)
      {
        v23 = *MEMORY[0x29EDBEA98];
        if (xpc_dictionary_get_value(*v5, *MEMORY[0x29EDBEA98]))
        {
          v24 = xpc_dictionary_get_value(*v5, v23);
          *v124 = v24;
          if (v24)
          {
            xpc_retain(v24);
          }

          else
          {
            *v124 = xpc_null_create();
          }

          antenna::Service::Internal::setTxPowerCappingIPhoneOverrideFreeSpace_sync(v2, v124);
          xpc_release(*v124);
          goto LABEL_206;
        }

        v30 = *(v2 + 32);
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_206;
        }

        *v124 = 0;
        v31 = "Cannot find command data!";
        goto LABEL_112;
      }

LABEL_40:
      v25 = *MEMORY[0x29EDBEBA0];
      v26 = strlen(*MEMORY[0x29EDBEBA0]);
      v27 = v26;
      if ((v11 & 0x80000000) != 0)
      {
        if (v26 != -1)
        {
          v28 = buf.__r_.__value_.__l.__size_;
          if (buf.__r_.__value_.__l.__size_ >= v26)
          {
            v32 = v26;
          }

          else
          {
            v32 = buf.__r_.__value_.__l.__size_;
          }

          if (memcmp(buf.__r_.__value_.__l.__data_, v25, v32))
          {
            goto LABEL_57;
          }

          goto LABEL_54;
        }
      }

      else if (v26 != -1)
      {
        v28 = v11;
        if (v11 >= v26)
        {
          v29 = v26;
        }

        else
        {
          v29 = v11;
        }

        if (memcmp(&buf, v25, v29))
        {
          goto LABEL_57;
        }

LABEL_54:
        if (v28 == v27)
        {
          v33 = *MEMORY[0x29EDBEA98];
          if (xpc_dictionary_get_value(*v5, *MEMORY[0x29EDBEA98]))
          {
            *v124 = v5;
            *&v124[8] = v33;
            xpc::dict::object_proxy::operator xpc::dict(v124, object);
            antenna::Service::Internal::setTxPowerAudioMode_sync(v2, object);
            xpc_release(object[0]);
            goto LABEL_206;
          }

          v30 = *(v2 + 32);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *v124 = 0;
            v31 = "Cannot find command data!";
            goto LABEL_112;
          }

          goto LABEL_206;
        }

LABEL_57:
        v34 = *MEMORY[0x29EDBED08];
        v35 = strlen(*MEMORY[0x29EDBED08]);
        v36 = v35;
        if ((v11 & 0x80000000) != 0)
        {
          if (v35 != -1)
          {
            v37 = buf.__r_.__value_.__l.__size_;
            if (buf.__r_.__value_.__l.__size_ >= v35)
            {
              v39 = v35;
            }

            else
            {
              v39 = buf.__r_.__value_.__l.__size_;
            }

            if (memcmp(buf.__r_.__value_.__l.__data_, v34, v39))
            {
              goto LABEL_76;
            }

            goto LABEL_73;
          }
        }

        else if (v35 != -1)
        {
          v37 = v11;
          if (v11 >= v35)
          {
            v38 = v35;
          }

          else
          {
            v38 = v11;
          }

          if (memcmp(&buf, v34, v38))
          {
            goto LABEL_76;
          }

LABEL_73:
          if (v37 == v36)
          {
            v40 = *MEMORY[0x29EDBEA98];
            if (xpc_dictionary_get_value(*v5, *MEMORY[0x29EDBEA98]))
            {
              *v124 = v5;
              *&v124[8] = v40;
              xpc::dict::object_proxy::operator xpc::dict(v124, object);
              antenna::Service::Internal::setTxPowerAudioAlert_sync(v2, object);
              xpc_release(object[0]);
              goto LABEL_206;
            }

            v30 = *(v2 + 32);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *v124 = 0;
              v31 = "Cannot find command data!";
              goto LABEL_112;
            }

            goto LABEL_206;
          }

LABEL_76:
          v41 = *MEMORY[0x29EDBF530];
          v42 = strlen(*MEMORY[0x29EDBF530]);
          v43 = v42;
          if ((v11 & 0x80000000) != 0)
          {
            if (v42 != -1)
            {
              v44 = buf.__r_.__value_.__l.__size_;
              if (buf.__r_.__value_.__l.__size_ >= v42)
              {
                v46 = v42;
              }

              else
              {
                v46 = buf.__r_.__value_.__l.__size_;
              }

              if (memcmp(buf.__r_.__value_.__l.__data_, v41, v46))
              {
                goto LABEL_93;
              }

              goto LABEL_90;
            }
          }

          else if (v42 != -1)
          {
            v44 = v11;
            if (v11 >= v42)
            {
              v45 = v42;
            }

            else
            {
              v45 = v11;
            }

            if (memcmp(&buf, v41, v45))
            {
              goto LABEL_93;
            }

LABEL_90:
            if (v44 == v43)
            {
              v47 = *MEMORY[0x29EDBEA98];
              if (xpc_dictionary_get_value(*v5, *MEMORY[0x29EDBEA98]))
              {
                *v124 = v5;
                *&v124[8] = v47;
                xpc::dict::object_proxy::operator xpc::dict(v124, object);
                antenna::Service::Internal::setTxPowerMotionMode_sync(v2, object);
                xpc_release(object[0]);
                goto LABEL_206;
              }

              v30 = *(v2 + 32);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *v124 = 0;
                v31 = "Cannot find command data!";
                goto LABEL_112;
              }

              goto LABEL_206;
            }

LABEL_93:
            v48 = strlen(*MEMORY[0x29EDBF558]);
            v49 = v48;
            if ((v11 & 0x80000000) != 0)
            {
              if (v48 != -1)
              {
                v51 = buf.__r_.__value_.__l.__size_;
                v50 = buf.__r_.__value_.__r.__words[0];
LABEL_100:
                if (v51 >= v49)
                {
                  v52 = v49;
                }

                else
                {
                  v52 = v51;
                }

                if (!memcmp(v50, *MEMORY[0x29EDBF558], v52) && v51 == v49)
                {
                  object[0] = 0xAAAAAAAAAAAAAAAALL;
                  v53 = *MEMORY[0x29EDBEA98];
                  *v124 = v5;
                  *&v124[8] = v53;
                  xpc::dict::object_proxy::operator xpc::dict(v124, object);
                  v54 = xpc_dictionary_get_value(*v5, *MEMORY[0x29EDBE720]);
                  p_xdict = v54;
                  if (v54)
                  {
                    xpc_retain(v54);
                  }

                  else
                  {
                    p_xdict = xpc_null_create();
                  }

                  v68 = *MEMORY[0x29EDBF878];
                  xpc::dyn_cast_or_default(v124, &p_xdict, *MEMORY[0x29EDBF878], v55);
                  if (*(v2 + 327) < 0)
                  {
                    operator delete(*(v2 + 304));
                  }

                  *(v2 + 304) = *v124;
                  *(v2 + 320) = *&v124[16];
                  v124[23] = 0;
                  v124[0] = 0;
                  xpc_release(p_xdict);
                  v69 = xpc_dictionary_get_value(*v5, *MEMORY[0x29EDBE960]);
                  p_xdict = v69;
                  if (v69)
                  {
                    xpc_retain(v69);
                  }

                  else
                  {
                    p_xdict = xpc_null_create();
                  }

                  xpc::dyn_cast_or_default(v124, &p_xdict, v68, v70);
                  v71 = (v2 + 328);
                  if (*(v2 + 351) < 0)
                  {
                    operator delete(*v71);
                  }

                  *v71 = *v124;
                  *(v2 + 344) = *&v124[16];
                  v124[23] = 0;
                  v124[0] = 0;
                  xpc_release(p_xdict);
                  antenna::Service::Internal::sendAccessoryStatus_sync(v2);
                  xpc_release(object[0]);
                  goto LABEL_206;
                }

                v56 = strlen(*MEMORY[0x29EDBF2F0]);
                v57 = v56;
                if ((v11 & 0x80000000) != 0)
                {
                  if (v56 != -1)
                  {
                    v59 = buf.__r_.__value_.__l.__size_;
                    v58 = buf.__r_.__value_.__r.__words[0];
LABEL_116:
                    if (v59 >= v57)
                    {
                      v62 = v57;
                    }

                    else
                    {
                      v62 = v59;
                    }

                    if (!memcmp(v58, *MEMORY[0x29EDBF2F0], v62) && v59 == v57)
                    {
                      v63 = xpc_dictionary_get_value(*v5, *MEMORY[0x29EDBEA98]);
                      *v124 = v63;
                      if (v63)
                      {
                        xpc_retain(v63);
                      }

                      else
                      {
                        *v124 = xpc_null_create();
                      }

                      xpc::dyn_cast_or_default(v124, 0);
                      xpc_release(*v124);
                      if (!*(v2 + 528))
                      {
                        antenna::Service::Internal::configTxPower_sync(v2, 2u);
                      }

                      goto LABEL_206;
                    }

                    v64 = strlen(*MEMORY[0x29EDBF5B0]);
                    v65 = v64;
                    if ((v11 & 0x80000000) != 0)
                    {
                      if (v64 != -1)
                      {
                        v67 = buf.__r_.__value_.__l.__size_;
                        v66 = buf.__r_.__value_.__r.__words[0];
LABEL_137:
                        if (v67 >= v65)
                        {
                          v72 = v65;
                        }

                        else
                        {
                          v72 = v67;
                        }

                        if (!memcmp(v66, *MEMORY[0x29EDBF5B0], v72) && v67 == v65)
                        {
                          if (*(v2 + 388))
                          {
                            v73 = *(v2 + 32);
                            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                            {
                              *v124 = 0;
                              _os_log_impl(&dword_297476000, v73, OS_LOG_TYPE_DEFAULT, "#I Ignore to set CLTM/PPM since overriding is being used.", v124, 2u);
                            }
                          }

                          else
                          {
                            v77 = *MEMORY[0x29EDBEA98];
                            *v124 = v5;
                            *&v124[8] = v77;
                            xpc::dict::object_proxy::operator xpc::dict(v124, object);
                            antenna::Service::Internal::setMaxPower_sync(v2, object);
                            xpc_release(object[0]);
                          }

                          goto LABEL_206;
                        }

                        v74 = strlen(*MEMORY[0x29EDBECA0]);
                        v75 = v74;
                        if ((v11 & 0x80000000) != 0)
                        {
                          if (v74 != -1)
                          {
                            v11 = buf.__r_.__value_.__l.__size_;
                            v76 = buf.__r_.__value_.__r.__words[0];
                            goto LABEL_154;
                          }
                        }

                        else if (v74 != -1)
                        {
                          v76 = &buf;
LABEL_154:
                          if (v11 >= v75)
                          {
                            v78 = v75;
                          }

                          else
                          {
                            v78 = v11;
                          }

                          if (!memcmp(v76, *MEMORY[0x29EDBECA0], v78) && v11 == v75)
                          {
                            memset(object, 170, 24);
                            v79 = *MEMORY[0x29EDBEA98];
                            p_xdict = v5;
                            v120 = v79;
                            xpc::dict::object_proxy::operator xpc::object(&p_xdict, &xdict);
                            memset(v124, 0, sizeof(v124));
                            xpc::dyn_cast_or_default();
                            if (v124[23] < 0)
                            {
                              operator delete(*v124);
                            }

                            xpc_release(xdict);
                            v80 = SHIBYTE(object[2]);
                            v81 = object[0];
                            if (SHIBYTE(object[2]) >= 0)
                            {
                              v82 = object;
                            }

                            else
                            {
                              v82 = object[0];
                            }

                            v83 = strlen(*MEMORY[0x29EDBEA78]);
                            *(v2 + 396) = strncasecmp(v82, *MEMORY[0x29EDBEA78], v83) == 0;
                            if (v80 < 0)
                            {
                              operator delete(v81);
                            }

                            goto LABEL_206;
                          }

                          if (std::string::compare(&buf, *MEMORY[0x29EDBF528]))
                          {
                            if (std::string::compare(&buf, *MEMORY[0x29EDBF510]))
                            {
                              if (std::string::compare(&buf, *MEMORY[0x29EDBF5A8]))
                              {
                                if (!std::string::compare(&buf, *MEMORY[0x29EDBE4F0]))
                                {
                                  xdict = 0xAAAAAAAAAAAAAAAALL;
                                  v84 = *MEMORY[0x29EDBEA98];
                                  *v124 = v5;
                                  *&v124[8] = v84;
                                  xpc::dict::object_proxy::operator xpc::dict(v124, &xdict);
                                  memset(v124, 170, sizeof(v124));
                                  std::string::basic_string[abi:ne200100]<0>(v124, "");
                                  v85 = *MEMORY[0x29EDBF1D8];
                                  if (xpc_dictionary_get_value(xdict, *MEMORY[0x29EDBF1D8]))
                                  {
                                    p_xdict = &xdict;
                                    v120 = v85;
                                    xpc::dict::object_proxy::operator xpc::object(&p_xdict, &v118);
                                    xpc::dyn_cast_or_default(object, &v118, "", v86);
                                    if (v124[23] < 0)
                                    {
                                      operator delete(*v124);
                                    }

                                    *v124 = *object;
                                    *&v124[16] = object[2];
                                    HIBYTE(object[2]) = 0;
                                    LOBYTE(object[0]) = 0;
                                    xpc_release(v118);
                                    if ((v124[23] & 0x80u) == 0)
                                    {
                                      v87 = v124;
                                    }

                                    else
                                    {
                                      v87 = *v124;
                                    }

                                    v88 = strlen(*MEMORY[0x29EDBE4E8]);
                                    *(v2 + 388) = strncmp(v87, *MEMORY[0x29EDBE4E8], v88) == 0;
                                  }

                                  antenna::Service::Internal::setMaxPower_sync(v2, &xdict);
                                  if (v124[23] < 0)
                                  {
                                    operator delete(*v124);
                                  }

                                  xpc_release(xdict);
                                }

                                goto LABEL_206;
                              }

                              if (*(v2 + 85) == 1)
                              {
                                v93 = *MEMORY[0x29EDBEA98];
                                object[0] = v5;
                                object[1] = v93;
                                xpc::dict::object_proxy::operator xpc::object(object, &p_xdict);
                                v94 = *MEMORY[0x29EDBF878];
                                xpc::dyn_cast_or_default(v124, &p_xdict, *MEMORY[0x29EDBF878], v95);
                                v96 = (v2 + 504);
                                if (*(v2 + 527) < 0)
                                {
                                  operator delete(*v96);
                                }

                                *v96 = *v124;
                                *(v2 + 520) = *&v124[16];
                                v124[23] = 0;
                                v124[0] = 0;
                                xpc_release(p_xdict);
                                if (*(v2 + 527) < 0)
                                {
                                  v96 = *v96;
                                }

                                v97 = strlen(v94);
                                v98 = strncasecmp(v96, v94, v97);
                                if (v98)
                                {
                                  v99 = *MEMORY[0x29EDBF820];
                                  *v124 = v5;
                                  *&v124[8] = v99;
                                  xpc::dict::object_proxy::operator xpc::object(v124, object);
                                  v100 = xpc::dyn_cast_or_default(object, 0);
                                  *std::map<unsigned int,unsigned int>::operator[]((v2 + 480), 1u) = v100;
                                  xpc_release(object[0]);
                                  v101 = *MEMORY[0x29EDBF7D8];
                                  *v124 = v5;
                                  *&v124[8] = v101;
                                  xpc::dict::object_proxy::operator xpc::object(v124, object);
                                  v102 = xpc::dyn_cast_or_default(object, 0);
                                  *std::map<unsigned int,unsigned int>::operator[]((v2 + 480), 2u) = v102;
                                  xpc_release(object[0]);
                                  v103 = *MEMORY[0x29EDBF610];
                                  *v124 = v5;
                                  *&v124[8] = v103;
                                  xpc::dict::object_proxy::operator xpc::object(v124, object);
                                  v104 = xpc::dyn_cast_or_default(object, 0);
                                  *std::map<unsigned int,unsigned int>::operator[]((v2 + 480), 3u) = v104;
                                  xpc_release(object[0]);
                                  v105 = *MEMORY[0x29EDBF608];
                                  *v124 = v5;
                                  *&v124[8] = v105;
                                  xpc::dict::object_proxy::operator xpc::object(v124, object);
                                  v106 = xpc::dyn_cast_or_default(object, 0);
                                  *std::map<unsigned int,unsigned int>::operator[]((v2 + 480), 4u) = v106;
                                  xpc_release(object[0]);
                                }

                                else
                                {
                                  config::hw::deviceMaterial(v98);
                                  if ((v2 + 480) != v124)
                                  {
                                    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned int>,std::__tree_node<std::__value_type<unsigned int,unsigned int>,void *> *,long>>((v2 + 480), *v124, &v124[8]);
                                  }

                                  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(*&v124[8]);
                                }

                                antenna::Service::Internal::sendDeviceMaterial_sync(v2);
                                goto LABEL_206;
                              }

                              v107 = *(v2 + 32);
                              if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_206;
                              }

                              v108 = &buf;
                              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                              {
                                v108 = buf.__r_.__value_.__r.__words[0];
                              }

                              *v124 = 136315138;
                              *&v124[4] = v108;
                              v31 = "%s is not supported in this device";
                              v60 = v107;
                              v61 = 12;
LABEL_113:
                              _os_log_error_impl(&dword_297476000, v60, OS_LOG_TYPE_ERROR, v31, v124, v61);
                              goto LABEL_206;
                            }

                            v91 = *MEMORY[0x29EDBEA98];
                            if (xpc_dictionary_get_value(*v5, *MEMORY[0x29EDBEA98]))
                            {
                              *v124 = v5;
                              *&v124[8] = v91;
                              xpc::dict::object_proxy::operator xpc::object(v124, object);
                              *(v2 + 472) = xpc::dyn_cast_or_default(object, 0);
                              xpc_release(object[0]);
                              v92 = *(v2 + 32);
                              if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
                              {
                                v114 = *(v2 + 472);
                                ctu::iokit::asString();
                                v115 = (v124[23] & 0x80u) == 0 ? v124 : *v124;
                                LODWORD(object[0]) = 136315138;
                                *(object + 4) = v115;
                                _os_log_debug_impl(&dword_297476000, v92, OS_LOG_TYPE_DEBUG, "#D Power source overriding as %s", object, 0xCu);
                                if (v124[23] < 0)
                                {
                                  operator delete(*v124);
                                }
                              }

                              antenna::Service::Internal::sendPowerSource_sync(v2);
                              goto LABEL_206;
                            }

                            v30 = *(v2 + 32);
                            if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_206;
                            }

                            *v124 = 0;
                            v31 = "Cannot find the command data!";
LABEL_112:
                            v60 = v30;
                            v61 = 2;
                            goto LABEL_113;
                          }

                          v89 = *MEMORY[0x29EDBEA98];
                          if (!xpc_dictionary_get_value(*v5, *MEMORY[0x29EDBEA98]))
                          {
                            v30 = *(v2 + 32);
                            if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_206;
                            }

                            *v124 = 0;
                            v31 = "Cannot find the command data!";
                            goto LABEL_112;
                          }

                          object[0] = v5;
                          object[1] = v89;
                          xpc::dict::object_proxy::operator xpc::object(object, &p_xdict);
                          xpc::dyn_cast_or_default(v124, &p_xdict, "", v90);
                          antenna::Service::Internal::setTxPowerMotionHandDetection_sync(v2, v124);
                          if (v124[23] < 0)
                          {
                            operator delete(*v124);
                          }

                          xpc_release(p_xdict);
                          goto LABEL_206;
                        }

                        std::string::__throw_out_of_range[abi:ne200100]();
                      }
                    }

                    else if (v64 != -1)
                    {
                      v66 = &buf;
                      v67 = v11;
                      goto LABEL_137;
                    }

                    std::string::__throw_out_of_range[abi:ne200100]();
                  }
                }

                else if (v56 != -1)
                {
                  v58 = &buf;
                  v59 = v11;
                  goto LABEL_116;
                }

                std::string::__throw_out_of_range[abi:ne200100]();
              }
            }

            else if (v48 != -1)
            {
              v50 = &buf;
              v51 = v11;
              goto LABEL_100;
            }

            std::string::__throw_out_of_range[abi:ne200100]();
          }

          std::string::__throw_out_of_range[abi:ne200100]();
        }

        std::string::__throw_out_of_range[abi:ne200100]();
      }

      std::string::__throw_out_of_range[abi:ne200100]();
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v21 = *MEMORY[0x29EDBEA98];
  if (xpc_dictionary_get_value(*v5, *MEMORY[0x29EDBEA98]))
  {
    *v124 = v5;
    *&v124[8] = v21;
    xpc::dict::object_proxy::operator xpc::dict(v124, object);
    antenna::Service::Internal::setTxPowerCappingIPhoneMode_sync(v2, object);
    xpc_release(object[0]);
    goto LABEL_206;
  }

  v30 = *(v2 + 32);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *v124 = 0;
    v31 = "Cannot find command data!";
    goto LABEL_112;
  }

LABEL_206:
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v109 = v117;
    if (!v117)
    {
      goto LABEL_208;
    }

LABEL_211:
    xpc_release(v109[1]);
    operator delete(v109);
    v110 = a1;
    if (!a1)
    {
      goto LABEL_216;
    }

    goto LABEL_212;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  v109 = v117;
  if (v117)
  {
    goto LABEL_211;
  }

LABEL_208:
  v110 = a1;
  if (!a1)
  {
    goto LABEL_216;
  }

LABEL_212:
  v111 = v110[2];
  if (v111 && !atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v112 = v110;
    (v111->__on_zero_shared)(v111);
    std::__shared_weak_count::__release_weak(v111);
    v110 = v112;
  }

  operator delete(v110);
LABEL_216:
  v113 = *MEMORY[0x29EDCA608];
}

void sub_297551988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t *a10, xpc_object_t a11, xpc_object_t a12, uint64_t a13, xpc_object_t a14, xpc_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(*(v24 - 72));
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<antenna::Service::Internal::antennaSetProperty(xpc::dict const&)::$_0,std::default_delete<antenna::Service::Internal::antennaSetProperty(xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

xpc_object_t **std::unique_ptr<antenna::Service::Internal::antennaSetProperty(xpc::dict const&)::$_0,std::default_delete<antenna::Service::Internal::antennaSetProperty(xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](xpc_object_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(v1[1]);
    operator delete(v1);
    return v2;
  }

  return result;
}

void antenna::Service::Internal::antennaGetProperty(xpc::dict const&)::$_0::operator()(uint64_t a1)
{
  v156 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 16);
  memset(&__s1, 170, sizeof(__s1));
  v3 = a1 + 8;
  v4 = *MEMORY[0x29EDBED18];
  v5 = xpc_dictionary_get_value(*(a1 + 8), *MEMORY[0x29EDBED18]);
  buf.__r_.__value_.__r.__words[0] = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    buf.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&__s1, &buf, "", v6);
  xpc_release(buf.__r_.__value_.__l.__data_);
  v7 = strlen(*MEMORY[0x29EDBF0F0]);
  v8 = v7;
  v9 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v7 != -1)
    {
      p_s1 = &__s1;
      size = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
      goto LABEL_9;
    }

LABEL_212:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v7 == -1)
  {
    goto LABEL_212;
  }

  size = __s1.__r_.__value_.__l.__size_;
  p_s1 = __s1.__r_.__value_.__r.__words[0];
LABEL_9:
  if (size >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = size;
  }

  if (!memcmp(p_s1, *MEMORY[0x29EDBF0F0], v12) && size == v8)
  {
    if ((v9 & 0x80000000) == 0)
    {
      v19 = &__s1;
    }

    else
    {
      v19 = __s1.__r_.__value_.__r.__words[0];
    }

    v20 = xpc_string_create(v19);
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    xpc_dictionary_set_value(**a1, v4, v20);
    v21 = xpc_null_create();
    xpc_release(v20);
    xpc_release(v21);
    v22 = *MEMORY[0x29EDBEA98];
    buf.__r_.__value_.__r.__words[0] = v3;
    buf.__r_.__value_.__l.__size_ = v22;
    v151 = *a1;
    v152 = v22;
    xpc::dict::object_proxy::operator=(&v151, &buf, &v153);
    xpc_release(v153);
    v153 = 0;
    antenna::Service::Internal::copyTxPowerCappingIPhoneMode_sync(v2, &v150);
    xpc_dictionary_set_value(**a1, *MEMORY[0x29EDBEBA8], v150);
    v23 = v150;
    v150 = xpc_null_create();
    xpc_release(v23);
    xpc_release(v150);
    v150 = 0;
    goto LABEL_136;
  }

  v14 = *MEMORY[0x29EDBE970];
  v15 = strlen(*MEMORY[0x29EDBE970]);
  v16 = v15;
  if ((v9 & 0x80000000) != 0)
  {
    if (v15 != -1)
    {
      v17 = __s1.__r_.__value_.__l.__size_;
      if (__s1.__r_.__value_.__l.__size_ >= v15)
      {
        v24 = v15;
      }

      else
      {
        v24 = __s1.__r_.__value_.__l.__size_;
      }

      if (memcmp(__s1.__r_.__value_.__l.__data_, v14, v24))
      {
        goto LABEL_42;
      }

      goto LABEL_34;
    }

LABEL_213:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v15 == -1)
  {
    goto LABEL_213;
  }

  v17 = v9;
  if (v9 >= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = v9;
  }

  if (memcmp(&__s1, v14, v18))
  {
    goto LABEL_42;
  }

LABEL_34:
  if (v17 == v16)
  {
    antenna::Service::Internal::getTxPowerCappingIPhoneOverriddenFreeSpaceString_sync(v2, &buf);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    v26 = xpc_string_create(p_buf);
    if (!v26)
    {
      v26 = xpc_null_create();
    }

    xpc_dictionary_set_value(**a1, *MEMORY[0x29EDBEBA8], v26);
    v27 = xpc_null_create();
    xpc_release(v26);
    xpc_release(v27);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    goto LABEL_136;
  }

LABEL_42:
  v28 = *MEMORY[0x29EDBED00];
  v29 = strlen(*MEMORY[0x29EDBED00]);
  v30 = v29;
  if ((v9 & 0x80000000) != 0)
  {
    if (v29 != -1)
    {
      v31 = __s1.__r_.__value_.__l.__size_;
      if (__s1.__r_.__value_.__l.__size_ >= v29)
      {
        v33 = v29;
      }

      else
      {
        v33 = __s1.__r_.__value_.__l.__size_;
      }

      if (memcmp(__s1.__r_.__value_.__l.__data_, v28, v33))
      {
        goto LABEL_61;
      }

      goto LABEL_54;
    }

LABEL_214:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == -1)
  {
    goto LABEL_214;
  }

  v31 = v9;
  if (v9 >= v29)
  {
    v32 = v29;
  }

  else
  {
    v32 = v9;
  }

  if (memcmp(&__s1, v28, v32))
  {
    goto LABEL_61;
  }

LABEL_54:
  if (v31 == v30)
  {
    if ((v9 & 0x80000000) == 0)
    {
      v34 = &__s1;
    }

    else
    {
      v34 = __s1.__r_.__value_.__r.__words[0];
    }

    v35 = xpc_string_create(v34);
    if (!v35)
    {
      v35 = xpc_null_create();
    }

    xpc_dictionary_set_value(**a1, v4, v35);
    v36 = xpc_null_create();
    xpc_release(v35);
    xpc_release(v36);
    v37 = *MEMORY[0x29EDBEA98];
    buf.__r_.__value_.__r.__words[0] = v3;
    buf.__r_.__value_.__l.__size_ = v37;
    v151 = *a1;
    v152 = v37;
    xpc::dict::object_proxy::operator=(&v151, &buf, &v149);
    xpc_release(v149);
    v149 = 0;
    antenna::Service::Internal::copyTxPowerAudioMode_sync(v2, &v148);
    xpc_dictionary_set_value(**a1, *MEMORY[0x29EDBEBA8], v148);
    v38 = v148;
    v148 = xpc_null_create();
    xpc_release(v38);
    xpc_release(v148);
    v148 = 0;
    goto LABEL_136;
  }

LABEL_61:
  v39 = *MEMORY[0x29EDBEE58];
  v40 = strlen(*MEMORY[0x29EDBEE58]);
  v41 = v40;
  if ((v9 & 0x80000000) != 0)
  {
    if (v40 != -1)
    {
      v42 = __s1.__r_.__value_.__l.__size_;
      if (__s1.__r_.__value_.__l.__size_ >= v40)
      {
        v44 = v40;
      }

      else
      {
        v44 = __s1.__r_.__value_.__l.__size_;
      }

      if (memcmp(__s1.__r_.__value_.__l.__data_, v39, v44))
      {
        goto LABEL_80;
      }

      goto LABEL_73;
    }

LABEL_215:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v40 == -1)
  {
    goto LABEL_215;
  }

  v42 = v9;
  if (v9 >= v40)
  {
    v43 = v40;
  }

  else
  {
    v43 = v9;
  }

  if (memcmp(&__s1, v39, v43))
  {
    goto LABEL_80;
  }

LABEL_73:
  if (v42 == v41)
  {
    if ((v9 & 0x80000000) == 0)
    {
      v45 = &__s1;
    }

    else
    {
      v45 = __s1.__r_.__value_.__r.__words[0];
    }

    v46 = xpc_string_create(v45);
    if (!v46)
    {
      v46 = xpc_null_create();
    }

    xpc_dictionary_set_value(**a1, v4, v46);
    v47 = xpc_null_create();
    xpc_release(v46);
    xpc_release(v47);
    v48 = *MEMORY[0x29EDBEA98];
    buf.__r_.__value_.__r.__words[0] = v3;
    buf.__r_.__value_.__l.__size_ = v48;
    v151 = *a1;
    v152 = v48;
    xpc::dict::object_proxy::operator=(&v151, &buf, &v147);
    xpc_release(v147);
    v147 = 0;
    antenna::Service::Internal::copyTxPowerAudioAlert_sync(v2, &v146);
    xpc_dictionary_set_value(**a1, *MEMORY[0x29EDBEBA8], v146);
    v49 = v146;
    v146 = xpc_null_create();
    xpc_release(v49);
    xpc_release(v146);
    v146 = 0;
    goto LABEL_136;
  }

LABEL_80:
  v50 = *MEMORY[0x29EDBF5D8];
  v51 = strlen(*MEMORY[0x29EDBF5D8]);
  v52 = v51;
  if ((v9 & 0x80000000) != 0)
  {
    if (v51 != -1)
    {
      v53 = __s1.__r_.__value_.__l.__size_;
      if (__s1.__r_.__value_.__l.__size_ >= v51)
      {
        v55 = v51;
      }

      else
      {
        v55 = __s1.__r_.__value_.__l.__size_;
      }

      if (memcmp(__s1.__r_.__value_.__l.__data_, v50, v55))
      {
        goto LABEL_100;
      }

      goto LABEL_92;
    }

LABEL_216:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v51 == -1)
  {
    goto LABEL_216;
  }

  v53 = v9;
  if (v9 >= v51)
  {
    v54 = v51;
  }

  else
  {
    v54 = v9;
  }

  if (memcmp(&__s1, v50, v54))
  {
    goto LABEL_100;
  }

LABEL_92:
  if (v53 == v52)
  {
    if (*(v2 + 73) == 1)
    {
      if ((v9 & 0x80000000) == 0)
      {
        v56 = &__s1;
      }

      else
      {
        v56 = __s1.__r_.__value_.__r.__words[0];
      }

      v57 = xpc_string_create(v56);
      if (!v57)
      {
        v57 = xpc_null_create();
      }

      xpc_dictionary_set_value(**a1, v4, v57);
      v58 = xpc_null_create();
      xpc_release(v57);
      xpc_release(v58);
      v59 = *MEMORY[0x29EDBEA98];
      buf.__r_.__value_.__r.__words[0] = v3;
      buf.__r_.__value_.__l.__size_ = v59;
      v151 = *a1;
      v152 = v59;
      xpc::dict::object_proxy::operator=(&v151, &buf, &v145);
      xpc_release(v145);
      v145 = 0;
      antenna::Service::Internal::copyTxPowerMotionMode_sync(v2, &value);
      xpc_dictionary_set_value(**a1, *MEMORY[0x29EDBEBA8], value);
      v60 = value;
      value = xpc_null_create();
      xpc_release(v60);
      xpc_release(value);
      value = 0;
    }

    goto LABEL_136;
  }

LABEL_100:
  v61 = strlen(*MEMORY[0x29EDBF2A0]);
  v62 = v61;
  if ((v9 & 0x80000000) == 0)
  {
    if (v61 != -1)
    {
      v63 = &__s1;
      v64 = v9;
      goto LABEL_105;
    }

LABEL_217:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v61 == -1)
  {
    goto LABEL_217;
  }

  v64 = __s1.__r_.__value_.__l.__size_;
  v63 = __s1.__r_.__value_.__r.__words[0];
LABEL_105:
  if (v64 >= v62)
  {
    v65 = v62;
  }

  else
  {
    v65 = v64;
  }

  if (!memcmp(v63, *MEMORY[0x29EDBF2A0], v65) && v64 == v62)
  {
    v66 = *a1;
    v67 = *(v2 + 136);
    if (v67)
    {
      xpc_retain(*(v2 + 136));
    }

    else
    {
      v67 = xpc_null_create();
    }

    v83 = *v66;
    *v66 = v67;
    xpc_release(v83);
    goto LABEL_136;
  }

  v68 = strlen(*MEMORY[0x29EDBF138]);
  v69 = v68;
  if ((v9 & 0x80000000) == 0)
  {
    if (v68 != -1)
    {
      v70 = &__s1;
      v71 = v9;
      goto LABEL_117;
    }

LABEL_218:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v68 == -1)
  {
    goto LABEL_218;
  }

  v71 = __s1.__r_.__value_.__l.__size_;
  v70 = __s1.__r_.__value_.__r.__words[0];
LABEL_117:
  if (v71 >= v69)
  {
    v72 = v69;
  }

  else
  {
    v72 = v71;
  }

  if (!memcmp(v70, *MEMORY[0x29EDBF138], v72) && v71 == v69)
  {
    v73 = (v2 + 304);
    if (*(v2 + 327) < 0)
    {
      v73 = *v73;
    }

    v74 = xpc_string_create(v73);
    if (!v74)
    {
      v74 = xpc_null_create();
    }

    xpc_dictionary_set_value(**a1, *MEMORY[0x29EDBE720], v74);
    v75 = xpc_null_create();
    xpc_release(v74);
    xpc_release(v75);
    v76 = (v2 + 328);
    if (*(v2 + 351) < 0)
    {
      v76 = *v76;
    }

    v77 = xpc_string_create(v76);
    if (!v77)
    {
      v77 = xpc_null_create();
    }

    xpc_dictionary_set_value(**a1, *MEMORY[0x29EDBE960], v77);
    v78 = xpc_null_create();
    xpc_release(v77);
    xpc_release(v78);
    goto LABEL_136;
  }

  v79 = strlen(*MEMORY[0x29EDBEBF8]);
  v80 = v79;
  if ((v9 & 0x80000000) == 0)
  {
    if (v79 != -1)
    {
      v81 = &__s1;
      v82 = v9;
      goto LABEL_141;
    }

LABEL_219:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v79 == -1)
  {
    goto LABEL_219;
  }

  v82 = __s1.__r_.__value_.__l.__size_;
  v81 = __s1.__r_.__value_.__r.__words[0];
LABEL_141:
  if (v82 >= v80)
  {
    v85 = v80;
  }

  else
  {
    v85 = v82;
  }

  if (!memcmp(v81, *MEMORY[0x29EDBEBF8], v85) && v82 == v80)
  {
    v86 = MEMORY[0x29EDBEA78];
    if (!*(v2 + 396))
    {
      v86 = MEMORY[0x29EDBEB50];
    }

    v142 = xpc_string_create(*v86);
    if (!v142)
    {
      v142 = xpc_null_create();
    }

    v87 = *MEMORY[0x29EDBEA98];
    buf.__r_.__value_.__r.__words[0] = *a1;
    buf.__r_.__value_.__l.__size_ = v87;
    xpc::dict::object_proxy::operator=(&buf, &v142, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v142);
    v142 = 0;
    goto LABEL_136;
  }

  v88 = strlen(*MEMORY[0x29EDBF5D0]);
  v89 = v88;
  if ((v9 & 0x80000000) == 0)
  {
    if (v88 != -1)
    {
      v90 = &__s1;
      goto LABEL_156;
    }

LABEL_220:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v88 == -1)
  {
    goto LABEL_220;
  }

  v9 = __s1.__r_.__value_.__l.__size_;
  v90 = __s1.__r_.__value_.__r.__words[0];
LABEL_156:
  if (v9 >= v89)
  {
    v91 = v89;
  }

  else
  {
    v91 = v9;
  }

  if (!memcmp(v90, *MEMORY[0x29EDBF5D0], v91) && v9 == v89)
  {
    v92 = (v2 + 440);
    if (*(v2 + 463) < 0)
    {
      v92 = *v92;
    }

    v140 = xpc_string_create(v92);
    if (!v140)
    {
      v140 = xpc_null_create();
    }

    v93 = *MEMORY[0x29EDBEBA8];
    buf.__r_.__value_.__r.__words[0] = *a1;
    buf.__r_.__value_.__l.__size_ = v93;
    xpc::dict::object_proxy::operator=(&buf, &v140, &v141);
    xpc_release(v141);
    v141 = 0;
    xpc_release(v140);
    v140 = 0;
    goto LABEL_136;
  }

  if (!std::string::compare(&__s1, *MEMORY[0x29EDBF4C0]))
  {
    v138 = xpc_int64_create(*(v2 + 472));
    if (!v138)
    {
      v138 = xpc_null_create();
    }

    v96 = *MEMORY[0x29EDBEBA8];
    buf.__r_.__value_.__r.__words[0] = *a1;
    buf.__r_.__value_.__l.__size_ = v96;
    xpc::dict::object_proxy::operator=(&buf, &v138, &v139);
    xpc_release(v139);
    v139 = 0;
    xpc_release(v138);
    v138 = 0;
  }

  else
  {
    if (std::string::compare(&__s1, *MEMORY[0x29EDBF560]))
    {
      if (std::string::compare(&__s1, *MEMORY[0x29EDBE4A8]))
      {
        goto LABEL_136;
      }

      v151 = 0xAAAAAAAAAAAAAAAALL;
      v94 = xpc_dictionary_create(0, 0, 0);
      v95 = v94;
      if (v94)
      {
        v151 = v94;
      }

      else
      {
        v95 = xpc_null_create();
        v151 = v95;
        if (!v95)
        {
          v111 = xpc_null_create();
          v95 = 0;
          goto LABEL_200;
        }
      }

      if (MEMORY[0x29C272BA0](v95) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v95);
LABEL_201:
        xpc_release(v95);
        v112 = MEMORY[0x29EDBE4E8];
        if (!*(v2 + 388))
        {
          v112 = MEMORY[0x29EDBF878];
        }

        v126 = xpc_string_create(*v112);
        if (!v126)
        {
          v126 = xpc_null_create();
        }

        v113 = *MEMORY[0x29EDBF1D8];
        buf.__r_.__value_.__r.__words[0] = &v151;
        buf.__r_.__value_.__l.__size_ = v113;
        xpc::dict::object_proxy::operator=(&buf, &v126, &v127);
        xpc_release(v127);
        v127 = 0;
        xpc_release(v126);
        v126 = 0;
        v124 = xpc_int64_create(*(v2 + 376));
        if (!v124)
        {
          v124 = xpc_null_create();
        }

        v114 = *MEMORY[0x29EDBE8B8];
        buf.__r_.__value_.__r.__words[0] = &v151;
        buf.__r_.__value_.__l.__size_ = v114;
        xpc::dict::object_proxy::operator=(&buf, &v124, &v125);
        xpc_release(v125);
        v125 = 0;
        xpc_release(v124);
        v124 = 0;
        v122 = xpc_int64_create(*(v2 + 380));
        if (!v122)
        {
          v122 = xpc_null_create();
        }

        v115 = *MEMORY[0x29EDBEA90];
        buf.__r_.__value_.__r.__words[0] = &v151;
        buf.__r_.__value_.__l.__size_ = v115;
        xpc::dict::object_proxy::operator=(&buf, &v122, &v123);
        xpc_release(v123);
        v123 = 0;
        xpc_release(v122);
        v122 = 0;
        v120 = xpc_int64_create(*(v2 + 384));
        if (!v120)
        {
          v120 = xpc_null_create();
        }

        v116 = *MEMORY[0x29EDBE698];
        buf.__r_.__value_.__r.__words[0] = &v151;
        buf.__r_.__value_.__l.__size_ = v116;
        xpc::dict::object_proxy::operator=(&buf, &v120, &v121);
        xpc_release(v121);
        v121 = 0;
        xpc_release(v120);
        v120 = 0;
        xpc::dict::dict(&v118, &v151);
        v117 = *MEMORY[0x29EDBEBA8];
        buf.__r_.__value_.__r.__words[0] = *a1;
        buf.__r_.__value_.__l.__size_ = v117;
        xpc::dict::object_proxy::operator=(&buf, &v118, &v119);
        xpc_release(v119);
        v119 = 0;
        xpc_release(v118);
        v118 = 0;
        xpc_release(v151);
        goto LABEL_136;
      }

      v111 = xpc_null_create();
LABEL_200:
      v151 = v111;
      goto LABEL_201;
    }

    if (*(v2 + 85) == 1)
    {
      v97 = (v2 + 504);
      v98 = (v2 + 504);
      if (*(v2 + 527) < 0)
      {
        v98 = *v97;
      }

      v136 = xpc_string_create(v98);
      if (!v136)
      {
        v136 = xpc_null_create();
      }

      v99 = *MEMORY[0x29EDBEBA8];
      buf.__r_.__value_.__r.__words[0] = *a1;
      buf.__r_.__value_.__l.__size_ = v99;
      xpc::dict::object_proxy::operator=(&buf, &v136, &v137);
      xpc_release(v137);
      v137 = 0;
      xpc_release(v136);
      v136 = 0;
      if (*(v2 + 527) < 0)
      {
        v97 = *v97;
      }

      v100 = strlen(*MEMORY[0x29EDBEFE0]);
      if (!strncasecmp(v97, *MEMORY[0x29EDBEFE0], v100))
      {
        v101 = std::map<unsigned int,unsigned int>::operator[]((v2 + 480), 1u);
        v134 = xpc_int64_create(*v101);
        if (!v134)
        {
          v134 = xpc_null_create();
        }

        v102 = *MEMORY[0x29EDBF820];
        buf.__r_.__value_.__r.__words[0] = *a1;
        buf.__r_.__value_.__l.__size_ = v102;
        xpc::dict::object_proxy::operator=(&buf, &v134, &v135);
        xpc_release(v135);
        v135 = 0;
        xpc_release(v134);
        v134 = 0;
        v103 = std::map<unsigned int,unsigned int>::operator[]((v2 + 480), 2u);
        v132 = xpc_int64_create(*v103);
        if (!v132)
        {
          v132 = xpc_null_create();
        }

        v104 = *MEMORY[0x29EDBF7D8];
        buf.__r_.__value_.__r.__words[0] = *a1;
        buf.__r_.__value_.__l.__size_ = v104;
        xpc::dict::object_proxy::operator=(&buf, &v132, &v133);
        xpc_release(v133);
        v133 = 0;
        xpc_release(v132);
        v132 = 0;
        v105 = std::map<unsigned int,unsigned int>::operator[]((v2 + 480), 3u);
        v130 = xpc_int64_create(*v105);
        if (!v130)
        {
          v130 = xpc_null_create();
        }

        v106 = *MEMORY[0x29EDBF610];
        buf.__r_.__value_.__r.__words[0] = *a1;
        buf.__r_.__value_.__l.__size_ = v106;
        xpc::dict::object_proxy::operator=(&buf, &v130, &v131);
        xpc_release(v131);
        v131 = 0;
        xpc_release(v130);
        v130 = 0;
        v107 = std::map<unsigned int,unsigned int>::operator[]((v2 + 480), 4u);
        v128 = xpc_int64_create(*v107);
        if (!v128)
        {
          v128 = xpc_null_create();
        }

        v108 = *MEMORY[0x29EDBF608];
        buf.__r_.__value_.__r.__words[0] = *a1;
        buf.__r_.__value_.__l.__size_ = v108;
        xpc::dict::object_proxy::operator=(&buf, &v128, &v129);
        xpc_release(v129);
        v129 = 0;
        xpc_release(v128);
        v128 = 0;
      }
    }

    else
    {
      v109 = *(v2 + 32);
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        v110 = &__s1;
        if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v110 = __s1.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v110;
        _os_log_error_impl(&dword_297476000, v109, OS_LOG_TYPE_ERROR, "%s is not supported in this device", &buf, 0xCu);
      }
    }
  }

LABEL_136:
  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

  v84 = *MEMORY[0x29EDCA608];
}

void sub_297552C70(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::dumpState(void)::$_0>(antenna::Service::Internal::dumpState(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::dumpState(void)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::dumpState(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  antenna::Service::Internal::handleDumpState_sync(**a1);
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

void sub_297552F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_29()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_30()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_31()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_32()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<Capabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance, &dword_297476000);
  }

  return result;
}

void FSModuleICE::create(uint64_t *a1@<X0>, uint64_t *a2@<X1>, atomic_ullong *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0x460uLL);
  v7 = v6;
  v8 = *a1;
  v9 = a1[1];
  v14 = v8;
  v15 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a2;
  v11 = a2[1];
  v13[0] = v10;
  v13[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  FSModuleICE::FSModuleICE(v6, &v14, v13);
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<FSModuleICE>::shared_ptr[abi:ne200100]<FSModuleICE,std::shared_ptr<FSModuleICE> ctu::SharedSynchronizable<FSModuleICE>::make_shared_ptr<FSModuleICE>(FSModuleICE*)::{lambda(FSModuleICE*)#1},0>(a3, v7);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v12 = v15;
    if (!v15)
    {
      return;
    }
  }

  else
  {
    v12 = v15;
    if (!v15)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v12);
}

void sub_2975531E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v9);
  _Unwind_Resume(a1);
}

void FSModuleICE::~FSModuleICE(FSModuleICE *this)
{
  *this = &unk_2A1E47398;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v21, 2u);
  }

  v4 = *(this + 139);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 134);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 132);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (!*(this + 129))
    {
      goto LABEL_20;
    }
  }

  else if (!*(this + 129))
  {
    goto LABEL_20;
  }

  v7 = *(this + 128);
  v8 = *(*(this + 127) + 8);
  v9 = *v7;
  *(v9 + 8) = v8;
  *v8 = v9;
  *(this + 129) = 0;
  if (v7 != (this + 1016))
  {
    do
    {
      v10 = *(v7 + 1);
      v11 = *(v7 + 3);
      if (v11)
      {
        dispatch_release(v11);
      }

      v12 = *(v7 + 2);
      if (v12)
      {
        _Block_release(v12);
      }

      operator delete(v7);
      v7 = v10;
    }

    while (v10 != (this + 1016));
  }

LABEL_20:
  if (*(this + 1015) < 0)
  {
    operator delete(*(this + 124));
  }

  std::deque<std::tuple<unsigned int,BOOL>>::~deque[abi:ne200100](this + 936);
  MEMORY[0x29C270D60](v2);
  v13 = *(this + 12);
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = *(this + 11);
  if (v14)
  {
    dispatch_release(v14);
  }

  v15 = *(this + 10);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  *this = &unk_2A1E500C0;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v16 = *(this + 3);
  if (v16)
  {
    v17 = *(this + 4);
    v18 = *(this + 3);
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = *(this + 3);
    }

    *(this + 4) = v16;
    operator delete(v18);
  }

  v20 = *(this + 2);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }
}

{
  FSModuleICE::~FSModuleICE(this);

  operator delete(v1);
}

uint64_t FSModuleICE::FSModuleICE(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E500C0;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    std::__shared_weak_count::__release_weak(v6);
    *a1 = &unk_2A1E42AA8;
    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    *a1 = &unk_2A1E42AA8;
  }

  *a1 = &unk_2A1E47398;
  ctu::OsLogContext::OsLogContext(&v26, "com.apple.telephony.abm", "rfs.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v8 = dispatch_queue_create_with_target_V2("rfs.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v8, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v8);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v8;
  if (v8)
  {
    dispatch_retain(v8);
    *(a1 + 96) = 0;
    dispatch_release(v8);
  }

  else
  {
    *(a1 + 96) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](a1 + 104, &v25);
  MEMORY[0x29C270D60](&v25);
  ctu::OsLogContext::~OsLogContext(&v26);
  *a1 = &unk_2A1E47398;
  *(a1 + 112) = 0;
  *(a1 + 520) = 0;
  *(a1 + 920) = 0;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0;
  v9 = operator new(0x30uLL);
  *(a1 + 992) = v9;
  *(a1 + 1008) = 0x8000000000000030;
  *(a1 + 1000) = 43;
  strcpy(v9, "com.apple.AppleBasebandManager.FSModuleSync");
  *(a1 + 1016) = a1 + 1016;
  *(a1 + 1024) = a1 + 1016;
  *(a1 + 1032) = 0;
  *(a1 + 1097) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1104) = *a3;
  v10 = a3[1];
  *(a1 + 1112) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 888) = 0uLL;
  *(a1 + 904) = 0uLL;
  *(a1 + 528) = 0uLL;
  *(a1 + 544) = 0uLL;
  *(a1 + 560) = 0uLL;
  *(a1 + 576) = 0uLL;
  *(a1 + 592) = 0uLL;
  *(a1 + 608) = 0;
  v11 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v12 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(&v26, v11);
    v13 = v26;
    v26 = 0uLL;
    v14 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v13;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v15 = *(&v26 + 1);
    if (*(&v26 + 1) && !atomic_fetch_add((*(&v26 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v12 = off_2A18CADD8;
  }

  v24 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v12 + 32))(&v25, v12);
  v16 = v25;
  v25 = 0uLL;
  v17 = *(a1 + 1056);
  *(a1 + 1048) = v16;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *(&v25 + 1);
  if (*(&v25 + 1) && !atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v19 = *(a1 + 944);
  v20 = *(a1 + 952);
  *(a1 + 976) = 0;
  v21 = (v20 - v19) >> 3;
  if (v21 >= 3)
  {
    do
    {
      operator delete(*v19);
      v19 = (*(a1 + 944) + 8);
      *(a1 + 944) = v19;
      v21 = (*(a1 + 952) - v19) >> 3;
    }

    while (v21 > 2);
  }

  if (v21 == 1)
  {
    v22 = 256;
    goto LABEL_36;
  }

  if (v21 == 2)
  {
    v22 = 512;
LABEL_36:
    *(a1 + 968) = v22;
  }

  return a1;
}

void sub_2975539CC(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v1 + 1104);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v1 + 1064);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v4);
  std::list<dispatch::callback<void({block_pointer})(BOOL)>>::~list(v3);
  if (*(v1 + 1015) < 0)
  {
    operator delete(*(v1 + 992));
  }

  std::deque<std::tuple<unsigned int,BOOL>>::~deque[abi:ne200100](v1 + 936);
  MEMORY[0x29C270D60](v1 + 104);
  ctu::SharedSynchronizable<data::TransportService::State>::~SharedSynchronizable(v2);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

void FSModuleICE::checkAndExecPendingResponses_sync(FSModuleICE *this)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 247);
    v5 = *(this + 246);
    v7[0] = 67109376;
    v7[1] = v4;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Checking response fSyncsCompleted=%u fSyncsRequested=%u", v7, 0xEu);
    if (*(this + 247) < *(this + 246))
    {
      goto LABEL_3;
    }

LABEL_6:
    FSModuleICE::execPendingResponses_sync(this, 1);
    v6 = *MEMORY[0x29EDCA608];
    return;
  }

  if (*(this + 247) >= *(this + 246))
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = *MEMORY[0x29EDCA608];
}

void FSModuleICE::execPendingResponses_sync(FSModuleICE *this, char a2)
{
  v4 = *(this + 13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Clearing responses", &v19, 2u);
  }

  v5 = this + 1016;
  v6 = *(this + 128);
  if (v6 != this + 1016)
  {
    while (1)
    {
      v7 = *(v6 + 2);
      if (v7)
      {
        break;
      }

      v8 = 0;
      v9 = *(v6 + 3);
      if (v9)
      {
        goto LABEL_8;
      }

LABEL_9:
      if (!v8)
      {
        v11 = 0;
        v19 = MEMORY[0x29EDCA5F8];
        v20 = 1174405120;
        v21 = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
        v22 = &__block_descriptor_tmp_102;
LABEL_15:
        v12 = 0;
        goto LABEL_16;
      }

      v10 = _Block_copy(v8);
      v11 = v10;
      v19 = MEMORY[0x29EDCA5F8];
      v20 = 1174405120;
      v21 = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
      v22 = &__block_descriptor_tmp_102;
      if (!v10)
      {
        goto LABEL_15;
      }

      v12 = _Block_copy(v10);
LABEL_16:
      aBlock = v12;
      v24 = a2;
      dispatch_async(v9, &v19);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v11)
      {
        _Block_release(v11);
      }

      if (v9)
      {
        dispatch_release(v9);
      }

      if (v8)
      {
        _Block_release(v8);
      }

      v6 = *(v6 + 1);
      if (v6 == v5)
      {
        goto LABEL_24;
      }
    }

    v8 = _Block_copy(v7);
    v9 = *(v6 + 3);
    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_8:
    dispatch_retain(v9);
    goto LABEL_9;
  }

LABEL_24:
  if (*(this + 129))
  {
    v13 = *(this + 128);
    v14 = *(*(this + 127) + 8);
    v15 = *v13;
    *(v15 + 8) = v14;
    *v14 = v15;
    *(this + 129) = 0;
    if (v13 != v5)
    {
      do
      {
        v16 = *(v13 + 1);
        v17 = *(v13 + 3);
        if (v17)
        {
          dispatch_release(v17);
        }

        v18 = *(v13 + 2);
        if (v18)
        {
          _Block_release(v18);
        }

        operator delete(v13);
        v13 = v16;
      }

      while (v16 != v5);
    }
  }
}

_WORD *FSModuleICE::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *FSModuleICE::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  *v3 = 3;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void FSModuleICE::shutdownWithStage(uint64_t a1, char a2, NSObject **a3)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN11FSModuleICE17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
  v6[3] = &__block_descriptor_tmp_31;
  v5 = *a3;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v8 = a2;
  ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped((a1 + 72), v6);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void FSModuleICE::bootstrap(void *a1, int a2, dispatch_object_t *a3)
{
  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    v4 = *a3;
    if (*a3)
    {
      dispatch_retain(*a3);
      dispatch_group_enter(v4);
    }

    v5 = a1[10];
    if (!v5 || (v6 = a1[9], (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = operator new(0x10uLL);
    *v9 = a1;
    v9[1] = v4;
    v10 = a1[11];
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = operator new(0x18uLL);
    *v11 = v9;
    v11[1] = v6;
    v11[2] = v8;
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped<FSModuleICE::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(FSModuleICE::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleICE::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<FSModuleICE::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_14:
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
    return;
  }

  v12 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v12);
  }

  v13 = a1[10];
  if (!v13 || (v14 = a1[9], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v15;
  v16 = operator new(0x10uLL);
  *v16 = a1;
  v16[1] = v12;
  v17 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v14;
  v18[2] = v8;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped<FSModuleICE::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(FSModuleICE::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleICE::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<FSModuleICE::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void FSModuleICE::registerCommandHandlers_sync(FSModuleICE *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_150:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_150;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_150;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBEBB8];
  v8 = strlen(*MEMORY[0x29EDBEBB8]);
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

    p_dst = operator new(v11);
    v89 = v9;
    v90 = v11 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v90) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_14:
    memmove(p_dst, v7, v9);
  }

  *(p_dst + v9) = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_12_4;
  aBlock[4] = this;
  aBlock[5] = v4;
  v86 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(aBlock);
  v87 = v12;
  Service::registerCommandHandler(this, &__dst, &v87);
  if (v12)
  {
    _Block_release(v12);
  }

  if (SHIBYTE(v90) < 0)
  {
    operator delete(__dst);
  }

  v13 = *MEMORY[0x29EDBF310];
  v14 = strlen(*MEMORY[0x29EDBF310]);
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
    v89 = v15;
    v90 = v17 | 0x8000000000000000;
    __dst = v16;
    goto LABEL_27;
  }

  HIBYTE(v90) = v14;
  v16 = &__dst;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  v82[0] = MEMORY[0x29EDCA5F8];
  v82[1] = 1174405120;
  v82[2] = ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_13;
  v82[3] = &__block_descriptor_tmp_18_2;
  v82[4] = this;
  v82[5] = v4;
  v83 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v18 = _Block_copy(v82);
  v84 = v18;
  Service::registerCommandHandler(this, &__dst, &v84);
  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(v90) < 0)
  {
    operator delete(__dst);
  }

  v19 = *MEMORY[0x29EDBEBB0];
  v20 = strlen(*MEMORY[0x29EDBEBB0]);
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
    v89 = v21;
    v90 = v23 | 0x8000000000000000;
    __dst = v22;
    goto LABEL_40;
  }

  HIBYTE(v90) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  v79[0] = MEMORY[0x29EDCA5F8];
  v79[1] = 1174405120;
  v79[2] = ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_19;
  v79[3] = &__block_descriptor_tmp_27_2;
  v79[4] = this;
  v79[5] = v4;
  v80 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = _Block_copy(v79);
  v81 = v24;
  Service::registerCommandHandler(this, &__dst, &v81);
  if (v24)
  {
    _Block_release(v24);
  }

  if (SHIBYTE(v90) < 0)
  {
    operator delete(__dst);
  }

  v25 = *MEMORY[0x29EDBF248];
  v26 = strlen(*MEMORY[0x29EDBF248]);
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = v26;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v26 | 7) + 1;
    }

    v28 = operator new(v29);
    v89 = v27;
    v90 = v29 | 0x8000000000000000;
    __dst = v28;
    goto LABEL_53;
  }

  HIBYTE(v90) = v26;
  v28 = &__dst;
  if (v26)
  {
LABEL_53:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  v76[0] = MEMORY[0x29EDCA5F8];
  v76[1] = 1174405120;
  v76[2] = ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_28;
  v76[3] = &__block_descriptor_tmp_35_0;
  v76[4] = this;
  v76[5] = v4;
  v77 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v30 = _Block_copy(v76);
  v78 = v30;
  Service::registerCommandHandler(this, &__dst, &v78);
  if (v30)
  {
    _Block_release(v30);
  }

  if (SHIBYTE(v90) < 0)
  {
    operator delete(__dst);
  }

  v31 = *MEMORY[0x29EDBF438];
  v32 = strlen(*MEMORY[0x29EDBF438]);
  if (v32 > 0x7FFFFFFFFFFFFFF7)
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
    v89 = v33;
    v90 = v35 | 0x8000000000000000;
    __dst = v34;
    goto LABEL_66;
  }

  HIBYTE(v90) = v32;
  v34 = &__dst;
  if (v32)
  {
LABEL_66:
    memmove(v34, v31, v33);
  }

  *(v34 + v33) = 0;
  v73[0] = MEMORY[0x29EDCA5F8];
  v73[1] = 1174405120;
  v73[2] = ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_36;
  v73[3] = &__block_descriptor_tmp_47_1;
  v73[4] = this;
  v73[5] = v4;
  v74 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v36 = _Block_copy(v73);
  v75 = v36;
  Service::registerCommandHandler(this, &__dst, &v75);
  if (v36)
  {
    _Block_release(v36);
  }

  if (SHIBYTE(v90) < 0)
  {
    operator delete(__dst);
  }

  __dst = 0xAAAAAAAAAAAAAAAALL;
  v89 = 0xAAAAAAAAAAAAAAAALL;
  v71[0] = MEMORY[0x29EDCA5F8];
  v71[1] = 1174405120;
  v71[2] = ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_48;
  v71[3] = &__block_descriptor_tmp_52_3;
  v71[4] = this;
  v71[5] = v4;
  v72 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v37 = _Block_copy(v71);
  v38 = *(this + 11);
  if (v38)
  {
    dispatch_retain(*(this + 11));
  }

  __dst = v37;
  v89 = v38;
  v69 = 0xAAAAAAAAAAAAAAAALL;
  v70 = 0xAAAAAAAAAAAAAAAALL;
  v67[0] = MEMORY[0x29EDCA5F8];
  v67[1] = 1174405120;
  v67[2] = ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_53;
  v67[3] = &__block_descriptor_tmp_58_1;
  v67[4] = this;
  v67[5] = v4;
  v68 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v39 = _Block_copy(v67);
  v40 = *(this + 11);
  if (v40)
  {
    dispatch_retain(*(this + 11));
  }

  v69 = v39;
  v70 = v40;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  v63[0] = MEMORY[0x29EDCA5F8];
  v63[1] = 1174405120;
  v63[2] = ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_59;
  v63[3] = &__block_descriptor_tmp_63_0;
  v63[4] = this;
  v63[5] = v4;
  v64 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v41 = _Block_copy(v63);
  v42 = *(this + 11);
  if (v42)
  {
    dispatch_retain(*(this + 11));
  }

  v50 = v37;
  v65 = v41;
  v66 = v42;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  v62 = 0xAAAAAAAAAAAAAAAALL;
  v59[0] = MEMORY[0x29EDCA5F8];
  v59[1] = 1174405120;
  v59[2] = ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_64;
  v59[3] = &__block_descriptor_tmp_67_2;
  v59[4] = this;
  v59[5] = v4;
  v60 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v43 = _Block_copy(v59);
  v44 = *(this + 11);
  if (v44)
  {
    dispatch_retain(*(this + 11));
  }

  v61 = v43;
  v62 = v44;
  v45 = *(this + 131);
  v46 = v50;
  if (v50)
  {
    v46 = _Block_copy(v50);
  }

  v57 = v46;
  object = v38;
  if (v38)
  {
    dispatch_retain(v38);
  }

  (*(*v45 + 16))(v45, &v57);
  if (object)
  {
    dispatch_release(object);
  }

  if (v57)
  {
    _Block_release(v57);
  }

  v47 = *(this + 131);
  if (v39)
  {
    v55 = _Block_copy(v39);
    v56 = v40;
    if (!v40)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

  v55 = 0;
  v56 = v40;
  if (v40)
  {
LABEL_89:
    dispatch_retain(v40);
  }

LABEL_90:
  (*(*v47 + 40))(v47, &v55);
  if (v56)
  {
    dispatch_release(v56);
  }

  if (v55)
  {
    _Block_release(v55);
  }

  v48 = *(this + 131);
  if (v41)
  {
    v53 = _Block_copy(v41);
    v54 = v42;
    if (!v42)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

  v53 = 0;
  v54 = v42;
  if (v42)
  {
LABEL_96:
    dispatch_retain(v42);
  }

LABEL_97:
  (*(*v48 + 24))(v48, &v53);
  if (v54)
  {
    dispatch_release(v54);
  }

  if (v53)
  {
    _Block_release(v53);
  }

  v49 = *(this + 131);
  if (v43)
  {
    v51 = _Block_copy(v43);
    v52 = v44;
    if (!v44)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

  v51 = 0;
  v52 = v44;
  if (v44)
  {
LABEL_103:
    dispatch_retain(v44);
  }

LABEL_104:
  (*(*v49 + 32))(v49, &v51);
  if (v52)
  {
    dispatch_release(v52);
  }

  if (v51)
  {
    _Block_release(v51);
  }

  if (v44)
  {
    dispatch_release(v44);
  }

  if (v43)
  {
    _Block_release(v43);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }

  if (v42)
  {
    dispatch_release(v42);
  }

  if (v41)
  {
    _Block_release(v41);
  }

  if (v64)
  {
    std::__shared_weak_count::__release_weak(v64);
  }

  if (v40)
  {
    dispatch_release(v40);
  }

  if (v39)
  {
    _Block_release(v39);
  }

  if (v68)
  {
    std::__shared_weak_count::__release_weak(v68);
  }

  if (v38)
  {
    dispatch_release(v38);
  }

  if (v50)
  {
    _Block_release(v50);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_weak(v72);
  }

  if (v74)
  {
    std::__shared_weak_count::__release_weak(v74);
  }

  if (v77)
  {
    std::__shared_weak_count::__release_weak(v77);
  }

  if (v80)
  {
    std::__shared_weak_count::__release_weak(v80);
  }

  if (v83)
  {
    std::__shared_weak_count::__release_weak(v83);
  }

  if (v86)
  {
    std::__shared_weak_count::__release_weak(v86);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_297554BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, std::__shared_weak_count *a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, std::__shared_weak_count *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a11);
  dispatch::callback<void({block_pointer})(void)>::~callback(&a26);
  if (a25)
  {
    std::__shared_weak_count::__release_weak(a25);
    dispatch::callback<void({block_pointer})(dispatch::group_session)>::~callback(&a35);
    v70 = a34;
    if (!a34)
    {
LABEL_3:
      dispatch::callback<void({block_pointer})(BOOL,unsigned long long,unsigned long long)>::~callback(&a44);
      v71 = a43;
      if (!a43)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    dispatch::callback<void({block_pointer})(dispatch::group_session)>::~callback(&a35);
    v70 = a34;
    if (!a34)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v70);
  dispatch::callback<void({block_pointer})(BOOL,unsigned long long,unsigned long long)>::~callback(&a44);
  v71 = a43;
  if (!a43)
  {
LABEL_4:
    dispatch::callback<void({block_pointer})>::~callback(v68 - 128);
    v72 = a52;
    if (!a52)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  std::__shared_weak_count::__release_weak(v71);
  dispatch::callback<void({block_pointer})>::~callback(v68 - 128);
  v72 = a52;
  if (!a52)
  {
LABEL_5:
    v73 = a59;
    if (!a59)
    {
LABEL_12:
      if (a67)
      {
        std::__shared_weak_count::__release_weak(a67);
      }

      if (STACK[0x210])
      {
        std::__shared_weak_count::__release_weak(STACK[0x210]);
      }

      v74 = *(v68 - 208);
      if (v74)
      {
        std::__shared_weak_count::__release_weak(v74);
      }

      v75 = *(v68 - 144);
      if (v75)
      {
        std::__shared_weak_count::__release_weak(v75);
      }

      std::__shared_weak_count::__release_weak(v67);
      _Unwind_Resume(a1);
    }

LABEL_11:
    std::__shared_weak_count::__release_weak(v73);
    goto LABEL_12;
  }

LABEL_10:
  std::__shared_weak_count::__release_weak(v72);
  v73 = a59;
  if (!a59)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke(void *a1, void **a2, void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (!a1[5])
      {
LABEL_12:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        return;
      }

      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 1174405120;
      v12[2] = ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_2;
      v12[3] = &__block_descriptor_tmp_10_1;
      v10 = *a2;
      v12[4] = v7;
      object = v10;
      if (v10)
      {
        xpc_retain(v10);
        v11 = *a3;
        if (!*a3)
        {
          goto LABEL_9;
        }
      }

      else
      {
        object = xpc_null_create();
        v11 = *a3;
        if (!*a3)
        {
LABEL_9:
          aBlock = v11;
          ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped((v7 + 72), v12);
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          xpc_release(object);
          object = 0;
          goto LABEL_12;
        }
      }

      v11 = _Block_copy(v11);
      goto LABEL_9;
    }
  }
}

void ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "false";
    if (*(v2 + 920))
    {
      v5 = "true";
    }

    else
    {
      v5 = "false";
    }

    if (*(v2 + 1097))
    {
      v4 = "true";
    }

    *buf = 136315394;
    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = v4;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I RFS status during request: Ready=%s Prevent=%s", buf, 0x16u);
  }

  if (*(v2 + 920) != 1 || (*(v2 + 1097) & 1) != 0)
  {
    v6 = xpc_null_create();
    v7 = *(a1 + 48);
    *buf = v6;
    v8 = xpc_null_create();
    (*(v7 + 16))(v7, 3760250887, buf);
    xpc_release(*buf);
    xpc_release(v8);
    goto LABEL_11;
  }

  value = xpc_dictionary_get_value(*(a1 + 40), *MEMORY[0x29EDBF2A8]);
  *buf = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *buf = xpc_null_create();
  }

  v11 = xpc::dyn_cast_or_default(buf, 0);
  xpc_release(*buf);
  v12 = *(v2 + 104);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!v11)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#I Responding immediately before fs-sync is complete", buf, 2u);
    }

    goto LABEL_33;
  }

  if (v13)
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#I Holding response till fs-sync is complete", buf, 2u);
  }

  memset(buf, 170, 16);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_7;
  aBlock[3] = &__block_descriptor_tmp_9_6;
  v14 = *(a1 + 48);
  if (v14)
  {
    v14 = _Block_copy(v14);
  }

  v28 = v14;
  v15 = _Block_copy(aBlock);
  v16 = *(v2 + 88);
  if (v16)
  {
    dispatch_retain(*(v2 + 88));
  }

  *buf = v15;
  *&buf[8] = v16;
  v17 = operator new(0x20uLL);
  *v17 = 0;
  v17[1] = 0;
  if (!v15)
  {
    v18 = v2 + 1016;
    v17[2] = 0;
    v17[3] = v16;
    if (!v16)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v18 = v2 + 1016;
  v17[2] = _Block_copy(v15);
  v17[3] = v16;
  if (v16)
  {
LABEL_24:
    dispatch_retain(v16);
  }

LABEL_25:
  v17[1] = v18;
  v19 = *(v2 + 1016);
  *v17 = v19;
  *(v19 + 8) = v17;
  *(v2 + 1016) = v17;
  ++*(v2 + 1032);
  if (v16)
  {
    dispatch_release(v16);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  if (v28)
  {
    _Block_release(v28);
  }

LABEL_33:
  v20 = xpc_dictionary_get_value(*(a1 + 40), *MEMORY[0x29EDBEF38]);
  *buf = v20;
  if (v20)
  {
    xpc_retain(v20);
  }

  else
  {
    *buf = xpc_null_create();
  }

  v21 = xpc::dyn_cast_or_default(buf, 0);
  xpc_release(*buf);
  if (v21)
  {
    v22 = 3;
  }

  else
  {
    v22 = 1;
  }

  if (*(v2 + 1080))
  {
    v23 = *(v2 + 1080);
  }

  else
  {
    v23 = v22;
  }

  FSModuleICE::requestFSSync_sync(v2, v23, v21);
  if ((v11 & 1) == 0)
  {
    v24 = xpc_null_create();
    v25 = *(a1 + 48);
    *buf = v24;
    v26 = xpc_null_create();
    (*(v25 + 16))(v25, 0, buf);
    xpc_release(*buf);
    xpc_release(v26);
  }

LABEL_11:
  v9 = *MEMORY[0x29EDCA608];
}

void sub_297555378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_7(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3760250880;
  }

  v4 = xpc_null_create();
  v5 = *(a1 + 32);
  object = v4;
  v6 = xpc_null_create();
  (*(v5 + 16))(v5, v3, &object);
  xpc_release(object);
  xpc_release(v6);
}

void sub_2975554E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void FSModuleICE::requestFSSync_sync(FSModuleICE *this, unsigned int a2, int a3)
{
  if (*(this + 1097) == 1)
  {
    v4 = *(this + 13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I RFS sync is not allowed", &buf, 2u);
    }

    return;
  }

  if (*(this + 921) & 1) != 0 || (*(this + 922))
  {
    v7 = *(this + 13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I Deferred to invoke FS Sync due to low power mode", &buf, 2u);
    }

    v8 = *(this + 119);
    v9 = *(this + 118);
    v10 = v8 - v9;
    if (v8 == v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = ((v8 - v9) << 6) - 1;
    }

    v12 = *(this + 121);
    v13 = *(this + 122) + v12;
    if (v11 != v13)
    {
      goto LABEL_66;
    }

    if (v12 >= 0x200)
    {
      *(this + 121) = v12 - 512;
      buf.__r_.__value_.__r.__words[0] = *v9;
      *(this + 118) = v9 + 1;
LABEL_14:
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(this + 117, &buf);
LABEL_65:
      v9 = *(this + 118);
      v13 = *(this + 122) + *(this + 121);
LABEL_66:
      v43 = *(v9 + ((v13 >> 6) & 0x3FFFFFFFFFFFFF8));
      v44 = v13 & 0x1FF;
      v45 = 0xAAAAAA0000000000;
      if (a3)
      {
        v45 = 0xAAAAAA0100000000;
      }

      *(v43 + 8 * v44) = v45 | a2;
      ++*(this + 122);
      return;
    }

    v16 = *(this + 120);
    v17 = *(this + 117);
    if (v10 < (v16 - v17))
    {
      v18 = operator new(0x1000uLL);
      if (v16 != v8)
      {
        *v8 = v18;
        *(this + 119) = v8 + 8;
        goto LABEL_65;
      }

      if (v9 != v17)
      {
        v38 = v9;
LABEL_102:
        *(v38 - 1) = v18;
        buf.__r_.__value_.__r.__words[0] = v18;
        *(this + 118) = v38;
        goto LABEL_14;
      }

      v66 = (v16 - v9) >> 2;
      if (v8 == v9)
      {
        v66 = 1;
      }

      if (!(v66 >> 61))
      {
        v67 = a2;
        v68 = v18;
        v69 = (v66 + 3) >> 2;
        v70 = 8 * v66;
        v71 = operator new(8 * v66);
        v38 = &v71[8 * v69];
        v72 = v38;
        v18 = v68;
        if (v8 != v9)
        {
          v72 = (v38 + v10);
          v73 = v8 - v9 - 8;
          v74 = &v71[8 * v69];
          v75 = v9;
          if (v73 < 0x38)
          {
            goto LABEL_109;
          }

          v76 = &v71[8 * v69];
          v74 = v76;
          v75 = v9;
          if ((v76 - v9) < 0x20)
          {
            goto LABEL_109;
          }

          v77 = (v73 >> 3) + 1;
          v78 = v77 & 0x3FFFFFFFFFFFFFFCLL;
          v74 = &v38[v78];
          v75 = &v9[v78];
          v79 = (v9 + 2);
          v80 = v76 + 16;
          v81 = v77 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v82 = *v79;
            *(v80 - 1) = *(v79 - 1);
            *v80 = v82;
            v79 += 2;
            v80 += 2;
            v81 -= 4;
          }

          while (v81);
          if (v77 != (v77 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_109:
            do
            {
              v83 = *v75++;
              *v74 = v83;
              v74 += 8;
            }

            while (v74 != v72);
          }
        }

        *(this + 117) = v71;
        *(this + 118) = v38;
        *(this + 119) = v72;
        *(this + 120) = &v71[v70];
        a2 = v67;
        if (v9)
        {
          operator delete(v17);
          v18 = v68;
          v38 = *(this + 118);
        }

        goto LABEL_102;
      }

LABEL_105:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v19 = (v16 - v17) >> 2;
    if (v16 == v17)
    {
      v19 = 1;
    }

    if (v19 >> 61)
    {
      goto LABEL_105;
    }

    v84 = a2;
    v20 = 8 * v19;
    v21 = operator new(8 * v19);
    v22 = operator new(0x1000uLL);
    v23 = &v21[v10];
    v24 = &v21[v20];
    if (v10 == v20)
    {
      if (v10 < 1)
      {
        if (v8 == v9)
        {
          v39 = 1;
        }

        else
        {
          v39 = v10 >> 2;
        }

        if (v39 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v23 = operator new(8 * v39);
        v24 = &v23[8 * v39];
        operator delete(v21);
        v8 = *(this + 119);
        v9 = *(this + 118);
        v21 = v23;
      }

      else
      {
        v23 -= ((v10 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
      }
    }

    *v23 = v22;
    v40 = v23 + 8;
    if (v8 == v9)
    {
      v41 = v23;
LABEL_63:
      v42 = *(this + 117);
      *(this + 117) = v21;
      *(this + 118) = v41;
      *(this + 119) = v40;
      *(this + 120) = v24;
      a2 = v84;
      if (v42)
      {
        operator delete(v42);
      }

      goto LABEL_65;
    }

    while (v23 != v21)
    {
      v46 = v23;
LABEL_71:
      v47 = *(v8 - 1);
      v8 -= 8;
      *(v46 - 1) = v47;
      v41 = v46 - 8;
      v23 = v41;
      if (v8 == *(this + 118))
      {
        goto LABEL_63;
      }
    }

    if (v40 < v24)
    {
      v46 = &v21[8 * ((((v24 - v40) >> 3) + 1 + ((((v24 - v40) >> 3) + 1) >> 63)) >> 1)];
      v49 = v40 - v21;
      v48 = v40 == v21;
      v40 += 8 * ((((v24 - v40) >> 3) + 1 + ((((v24 - v40) >> 3) + 1) >> 63)) >> 1);
      if (!v48)
      {
        memmove(v46, v23, v49);
      }

      goto LABEL_71;
    }

    if (v24 == v21)
    {
      v50 = 1;
    }

    else
    {
      v50 = (v24 - v21) >> 2;
    }

    if (v50 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v51 = operator new(8 * v50);
    v52 = v51;
    v53 = (v50 + 3) >> 2;
    v46 = &v51[8 * v53];
    v54 = v40 - v21;
    v48 = v40 == v21;
    v40 = v46;
    if (!v48)
    {
      v40 = &v46[v54];
      v55 = v54 - 8;
      if (v55 >= 0x18 && (v56 = 8 * v53, (&v51[8 * v53] - v23) >= 0x20))
      {
        v60 = (v55 >> 3) + 1;
        v61 = 8 * (v60 & 0x3FFFFFFFFFFFFFFCLL);
        v57 = &v46[v61];
        v58 = &v23[v61];
        v62 = (v23 + 16);
        v63 = &v51[v56 + 16];
        v64 = v60 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v65 = *v62;
          *(v63 - 1) = *(v62 - 1);
          *v63 = v65;
          v62 += 2;
          v63 += 32;
          v64 -= 4;
        }

        while (v64);
        if (v60 == (v60 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_85;
        }
      }

      else
      {
        v57 = &v51[8 * v53];
        v58 = v23;
      }

      do
      {
        v59 = *v58;
        v58 += 8;
        *v57 = v59;
        v57 += 8;
      }

      while (v57 != v40);
    }

LABEL_85:
    v24 = &v51[8 * v50];
    operator delete(v21);
    v21 = v52;
    goto LABEL_71;
  }

  v90 = 0xAAAAAAAAAAAAAAAALL;
  v91 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 88))(&v90, this);
  if (!v90)
  {
    goto LABEL_51;
  }

  memset(&buf, 170, 16);
  Registry::getAdaptiveTimerService(&buf, *(this + 138));
  if (buf.__r_.__value_.__r.__words[0])
  {
    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
    size = buf.__r_.__value_.__l.__size_;
    if (!buf.__r_.__value_.__l.__size_)
    {
      goto LABEL_31;
    }
  }

  else
  {
    ScaledTime = 180000000;
    size = buf.__r_.__value_.__l.__size_;
    if (!buf.__r_.__value_.__l.__size_)
    {
      goto LABEL_31;
    }
  }

  if (!atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    std::__shared_weak_count::__release_weak(size);
  }

LABEL_31:
  object = 0xAAAAAAAAAAAAAAAALL;
  v25 = v90;
  if (*(this + 1015) < 0)
  {
    std::string::__init_copy_ctor_external(&v88, *(this + 124), *(this + 125));
  }

  else
  {
    v88 = *(this + 992);
  }

  v26 = *(v25 + 48);
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, v88.__r_.__value_.__l.__data_, v88.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = v88;
  }

  (*(*v26 + 24))(&object, v26, &buf, ScaledTime / 1000);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_39:
      v27 = *(this + 10);
      if (!v27)
      {
LABEL_104:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_43;
    }
  }

  else if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

  operator delete(v88.__r_.__value_.__l.__data_);
  v27 = *(this + 10);
  if (!v27)
  {
    goto LABEL_104;
  }

LABEL_43:
  v28 = *(this + 9);
  v29 = std::__shared_weak_count::lock(v27);
  if (!v29)
  {
    goto LABEL_104;
  }

  v30 = v29;
  p_shared_weak_owners = &v29->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v30);
  }

  v32 = a2;
  buf.__r_.__value_.__r.__words[0] = this;
  buf.__r_.__value_.__l.__size_ = v28;
  buf.__r_.__value_.__r.__words[2] = v30;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v33 = object;
  v86 = object;
  if (object)
  {
    dispatch_retain(object);
    v34 = object;
  }

  else
  {
    v34 = 0;
  }

  LOBYTE(v87) = a3;
  HIDWORD(v87) = v32;
  v35 = *(this + 11);
  v36 = operator new(0x28uLL);
  *v36 = this;
  v36[1] = v28;
  *&buf.__r_.__value_.__r.__words[1] = 0uLL;
  v36[2] = v30;
  v36[3] = v33;
  v86 = 0;
  v36[4] = v87;
  dispatch_group_notify_f(v34, v35, v36, dispatch::detail::group_notify<FSModuleICE::requestFSSync_sync(unsigned int,BOOL)::$_0>(dispatch_group_s *,dispatch_queue_s *,FSModuleICE::requestFSSync_sync(unsigned int,BOOL)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  std::__shared_weak_count::__release_weak(v30);
  if (object)
  {
    dispatch_release(object);
  }

LABEL_51:
  v37 = v91;
  if (v91 && !atomic_fetch_add((v91 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }
}

void sub_297555D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, dispatch_object_t object, char a27)
{
  operator delete(v28);
  operator delete(v27);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11FSModuleICEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11FSModuleICEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_13(void *a1, uint64_t a2, void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[5])
      {
        v10[0] = MEMORY[0x29EDCA5F8];
        v10[1] = 1174405120;
        v10[2] = ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_2_14;
        v10[3] = &__block_descriptor_tmp_15_2;
        v10[4] = v6;
        v9 = *a3;
        if (*a3)
        {
          v9 = _Block_copy(v9);
        }

        aBlock = v9;
        ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped((v6 + 72), v10);
        if (aBlock)
        {
          _Block_release(aBlock);
        }
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_2_14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = BBUFSServerFlushInProgress();
  v4 = *(v2 + 923);
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    xdict = v5;
  }

  else
  {
    v6 = xpc_null_create();
    xdict = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C272BA0](v6) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  xdict = v7;
LABEL_9:
  xpc_release(v6);
  v8 = xpc_BOOL_create(v3);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBEA08], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  v10 = xpc_BOOL_create(v4);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBEA10], v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v12 = 0;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>((a1 + 40), &v12, &xdict);
  xpc_release(xdict);
}

void ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_19(uint64_t a1, xpc_object_t *a2, uint64_t *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEED8]);
  *buf = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *buf = xpc_null_create();
  }

  __p = 0;
  v27 = 0;
  v28 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(*buf);
  v7 = *(a1 + 48);
  if (!v7)
  {
    goto LABEL_37;
  }

  v8 = std::__shared_weak_count::lock(v7);
  v27 = v8;
  if (!v8)
  {
    goto LABEL_37;
  }

  v9 = v8;
  __p = *(a1 + 40);
  if (__p)
  {
    v10 = *MEMORY[0x29EDBE950];
    v11 = strlen(*MEMORY[0x29EDBE950]);
    v12 = SHIBYTE(__s1[2]);
    if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
    {
      if (v11 != __s1[1])
      {
        v13 = *(v5 + 104);
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      if (v11 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(__s1[0], v10, v11))
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v11 != SHIBYTE(__s1[2]))
      {
        v13 = *(v5 + 104);
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }

      if (memcmp(__s1, v10, v11))
      {
LABEL_10:
        v13 = *(v5 + 104);
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        if (v12 < 0)
        {
LABEL_23:
          v15 = __s1[0];
          goto LABEL_24;
        }

LABEL_21:
        v15 = __s1;
LABEL_24:
        *buf = 136315138;
        *&buf[4] = v15;
        _os_log_error_impl(&dword_297476000, v13, OS_LOG_TYPE_ERROR, "Command [%s] not supported", buf, 0xCu);
LABEL_25:
        *buf = 0xAAAAAAAAAAAAAAAALL;
        v16 = xpc_dictionary_create(0, 0, 0);
        v17 = v16;
        if (v16)
        {
          *buf = v16;
        }

        else
        {
          v17 = xpc_null_create();
          *buf = v17;
          if (!v17)
          {
            v18 = xpc_null_create();
            v17 = 0;
            goto LABEL_32;
          }
        }

        if (MEMORY[0x29C272BA0](v17) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v17);
          goto LABEL_33;
        }

        v18 = xpc_null_create();
LABEL_32:
        *buf = v18;
LABEL_33:
        xpc_release(v17);
        v19 = xpc_string_create("Command not supported");
        if (!v19)
        {
          v19 = xpc_null_create();
        }

        xpc_dictionary_set_value(*buf, *MEMORY[0x29EDBE648], v19);
        v20 = xpc_null_create();
        xpc_release(v19);
        xpc_release(v20);
        v22 = -534716414;
        dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a3, &v22, buf);
        xpc_release(*buf);
        v9 = v27;
        if (!v27)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }
    }

    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 1174405120;
    v23[2] = ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_2_20;
    v23[3] = &__block_descriptor_tmp_23_2;
    v23[4] = v5;
    v14 = *a3;
    if (*a3)
    {
      v14 = _Block_copy(v14);
    }

    aBlock = v14;
    ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped((v5 + 72), v23);
    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

LABEL_36:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if ((SHIBYTE(__s1[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_37:
  if (SHIBYTE(__s1[2]) < 0)
  {
LABEL_38:
    operator delete(__s1[0]);
  }

LABEL_39:
  v21 = *MEMORY[0x29EDCA608];
}

void sub_297556478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_2_20(uint64_t a1)
{
  if (!FSModuleICE::eraseRemoteFileSystem_sync(*(a1 + 32)))
  {
    v11 = 3760250880;
    goto LABEL_32;
  }

  v18 = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v2 = off_2A18CAD88;
  if (!off_2A18CAD88)
  {
    ABMServer::create_default_global(&v22);
    v3 = *&v22.__r_.__value_.__l.__data_;
    *&v22.__r_.__value_.__l.__data_ = 0uLL;
    v4 = *(&off_2A18CAD88 + 1);
    off_2A18CAD88 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    size = v22.__r_.__value_.__l.__size_;
    if (v22.__r_.__value_.__l.__size_ && !atomic_fetch_add((v22.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v2 = off_2A18CAD88;
  }

  v18 = v2;
  v19 = *(&off_2A18CAD88 + 1);
  if (*(&off_2A18CAD88 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAD88 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v6 = *MEMORY[0x29EDBF140];
  v7 = strlen(*MEMORY[0x29EDBF140]);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v7 | 7) + 1;
    }

    p_dst = operator new(v12);
    __dst.__r_.__value_.__l.__size_ = v8;
    __dst.__r_.__value_.__r.__words[2] = v12 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
LABEL_22:
    memmove(p_dst, v6, v8);
    p_dst->__r_.__value_.__s.__data_[v8] = 0;
    v10 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_23:
    std::string::__init_copy_ctor_external(&v22, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    v21 = 0;
    goto LABEL_24;
  }

  *(&__dst.__r_.__value_.__s + 23) = v7;
  p_dst = &__dst;
  if (v7)
  {
    goto LABEL_22;
  }

  __dst.__r_.__value_.__s.__data_[0] = 0;
  v10 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  v22 = __dst;
  v21 = 0;
LABEL_24:
  v20 = 0;
  ABMServer::broadcast(v2, &v22, &v21, &v20);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v13 = v19;
  if (v19 && !atomic_fetch_add((v19 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v11 = 0;
LABEL_32:
  v14 = xpc_null_create();
  v15 = *(a1 + 40);
  v22.__r_.__value_.__r.__words[0] = v14;
  v16 = xpc_null_create();
  (*(v15 + 16))(v15, v11, &v22);
  xpc_release(v22.__r_.__value_.__l.__data_);
  xpc_release(v16);
}

void sub_297556820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  operator delete(v13);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t FSModuleICE::eraseRemoteFileSystem_sync(dispatch_object_t *this)
{
  v16 = *MEMORY[0x29EDCA608];
  FSModuleICE::handleBasebandReset_sync(this);
  memset(__dst, 170, sizeof(__dst));
  v2 = MEMORY[0x29C26FAA0]();
  v3 = strlen(v2);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v3 | 7) + 1;
    }

    v5 = operator new(v6);
    __dst[1] = v4;
    __dst[2] = (v6 | 0x8000000000000000);
    __dst[0] = v5;
    goto LABEL_9;
  }

  HIBYTE(__dst[2]) = v3;
  v5 = __dst;
  if (v3)
  {
LABEL_9:
    memmove(v5, v2, v4);
  }

  *(v4 + v5) = 0;
  v7 = support::fs::removeDirContents(__dst, 0);
  v8 = this[13];
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = __dst;
      if (SHIBYTE(__dst[2]) < 0)
      {
        v9 = __dst[0];
      }

      *buf = 136315138;
      v15 = v9;
      _os_log_impl(&dword_297476000, v8, OS_LOG_TYPE_DEFAULT, "#I removed contents of %s", buf, 0xCu);
      if (SHIBYTE(__dst[2]) < 0)
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v12 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      v12 = __dst[0];
    }

    *buf = 136315138;
    v15 = v12;
    _os_log_error_impl(&dword_297476000, v8, OS_LOG_TYPE_ERROR, "failed removing %s", buf, 0xCu);
    if (SHIBYTE(__dst[2]) < 0)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
LABEL_18:
    operator delete(__dst[0]);
  }

LABEL_19:
  v10 = *MEMORY[0x29EDCA608];
  return v7;
}

void sub_297556AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_28(void *a1, uint64_t a2, void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[5])
      {
        v10[0] = MEMORY[0x29EDCA5F8];
        v10[1] = 1174405120;
        v10[2] = ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_2_29;
        v10[3] = &__block_descriptor_tmp_32_1;
        v10[4] = v6;
        v9 = *a3;
        if (*a3)
        {
          v9 = _Block_copy(v9);
        }

        aBlock = v9;
        ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped((v6 + 72), v10);
        if (aBlock)
        {
          _Block_release(aBlock);
        }
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_2_29(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Request to allow rfs sync", v7, 2u);
  }

  *(v2 + 1097) = 0;
  v4 = xpc_null_create();
  v5 = *(a1 + 40);
  object = v4;
  v6 = xpc_null_create();
  (*(v5 + 16))(v5, 0, &object);
  xpc_release(object);
  xpc_release(v6);
}

void sub_297556CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_36(void *a1, uint64_t a2, void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[5])
      {
        v10[0] = MEMORY[0x29EDCA5F8];
        v10[1] = 1174405120;
        v10[2] = ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_2_37;
        v10[3] = &__block_descriptor_tmp_44_1;
        v10[4] = v6;
        v9 = *a3;
        if (*a3)
        {
          v9 = _Block_copy(v9);
        }

        aBlock = v9;
        ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped((v6 + 72), v10);
        if (aBlock)
        {
          _Block_release(aBlock);
        }
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_2_37(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Request to prevent rfs sync", buf, 2u);
  }

  *(v2 + 1097) = 1;
  memset(buf, 170, sizeof(buf));
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_38;
  aBlock[3] = &__block_descriptor_tmp_41;
  v4 = *(a1 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v15 = v4;
  v5 = _Block_copy(aBlock);
  v6 = *(v2 + 88);
  if (v6)
  {
    dispatch_retain(*(v2 + 88));
  }

  *buf = v5;
  *&buf[8] = v6;
  v7 = operator new(0x20uLL);
  *v7 = 0;
  v7[1] = 0;
  if (v5)
  {
    v8 = v2 + 1016;
    v7[2] = _Block_copy(v5);
    v7[3] = v6;
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = v2 + 1016;
  v7[2] = 0;
  v7[3] = v6;
  if (v6)
  {
LABEL_9:
    dispatch_retain(v6);
  }

LABEL_10:
  v7[1] = v8;
  v9 = *(v2 + 1016);
  *v7 = v9;
  *(v9 + 8) = v7;
  *(v2 + 1016) = v7;
  ++*(v2 + 1032);
  v10 = *(v2 + 104);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(v2 + 988);
    v13 = *(v2 + 984);
    *v17 = 67109376;
    v18 = v12;
    v19 = 1024;
    v20 = v13;
    _os_log_impl(&dword_297476000, v10, OS_LOG_TYPE_DEFAULT, "#I Checking response fSyncsCompleted=%u fSyncsRequested=%u", v17, 0xEu);
    if (*(v2 + 988) < *(v2 + 984))
    {
LABEL_12:
      if (!v6)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if (*(v2 + 988) < *(v2 + 984))
  {
    goto LABEL_12;
  }

  FSModuleICE::execPendingResponses_sync(v2, 1);
  if (v6)
  {
LABEL_13:
    dispatch_release(v6);
  }

LABEL_14:
  if (v5)
  {
    _Block_release(v5);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_297557068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_38(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3760250880;
  }

  v4 = xpc_null_create();
  v5 = *(a1 + 32);
  object = v4;
  v6 = xpc_null_create();
  (*(v5 + 16))(v5, v3, &object);
  xpc_release(object);
  xpc_release(v6);
}

void sub_297557134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_48(void *a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        *(v5 + 1040) = a2;
        v8 = *(v5 + 104);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v12 = a2;
          _os_log_impl(&dword_297476000, v8, OS_LOG_TYPE_DEFAULT, "#I ice::Client provided ARI context id: 0x%08x", buf, 8u);
          v8 = *(v5 + 104);
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_297476000, v8, OS_LOG_TYPE_DEFAULT, "#I Initializing BBU FS Server...", buf, 2u);
        }

        if ((FSModuleICE::initBBUServer_sync(v5) & 1) == 0)
        {
          v9 = *(v5 + 104);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_297476000, v9, OS_LOG_TYPE_ERROR, "failed FS Sync setup", buf, 2u);
            if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              goto LABEL_12;
            }

            goto LABEL_11;
          }
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_11:
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

LABEL_12:
  v10 = *MEMORY[0x29EDCA608];
}

uint64_t FSModuleICE::initBBUServer_sync(FSModuleICE *this)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29C26FAA0]();
  if (v2)
  {
    v3 = v2;
    if (BBUFSServerParametersInit())
    {
      if (FSModuleICE::initKTLOptions_sync(this))
      {
        memcpy(v18, this + 520, 0x170uLL);
        v4 = BBUFSServerCreate();
        if (v4)
        {
          shouldForceSyncFileSystem = capabilities::abs::shouldForceSyncFileSystem(v4);
          v6 = *(this + 260);
          if (BBUFSServerSetConfig())
          {
            v7 = BBUFSServerSetConfig();
          }

          else
          {
            v7 = 0;
          }

          v12 = *(this + 13);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = "false";
            v14 = *(this + 260);
            if (shouldForceSyncFileSystem)
            {
              v13 = "true";
            }

            v18[0] = 67109378;
            v18[1] = v14;
            LOWORD(v18[2]) = 2080;
            *(&v18[2] + 2) = v13;
            _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#I BBUFSConfig: ARI context: 0x%x ForcedSync: %s", v18, 0x12u);
          }

          if (v7)
          {
            v9 = 1;
            *(this + 920) = 1;
            v15 = *(this + 13);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v18[0]) = 0;
              _os_log_impl(&dword_297476000, v15, OS_LOG_TYPE_DEFAULT, "#I BBU+KTL are ready for FS Sync", v18, 2u);
            }

            goto LABEL_28;
          }

          v10 = *(this + 13);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v18[0]) = 0;
            v11 = "Failed to set BBUFS server config";
            goto LABEL_26;
          }

LABEL_27:
          v9 = 0;
LABEL_28:
          free(v3);
          goto LABEL_29;
        }

        v10 = *(this + 13);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        LOWORD(v18[0]) = 0;
        v11 = "failed creating file server";
      }

      else
      {
        v10 = *(this + 13);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        LOWORD(v18[0]) = 0;
        v11 = "failed to create KTL options";
      }
    }

    else
    {
      v10 = *(this + 13);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      LOWORD(v18[0]) = 0;
      v11 = "failed preparing fs sync parameters";
    }

LABEL_26:
    _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, v11, v18, 2u);
    goto LABEL_27;
  }

  v8 = *(this + 13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18[0]) = 0;
    _os_log_error_impl(&dword_297476000, v8, OS_LOG_TYPE_ERROR, "failed copying default destination", v18, 2u);
  }

  v9 = 0;
LABEL_29:
  v16 = *MEMORY[0x29EDCA608];
  return v9;
}

void ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_53(void *a1, int a2)
{
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v31 = v6;
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if (!a1[5])
  {
    goto LABEL_44;
  }

  v8 = *(v5 + 104);
  if ((*(v5 + 920) & 1) == 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297476000, v8, OS_LOG_TYPE_ERROR, "Skipping baseband indication request for FS sync as baseband is not ready", buf, 2u);
    }

    goto LABEL_44;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v8, OS_LOG_TYPE_DEFAULT, "#I Triggering FS Sync due to baseband indication", buf, 2u);
  }

  FSModuleICE::requestFSSync_sync(v5, 2u, 0);
  if (!a2)
  {
LABEL_44:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    return;
  }

  v9 = *(v5 + 104);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Performing soft reset due to baseband request for reset after FS sync", buf, 2u);
  }

  v10 = xpc_dictionary_create(0, 0, 0);
  if (v10 || (v10 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v10) == MEMORY[0x29EDCAA00])
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
  *buf = operator new(0x30uLL);
  v29 = xmmword_2976A1AE0;
  strcpy(*buf, "Baseband request for reset after FS sync");
  v12 = xpc_string_create(*MEMORY[0x29EDBEB68]);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBEB00], v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  v14 = xpc_string_create(*MEMORY[0x29EDBF748]);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBEEE0], v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  if (v29 >= 0)
  {
    v16 = buf;
  }

  else
  {
    v16 = *buf;
  }

  v17 = xpc_string_create(v16);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBED88], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v19 = *MEMORY[0x29EDBEAA8];
  v20 = strlen(*MEMORY[0x29EDBEAA8]);
  if (v20 >= 0x7FFFFFFFFFFFFFF8)
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
    __dst[1] = v21;
    v27 = v23 | 0x8000000000000000;
    __dst[0] = v22;
    goto LABEL_35;
  }

  HIBYTE(v27) = v20;
  v22 = __dst;
  if (v20)
  {
LABEL_35:
    memmove(v22, v19, v21);
  }

  *(v21 + v22) = 0;
  object = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    object = xpc_null_create();
  }

  v24 = 0;
  Service::runCommand(v5, __dst, &object, &v24);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v11);
  v7 = v31;
  if (v31)
  {
    goto LABEL_44;
  }
}

void sub_297557A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  xpc_release(object);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  xpc_release(v23);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v24 - 64);
  _Unwind_Resume(a1);
}

void ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_59(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[5])
      {
        *(v3 + 922) = 1;
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = v4;
        (v4->__on_zero_shared)();

        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void ___ZN11FSModuleICE28registerCommandHandlers_syncEv_block_invoke_64(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        *(v3 + 922) = 0;
        FSModuleICE::runDeferred_sync(v3);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);

        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void FSModuleICE::runDeferred_sync(FSModuleICE *this)
{
  if ((*(this + 921) & 1) == 0 && (*(this + 922) & 1) == 0)
  {
    v2 = *(this + 122);
    if (v2)
    {
      v3 = *(this + 118);
      v4 = *(this + 119);
      if (v4 == v3)
      {
        *(this + 122) = 0;
        v11 = 0;
      }

      else
      {
        v5 = *(this + 121);
        v6 = &v3[v5 >> 9];
        v7 = *v6 + 8 * (v5 & 0x1FF);
        v8 = *(v3 + (((v5 + v2) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v5 + v2) & 0x1FF);
        if (v7 != v8)
        {
          do
          {
            v9 = *(this + 13);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *v13 = 0;
              _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Invoking deferred sync", v13, 2u);
            }

            FSModuleICE::requestFSSync_sync(this, *v7, *(v7 + 4));
            v7 += 8;
            if (v7 - *v6 == 4096)
            {
              v10 = v6[1];
              ++v6;
              v7 = v10;
            }
          }

          while (v7 != v8);
          v3 = *(this + 118);
          v4 = *(this + 119);
        }

        *(this + 122) = 0;
        v11 = v4 - v3;
        if (v11 >= 3)
        {
          do
          {
            operator delete(*v3);
            v3 = (*(this + 118) + 8);
            *(this + 118) = v3;
            v11 = (*(this + 119) - v3) >> 3;
          }

          while (v11 > 2);
        }
      }

      if (v11 == 1)
      {
        v12 = 256;
      }

      else
      {
        if (v11 != 2)
        {
          return;
        }

        v12 = 512;
      }

      *(this + 121) = v12;
    }
  }
}

uint64_t dispatch::callback<void({block_pointer})(BOOL,unsigned long long,unsigned long long)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(dispatch::group_session)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(void)>::~callback(uint64_t a1)
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

void FSModuleICE::registerEventHandlers_sync(FSModuleICE *this)
{
  v47 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", buf, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_80:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_80;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_80;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (capabilities::radio::initium(v5))
  {
    if (!MEMORY[0x2A1C7B500])
    {
LABEL_25:
      v14 = *(this + 13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297476000, v14, OS_LOG_TYPE_ERROR, "INT target but HSFilerDynamic library is not available. Should never happen", buf, 2u);
      }

      goto LABEL_27;
    }

    v7 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
    v8 = xmmword_2A18CAD38;
    if (!xmmword_2A18CAD38)
    {
      HSFilerRT::create_default_global(buf, v7);
      v9 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v10 = *(&xmmword_2A18CAD38 + 1);
      xmmword_2A18CAD38 = v9;
      if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }

      v11 = *&buf[8];
      if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v8 = xmmword_2A18CAD38;
    }

    v12 = *(&xmmword_2A18CAD38 + 1);
    if (*(&xmmword_2A18CAD38 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAD38 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
    *(this + 133) = v8;
    v13 = *(this + 134);
    *(this + 134) = v12;
    if (v13)
    {
      if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v8 = *(this + 133);
    }

    if (!v8)
    {
      v6 = GetOsLogContext()[1];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        __break(1u);
      }

      *buf = 136315906;
      *&buf[4] = "ABM ASSERT";
      *&buf[12] = 2080;
      *&buf[14] = "fHSFilerRT != nullptr";
      *&buf[22] = 2080;
      v44 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/RFS/FSModuleICE.cpp";
      v45 = 1024;
      v46 = 348;
      _os_log_fault_impl(&dword_297476000, v6, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", buf, 0x26u);
      __break(1u);
      goto LABEL_25;
    }
  }

LABEL_27:
  v15 = *MEMORY[0x29EDBF460];
  v16 = strlen(*MEMORY[0x29EDBF460]);
  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = v16;
  if (v16 >= 0x17)
  {
    if ((v16 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v16 | 7) + 1;
    }

    v18 = operator new(v19);
    *&buf[8] = v17;
    *&buf[16] = v19 | 0x8000000000000000;
    *buf = v18;
    goto LABEL_35;
  }

  buf[23] = v16;
  v18 = buf;
  if (v16)
  {
LABEL_35:
    memmove(v18, v15, v17);
  }

  v18[v17] = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v20 = operator new(0x20uLL);
  *v20 = &unk_2A1E47900;
  v20[1] = this;
  v20[2] = v4;
  v20[3] = v6;
  v42 = v20;
  Service::registerEventHandler(this, buf, v41);
  if (v42 == v41)
  {
    (*(*v42 + 32))(v42);
    if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_69;
  }

  if (v42)
  {
    (*(*v42 + 40))();
  }

  if ((buf[23] & 0x80000000) != 0)
  {
LABEL_69:
    operator delete(*buf);
  }

LABEL_40:
  v21 = *MEMORY[0x29EDBF278];
  v22 = strlen(*MEMORY[0x29EDBF278]);
  if (v22 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v23 = v22;
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

    v24 = operator new(v25);
    *&buf[8] = v23;
    *&buf[16] = v25 | 0x8000000000000000;
    *buf = v24;
    goto LABEL_48;
  }

  buf[23] = v22;
  v24 = buf;
  if (v22)
  {
LABEL_48:
    memmove(v24, v21, v23);
  }

  v24[v23] = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v26 = operator new(0x20uLL);
  *v26 = &unk_2A1E47980;
  v26[1] = this;
  v26[2] = v4;
  v26[3] = v6;
  v40 = v26;
  Service::registerEventHandler(this, buf, v39);
  if (v40 == v39)
  {
    (*(*v40 + 32))(v40);
    if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_71;
  }

  if (v40)
  {
    (*(*v40 + 40))();
  }

  if ((buf[23] & 0x80000000) != 0)
  {
LABEL_71:
    operator delete(*buf);
  }

LABEL_53:
  v27 = *MEMORY[0x29EDBEFF0];
  v28 = strlen(*MEMORY[0x29EDBEFF0]);
  if (v28 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v29 = v28;
  if (v28 >= 0x17)
  {
    if ((v28 | 7) == 0x17)
    {
      v31 = 25;
    }

    else
    {
      v31 = (v28 | 7) + 1;
    }

    v30 = operator new(v31);
    *&buf[8] = v29;
    *&buf[16] = v31 | 0x8000000000000000;
    *buf = v30;
    goto LABEL_61;
  }

  buf[23] = v28;
  v30 = buf;
  if (v28)
  {
LABEL_61:
    memmove(v30, v27, v29);
  }

  v30[v29] = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v32 = operator new(0x20uLL);
  *v32 = &unk_2A1E47A00;
  v32[1] = this;
  v32[2] = v4;
  v32[3] = v6;
  v38 = v32;
  Service::registerEventHandler(this, buf, v37);
  if (v38 == v37)
  {
    (*(*v38 + 32))(v38);
    if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_73:
    operator delete(*buf);
    if (!*(this + 133))
    {
      goto LABEL_78;
    }

    goto LABEL_74;
  }

  if (v38)
  {
    (*(*v38 + 40))();
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    goto LABEL_73;
  }

LABEL_66:
  if (!*(this + 133))
  {
    goto LABEL_78;
  }

LABEL_74:
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 1174405120;
  v34[2] = ___ZN11FSModuleICE26registerEventHandlers_syncEv_block_invoke;
  v34[3] = &__block_descriptor_tmp_74_1;
  v34[4] = this;
  v34[5] = v4;
  v35 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  aBlock = _Block_copy(v34);
  HSFilerRT::registerBasebandResetDelegate();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

LABEL_78:
  Service::eventsOn(this);
  std::__shared_weak_count::__release_weak(v6);
  v33 = *MEMORY[0x29EDCA608];
}

void sub_2975586A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  std::__shared_weak_count::__release_weak(v25);
  _Unwind_Resume(a1);
}

void ___ZN11FSModuleICE26registerEventHandlers_syncEv_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v17 = v6;
    if (v6)
    {
      if (!a1[5])
      {
LABEL_15:
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v14 = v6;
          (v6->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v14);
        }

        return;
      }

      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
      }

      else
      {
        __p = *a2;
      }

      v7 = v5[10];
      if (!v7 || (v8 = v5[9], (v9 = std::__shared_weak_count::lock(v7)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v10 = v9;
      v11 = operator new(0x20uLL);
      *v11 = v5;
      *(v11 + 8) = __p;
      memset(&__p, 0, sizeof(__p));
      v12 = v5[11];
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = operator new(0x18uLL);
      *v13 = v11;
      v13[1] = v8;
      v13[2] = v10;
      dispatch_async_f(v12, v13, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11FSModuleICEE15execute_wrappedIZZNS3_26registerEventHandlers_syncEvEUb_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_11:
          v6 = v17;
          if (!v17)
          {
            return;
          }

          goto LABEL_15;
        }
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      v6 = v17;
      if (!v17)
      {
        return;
      }

      goto LABEL_15;
    }
  }
}

void sub_29755896C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void FSModuleICE::sleep(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped<FSModuleICE::sleep(dispatch::group_session)::$_0>(FSModuleICE::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleICE::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<FSModuleICE::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void FSModuleICE::wake(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped<FSModuleICE::wake(dispatch::group_session)::$_0>(FSModuleICE::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleICE::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<FSModuleICE::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

uint64_t FSModuleICE::requestFSSync_sync(unsigned int,BOOL)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void FSModuleICE::restartSyncTimer_sync(FSModuleICE *this)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(this + 116);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 116));
    *(this + 116) = 0;
  }

  v3 = capabilities::abs::fileSystemFlushInterval(v2);
  v4 = *(this + 13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = v3;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Automatic sync interval set to %llu seconds", buf, 0xCu);
  }

  if (v3)
  {
    v5 = 1000000000 * v3;
    v6 = dispatch_source_create(MEMORY[0x29EDCA5D0], 2uLL, 0, *(this + 11));
    *(this + 116) = v6;
    v7 = dispatch_time(0x8000000000000000, v5);
    dispatch_source_set_timer(v6, v7, v5, 0x45D964B800uLL);
    v8 = *(this + 10);
    if (!v8 || (v9 = *(this + 9), (v10 = std::__shared_weak_count::lock(v8)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v11 = v10;
    p_shared_weak_owners = &v10->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v11);
    }

    v13 = *(this + 116);
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 1174405120;
    handler[2] = ___ZN11FSModuleICE21restartSyncTimer_syncEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_77;
    handler[4] = this;
    handler[5] = v9;
    v16 = v11;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    dispatch_source_set_event_handler(v13, handler);
    dispatch_activate(*(this + 116));
    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void FSModuleICE::cancelSyncTimer_sync(FSModuleICE *this)
{
  v2 = *(this + 116);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 116));
    *(this + 116) = 0;
  }
}

void ___ZN11FSModuleICE21restartSyncTimer_syncEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    v9 = v4;
    if (v4)
    {
      v5 = v4;
      if (!a1[5])
      {
        goto LABEL_9;
      }

      v6 = *(v3 + 104);
      if (*(v3 + 920))
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I scheduled filesystem flush", v7, 2u);
        }

        FSModuleICE::requestFSSync_sync(v3, 4u, 0);
LABEL_9:
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }

LABEL_12:
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        return;
      }

      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *v7 = 0;
      _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "Skipping scheduled FS sync as baseband is not ready", v7, 2u);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_12;
      }
    }
  }
}

void sub_297558F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void FSModuleICE::singleFlushOperation_sync(FSModuleICE *this, int a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = *(this + 13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "false";
    v6 = *(this + 246);
    if (a2)
    {
      v5 = "true";
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 67109378;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v6;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = v5;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Requesting flush(%u) forShutdown=%s", &buf, 0x12u);
  }

  if (BBUFSServerStart())
  {
    if (BBUFSServerSetConfig())
    {
      v7 = BBUFSServerFlush();
      goto LABEL_11;
    }
  }

  else
  {
    v8 = *(this + 13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_297476000, v8, OS_LOG_TYPE_ERROR, "failed starting file server", &buf, 2u);
      v9 = *(this + 13);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

LABEL_43:
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_297476000, v9, OS_LOG_TYPE_ERROR, "failed to set shutdown flag for NVM sync with BBU", &buf, 2u);
      goto LABEL_10;
    }
  }

  v9 = *(this + 13);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_43;
  }

LABEL_10:
  v7 = 0;
LABEL_11:
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 88))(&v21, this);
  v10 = v21;
  if (!v21)
  {
    goto LABEL_20;
  }

  if (*(this + 1015) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 124), *(this + 125));
  }

  else
  {
    __p = *(this + 992);
  }

  v11 = *(v10 + 48);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = __p;
  }

  (*(*v11 + 32))(v11, &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_20:
      v12 = *(this + 13);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v12 = *(this + 13);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
LABEL_21:
    v13 = *(this + 480);
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v7;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = v13;
    _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#I Flush completed with success: %u, running: %u", &buf, 0xEu);
  }

LABEL_22:
  *(this + 1096) = *(this + 512);
  if (v7)
  {
    *(this + 923) = 0;
  }

  FSModuleICE::submitMetric_sync(this, v7);
  if (*(this + 480))
  {
    if (v7)
    {
      BBUFSServerStop();
      v14 = *(this + 247) + 1;
      *(this + 247) = v14;
      v15 = *(this + 13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(this + 246);
        LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
        HIDWORD(buf.__r_.__value_.__r.__words[0]) = v14;
        LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 2) = v16;
        _os_log_impl(&dword_297476000, v15, OS_LOG_TYPE_DEFAULT, "#I Checking response fSyncsCompleted=%u fSyncsRequested=%u", &buf, 0xEu);
        v14 = *(this + 247);
      }

      if (v14 >= *(this + 246))
      {
        FSModuleICE::execPendingResponses_sync(this, 1);
      }
    }

    else if (*(this + 920) == 1)
    {
      buf.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
      *&buf.__r_.__value_.__r.__words[1] = xmmword_2976A1AF0;
      strcpy(buf.__r_.__value_.__l.__data_, "filesystem flush operation failed -- check ARI and BB state --");
      FSModuleICE::resetBaseband_sync(this, &buf);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v17 = *(this + 13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_297476000, v17, OS_LOG_TYPE_DEFAULT, "#I file server has stopped", &buf, 2u);
    }
  }

  v18 = v22;
  if (v22 && !atomic_fetch_add((v22 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = *MEMORY[0x29EDCA608];
}

void sub_297559428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void FSModuleICE::submitMetric_sync(FSModuleICE *this, char a2)
{
  v2 = *(this + 270);
  if (!v2)
  {
    return;
  }

  v5 = *(this + 923);
  v6 = v2 != 5;
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
  v10 = xpc_int64_create(*(this + 270));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, *MEMORY[0x29EDBE9A0], v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  SystemTime = TelephonyUtilGetSystemTime();
  v13 = xpc_uint64_create(SystemTime - *(this + 136));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, *MEMORY[0x29EDBEC18], v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = xpc_BOOL_create((v6 | ~v5) & a2);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, *MEMORY[0x29EDBEAC8], v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = xpc_BOOL_create((*(this + 1096) & 1) == 0);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, *MEMORY[0x29EDBF280], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v19 = xpc_dictionary_create(0, 0, 0);
  if (v19 || (v19 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v19) == v8)
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
  v21 = xpc_string_create(*MEMORY[0x29EDBE928]);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(v20, *MEMORY[0x29EDBE9B0], v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = xpc_string_create(*MEMORY[0x29EDBE8D8]);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  xpc_dictionary_set_value(v20, *MEMORY[0x29EDBE7F8], v23);
  v24 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v24);
  v25 = xpc_string_create(*MEMORY[0x29EDBEAD0]);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v20, *MEMORY[0x29EDBE9B8], v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  if (v9)
  {
    xpc_retain(v9);
    v27 = v9;
  }

  else
  {
    v27 = xpc_null_create();
  }

  xpc_dictionary_set_value(v20, *MEMORY[0x29EDBF020], v27);
  v28 = xpc_null_create();
  xpc_release(v27);
  xpc_release(v28);
  v29 = xpc_dictionary_create(0, 0, 0);
  if (v29 || (v29 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v29) == v8)
    {
      xpc_retain(v29);
      v30 = v29;
    }

    else
    {
      v30 = xpc_null_create();
    }
  }

  else
  {
    v30 = xpc_null_create();
    v29 = 0;
  }

  xpc_release(v29);
  v31 = xpc_string_create(*MEMORY[0x29EDBE550]);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  xpc_dictionary_set_value(v30, *MEMORY[0x29EDBE588], v31);
  v32 = xpc_null_create();
  xpc_release(v31);
  xpc_release(v32);
  if (v20)
  {
    xpc_retain(v20);
    v33 = v20;
  }

  else
  {
    v33 = xpc_null_create();
  }

  xpc_dictionary_set_value(v30, *MEMORY[0x29EDBE580], v33);
  v34 = xpc_null_create();
  xpc_release(v33);
  xpc_release(v34);
  v35 = *MEMORY[0x29EDBEBD0];
  v36 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v36 >= 0x7FFFFFFFFFFFFFF8)
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

    v38 = operator new(v39);
    __dst[1] = v37;
    v43 = v39 | 0x8000000000000000;
    __dst[0] = v38;
LABEL_51:
    memmove(v38, v35, v37);
    *(v37 + v38) = 0;
    object = v30;
    if (v30)
    {
      goto LABEL_46;
    }

LABEL_52:
    object = xpc_null_create();
    goto LABEL_53;
  }

  HIBYTE(v43) = v36;
  v38 = __dst;
  if (v36)
  {
    goto LABEL_51;
  }

  LOBYTE(__dst[0]) = 0;
  object = v30;
  if (!v30)
  {
    goto LABEL_52;
  }

LABEL_46:
  xpc_retain(v30);
LABEL_53:
  v40 = 0;
  Service::runCommand(this, __dst, &object, &v40);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__dst[0]);
  }

  *(this + 270) = 0;
  xpc_release(v30);
  xpc_release(v20);
  xpc_release(v9);
}

void sub_297559A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void FSModuleICE::resetBaseband_sync(FSModuleICE *a1, uint64_t a2)
{
  FSModuleICE::execPendingResponses_sync(a1, 0);
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v6 = xpc_string_create(*MEMORY[0x29EDBEB60]);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDBEB00], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = xpc_string_create(*MEMORY[0x29EDBF7E8]);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDBEEE0], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v11 = xpc_string_create(v10);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDBED88], v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v13 = *MEMORY[0x29EDBEAA8];
  v14 = strlen(*MEMORY[0x29EDBEAA8]);
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
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
    __dst[1] = v15;
    v21 = v17 | 0x8000000000000000;
    __dst[0] = v16;
LABEL_25:
    memmove(v16, v13, v15);
    *(v15 + v16) = 0;
    object = v5;
    if (v5)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  HIBYTE(v21) = v14;
  v16 = __dst;
  if (v14)
  {
    goto LABEL_25;
  }

  LOBYTE(__dst[0]) = 0;
  object = v5;
  if (v5)
  {
LABEL_20:
    xpc_retain(v5);
    goto LABEL_27;
  }

LABEL_26:
  object = xpc_null_create();
LABEL_27:
  v18 = 0;
  Service::runCommand(a1, __dst, &object, &v18);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__dst[0]);
  }

  xpc_release(v5);
}

void sub_297559E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v17);
  _Unwind_Resume(a1);
}

uint64_t FSModuleICE::initKTLOptions_sync(FSModuleICE *this)
{
  v10 = *MEMORY[0x29EDCA608];
  *(this + 77) = this + 888;
  v2 = capabilities::abs::fileSystemFlushTimeout(this);
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v2;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I NVMTimeout = %lld sec", &v8, 0xCu);
  }

  v4 = *(this + 260);
  v5 = KTLInitOptions();
  result = 0;
  if (v5)
  {
    result = KTLOpenChannel();
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void FSModuleICE::handleBasebandReset_sync(dispatch_object_t *this)
{
  FSModuleICE::execPendingResponses_sync(this, 0);
  v2 = this[116];
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(this[116]);
    this[116] = 0;
  }

  if (*(this + 920) == 1)
  {
    *(this + 923) = 0;
    *(this + 920) = 0;
    v3 = this[13];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I RFS Not Ready", buf, 2u);
    }

    if (BBUFSServerSetConfig())
    {
      BBUFSServerStop();
    }

    else
    {
      v4 = this[13];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_error_impl(&dword_297476000, v4, OS_LOG_TYPE_ERROR, "failed to set shutdown flag with BBU for baseband reset", v5, 2u);
      }
    }

    BBUFSServerRelease();
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<HSFilerRT>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t *std::list<dispatch::callback<void({block_pointer})(BOOL)>>::~list(uint64_t *a1)
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
        v6 = v2[1];
        v7 = v2[3];
        if (v7)
        {
          dispatch_release(v7);
        }

        v8 = v2[2];
        if (v8)
        {
          _Block_release(v8);
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != a1);
    }
  }

  return a1;
}

atomic_ullong *std::shared_ptr<FSModuleICE>::shared_ptr[abi:ne200100]<FSModuleICE,std::shared_ptr<FSModuleICE> ctu::SharedSynchronizable<FSModuleICE>::make_shared_ptr<FSModuleICE>(FSModuleICE*)::{lambda(FSModuleICE*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E47848;
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

void sub_29755A36C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<FSModuleICE> ctu::SharedSynchronizable<FSModuleICE>::make_shared_ptr<FSModuleICE>(FSModuleICE*)::{lambda(FSModuleICE*)#1}::operator() const(FSModuleICE*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<FSModuleICE *,std::shared_ptr<FSModuleICE> ctu::SharedSynchronizable<FSModuleICE>::make_shared_ptr<FSModuleICE>(FSModuleICE*)::{lambda(FSModuleICE *)#1},std::allocator<FSModuleICE>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<FSModuleICE *,std::shared_ptr<FSModuleICE> ctu::SharedSynchronizable<FSModuleICE>::make_shared_ptr<FSModuleICE>(FSModuleICE*)::{lambda(FSModuleICE *)#1},std::allocator<FSModuleICE>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI11FSModuleICEE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI11FSModuleICEE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI11FSModuleICEE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI11FSModuleICEE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<FSModuleICE> ctu::SharedSynchronizable<FSModuleICE>::make_shared_ptr<FSModuleICE>(FSModuleICE*)::{lambda(FSModuleICE*)#1}::operator() const(FSModuleICE*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::deque<std::tuple<unsigned int,BOOL>>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI11FSModuleICEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E478C0;
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

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrIK11FSModuleICEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrIK11FSModuleICEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped<FSModuleICE::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(FSModuleICE::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleICE::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<FSModuleICE::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  FSModuleICE::registerCommandHandlers_sync(**a1);
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

void sub_29755A844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped<FSModuleICE::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(FSModuleICE::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleICE::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<FSModuleICE::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  FSModuleICE::registerEventHandlers_sync(**a1);
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

void sub_29755A93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_0,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E47900;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_0,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E47900;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_0,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E47900;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_0,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E47900;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_0,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_0,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_0,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped<FSModuleICE::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(FSModuleICE::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleICE::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<FSModuleICE::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

void sub_29755AD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_0,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN11FSModuleICE26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN11FSModuleICE26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN11FSModuleICE26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN11FSModuleICE26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped<FSModuleICE::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(FSModuleICE::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleICE::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<FSModuleICE::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[2];
  v43 = 0xAAAAAAAAAAAAAAAALL;
  object[0] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::bridge(cf, object, v5);
  v6 = cf[0];
  if (!cf[0] || (v7 = CFGetTypeID(cf[0]), v7 != CFDictionaryGetTypeID()))
  {
    v6 = 0;
    v43 = 0;
    v8 = cf[0];
    if (!cf[0])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v43 = v6;
  CFRetain(v6);
  v8 = cf[0];
  if (cf[0])
  {
LABEL_9:
    CFRelease(v8);
  }

LABEL_10:
  xpc_release(object[0]);
  if (v6)
  {
    v42[0] = 0xAAAAAAAAAAAAAAAALL;
    v42[1] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(v42, v6);
    cf[0] = 0;
    cf[1] = 0;
    v41 = 0;
    ctu::cf::MakeCFString::MakeCFString(__p, *MEMORY[0x29EDBEAF8]);
    ctu::cf::map_adapter::getString();
    MEMORY[0x29C270E70](__p);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(cf[0]);
    }

    *cf = *object;
    v41 = object[2];
    v9 = *MEMORY[0x29EDBEDF0];
    v10 = strlen(*MEMORY[0x29EDBEDF0]);
    v11 = SHIBYTE(object[2]);
    v12 = MEMORY[0x29EDBEFB8];
    if ((SHIBYTE(object[2]) & 0x8000000000000000) != 0)
    {
      if (v10 == cf[1])
      {
        if (v10 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(cf[0], v9, v10))
        {
          goto LABEL_45;
        }
      }
    }

    else if (v10 == SHIBYTE(v41) && !memcmp(cf, v9, v10))
    {
LABEL_45:
      *(v3 + 984) = 0;
      FSModuleICE::restartSyncTimer_sync(v3);
      goto LABEL_73;
    }

    v13 = *v12;
    v14 = strlen(*v12);
    if ((v11 & 0x80000000) != 0)
    {
      if (v14 == cf[1])
      {
        if (v14 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(cf[0], v13, v14))
        {
          goto LABEL_50;
        }
      }
    }

    else if (v14 == v11 && !memcmp(cf, v13, v14))
    {
LABEL_50:
      v21 = *(v3 + 1048);
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }

      goto LABEL_73;
    }

    v15 = *MEMORY[0x29EDBF210];
    v16 = strlen(*MEMORY[0x29EDBF210]);
    if ((v11 & 0x80000000) != 0)
    {
      if (v16 == cf[1])
      {
        if (v16 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(cf[0], v15, v16))
        {
LABEL_52:
          memset(object, 170, sizeof(object));
          v22 = *MEMORY[0x29EDBEB00];
          __p[0] = 0;
          __p[1] = 0;
          v38 = 0;
          ctu::cf::MakeCFString::MakeCFString(&v44, v22);
          ctu::cf::map_adapter::getString();
          MEMORY[0x29C270E70](&v44);
          if (SHIBYTE(v38) < 0)
          {
            operator delete(__p[0]);
          }

          v23 = *MEMORY[0x29EDBEB60];
          v24 = strlen(*MEMORY[0x29EDBEB60]);
          v25 = SHIBYTE(object[2]);
          if ((SHIBYTE(object[2]) & 0x8000000000000000) != 0)
          {
            if (v24 == object[1])
            {
              if (v24 == -1)
              {
                std::string::__throw_out_of_range[abi:ne200100]();
              }

              if (!memcmp(object[0], v23, v24))
              {
                goto LABEL_69;
              }
            }
          }

          else if (v24 == SHIBYTE(object[2]) && !memcmp(object, v23, v24))
          {
LABEL_69:
            FSModuleICE::handleBasebandReset_sync(v3);
            v29 = *(v3 + 104);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(__p[0]) = 0;
              _os_log_impl(&dword_297476000, v29, OS_LOG_TYPE_DEFAULT, "#I Hard Will-Reset", __p, 2u);
            }

            goto LABEL_71;
          }

          v26 = strlen(*MEMORY[0x29EDBEB68]);
          v27 = v26;
          if ((v25 & 0x80000000) != 0)
          {
            if (v26 == object[1])
            {
              if (v26 == -1)
              {
                std::string::__throw_out_of_range[abi:ne200100]();
              }

              v28 = object[0];
              goto LABEL_67;
            }
          }

          else if (v26 == v25)
          {
            v28 = object;
LABEL_67:
            if (!memcmp(v28, *MEMORY[0x29EDBEB68], v27))
            {
              *(v3 + 923) = 1;
              *(v3 + 1088) = TelephonyUtilGetSystemTime();
              *(v3 + 1080) = 5;
              *(v3 + 1096) = 1;
            }
          }

LABEL_71:
          if (SHIBYTE(object[2]) < 0)
          {
            operator delete(object[0]);
          }

          goto LABEL_73;
        }
      }
    }

    else if (v16 == v11 && !memcmp(cf, v15, v16))
    {
      goto LABEL_52;
    }

    v17 = *MEMORY[0x29EDBF0C8];
    v18 = strlen(*MEMORY[0x29EDBF0C8]);
    if ((v11 & 0x80000000) != 0)
    {
      if (v18 == cf[1])
      {
        if (v18 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(cf[0], v17, v18))
        {
          goto LABEL_49;
        }
      }
    }

    else if (v18 == v11 && !memcmp(cf, v17, v18))
    {
      goto LABEL_49;
    }

    v19 = *MEMORY[0x29EDBF420];
    v20 = strlen(*MEMORY[0x29EDBF420]);
    if ((v11 & 0x80000000) != 0)
    {
      if (v20 != cf[1])
      {
        goto LABEL_73;
      }

      if (v20 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(cf[0], v19, v20))
      {
LABEL_73:
        v30 = *(v3 + 1064);
        v31 = HIBYTE(v41);
        if (!v30)
        {
          goto LABEL_77;
        }

        v32 = *v12;
        v33 = strlen(*v12);
        if (SHIBYTE(v41) < 0)
        {
          if (v33 != cf[1])
          {
            goto LABEL_83;
          }

          if (v33 == -1)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          if (memcmp(cf[0], v32, v33))
          {
            goto LABEL_77;
          }
        }

        else
        {
          if (v33 != HIBYTE(v41))
          {
            goto LABEL_84;
          }

          if (memcmp(cf, v32, v33))
          {
LABEL_77:
            if (v31 < 0)
            {
              goto LABEL_83;
            }

LABEL_84:
            MEMORY[0x29C270ED0](v42);
            CFRelease(v6);
            goto LABEL_85;
          }
        }

        HSFilerRT::basebandReadyEventHandler(v30);
        if ((HIBYTE(v41) & 0x80) == 0)
        {
          goto LABEL_84;
        }

LABEL_83:
        operator delete(cf[0]);
        goto LABEL_84;
      }
    }

    else if (v20 != v11 || memcmp(cf, v19, v20))
    {
      goto LABEL_73;
    }

LABEL_49:
    FSModuleICE::handleBasebandReset_sync(v3);
    goto LABEL_73;
  }

LABEL_85:
  xpc_release(v2[2]);
  v2[2] = 0;
  v34 = v2[1];
  if (v34)
  {
    dispatch_group_leave(v34);
    v35 = v2[1];
    if (v35)
    {
      dispatch_release(v35);
    }
  }

  operator delete(v2);
  v36 = a1[2];
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  operator delete(a1);
}

void sub_29755B41C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  MEMORY[0x29C270ED0](&a30);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v30 - 80));
  std::unique_ptr<FSModuleICE::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<FSModuleICE::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void sub_29755B4E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, uint64_t a15, uint64_t a16, char a17)
{
  xpc_release(object);
  std::unique_ptr<FSModuleICE::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<FSModuleICE::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<FSModuleICE::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<FSModuleICE::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

uint64_t std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_1,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E47980;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_1,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E47980;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_1,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E47980;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_1,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E47980;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_1,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_1,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_1,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped<FSModuleICE::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(FSModuleICE::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleICE::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<FSModuleICE::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

uint64_t std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_1,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN11FSModuleICE26registerEventHandlers_syncEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN11FSModuleICE26registerEventHandlers_syncEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN11FSModuleICE26registerEventHandlers_syncEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN11FSModuleICE26registerEventHandlers_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped<FSModuleICE::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(FSModuleICE::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleICE::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<FSModuleICE::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  *(v3 + 920) = 0;
  v4 = *(v3 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Reset Detected", buf, 2u);
  }

  v5 = *(v3 + 1064);
  if (v5)
  {
    HSFilerRT::basebandResetEventHandler(v5);
  }

  v6 = v2[1];
  if (v6)
  {
    dispatch_group_leave(v6);
    v7 = v2[1];
    if (v7)
    {
      dispatch_release(v7);
    }
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

void sub_29755BA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_2,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E47A00;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_2,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E47A00;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_2,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E47A00;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_2,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E47A00;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_2,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_2,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_2,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped<FSModuleICE::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(FSModuleICE::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleICE::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<FSModuleICE::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

uint64_t std::__function::__func<FSModuleICE::registerEventHandlers_sync(void)::$_2,std::allocator<FSModuleICE::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN11FSModuleICE26registerEventHandlers_syncEvE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN11FSModuleICE26registerEventHandlers_syncEvE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN11FSModuleICE26registerEventHandlers_syncEvE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN11FSModuleICE26registerEventHandlers_syncEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped<FSModuleICE::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(FSModuleICE::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleICE::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<FSModuleICE::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v3 + 984);
    *buf = 67109120;
    v13 = v6;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I syncs requested: %u", buf, 8u);
    v4 = *(v3 + 104);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
LABEL_3:
      v5 = *(v3 + 1064);
      if (!v5)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_3;
  }

  v7 = *(v3 + 988);
  *buf = 67109120;
  v13 = v7;
  _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I syncs completed: %u", buf, 8u);
  v5 = *(v3 + 1064);
  if (v5)
  {
LABEL_7:
    HSFilerRT::dumpState(v5);
  }

LABEL_8:
  v8 = v2[1];
  if (v8)
  {
    dispatch_group_leave(v8);
    v9 = v2[1];
    if (v9)
    {
      dispatch_release(v9);
    }
  }

  operator delete(v2);
  v10 = a1[2];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  operator delete(a1);
  v11 = *MEMORY[0x29EDCA608];
}

void sub_29755C01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11FSModuleICEE15execute_wrappedIZZNS3_26registerEventHandlers_syncEvEUb_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t a1)
{
  v36 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = **a1;
  v3 = *(v2 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v28 = v1 + 1;
    if (*(v1 + 31) < 0)
    {
      v28 = *v28;
    }

    *buf = 136315138;
    *&buf[4] = v28;
    _os_log_error_impl(&dword_297476000, v3, OS_LOG_TYPE_ERROR, "HSFiler requesting modem hard reset due to: %s", buf, 0xCu);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v6 = xpc_string_create(*MEMORY[0x29EDBEB60]);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDBEB00], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = xpc_string_create(*MEMORY[0x29EDBF750]);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDBEEE0], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  memset(buf, 170, sizeof(buf));
  v10 = *(v1 + 31);
  if (v10 >= 0)
  {
    v11 = *(v1 + 31);
  }

  else
  {
    v11 = v1[2];
  }

  v12 = v11 + 10;
  if (v11 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v12 < 0x17)
  {
    buf[11] = 0;
    *&buf[12] = 0;
    *&buf[16] = 0;
    buf[23] = v11 + 10;
    strcpy(buf, "HSFiler - ");
    v15 = &buf[10];
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v12 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v12 | 7) + 1;
    }

    v14 = operator new(v13);
    *&buf[8] = v11 + 10;
    *&buf[16] = v13 | 0x8000000000000000;
    *buf = v14;
    *(v14 + 4) = 8237;
    *v14 = *"HSFiler - ";
    v15 = (v14 + 10);
  }

  if (v10 >= 0)
  {
    v16 = v1 + 1;
  }

  else
  {
    v16 = v1[1];
  }

  memmove(v15, v16, v11);
LABEL_26:
  v15[v11] = 0;
  if ((buf[23] & 0x80u) == 0)
  {
    v17 = buf;
  }

  else
  {
    v17 = *buf;
  }

  v18 = xpc_string_create(v17);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDBED88], v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = *MEMORY[0x29EDBEAA8];
  v21 = strlen(*MEMORY[0x29EDBEAA8]);
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

    v23 = operator new(v24);
    __dst[1] = v22;
    v34 = v24 | 0x8000000000000000;
    __dst[0] = v23;
LABEL_40:
    memmove(v23, v20, v22);
    *(v22 + v23) = 0;
    object = v5;
    if (v5)
    {
      goto LABEL_35;
    }

    goto LABEL_41;
  }

  HIBYTE(v34) = v21;
  v23 = __dst;
  if (v21)
  {
    goto LABEL_40;
  }

  LOBYTE(__dst[0]) = 0;
  object = v5;
  if (v5)
  {
LABEL_35:
    xpc_retain(v5);
    goto LABEL_42;
  }

LABEL_41:
  object = xpc_null_create();
LABEL_42:
  v31 = 0;
  Service::runCommand(v2, __dst, &object, &v31);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__dst[0]);
    if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_44;
    }
  }

  else if ((buf[23] & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  operator delete(*buf);
LABEL_44:
  xpc_release(v5);
  if (__p)
  {
    if (*(__p + 31) < 0)
    {
      operator delete(__p[1]);
    }

    operator delete(__p);
  }

  v25 = a1;
  if (a1)
  {
    v26 = *(a1 + 16);
    if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
      v25 = a1;
    }

    operator delete(v25);
  }

  v27 = *MEMORY[0x29EDCA608];
}

void sub_29755C4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, xpc_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *_ZNSt3__110unique_ptrIZZN11FSModuleICE26registerEventHandlers_syncEvEUb_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped<FSModuleICE::sleep(dispatch::group_session)::$_0>(FSModuleICE::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleICE::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<FSModuleICE::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  *(v4 + 921) = 1;
  if (v3)
  {
    dispatch_group_leave(v3);
    v5 = v2[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = a1;
  }

  else
  {
    v7 = a1;
  }

  operator delete(v7);
}

void dispatch::async<void ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped<FSModuleICE::wake(dispatch::group_session)::$_0>(FSModuleICE::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleICE::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<FSModuleICE::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  *(v3 + 921) = 0;
  FSModuleICE::runDeferred_sync(v3);
  v4 = v2[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = v2[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(v2);
  v6 = *(a1 + 2);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = a1;
  }

  else
  {
    v7 = a1;
  }

  operator delete(v7);
}

void sub_29755C78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::detail::group_notify<FSModuleICE::requestFSSync_sync(unsigned int,BOOL)::$_0>(dispatch_group_s *,dispatch_queue_s *,FSModuleICE::requestFSSync_sync(unsigned int,BOOL)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    v3 = *__p;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (__p[1])
      {
        ++*(v3 + 984);
        v8[0] = MEMORY[0x29EDCA5F8];
        v8[1] = 0x40000000;
        v8[2] = ___ZZN11FSModuleICE18requestFSSync_syncEjbENK3__0clEv_block_invoke;
        v8[3] = &__block_descriptor_tmp_113;
        v8[4] = v3;
        v9 = *(__p + 9);
        v10 = *(__p + 32);
        ctu::SharedSynchronizable<FSModuleICE>::execute_wrapped((v3 + 72), v8);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  v6 = __p[3];
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = __p[2];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(__p);
}

void ___ZZN11FSModuleICE18requestFSSync_syncEjbENK3__0clEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 1080) = *(a1 + 40);
  *(v2 + 1088) = TelephonyUtilGetSystemTime();
  v3 = *(a1 + 44);

  FSModuleICE::singleFlushOperation_sync(v2, v3);
}

uint64_t __cxx_global_var_init_82()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_83()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_84()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_85()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<HSFilerRT>::~PthreadMutexGuardPolicy, &ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance, &dword_297476000);
  }

  return result;
}

void metric::sendCoreAnalyticsEvent(const void **a1, void **a2, int a3)
{
  v28 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v4 + 20;
  if (v4 + 20 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    v23 = 779710063;
    HIBYTE(v23) = v4 + 20;
    *__p = *"com.apple.Telephony.";
    v11 = &v23 + 4;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v5 | 7) + 1;
    }

    v10 = operator new(v9);
    __p[1] = (v4 + 20);
    v23 = v9 | 0x8000000000000000;
    __p[0] = v10;
    *(v10 + 4) = 779710063;
    *v10 = *"com.apple.Telephony.";
    v11 = v10 + 20;
  }

  v12 = *a1;
  if (v3 >= 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = *a1;
  }

  memmove(v11, v13, v4);
LABEL_15:
  v11[v4] = 0;
  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A18CB080 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v14 = qword_2A18CB080;
    if (!os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }
  }

  else
  {
    dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_12);
    v14 = qword_2A18CB080;
    if (!os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }
  }

  v15 = __p;
  if (v23 < 0)
  {
    v15 = __p[0];
  }

  *buf = 136315394;
  v25 = v15;
  v26 = 1024;
  v27 = a3;
  _os_log_impl(&dword_297476000, v14, OS_LOG_TYPE_DEFAULT, "Sending CoreAnalytics event: %s (repeated integer type: %d)", buf, 0x12u);
LABEL_21:
  if (a3)
  {
    v20[1] = MEMORY[0x29EDCA5F8];
    v20[2] = 1174405120;
    v20[3] = ___ZN6metric22sendCoreAnalyticsEventENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictEb_block_invoke;
    v20[4] = &__block_descriptor_tmp_32;
    v16 = *a2;
    object = v16;
    if (v16)
    {
      xpc_retain(v16);
    }

    else
    {
      object = xpc_null_create();
    }

    p_object = &object;
    analytics_send_exploding_event_lazy();
    xpc_release(object);
  }

  else
  {
    v17 = *a2;
    v20[0] = v17;
    if (v17)
    {
      xpc_retain(v17);
    }

    else
    {
      v20[0] = xpc_null_create();
    }

    p_object = v20;
    analytics_send_event_lazy();
    xpc_release(v20[0]);
  }

  *p_object = 0;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  v19 = *MEMORY[0x29EDCA608];
}