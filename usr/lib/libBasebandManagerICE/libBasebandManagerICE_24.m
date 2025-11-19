void sub_2975A3440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, dispatch_group_t group, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  std::__shared_weak_count::__release_weak(a14);
  if (v46)
  {
    dispatch_release(v46);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void *ABMServerInternal::getClientState_sync@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v5 = *(a1 + 88);
  result = (a1 + 88);
  v4 = v5;
  if (v5)
  {
    v6 = *a2;
    v7 = result;
    do
    {
      v8 = v4[4];
      v9 = v8 >= v6;
      v10 = v8 < v6;
      if (v9)
      {
        v7 = v4;
      }

      v4 = v4[v10];
    }

    while (v4);
    if (v7 != result && v6 >= v7[4])
    {
      v12 = v7[5];
      v11 = v7[6];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      *a3 = v12;
      a3[1] = v11;
    }
  }

  return result;
}

void ABMServerInternal::handleServerError_sync(uint64_t a1, xpc::object *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 128);
  if (v2 != 3 && v2 != 5)
  {
    v5 = *(a1 + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(__p, a2);
      if (v10 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136315138;
      v12 = v8;
      _os_log_impl(&dword_297476000, v5, OS_LOG_TYPE_DEFAULT, "#I Server error: %s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void ABMServerInternal::handleNewClient_sync(uint64_t a1@<X0>, xpc::object *a2@<X1>, const void **a3@<X8>)
{
  v43[3] = *MEMORY[0x29EDCA608];
  *a3 = 0;
  if ((*(a1 + 128) & 0xFE) == 4)
  {
    v6 = *(a1 + 72);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_59;
    }

    v7 = MEMORY[0x29C272AD0](*a2);
    memset(__p, 170, sizeof(__p));
    v8 = strlen(v7);
    if (v8 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      if ((v8 | 7) == 0x17)
      {
        v19 = 25;
      }

      else
      {
        v19 = (v8 | 7) + 1;
      }

      v10 = operator new(v19);
      __p[1] = v9;
      __p[2] = (v19 | 0x8000000000000000);
      __p[0] = v10;
    }

    else
    {
      HIBYTE(__p[2]) = v8;
      v10 = __p;
      if (!v8)
      {
        goto LABEL_23;
      }
    }

    memcpy(v10, v7, v9);
LABEL_23:
    *(v9 + v10) = 0;
    free(v7);
    v20 = SHIBYTE(__p[2]);
    v21 = __p[0];
    v22 = to_string(*(a1 + 128));
    v23 = __p;
    if (v20 < 0)
    {
      v23 = v21;
    }

    *buf = 136315394;
    *&buf[4] = v23;
    *&buf[12] = 2080;
    *&buf[14] = v22;
    _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Rejecting new client %s because server state is '%s'", buf, 0x16u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_59;
  }

  xpc::object::to_string(__p, a2);
  v11 = operator new(0x38uLL);
  v12 = v11;
  if (SHIBYTE(__p[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p[0], __p[1]);
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *__p;
    v11->__r_.__value_.__r.__words[2] = __p[2];
  }

  v12[1].__r_.__value_.__s.__data_[0] = 0;
  v12[2].__r_.__value_.__r.__words[0] = 0;
  v12[1].__r_.__value_.__r.__words[2] = 0;
  v12[1].__r_.__value_.__l.__size_ = &v12[1].__r_.__value_.__r.__words[2];
  *buf = v12;
  v43[0] = v12;
  v13 = operator new(0x20uLL);
  *v13 = &unk_2A1E4DBD8;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = v12;
  *&buf[8] = v13;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    v14 = *(a1 + 72);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }
  }

  else
  {
    v14 = *(a1 + 72);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }
  }

  v15 = MEMORY[0x29C272AD0](*a2);
  memset(__p, 170, sizeof(__p));
  v16 = strlen(v15);
  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = v16;
  if (v16 >= 0x17)
  {
    if ((v16 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v16 | 7) + 1;
    }

    v18 = operator new(v24);
    __p[1] = v17;
    __p[2] = (v24 | 0x8000000000000000);
    __p[0] = v18;
    goto LABEL_31;
  }

  HIBYTE(__p[2]) = v16;
  v18 = __p;
  if (v16)
  {
LABEL_31:
    memcpy(v18, v15, v17);
  }

  *(v17 + v18) = 0;
  free(v15);
  v25 = __p;
  if (SHIBYTE(__p[2]) < 0)
  {
    v25 = __p[0];
  }

  LODWORD(v43[0]) = 136315138;
  *(v43 + 4) = v25;
  _os_log_impl(&dword_297476000, v14, OS_LOG_TYPE_DEFAULT, "#I New client: %s", v43, 0xCu);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
LABEL_35:
    v26 = *a2;
    v28 = (a1 + 88);
    v27 = *(a1 + 88);
    if (v27)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  operator delete(__p[0]);
  v26 = *a2;
  v28 = (a1 + 88);
  v27 = *(a1 + 88);
  if (!v27)
  {
LABEL_36:
    v29 = v28;
LABEL_44:
    v31 = operator new(0x38uLL);
    v31[4] = v26;
    if (v26)
    {
      xpc_retain(v26);
    }

    else
    {
      v31[4] = xpc_null_create();
    }

    v31[5] = 0;
    v31[6] = 0;
    *v31 = 0;
    v31[1] = 0;
    v31[2] = v29;
    *v28 = v31;
    v32 = **(a1 + 80);
    if (v32)
    {
      *(a1 + 80) = v32;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 88), v31);
    ++*(a1 + 96);
    v34 = *buf;
    v33 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  while (1)
  {
LABEL_40:
    while (1)
    {
      v29 = v27;
      v30 = v27[4];
      if (v30 <= v26)
      {
        break;
      }

      v27 = *v29;
      v28 = v29;
      if (!*v29)
      {
        goto LABEL_44;
      }
    }

    if (v30 >= v26)
    {
      break;
    }

    v27 = v29[1];
    if (!v27)
    {
      v28 = v29 + 1;
      goto LABEL_44;
    }
  }

  v31 = v29;
  v34 = *buf;
  v33 = *&buf[8];
  if (!*&buf[8])
  {
    goto LABEL_51;
  }

LABEL_50:
  atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
LABEL_51:
  v35 = v31[6];
  v31[5] = v34;
  v31[6] = v33;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 0x40000000;
  v40[2] = ___ZN17ABMServerInternal20handleNewClient_syncEN3xpc10connectionE_block_invoke;
  v40[3] = &__block_descriptor_tmp_21;
  v40[4] = a1;
  v36 = _Block_copy(v40);
  v37 = *a3;
  *a3 = v36;
  if (v37)
  {
    _Block_release(v37);
  }

  v38 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

LABEL_59:
  v39 = *MEMORY[0x29EDCA608];
}

void sub_2975A3C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  operator delete(v25);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*v24)
  {
    _Block_release(*v24);
  }

  _Unwind_Resume(a1);
}

void ___ZN17ABMServerInternal20handleNewClient_syncEN3xpc10connectionE_block_invoke(uint64_t a1, void **a2, void **a3)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  v8 = v5;
  if (!v5)
  {
    v8 = xpc_null_create();
    v6 = *a3;
    object = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    object = xpc_null_create();
    goto LABEL_6;
  }

  xpc_retain(v5);
  v6 = *a3;
  object = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  xpc_retain(v6);
LABEL_6:
  (*(*v4 + 40))(v4, &v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v8);
}

void sub_2975A3DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void ABMServerInternal::handleClientError_sync(void *a1, xpc_object_t *a2, xpc::object *a3)
{
  v53 = *MEMORY[0x29EDCA608];
  v6 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v48 = 0;
    v49 = 0;
    v8 = a1 + 11;
    v7 = a1[11];
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = xpc_null_create();
    v48 = 0;
    v49 = 0;
    v8 = a1 + 11;
    v7 = a1[11];
    if (!v7)
    {
LABEL_12:
      v13 = 0;
      v14 = 0;
      goto LABEL_13;
    }
  }

  v9 = v8;
  do
  {
    v10 = v7[4];
    v11 = v10 >= v6;
    v12 = v10 < v6;
    if (v11)
    {
      v9 = v7;
    }

    v7 = v7[v12];
  }

  while (v7);
  if (v9 == v8 || v6 < v9[4])
  {
    goto LABEL_12;
  }

  v14 = v9[5];
  v13 = v9[6];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = v14;
  v49 = v13;
LABEL_13:
  xpc_release(v6);
  if (v14)
  {
    memset(v47, 170, 24);
    if (*(v14 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v50, *v14, *(v14 + 1));
    }

    else
    {
      v15 = *v14;
      v50.__r_.__value_.__r.__words[2] = *(v14 + 2);
      *&v50.__r_.__value_.__l.__data_ = v15;
    }

    v16 = std::string::insert(&v50, 0, "Client '", 8uLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v52 = v16->__r_.__value_.__r.__words[2];
    *__p = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = SHIBYTE(v52);
    if ((SHIBYTE(v52) & 0x8000000000000000) != 0)
    {
      v18 = __p[1];
      v21 = v52 & 0x7FFFFFFFFFFFFFFFLL;
      v20 = (v52 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v20 == __p[1])
      {
        v22 = 0x7FFFFFFFFFFFFFF7;
        if (v21 == 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v19 = __p[0];
        if (v20 > 0x3FFFFFFFFFFFFFF2)
        {
          v25 = 0;
LABEL_32:
          v26 = operator new(v22);
          v27 = v26;
          if (v20)
          {
            memmove(v26, v19, v20);
          }

          v27[v20] = 39;
          if (!v25)
          {
            operator delete(v19);
          }

          __p[1] = v21;
          v52 = v22 | 0x8000000000000000;
          __p[0] = v27;
          v28 = &v27[v21];
LABEL_45:
          *v28 = 0;
          *v47 = *__p;
          v47[2] = v52;
          __p[1] = 0;
          v52 = 0;
          __p[0] = 0;
          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v50.__r_.__value_.__l.__data_);
            v30 = *a3;
            if (*a3 != MEMORY[0x29EDCA9C0])
            {
LABEL_47:
              if (v30 == MEMORY[0x29EDCA9B8])
              {
                v32 = a1[9];
                if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_77;
                }

                v43 = v47;
                if (SHIBYTE(v47[2]) < 0)
                {
                  v43 = v47[0];
                }

                LODWORD(__p[0]) = 136315138;
                *(__p + 4) = v43;
                v44 = "#D %s connection interrupted";
              }

              else
              {
                v31 = MEMORY[0x29EDCA9D0];
                v32 = a1[9];
                v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);
                if (v30 != v31)
                {
                  if (v33)
                  {
                    xpc::object::to_string(__p, a3);
                    v34 = v47;
                    if (SHIBYTE(v47[2]) < 0)
                    {
                      v34 = v47[0];
                    }

                    v35 = v52 >= 0 ? __p : __p[0];
                    LODWORD(v50.__r_.__value_.__l.__data_) = 136315394;
                    *(v50.__r_.__value_.__r.__words + 4) = v34;
                    WORD2(v50.__r_.__value_.__r.__words[1]) = 2080;
                    *(&v50.__r_.__value_.__r.__words[1] + 6) = v35;
                    _os_log_debug_impl(&dword_297476000, v32, OS_LOG_TYPE_DEBUG, "#D %s %s", &v50, 0x16u);
                    if (SHIBYTE(v52) < 0)
                    {
                      operator delete(__p[0]);
                      if (SHIBYTE(v47[2]) < 0)
                      {
                        goto LABEL_78;
                      }

                      goto LABEL_79;
                    }
                  }

LABEL_77:
                  if (SHIBYTE(v47[2]) < 0)
                  {
LABEL_78:
                    operator delete(v47[0]);
                  }

LABEL_79:
                  v13 = v49;
                  goto LABEL_80;
                }

                if (!v33)
                {
                  goto LABEL_77;
                }

                v46 = v47;
                if (SHIBYTE(v47[2]) < 0)
                {
                  v46 = v47[0];
                }

                LODWORD(__p[0]) = 136315138;
                *(__p + 4) = v46;
                v44 = "#D %s will be terminated";
              }

              _os_log_debug_impl(&dword_297476000, v32, OS_LOG_TYPE_DEBUG, v44, __p, 0xCu);
              if ((SHIBYTE(v47[2]) & 0x80000000) == 0)
              {
                goto LABEL_79;
              }

              goto LABEL_78;
            }
          }

          else
          {
            v30 = *a3;
            if (*a3 != MEMORY[0x29EDCA9C0])
            {
              goto LABEL_47;
            }
          }

          v36 = a1[9];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = v47;
            if (SHIBYTE(v47[2]) < 0)
            {
              v37 = v47[0];
            }

            LODWORD(__p[0]) = 136315138;
            *(__p + 4) = v37;
            _os_log_impl(&dword_297476000, v36, OS_LOG_TYPE_DEFAULT, "#I %s disappeared", __p, 0xCu);
          }

          v38 = a1[11];
          if (v38)
          {
            v39 = *a2;
            v40 = v8;
            do
            {
              v41 = *(v38 + 32);
              v11 = v41 >= v39;
              v42 = v41 < v39;
              if (v11)
              {
                v40 = v38;
              }

              v38 = *(v38 + 8 * v42);
            }

            while (v38);
            if (v40 != v8 && v39 >= *(v40 + 32))
            {
              std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::erase(a1 + 10, v40);
            }
          }

          goto LABEL_77;
        }

LABEL_23:
        v23 = 2 * v20;
        if (v21 > 2 * v20)
        {
          v23 = v21;
        }

        if ((v23 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v23 | 7) + 1;
        }

        if (v23 >= 0x17)
        {
          v22 = v24;
        }

        else
        {
          v22 = 23;
        }

        v25 = v20 == 22;
        goto LABEL_32;
      }

      v19 = __p[0];
    }

    else
    {
      v19 = __p;
      if (SHIBYTE(v52) == 22)
      {
        v20 = 22;
        v21 = 23;
        goto LABEL_23;
      }
    }

    *(v18 + v19) = 39;
    v29 = v18 + 1;
    if (SHIBYTE(v52) < 0)
    {
      __p[1] = v29;
    }

    else
    {
      HIBYTE(v52) = v29 & 0x7F;
    }

    v28 = &v29[v19];
    goto LABEL_45;
  }

LABEL_80:
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v45 = *MEMORY[0x29EDCA608];
}

void sub_2975A4320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void sub_2975A4388(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ABMServerInternal::handleMessage_sync(uint64_t a1, xpc_object_t *a2, xpc::object *a3)
{
  v42 = *MEMORY[0x29EDCA608];
  v6 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v36 = 0;
    v37 = 0;
    v7 = (a1 + 88);
    v8 = *(a1 + 88);
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = xpc_null_create();
    v36 = 0;
    v37 = 0;
    v7 = (a1 + 88);
    v8 = *(a1 + 88);
    if (!v8)
    {
LABEL_12:
      v13 = 0;
      goto LABEL_13;
    }
  }

  v9 = v7;
  do
  {
    v10 = v8[4];
    v11 = v10 >= v6;
    v12 = v10 < v6;
    if (v11)
    {
      v9 = v8;
    }

    v8 = v8[v12];
  }

  while (v8);
  if (v9 == v7 || v6 < v9[4])
  {
    goto LABEL_12;
  }

  v13 = v9[5];
  v20 = v9[6];
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v36 = v13;
  v37 = v20;
LABEL_13:
  xpc_release(v6);
  v14 = *(a1 + 72);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
  if (v13)
  {
    if (!v15)
    {
      goto LABEL_18;
    }

    if (*(v13 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v35, *v13, *(v13 + 1));
    }

    else
    {
      v28 = *v13;
      v35.__r_.__value_.__r.__words[2] = *(v13 + 2);
      *&v35.__r_.__value_.__l.__data_ = v28;
    }

    v29 = SHIBYTE(v35.__r_.__value_.__r.__words[2]);
    v30 = v35.__r_.__value_.__r.__words[0];
    xpc::object::to_string(__p, a3);
    v26 = &v35;
    if (v29 < 0)
    {
      v26 = v30;
    }

    if (v34 >= 0)
    {
      v27 = __p;
    }

    else
    {
      v27 = __p[0];
    }
  }

  else
  {
    if (!v15)
    {
      goto LABEL_18;
    }

    xpc::object::to_string(&v35, a2);
    v24 = SHIBYTE(v35.__r_.__value_.__r.__words[2]);
    v25 = v35.__r_.__value_.__r.__words[0];
    xpc::object::to_string(__p, a3);
    v26 = &v35;
    if (v24 < 0)
    {
      v26 = v25;
    }

    if (v34 >= 0)
    {
      v27 = __p;
    }

    else
    {
      v27 = __p[0];
    }
  }

  *buf = 136315394;
  v39 = v26;
  v40 = 2080;
  v41 = v27;
  _os_log_debug_impl(&dword_297476000, v14, OS_LOG_TYPE_DEBUG, "#D Message from %s:\n%s", buf, 0x16u);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

LABEL_18:
  v16 = *a3;
  v35.__r_.__value_.__r.__words[0] = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    v16 = xpc_null_create();
    v35.__r_.__value_.__r.__words[0] = v16;
  }

  v17 = MEMORY[0x29C272BA0](v16);
  v18 = MEMORY[0x29EDCAA00];
  if (v17 == MEMORY[0x29EDCAA00])
  {
    v19 = *a2;
    v32 = v19;
    if (v19)
    {
      xpc_retain(v19);
    }

    else
    {
      v19 = xpc_null_create();
      v32 = v19;
    }

    ABMServerInternal::handleInternalMessage_sync(a1, &v32, &v35.__r_.__value_.__l.__data_);
    xpc_release(v19);
    v32 = 0;
    v16 = v35.__r_.__value_.__r.__words[0];
  }

  if (MEMORY[0x29C272BA0](v16) == v18)
  {
    v21 = *a2;
    v31 = v21;
    if (v21)
    {
      xpc_retain(v21);
    }

    else
    {
      v21 = xpc_null_create();
      v31 = v21;
    }

    ABMServerInternal::handlePublicMessage_sync(a1, &v31, &v35.__r_.__value_.__l.__data_);
    xpc_release(v21);
    v31 = 0;
  }

  xpc_release(v35.__r_.__value_.__l.__data_);
  v22 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *MEMORY[0x29EDCA608];
}

void sub_2975A4738(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object)
{
  xpc_release(v15);
  xpc_release(object);
  JUMPOUT(0x2975A47B4);
}

void sub_2975A4758(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  xpc_release(v15);
  xpc_release(a15);
  JUMPOUT(0x2975A47B4);
}

void sub_2975A47C4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ABMServerInternal::handleInternalMessage_sync(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3)
{
  v71 = *MEMORY[0x29EDCA608];
  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(*a3, kKeyCommand[0]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  memset(buf, 0, sizeof(buf));
  xpc::dyn_cast_or_default();
  xpc_release(object[0]);
  v7 = strlen(kCommandCheckIn[0]);
  v8 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    if (v7 == __s1[1])
    {
      if (v7 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], kCommandCheckIn[0], v7))
      {
LABEL_34:
        memset(object, 170, sizeof(object));
        v14 = xpc_dictionary_get_value(*a3, kKeyClientName[0]);
        v67 = v14;
        if (v14)
        {
          xpc_retain(v14);
        }

        else
        {
          v67 = xpc_null_create();
        }

        memset(buf, 0, sizeof(buf));
        xpc::dyn_cast_or_default();
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        xpc_release(v67);
        memset(buf, 170, 16);
        v18 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          *buf = 0;
          *&buf[8] = 0;
          v19 = (a1 + 88);
          v20 = *(a1 + 88);
          if (!v20)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v18 = xpc_null_create();
          *buf = 0;
          *&buf[8] = 0;
          v19 = (a1 + 88);
          v20 = *(a1 + 88);
          if (!v20)
          {
            goto LABEL_54;
          }
        }

        v21 = v19;
        do
        {
          v22 = v20[4];
          v23 = v22 >= v18;
          v24 = v22 < v18;
          if (v23)
          {
            v21 = v20;
          }

          v20 = v20[v24];
        }

        while (v20);
        if (v21 != v19 && v18 >= v21[4])
        {
          v26 = v21[5];
          v25 = v21[6];
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *buf = v26;
          *&buf[8] = v25;
          goto LABEL_55;
        }

LABEL_54:
        v25 = 0;
        v26 = 0;
LABEL_55:
        xpc_release(v18);
        if (v26)
        {
          if (v26 != object)
          {
            if (*(v26 + 23) < 0)
            {
              if (SHIBYTE(object[2]) >= 0)
              {
                v46 = object;
              }

              else
              {
                v46 = object[0];
              }

              if (SHIBYTE(object[2]) >= 0)
              {
                v47 = HIBYTE(object[2]);
              }

              else
              {
                v47 = object[1];
              }

              std::string::__assign_no_alias<false>(v26, v46, v47);
            }

            else if ((HIBYTE(object[2]) & 0x80) != 0)
            {
              std::string::__assign_no_alias<true>(v26, object[0], object[1]);
            }

            else
            {
              v27 = *object;
              *(v26 + 16) = object[2];
              *v26 = v27;
            }
          }

          *(v26 + 24) = 1;
        }

        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        if (SHIBYTE(object[2]) < 0)
        {
          operator delete(object[0]);
        }

        goto LABEL_117;
      }
    }
  }

  else if (v7 == SHIBYTE(__s1[2]) && !memcmp(__s1, kCommandCheckIn[0], v7))
  {
    goto LABEL_34;
  }

  v9 = strlen(kCommandCheckOut);
  if ((v8 & 0x80000000) != 0)
  {
    if (v9 == __s1[1])
    {
      if (v9 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], kCommandCheckOut, v9))
      {
        goto LABEL_36;
      }
    }

LABEL_18:
    v10 = strlen(kCommandEventsOn[0]);
    if ((v8 & 0x80000000) != 0)
    {
      if (v10 == __s1[1])
      {
        if (v10 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(__s1[0], kCommandEventsOn[0], v10))
        {
LABEL_38:
          v16 = xpc_dictionary_get_value(*a3, kKeyEventsList[0]);
          object[0] = v16;
          if (v16)
          {
            xpc_retain(v16);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          xpc::bridge(buf, object, v17);
          v37 = *buf;
          if (*buf)
          {
            v38 = CFGetTypeID(*buf);
            if (v38 == CFArrayGetTypeID())
            {
              CFRetain(v37);
              v39 = *buf;
              if (!*buf)
              {
                goto LABEL_82;
              }
            }

            else
            {
              v37 = 0;
              v39 = *buf;
              if (!*buf)
              {
                goto LABEL_82;
              }
            }

            CFRelease(v39);
          }

LABEL_82:
          xpc_release(object[0]);
          if (v37)
          {
            v40 = *a2;
            v66 = v40;
            if (v40)
            {
              xpc_retain(v40);
            }

            else
            {
              v66 = xpc_null_create();
            }

            v65 = v37;
            CFRetain(v37);
            ABMServerInternal::registerNotification(a1, &v66, 1, &v65);
            CFRelease(v37);
            xpc_release(v66);
            v66 = 0;
            CFRelease(v37);
LABEL_117:
            v45 = 0;
            goto LABEL_118;
          }

          goto LABEL_98;
        }
      }
    }

    else if (v10 == v8 && !memcmp(__s1, kCommandEventsOn[0], v10))
    {
      goto LABEL_38;
    }

    v11 = strlen(kCommandEventsOff[0]);
    if ((v8 & 0x80000000) != 0)
    {
      if (v11 != __s1[1])
      {
        goto LABEL_143;
      }

      if (v11 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(__s1[0], kCommandEventsOff[0], v11))
      {
        goto LABEL_143;
      }
    }

    else if (v11 != v8 || memcmp(__s1, kCommandEventsOff[0], v11))
    {
      goto LABEL_143;
    }

    v12 = xpc_dictionary_get_value(*a3, kKeyEventsList[0]);
    object[0] = v12;
    if (v12)
    {
      xpc_retain(v12);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    xpc::bridge(buf, object, v13);
    v41 = *buf;
    if (*buf)
    {
      v42 = CFGetTypeID(*buf);
      if (v42 == CFArrayGetTypeID())
      {
        CFRetain(v41);
        v43 = *buf;
        if (!*buf)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v41 = 0;
        v43 = *buf;
        if (!*buf)
        {
          goto LABEL_95;
        }
      }

      CFRelease(v43);
    }

LABEL_95:
    xpc_release(object[0]);
    if (v41)
    {
      v44 = *a2;
      v64 = v44;
      if (v44)
      {
        xpc_retain(v44);
      }

      else
      {
        v64 = xpc_null_create();
      }

      v63 = v41;
      CFRetain(v41);
      ABMServerInternal::registerNotification(a1, &v64, 0, &v63);
      CFRelease(v41);
      xpc_release(v64);
      v64 = 0;
      CFRelease(v41);
      goto LABEL_117;
    }

LABEL_98:
    v45 = -534716414;
LABEL_118:
    reply = xpc_dictionary_create_reply(*a3);
    if (reply || (reply = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C272BA0](reply) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(reply);
        v49 = reply;
      }

      else
      {
        v49 = xpc_null_create();
      }
    }

    else
    {
      v49 = xpc_null_create();
      reply = 0;
    }

    xpc_release(reply);
    v50 = xpc_int64_create(v45);
    if (!v50)
    {
      v50 = xpc_null_create();
    }

    xpc_dictionary_set_value(v49, kKeyCommandResult[0], v50);
    v51 = xpc_null_create();
    xpc_release(v50);
    xpc_release(v51);
    v52 = *(a1 + 72);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      v58 = __s1;
      if (SHIBYTE(__s1[2]) < 0)
      {
        v58 = __s1[0];
      }

      *buf = 136315394;
      *&buf[4] = v58;
      *&buf[12] = 1024;
      *&buf[14] = v45;
      _os_log_debug_impl(&dword_297476000, v52, OS_LOG_TYPE_DEBUG, "#D Replying to client's command: %s, with return code: 0x%x", buf, 0x12u);
    }

    xpc_connection_send_message(*a2, v49);
    v53 = xpc_null_create();
    v54 = xpc_null_create();
    v55 = *a3;
    *a3 = v53;
    xpc_release(v55);
    xpc_release(v54);
    v56 = strlen(kCommandEventsOn[0]);
    if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
    {
      if (v56 != __s1[1])
      {
        goto LABEL_142;
      }

      if (v56 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(__s1[0], kCommandEventsOn[0], v56))
      {
        goto LABEL_142;
      }
    }

    else if (v56 != SHIBYTE(__s1[2]) || memcmp(__s1, kCommandEventsOn[0], v56))
    {
LABEL_142:
      xpc_release(v49);
      goto LABEL_143;
    }

    if (*(a1 + 128) == 1)
    {
      v61[0] = MEMORY[0x29EDCA5F8];
      v61[1] = 1174405120;
      v61[2] = ___ZN17ABMServerInternal26handleInternalMessage_syncEN3xpc10connectionERNS0_4dictE_block_invoke;
      v61[3] = &__block_descriptor_tmp_24_2;
      v57 = *a2;
      v61[4] = a1;
      v62 = v57;
      if (v57)
      {
        xpc_retain(v57);
      }

      else
      {
        v62 = xpc_null_create();
      }

      ctu::SharedSynchronizable<ctu::XpcServer>::execute_wrapped((a1 + 8), v61);
      xpc_release(v62);
      v62 = 0;
    }

    goto LABEL_142;
  }

  if (v9 != v8 || memcmp(__s1, kCommandCheckOut, v9))
  {
    goto LABEL_18;
  }

LABEL_36:
  memset(object, 170, sizeof(object));
  v15 = xpc_dictionary_get_value(*a3, kKeyClientName[0]);
  v67 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v67 = xpc_null_create();
  }

  memset(buf, 0, sizeof(buf));
  xpc::dyn_cast_or_default();
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v67);
  v28 = *(a1 + 88);
  if (v28)
  {
    v29 = *a2;
    v30 = a1 + 88;
    do
    {
      v31 = *(v28 + 32);
      v23 = v31 >= v29;
      v32 = v31 < v29;
      if (v23)
      {
        v30 = v28;
      }

      v28 = *(v28 + 8 * v32);
    }

    while (v28);
    if (v30 != a1 + 88 && v29 >= *(v30 + 32))
    {
      std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::erase((a1 + 80), v30);
    }
  }

  v33 = xpc_null_create();
  v34 = xpc_null_create();
  v35 = *a3;
  *a3 = v33;
  xpc_release(v35);
  xpc_release(v34);
  v36 = *(a1 + 72);
  if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    if ((SHIBYTE(object[2]) & 0x80000000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_74;
  }

  v60 = object;
  if (SHIBYTE(object[2]) < 0)
  {
    v60 = object[0];
  }

  *buf = 136315138;
  *&buf[4] = v60;
  _os_log_debug_impl(&dword_297476000, v36, OS_LOG_TYPE_DEBUG, "#D Client '%s' checked out", buf, 0xCu);
  if (SHIBYTE(object[2]) < 0)
  {
LABEL_74:
    operator delete(object[0]);
  }

LABEL_143:
  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
  }

  v59 = *MEMORY[0x29EDCA608];
}

void sub_2975A518C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t object, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ABMServerInternal::handlePublicMessage_sync(uint64_t a1, xpc_connection_t *a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  v7 = MEMORY[0x29EDCAA00];
  if (reply || (reply = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](reply) == v7)
    {
      xpc_retain(reply);
      v8 = reply;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    reply = 0;
  }

  xpc_release(reply);
  if (*(a1 + 128) == 5)
  {
    if (MEMORY[0x29C272BA0](v8) == v7)
    {
      v9 = xpc_int64_create(-534716415);
      if (!v9)
      {
        v9 = xpc_null_create();
      }

      xpc_dictionary_set_value(v8, kKeyCommandResult[0], v9);
      v10 = xpc_null_create();
      xpc_release(v9);
      xpc_release(v10);
      v11 = xpc_dictionary_create(0, 0, 0);
      if (v11 || (v11 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C272BA0](v11) == v7)
        {
          xpc_retain(v11);
          v12 = v11;
        }

        else
        {
          v12 = xpc_null_create();
        }
      }

      else
      {
        v12 = xpc_null_create();
        v11 = 0;
      }

      xpc_release(v11);
      v18 = xpc_string_create("Server not available");
      if (!v18)
      {
        v18 = xpc_null_create();
      }

      xpc_dictionary_set_value(v12, *MEMORY[0x29EDBE648], v18);
      v19 = xpc_null_create();
      xpc_release(v18);
      xpc_release(v19);
      if (v12)
      {
        xpc_retain(v12);
        v20 = v12;
      }

      else
      {
        v20 = xpc_null_create();
      }

      xpc_dictionary_set_value(v8, kKeyCommandData[0], v20);
      v21 = xpc_null_create();
      xpc_release(v20);
      xpc_release(v21);
      xpc_connection_send_message(*a2, v8);
      xpc_release(v12);
    }

    goto LABEL_38;
  }

  memset(__p, 170, 24);
  value = xpc_dictionary_get_value(*a3, kKeyCommand[0]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  memset(&__p[3], 0, 24);
  xpc::dyn_cast_or_default();
  xpc_release(object);
  v14 = *(a1 + 224);
  v15 = *a3;
  v29 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v29 = xpc_null_create();
  }

  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 1174405120;
  v25[2] = ___ZN17ABMServerInternal24handlePublicMessage_syncEN3xpc10connectionERNS0_4dictE_block_invoke;
  v25[3] = &__block_descriptor_tmp_27_3;
  v25[4] = a1;
  v26 = v8;
  if (!v8)
  {
    v26 = xpc_null_create();
    v16 = *a2;
    v27 = v16;
    if (v16)
    {
      goto LABEL_23;
    }

LABEL_25:
    v27 = xpc_null_create();
    goto LABEL_26;
  }

  xpc_retain(v8);
  v16 = *a2;
  v27 = v16;
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_23:
  xpc_retain(v16);
LABEL_26:
  v17 = _Block_copy(v25);
  v28 = v17;
  ServiceManager::runCommand(v14, __p, &v29, &v28);
  if (v17)
  {
    _Block_release(v17);
  }

  xpc_release(v29);
  v29 = 0;
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_38:
  v22 = xpc_null_create();
  v23 = xpc_null_create();
  v24 = *a3;
  *a3 = v22;
  xpc_release(v24);
  xpc_release(v23);
  xpc_release(v8);
}

void sub_2975A5754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t a14, xpc_object_t object, uint64_t a16, xpc_object_t a17, xpc_object_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(v25);
  xpc_release(v24);
  _Unwind_Resume(a1);
}

void ABMServerInternal::registerNotification(uint64_t a1, void **a2, char a3, const void **a4)
{
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN17ABMServerInternal20registerNotificationEN3xpc10connectionEbN3ctu2cf11CFSharedRefIK9__CFArrayEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_28_4;
  v7 = *a2;
  v9[4] = a1;
  object = v7;
  if (!v7)
  {
    object = xpc_null_create();
    v12 = a3;
    v8 = *a4;
    cf = v8;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  xpc_retain(v7);
  v12 = a3;
  v8 = *a4;
  cf = v8;
  if (v8)
  {
LABEL_5:
    CFRetain(v8);
  }

LABEL_6:
  ctu::SharedSynchronizable<ctu::XpcServer>::execute_wrapped((a1 + 8), v9);
  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
}

void ___ZN17ABMServerInternal26handleInternalMessage_syncEN3xpc10connectionERNS0_4dictE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  cf = 0;
  v3 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    cf = Mutable;
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBE658], *MEMORY[0x29EDBE940], v3, v5);
  v6 = *(a1 + 40);
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  v7 = *MEMORY[0x29EDBED30];
  v8 = strlen(*MEMORY[0x29EDBED30]);
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
    v18 = v12 | 0x8000000000000000;
    __dst[0] = v10;
LABEL_15:
    memmove(v10, v7, v9);
    *(v9 + v10) = 0;
    v11 = cf;
    if (!cf)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  HIBYTE(v18) = v8;
  v10 = __dst;
  if (v8)
  {
    goto LABEL_15;
  }

  LOBYTE(__dst[0]) = 0;
  v11 = cf;
  if (!cf)
  {
    goto LABEL_18;
  }

LABEL_16:
  v13 = CFGetTypeID(v11);
  if (v13 == CFDictionaryGetTypeID())
  {
    v16 = v11;
    CFRetain(v11);
    v14 = v11;
    goto LABEL_19;
  }

LABEL_18:
  v14 = 0;
  v16 = 0;
LABEL_19:
  v15 = 0;
  ABMServerInternal::unicast_sync(v2, &object, __dst, &v16, &v15);
  if (v14)
  {
    CFRelease(v14);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst[0]);
  }

  xpc_release(object);
  object = 0;
  if (v11)
  {
    CFRelease(v11);
  }
}

void sub_2975A5B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, xpc_object_t object, const void *a19)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a11);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a19);
  _Unwind_Resume(a1);
}

void ABMServerInternal::unicast_sync(void *a1, xpc_connection_t *a2, uint64_t a3, ctu **a4, void **a5)
{
  v69 = *MEMORY[0x29EDCA608];
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
  if (*a4)
  {
    ctu::cf_to_xpc(&v63, *a4, v10);
    xpc_dictionary_set_value(v9, kKeyEventData[0], v63);
    v11 = v63;
    v63 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v63);
    v63 = 0;
  }

  v12 = xpc_string_create(kCommandSignalNotification[0]);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, kKeyCommand[0], v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  v14 = a3;
  if (*(a3 + 23) < 0)
  {
    v14 = *a3;
  }

  v15 = xpc_string_create(v14);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, kKeyEvent[0], v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = dispatch_group_create();
  v18 = a1[2];
  if (!v18 || (v44 = a1[1], (v19 = std::__shared_weak_count::lock(v18)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v20 = v19;
  atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v61 = 0xAAAAAAAAAAAAAAAALL;
    v62 = 0xAAAAAAAAAAAAAAAALL;
    v21 = *a2;
    if (*a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v20);
    v61 = 0xAAAAAAAAAAAAAAAALL;
    v62 = 0xAAAAAAAAAAAAAAAALL;
    v21 = *a2;
    if (*a2)
    {
LABEL_19:
      xpc_retain(v21);
      v61 = 0;
      v62 = 0;
      v22 = a1 + 11;
      v23 = a1[11];
      if (!v23)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    }
  }

  v21 = xpc_null_create();
  v61 = 0;
  v62 = 0;
  v22 = a1 + 11;
  v23 = a1[11];
  if (!v23)
  {
LABEL_30:
    v28 = 0;
    v29 = 0;
    goto LABEL_31;
  }

LABEL_23:
  v24 = v22;
  do
  {
    v25 = v23[4];
    v26 = v25 >= v21;
    v27 = v25 < v21;
    if (v26)
    {
      v24 = v23;
    }

    v23 = v23[v27];
  }

  while (v23);
  if (v24 == v22 || v21 < v24[4])
  {
    goto LABEL_30;
  }

  v29 = v24[5];
  v28 = v24[6];
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  v61 = v29;
  v62 = v28;
LABEL_31:
  xpc_release(v21);
  if (v29)
  {
    v60 = *a4;
    if (v60)
    {
      CFRetain(v60);
      *buf = v60;
      CFRetain(v60);
    }

    else
    {
      *buf = 0;
    }

    isNotificationRegistered = ServerClientState::State::isNotificationRegistered(v29, a3, buf);
    if (*buf)
    {
      CFRelease(*buf);
    }

    if (v60)
    {
      CFRelease(v60);
    }

    if (isNotificationRegistered)
    {
      SystemTime = TelephonyUtilGetSystemTime();
      v32 = a1[9];
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      v33 = a3;
      if (*(a3 + 23) < 0)
      {
        v33 = *a3;
        if ((*(v29 + 23) & 0x80000000) == 0)
        {
          goto LABEL_43;
        }
      }

      else if ((*(v29 + 23) & 0x80000000) == 0)
      {
LABEL_43:
        v34 = *v29;
        v59.__r_.__value_.__r.__words[2] = *(v29 + 16);
        *&v59.__r_.__value_.__l.__data_ = v34;
        goto LABEL_49;
      }

      std::string::__init_copy_ctor_external(&v59, *v29, *(v29 + 8));
LABEL_49:
      v35 = &v59;
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v35 = v59.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = v33;
      v65 = 2080;
      v66 = v35;
      v67 = 2048;
      v68 = SystemTime;
      _os_log_impl(&dword_297476000, v32, OS_LOG_TYPE_DEFAULT, "#I Sending %s to %s at %llu", buf, 0x20u);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
        if (*a5)
        {
          goto LABEL_53;
        }

        goto LABEL_66;
      }

LABEL_52:
      if (*a5)
      {
LABEL_53:
        dispatch_group_enter(v17);
        v36 = *a2;
        v37 = a1[3];
        handler[0] = MEMORY[0x29EDCA5F8];
        handler[1] = 1174405120;
        handler[2] = ___ZN17ABMServerInternal12unicast_syncEN3xpc10connectionENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke;
        handler[3] = &__block_descriptor_tmp_34_2;
        handler[4] = a1;
        handler[5] = v44;
        v53 = v20;
        atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v54 = v29;
        v55 = v28;
        if (v28)
        {
          atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
        }

        if (*(a3 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
        }

        else
        {
          __p = *a3;
        }

        v57 = SystemTime;
        v58 = v17;
        xpc_connection_send_message_with_reply(v36, v9, v37, handler);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v38 = v55;
        if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v38->__on_zero_shared)(v38);
          std::__shared_weak_count::__release_weak(v38);
        }

        if (v53)
        {
          std::__shared_weak_count::__release_weak(v53);
        }

        goto LABEL_67;
      }

LABEL_66:
      xpc_connection_send_message(*a2, v9);
    }
  }

LABEL_67:
  if (!*a5)
  {
    goto LABEL_81;
  }

  v39 = a1[3];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN17ABMServerInternal12unicast_syncEN3xpc10connectionENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke_35;
  block[3] = &__block_descriptor_tmp_36_3;
  block[4] = a1;
  block[5] = v44;
  v48 = v20;
  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v40 = *a2;
  object = v40;
  if (!v40)
  {
    object = xpc_null_create();
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

LABEL_72:
    std::string::__init_copy_ctor_external(&v50, *a3, *(a3 + 8));
    goto LABEL_73;
  }

  xpc_retain(v40);
  if (*(a3 + 23) < 0)
  {
    goto LABEL_72;
  }

LABEL_70:
  v50 = *a3;
LABEL_73:
  v41 = *a5;
  if (*a5)
  {
    v41 = _Block_copy(v41);
  }

  aBlock = v41;
  dispatch_group_notify(v17, v39, block);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  xpc_release(object);
  object = 0;
  if (v48)
  {
    std::__shared_weak_count::__release_weak(v48);
  }

LABEL_81:
  dispatch_release(v17);
  v42 = v62;
  if (v62 && !atomic_fetch_add((v62 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  std::__shared_weak_count::__release_weak(v20);
  xpc_release(v9);
  v43 = *MEMORY[0x29EDCA608];
}

void sub_2975A62AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, xpc_object_t object, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v41 - 168);
  std::__shared_weak_count::__release_weak(v40);
  xpc_release(v39);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_40c22_ZTSN3xpc10connectionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void ___ZN17ABMServerInternal24handlePublicMessage_syncEN3xpc10connectionERNS0_4dictE_block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = MEMORY[0x29C272BA0](*(a1 + 40));
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
    if (MEMORY[0x29C272BA0](*a3) == v8)
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
    if (MEMORY[0x29C272BA0](v9) == v8)
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

xpc_object_t __copy_helper_block_e8_40c15_ZTSN3xpc4dictE48c22_ZTSN3xpc10connectionE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    xpc_retain(v4);
    v5 = *(a2 + 48);
    *(a1 + 48) = v5;
    if (v5)
    {
      return xpc_retain(v5);
    }
  }

  else
  {
    *(a1 + 40) = xpc_null_create();
    v5 = *(a2 + 48);
    *(a1 + 48) = v5;
    if (v5)
    {
      return xpc_retain(v5);
    }
  }

  result = xpc_null_create();
  *(a1 + 48) = result;
  return result;
}

void __destroy_helper_block_e8_40c15_ZTSN3xpc4dictE48c22_ZTSN3xpc10connectionE(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

void ___ZN17ABMServerInternal20registerNotificationEN3xpc10connectionEbN3ctu2cf11CFSharedRefIK9__CFArrayEE_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = (a1 + 40);
  v4 = *(a1 + 40);
  if (v4)
  {
    xpc_retain(*(a1 + 40));
    v26 = 0;
    v27 = 0;
    v5 = (v2 + 88);
    v6 = *(v2 + 88);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = xpc_null_create();
    v26 = 0;
    v27 = 0;
    v5 = (v2 + 88);
    v6 = *(v2 + 88);
    if (!v6)
    {
LABEL_12:
      v11 = 1;
      goto LABEL_13;
    }
  }

  v7 = v5;
  do
  {
    v8 = v6[4];
    v9 = v8 >= v4;
    v10 = v8 < v4;
    if (v9)
    {
      v7 = v6;
    }

    v6 = v6[v10];
  }

  while (v6);
  if (v7 == v5 || v4 < v7[4])
  {
    goto LABEL_12;
  }

  v19 = v7[5];
  v18 = v7[6];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = v19;
  v27 = v18;
  v11 = v19 == 0;
LABEL_13:
  xpc_release(v4);
  if (v11)
  {
    v12 = *(v2 + 72);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    xpc::object::to_string(&__p, v3);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v29 = p_p;
    _os_log_error_impl(&dword_297476000, v12, OS_LOG_TYPE_ERROR, "%s is not in client list", buf, 0xCu);
    goto LABEL_33;
  }

  v14 = *(a1 + 56);
  v15 = *(a1 + 48);
  cf = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  ServerClientState::registerNotification_sync(&v26, v14, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v16 = *(v2 + 72);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (v26[23] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v26, *(v26 + 1));
    }

    else
    {
      v17 = *v26;
      __p.__r_.__value_.__r.__words[2] = *(v26 + 2);
      *&__p.__r_.__value_.__l.__data_ = v17;
    }

    v20 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = __p.__r_.__value_.__r.__words[0];
    }

    v21 = *(a1 + 48);
    *buf = 136315394;
    v29 = v20;
    v30 = 2112;
    v31 = v21;
    _os_log_impl(&dword_297476000, v16, OS_LOG_TYPE_DEFAULT, "#I %s registered for: %@", buf, 0x16u);
LABEL_33:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_35:
  v22 = v27;
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *MEMORY[0x29EDCA608];
}

void sub_2975A6AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2975A6AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

CFTypeRef __copy_helper_block_e8_40c22_ZTSN3xpc10connectionE48c39_ZTSN3ctu2cf11CFSharedRefIK9__CFArrayEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (!v4)
  {
    *(a1 + 40) = xpc_null_create();
    result = *(a2 + 48);
    *(a1 + 48) = result;
    if (!result)
    {
      return result;
    }

    return CFRetain(result);
  }

  xpc_retain(v4);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c22_ZTSN3xpc10connectionE48c39_ZTSN3ctu2cf11CFSharedRefIK9__CFArrayEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

void ___ZN17ABMServerInternal9broadcastENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(a1 + 40), *(a1 + 48));
    v3 = *(a1 + 64);
    v7 = v3;
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *&v8.__r_.__value_.__l.__data_ = *(a1 + 40);
  v3 = *(a1 + 64);
  v8.__r_.__value_.__r.__words[2] = *(a1 + 56);
  v7 = v3;
  if (v3)
  {
LABEL_5:
    CFRetain(v3);
  }

LABEL_6:
  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  ABMServerInternal::broadcast_sync(v2, &v8, &v7, &v6);
  if (v5)
  {
    _Block_release(v5);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_2975A6CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    _Block_release(v16);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE72c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
    v5 = *(a2 + 64);
    *(a1 + 64) = v5;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a2 + 64);
  *(a1 + 64) = v5;
  if (v5)
  {
LABEL_5:
    CFRetain(v5);
  }

LABEL_6:
  result = *(a2 + 72);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 72) = result;
  return result;
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE72c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*(a1 + 63) < 0)
  {
    v4 = *(a1 + 40);

    operator delete(v4);
  }
}

void ___ZN17ABMServerInternal14broadcast_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    v15 = v4;
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 48))
      {
        v6 = *(v3 + 72);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 64);
          if (*(v7 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 1));
          }

          else
          {
            v8 = *v7;
            __p.__r_.__value_.__r.__words[2] = *(v7 + 2);
            *&__p.__r_.__value_.__l.__data_ = v8;
          }

          p_p = __p.__r_.__value_.__r.__words[0];
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          v10 = (a1 + 80);
          if (*(a1 + 103) < 0)
          {
            v10 = *v10;
          }

          v11 = *(a1 + 104);
          *buf = 136315650;
          v17 = p_p;
          v18 = 2080;
          v19 = v10;
          v20 = 2048;
          v21 = v11;
          _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I %s responded to %s sent at %llu", buf, 0x20u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

void sub_2975A6F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE64c23_ZTS17ServerClientState80c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a1 + 40);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v8 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v8;
  }
}

void sub_2975A7040(_Unwind_Exception *a1)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v2);
  v4 = *(v1 + 56);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(v1 + 40);
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = *(v1 + 40);
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE64c23_ZTS17ServerClientState80c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 72);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = *(a1 + 40);
    if (v5)
    {

      dispatch_release(v5);
    }
  }
}

void ___ZN17ABMServerInternal14broadcast_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke_32(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      if (*(a1 + 40))
      {
        v5 = *(v2 + 72);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = (a1 + 56);
          if (*(a1 + 79) < 0)
          {
            v6 = *v6;
          }

          *buf = 136315138;
          v9 = v6;
          _os_log_impl(&dword_297476000, v5, OS_LOG_TYPE_DEFAULT, "#I All clients responded to %s", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 80) + 16))();
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void *__copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
  }

  result = *(a2 + 80);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 80) = result;
  return result;
}

void sub_2975A72F0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    v3 = *(a1 + 48);
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *(a1 + 48);
    if (!v3)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v3);
}

void ___ZN17ABMServerInternal12unicast_syncEN3xpc10connectionENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  if (v2 && (v3 = *(a1 + 32), v4 = std::__shared_weak_count::lock(v2), (v17 = v4) != 0))
  {
    v5 = v4;
    if (*(a1 + 40))
    {
      v6 = *(v3 + 72);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 56);
        if (*(v7 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 1));
        }

        else
        {
          v8 = *v7;
          __p.__r_.__value_.__r.__words[2] = *(v7 + 2);
          *&__p.__r_.__value_.__l.__data_ = v8;
        }

        p_p = __p.__r_.__value_.__r.__words[0];
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        v12 = (a1 + 72);
        if (*(a1 + 95) < 0)
        {
          v12 = *v12;
        }

        v13 = *(a1 + 96);
        *buf = 136315650;
        v19 = p_p;
        v20 = 2080;
        v21 = v12;
        v22 = 2048;
        v23 = v13;
        _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I %s responded to %s sent at %llu", buf, 0x20u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    dispatch_group_leave(*(a1 + 104));
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v14 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v9 = *(a1 + 104);
    v10 = *MEMORY[0x29EDCA608];

    dispatch_group_leave(v9);
  }
}

void sub_2975A7548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c23_ZTS17ServerClientState72c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  a1[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  a1[2].__r_.__value_.__r.__words[0] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 64);
  a1[2].__r_.__value_.__l.__size_ = *(a2 + 56);
  a1[2].__r_.__value_.__r.__words[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 3, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v4 = *(a2 + 72);
    a1[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    *&a1[3].__r_.__value_.__l.__data_ = v4;
  }
}

void sub_2975A75F0(_Unwind_Exception *a1)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v1);
  v4 = *(v2 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c23_ZTS17ServerClientState72c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 64);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 48);
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *(a1 + 48);
    if (!v3)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v3);
}

void ___ZN17ABMServerInternal12unicast_syncEN3xpc10connectionENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke_35(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v11 = 0;
  v12 = 0;
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    v12 = v4;
    if (v4)
    {
      v11 = *(a1 + 40);
      if (v11)
      {
        v5 = *(v2 + 72);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          xpc::object::to_string(__p, (a1 + 56));
          v6 = __p[0];
          if (v10 >= 0)
          {
            v6 = __p;
          }

          v7 = (a1 + 64);
          if (*(a1 + 87) < 0)
          {
            v7 = *v7;
          }

          *buf = 136315394;
          v14 = v6;
          v15 = 2080;
          v16 = v7;
          _os_log_impl(&dword_297476000, v5, OS_LOG_TYPE_DEFAULT, "#I Client '%s' responded to %s", buf, 0x16u);
          if (v10 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 88) + 16))();
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_2975A782C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2975A7840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c23_ZTSKN3xpc10connectionE64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 56);
  *(a1 + 56) = v5;
  if (v5)
  {
    xpc_retain(v5);
    if ((*(a2 + 87) & 0x80000000) == 0)
    {
LABEL_5:
      v6 = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 64) = v6;
      goto LABEL_8;
    }
  }

  else
  {
    *(a1 + 56) = xpc_null_create();
    if ((*(a2 + 87) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
LABEL_8:
  result = *(a2 + 88);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 88) = result;
  return result;
}

void sub_2975A78F4(_Unwind_Exception *a1)
{
  xpc::connection::~connection(v2);
  v4 = *(v1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c23_ZTSKN3xpc10connectionE64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t ABMServer::previousShutdownWasClean(ABMServer *this)
{
  if (qword_2A18CB268 != -1)
  {
    dispatch_once(&qword_2A18CB268, &__block_literal_global_6);
  }

  return _MergedGlobals_7;
}

void ___ZN9ABMServer24previousShutdownWasCleanEv_block_invoke()
{
  v11 = *MEMORY[0x29EDCA608];
  BYTE7(v9[2]) = 17;
  strcpy(v9, "/tmp/abm.shutdow/tmp/abm.shutdown");
  v0.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v0.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v10.st_blksize = v0;
  *v10.st_qspare = v0;
  v10.st_birthtimespec = v0;
  *&v10.st_size = v0;
  v10.st_mtimespec = v0;
  v10.st_ctimespec = v0;
  *&v10.st_uid = v0;
  v10.st_atimespec = v0;
  *&v10.st_dev = v0;
  v1 = stat(&v9[1], &v10);
  if (SBYTE7(v9[2]) < 0)
  {
    v6 = v1;
    operator delete(*&v9[1]);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_12:
    {
      GetOsLogContext(void)::sOsLogContext = 0;
      qword_2A18CB080 = 0;
    }

    if (GetOsLogContext(void)::onceToken == -1)
    {
      v7 = qword_2A18CB080;
      if (!os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_DEFAULT))
      {
LABEL_16:
        _MergedGlobals_7 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_12);
      v7 = qword_2A18CB080;
      if (!os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }
    }

    v10.st_dev = 136315138;
    *&v10.st_mode = "abmserver";
    _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "%s: Previous shutdown was not clean", &v10, 0xCu);
    goto LABEL_16;
  }

  if (!v1)
  {
    goto LABEL_12;
  }

LABEL_3:
  _MergedGlobals_7 = 1;
  HIBYTE(v10.st_gid) = 17;
  *&v10.st_dev = v9[0];
  LOWORD(v10.st_uid) = 110;
  v2 = open(&v10, 513, 420);
  v3 = v2;
  if (SHIBYTE(v10.st_gid) < 0)
  {
    operator delete(*&v10.st_dev);
    if (v3 >= 1)
    {
      do
      {
LABEL_5:
        if (!close(v3))
        {
          goto LABEL_21;
        }
      }

      while (*__error() == 4);
      {
        GetOsLogContext(void)::sOsLogContext = 0;
        qword_2A18CB080 = 0;
      }

      if (GetOsLogContext(void)::onceToken == -1)
      {
        v4 = qword_2A18CB080;
        if (!os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }
      }

      else
      {
        dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_12);
        v4 = qword_2A18CB080;
        if (!os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }
      }

      v10.st_dev = 136315394;
      *&v10.st_mode = "abmserver";
      WORD2(v10.st_ino) = 2080;
      *(&v10.st_ino + 6) = "/tmp/abm.shutdown";
      v5 = "%s: Failed closing %s";
      goto LABEL_26;
    }
  }

  else if (v2 >= 1)
  {
    goto LABEL_5;
  }

  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A18CB080 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v4 = qword_2A18CB080;
    if (!os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }
  }

  else
  {
    dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_12);
    v4 = qword_2A18CB080;
    if (!os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }
  }

  v10.st_dev = 136315394;
  *&v10.st_mode = "abmserver";
  WORD2(v10.st_ino) = 2080;
  *(&v10.st_ino + 6) = "/tmp/abm.shutdown";
  v5 = "%s: Failed creating %s";
LABEL_26:
  _os_log_error_impl(&dword_297476000, v4, OS_LOG_TYPE_ERROR, v5, &v10, 0x16u);
LABEL_21:
  v8 = *MEMORY[0x29EDCA608];
}

void sub_2975A7D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<xpc::connection const,ServerClientState>::~pair(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void std::__shared_ptr_pointer<ABMServer *,std::shared_ptr<ABMServer>::__shared_ptr_default_delete<ABMServer,ABMServer>,std::allocator<ABMServer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ABMServer *,std::shared_ptr<ABMServer>::__shared_ptr_default_delete<ABMServer,ABMServer>,std::allocator<ABMServer>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = v1[1];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v3 = v1;
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v1 = v3;
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ABMServer *,std::shared_ptr<ABMServer>::__shared_ptr_default_delete<ABMServer,ABMServer>,std::allocator<ABMServer>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002976A2DEBLL)
  {
    if (((v2 & 0x80000002976A2DEBLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002976A2DEBLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002976A2DEBLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<ABMServer>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = v2[1];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

atomic_ullong *std::shared_ptr<ABMServerInternal>::shared_ptr[abi:ne200100]<ABMServerInternal,std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E49800;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
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
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
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

void sub_2975A8160(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal*)#1}::operator() const(ABMServerInternal*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<ABMServerInternal *,std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal *)#1},std::allocator<ABMServerInternal>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ABMServerInternal *,std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal *)#1},std::allocator<ABMServerInternal>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableINS_9XpcServerEE15make_shared_ptrI17ABMServerInternalEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableINS_9XpcServerEE15make_shared_ptrI17ABMServerInternalEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableINS_9XpcServerEE15make_shared_ptrI17ABMServerInternalEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableINS_9XpcServerEE15make_shared_ptrI17ABMServerInternalEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal*)#1}::operator() const(ABMServerInternal*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void std::__shared_ptr_emplace<Registry>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E49850;
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

void std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::destroy(*a1);
    std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    xpc_release(a1[4]);

    operator delete(a1);
  }
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableINS1_9XpcServerEE15execute_wrappedIZZZN17ABMServerInternal4initENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEERKN3abm9OverridesEEUb_EUb0_E3__0EEvOT_EUlvE_EEvP16dispatch_queue_sNS7_10unique_ptrISJ_NS7_14default_deleteISJ_EEEEENUlPvE_8__invokeESS_(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  if (*(*a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v2[1], v2[2]);
  }

  else
  {
    v4 = *(v2 + 1);
    v13.__r_.__value_.__r.__words[2] = v2[3];
    *&v13.__r_.__value_.__l.__data_ = v4;
  }

  v5 = v2[4];
  v12 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = v2[5];
  if (v6)
  {
    v7 = _Block_copy(v6);
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;
  ABMServerInternal::broadcast_sync(v3, &v13, &v12, &v11);
  if (v7)
  {
    _Block_release(v7);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
    v8 = v2[5];
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v8 = v2[5];
  if (v8)
  {
LABEL_17:
    _Block_release(v8);
  }

LABEL_18:
  v9 = v2[4];
  if (v9)
  {
    CFRelease(v9);
  }

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

void sub_2975A8584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  _ZNSt3__110unique_ptrIZZZN17ABMServerInternal4initENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKN3abm9OverridesEEUb_EUb0_E3__0NS_14default_deleteISC_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void sub_2975A85B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18)
  {
    _Block_release(v18);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _ZNSt3__110unique_ptrIZZZN17ABMServerInternal4initENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKN3abm9OverridesEEUb_EUb0_E3__0NS_14default_deleteISC_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZZN17ABMServerInternal4initENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKN3abm9OverridesEEUb_EUb0_E3__0NS_14default_deleteISC_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      CFRelease(v4);
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::erase(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  --a1[2];
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v7, a2);
  v8 = *(a2 + 48);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  xpc_release(*(a2 + 32));

  operator delete(a2);
}

void ctu::SharedSynchronizable<ctu::XpcServer>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E49898;
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

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcServerEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcServerEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *sys::UIObserver::create_default_global@<X0>(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0x40uLL);
  sys::UIObserver::UIObserver(v3);

  return std::shared_ptr<sys::UIObserver>::shared_ptr[abi:ne200100]<sys::UIObserver,0>(a1, v3);
}

sys::UIObserver *sys::UIObserver::UIObserver(sys::UIObserver *this)
{
  v2 = dispatch_queue_create("sys::UIObserver", 0);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v2;
  if (v2)
  {
    v3 = v2;
    dispatch_retain(v2);
    *(this + 3) = 0;
    dispatch_release(v3);
  }

  else
  {
    *(this + 3) = 0;
  }

  *(this + 4) = &unk_2A1E499B8;
  v4 = operator new(0x28uLL);
  boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::signal_impl(v4);
  *(this + 5) = v4;
  *(this + 6) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>(this + 40, v4, this + 6);
  *(this + 7) = 0xFFFFFFFF00000000;
  return this;
}

void sub_2975A8A90(_Unwind_Exception *a1)
{
  v3 = v2;
  boost::detail::shared_count::~shared_count(v3);
  ctu::SharedSynchronizable<data::TransportService::State>::~SharedSynchronizable(v1);
  _Unwind_Resume(a1);
}

void sub_2975A8AB0(_Unwind_Exception *a1)
{
  operator delete(v2);
  ctu::SharedSynchronizable<data::TransportService::State>::~SharedSynchronizable(v1);
  _Unwind_Resume(a1);
}

uint64_t sys::UIObserver::handleDisplayLockedChange_sync(uint64_t this)
{
  if (*(this + 60) != -1)
  {
    v1 = this;
    v2 = SBSGetScreenLockStatus() != 0;
    return boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::operator()(*(v1 + 40), v2);
  }

  return this;
}

void sys::UIObserver::registerForScreenLockedNotification_sync(sys::UIObserver *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN3sys10UIObserver40registerForScreenLockedNotification_syncEv_block_invoke;
  v7[3] = &__block_descriptor_tmp_34;
  v7[4] = v3;
  v8 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  notify_register_dispatch("com.apple.springboard.lockstate", this + 15, *(this + 2), v7);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_2975A8C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  std::__shared_weak_count::__release_weak(v14);
  _Unwind_Resume(a1);
}

void ___ZN3sys10UIObserver40registerForScreenLockedNotification_syncEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 32);
      if (v4 && *(v4 + 60) != -1)
      {
        v5 = v3;
        v6 = SBSGetScreenLockStatus() != 0;
        boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::operator()(*(v4 + 40), v6);
        v3 = v5;
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = v3;
        (v3->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_2975A8D38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c41_ZTSNSt3__18weak_ptrIN3sys10UIObserverEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c41_ZTSNSt3__18weak_ptrIN3sys10UIObserverEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sys::UIObserver::unregisterForScreenLockedNotification_sync(sys::UIObserver *this)
{
  result = *(this + 15);
  if (result != -1)
  {
    result = notify_cancel(result);
    *(this + 15) = -1;
  }

  return result;
}

void sys::UIObserver::observe(sys::UIObserver *this@<X0>, char a2@<W1>, std::__shared_weak_count_vtbl **a3@<X8>)
{
  v4 = *(this + 1);
  if (!v4 || (v7 = *this, (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(8uLL);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN3sys10UIObserver7observeEb_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_6_6;
  aBlock[4] = this;
  aBlock[5] = v7;
  v20 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = _Block_copy(aBlock);
  v12 = v11;
  if (v11)
  {
    v13 = _Block_copy(v11);
  }

  else
  {
    v13 = 0;
  }

  v10->~__shared_weak_count = v13;
  *a3 = v10;
  v21 = v10;
  v14 = operator new(0x20uLL);
  v14->__vftable = &unk_2A1E49C00;
  v14->__shared_owners_ = 0;
  v14->__shared_weak_owners_ = 0;
  v14[1].__vftable = v10;
  a3[1] = v14;
  if (v12)
  {
    _Block_release(v12);
  }

  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 1174405120;
  v16[2] = ___ZN3sys10UIObserver7observeEb_block_invoke_7;
  v16[3] = &__block_descriptor_tmp_8_1;
  v16[4] = this;
  v16[5] = v10;
  v17 = v14;
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = a2;
  ctu::SharedSynchronizable<sys::UIObserver>::execute_wrapped(this, v16);
  v15 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  std::__shared_weak_count::__release_weak(v9);
}

void sub_2975A9000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  std::unique_ptr<sys::UIObserver::Handle>::~unique_ptr[abi:ne200100]((v25 - 88));
  if (v24)
  {
    _Block_release(v24);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
    std::__shared_weak_count::__release_weak(v23);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v23);
  _Unwind_Resume(a1);
}

void ___ZN3sys10UIObserver7observeEb_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = a1[5];
      if (v6)
      {
        v7[0] = MEMORY[0x29EDCA5F8];
        v7[1] = 0x40000000;
        v7[2] = ___ZN3sys10UIObserver7observeEb_block_invoke_2;
        v7[3] = &__block_descriptor_tmp_5;
        v7[4] = v3;
        ctu::SharedSynchronizable<sys::UIObserver>::execute_wrapped(v6, v7);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

uint64_t ___ZN3sys10UIObserver7observeEb_block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 56) - 1;
  *(v1 + 56) = v2;
  if (!v2)
  {
    result = *(v1 + 60);
    if (result != -1)
    {
      result = notify_cancel(result);
      *(v1 + 60) = -1;
    }
  }

  return result;
}

uint64_t __copy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrIN3sys10UIObserverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrIN3sys10UIObserverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3sys10UIObserver7observeEb_block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = v3 + 1;
  if (v3)
  {
    if (*(a1 + 56) != 1)
    {
      return;
    }
  }

  else
  {
    sys::UIObserver::registerForScreenLockedNotification_sync(v2);
    if (*(a1 + 56) != 1)
    {
      return;
    }
  }

  if (*(v2 + 60) != -1)
  {
    v4 = SBSGetScreenLockStatus() != 0;
    boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::operator()(*(v2 + 40), v4);
  }
}

uint64_t __copy_helper_block_e8_40c51_ZTSNSt3__110shared_ptrIN3sys10UIObserver6HandleEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c51_ZTSNSt3__110shared_ptrIN3sys10UIObserver6HandleEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::shared_ptr<sys::UIObserver>::shared_ptr[abi:ne200100]<sys::UIObserver,0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E49968;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v6 = a2[1];
    if (v6)
    {
      if (v6->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
        *a2 = a2;
        a2[1] = v4;
        v7 = v4;
        std::__shared_weak_count::__release_weak(v6);
        v4 = v7;
        if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *a2 = a2;
      a2[1] = v4;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_8:
        v9 = v4;
        (*(*v4 + 16))();
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

  return a1;
}

void sub_2975A94FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<sys::UIObserver>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<sys::UIObserver *,std::shared_ptr<sys::UIObserver>::__shared_ptr_default_delete<sys::UIObserver,sys::UIObserver>,std::allocator<sys::UIObserver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<sys::UIObserver *,std::shared_ptr<sys::UIObserver>::__shared_ptr_default_delete<sys::UIObserver,sys::UIObserver>,std::allocator<sys::UIObserver>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v1[4] = &unk_2A1E499B8;
    v2 = v1[6];
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

    v3 = v1[3];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<sys::UIObserver *,std::shared_ptr<sys::UIObserver>::__shared_ptr_default_delete<sys::UIObserver,sys::UIObserver>,std::allocator<sys::UIObserver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002976A3135)
  {
    if (((v2 & 0x80000002976A3135 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002976A3135))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002976A3135 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *boost::signals2::signal<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E499B8;
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

void boost::signals2::signal<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E499B8;
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

uint64_t boost::signals2::signal<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
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

void **std::unique_ptr<sys::UIObserver>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v1[4] = &unk_2A1E499B8;
    v3 = v1[6];
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

    v4 = v1[3];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[2];
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = v1[1];
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::signal_impl(uint64_t a1)
{
  v19[4] = *MEMORY[0x29EDCA608];
  v2 = operator new(0x20uLL);
  v15 = &v15;
  v16 = &v15;
  v19[0] = 0;
  v19[1] = 0;
  v17 = 0;
  v18 = v19;
  v3 = operator new(0x40uLL);
  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::grouped_list(v3, &v15);
  *v2 = v3;
  *(v2 + 1) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(v2, v3, v2 + 1);
  v4 = operator new(1uLL);
  *(v2 + 3) = 0;
  *(v2 + 2) = v4;
  v5 = operator new(0x18uLL);
  v5[1] = 0x100000001;
  *v5 = &unk_2A1E49A78;
  v5[2] = v4;
  *(v2 + 3) = v5;
  *a1 = v2;
  *(a1 + 8) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(a1, v2, (a1 + 8));
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v18, v19[0]);
  if (v17)
  {
    v6 = v16;
    v7 = *(v15 + 8);
    v8 = *v16;
    *(v8 + 8) = v7;
    *v7 = v8;
    v17 = 0;
    if (v6 != &v15)
    {
      do
      {
        v9 = v6[1];
        v10 = v6[3];
        if (v10)
        {
          if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v10 + 16))(v10);
            if (atomic_fetch_add(v10 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v10 + 24))(v10);
            }
          }
        }

        operator delete(v6);
        v6 = v9;
      }

      while (v9 != &v15);
    }
  }

  *(a1 + 16) = **a1;
  v11 = operator new(0x40uLL);
  pthread_mutex_init(v11, 0);
  *(a1 + 32) = 0;
  *(a1 + 24) = v11;
  v12 = operator new(0x18uLL);
  v12[1] = 0x100000001;
  *v12 = &unk_2A1E49AD8;
  v12[2] = v11;
  *(a1 + 32) = v12;
  v13 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2975A9BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    boost::checked_delete<boost::signals2::mutex>(v10);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
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

void boost::detail::sp_counted_impl_p<boost::signals2::optional_last_value<void>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>::~shared_ptr(uint64_t result)
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

uint64_t *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::~grouped_list(uint64_t *a1)
{
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy((a1 + 3), a1[4]);
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

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E49B38;
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

void sub_2975AA148(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>(void *a1)
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>::dispose(uint64_t a1)
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

uint64_t boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::operator()(uint64_t *a1, char a2)
{
  v61 = *MEMORY[0x29EDCA608];
  v35 = a2;
  v33 = 0;
  v34 = 0;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v47 = v3;
  v48 = v3;
  v45 = v3;
  v46 = v3;
  v43 = v3;
  v44 = v3;
  v41 = v3;
  v42 = v3;
  v39 = v3;
  v40 = v3;
  v4 = a1[3];
  __p[0] = 10;
  __p[1] = &v39;
  v50[0] = 0;
  v50[1] = v4;
  pthread_mutex_lock(v4);
  v5 = a1[1];
  if (!v5)
  {
    v7 = *a1;
    goto LABEL_13;
  }

  explicit = atomic_load_explicit((v5 + 8), memory_order_acquire);
  v7 = *a1;
  if (explicit == 1)
  {
    v8 = *v7;
    v9 = a1[2];
    if (v9 == *v7)
    {
      v9 = v8[1];
      *&v36 = v9;
      if (v8 == v9)
      {
LABEL_10:
        a1[2] = v9;
        goto LABEL_11;
      }
    }

    else
    {
      *&v36 = a1[2];
    }

    v10 = v9[2];
    if (*(v10 + 24))
    {
      v9 = v9[1];
    }

    else
    {
      v9 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::erase(v8, (v10 + 64), &v36);
      v7 = *a1;
    }

    goto LABEL_10;
  }

LABEL_11:
  v5 = a1[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
  }

LABEL_13:
  v11 = v34;
  v33 = v7;
  v34 = v5;
  if (v11)
  {
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11);
      if (atomic_fetch_add(v11 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v11 + 24))(v11);
      }
    }
  }

  pthread_mutex_unlock(v50[1]);
  v12 = __p[1];
  if (__p[1])
  {
    if (v50[0] > 0)
    {
      v25 = __p[1] + 16 * v50[0];
      do
      {
        v26 = *(v25 - 1);
        if (v26)
        {
          if (atomic_fetch_add(v26 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v26 + 16))(v26);
            if (atomic_fetch_add(v26 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v26 + 24))(v26);
            }
          }
        }

        v25 -= 16;
      }

      while (v25 > v12);
    }

    if (__p[0] >= 0xB)
    {
      operator delete(__p[1]);
    }
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v52 = v13;
  v53 = v13;
  *v50 = v13;
  v51 = v13;
  v48 = v13;
  *__p = v13;
  v46 = v13;
  v47 = v13;
  v44 = v13;
  v45 = v13;
  v42 = v13;
  v43 = v13;
  v40 = v13;
  v41 = v13;
  v39 = v13;
  LOBYTE(v39) = 0;
  v54 = 0xAAAAAAAAAAAAAAAALL;
  v55 = 10;
  v56 = &v39 + 8;
  v57 = 0;
  v59 = 0;
  v60 = 0;
  v58 = &v35;
  v14 = v33;
  v15 = *v33;
  v30 = &v39;
  v31 = a1;
  v32 = v15;
  *&v28 = *(v15 + 8);
  *(&v28 + 1) = v15;
  *&v29 = &v39;
  *(&v29 + 1) = v15;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::lock_next_callable(&v28);
  v27[0] = *v14;
  v27[1] = v27[0];
  v27[2] = &v39;
  v27[3] = v27[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::lock_next_callable(v27);
  v36 = v28;
  v37 = v29;
  v16 = v27[0];
  v17 = v28;
  if (v28 == v27[0])
  {
    if (HIDWORD(v59) <= v59)
    {
      goto LABEL_35;
    }

LABEL_34:
    boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::force_cleanup_connections(v31, v32);
    goto LABEL_35;
  }

  v18 = v37;
  LOBYTE(v19) = *v37;
  do
  {
    if ((v19 & 1) == 0)
    {
      v20 = *(*(v17 + 16) + 32);
      v21 = *(v20 + 24);
      if (!v21)
      {
        std::runtime_error::runtime_error(&v38, "call to empty boost::function");
        v38.__vftable = &unk_2A1E420B0;
        boost::throw_exception<boost::bad_function_call>(&v38);
      }

      (*((v21 & 0xFFFFFFFFFFFFFFFELL) + 8))(v20 + 32, **(v18 + 272));
      if ((*v18 & 1) == 0)
      {
        *v18 = 1;
      }
    }

    *&v36 = *(v17 + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::lock_next_callable(&v36);
    v18 = v37;
    v19 = *v37;
    if (v19 == 1)
    {
      LOBYTE(v19) = 0;
      *v37 = 0;
    }

    v17 = v36;
  }

  while (v36 != v16);
  if (*(v30 + 71) > *(v30 + 70))
  {
    goto LABEL_34;
  }

LABEL_35:
  result = boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>>::~slot_call_iterator_cache(&v39);
  v23 = v34;
  if (v34)
  {
    if (atomic_fetch_add(v34 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v23 + 16))(v23);
      if (atomic_fetch_add(v23 + 3, 0xFFFFFFFF) == 1)
      {
        result = (*(*v23 + 24))(v23);
      }
    }
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2975AA96C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x2975AA9D0);
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
{
  v71[3] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1 == a1[3])
  {
    goto LABEL_96;
  }

  v2 = a1;
  if (v1 == a1[1])
  {
    goto LABEL_87;
  }

  while (1)
  {
    v3 = v2[2];
    v4 = *(v3 + 264);
    if (v4)
    {
      v5 = *(v3 + 264);
      if (-24 * v4 < 0)
      {
        v6 = *(v3 + 256) + 24 * v4;
        v7 = *(v3 + 256);
        v8 = v6;
        do
        {
          v9 = *(v8 - 24);
          v8 -= 24;
          if (v9 == v9 >> 31)
          {
            v10 = *(v6 - 8);
            if (v10)
            {
              if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v10 + 16))(v10);
                if (atomic_fetch_add(v10 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v10 + 24))(v10);
                }
              }
            }
          }

          else
          {
            v11 = *(v6 - 16);
            if (v11)
            {
              (*(*v11 + 8))(v11);
            }
          }

          v6 = v8;
        }

        while (v8 > v7);
        v5 = *(v3 + 264);
        v1 = *v2;
      }

      *(v3 + 264) = v5 - v4;
    }

    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p = v12;
    v70 = v12;
    v67 = v12;
    v68 = v12;
    v65 = v12;
    v66 = v12;
    v63 = v12;
    v64 = v12;
    v61 = v12;
    v62 = v12;
    v59 = v12;
    v60 = v12;
    v13 = *(v1 + 16);
    __p[0] = 10;
    __p[1] = &v59;
    *&v70 = 0;
    *(&v70 + 1) = v13;
    (*(*v13 + 24))(v13);
    v14 = *v2;
    v15 = *(*v2 + 16);
    v16 = v2[2];
    v17 = *(v15 + 32);
    if (v17)
    {
      v18 = *v17;
      if (*v17 != v17[1])
      {
        v19 = (v16 + 8);
        while (1)
        {
          memset(v71, 170, 24);
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v18, v71);
          if ((*v18 ^ (*v18 >> 31)) == 2)
          {
            if (!(*(**(v18 + 8) + 24))(*(v18 + 8)))
            {
              goto LABEL_22;
            }
          }

          else
          {
            v20 = *(v18 + 16);
            if (v20 && atomic_load_explicit((v20 + 8), memory_order_acquire))
            {
LABEL_22:
              v21 = *(v16 + 264);
              if (v21 == *(v16 + 248))
              {
                if (v21 == -1)
                {
                  v34 = *(v16 + 256) - 24;
                  v35 = v71[1];
                  if (LODWORD(v71[0]) == SLODWORD(v71[0]) >> 31)
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  if (4 * v21 <= (v21 + 1))
                  {
                    v22 = v21 + 1;
                  }

                  else
                  {
                    v22 = 4 * v21;
                  }

                  v23 = v19;
                  if (v22 >= 0xB)
                  {
                    if (v22 >= 0xAAAAAAAAAAAAAABLL)
                    {
                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v23 = operator new(24 * v22);
                  }

                  v24 = v19;
                  v58 = v22;
                  if (v21)
                  {
                    v25 = 0;
                    v26 = *(v16 + 256);
                    v27 = v26 + 24 * v21;
                    v28 = v23;
                    do
                    {
                      v30 = *(v26 + 8);
                      if (*v26 == *v26 >> 31)
                      {
                        v28[1] = v30;
                        v31 = *(v26 + 16);
                        v28[2] = v31;
                        if (v31)
                        {
                          atomic_fetch_add_explicit((v31 + 8), 1u, memory_order_relaxed);
                        }
                      }

                      else
                      {
                        v28[1] = (*(*v30 + 16))(v30);
                      }

                      v29 = *v26;
                      v26 += 24;
                      *v28 = v29 ^ (v29 >> 31);
                      v28 += 3;
                      v25 -= 24;
                    }

                    while (v26 != v27);
                  }

                  v19 = v24;
                  boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy(v24);
                  *(v16 + 248) = v22;
                  *(v16 + 256) = v23;
                  v34 = &v23[3 * *(v16 + 264)];
                  v35 = v71[1];
                  if (LODWORD(v71[0]) == SLODWORD(v71[0]) >> 31)
                  {
LABEL_48:
                    *(v34 + 8) = v35;
                    v37 = v71[2];
                    *(v34 + 16) = v71[2];
                    if (v37)
                    {
                      atomic_fetch_add_explicit((v37 + 8), 1u, memory_order_relaxed);
                    }

LABEL_53:
                    v32 = 0;
                    *v34 = LODWORD(v71[0]) ^ (SLODWORD(v71[0]) >> 31);
                    ++*(v16 + 264);
                    if (LODWORD(v71[0]) == SLODWORD(v71[0]) >> 31)
                    {
                      goto LABEL_41;
                    }

                    goto LABEL_54;
                  }
                }

                v36 = (*(*v35 + 16))(v35);
              }

              else
              {
                v34 = *(v16 + 256) + 24 * v21;
                v35 = v71[1];
                if (LODWORD(v71[0]) == SLODWORD(v71[0]) >> 31)
                {
                  goto LABEL_48;
                }

                v36 = (*(*v71[1] + 16))(v71[1]);
              }

              *(v34 + 8) = v36;
              goto LABEL_53;
            }
          }

          if (*(v15 + 24) == 1)
          {
            *(v15 + 24) = 0;
            boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v15, &v59);
          }

          v32 = 1;
          if (LODWORD(v71[0]) == SLODWORD(v71[0]) >> 31)
          {
LABEL_41:
            v33 = v71[2];
            if (v71[2])
            {
              if (atomic_fetch_add((v71[2] + 8), 0xFFFFFFFF) == 1)
              {
                (*(*v33 + 16))(v33);
                if (atomic_fetch_add(v33 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v33 + 24))(v33);
                }
              }
            }

            goto LABEL_56;
          }

LABEL_54:
          if (v71[1])
          {
            (*(*v71[1] + 8))(v71[1]);
          }

LABEL_56:
          if ((v32 & 1) == 0)
          {
            v18 += 24;
            if (v18 != *(*(v15 + 32) + 8))
            {
              continue;
            }
          }

          v2 = a1;
          v14 = *a1;
          v15 = *(*a1 + 16);
          v16 = a1[2];
          break;
        }
      }
    }

    if ((*(v15 + 24) & 1) == 0)
    {
      ++*(v16 + 284);
LABEL_69:
      v41 = 1;
      goto LABEL_70;
    }

    ++*(v16 + 280);
    v38 = *(v15 + 16);
    if (v38)
    {
      if (atomic_load_explicit((v38 + 8), memory_order_acquire))
      {
        goto LABEL_69;
      }

      v16 = v2[2];
      v14 = *v2;
    }

    v2[3] = v14;
    if (v2[1] == v14)
    {
      v46 = *(v16 + 288);
      if (v46)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v46, &v59);
      }

      v41 = 0;
      *(v16 + 288) = 0;
    }

    else
    {
      v39 = *(v14 + 16);
      v40 = *(v16 + 288);
      if (v40)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v40, &v59);
      }

      *(v16 + 288) = v39;
      v41 = 0;
      if (v39)
      {
        ++*(v39 + 28);
      }
    }

LABEL_70:
    (*(**(&v70 + 1) + 32))(*(&v70 + 1));
    v42 = __p[1];
    if (__p[1])
    {
      if (v70 > 0)
      {
        v44 = __p[1] + 16 * v70;
        do
        {
          v45 = *(v44 - 1);
          if (v45)
          {
            if (atomic_fetch_add(v45 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v45 + 16))(v45);
              if (atomic_fetch_add(v45 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v45 + 24))(v45);
              }
            }
          }

          v44 -= 16;
        }

        while (v44 > v42);
      }

      if (__p[0] >= 0xB)
      {
        operator delete(__p[1]);
      }
    }

    v1 = *v2;
    v43 = v2[1];
    if (!v41)
    {
      break;
    }

    v1 = *(v1 + 8);
    *v2 = v1;
    if (v1 == v43)
    {
      v48 = v43;
      v47 = v2[3];
      if (v47 != v48)
      {
        goto LABEL_90;
      }

      goto LABEL_96;
    }
  }

  if (v1 == v43)
  {
LABEL_87:
    v47 = v2[3];
    if (v47 == v1)
    {
      goto LABEL_96;
    }

LABEL_90:
    *&v49 = 0xAAAAAAAAAAAAAAAALL;
    *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v67 = v49;
    v68 = v49;
    v65 = v49;
    v66 = v49;
    v63 = v49;
    v64 = v49;
    v61 = v49;
    v62 = v49;
    v59 = v49;
    v60 = v49;
    v50 = *(v47 + 16);
    __p[0] = 10;
    __p[1] = &v59;
    *&v70 = 0;
    *(&v70 + 1) = v50;
    (*(*v50 + 24))(v50);
    v51 = v2[2];
    v2[3] = v2[1];
    v52 = *(v51 + 288);
    if (v52)
    {
      boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v52, &v59);
    }

    *(v51 + 288) = 0;
    (*(**(&v70 + 1) + 32))(*(&v70 + 1));
    v53 = __p[1];
    if (__p[1])
    {
      if (v70 > 0)
      {
        v55 = __p[1] + 16 * v70;
        do
        {
          v56 = *(v55 - 1);
          if (v56)
          {
            if (atomic_fetch_add(v56 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v56 + 16))(v56);
              if (atomic_fetch_add(v56 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v56 + 24))(v56);
              }
            }
          }

          v55 -= 16;
        }

        while (v55 > v53);
      }

      if (__p[0] >= 0xB)
      {
        operator delete(__p[1]);
      }
    }
  }

LABEL_96:
  v54 = *MEMORY[0x29EDCA608];
}

void sub_2975AB3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_2975AB43C(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (v3)
    {
      v4 = -v3;
      v5 = (v2 + 16);
      do
      {
        if (*(v5 - 4) == *(v5 - 4) >> 31)
        {
          v6 = *v5;
          if (*v5 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        else
        {
          v7 = *(v5 - 1);
          if (v7)
          {
            (*(*v7 + 8))(v7);
          }
        }

        v5 += 3;
        v4 -= 24;
      }

      while (v4);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x2975AB560);
}

void sub_2975AB530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  __cxa_end_catch();
  boost::signals2::detail::obj_scope_guard_impl2<boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>,void (boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::*)(boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long),boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long>::~obj_scope_guard_impl2(va);
  boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::~variant(v3 - 120);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va1);
  _Unwind_Resume(a1);
}

void sub_2975AB558(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy(void *a1)
{
  v1 = a1[31];
  if (v1)
  {
    v3 = a1[32];
    if (v3 && -24 * v3 < 0)
    {
      v5 = v1 + 24 * v3;
      v6 = v5 - 24 * v3;
      v7 = v5;
      do
      {
        v8 = *(v7 - 24);
        v7 -= 24;
        if (v8 == v8 >> 31)
        {
          v9 = *(v5 - 8);
          if (v9)
          {
            if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v9 + 16))(v9);
              if (atomic_fetch_add(v9 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v9 + 24))(v9);
              }
            }
          }
        }

        else
        {
          v10 = *(v5 - 16);
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }
        }

        v5 = v7;
      }

      while (v7 > v6);
    }

    if (a1[30] >= 0xBuLL)
    {
      v4 = a1[31];

      operator delete(v4);
    }
  }
}

void boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::deallocate(int a1, void *__p, unint64_t a3)
{
  if (a3 >= 0xB)
  {
    operator delete(__p);
  }
}

uint64_t boost::signals2::detail::obj_scope_guard_impl2<boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>,void (boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::*)(boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long),boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long>::~obj_scope_guard_impl2(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 24);
    v4 = (*(a1 + 8) + (v3 >> 1));
    if (v3)
    {
      v2 = *(*v4 + v2);
    }

    v2(v4, *(a1 + 32), *(a1 + 40));
  }

  return a1;
}

void sub_2975AB73C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2975AB72CLL);
}

uint64_t boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t result)
{
  if (*(*result + 284) > *(*result + 280))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::force_cleanup_connections(*(result + 8), *(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t *a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[8] = v4;
  v20[9] = v4;
  v20[6] = v4;
  v20[7] = v4;
  v20[4] = v4;
  v20[5] = v4;
  v20[2] = v4;
  v20[3] = v4;
  v20[0] = v4;
  v20[1] = v4;
  v5 = a1[3];
  v21 = 10;
  __p = v20;
  v23 = 0;
  v24 = v5;
  pthread_mutex_lock(v5);
  if (**a1 == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      v7 = operator new(0x20uLL);
      v8 = *a1;
      v9 = **a1;
      v10 = operator new(0x40uLL);
      boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::grouped_list(v10, v9);
      *v7 = v10;
      *(v7 + 1) = 0;
      boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(v7, v10, v7 + 1);
      v11 = v8[3];
      *(v7 + 2) = v8[2];
      *(v7 + 3) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
      }

      boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::reset<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(a1, v7);
    }

    v12 = **a1;
    v13 = v12[1];
    v19 = v13;
    if (v12 != v13)
    {
      do
      {
        while (1)
        {
          v14 = v13[2];
          if ((*(v14 + 24) & 1) == 0)
          {
            break;
          }

          v13 = v13[1];
          v19 = v13;
          if (v13 == v12)
          {
            goto LABEL_12;
          }
        }

        v13 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::erase(v12, (v14 + 64), &v19);
        v12 = **a1;
        v19 = v13;
      }

      while (v13 != v12);
LABEL_12:
      v13 = v12;
    }

    a1[2] = v13;
  }

  pthread_mutex_unlock(v24);
  v15 = __p;
  if (__p)
  {
    if (v23 > 0)
    {
      v17 = __p + 16 * v23;
      do
      {
        v18 = *(v17 - 1);
        if (v18)
        {
          if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v18 + 16))(v18);
            if (atomic_fetch_add(v18 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v18 + 24))(v18);
            }
          }
        }

        v17 -= 16;
      }

      while (v17 > v15);
    }

    if (v21 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_2975AB9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  boost::detail::shared_count::~shared_count(v12);
  operator delete(v11);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(&a11);
  _Unwind_Resume(a1);
}

uint64_t boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>>::~slot_call_iterator_cache(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 288);
  if (v2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[8] = v3;
    v9[9] = v3;
    v9[6] = v3;
    v9[7] = v3;
    v9[4] = v3;
    v9[5] = v3;
    v9[2] = v3;
    v9[3] = v3;
    v9[0] = v3;
    v9[1] = v3;
    v10 = 10;
    __p = v9;
    v12 = 0;
    v13 = v2;
    (*(*v2 + 24))(v2);
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(*(a1 + 288), v9);
    (*(*v13 + 32))(v13);
    v4 = __p;
    if (__p)
    {
      if (v12 > 0)
      {
        v7 = __p + 16 * v12;
        do
        {
          v8 = *(v7 - 1);
          if (v8)
          {
            if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          v7 -= 16;
        }

        while (v7 > v4);
      }

      if (v10 >= 0xB)
      {
        operator delete(__p);
      }
    }
  }

  boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2975ABC20(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ctu::SharedSynchronizable<sys::UIObserver>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3sys10UIObserverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E49BC0;
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

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrIKN3sys10UIObserverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrIKN3sys10UIObserverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_pointer<sys::UIObserver::Handle *,std::shared_ptr<sys::UIObserver::Handle>::__shared_ptr_default_delete<sys::UIObserver::Handle,sys::UIObserver::Handle>,std::allocator<sys::UIObserver::Handle>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<sys::UIObserver::Handle *,std::shared_ptr<sys::UIObserver::Handle>::__shared_ptr_default_delete<sys::UIObserver::Handle,sys::UIObserver::Handle>,std::allocator<sys::UIObserver::Handle>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    (*(*v1 + 2))();
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<sys::UIObserver::Handle *,std::shared_ptr<sys::UIObserver::Handle>::__shared_ptr_default_delete<sys::UIObserver::Handle,sys::UIObserver::Handle>,std::allocator<sys::UIObserver::Handle>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002976A3379)
  {
    if (((v2 & 0x80000002976A3379 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002976A3379))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002976A3379 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

const void ***std::unique_ptr<sys::UIObserver::Handle>::~unique_ptr[abi:ne200100](const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 2))();
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
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
                          v7 = qword_2A18CB288;
                          if (os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR))
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
                            _os_log_error_impl(&dword_297476000, v7, OS_LOG_TYPE_ERROR, "Invalid domain; domain='%s' key='%s'", &v24, 0x16u);
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
  v105 = *MEMORY[0x29EDCA608];
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
              goto LABEL_238;
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
              v18 = capabilities::trace::defaultHistorySizeMB(v8);
              if (v18 >= 0x7FFFFFFF)
              {
                v19 = 0x7FFFFFFF;
              }

              else
              {
                v19 = v18;
              }

              goto LABEL_136;
            }
          }

          goto LABEL_31;
        }

        goto LABEL_30;
      }

      goto LABEL_29;
    }

LABEL_28:
    v20 = capabilities::trace::enabledByDefault(v5);
    std::to_string(&v104, v20);
LABEL_32:
    *v103 = v104.__r_.__value_.__l.__size_;
    v23 = v104.__r_.__value_.__r.__words[0];
    *&v103[7] = *(&v104.__r_.__value_.__r.__words[1] + 7);
    v24 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v23;
    a2[1] = *v103;
    *(a2 + 15) = *&v103[7];
    *(a2 + 23) = v24;
    goto LABEL_35;
  }

  v9 = *a1;
  v5 = strcasecmp(*a1, *MEMORY[0x29EDBE6E0]);
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = strcasecmp(v9, *MEMORY[0x29EDBE798]);
  if (!v6)
  {
LABEL_29:
    v21 = capabilities::trace::supportsHighTPutByDefault(v6);
    std::to_string(&v104, v21);
    goto LABEL_32;
  }

  v7 = strcasecmp(v9, *MEMORY[0x29EDBEA30]);
  if (!v7)
  {
LABEL_30:
    v22 = capabilities::trace::supportsDataLoggingByDefault(v7);
    std::to_string(&v104, v22);
    goto LABEL_32;
  }

  if (!strcasecmp(v9, *MEMORY[0x29EDBE590]) || !strcasecmp(v9, *MEMORY[0x29EDBF208]))
  {
    goto LABEL_31;
  }

  if (!strcasecmp(v9, *MEMORY[0x29EDBE8F8]))
  {
    goto LABEL_238;
  }

  if (!strcasecmp(v9, *MEMORY[0x29EDBE880]))
  {
LABEL_31:
    std::to_string(&v104, 0);
    goto LABEL_32;
  }

  v8 = strcasecmp(v9, *MEMORY[0x29EDBE6E8]);
  if (!v8)
  {
    goto LABEL_25;
  }

LABEL_10:
  v10 = MEMORY[0x29EDBD4C8];
  v11 = *MEMORY[0x29EDBD4C8];
  v12 = strcasecmp(v9, *MEMORY[0x29EDBD4C8]);
  if (!v12)
  {
    v27 = capabilities::radio::maverick(v12);
    if (v27 & 1) != 0 || (capabilities::radio::ice(v27))
    {
      util::to_str<diag::config::DuringAPSleep>(&v104);
      goto LABEL_82;
    }

    LOBYTE(v4) = a1[23];
    v11 = *v10;
  }

  v13 = *a1;
  if ((v4 & 0x80u) == 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  v15 = strcasecmp(v14, v11);
  if (!v15)
  {
    v16 = capabilities::radio::initium(v15);
    if (v16)
    {
      v17 = capabilities::trace::defaultSleepTraceMode(v16);
      util::to_str<unsigned int>(&v104, v17);
      goto LABEL_82;
    }

    LOBYTE(v4) = a1[23];
    v13 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v28 = a1;
  }

  else
  {
    v28 = v13;
  }

  v29 = strcasecmp(v28, *MEMORY[0x29EDBD4B8]);
  if (!v29)
  {
    if (capabilities::radio::maverick(v29))
    {
      goto LABEL_81;
    }

    LOBYTE(v4) = a1[23];
    v13 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v30 = a1;
  }

  else
  {
    v30 = v13;
  }

  v31 = strcasecmp(v30, *MEMORY[0x29EDBD4B0]);
  if (!v31)
  {
    if (capabilities::radio::maverick(v31))
    {
      goto LABEL_81;
    }

    LOBYTE(v4) = a1[23];
    v13 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v32 = a1;
  }

  else
  {
    v32 = v13;
  }

  v33 = strcasecmp(v32, *MEMORY[0x29EDBD4D0]);
  if (!v33)
  {
    if (capabilities::radio::maverick(v33))
    {
      util::to_str<unsigned int>(&v104, 3u);
      goto LABEL_82;
    }

    LOBYTE(v4) = a1[23];
    v13 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v34 = a1;
  }

  else
  {
    v34 = v13;
  }

  v35 = strcasecmp(v34, *MEMORY[0x29EDBD4D8]);
  if (!v35)
  {
    if (capabilities::radio::maverick(v35))
    {
      util::to_str<diag::config::Recovery>(&v104);
      goto LABEL_82;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) == 0)
  {
    v36 = a1;
    if (strcasecmp(a1, *MEMORY[0x29EDBD4C0]))
    {
      goto LABEL_71;
    }

LABEL_81:
    util::to_str<BOOL>(&v104, 0);
    goto LABEL_82;
  }

  v36 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBD4C0]))
  {
    goto LABEL_81;
  }

LABEL_71:
  v37 = *MEMORY[0x29EDBF200];
  v38 = strcasecmp(v36, *MEMORY[0x29EDBF200]);
  if (!v38)
  {
    v39 = capabilities::radio::maverick(v38);
    if (v39)
    {
      goto LABEL_87;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) == 0)
  {
    v40 = strcasecmp(a1, *MEMORY[0x29EDBF418]);
    v41 = a1;
    if (v40)
    {
      goto LABEL_76;
    }

    goto LABEL_86;
  }

  v41 = *a1;
  v40 = strcasecmp(*a1, *MEMORY[0x29EDBF418]);
  if (!v40)
  {
LABEL_86:
    v39 = capabilities::radio::ice(v40);
    if (!v39)
    {
      v43 = "None";
LABEL_91:
      std::string::__assign_external(a2, v43);
LABEL_35:
      result = 1;
      goto LABEL_36;
    }

LABEL_87:
    if (config::hw::watch(v39))
    {
      v43 = "Lite";
    }

    else
    {
      v43 = "Default";
    }

    goto LABEL_91;
  }

LABEL_76:
  v42 = strcasecmp(v41, *MEMORY[0x29EDBD4A8]);
  if (!v42)
  {
    if (capabilities::radio::maverick(v42))
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
      goto LABEL_35;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80u) == 0)
  {
    v44 = a1;
  }

  else
  {
    v44 = *a1;
  }

  v45 = *MEMORY[0x29EDBEF70];
  v46 = strcasecmp(v44, *MEMORY[0x29EDBEF70]);
  if (!v46)
  {
    if (capabilities::radio::maverick(v46))
    {
      goto LABEL_98;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE938]))
    {
      v47 = strcasecmp(a1, *MEMORY[0x29EDBF2E0]);
      v48 = a1;
      if (v47)
      {
        goto LABEL_104;
      }

LABEL_109:
      v50 = capabilities::trace::defaultMemoryFileMaxCount(v47);
      util::to_str<unsigned int>(&v104, v50);
      goto LABEL_82;
    }

LABEL_110:
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
    goto LABEL_35;
  }

  v48 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE938]))
  {
    goto LABEL_110;
  }

  v47 = strcasecmp(v48, *MEMORY[0x29EDBF2E0]);
  if (!v47)
  {
    goto LABEL_109;
  }

LABEL_104:
  v49 = strcasecmp(v48, *MEMORY[0x29EDBFCB0]);
  if (!v49)
  {
    if (capabilities::radio::ice(v49))
    {
      goto LABEL_81;
    }

    LOBYTE(v4) = a1[23];
  }

  v51 = *a1;
  if ((v4 & 0x80u) == 0)
  {
    v52 = a1;
  }

  else
  {
    v52 = *a1;
  }

  v53 = *MEMORY[0x29EDBFC88];
  v54 = strcasecmp(v52, *MEMORY[0x29EDBFC88]);
  if (!v54)
  {
    v55 = capabilities::radio::ice(v54);
    if (v55)
    {
      if (capabilities::radio::ice(v55))
      {
        v19 = 80;
      }

      else
      {
        v19 = -1;
      }

LABEL_136:
      util::to_str<int>(&v104, v19);
      goto LABEL_82;
    }

    LOBYTE(v4) = a1[23];
    v51 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v56 = a1;
  }

  else
  {
    v56 = v51;
  }

  v57 = *MEMORY[0x29EDBFC70];
  v58 = strcasecmp(v56, *MEMORY[0x29EDBFC70]);
  if (!v58)
  {
    v59 = capabilities::radio::ice(v58);
    if (v59)
    {
      if (capabilities::radio::ice(v59))
      {
        v19 = 1;
      }

      else
      {
        v19 = -1;
      }

      goto LABEL_136;
    }

    LOBYTE(v4) = a1[23];
    v51 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v60 = a1;
  }

  else
  {
    v60 = v51;
  }

  v61 = strcasecmp(v60, *MEMORY[0x29EDBFC68]);
  if (!v61)
  {
    if (capabilities::radio::ice(v61))
    {
      v43 = *MEMORY[0x29EDBFCA0];
      goto LABEL_91;
    }

    LOBYTE(v4) = a1[23];
    v51 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v62 = a1;
  }

  else
  {
    v62 = v51;
  }

  v63 = strcasecmp(v62, *MEMORY[0x29EDBFCB8]);
  if (!v63)
  {
    if (capabilities::radio::initium(v63))
    {
      util::to_str<int>(&v104, 0);
      goto LABEL_82;
    }

    LOBYTE(v4) = a1[23];
    v51 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v64 = a1;
  }

  else
  {
    v64 = v51;
  }

  v65 = strcasecmp(v64, *MEMORY[0x29EDBEB20]);
  if (!v65)
  {
    v66 = capabilities::radio::initium(v65);
    if (v66)
    {
LABEL_255:
      v99 = capabilities::radio::initium(v66);
      util::to_str<int>(&v104, v99);
      goto LABEL_82;
    }

    LOBYTE(v4) = a1[23];
    v51 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v67 = a1;
  }

  else
  {
    v67 = v51;
  }

  v68 = *MEMORY[0x29EDBFCA8];
  v69 = strcasecmp(v67, *MEMORY[0x29EDBFCA8]);
  if (!v69)
  {
    v66 = capabilities::radio::initium(v69);
    if (v66)
    {
      goto LABEL_255;
    }

    LOBYTE(v4) = a1[23];
    v51 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v70 = a1;
  }

  else
  {
    v70 = v51;
  }

  v71 = strcasecmp(v70, *MEMORY[0x29EDBF500]);
  if (!v71)
  {
    if (capabilities::radio::initium(v71))
    {
LABEL_170:
      util::to_str<int>(&v104, 1);
      goto LABEL_82;
    }

    LOBYTE(v4) = a1[23];
    v51 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v72 = a1;
  }

  else
  {
    v72 = v51;
  }

  v73 = strcasecmp(v72, *MEMORY[0x29EDBF648]);
  if (!v73)
  {
    if (capabilities::radio::initium(v73))
    {
      util::to_str<unsigned int>(&v104, 0x7080u);
      goto LABEL_82;
    }

    LOBYTE(v4) = a1[23];
    v51 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v74 = a1;
  }

  else
  {
    v74 = v51;
  }

  v75 = strcasecmp(v74, v37);
  if (v75)
  {
    if ((v4 & 0x80u) == 0)
    {
      v76 = a1;
    }

    else
    {
      v76 = v51;
    }

    v77 = strcasecmp(v76, v45);
    if (v77)
    {
      goto LABEL_187;
    }
  }

  else
  {
    v80 = capabilities::radio::ice(v75);
    if (v80 & 1) != 0 || (capabilities::radio::initium(v80))
    {
      if (*(a2 + 23) < 0)
      {
        a2[1] = 7;
        a2 = *a2;
      }

      else
      {
        *(a2 + 23) = 7;
      }

      strcpy(a2, "Default");
      goto LABEL_35;
    }

    LOBYTE(v4) = a1[23];
    v51 = *a1;
    if ((v4 & 0x80u) == 0)
    {
      v81 = a1;
    }

    else
    {
      v81 = *a1;
    }

    v77 = strcasecmp(v81, v45);
    if (v77)
    {
LABEL_187:
      if ((v4 & 0x80u) == 0)
      {
        v78 = a1;
      }

      else
      {
        v78 = v51;
      }

      v79 = strcasecmp(v78, v53);
      if (v79)
      {
        goto LABEL_210;
      }

      goto LABEL_191;
    }
  }

  v82 = capabilities::radio::ice(v77);
  if (v82 & 1) != 0 || (capabilities::radio::initium(v82))
  {
LABEL_98:
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
    goto LABEL_35;
  }

  LOBYTE(v4) = a1[23];
  v51 = *a1;
  if ((v4 & 0x80u) == 0)
  {
    v83 = a1;
  }

  else
  {
    v83 = *a1;
  }

  v79 = strcasecmp(v83, v53);
  if (!v79)
  {
LABEL_191:
    if (capabilities::radio::ice(v79))
    {
      util::to_str<int>(&v104, 80);
      goto LABEL_82;
    }

    LOBYTE(v4) = a1[23];
    v51 = *a1;
  }

LABEL_210:
  if ((v4 & 0x80u) == 0)
  {
    v84 = a1;
  }

  else
  {
    v84 = v51;
  }

  v85 = strcasecmp(v84, v57);
  if (!v85)
  {
    if (capabilities::radio::ice(v85))
    {
      goto LABEL_170;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) == 0)
  {
    if (!strcasecmp(a1, *MEMORY[0x29EDBF7F0]))
    {
      goto LABEL_81;
    }

    if (strcasecmp(a1, *MEMORY[0x29EDBF7B0]) && strcasecmp(a1, *MEMORY[0x29EDBF7B8]))
    {
      v86 = strcasecmp(a1, *MEMORY[0x29EDBE790]);
      if (v86)
      {
        v87 = strcasecmp(a1, *MEMORY[0x29EDBEDD8]);
        if (v87)
        {
          v88 = strcasecmp(a1, *MEMORY[0x29EDBEF80]);
          if (v88)
          {
            v89 = a1;
            if (strcasecmp(a1, *MEMORY[0x29EDBF410]))
            {
              goto LABEL_224;
            }

LABEL_237:
            util::to_str<BOOL>(&v104, 1);
            goto LABEL_82;
          }

LABEL_245:
          count = defaults::bbtrace::transport_read_count(v88);
          util::to_str<unsigned int>(&v104, count);
          goto LABEL_82;
        }

LABEL_244:
        size = defaults::bbtrace::transport_read_size(v87);
        util::to_str<unsigned int>(&v104, size);
        goto LABEL_82;
      }

LABEL_243:
      v94 = capabilities::trace::defaultFileSizeBytes(v86);
      util::to_str<unsigned int>(&v104, v94);
      goto LABEL_82;
    }

LABEL_238:
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
    goto LABEL_35;
  }

  v89 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBF7F0]))
  {
    goto LABEL_81;
  }

  if (!strcasecmp(v89, *MEMORY[0x29EDBF7B0]) || !strcasecmp(v89, *MEMORY[0x29EDBF7B8]))
  {
    goto LABEL_238;
  }

  v86 = strcasecmp(v89, *MEMORY[0x29EDBE790]);
  if (!v86)
  {
    goto LABEL_243;
  }

  v87 = strcasecmp(v89, *MEMORY[0x29EDBEDD8]);
  if (!v87)
  {
    goto LABEL_244;
  }

  v88 = strcasecmp(v89, *MEMORY[0x29EDBEF80]);
  if (!v88)
  {
    goto LABEL_245;
  }

  if (!strcasecmp(v89, *MEMORY[0x29EDBF410]))
  {
    goto LABEL_237;
  }

LABEL_224:
  v90 = strcasecmp(v89, *MEMORY[0x29EDBF1F8]);
  if (!v90)
  {
    v91 = capabilities::trace::supportsDataRateObserver(v90);
    if (v91)
    {
      v92 = capabilities::trace::defaultPeakBandwidthMbps(v91);
      if (v92 >= 0xFFFFFFFF)
      {
        v93 = -1;
      }

      else
      {
        v93 = v92;
      }

      util::to_str<unsigned int>(&v104, v93);
LABEL_82:
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v104;
      goto LABEL_35;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) != 0)
  {
    v97 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBFC80]))
    {
      if (strcasecmp(v97, *MEMORY[0x29EDBFC98]))
      {
        if (!strcasecmp(v97, *MEMORY[0x29EDBFC78]))
        {
          goto LABEL_264;
        }

        if (strcasecmp(v97, *MEMORY[0x29EDBFC90]))
        {
          if (strcasecmp(v97, *MEMORY[0x29EDBF2D8]))
          {
            goto LABEL_253;
          }

LABEL_261:
          util::to_str<unsigned int>(&v104, 0x1F4u);
          goto LABEL_82;
        }
      }

LABEL_263:
      util::to_str<trace::LogLevel>(&v104);
      goto LABEL_82;
    }

LABEL_262:
    util::to_str<trace::LogMode>(&v104, 1);
    goto LABEL_82;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC80]))
  {
    goto LABEL_262;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC98]))
  {
    goto LABEL_263;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC78]))
  {
LABEL_264:
    util::to_str<trace::LogMode>(&v104, 2);
    goto LABEL_82;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC90]))
  {
    goto LABEL_263;
  }

  v97 = a1;
  if (!strcasecmp(a1, *MEMORY[0x29EDBF2D8]))
  {
    goto LABEL_261;
  }

LABEL_253:
  v98 = strcasecmp(v97, v68);
  if (!v98)
  {
    v66 = capabilities::trace::supportsErrorHandling(v98);
    if (v66)
    {
      goto LABEL_255;
    }
  }

  sGetOsLogContext();
  v100 = qword_2A18CB288;
  result = os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v101 = *MEMORY[0x29EDBF8A0];
    if (a1[23] >= 0)
    {
      v102 = a1;
    }

    else
    {
      v102 = *a1;
    }

    LODWORD(v104.__r_.__value_.__l.__data_) = 136315394;
    *(v104.__r_.__value_.__r.__words + 4) = v101;
    WORD2(v104.__r_.__value_.__r.__words[1]) = 2080;
    *(&v104.__r_.__value_.__r.__words[1] + 6) = v102;
    _os_log_error_impl(&dword_297476000, v100, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &v104, 0x16u);
    result = 0;
  }

LABEL_36:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2975AD4F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x2975AC94CLL);
    }

    JUMPOUT(0x2975AC954);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::coredump::get(std::string::size_type a1, uint64_t a2)
{
  v3 = a1;
  v16 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  v4 = strcasecmp(a1, *MEMORY[0x29EDBE6E0]);
  v5 = v4;
  if (v4)
  {
    if ((atomic_load_explicit(&qword_2A18CB278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB278))
    {
      qword_2A18CB280 = 0;
      qword_2A18CB288 = 0;
      __cxa_guard_release(&qword_2A18CB278);
    }

    if (_MergedGlobals_8 == -1)
    {
      v6 = qword_2A18CB288;
      if (!os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
      v6 = qword_2A18CB288;
      if (!os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    v7 = *MEMORY[0x29EDBE5F8];
    if (*(v3 + 23) >= 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = *v3;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v7;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
    _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  }

  else
  {
    v9 = capabilities::trace::allowed(v4);
    std::to_string(&buf, v9);
    *v14 = buf.__r_.__value_.__l.__size_;
    v10 = buf.__r_.__value_.__r.__words[0];
    *&v14[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v11 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v10;
    *(a2 + 8) = *v14;
    *(a2 + 15) = *&v14[7];
    *(a2 + 23) = v11;
  }

LABEL_14:
  result = v5 == 0;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2975AD72C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x2975AD684);
    }

    JUMPOUT(0x2975AD68CLL);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::ipc::get(char *a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a1[23] < 0)
  {
    v6 = *a1;
    v4 = strcasecmp(*a1, *MEMORY[0x29EDBE6E0]);
    if (v4)
    {
      v5 = strcasecmp(v6, *MEMORY[0x29EDBE6E8]);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_9:
      v10 = capabilities::ipc::defaultPCIBinaryTraceHistorySizeMB(v5);
      std::to_string(&v22, v10);
      goto LABEL_13;
    }

LABEL_10:
    v11 = capabilities::ipc::supportsPCI(v4);
    if (v11)
    {
      LODWORD(v11) = capabilities::trace::enabledByDefault(v11);
    }

    std::to_string(&v22, v11);
    goto LABEL_13;
  }

  v4 = strcasecmp(a1, *MEMORY[0x29EDBE6E0]);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = strcasecmp(a1, *MEMORY[0x29EDBE6E8]);
  v6 = a1;
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  v7 = strcasecmp(v6, "BufferCount");
  if (!v7)
  {
    v8 = capabilities::ipc::supportsPCI(v7);
    if (v8)
    {
      v9 = capabilities::ipc::defaultPCIBinaryTraceBufferCount(v8);
      std::to_string(&v22, v9);
LABEL_13:
      *v21 = v22.__r_.__value_.__l.__size_;
      v12 = v22.__r_.__value_.__r.__words[0];
      *&v21[7] = *(&v22.__r_.__value_.__r.__words[1] + 7);
      v13 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v12;
      *(a2 + 8) = *v21;
      *(a2 + 15) = *&v21[7];
      *(a2 + 23) = v13;
      result = 1;
      v15 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

  if ((atomic_load_explicit(&qword_2A18CB278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB278))
  {
    qword_2A18CB280 = 0;
    qword_2A18CB288 = 0;
    __cxa_guard_release(&qword_2A18CB278);
  }

  if (_MergedGlobals_8 == -1)
  {
    v16 = qword_2A18CB288;
    result = os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR);
    if (!result)
    {
LABEL_19:
      v17 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v16 = qword_2A18CB288;
    result = os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_19;
    }
  }

  v18 = *MEMORY[0x29EDBF8E8];
  if (a1[23] >= 0)
  {
    v19 = a1;
  }

  else
  {
    v19 = *a1;
  }

  LODWORD(v22.__r_.__value_.__l.__data_) = 136315394;
  *(v22.__r_.__value_.__r.__words + 4) = v18;
  WORD2(v22.__r_.__value_.__r.__words[1]) = 2080;
  *(&v22.__r_.__value_.__r.__words[1] + 6) = v19;
  _os_log_error_impl(&dword_297476000, v16, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &v22, 0x16u);
  result = 0;
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2975AD9D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x2975AD86CLL);
    }

    JUMPOUT(0x2975AD874);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::bbipc::get(char *a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    v4 = strcasecmp(a1, *MEMORY[0x29EDBE6E0]);
    if (v4)
    {
      v5 = strcasecmp(a1, *MEMORY[0x29EDBE7A0]);
      v6 = a1;
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }

LABEL_15:
    v13 = capabilities::trace::enabledByDefault(v4);
    std::to_string(&buf, v13);
    goto LABEL_17;
  }

  v6 = *a1;
  v4 = strcasecmp(*a1, *MEMORY[0x29EDBE6E0]);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = strcasecmp(v6, *MEMORY[0x29EDBE7A0]);
  if (!v5)
  {
LABEL_14:
    v12 = capabilities::ipc::defaultLogLevel(v5);
    std::to_string(&buf, v12);
LABEL_17:
    *v18 = buf.__r_.__value_.__l.__size_;
    v15 = buf.__r_.__value_.__r.__words[0];
    *&v18[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v15;
    *(a2 + 8) = *v18;
    *(a2 + 15) = *&v18[7];
    *(a2 + 23) = v16;
    result = 1;
    goto LABEL_20;
  }

LABEL_4:
  v7 = strcasecmp(v6, *MEMORY[0x29EDBEA38]);
  if (!v7)
  {
    v14 = capabilities::ipc::defaultMHIConfigPayloadSizeBytes(v7);
    std::to_string(&buf, v14);
    goto LABEL_17;
  }

  if ((atomic_load_explicit(&qword_2A18CB278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB278))
  {
    qword_2A18CB280 = 0;
    qword_2A18CB288 = 0;
    __cxa_guard_release(&qword_2A18CB278);
  }

  if (_MergedGlobals_8 == -1)
  {
    v8 = qword_2A18CB288;
    result = os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_20;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v8 = qword_2A18CB288;
    result = os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_20;
    }
  }

  v10 = *MEMORY[0x29EDBE7A8];
  if (a1[23] >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v10;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v11;
  _os_log_error_impl(&dword_297476000, v8, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  result = 0;
LABEL_20:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2975ADC6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x2975ADBC8);
    }

    JUMPOUT(0x2975ADBD0);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::compression::get(char *a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    v4 = a1;
    if (strcasecmp(a1, *MEMORY[0x29EDBD4A0]))
    {
      goto LABEL_3;
    }

LABEL_12:
    IsInternalBuild = TelephonyUtilIsInternalBuild();
    if ((IsInternalBuild & 1) != 0 || (IsInternalBuild = TelephonyUtilIsCarrierBuild(), IsInternalBuild))
    {
      CompressionMode = capabilities::trace::getCompressionMode(IsInternalBuild);
    }

    else
    {
      CompressionMode = 2;
    }

    std::to_string(&v12, CompressionMode);
    goto LABEL_18;
  }

  v4 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBD4A0]))
  {
    goto LABEL_12;
  }

LABEL_3:
  if (!strcasecmp(v4, *MEMORY[0x29EDBD340]))
  {
    std::to_string(&v12, 0);
LABEL_18:
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v12;
    result = 1;
    goto LABEL_21;
  }

  if ((atomic_load_explicit(&qword_2A18CB278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB278))
  {
    qword_2A18CB280 = 0;
    qword_2A18CB288 = 0;
    __cxa_guard_release(&qword_2A18CB278);
  }

  if (_MergedGlobals_8 == -1)
  {
    v5 = qword_2A18CB288;
    result = os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_21;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v5 = qword_2A18CB288;
    result = os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_21;
    }
  }

  v7 = *MEMORY[0x29EDBE7B0];
  if (a1[23] >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  LODWORD(v12.__r_.__value_.__l.__data_) = 136315394;
  *(v12.__r_.__value_.__r.__words + 4) = v7;
  WORD2(v12.__r_.__value_.__r.__words[1]) = 2080;
  *(&v12.__r_.__value_.__r.__words[1] + 6) = v8;
  _os_log_error_impl(&dword_297476000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &v12, 0x16u);
  result = 0;
LABEL_21:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL defaults::ttr::get(char *a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    v4 = a1;
    if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
    {
      goto LABEL_3;
    }

LABEL_12:
    IsInternalBuild = TelephonyUtilIsInternalBuild();
    if ((IsInternalBuild & 1) != 0 || (IsInternalBuild = TelephonyUtilIsCarrierBuild(), IsInternalBuild))
    {
      if (capabilities::radio::initium(IsInternalBuild))
      {
        LODWORD(IsInternalBuild) = 3;
      }

      else
      {
        LODWORD(IsInternalBuild) = 1;
      }
    }

    std::to_string(&buf, IsInternalBuild);
    goto LABEL_19;
  }

  v4 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_12;
  }

LABEL_3:
  if (!strcasecmp(v4, *MEMORY[0x29EDBF2D0]))
  {
    std::to_string(&buf, 43200);
LABEL_19:
    *v13 = buf.__r_.__value_.__l.__size_;
    v10 = buf.__r_.__value_.__r.__words[0];
    *&v13[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v11 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v10;
    *(a2 + 8) = *v13;
    *(a2 + 15) = *&v13[7];
    *(a2 + 23) = v11;
    result = 1;
    goto LABEL_22;
  }

  if ((atomic_load_explicit(&qword_2A18CB278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB278))
  {
    qword_2A18CB280 = 0;
    qword_2A18CB288 = 0;
    __cxa_guard_release(&qword_2A18CB278);
  }

  if (_MergedGlobals_8 == -1)
  {
    v5 = qword_2A18CB288;
    result = os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_22;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v5 = qword_2A18CB288;
    result = os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_22;
    }
  }

  v7 = *MEMORY[0x29EDBE718];
  if (a1[23] >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v7;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
  _os_log_error_impl(&dword_297476000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  result = 0;
LABEL_22:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2975AE0D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x2975AE030);
    }

    JUMPOUT(0x2975AE038);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::logfilter::get(char *a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBEB40]))
    {
      v4 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBEDE8]))
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }

LABEL_15:
    std::to_string(&buf, 512);
    goto LABEL_17;
  }

  v4 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBEB40]))
  {
    goto LABEL_15;
  }

  if (!strcasecmp(v4, *MEMORY[0x29EDBEDE8]))
  {
LABEL_14:
    std::to_string(&buf, -1);
LABEL_17:
    *v14 = buf.__r_.__value_.__l.__size_;
    v11 = buf.__r_.__value_.__r.__words[0];
    *&v14[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v12 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v11;
    *(a2 + 8) = *v14;
    *(a2 + 15) = *&v14[7];
    *(a2 + 23) = v12;
    result = 1;
    goto LABEL_20;
  }

LABEL_4:
  v5 = strcasecmp(v4, *MEMORY[0x29EDBF810]);
  if (!v5)
  {
    v10 = capabilities::trace::supportsDuplicateSignatureDetection(v5);
    std::to_string(&buf, v10);
    goto LABEL_17;
  }

  if ((atomic_load_explicit(&qword_2A18CB278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB278))
  {
    qword_2A18CB280 = 0;
    qword_2A18CB288 = 0;
    __cxa_guard_release(&qword_2A18CB278);
  }

  if (_MergedGlobals_8 == -1)
  {
    v6 = qword_2A18CB288;
    result = os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_20;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v6 = qword_2A18CB288;
    result = os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_20;
    }
  }

  v8 = *MEMORY[0x29EDBE528];
  if (a1[23] >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v8;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v9;
  _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  result = 0;
LABEL_20:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2975AE358(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x2975AE2B4);
    }

    JUMPOUT(0x2975AE2BCLL);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::systemlogs::get(char *a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
    {
      v4 = strcasecmp(a1, *MEMORY[0x29EDBE6E8]);
      v5 = a1;
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_14:
      v10 = capabilities::abs::defaultSystemLogsHistory(v4);
      std::to_string(&buf, v10);
LABEL_20:
      *v15 = buf.__r_.__value_.__l.__size_;
      v12 = buf.__r_.__value_.__r.__words[0];
      *&v15[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
      v13 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v12;
      *(a2 + 8) = *v15;
      *(a2 + 15) = *&v15[7];
      *(a2 + 23) = v13;
      result = 1;
      goto LABEL_23;
    }

LABEL_15:
    if (TelephonyUtilIsInternalBuild())
    {
      IsCarrierBuild = 1;
    }

    else
    {
      IsCarrierBuild = TelephonyUtilIsCarrierBuild();
    }

    std::to_string(&buf, IsCarrierBuild);
    goto LABEL_20;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_15;
  }

  v4 = strcasecmp(v5, *MEMORY[0x29EDBE6E8]);
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (!strcasecmp(v5, *MEMORY[0x29EDBF0A8]))
  {
    std::to_string(&buf, 1);
    goto LABEL_20;
  }

  if ((atomic_load_explicit(&qword_2A18CB278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB278))
  {
    qword_2A18CB280 = 0;
    qword_2A18CB288 = 0;
    __cxa_guard_release(&qword_2A18CB278);
  }

  if (_MergedGlobals_8 == -1)
  {
    v6 = qword_2A18CB288;
    result = os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_23;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v6 = qword_2A18CB288;
    result = os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_23;
    }
  }

  v8 = *MEMORY[0x29EDBE710];
  if (a1[23] >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v8;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v9;
  _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  result = 0;
LABEL_23:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2975AE5FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x2975AE558);
    }

    JUMPOUT(0x2975AE560);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::profile::get(char *a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1[23] < 0)
  {
    v4 = *a1;
    if (!strcasecmp(*a1, *MEMORY[0x29EDBE4C8]))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = a1;
    if (!strcasecmp(a1, *MEMORY[0x29EDBE4C8]))
    {
LABEL_12:
      std::to_string(&buf, 0);
      *v12 = buf.__r_.__value_.__l.__size_;
      v9 = buf.__r_.__value_.__r.__words[0];
      *&v12[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
      v10 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v9;
      *(a2 + 8) = *v12;
      *(a2 + 15) = *&v12[7];
      *(a2 + 23) = v10;
      result = 1;
      goto LABEL_15;
    }
  }

  if (!strcasecmp(v4, *MEMORY[0x29EDBF7D0]))
  {
    goto LABEL_12;
  }

  if ((atomic_load_explicit(&qword_2A18CB278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB278))
  {
    qword_2A18CB280 = 0;
    qword_2A18CB288 = 0;
    __cxa_guard_release(&qword_2A18CB278);
  }

  if (_MergedGlobals_8 == -1)
  {
    v5 = qword_2A18CB288;
    result = os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v5 = qword_2A18CB288;
    result = os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_15;
    }
  }

  v7 = *MEMORY[0x29EDBE5B0];
  if (a1[23] >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v7;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
  _os_log_error_impl(&dword_297476000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  result = 0;
LABEL_15:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2975AE84C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x2975AE7A8);
    }

    JUMPOUT(0x2975AE7B0);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::tailspin::get(std::string::size_type a1, uint64_t a2)
{
  v3 = a1;
  v15 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  v4 = strcasecmp(a1, *MEMORY[0x29EDBE4C8]);
  if (v4)
  {
    if ((atomic_load_explicit(&qword_2A18CB278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB278))
    {
      qword_2A18CB280 = 0;
      qword_2A18CB288 = 0;
      __cxa_guard_release(&qword_2A18CB278);
    }

    if (_MergedGlobals_8 == -1)
    {
      v5 = qword_2A18CB288;
      if (!os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
      v5 = qword_2A18CB288;
      if (!os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    v6 = *MEMORY[0x29EDBE608];
    if (*(v3 + 23) >= 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = *v3;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v6;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v7;
    _os_log_error_impl(&dword_297476000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  }

  else
  {
    IsInternalBuild = TelephonyUtilIsInternalBuild();
    std::to_string(&buf, IsInternalBuild);
    *v13 = buf.__r_.__value_.__l.__size_;
    v9 = buf.__r_.__value_.__r.__words[0];
    *&v13[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v10 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v9;
    *(a2 + 8) = *v13;
    *(a2 + 15) = *&v13[7];
    *(a2 + 23) = v10;
  }

LABEL_14:
  result = v4 == 0;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2975AEA48(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x2975AE9A0);
    }

    JUMPOUT(0x2975AE9A8);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::tracesettings::get(char *a1, std::string *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    if (!strcasecmp(a1, *MEMORY[0x29EDBEF68]))
    {
LABEL_19:
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = 1;
        a2 = a2->__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&a2->__r_.__value_.__s + 23) = 1;
      }

      LOWORD(a2->__r_.__value_.__l.__data_) = 48;
      goto LABEL_36;
    }

    if (strcasecmp(a1, *MEMORY[0x29EDBF098]))
    {
      v4 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBEA40]))
      {
        goto LABEL_5;
      }

LABEL_16:
      if ((TelephonyUtilIsInternalBuild() & 1) != 0 || TelephonyUtilIsCarrierBuild())
      {
        v9 = "1";
      }

      else
      {
        v9 = "3";
      }

      std::string::__assign_external(a2, v9);
      goto LABEL_36;
    }

LABEL_21:
    v10 = abm::helper::asString();
    v11 = strlen(v10);
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      if ((v11 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v11 | 7) + 1;
      }

      v13 = operator new(v14);
      *&v16[8] = v12;
      *&v16[16] = v14 | 0x8000000000000000;
      *v16 = v13;
    }

    else
    {
      v16[23] = v11;
      v13 = v16;
      if (!v11)
      {
        v16[0] = 0;
        if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_25:
          *&a2->__r_.__value_.__l.__data_ = *v16;
          a2->__r_.__value_.__r.__words[2] = *&v16[16];
LABEL_36:
          result = 1;
          goto LABEL_37;
        }

LABEL_33:
        operator delete(a2->__r_.__value_.__l.__data_);
        goto LABEL_25;
      }
    }

    memmove(v13, v10, v12);
    v13[v12] = 0;
    if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  v4 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBEF68]))
  {
    goto LABEL_19;
  }

  if (!strcasecmp(v4, *MEMORY[0x29EDBF098]))
  {
    goto LABEL_21;
  }

  if (!strcasecmp(v4, *MEMORY[0x29EDBEA40]))
  {
    goto LABEL_16;
  }

LABEL_5:
  if (!strcasecmp(v4, *MEMORY[0x29EDBEDD0]))
  {
    goto LABEL_19;
  }

  if ((atomic_load_explicit(&qword_2A18CB278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB278))
  {
    qword_2A18CB280 = 0;
    qword_2A18CB288 = 0;
    __cxa_guard_release(&qword_2A18CB278);
  }

  if (_MergedGlobals_8 == -1)
  {
    v5 = qword_2A18CB288;
    result = os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_37;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v5 = qword_2A18CB288;
    result = os_log_type_enabled(qword_2A18CB288, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_37;
    }
  }

  v7 = *MEMORY[0x29EDBE600];
  if (a1[23] >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  *v16 = 136315394;
  *&v16[4] = v7;
  *&v16[12] = 2080;
  *&v16[14] = v8;
  _os_log_error_impl(&dword_297476000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", v16, 0x16u);
  result = 0;
LABEL_37:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

double util::to_str<BOOL>(std::string *a1, int __val)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, __val);
  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

void sub_2975AEE50(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2975AEE40);
}

void sub_2975AEE5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double util::to_str<int>(std::string *a1, int __val)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, __val);
  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

void sub_2975AEED8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2975AEEC8);
}

void sub_2975AEEE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t defaults::bbtrace::history(defaults::bbtrace *this)
{
  result = capabilities::trace::defaultHistorySizeMB(this);
  if (result >= 0x7FFFFFFF)
  {
    return 0x7FFFFFFFLL;
  }

  return result;
}

double util::to_str<diag::config::DuringAPSleep>(std::string *a1)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v3, 0);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_2975AEF78(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2975AEF68);
}

void sub_2975AEF84(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double util::to_str<unsigned int>(std::string *a1, unsigned int __val)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, __val);
  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

void sub_2975AEFF4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2975AEFE4);
}

void sub_2975AF000(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double util::to_str<diag::config::Recovery>(std::string *a1)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v3, 0);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_2975AF084(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2975AF074);
}

void sub_2975AF090(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const char *defaults::bbtrace::primary_dmc(defaults::bbtrace *this)
{
  if (config::hw::watch(this))
  {
    return "Lite";
  }

  else
  {
    return "Default";
  }
}

const char *defaults::bbtrace::secondary_dmc(defaults::bbtrace *this)
{
  v1 = capabilities::radio::ice(this);
  if (!v1)
  {
    return "None";
  }

  if (config::hw::watch(v1))
  {
    return "Lite";
  }

  return "Default";
}

uint64_t defaults::bbtrace::high_water_mark(defaults::bbtrace *this)
{
  if (capabilities::radio::ice(this))
  {
    return 80;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t defaults::bbtrace::low_water_mark(defaults::bbtrace *this)
{
  if (capabilities::radio::ice(this))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t defaults::bbtrace::transport_read_size(defaults::bbtrace *this)
{
  v1 = capabilities::radio::vendor(this);
  if ((v1 - 1) > 3)
  {
    v2 = 25;
  }

  else
  {
    v2 = dword_2976A33D0[v1 - 1];
  }

  v3 = capabilities::radio::dal(v1);
  if (v3)
  {
    v4 = 1024;
  }

  else
  {
    v4 = 0x4000;
  }

  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v3);
  if (shouldUseMinBasebandTransportIOReadSize)
  {
    return v4;
  }

  if (v2 == 17)
  {
    return 0x80000;
  }

  if (v2 == 21 || v2 == 20)
  {
    return 61440;
  }

  capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
  if ((v2 - 19) > 5)
  {
    return 0x8000;
  }

  else
  {
    return dword_2976A33E0[v2 - 19];
  }
}

uint64_t defaults::bbtrace::transport_read_count(defaults::bbtrace *this)
{
  v1 = capabilities::radio::vendor(this);
  if ((v1 - 1) > 3)
  {
    v2 = 25;
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(v1);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
      return 4;
    }
  }

  else
  {
    v2 = dword_2976A33D0[v1 - 1];
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(v1);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
      return 4;
    }
  }

  switch(v2)
  {
    case 17:
      return 16;
    case 21:
      return 15;
    case 20:
      return 63;
  }

  capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
  if (v2 <= 18)
  {
    if (v2 != 2)
    {
      if (v2 == 15 || v2 == 16)
      {
        return 36;
      }

      return 4;
    }

    return 16;
  }

  result = 31;
  if (v2 > 22)
  {
    if (v2 == 23)
    {
      return result;
    }

    if (v2 == 24)
    {
      return 86;
    }

    return 4;
  }

  if (v2 != 19)
  {
    return 15;
  }

  return result;
}

unint64_t defaults::bbtrace::bandwidth_mbps(defaults::bbtrace *this)
{
  result = capabilities::trace::defaultPeakBandwidthMbps(this);
  if (result >= 0xFFFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

double util::to_str<trace::LogMode>(std::string *a1, int __val)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, __val);
  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

void sub_2975AF468(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2975AF458);
}

void sub_2975AF474(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double util::to_str<trace::LogLevel>(std::string *a1)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v3, 3);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_2975AF4DC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2975AF4CCLL);
}

void sub_2975AF4E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t defaults::bbtrace::min_file_size(defaults::bbtrace *this)
{
  v1 = capabilities::radio::vendor(this);
  if ((v1 - 1) > 3)
  {
    v2 = 25;
  }

  else
  {
    v2 = dword_2976A33D0[v1 - 1];
  }

  v3 = capabilities::radio::dal(v1);
  if (v3)
  {
    v4 = 1024;
  }

  else
  {
    v4 = 0x4000;
  }

  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v3);
  if (shouldUseMinBasebandTransportIOReadSize)
  {
    return v4;
  }

  if (v2 == 17)
  {
    return 0x80000;
  }

  if (v2 == 21 || v2 == 20)
  {
    return 61440;
  }

  capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
  if ((v2 - 19) > 5)
  {
    return 0x8000;
  }

  else
  {
    return dword_2976A33E0[v2 - 19];
  }
}

capabilities::trace *defaults::ipc::enabled(defaults::ipc *this)
{
  result = capabilities::ipc::supportsPCI(this);
  if (result)
  {

    return capabilities::trace::enabledByDefault(result);
  }

  return result;
}

uint64_t defaults::compression::mode(defaults::compression *this)
{
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  if ((IsInternalBuild & 1) == 0)
  {
    IsInternalBuild = TelephonyUtilIsCarrierBuild();
    if (!IsInternalBuild)
    {
      return 2;
    }
  }

  return capabilities::trace::getCompressionMode(IsInternalBuild);
}

uint64_t defaults::ttr::mode(defaults::ttr *this)
{
  result = TelephonyUtilIsInternalBuild();
  if ((result & 1) != 0 || (result = TelephonyUtilIsCarrierBuild(), result))
  {
    if (capabilities::radio::initium(result))
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t defaults::ttr::supported(defaults::ttr *this)
{
  if (TelephonyUtilIsInternalBuild())
  {
    return 1;
  }

  return TelephonyUtilIsCarrierBuild();
}

uint64_t defaults::systemlogs::mode(defaults::systemlogs *this)
{
  if (TelephonyUtilIsInternalBuild())
  {
    return 1;
  }

  else
  {
    return TelephonyUtilIsCarrierBuild();
  }
}

unint64_t defaults::tracesettings::config@<X0>(void *a1@<X8>)
{
  v3 = abm::helper::asString();
  result = strlen(v3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    if ((result | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (result | 7) + 1;
    }

    v7 = operator new(v6);
    a1[1] = v5;
    a1[2] = v6 | 0x8000000000000000;
    *a1 = v7;
    a1 = v7;
  }

  else
  {
    *(a1 + 23) = result;
    if (!result)
    {
      *a1 = 0;
      return result;
    }
  }

  result = memmove(a1, v3, v5);
  *(a1 + v5) = 0;
  return result;
}

void ___ZL16sGetOsLogContextv_block_invoke_4()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "prop.default");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void CMOnBodyDelegate::create(NSObject **this@<X0>, queue a2@<0:X1>, CMOnBodyDelegate **a3@<X8>)
{
  if (([MEMORY[0x29EDB93C8] isOnBodyStatusDetectionAvailable] & 1) == 0)
  {
    {
      GetOsLogContext(void)::sOsLogContext = 0;
      qword_2A18CB080 = 0;
    }

    if (GetOsLogContext(void)::onceToken == -1)
    {
      v12 = qword_2A18CB080;
      if (!os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:
        *a3 = 0;
        a3[1] = 0;
        return;
      }
    }

    else
    {
      dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_12);
      v12 = qword_2A18CB080;
      if (!os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "Motion on-body detection is not available on this device", buf, 2u);
    goto LABEL_12;
  }

  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = operator new(0x40uLL);
  v6 = *this;
  v14 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7.fObj.fObj = &v14;
  CMOnBodyDelegate::CMOnBodyDelegate(v5, v7);
  *a3 = v5;
  v8 = operator new(0x28uLL);
  v8[1] = 0;
  v9 = v8 + 1;
  *v8 = &unk_2A1E49CC0;
  v8[2] = 0;
  v8[3] = v5;
  v8[4] = &__block_literal_global_8;
  a3[1] = v8;
  v10 = *(v5 + 1);
  if (!v10)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
    *v5 = v5;
    *(v5 + 1) = v8;
    if (atomic_fetch_add(v9, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v10->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
    *v5 = v5;
    *(v5 + 1) = v8;
    v11 = v8;
    std::__shared_weak_count::__release_weak(v10);
    v8 = v11;
    if (!atomic_fetch_add(v9, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_14:
      v13 = v8;
      (*(*v8 + 16))();
      std::__shared_weak_count::__release_weak(v13);
    }
  }

LABEL_15:
  if (v6)
  {

    dispatch_release(v6);
  }
}

void sub_2975AFAE0(void *a1)
{
  v2 = __cxa_begin_catch(a1);
  _block_invoke(v2, v1);
  __cxa_rethrow();
}

void sub_2975AFAF4(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(a1);
}

void _block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = _block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(v2, block);
}

void _block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CMOnBodyDelegate::~CMOnBodyDelegate(v1);

    operator delete(v2);
  }
}

void CMOnBodyDelegate::CMOnBodyDelegate(CMOnBodyDelegate *this, queue a2)
{
  *this = 0;
  *(this + 1) = 0;
  ctu::OsLogContext::OsLogContext(v4, "com.apple.telephony.abm", "cm.onbody");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](this + 16, v5);
  MEMORY[0x29C270D60](v5);
  ctu::OsLogContext::~OsLogContext(v4);
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 3) = *a2.fObj.fObj;
}

uint64_t CMOnBodyDelegate::shutdown(CMOnBodyDelegate *this)
{
  result = [objc_msgSend(MEMORY[0x29EDB93C8] "sharedOnBodyStatusManager")];
  if (*(this + 3))
  {
    *(this + 3) = 0;
  }

  return result;
}

uint64_t CMOnBodyDelegate::stopMotionDetection(CMOnBodyDelegate *this)
{
  v1 = [MEMORY[0x29EDB93C8] sharedOnBodyStatusManager];

  return [v1 stopOnBodyStatusDetection];
}

void CMOnBodyDelegate::~CMOnBodyDelegate(CMOnBodyDelegate *this)
{
  v2 = *(this + 4);
  for (i = *(this + 5); i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      dispatch_release(v4);
    }

    v6 = *(i - 16);
    v5 = v6;
    if (v6)
    {
      _Block_release(v5);
    }
  }

  *(this + 5) = v2;
  v7 = *(this + 7);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    v9 = *(this + 5);
    v10 = *(this + 4);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 8);
        if (v11)
        {
          dispatch_release(v11);
        }

        v13 = *(v9 - 16);
        v9 -= 16;
        v12 = v13;
        if (v13)
        {
          _Block_release(v12);
        }
      }

      while (v9 != v8);
      v10 = *(this + 4);
    }

    *(this + 5) = v8;
    operator delete(v10);
  }

  MEMORY[0x29C270D60](this + 16);
  v14 = *(this + 1);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }
}

void CMOnBodyDelegate::startMotionDetection(CMOnBodyDelegate *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (*(this + 7))
    {
      goto LABEL_5;
    }
  }

  else
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
    if (*(this + 7))
    {
LABEL_5:
      v6 = [MEMORY[0x29EDB93C8] sharedOnBodyStatusManager];
      v7 = *(this + 3);
      v8 = *(this + 7);
      v10[0] = MEMORY[0x29EDCA5F8];
      v10[1] = 3321888768;
      v10[2] = ___ZN16CMOnBodyDelegate20startMotionDetectionEv_block_invoke;
      v10[3] = &__block_descriptor_48_e8_32c41_ZTSNSt3__18weak_ptrI16CMOnBodyDelegateEE_e36_v24__0__CMOnBodyStatus_8__NSError_16l;
      v10[4] = v3;
      v11 = v5;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      [v6 startOnBodyStatusDetectionToQueue:v7 withParameters:v8 handler:v10];
      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }

      goto LABEL_10;
    }
  }

  v9 = *(this + 2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297476000, v9, OS_LOG_TYPE_ERROR, "Motion parameters not set, cannot start motion detection!", buf, 2u);
  }

LABEL_10:
  std::__shared_weak_count::__release_weak(v5);
}

void sub_2975AFF5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    std::__shared_weak_count::__release_weak(v14);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v14);
  _Unwind_Resume(a1);
}

void ___ZN16CMOnBodyDelegate20startMotionDetectionEv_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      if (v7)
      {
        CMOnBodyDelegate::motionCallback_sync(v7, [a2 result], objc_msgSend(a2, "confidence"));
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void CMOnBodyDelegate::motionCallback_sync(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3 != v4)
  {
    while (!*v3)
    {
      v7 = 0;
      v8 = *(v3 + 8);
      if (v8)
      {
        goto LABEL_6;
      }

LABEL_7:
      if (!v7)
      {
        v10 = 0;
        v12 = MEMORY[0x29EDCA5F8];
        v13 = 3321888768;
        v14 = ___ZNK8dispatch8callbackIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEclIJS2_S3_EEEvDpT__block_invoke;
        v15 = &__block_descriptor_48_e8_32c109_ZTSN8dispatch5blockIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEE_e5_v8__0l;
LABEL_13:
        v11 = 0;
        goto LABEL_14;
      }

      v9 = _Block_copy(v7);
      v10 = v9;
      v12 = MEMORY[0x29EDCA5F8];
      v13 = 3321888768;
      v14 = ___ZNK8dispatch8callbackIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEclIJS2_S3_EEEvDpT__block_invoke;
      v15 = &__block_descriptor_48_e8_32c109_ZTSN8dispatch5blockIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEE_e5_v8__0l;
      if (!v9)
      {
        goto LABEL_13;
      }

      v11 = _Block_copy(v9);
LABEL_14:
      aBlock = v11;
      v17 = a2;
      v18 = a3;
      dispatch_async(v8, &v12);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v10)
      {
        _Block_release(v10);
      }

      if (v8)
      {
        dispatch_release(v8);
      }

      if (v7)
      {
        _Block_release(v7);
      }

      v3 += 16;
      if (v3 == v4)
      {
        return;
      }
    }

    v7 = _Block_copy(*v3);
    v8 = *(v3 + 8);
    if (!v8)
    {
      goto LABEL_7;
    }

LABEL_6:
    dispatch_retain(v8);
    goto LABEL_7;
  }
}