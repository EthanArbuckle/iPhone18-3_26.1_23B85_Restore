void AntennaModule::sleep(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::sleep(dispatch::group_session)::$_0>(AntennaModule::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AntennaModule::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void AntennaModule::wake(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::wake(dispatch::group_session)::$_0>(AntennaModule::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AntennaModule::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void AntennaModule::setProperty_sync(AntennaModule *this, xpc_object_t *a2)
{
  v4 = MEMORY[0x29C26CE60](*a2);
  v5 = MEMORY[0x29EDCAA00];
  if (v4 != MEMORY[0x29EDCAA00])
  {
    v6 = *(this + 13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "Failed to get input!", &buf, 2u);
    }

    return;
  }

  memset(&buf, 170, sizeof(buf));
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBED18]);
  v99.__r_.__value_.__r.__words[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v99.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&buf, &v99, "", v8);
  xpc_release(v99.__r_.__value_.__l.__data_);
  size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = buf.__r_.__value_.__l.__size_;
  }

  if (size && MEMORY[0x29C26CE60](*a2) == v5)
  {
    v10 = *MEMORY[0x29EDBEFD0];
    v11 = strlen(*MEMORY[0x29EDBEFD0]);
    v12 = v11;
    v13 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v11 != -1)
      {
        v14 = buf.__r_.__value_.__l.__size_;
        if (buf.__r_.__value_.__l.__size_ >= v11)
        {
          v16 = v11;
        }

        else
        {
          v16 = buf.__r_.__value_.__l.__size_;
        }

        if (memcmp(buf.__r_.__value_.__l.__data_, v10, v16))
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else if (v11 != -1)
    {
      v14 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) >= v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      if (memcmp(&buf, v10, v15))
      {
        goto LABEL_27;
      }

LABEL_23:
      if (v14 == v12)
      {
        xdict.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
        v17 = *MEMORY[0x29EDBEA98];
        v99.__r_.__value_.__r.__words[0] = a2;
        v99.__r_.__value_.__l.__size_ = v17;
        xpc::dict::object_proxy::operator xpc::dict(&v99, &xdict);
        if (MEMORY[0x29C26CE60](xdict.__r_.__value_.__r.__words[0]) == v5)
        {
          memset(&v99, 170, sizeof(v99));
          v18 = xpc_dictionary_get_value(xdict.__r_.__value_.__l.__data_, *MEMORY[0x29EDBF838]);
          object = v18;
          if (v18)
          {
            xpc_retain(v18);
          }

          else
          {
            object = xpc_null_create();
          }

          xpc::dyn_cast_or_default(&v99, &object, "", v19);
          xpc_release(object);
          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v98, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
          }

          else
          {
            v98 = v99;
          }

          AntennaModule::setPreference_sync<std::string>(this, &buf, &v98);
          if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v98.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v99.__r_.__value_.__l.__data_);
          }
        }

        xpc_release(xdict.__r_.__value_.__l.__data_);
        goto LABEL_73;
      }

LABEL_27:
      v20 = strlen(*MEMORY[0x29EDBE978]);
      v21 = v20;
      if ((v13 & 0x80000000) != 0)
      {
        if (v20 != -1)
        {
          v23 = buf.__r_.__value_.__l.__size_;
          v22 = buf.__r_.__value_.__r.__words[0];
LABEL_32:
          if (v23 >= v21)
          {
            v24 = v21;
          }

          else
          {
            v24 = v23;
          }

          if (!memcmp(v22, *MEMORY[0x29EDBE978], v24) && v23 == v21)
          {
            memset(&v99, 170, sizeof(v99));
            v25 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEA98]);
            xdict.__r_.__value_.__r.__words[0] = v25;
            if (v25)
            {
              xpc_retain(v25);
            }

            else
            {
              xdict.__r_.__value_.__r.__words[0] = xpc_null_create();
            }

            xpc::dyn_cast_or_default(&v99, &xdict, "", v26);
            xpc_release(xdict.__r_.__value_.__l.__data_);
            if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v97, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
            }

            else
            {
              v97 = v99;
            }

            AntennaModule::setPreference_sync<std::string>(this, &buf, &v97);
            if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
            {
              v38 = v97.__r_.__value_.__r.__words[0];
LABEL_61:
              operator delete(v38);
            }

LABEL_62:
            if ((SHIBYTE(v99.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_73;
            }

            goto LABEL_63;
          }

          v27 = strlen(*MEMORY[0x29EDBEBA0]);
          v28 = v27;
          if ((v13 & 0x80000000) != 0)
          {
            if (v27 != -1)
            {
              v30 = buf.__r_.__value_.__l.__size_;
              v29 = buf.__r_.__value_.__r.__words[0];
LABEL_44:
              if (v30 >= v28)
              {
                v31 = v28;
              }

              else
              {
                v31 = v30;
              }

              if (!memcmp(v29, *MEMORY[0x29EDBEBA0], v31) && v30 == v28)
              {
                object = 0xAAAAAAAAAAAAAAAALL;
                v32 = *MEMORY[0x29EDBEA98];
                v99.__r_.__value_.__r.__words[0] = a2;
                v99.__r_.__value_.__l.__size_ = v32;
                xpc::dict::object_proxy::operator xpc::dict(&v99, &object);
                if (MEMORY[0x29C26CE60](object) == v5)
                {
                  memset(&v99, 170, sizeof(v99));
                  v33 = *MEMORY[0x29EDBF670];
                  xdict.__r_.__value_.__r.__words[0] = &object;
                  xdict.__r_.__value_.__l.__size_ = v33;
                  xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                  xpc::dyn_cast_or_default(&v99, &v96, "", v34);
                  xpc_release(v96);
                  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v95, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v95 = v99;
                  }

                  AntennaModule::setPreference_sync<std::string>(this, &buf, &v95);
                  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v95.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v99.__r_.__value_.__l.__data_);
                  }
                }

LABEL_141:
                xpc_release(object);
                goto LABEL_73;
              }

              v35 = strlen(*MEMORY[0x29EDBED08]);
              v36 = v35;
              if ((v13 & 0x80000000) != 0)
              {
                if (v35 != -1)
                {
                  v13 = buf.__r_.__value_.__l.__size_;
                  p_buf = buf.__r_.__value_.__r.__words[0];
LABEL_78:
                  if (v13 >= v36)
                  {
                    v39 = v36;
                  }

                  else
                  {
                    v39 = v13;
                  }

                  if (!memcmp(p_buf, *MEMORY[0x29EDBED08], v39) && v13 == v36)
                  {
                    object = 0xAAAAAAAAAAAAAAAALL;
                    v40 = *MEMORY[0x29EDBEA98];
                    v99.__r_.__value_.__r.__words[0] = a2;
                    v99.__r_.__value_.__l.__size_ = v40;
                    xpc::dict::object_proxy::operator xpc::dict(&v99, &object);
                    if (MEMORY[0x29C26CE60](object) == v5)
                    {
                      memset(&v99, 170, sizeof(v99));
                      v41 = *MEMORY[0x29EDBF6E8];
                      xdict.__r_.__value_.__r.__words[0] = &object;
                      xdict.__r_.__value_.__l.__size_ = v41;
                      xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                      xpc::dyn_cast_or_default(&v99, &v96, "", v42);
                      xpc_release(v96);
                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v94, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v94 = v99;
                      }

                      AntennaModule::setPreference_sync<std::string>(this, &buf, &v94);
                      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v94.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v99.__r_.__value_.__l.__data_);
                      }
                    }

                    goto LABEL_141;
                  }

                  if (!std::string::compare(&buf, *MEMORY[0x29EDBF530]))
                  {
                    object = 0xAAAAAAAAAAAAAAAALL;
                    v43 = *MEMORY[0x29EDBEA98];
                    v99.__r_.__value_.__r.__words[0] = a2;
                    v99.__r_.__value_.__l.__size_ = v43;
                    xpc::dict::object_proxy::operator xpc::dict(&v99, &object);
                    if (MEMORY[0x29C26CE60](object) == v5)
                    {
                      memset(&v99, 170, sizeof(v99));
                      v44 = *MEMORY[0x29EDBF818];
                      xdict.__r_.__value_.__r.__words[0] = &object;
                      xdict.__r_.__value_.__l.__size_ = v44;
                      xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                      xpc::dyn_cast_or_default(&v99, &v96, "", v45);
                      xpc_release(v96);
                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v93, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v93 = v99;
                      }

                      AntennaModule::setPreference_sync<std::string>(this, &buf, &v93);
                      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v93.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v99.__r_.__value_.__l.__data_);
                      }
                    }

                    goto LABEL_141;
                  }

                  if (std::string::compare(&buf, *MEMORY[0x29EDBF558]))
                  {
                    if (!std::string::compare(&buf, *MEMORY[0x29EDBECA0]))
                    {
                      memset(&v99, 170, sizeof(v99));
                      v50 = *MEMORY[0x29EDBEA98];
                      xdict.__r_.__value_.__r.__words[0] = a2;
                      xdict.__r_.__value_.__l.__size_ = v50;
                      xpc::dict::object_proxy::operator xpc::object(&xdict, &object);
                      xpc::dyn_cast_or_default(&v99, &object, "", v51);
                      xpc_release(object);
                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v86, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v86 = v99;
                      }

                      AntennaModule::setPreference_sync<std::string>(this, &buf, &v86);
                      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
                      {
                        v38 = v86.__r_.__value_.__r.__words[0];
                        goto LABEL_61;
                      }
                    }

                    else if (!std::string::compare(&buf, *MEMORY[0x29EDBF528]))
                    {
                      memset(&v99, 170, sizeof(v99));
                      v52 = *MEMORY[0x29EDBEA98];
                      xdict.__r_.__value_.__r.__words[0] = a2;
                      xdict.__r_.__value_.__l.__size_ = v52;
                      xpc::dict::object_proxy::operator xpc::object(&xdict, &object);
                      xpc::dyn_cast_or_default(&v99, &object, "", v53);
                      xpc_release(object);
                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v85, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v85 = v99;
                      }

                      AntennaModule::setPreference_sync<std::string>(this, &buf, &v85);
                      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
                      {
                        v38 = v85.__r_.__value_.__r.__words[0];
                        goto LABEL_61;
                      }
                    }

                    else
                    {
                      if (std::string::compare(&buf, *MEMORY[0x29EDBF510]))
                      {
                        if (std::string::compare(&buf, *MEMORY[0x29EDBF5A8]))
                        {
                          if (!std::string::compare(&buf, *MEMORY[0x29EDBE4F0]))
                          {
                            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                            {
                              std::string::__init_copy_ctor_external(&v82, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
                            }

                            else
                            {
                              v82 = buf;
                            }

                            AntennaModule::setPreference_sync<std::string>(this, &buf, &v82);
                            if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v82.__r_.__value_.__l.__data_);
                            }

                            object = 0xAAAAAAAAAAAAAAAALL;
                            v69 = *MEMORY[0x29EDBEA98];
                            v99.__r_.__value_.__r.__words[0] = a2;
                            v99.__r_.__value_.__l.__size_ = v69;
                            xpc::dict::object_proxy::operator xpc::object(&v99, &xdict);
                            v70 = xpc_null_create();
                            v71 = xdict.__r_.__value_.__r.__words[0];
                            object = xdict.__r_.__value_.__r.__words[0];
                            if (xdict.__r_.__value_.__r.__words[0] && MEMORY[0x29C26CE60](xdict.__r_.__value_.__r.__words[0]) == v5)
                            {
                              xpc_retain(v71);
                            }

                            else
                            {
                              object = xpc_null_create();
                            }

                            if (MEMORY[0x29C26CE60]() != v5)
                            {
                              xpc::dict::operator=(&object, v70);
                            }

                            xpc_release(v70);
                            xpc_release(xdict.__r_.__value_.__l.__data_);
                            v72 = *MEMORY[0x29EDBF1D8];
                            std::string::basic_string[abi:ne200100]<0>(&v99, *MEMORY[0x29EDBF1D8]);
                            xdict.__r_.__value_.__r.__words[0] = &object;
                            xdict.__r_.__value_.__l.__size_ = v72;
                            xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                            xpc::dyn_cast_or_default(__p, &v96, "", v73);
                            AntennaModule::setPreference_sync<std::string>(this, &v99, __p);
                            if (v81 < 0)
                            {
                              operator delete(__p[0]);
                            }

                            xpc_release(v96);
                            if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v99.__r_.__value_.__l.__data_);
                            }

                            v74 = *MEMORY[0x29EDBE8B8];
                            std::string::basic_string[abi:ne200100]<0>(&v99, *MEMORY[0x29EDBE8B8]);
                            xdict.__r_.__value_.__r.__words[0] = &object;
                            xdict.__r_.__value_.__l.__size_ = v74;
                            xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                            v75 = xpc::dyn_cast_or_default(&v96, 0x7FFF);
                            AntennaModule::setPreference_sync<unsigned int>(this, &v99, v75);
                            xpc_release(v96);
                            if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v99.__r_.__value_.__l.__data_);
                            }

                            v76 = *MEMORY[0x29EDBEA90];
                            std::string::basic_string[abi:ne200100]<0>(&v99, *MEMORY[0x29EDBEA90]);
                            xdict.__r_.__value_.__r.__words[0] = &object;
                            xdict.__r_.__value_.__l.__size_ = v76;
                            xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                            v77 = xpc::dyn_cast_or_default(&v96, 0x7FFF);
                            AntennaModule::setPreference_sync<unsigned int>(this, &v99, v77);
                            xpc_release(v96);
                            if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v99.__r_.__value_.__l.__data_);
                            }

                            v78 = *MEMORY[0x29EDBE698];
                            std::string::basic_string[abi:ne200100]<0>(&v99, *MEMORY[0x29EDBE698]);
                            xdict.__r_.__value_.__r.__words[0] = &object;
                            xdict.__r_.__value_.__l.__size_ = v78;
                            xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                            v79 = xpc::dyn_cast_or_default(&v96, 0x7FFF);
                            AntennaModule::setPreference_sync<unsigned int>(this, &v99, v79);
                            xpc_release(v96);
                            if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v99.__r_.__value_.__l.__data_);
                            }

                            xpc_release(object);
                          }

                          goto LABEL_73;
                        }

                        memset(&v99, 170, sizeof(v99));
                        v56 = *MEMORY[0x29EDBEA98];
                        xdict.__r_.__value_.__r.__words[0] = a2;
                        xdict.__r_.__value_.__l.__size_ = v56;
                        xpc::dict::object_proxy::operator xpc::object(&xdict, &object);
                        xpc::dyn_cast_or_default(&v99, &object, "", v57);
                        xpc_release(object);
                        if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                        {
                          std::string::__init_copy_ctor_external(&v83, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          v83 = v99;
                        }

                        AntennaModule::setPreference_sync<std::string>(this, &buf, &v83);
                        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v83.__r_.__value_.__l.__data_);
                        }

                        v58 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
                        if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v59 = &v99;
                        }

                        else
                        {
                          v59 = v99.__r_.__value_.__r.__words[0];
                        }

                        v60 = strlen(*MEMORY[0x29EDBF878]);
                        if (strncasecmp(v59, *MEMORY[0x29EDBF878], v60))
                        {
                          v61 = *MEMORY[0x29EDBF820];
                          std::string::basic_string[abi:ne200100]<0>(&xdict, *MEMORY[0x29EDBF820]);
                          object = a2;
                          v90 = v61;
                          xpc::dict::object_proxy::operator xpc::object(&object, &v96);
                          v62 = xpc::dyn_cast_or_default(&v96, 0);
                          AntennaModule::setPreference_sync<int>(this, &xdict, v62);
                          xpc_release(v96);
                          if (SHIBYTE(xdict.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(xdict.__r_.__value_.__l.__data_);
                          }

                          v63 = *MEMORY[0x29EDBF7D8];
                          std::string::basic_string[abi:ne200100]<0>(&xdict, *MEMORY[0x29EDBF7D8]);
                          object = a2;
                          v90 = v63;
                          xpc::dict::object_proxy::operator xpc::object(&object, &v96);
                          v64 = xpc::dyn_cast_or_default(&v96, 0);
                          AntennaModule::setPreference_sync<int>(this, &xdict, v64);
                          xpc_release(v96);
                          if (SHIBYTE(xdict.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(xdict.__r_.__value_.__l.__data_);
                          }

                          v65 = *MEMORY[0x29EDBF610];
                          std::string::basic_string[abi:ne200100]<0>(&xdict, *MEMORY[0x29EDBF610]);
                          object = a2;
                          v90 = v65;
                          xpc::dict::object_proxy::operator xpc::object(&object, &v96);
                          v66 = xpc::dyn_cast_or_default(&v96, 0);
                          AntennaModule::setPreference_sync<int>(this, &xdict, v66);
                          xpc_release(v96);
                          if (SHIBYTE(xdict.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(xdict.__r_.__value_.__l.__data_);
                          }

                          v67 = *MEMORY[0x29EDBF608];
                          std::string::basic_string[abi:ne200100]<0>(&xdict, *MEMORY[0x29EDBF608]);
                          object = a2;
                          v90 = v67;
                          xpc::dict::object_proxy::operator xpc::object(&object, &v96);
                          v68 = xpc::dyn_cast_or_default(&v96, 0);
                          AntennaModule::setPreference_sync<int>(this, &xdict, v68);
                          xpc_release(v96);
                          if (SHIBYTE(xdict.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(xdict.__r_.__value_.__l.__data_);
                          }

                          v58 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
                        }

                        if ((v58 & 0x80) == 0)
                        {
                          goto LABEL_73;
                        }

LABEL_63:
                        operator delete(v99.__r_.__value_.__l.__data_);
                        goto LABEL_73;
                      }

                      memset(&v99, 170, sizeof(v99));
                      v54 = *MEMORY[0x29EDBEA98];
                      xdict.__r_.__value_.__r.__words[0] = a2;
                      xdict.__r_.__value_.__l.__size_ = v54;
                      xpc::dict::object_proxy::operator xpc::object(&xdict, &object);
                      xpc::dyn_cast_or_default(&v99, &object, "", v55);
                      xpc_release(object);
                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v84, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v84 = v99;
                      }

                      AntennaModule::setPreference_sync<std::string>(this, &buf, &v84);
                      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
                      {
                        v38 = v84.__r_.__value_.__r.__words[0];
                        goto LABEL_61;
                      }
                    }

                    goto LABEL_62;
                  }

                  memset(&v99, 170, sizeof(v99));
                  v46 = *MEMORY[0x29EDBE720];
                  xdict.__r_.__value_.__r.__words[0] = a2;
                  xdict.__r_.__value_.__l.__size_ = v46;
                  xpc::dict::object_proxy::operator xpc::object(&xdict, &object);
                  xpc::dyn_cast_or_default(&v99, &object, "", v47);
                  xpc_release(object);
                  memset(&xdict, 170, sizeof(xdict));
                  v48 = *MEMORY[0x29EDBE960];
                  object = a2;
                  v90 = v48;
                  xpc::dict::object_proxy::operator xpc::object(&object, &v96);
                  xpc::dyn_cast_or_default(&xdict, &v96, "", v49);
                  xpc_release(v96);
                  std::string::basic_string[abi:ne200100]<0>(&object, v46);
                  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v88, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v88 = v99;
                  }

                  AntennaModule::setPreference_sync<std::string>(this, &object, &v88);
                  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v88.__r_.__value_.__l.__data_);
                  }

                  if (v91 < 0)
                  {
                    operator delete(object);
                  }

                  std::string::basic_string[abi:ne200100]<0>(&object, v48);
                  if (SHIBYTE(xdict.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v87, xdict.__r_.__value_.__l.__data_, xdict.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v87 = xdict;
                  }

                  AntennaModule::setPreference_sync<std::string>(this, &object, &v87);
                  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v87.__r_.__value_.__l.__data_);
                    if ((v91 & 0x80000000) == 0)
                    {
LABEL_126:
                      if ((SHIBYTE(xdict.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_62;
                      }

                      goto LABEL_130;
                    }
                  }

                  else if ((v91 & 0x80000000) == 0)
                  {
                    goto LABEL_126;
                  }

                  operator delete(object);
                  if ((SHIBYTE(xdict.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_62;
                  }

LABEL_130:
                  v38 = xdict.__r_.__value_.__r.__words[0];
                  goto LABEL_61;
                }
              }

              else if (v35 != -1)
              {
                p_buf = &buf;
                goto LABEL_78;
              }

              std::string::__throw_out_of_range[abi:ne200100]();
            }
          }

          else if (v27 != -1)
          {
            v29 = &buf;
            v30 = v13;
            goto LABEL_44;
          }

          std::string::__throw_out_of_range[abi:ne200100]();
        }
      }

      else if (v20 != -1)
      {
        v22 = &buf;
        v23 = v13;
        goto LABEL_32;
      }

      std::string::__throw_out_of_range[abi:ne200100]();
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }

LABEL_73:
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }
}

void sub_297149F7C(_Unwind_Exception *a1)
{
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void AntennaModule::setPreference_sync<std::string>(uint64_t a1, char *a2, uint64_t a3)
{
  v27 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18B7520)
  {
    v7 = operator new(0x18uLL);
    MEMORY[0x29C26B190](v7, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v25.__r_.__value_.__r.__words[0] = v7;
    v6 = operator new(0x20uLL);
    *v6 = &unk_2A1E26558;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v7;
    v8 = *(&xmmword_2A18B7520 + 1);
    *&xmmword_2A18B7520 = v7;
    *(&xmmword_2A18B7520 + 1) = v6;
    if (!v8)
    {
      *&v24 = v7;
      *(&v24 + 1) = v6;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v6 = *(&xmmword_2A18B7520 + 1);
  LODWORD(v7) = xmmword_2A18B7520;
  v24 = xmmword_2A18B7520;
  if (*(&xmmword_2A18B7520 + 1))
  {
LABEL_8:
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v9 = a2[23];
  if (v9 >= 0)
  {
    v10 = a2[23];
  }

  else
  {
    v10 = *(a2 + 1);
  }

  v11 = v10 + 16;
  if (v10 + 16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 < 0x17)
  {
    v14 = &buf[16];
    *&buf[16] = 0;
    buf[23] = v10 + 16;
    *buf = *"AntennaSetting::";
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = operator new(v12);
    *&buf[8] = v10 + 16;
    *&buf[16] = v12 | 0x8000000000000000;
    *buf = v13;
    *v13 = *"AntennaSetting::";
    v14 = v13 + 1;
  }

  v15 = *a2;
  if (v9 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  memmove(v14, v16, v10);
LABEL_23:
  v14[v10] = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = __p;
  }

  if (buf[23] >= 0)
  {
    v17 = buf;
  }

  else
  {
    v17 = *buf;
  }

  v18 = ctu::cf::plist_adapter::set<std::string>(v7, &v25, v17);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_34:
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

LABEL_39:
      operator delete(*buf);
      v19 = *(&v24 + 1);
      if (!*(&v24 + 1))
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((buf[23] & 0x80000000) != 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  v19 = *(&v24 + 1);
  if (!*(&v24 + 1))
  {
LABEL_41:
    if (v18)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_40:
  if (atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_41;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (v18)
  {
    goto LABEL_43;
  }

LABEL_42:
  v20 = *(a1 + 104);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *&v25.__r_.__value_.__l.__data_ = *"AntennaSetting::";
    v25.__r_.__value_.__r.__words[2] = 0x1000000000000000;
    if (a2[23] >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    *buf = 136315394;
    *&buf[4] = &v25;
    *&buf[12] = 2080;
    *&buf[14] = v22;
    _os_log_error_impl(&dword_296FF7000, v20, OS_LOG_TYPE_ERROR, "Failed to set property with %s%s", buf, 0x16u);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

LABEL_43:
  v21 = *MEMORY[0x29EDCA608];
}

void sub_29714A8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_3:
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
      _Unwind_Resume(a1);
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a25);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void sub_29714A97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AntennaModule::setPreference_sync<int>(uint64_t a1, char *a2, int a3)
{
  v32 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18B7520)
  {
    v7 = operator new(0x18uLL);
    MEMORY[0x29C26B190](v7, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    __p[0] = v7;
    v6 = operator new(0x20uLL);
    *v6 = &unk_2A1E26558;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v7;
    v8 = *(&xmmword_2A18B7520 + 1);
    *&xmmword_2A18B7520 = v7;
    *(&xmmword_2A18B7520 + 1) = v6;
    if (!v8)
    {
      *buf = v7;
      *&buf[8] = v6;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v6 = *(&xmmword_2A18B7520 + 1);
  v7 = xmmword_2A18B7520;
  *buf = xmmword_2A18B7520;
  if (*(&xmmword_2A18B7520 + 1))
  {
LABEL_8:
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v9 = a2[23];
  if (v9 >= 0)
  {
    v10 = a2[23];
  }

  else
  {
    v10 = *(a2 + 1);
  }

  v11 = v10 + 16;
  if (v10 + 16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 < 0x17)
  {
    v14 = &v28;
    v28 = 0;
    HIBYTE(v28) = v10 + 16;
    *__p = *"AntennaSetting::";
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = operator new(v12);
    __p[1] = (v10 + 16);
    v28 = v12 | 0x8000000000000000;
    __p[0] = v13;
    *v13 = *"AntennaSetting::";
    v14 = v13 + 2;
  }

  v15 = *a2;
  if (v9 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  memmove(v14, v16, v10);
LABEL_23:
  *(v14 + v10) = 0;
  if (v28 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  ctu::cf::MakeCFString::MakeCFString(v29, v17);
  v18 = v29[0];
  v19 = *MEMORY[0x29EDB8ED8];
  valuePtr = a3;
  v20 = CFNumberCreate(v19, kCFNumberIntType, &valuePtr);
  v29[1] = v20;
  if (v20)
  {
    v21 = *MEMORY[0x29EDB8FA8];
    CFPreferencesSetValue(v18, v20, v7[1], v7[2], *MEMORY[0x29EDB8FA8]);
    v22 = CFPreferencesSynchronize(v7[1], v7[2], v21) != 0;
    CFRelease(v20);
    MEMORY[0x29C26B130](v29);
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    operator delete(__p[0]);
    v23 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v22 = 0;
  MEMORY[0x29C26B130](v29);
  if (SHIBYTE(v28) < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  v23 = *&buf[8];
  if (!*&buf[8])
  {
LABEL_33:
    if (v22)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_32:
  if (atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_33;
  }

  (v23->__on_zero_shared)(v23);
  std::__shared_weak_count::__release_weak(v23);
  if (v22)
  {
    goto LABEL_35;
  }

LABEL_34:
  v24 = *(a1 + 104);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *__p = *"AntennaSetting::";
    v28 = 0x1000000000000000;
    if (a2[23] >= 0)
    {
      v26 = a2;
    }

    else
    {
      v26 = *a2;
    }

    *buf = 136315394;
    *&buf[4] = __p;
    *&buf[12] = 2080;
    *&buf[14] = v26;
    _os_log_error_impl(&dword_296FF7000, v24, OS_LOG_TYPE_ERROR, "Failed to set property with %s%s", buf, 0x16u);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_35:
  v25 = *MEMORY[0x29EDCA608];
}

void sub_29714AD3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&__p);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_29714ADA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  JUMPOUT(0x29714ADACLL);
}

void AntennaModule::setPreference_sync<unsigned int>(uint64_t a1, char *a2, unsigned int a3)
{
  v27 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18B7520)
  {
    v7 = operator new(0x18uLL);
    MEMORY[0x29C26B190](v7, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    __p[0] = v7;
    v6 = operator new(0x20uLL);
    *v6 = &unk_2A1E26558;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v7;
    v8 = *(&xmmword_2A18B7520 + 1);
    *&xmmword_2A18B7520 = v7;
    *(&xmmword_2A18B7520 + 1) = v6;
    if (!v8)
    {
      *buf = v7;
      *&buf[8] = v6;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v6 = *(&xmmword_2A18B7520 + 1);
  v7 = xmmword_2A18B7520;
  *buf = xmmword_2A18B7520;
  if (*(&xmmword_2A18B7520 + 1))
  {
LABEL_8:
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v9 = a2[23];
  if (v9 >= 0)
  {
    v10 = a2[23];
  }

  else
  {
    v10 = *(a2 + 1);
  }

  v11 = v10 + 16;
  if (v10 + 16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 < 0x17)
  {
    v14 = &v24;
    v24 = 0;
    HIBYTE(v24) = v10 + 16;
    *__p = *"AntennaSetting::";
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = operator new(v12);
    __p[1] = (v10 + 16);
    v24 = v12 | 0x8000000000000000;
    __p[0] = v13;
    *v13 = *"AntennaSetting::";
    v14 = v13 + 2;
  }

  v15 = *a2;
  if (v9 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  memmove(v14, v16, v10);
LABEL_23:
  *(v14 + v10) = 0;
  if (v24 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  ctu::cf::MakeCFString::MakeCFString(&v25, v17);
  v18 = ctu::cf::plist_adapter::set<unsigned int>(v7, a3, v25, 1);
  MEMORY[0x29C26B130](&v25);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  v19 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    if (v18)
    {
      goto LABEL_32;
    }
  }

  else if (v18)
  {
    goto LABEL_32;
  }

  v20 = *(a1 + 104);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *__p = *"AntennaSetting::";
    v24 = 0x1000000000000000;
    if (a2[23] >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    *buf = 136315394;
    *&buf[4] = __p;
    *&buf[12] = 2080;
    *&buf[14] = v22;
    _os_log_error_impl(&dword_296FF7000, v20, OS_LOG_TYPE_ERROR, "Failed to set property with %s%s", buf, 0x16u);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_32:
  v21 = *MEMORY[0x29EDCA608];
}

void sub_29714B124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&__p);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  _Unwind_Resume(a1);
}

void AntennaModule::initializeProperty(AntennaModule *this)
{
  for (i = *(this + 14); i; i = *i)
  {
    memset(&v13, 170, sizeof(v13));
    if (*(i + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, i[1], i[2]);
      v11 = this;
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_8:
        std::string::__init_copy_ctor_external(&__p, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
        goto LABEL_9;
      }
    }

    else
    {
      v3 = *(i + 1);
      v13.__r_.__value_.__r.__words[2] = i[3];
      *&v13.__r_.__value_.__l.__data_ = v3;
      v11 = this;
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_8;
      }
    }

    __p = v13;
LABEL_9:
    v4 = *(this + 10);
    if (!v4 || (v5 = *(this + 9), (v6 = std::__shared_weak_count::lock(v4)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v7 = v6;
    v8 = operator new(0x20uLL);
    *v8 = v11;
    *(v8 + 8) = __p;
    memset(&__p, 0, sizeof(__p));
    v9 = *(this + 11);
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = operator new(0x18uLL);
    *v10 = v8;
    v10[1] = v5;
    v10[2] = v7;
    dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::initializeProperty(void)::$_0>(AntennaModule::initializeProperty(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::initializeProperty(void)::$_0,dispatch_queue_s *::default_delete<AntennaModule::initializeProperty(void)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_13:
        if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_17;
        }

        continue;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_17:
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29714B380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AntennaModule::initializeProperty_sync(uint64_t a1, uint64_t a2)
{
  v351[0] = xpc_null_create();
  v4 = *MEMORY[0x29EDBEFD0];
  v5 = strlen(*MEMORY[0x29EDBEFD0]);
  v6 = v5;
  v7 = *(a2 + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    if (v5 == -1)
    {
      goto LABEL_685;
    }

    v9 = *a2;
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = *(a2 + 23);
    v9 = a2;
    if (v6 == -1)
    {
LABEL_685:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v8 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  v11 = !memcmp(v9, v4, v10) && v8 == v6;
  v12 = MEMORY[0x29EDCAA00];
  if (v11)
  {
    v348 = 0;
    v349 = 0;
    v350 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    if (!xmmword_2A18B7520)
    {
      v19 = operator new(0x18uLL);
      MEMORY[0x29C26B190](v19, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
      *&v347[0] = v19;
      v18 = operator new(0x20uLL);
      *v18 = &unk_2A1E26558;
      v18[1] = 0;
      v18[2] = 0;
      v18[3] = v19;
      v29 = *(&xmmword_2A18B7520 + 1);
      *&xmmword_2A18B7520 = v19;
      *(&xmmword_2A18B7520 + 1) = v18;
      if (!v29)
      {
        *&__p = v19;
        *(&__p + 1) = v18;
        goto LABEL_61;
      }

      if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
      }
    }

    v18 = *(&xmmword_2A18B7520 + 1);
    v19 = xmmword_2A18B7520;
    __p = xmmword_2A18B7520;
    if (!*(&xmmword_2A18B7520 + 1))
    {
LABEL_62:
      pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
      v39 = *(a2 + 23);
      if (v39 >= 0)
      {
        v40 = *(a2 + 23);
      }

      else
      {
        v40 = *(a2 + 8);
      }

      v41 = v40 + 16;
      if (v40 + 16 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v41 < 0x17)
      {
        v44 = &v347[1];
        *&v347[1] = 0;
        BYTE7(v347[1]) = v40 + 16;
        v347[0] = *"AntennaSetting::";
        if (!v40)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if ((v41 | 7) == 0x17)
        {
          v42 = 25;
        }

        else
        {
          v42 = (v41 | 7) + 1;
        }

        v43 = operator new(v42);
        *(&v347[0] + 1) = v40 + 16;
        *&v347[1] = v42 | 0x8000000000000000;
        *&v347[0] = v43;
        *v43 = *"AntennaSetting::";
        v44 = v43 + 1;
      }

      v45 = *a2;
      if (v39 >= 0)
      {
        v46 = a2;
      }

      else
      {
        v46 = *a2;
      }

      memmove(v44, v46, v40);
LABEL_76:
      *(v44 + v40) = 0;
      if ((SBYTE7(v347[1]) & 0x80u) == 0)
      {
        v47 = v347;
      }

      else
      {
        v47 = *&v347[0];
      }

      ctu::cf::MakeCFString::MakeCFString(&value, v47);
      v48 = (**v19)(v19, value);
      if (v48)
      {
        v49 = ctu::cf::assign();
        CFRelease(v48);
        MEMORY[0x29C26B130](&value);
        if ((SBYTE7(v347[1]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v49 = 0;
        MEMORY[0x29C26B130](&value);
        if ((SBYTE7(v347[1]) & 0x80000000) == 0)
        {
LABEL_81:
          v50 = *(&__p + 1);
          if (!*(&__p + 1))
          {
            goto LABEL_86;
          }

          goto LABEL_85;
        }
      }

      operator delete(*&v347[0]);
      v50 = *(&__p + 1);
      if (!*(&__p + 1))
      {
        goto LABEL_86;
      }

LABEL_85:
      if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v50->__on_zero_shared)(v50);
        std::__shared_weak_count::__release_weak(v50);
        if (!v49)
        {
          goto LABEL_569;
        }

LABEL_87:
        v51 = xpc_dictionary_create(0, 0, 0);
        if (v51 || (v51 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C26CE60](v51) == v12)
          {
            xpc_retain(v51);
            v52 = v51;
          }

          else
          {
            v52 = xpc_null_create();
          }
        }

        else
        {
          v52 = xpc_null_create();
          v51 = 0;
        }

        xpc_release(v51);
        v76 = xpc_null_create();
        v77 = v351[0];
        v351[0] = v52;
        xpc_release(v77);
        xpc_release(v76);
        v78 = xpc_string_create(v4);
        if (!v78)
        {
          v78 = xpc_null_create();
        }

        xpc_dictionary_set_value(v351[0], *MEMORY[0x29EDBED18], v78);
        v79 = xpc_null_create();
        xpc_release(v78);
        xpc_release(v79);
        v80 = xpc_dictionary_create(0, 0, 0);
        if (v80 || (v80 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C26CE60](v80) == v12)
          {
            xpc_retain(v80);
            v81 = v80;
          }

          else
          {
            v81 = xpc_null_create();
          }
        }

        else
        {
          v81 = xpc_null_create();
          v80 = 0;
        }

        xpc_release(v80);
        if (v350 >= 0)
        {
          v82 = &v348;
        }

        else
        {
          v82 = v348;
        }

        v83 = xpc_string_create(v82);
        if (!v83)
        {
          v83 = xpc_null_create();
        }

        xpc_dictionary_set_value(v81, *MEMORY[0x29EDBF838], v83);
        v84 = xpc_null_create();
        xpc_release(v83);
        xpc_release(v84);
        if (v81)
        {
LABEL_476:
          xpc_retain(v81);
          v232 = v81;
LABEL_478:
          xpc_dictionary_set_value(v351[0], *MEMORY[0x29EDBEA98], v232);
          v233 = xpc_null_create();
          xpc_release(v232);
          xpc_release(v233);
          xpc_release(v81);
          goto LABEL_569;
        }

LABEL_477:
        v232 = xpc_null_create();
        goto LABEL_478;
      }

LABEL_86:
      if (!v49)
      {
        goto LABEL_569;
      }

      goto LABEL_87;
    }

LABEL_61:
    atomic_fetch_add_explicit(v18 + 1, 1uLL, memory_order_relaxed);
    goto LABEL_62;
  }

  v13 = *MEMORY[0x29EDBE978];
  v14 = strlen(*MEMORY[0x29EDBE978]);
  v15 = v14;
  if ((v7 & 0x80000000) != 0)
  {
    if (v14 == -1)
    {
      goto LABEL_686;
    }

    v17 = *a2;
    v16 = *(a2 + 8);
  }

  else
  {
    v16 = v7;
    v17 = a2;
    if (v15 == -1)
    {
LABEL_686:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v16 >= v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = v16;
  }

  if (!memcmp(v17, v13, v20) && v16 == v15)
  {
    v348 = 0;
    v349 = 0;
    v350 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    if (!xmmword_2A18B7520)
    {
      v28 = operator new(0x18uLL);
      MEMORY[0x29C26B190](v28, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
      *&v347[0] = v28;
      v27 = operator new(0x20uLL);
      *v27 = &unk_2A1E26558;
      v27[1] = 0;
      v27[2] = 0;
      v27[3] = v28;
      v38 = *(&xmmword_2A18B7520 + 1);
      *&xmmword_2A18B7520 = v28;
      *(&xmmword_2A18B7520 + 1) = v27;
      if (!v38)
      {
        *&__p = v28;
        *(&__p + 1) = v27;
        goto LABEL_114;
      }

      if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v38->__on_zero_shared)(v38);
        std::__shared_weak_count::__release_weak(v38);
      }
    }

    v27 = *(&xmmword_2A18B7520 + 1);
    v28 = xmmword_2A18B7520;
    __p = xmmword_2A18B7520;
    if (!*(&xmmword_2A18B7520 + 1))
    {
LABEL_115:
      pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
      v62 = *(a2 + 23);
      if (v62 >= 0)
      {
        v63 = *(a2 + 23);
      }

      else
      {
        v63 = *(a2 + 8);
      }

      v64 = v63 + 16;
      if (v63 + 16 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v64 < 0x17)
      {
        v67 = &v347[1];
        *&v347[1] = 0;
        BYTE7(v347[1]) = v63 + 16;
        v347[0] = *"AntennaSetting::";
        if (!v63)
        {
          goto LABEL_129;
        }
      }

      else
      {
        if ((v64 | 7) == 0x17)
        {
          v65 = 25;
        }

        else
        {
          v65 = (v64 | 7) + 1;
        }

        v66 = operator new(v65);
        *(&v347[0] + 1) = v63 + 16;
        *&v347[1] = v65 | 0x8000000000000000;
        *&v347[0] = v66;
        *v66 = *"AntennaSetting::";
        v67 = v66 + 1;
      }

      v68 = *a2;
      if (v62 >= 0)
      {
        v69 = a2;
      }

      else
      {
        v69 = *a2;
      }

      memmove(v67, v69, v63);
LABEL_129:
      *(v67 + v63) = 0;
      if ((SBYTE7(v347[1]) & 0x80u) == 0)
      {
        v70 = v347;
      }

      else
      {
        v70 = *&v347[0];
      }

      ctu::cf::MakeCFString::MakeCFString(&value, v70);
      v71 = (**v28)(v28, value);
      if (v71)
      {
        v72 = ctu::cf::assign();
        CFRelease(v71);
        MEMORY[0x29C26B130](&value);
        if ((SBYTE7(v347[1]) & 0x80000000) == 0)
        {
          goto LABEL_134;
        }
      }

      else
      {
        v72 = 0;
        MEMORY[0x29C26B130](&value);
        if ((SBYTE7(v347[1]) & 0x80000000) == 0)
        {
LABEL_134:
          v73 = *(&__p + 1);
          if (!*(&__p + 1))
          {
            goto LABEL_139;
          }

          goto LABEL_138;
        }
      }

      operator delete(*&v347[0]);
      v73 = *(&__p + 1);
      if (!*(&__p + 1))
      {
        goto LABEL_139;
      }

LABEL_138:
      if (!atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v73->__on_zero_shared)(v73);
        std::__shared_weak_count::__release_weak(v73);
        if (!v72)
        {
          goto LABEL_569;
        }

LABEL_140:
        v74 = xpc_dictionary_create(0, 0, 0);
        if (v74 || (v74 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C26CE60](v74) == v12)
          {
            xpc_retain(v74);
            v75 = v74;
          }

          else
          {
            v75 = xpc_null_create();
          }
        }

        else
        {
          v75 = xpc_null_create();
          v74 = 0;
        }

        xpc_release(v74);
        v108 = xpc_null_create();
        v109 = v351[0];
        v351[0] = v75;
        xpc_release(v109);
        xpc_release(v108);
        v110 = xpc_string_create(v13);
        if (!v110)
        {
          v110 = xpc_null_create();
        }

        xpc_dictionary_set_value(v351[0], *MEMORY[0x29EDBED18], v110);
        v111 = xpc_null_create();
        xpc_release(v110);
        xpc_release(v111);
        if (v350 >= 0)
        {
          v112 = &v348;
        }

        else
        {
          v112 = v348;
        }

        v113 = xpc_string_create(v112);
        if (!v113)
        {
          v113 = xpc_null_create();
        }

        xpc_dictionary_set_value(v351[0], *MEMORY[0x29EDBEA98], v113);
        v114 = xpc_null_create();
        xpc_release(v113);
        xpc_release(v114);
        goto LABEL_569;
      }

LABEL_139:
      if (!v72)
      {
        goto LABEL_569;
      }

      goto LABEL_140;
    }

LABEL_114:
    atomic_fetch_add_explicit(v27 + 1, 1uLL, memory_order_relaxed);
    goto LABEL_115;
  }

  v22 = *MEMORY[0x29EDBEBA0];
  v23 = strlen(*MEMORY[0x29EDBEBA0]);
  v24 = v23;
  if ((v7 & 0x80000000) == 0)
  {
    v25 = v7;
    if (v23 != -1)
    {
      if (v7 >= v23)
      {
        v26 = v23;
      }

      else
      {
        v26 = v7;
      }

      if (memcmp(a2, v22, v26))
      {
        goto LABEL_50;
      }

LABEL_46:
      if (v25 != v24)
      {
        goto LABEL_50;
      }

      v348 = 0;
      v349 = 0;
      v350 = 0;
      pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
      if (!xmmword_2A18B7520)
      {
        v32 = operator new(0x18uLL);
        MEMORY[0x29C26B190](v32, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
        *&v347[0] = v32;
        v31 = operator new(0x20uLL);
        *v31 = &unk_2A1E26558;
        v31[1] = 0;
        v31[2] = 0;
        v31[3] = v32;
        v61 = *(&xmmword_2A18B7520 + 1);
        *&xmmword_2A18B7520 = v32;
        *(&xmmword_2A18B7520 + 1) = v31;
        if (!v61)
        {
          *&__p = v32;
          *(&__p + 1) = v31;
          goto LABEL_179;
        }

        if (!atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v61->__on_zero_shared)(v61);
          std::__shared_weak_count::__release_weak(v61);
        }
      }

      v31 = *(&xmmword_2A18B7520 + 1);
      v32 = xmmword_2A18B7520;
      __p = xmmword_2A18B7520;
      if (!*(&xmmword_2A18B7520 + 1))
      {
LABEL_180:
        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v94 = *(a2 + 23);
        if (v94 >= 0)
        {
          v95 = *(a2 + 23);
        }

        else
        {
          v95 = *(a2 + 8);
        }

        v96 = v95 + 16;
        if (v95 + 16 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v96 < 0x17)
        {
          v99 = &v347[1];
          *&v347[1] = 0;
          BYTE7(v347[1]) = v95 + 16;
          v347[0] = *"AntennaSetting::";
          if (!v95)
          {
            goto LABEL_194;
          }
        }

        else
        {
          if ((v96 | 7) == 0x17)
          {
            v97 = 25;
          }

          else
          {
            v97 = (v96 | 7) + 1;
          }

          v98 = operator new(v97);
          *(&v347[0] + 1) = v95 + 16;
          *&v347[1] = v97 | 0x8000000000000000;
          *&v347[0] = v98;
          *v98 = *"AntennaSetting::";
          v99 = v98 + 1;
        }

        v100 = *a2;
        if (v94 >= 0)
        {
          v101 = a2;
        }

        else
        {
          v101 = *a2;
        }

        memmove(v99, v101, v95);
LABEL_194:
        *(v99 + v95) = 0;
        if ((SBYTE7(v347[1]) & 0x80u) == 0)
        {
          v102 = v347;
        }

        else
        {
          v102 = *&v347[0];
        }

        ctu::cf::MakeCFString::MakeCFString(&value, v102);
        v103 = (**v32)(v32, value);
        if (v103)
        {
          v104 = ctu::cf::assign();
          CFRelease(v103);
          MEMORY[0x29C26B130](&value);
          if ((SBYTE7(v347[1]) & 0x80000000) == 0)
          {
            goto LABEL_199;
          }
        }

        else
        {
          v104 = 0;
          MEMORY[0x29C26B130](&value);
          if ((SBYTE7(v347[1]) & 0x80000000) == 0)
          {
LABEL_199:
            v105 = *(&__p + 1);
            if (!*(&__p + 1))
            {
              goto LABEL_205;
            }

            goto LABEL_203;
          }
        }

        operator delete(*&v347[0]);
        v105 = *(&__p + 1);
        if (!*(&__p + 1))
        {
          goto LABEL_205;
        }

LABEL_203:
        if (!atomic_fetch_add(&v105->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v105->__on_zero_shared)(v105);
          std::__shared_weak_count::__release_weak(v105);
        }

LABEL_205:
        if (!v104)
        {
          goto LABEL_569;
        }

        v106 = xpc_dictionary_create(0, 0, 0);
        if (v106 || (v106 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C26CE60](v106) == v12)
          {
            xpc_retain(v106);
            v107 = v106;
          }

          else
          {
            v107 = xpc_null_create();
          }
        }

        else
        {
          v107 = xpc_null_create();
          v106 = 0;
        }

        xpc_release(v106);
        v137 = xpc_null_create();
        v138 = v351[0];
        v351[0] = v107;
        xpc_release(v138);
        xpc_release(v137);
        v139 = xpc_string_create(v22);
        if (!v139)
        {
          v139 = xpc_null_create();
        }

        xpc_dictionary_set_value(v351[0], *MEMORY[0x29EDBED18], v139);
        v140 = xpc_null_create();
        xpc_release(v139);
        xpc_release(v140);
        v141 = xpc_dictionary_create(0, 0, 0);
        if (v141 || (v141 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C26CE60](v141) == v12)
          {
            xpc_retain(v141);
            v81 = v141;
          }

          else
          {
            v81 = xpc_null_create();
          }
        }

        else
        {
          v81 = xpc_null_create();
          v141 = 0;
        }

        xpc_release(v141);
        if (v350 >= 0)
        {
          v142 = &v348;
        }

        else
        {
          v142 = v348;
        }

        v143 = xpc_string_create(v142);
        if (!v143)
        {
          v143 = xpc_null_create();
        }

        xpc_dictionary_set_value(v81, *MEMORY[0x29EDBF670], v143);
        v144 = xpc_null_create();
        xpc_release(v143);
        xpc_release(v144);
        if (v81)
        {
          goto LABEL_476;
        }

        goto LABEL_477;
      }

LABEL_179:
      atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
      goto LABEL_180;
    }

LABEL_688:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v23 == -1)
  {
    goto LABEL_688;
  }

  v25 = *(a2 + 8);
  if (v25 >= v23)
  {
    v30 = v23;
  }

  else
  {
    v30 = *(a2 + 8);
  }

  if (!memcmp(*a2, v22, v30))
  {
    goto LABEL_46;
  }

LABEL_50:
  v33 = *MEMORY[0x29EDBED08];
  v34 = strlen(*MEMORY[0x29EDBED08]);
  v35 = v34;
  if ((v7 & 0x80000000) == 0)
  {
    v36 = v7;
    if (v34 != -1)
    {
      if (v7 >= v34)
      {
        v37 = v34;
      }

      else
      {
        v37 = v7;
      }

      if (memcmp(a2, v33, v37))
      {
        goto LABEL_103;
      }

LABEL_99:
      if (v36 != v35)
      {
        goto LABEL_103;
      }

      v348 = 0;
      v349 = 0;
      v350 = 0;
      pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
      if (!xmmword_2A18B7520)
      {
        v55 = operator new(0x18uLL);
        MEMORY[0x29C26B190](v55, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
        *&v347[0] = v55;
        v54 = operator new(0x20uLL);
        *v54 = &unk_2A1E26558;
        v54[1] = 0;
        v54[2] = 0;
        v54[3] = v55;
        v93 = *(&xmmword_2A18B7520 + 1);
        *&xmmword_2A18B7520 = v55;
        *(&xmmword_2A18B7520 + 1) = v54;
        if (!v93)
        {
          *&__p = v55;
          *(&__p + 1) = v54;
          goto LABEL_238;
        }

        if (!atomic_fetch_add(&v93->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v93->__on_zero_shared)(v93);
          std::__shared_weak_count::__release_weak(v93);
        }
      }

      v54 = *(&xmmword_2A18B7520 + 1);
      v55 = xmmword_2A18B7520;
      __p = xmmword_2A18B7520;
      if (!*(&xmmword_2A18B7520 + 1))
      {
LABEL_239:
        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v123 = *(a2 + 23);
        if (v123 >= 0)
        {
          v124 = *(a2 + 23);
        }

        else
        {
          v124 = *(a2 + 8);
        }

        v125 = v124 + 16;
        if (v124 + 16 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v125 < 0x17)
        {
          v128 = &v347[1];
          *&v347[1] = 0;
          BYTE7(v347[1]) = v124 + 16;
          v347[0] = *"AntennaSetting::";
          if (!v124)
          {
            goto LABEL_253;
          }
        }

        else
        {
          if ((v125 | 7) == 0x17)
          {
            v126 = 25;
          }

          else
          {
            v126 = (v125 | 7) + 1;
          }

          v127 = operator new(v126);
          *(&v347[0] + 1) = v124 + 16;
          *&v347[1] = v126 | 0x8000000000000000;
          *&v347[0] = v127;
          *v127 = *"AntennaSetting::";
          v128 = v127 + 1;
        }

        v129 = *a2;
        if (v123 >= 0)
        {
          v130 = a2;
        }

        else
        {
          v130 = *a2;
        }

        memmove(v128, v130, v124);
LABEL_253:
        *(v128 + v124) = 0;
        if ((SBYTE7(v347[1]) & 0x80u) == 0)
        {
          v131 = v347;
        }

        else
        {
          v131 = *&v347[0];
        }

        ctu::cf::MakeCFString::MakeCFString(&value, v131);
        v132 = (**v55)(v55, value);
        if (v132)
        {
          v133 = ctu::cf::assign();
          CFRelease(v132);
          MEMORY[0x29C26B130](&value);
          if ((SBYTE7(v347[1]) & 0x80000000) == 0)
          {
            goto LABEL_258;
          }
        }

        else
        {
          v133 = 0;
          MEMORY[0x29C26B130](&value);
          if ((SBYTE7(v347[1]) & 0x80000000) == 0)
          {
LABEL_258:
            v134 = *(&__p + 1);
            if (!*(&__p + 1))
            {
              goto LABEL_264;
            }

            goto LABEL_262;
          }
        }

        operator delete(*&v347[0]);
        v134 = *(&__p + 1);
        if (!*(&__p + 1))
        {
          goto LABEL_264;
        }

LABEL_262:
        if (!atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v134->__on_zero_shared)(v134);
          std::__shared_weak_count::__release_weak(v134);
        }

LABEL_264:
        if (!v133)
        {
          goto LABEL_569;
        }

        v135 = xpc_dictionary_create(0, 0, 0);
        if (v135 || (v135 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C26CE60](v135) == v12)
          {
            xpc_retain(v135);
            v136 = v135;
          }

          else
          {
            v136 = xpc_null_create();
          }
        }

        else
        {
          v136 = xpc_null_create();
          v135 = 0;
        }

        xpc_release(v135);
        v171 = xpc_null_create();
        v172 = v351[0];
        v351[0] = v136;
        xpc_release(v172);
        xpc_release(v171);
        v173 = xpc_string_create(v33);
        if (!v173)
        {
          v173 = xpc_null_create();
        }

        xpc_dictionary_set_value(v351[0], *MEMORY[0x29EDBED18], v173);
        v174 = xpc_null_create();
        xpc_release(v173);
        xpc_release(v174);
        v175 = xpc_dictionary_create(0, 0, 0);
        if (v175 || (v175 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C26CE60](v175) == v12)
          {
            xpc_retain(v175);
            v81 = v175;
          }

          else
          {
            v81 = xpc_null_create();
          }
        }

        else
        {
          v81 = xpc_null_create();
          v175 = 0;
        }

        xpc_release(v175);
        if (v350 >= 0)
        {
          v176 = &v348;
        }

        else
        {
          v176 = v348;
        }

        v177 = xpc_string_create(v176);
        if (!v177)
        {
          v177 = xpc_null_create();
        }

        xpc_dictionary_set_value(v81, *MEMORY[0x29EDBF6E8], v177);
        v178 = xpc_null_create();
        xpc_release(v177);
        xpc_release(v178);
        if (v81)
        {
          goto LABEL_476;
        }

        goto LABEL_477;
      }

LABEL_238:
      atomic_fetch_add_explicit(v54 + 1, 1uLL, memory_order_relaxed);
      goto LABEL_239;
    }

LABEL_690:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v34 == -1)
  {
    goto LABEL_690;
  }

  v36 = *(a2 + 8);
  if (v36 >= v34)
  {
    v53 = v34;
  }

  else
  {
    v53 = *(a2 + 8);
  }

  if (!memcmp(*a2, v33, v53))
  {
    goto LABEL_99;
  }

LABEL_103:
  v56 = *MEMORY[0x29EDBF530];
  v57 = strlen(*MEMORY[0x29EDBF530]);
  v58 = v57;
  if ((v7 & 0x80000000) == 0)
  {
    v59 = v7;
    if (v57 != -1)
    {
      if (v7 >= v57)
      {
        v60 = v57;
      }

      else
      {
        v60 = v7;
      }

      if (memcmp(a2, v56, v60))
      {
        goto LABEL_172;
      }

LABEL_168:
      if (v59 != v58)
      {
        goto LABEL_172;
      }

      v348 = 0;
      v349 = 0;
      v350 = 0;
      pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
      if (!xmmword_2A18B7520)
      {
        v87 = operator new(0x18uLL);
        MEMORY[0x29C26B190](v87, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
        *&v347[0] = v87;
        v86 = operator new(0x20uLL);
        *v86 = &unk_2A1E26558;
        v86[1] = 0;
        v86[2] = 0;
        v86[3] = v87;
        v122 = *(&xmmword_2A18B7520 + 1);
        *&xmmword_2A18B7520 = v87;
        *(&xmmword_2A18B7520 + 1) = v86;
        if (!v122)
        {
          *&__p = v87;
          *(&__p + 1) = v86;
          goto LABEL_311;
        }

        if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v122->__on_zero_shared)(v122);
          std::__shared_weak_count::__release_weak(v122);
        }
      }

      v86 = *(&xmmword_2A18B7520 + 1);
      v87 = xmmword_2A18B7520;
      __p = xmmword_2A18B7520;
      if (!*(&xmmword_2A18B7520 + 1))
      {
LABEL_312:
        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v158 = *(a2 + 23);
        if (v158 >= 0)
        {
          v159 = *(a2 + 23);
        }

        else
        {
          v159 = *(a2 + 8);
        }

        v160 = v159 + 16;
        if (v159 + 16 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v160 < 0x17)
        {
          v163 = &v347[1];
          *&v347[1] = 0;
          BYTE7(v347[1]) = v159 + 16;
          v347[0] = *"AntennaSetting::";
          if (!v159)
          {
            goto LABEL_326;
          }
        }

        else
        {
          if ((v160 | 7) == 0x17)
          {
            v161 = 25;
          }

          else
          {
            v161 = (v160 | 7) + 1;
          }

          v162 = operator new(v161);
          *(&v347[0] + 1) = v159 + 16;
          *&v347[1] = v161 | 0x8000000000000000;
          *&v347[0] = v162;
          *v162 = *"AntennaSetting::";
          v163 = v162 + 1;
        }

        v164 = *a2;
        if (v158 >= 0)
        {
          v165 = a2;
        }

        else
        {
          v165 = *a2;
        }

        memmove(v163, v165, v159);
LABEL_326:
        *(v163 + v159) = 0;
        if ((SBYTE7(v347[1]) & 0x80u) == 0)
        {
          v166 = v347;
        }

        else
        {
          v166 = *&v347[0];
        }

        ctu::cf::MakeCFString::MakeCFString(&value, v166);
        v167 = (**v87)(v87, value);
        if (v167)
        {
          v168 = ctu::cf::assign();
          CFRelease(v167);
        }

        else
        {
          v168 = 0;
        }

        MEMORY[0x29C26B130](&value);
        if (SBYTE7(v347[1]) < 0)
        {
          operator delete(*&v347[0]);
        }

        if (*(&__p + 1) && !atomic_fetch_add((*(&__p + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(**(&__p + 1) + 16))(*(&__p + 1));
          std::__shared_weak_count::__release_weak(*(&__p + 1));
        }

        if (!v168)
        {
          goto LABEL_569;
        }

        v169 = xpc_dictionary_create(0, 0, 0);
        if (v169 || (v169 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C26CE60](v169) == v12)
          {
            xpc_retain(v169);
            v170 = v169;
          }

          else
          {
            v170 = xpc_null_create();
          }
        }

        else
        {
          v170 = xpc_null_create();
          v169 = 0;
        }

        xpc_release(v169);
        v224 = xpc_null_create();
        v225 = v351[0];
        v351[0] = v170;
        xpc_release(v225);
        xpc_release(v224);
        v226 = xpc_string_create(v56);
        if (!v226)
        {
          v226 = xpc_null_create();
        }

        xpc_dictionary_set_value(v351[0], *MEMORY[0x29EDBED18], v226);
        v227 = xpc_null_create();
        xpc_release(v226);
        xpc_release(v227);
        v228 = xpc_dictionary_create(0, 0, 0);
        if (v228 || (v228 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C26CE60](v228) == v12)
          {
            xpc_retain(v228);
            v81 = v228;
          }

          else
          {
            v81 = xpc_null_create();
          }
        }

        else
        {
          v81 = xpc_null_create();
          v228 = 0;
        }

        xpc_release(v228);
        if (v350 >= 0)
        {
          v229 = &v348;
        }

        else
        {
          v229 = v348;
        }

        v230 = xpc_string_create(v229);
        if (!v230)
        {
          v230 = xpc_null_create();
        }

        xpc_dictionary_set_value(v81, *MEMORY[0x29EDBF818], v230);
        v231 = xpc_null_create();
        xpc_release(v230);
        xpc_release(v231);
        if (v81)
        {
          goto LABEL_476;
        }

        goto LABEL_477;
      }

LABEL_311:
      atomic_fetch_add_explicit(v86 + 1, 1uLL, memory_order_relaxed);
      goto LABEL_312;
    }

LABEL_692:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v57 == -1)
  {
    goto LABEL_692;
  }

  v59 = *(a2 + 8);
  if (v59 >= v57)
  {
    v85 = v57;
  }

  else
  {
    v85 = *(a2 + 8);
  }

  if (!memcmp(*a2, v56, v85))
  {
    goto LABEL_168;
  }

LABEL_172:
  v88 = *MEMORY[0x29EDBF558];
  v89 = strlen(*MEMORY[0x29EDBF558]);
  v90 = v89;
  if ((v7 & 0x80000000) != 0)
  {
    if (v89 == -1)
    {
      goto LABEL_694;
    }

    v92 = *a2;
    v91 = *(a2 + 8);
  }

  else
  {
    v91 = v7;
    v92 = a2;
    if (v90 == -1)
    {
LABEL_694:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v91 >= v90)
  {
    v115 = v90;
  }

  else
  {
    v115 = v91;
  }

  if (!memcmp(v92, v88, v115) && v91 == v90)
  {
    v116 = xpc_dictionary_create(0, 0, 0);
    if (v116 || (v116 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26CE60](v116) == v12)
      {
        xpc_retain(v116);
        v117 = v116;
      }

      else
      {
        v117 = xpc_null_create();
      }
    }

    else
    {
      v117 = xpc_null_create();
      v116 = 0;
    }

    xpc_release(v116);
    v194 = xpc_null_create();
    v195 = v351[0];
    v351[0] = v117;
    xpc_release(v195);
    xpc_release(v194);
    v348 = 0;
    v349 = 0;
    v350 = 0;
    v196 = xpc_string_create(v88);
    if (!v196)
    {
      v196 = xpc_null_create();
    }

    xpc_dictionary_set_value(v351[0], *MEMORY[0x29EDBED18], v196);
    v197 = xpc_null_create();
    xpc_release(v196);
    xpc_release(v197);
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v198 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(v347);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
      v198 = xmmword_2A18B7520;
    }

    v199 = *(&xmmword_2A18B7520 + 1);
    *&__p = v198;
    *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v200 = *MEMORY[0x29EDBE720];
    v201 = strlen(*MEMORY[0x29EDBE720]);
    v202 = v201 + 16;
    if (v201 + 16 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v203 = v201;
    if (v202 < 0x17)
    {
      v206 = &v347[1];
      *&v347[1] = 0;
      BYTE7(v347[1]) = v201 + 16;
      v347[0] = *"AntennaSetting::";
      if (!v201)
      {
        goto LABEL_413;
      }
    }

    else
    {
      if ((v202 | 7) == 0x17)
      {
        v204 = 25;
      }

      else
      {
        v204 = (v202 | 7) + 1;
      }

      v205 = operator new(v204);
      *(&v347[0] + 1) = v202;
      *&v347[1] = v204 | 0x8000000000000000;
      *&v347[0] = v205;
      *v205 = *"AntennaSetting::";
      v206 = v205 + 1;
    }

    memmove(v206, v200, v203);
LABEL_413:
    *(v206 + v203) = 0;
    if ((SBYTE7(v347[1]) & 0x80u) == 0)
    {
      v207 = v347;
    }

    else
    {
      v207 = *&v347[0];
    }

    ctu::cf::MakeCFString::MakeCFString(&value, v207);
    v208 = (**v198)(v198, value);
    if (v208)
    {
      v209 = ctu::cf::assign();
      CFRelease(v208);
    }

    else
    {
      v209 = 0;
    }

    MEMORY[0x29C26B130](&value);
    if (SBYTE7(v347[1]) < 0)
    {
      operator delete(*&v347[0]);
    }

    if (v199 && !atomic_fetch_add(&v199->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v199->__on_zero_shared)(v199);
      std::__shared_weak_count::__release_weak(v199);
    }

    if (v209)
    {
      if (v350 >= 0)
      {
        v210 = &v348;
      }

      else
      {
        v210 = v348;
      }

      v345 = xpc_string_create(v210);
      if (!v345)
      {
        v345 = xpc_null_create();
      }

      *&v347[0] = v351;
      *(&v347[0] + 1) = v200;
      xpc::dict::object_proxy::operator=(v347, &v345, &v346);
      xpc_release(v346);
      v346 = 0;
      xpc_release(v345);
      v345 = 0;
    }

    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v211 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(v347);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
      v211 = xmmword_2A18B7520;
    }

    v212 = *(&xmmword_2A18B7520 + 1);
    *&__p = v211;
    *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v213 = *MEMORY[0x29EDBE960];
    v214 = strlen(*MEMORY[0x29EDBE960]);
    v215 = v214 + 16;
    if (v214 + 16 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v216 = v214;
    if (v215 < 0x17)
    {
      v219 = &v347[1];
      *&v347[1] = 0;
      BYTE7(v347[1]) = v214 + 16;
      v347[0] = *"AntennaSetting::";
      if (!v214)
      {
LABEL_443:
        *(v219 + v216) = 0;
        if ((SBYTE7(v347[1]) & 0x80u) == 0)
        {
          v220 = v347;
        }

        else
        {
          v220 = *&v347[0];
        }

        ctu::cf::MakeCFString::MakeCFString(&value, v220);
        v221 = (**v211)(v211, value);
        if (v221)
        {
          v222 = ctu::cf::assign();
          CFRelease(v221);
        }

        else
        {
          v222 = 0;
        }

        MEMORY[0x29C26B130](&value);
        if (SBYTE7(v347[1]) < 0)
        {
          operator delete(*&v347[0]);
        }

        if (v212 && !atomic_fetch_add(&v212->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v212->__on_zero_shared)(v212);
          std::__shared_weak_count::__release_weak(v212);
        }

        if (v222)
        {
          if (v350 >= 0)
          {
            v223 = &v348;
          }

          else
          {
            v223 = v348;
          }

          v343 = xpc_string_create(v223);
          if (!v343)
          {
            v343 = xpc_null_create();
          }

          *&v347[0] = v351;
          *(&v347[0] + 1) = v213;
          xpc::dict::object_proxy::operator=(v347, &v343, &v344);
          xpc_release(v344);
          v344 = 0;
          xpc_release(v343);
          v343 = 0;
        }

        goto LABEL_569;
      }
    }

    else
    {
      if ((v215 | 7) == 0x17)
      {
        v217 = 25;
      }

      else
      {
        v217 = (v215 | 7) + 1;
      }

      v218 = operator new(v217);
      *(&v347[0] + 1) = v215;
      *&v347[1] = v217 | 0x8000000000000000;
      *&v347[0] = v218;
      *v218 = *"AntennaSetting::";
      v219 = v218 + 1;
    }

    memmove(v219, v213, v216);
    goto LABEL_443;
  }

  v118 = strlen(*MEMORY[0x29EDBECA0]);
  v119 = v118;
  if ((v7 & 0x80000000) != 0)
  {
    if (v118 == -1)
    {
      goto LABEL_696;
    }

    v121 = *a2;
    v120 = *(a2 + 8);
  }

  else
  {
    v120 = v7;
    v121 = a2;
    if (v119 == -1)
    {
LABEL_696:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v120 >= v119)
  {
    v145 = v119;
  }

  else
  {
    v145 = v120;
  }

  if (!memcmp(v121, *MEMORY[0x29EDBECA0], v145) && v120 == v119)
  {
    v348 = 0;
    v349 = 0;
    v350 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v146 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(v347);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
      v146 = xmmword_2A18B7520;
    }

    v147 = *(&xmmword_2A18B7520 + 1);
    *&__p = v146;
    *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v148 = *(a2 + 23);
    if (v148 >= 0)
    {
      v149 = *(a2 + 23);
    }

    else
    {
      v149 = *(a2 + 8);
    }

    v150 = v149 + 16;
    if (v149 + 16 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v150 < 0x17)
    {
      v153 = &v347[1];
      *&v347[1] = 0;
      BYTE7(v347[1]) = v149 + 16;
      v347[0] = *"AntennaSetting::";
      if (!v149)
      {
        goto LABEL_365;
      }
    }

    else
    {
      if ((v150 | 7) == 0x17)
      {
        v151 = 25;
      }

      else
      {
        v151 = (v150 | 7) + 1;
      }

      v152 = operator new(v151);
      *(&v347[0] + 1) = v149 + 16;
      *&v347[1] = v151 | 0x8000000000000000;
      *&v347[0] = v152;
      *v152 = *"AntennaSetting::";
      v153 = v152 + 1;
    }

    v179 = *a2;
    if (v148 >= 0)
    {
      v180 = a2;
    }

    else
    {
      v180 = *a2;
    }

    memmove(v153, v180, v149);
LABEL_365:
    *(v153 + v149) = 0;
    if ((SBYTE7(v347[1]) & 0x80u) == 0)
    {
      v181 = v347;
    }

    else
    {
      v181 = *&v347[0];
    }

    ctu::cf::MakeCFString::MakeCFString(&value, v181);
    v182 = (**v146)(v146, value);
    if (v182)
    {
      v183 = ctu::cf::assign();
      CFRelease(v182);
    }

    else
    {
      v183 = 0;
    }

    MEMORY[0x29C26B130](&value);
    if (SBYTE7(v347[1]) < 0)
    {
      operator delete(*&v347[0]);
    }

    if (v147 && !atomic_fetch_add(&v147->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v147->__on_zero_shared)(v147);
      std::__shared_weak_count::__release_weak(v147);
    }

    if (!v183)
    {
      goto LABEL_569;
    }

    v192 = xpc_dictionary_create(0, 0, 0);
    v193 = v192;
    if (v192)
    {
      *&v347[0] = v192;
    }

    else
    {
      v193 = xpc_null_create();
      *&v347[0] = v193;
      if (!v193)
      {
        v243 = xpc_null_create();
        v193 = 0;
        goto LABEL_524;
      }
    }

    if (MEMORY[0x29C26CE60](v193) == v12)
    {
      xpc_retain(v193);
LABEL_525:
      xpc_release(v193);
      xpc::dict::operator=(v351, v347);
      xpc_release(*&v347[0]);
      if (*(a2 + 23) >= 0)
      {
        v249 = a2;
      }

      else
      {
        v249 = *a2;
      }

      v341 = xpc_string_create(v249);
      if (!v341)
      {
        v341 = xpc_null_create();
      }

      v250 = *MEMORY[0x29EDBED18];
      *&v347[0] = v351;
      *(&v347[0] + 1) = v250;
      xpc::dict::object_proxy::operator=(v347, &v341, &v342);
      xpc_release(v342);
      v342 = 0;
      xpc_release(v341);
      v341 = 0;
      if (v350 >= 0)
      {
        v251 = &v348;
      }

      else
      {
        v251 = v348;
      }

      v339 = xpc_string_create(v251);
      if (!v339)
      {
        v339 = xpc_null_create();
      }

      v252 = *MEMORY[0x29EDBEA98];
      *&v347[0] = v351;
      *(&v347[0] + 1) = v252;
      xpc::dict::object_proxy::operator=(v347, &v339, &v340);
      xpc_release(v340);
      v340 = 0;
      xpc_release(v339);
      v339 = 0;
      goto LABEL_569;
    }

    v243 = xpc_null_create();
LABEL_524:
    *&v347[0] = v243;
    goto LABEL_525;
  }

  v154 = strlen(*MEMORY[0x29EDBF528]);
  v155 = v154;
  if ((v7 & 0x80000000) != 0)
  {
    if (v154 == -1)
    {
      goto LABEL_699;
    }

    v157 = *a2;
    v156 = *(a2 + 8);
  }

  else
  {
    v156 = v7;
    v157 = a2;
    if (v155 == -1)
    {
LABEL_699:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v156 >= v155)
  {
    v184 = v155;
  }

  else
  {
    v184 = v156;
  }

  if (!memcmp(v157, *MEMORY[0x29EDBF528], v184) && v156 == v155)
  {
    v348 = 0;
    v349 = 0;
    v350 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v185 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(v347);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
      v185 = xmmword_2A18B7520;
    }

    *&__p = v185;
    *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v347, "AntennaSetting::", a2);
    v186 = Preferences::getPreference<std::string>(__p, v347);
    if (SBYTE7(v347[1]) < 0)
    {
      operator delete(*&v347[0]);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
    if (!v186)
    {
      goto LABEL_569;
    }

    v187 = xpc_dictionary_create(0, 0, 0);
    v188 = v187;
    if (v187)
    {
      *&v347[0] = v187;
    }

    else
    {
      v188 = xpc_null_create();
      *&v347[0] = v188;
      if (!v188)
      {
        v248 = xpc_null_create();
        v188 = 0;
        goto LABEL_541;
      }
    }

    if (MEMORY[0x29C26CE60](v188) == v12)
    {
      xpc_retain(v188);
LABEL_542:
      xpc_release(v188);
      xpc::dict::operator=(v351, v347);
      xpc_release(*&v347[0]);
      if (*(a2 + 23) >= 0)
      {
        v254 = a2;
      }

      else
      {
        v254 = *a2;
      }

      v337 = xpc_string_create(v254);
      if (!v337)
      {
        v337 = xpc_null_create();
      }

      v255 = *MEMORY[0x29EDBED18];
      *&v347[0] = v351;
      *(&v347[0] + 1) = v255;
      xpc::dict::object_proxy::operator=(v347, &v337, &v338);
      xpc_release(v338);
      v338 = 0;
      xpc_release(v337);
      v337 = 0;
      if (v350 >= 0)
      {
        v256 = &v348;
      }

      else
      {
        v256 = v348;
      }

      v335 = xpc_string_create(v256);
      if (!v335)
      {
        v335 = xpc_null_create();
      }

      v257 = *MEMORY[0x29EDBEA98];
      *&v347[0] = v351;
      *(&v347[0] + 1) = v257;
      xpc::dict::object_proxy::operator=(v347, &v335, &v336);
      xpc_release(v336);
      v336 = 0;
      xpc_release(v335);
      v335 = 0;
      goto LABEL_569;
    }

    v248 = xpc_null_create();
LABEL_541:
    *&v347[0] = v248;
    goto LABEL_542;
  }

  v189 = strlen(*MEMORY[0x29EDBF510]);
  v190 = v189;
  if ((v7 & 0x80000000) != 0)
  {
    if (v189 == -1)
    {
      goto LABEL_701;
    }

    v191 = *a2;
    v7 = *(a2 + 8);
  }

  else
  {
    v191 = a2;
    if (v190 == -1)
    {
LABEL_701:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v7 >= v190)
  {
    v234 = v190;
  }

  else
  {
    v234 = v7;
  }

  if (!memcmp(v191, *MEMORY[0x29EDBF510], v234) && v7 == v190)
  {
    v348 = 0;
    v349 = 0;
    v350 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v235 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(v347);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
      v235 = xmmword_2A18B7520;
    }

    *&__p = v235;
    *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v347, "AntennaSetting::", a2);
    v236 = Preferences::getPreference<std::string>(__p, v347);
    if (SBYTE7(v347[1]) < 0)
    {
      operator delete(*&v347[0]);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
    if (!v236)
    {
      goto LABEL_569;
    }

    v237 = xpc_dictionary_create(0, 0, 0);
    v238 = v237;
    if (v237)
    {
      *&v347[0] = v237;
    }

    else
    {
      v238 = xpc_null_create();
      *&v347[0] = v238;
      if (!v238)
      {
        v253 = xpc_null_create();
        v238 = 0;
        goto LABEL_557;
      }
    }

    if (MEMORY[0x29C26CE60](v238) == v12)
    {
      xpc_retain(v238);
LABEL_558:
      xpc_release(v238);
      xpc::dict::operator=(v351, v347);
      xpc_release(*&v347[0]);
      if (*(a2 + 23) >= 0)
      {
        v259 = a2;
      }

      else
      {
        v259 = *a2;
      }

      v333 = xpc_string_create(v259);
      if (!v333)
      {
        v333 = xpc_null_create();
      }

      v260 = *MEMORY[0x29EDBED18];
      *&v347[0] = v351;
      *(&v347[0] + 1) = v260;
      xpc::dict::object_proxy::operator=(v347, &v333, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v333);
      v333 = 0;
      if (v350 >= 0)
      {
        v261 = &v348;
      }

      else
      {
        v261 = v348;
      }

      v331 = xpc_string_create(v261);
      if (!v331)
      {
        v331 = xpc_null_create();
      }

      v262 = *MEMORY[0x29EDBEA98];
      *&v347[0] = v351;
      *(&v347[0] + 1) = v262;
      xpc::dict::object_proxy::operator=(v347, &v331, &v332);
      xpc_release(v332);
      v332 = 0;
      xpc_release(v331);
      v331 = 0;
      goto LABEL_569;
    }

    v253 = xpc_null_create();
LABEL_557:
    *&v347[0] = v253;
    goto LABEL_558;
  }

  if (!std::string::compare(a2, *MEMORY[0x29EDBF5A8]))
  {
    v348 = 0;
    v349 = 0;
    v350 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v244 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(v347);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
      v244 = xmmword_2A18B7520;
    }

    *&__p = v244;
    *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v347, "AntennaSetting::", a2);
    v245 = Preferences::getPreference<std::string>(__p, v347);
    if (SBYTE7(v347[1]) < 0)
    {
      operator delete(*&v347[0]);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
    if (!v245)
    {
      goto LABEL_569;
    }

    v246 = xpc_dictionary_create(0, 0, 0);
    v247 = v246;
    if (v246)
    {
      *&v347[0] = v246;
    }

    else
    {
      v247 = xpc_null_create();
      *&v347[0] = v247;
      if (!v247)
      {
        v258 = xpc_null_create();
        v247 = 0;
        goto LABEL_581;
      }
    }

    if (MEMORY[0x29C26CE60](v247) == v12)
    {
      xpc_retain(v247);
LABEL_582:
      xpc_release(v247);
      xpc::dict::operator=(v351, v347);
      xpc_release(*&v347[0]);
      if (*(a2 + 23) >= 0)
      {
        v265 = a2;
      }

      else
      {
        v265 = *a2;
      }

      v329 = xpc_string_create(v265);
      if (!v329)
      {
        v329 = xpc_null_create();
      }

      v266 = *MEMORY[0x29EDBED18];
      *&v347[0] = v351;
      *(&v347[0] + 1) = v266;
      xpc::dict::object_proxy::operator=(v347, &v329, &v330);
      xpc_release(v330);
      v330 = 0;
      xpc_release(v329);
      v329 = 0;
      if (v350 >= 0)
      {
        v267 = &v348;
      }

      else
      {
        v267 = v348;
      }

      v327 = xpc_string_create(v267);
      if (!v327)
      {
        v327 = xpc_null_create();
      }

      v268 = *MEMORY[0x29EDBEA98];
      *&v347[0] = v351;
      *(&v347[0] + 1) = v268;
      xpc::dict::object_proxy::operator=(v347, &v327, &v328);
      xpc_release(v328);
      v328 = 0;
      xpc_release(v327);
      v327 = 0;
      if (v350 >= 0)
      {
        v269 = &v348;
      }

      else
      {
        v269 = v348;
      }

      v270 = strlen(*MEMORY[0x29EDBEFE0]);
      if (!strncasecmp(v269, *MEMORY[0x29EDBEFE0], v270))
      {
        LODWORD(value) = 0;
        pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v271 = xmmword_2A18B7520;
        if (!xmmword_2A18B7520)
        {
          ABMProperties::create_default_global(v347);
          std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
          std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
          v271 = xmmword_2A18B7520;
        }

        *&__p = v271;
        *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
        if (*(&xmmword_2A18B7520 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v272 = __p;
        v273 = *MEMORY[0x29EDBF820];
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v347, "AntennaSetting::", *MEMORY[0x29EDBF820]);
        Preferences::getPreference<unsigned int>(v272, v347, &value);
        if (SBYTE7(v347[1]) < 0)
        {
          operator delete(*&v347[0]);
        }

        std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
        v325 = xpc_int64_create(value);
        if (!v325)
        {
          v325 = xpc_null_create();
        }

        *&v347[0] = v351;
        *(&v347[0] + 1) = v273;
        xpc::dict::object_proxy::operator=(v347, &v325, &v326);
        xpc_release(v326);
        v326 = 0;
        xpc_release(v325);
        v325 = 0;
        pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v274 = xmmword_2A18B7520;
        if (!xmmword_2A18B7520)
        {
          ABMProperties::create_default_global(v347);
          std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
          std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
          v274 = xmmword_2A18B7520;
        }

        *&__p = v274;
        *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
        if (*(&xmmword_2A18B7520 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v275 = __p;
        v276 = *MEMORY[0x29EDBF7D8];
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v347, "AntennaSetting::", *MEMORY[0x29EDBF7D8]);
        Preferences::getPreference<unsigned int>(v275, v347, &value);
        if (SBYTE7(v347[1]) < 0)
        {
          operator delete(*&v347[0]);
        }

        std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
        v323 = xpc_int64_create(value);
        if (!v323)
        {
          v323 = xpc_null_create();
        }

        *&v347[0] = v351;
        *(&v347[0] + 1) = v276;
        xpc::dict::object_proxy::operator=(v347, &v323, &v324);
        xpc_release(v324);
        v324 = 0;
        xpc_release(v323);
        v323 = 0;
        pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v277 = xmmword_2A18B7520;
        if (!xmmword_2A18B7520)
        {
          ABMProperties::create_default_global(v347);
          std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
          std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
          v277 = xmmword_2A18B7520;
        }

        *&__p = v277;
        *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
        if (*(&xmmword_2A18B7520 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v278 = __p;
        v279 = *MEMORY[0x29EDBF610];
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v347, "AntennaSetting::", *MEMORY[0x29EDBF610]);
        Preferences::getPreference<unsigned int>(v278, v347, &value);
        if (SBYTE7(v347[1]) < 0)
        {
          operator delete(*&v347[0]);
        }

        std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
        v321 = xpc_int64_create(value);
        if (!v321)
        {
          v321 = xpc_null_create();
        }

        *&v347[0] = v351;
        *(&v347[0] + 1) = v279;
        xpc::dict::object_proxy::operator=(v347, &v321, &v322);
        xpc_release(v322);
        v322 = 0;
        xpc_release(v321);
        v321 = 0;
        pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v280 = xmmword_2A18B7520;
        if (!xmmword_2A18B7520)
        {
          ABMProperties::create_default_global(v347);
          std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
          std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
          v280 = xmmword_2A18B7520;
        }

        *&__p = v280;
        *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
        if (*(&xmmword_2A18B7520 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v281 = __p;
        v282 = *MEMORY[0x29EDBF608];
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v347, "AntennaSetting::", *MEMORY[0x29EDBF608]);
        Preferences::getPreference<unsigned int>(v281, v347, &value);
        if (SBYTE7(v347[1]) < 0)
        {
          operator delete(*&v347[0]);
        }

        std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
        v319 = xpc_int64_create(value);
        if (!v319)
        {
          v319 = xpc_null_create();
        }

        *&v347[0] = v351;
        *(&v347[0] + 1) = v282;
        xpc::dict::object_proxy::operator=(v347, &v319, &v320);
        xpc_release(v320);
        v320 = 0;
        xpc_release(v319);
        v319 = 0;
      }

      goto LABEL_569;
    }

    v258 = xpc_null_create();
LABEL_581:
    *&v347[0] = v258;
    goto LABEL_582;
  }

  if (std::string::compare(a2, *MEMORY[0x29EDBE4F0]))
  {
    goto LABEL_571;
  }

  v348 = 0;
  v349 = 0;
  v350 = 0;
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v239 = xmmword_2A18B7520;
  if (!xmmword_2A18B7520)
  {
    ABMProperties::create_default_global(v347);
    std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
    v239 = xmmword_2A18B7520;
  }

  *&__p = v239;
  *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
  if (*(&xmmword_2A18B7520 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v347, "AntennaSetting::", a2);
  v240 = Preferences::getPreference<std::string>(__p, v347);
  if (SBYTE7(v347[1]) < 0)
  {
    operator delete(*&v347[0]);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
  if (v240)
  {
    v241 = xpc_dictionary_create(0, 0, 0);
    v242 = v241;
    if (v241)
    {
      *&v347[0] = v241;
    }

    else
    {
      v242 = xpc_null_create();
      *&v347[0] = v242;
      if (!v242)
      {
        v264 = xpc_null_create();
        v242 = 0;
        goto LABEL_630;
      }
    }

    if (MEMORY[0x29C26CE60](v242) == v12)
    {
      xpc_retain(v242);
      goto LABEL_631;
    }

    v264 = xpc_null_create();
LABEL_630:
    *&v347[0] = v264;
LABEL_631:
    xpc_release(v242);
    xpc::dict::operator=(v351, v347);
    xpc_release(*&v347[0]);
    v318 = 0xAAAAAAAAAAAAAAAALL;
    v283 = xpc_dictionary_create(0, 0, 0);
    v284 = v283;
    if (v283)
    {
      v318 = v283;
    }

    else
    {
      v284 = xpc_null_create();
      v318 = v284;
      if (!v284)
      {
        v285 = xpc_null_create();
        v284 = 0;
        goto LABEL_638;
      }
    }

    if (MEMORY[0x29C26CE60](v284) == v12)
    {
      xpc_retain(v284);
      goto LABEL_639;
    }

    v285 = xpc_null_create();
LABEL_638:
    v318 = v285;
LABEL_639:
    xpc_release(v284);
    if (*(a2 + 23) >= 0)
    {
      v286 = a2;
    }

    else
    {
      v286 = *a2;
    }

    *&v316[1] = xpc_string_create(v286);
    if (!*&v316[1])
    {
      *&v316[1] = xpc_null_create();
    }

    v287 = *MEMORY[0x29EDBED18];
    *&v347[0] = v351;
    *(&v347[0] + 1) = v287;
    xpc::dict::object_proxy::operator=(v347, &v316[1], &v317);
    xpc_release(v317);
    v317 = 0;
    xpc_release(*&v316[1]);
    *&v316[1] = 0;
    memset(v347, 170, 24);
    std::string::basic_string[abi:ne200100]<0>(v347, "");
    v316[0] = 0x7FFF;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v288 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(&__p);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](&__p);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
      v288 = xmmword_2A18B7520;
    }

    value = v288;
    v315 = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v289 = value;
    v290 = *MEMORY[0x29EDBF1D8];
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "AntennaSetting::", *MEMORY[0x29EDBF1D8]);
    Preferences::getPreference<std::string>(v289, &__p);
    if (v313 < 0)
    {
      operator delete(__p);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&value);
    if (SBYTE7(v347[1]) < 0)
    {
      if (*(&v347[0] + 1))
      {
        v291 = *&v347[0];
        goto LABEL_655;
      }
    }

    else if (BYTE7(v347[1]))
    {
      v291 = v347;
LABEL_655:
      v310 = xpc_string_create(v291);
      if (!v310)
      {
        v310 = xpc_null_create();
      }

      *&__p = &v318;
      *(&__p + 1) = v290;
      xpc::dict::object_proxy::operator=(&__p, &v310, &v311);
      xpc_release(v311);
      v311 = 0;
      xpc_release(v310);
      v310 = 0;
    }

    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v292 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(&__p);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](&__p);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
      v292 = xmmword_2A18B7520;
    }

    value = v292;
    v315 = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v293 = value;
    v294 = *MEMORY[0x29EDBE8B8];
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "AntennaSetting::", *MEMORY[0x29EDBE8B8]);
    Preferences::getPreference<unsigned int>(v293, &__p, v316);
    if (v313 < 0)
    {
      operator delete(__p);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&value);
    v308 = xpc_int64_create(v316[0]);
    if (!v308)
    {
      v308 = xpc_null_create();
    }

    *&__p = &v318;
    *(&__p + 1) = v294;
    xpc::dict::object_proxy::operator=(&__p, &v308, &v309);
    xpc_release(v309);
    v309 = 0;
    xpc_release(v308);
    v308 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v295 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(&__p);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](&__p);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
      v295 = xmmword_2A18B7520;
    }

    value = v295;
    v315 = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v296 = value;
    v297 = *MEMORY[0x29EDBEA90];
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "AntennaSetting::", *MEMORY[0x29EDBEA90]);
    Preferences::getPreference<unsigned int>(v296, &__p, v316);
    if (v313 < 0)
    {
      operator delete(__p);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&value);
    v306 = xpc_int64_create(v316[0]);
    if (!v306)
    {
      v306 = xpc_null_create();
    }

    *&__p = &v318;
    *(&__p + 1) = v297;
    xpc::dict::object_proxy::operator=(&__p, &v306, &v307);
    xpc_release(v307);
    v307 = 0;
    xpc_release(v306);
    v306 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v298 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(&__p);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](&__p);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
      v298 = xmmword_2A18B7520;
    }

    value = v298;
    v315 = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v299 = value;
    v300 = *MEMORY[0x29EDBE698];
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "AntennaSetting::", *MEMORY[0x29EDBE698]);
    Preferences::getPreference<unsigned int>(v299, &__p, v316);
    if (v313 < 0)
    {
      operator delete(__p);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&value);
    v304 = xpc_int64_create(v316[0]);
    if (!v304)
    {
      v304 = xpc_null_create();
    }

    *&__p = &v318;
    *(&__p + 1) = v300;
    xpc::dict::object_proxy::operator=(&__p, &v304, &v305);
    xpc_release(v305);
    v305 = 0;
    xpc_release(v304);
    v304 = 0;
    xpc::dict::dict(&v302, &v318);
    v301 = *MEMORY[0x29EDBEA98];
    *&__p = v351;
    *(&__p + 1) = v301;
    xpc::dict::object_proxy::operator=(&__p, &v302, &v303);
    xpc_release(v303);
    v303 = 0;
    xpc_release(v302);
    v302 = 0;
    if (SBYTE7(v347[1]) < 0)
    {
      operator delete(*&v347[0]);
    }

    xpc_release(v318);
  }

LABEL_569:
  if (SHIBYTE(v350) < 0)
  {
    operator delete(v348);
  }

LABEL_571:
  if (MEMORY[0x29C26CE60](v351[0]) == v12)
  {
    v263 = **(a1 + 120);
    if (v263)
    {
      antenna::Service::Internal::antennaSetProperty(v263, v351);
    }
  }

  xpc_release(v351[0]);
}

void sub_29714E5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, xpc_object_t object)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (*(v31 - 105) < 0)
  {
    operator delete(*(v31 - 128));
  }

  xpc_release(*(v31 - 104));
  _Unwind_Resume(a1);
}

uint64_t Preferences::getPreference<std::string>(uint64_t (***a1)(void, uint64_t), const char *a2)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v6, a2);
  v3 = (**a1)(a1, v6);
  if (v3)
  {
    v4 = ctu::cf::assign();
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x29C26B130](&v6);
  return v4;
}

void *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *result, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = *(a3 + 23);
  if (v5 >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  v7 = v6 + v4;
  if (v6 + v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = result;
  if (v7 <= 0x16)
  {
    result[1] = 0;
    result[2] = 0;
    *result = 0;
    *(result + 23) = v7;
    if (!v4)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if ((v7 | 7) == 0x17)
  {
    v11 = 25;
  }

  else
  {
    v11 = (v7 | 7) + 1;
  }

  result = operator new(v11);
  v10[1] = v7;
  v10[2] = v11 | 0x8000000000000000;
  *v10 = result;
  v10 = result;
  if (v4)
  {
LABEL_15:
    v12 = *a2;
    if (v3 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    result = memmove(v10, v13, v4);
  }

LABEL_19:
  v14 = v10 + v4;
  if (v6)
  {
    v15 = *a3;
    if (v5 >= 0)
    {
      v16 = a3;
    }

    else
    {
      v16 = *a3;
    }

    result = memmove(v14, v16, v6);
  }

  v14[v6] = 0;
  return result;
}

void *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, const void **a2, char *__s)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  result = strlen(__s);
  v9 = result + v7;
  if (result + v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = result;
  if (v9 > 0x16)
  {
    if ((v9 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v9 | 7) + 1;
    }

    result = operator new(v11);
    a1[1] = v9;
    a1[2] = v11 | 0x8000000000000000;
    *a1 = result;
    a1 = result;
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  *(a1 + 23) = v9;
  if (v7)
  {
LABEL_12:
    v12 = *a2;
    if (v6 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    result = memmove(a1, v13, v7);
  }

LABEL_16:
  v14 = a1 + v7;
  if (v10)
  {
    result = memmove(v14, __s, v10);
  }

  v14[v10] = 0;
  return result;
}

void AntennaModule::reportTransmitState(AntennaModule *this, void **a2)
{
  v21 = 0xAAAAAAAAAAAAAAAALL;
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

  xpc::bridge(&cf, &object, v4);
  v5 = cf;
  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFDictionaryGetTypeID()))
  {
    v21 = 0;
    v7 = 1;
    v8 = cf;
    if (!cf)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v21 = v5;
  CFRetain(v5);
  v7 = 0;
  v8 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v8);
  }

LABEL_10:
  xpc_release(object);
  if (v7)
  {
    return;
  }

  v9 = *MEMORY[0x29EDBF348];
  v10 = strlen(*MEMORY[0x29EDBF348]);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v10 | 7) + 1;
    }

    v12 = operator new(v14);
    __dst[1] = v11;
    v18 = v14 | 0x8000000000000000;
    __dst[0] = v12;
LABEL_20:
    memmove(v12, v9, v11);
    *(v11 + v12) = 0;
    v13 = v21;
    v16 = v21;
    if (!v21)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  HIBYTE(v18) = v10;
  v12 = __dst;
  if (v10)
  {
    goto LABEL_20;
  }

  LOBYTE(__dst[0]) = 0;
  v13 = v21;
  v16 = v21;
  if (v21)
  {
LABEL_21:
    CFRetain(v13);
  }

LABEL_22:
  aBlock = 0;
  Service::broadcastEvent(this, __dst, &v16, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst[0]);
    if (!v13)
    {
      return;
    }
  }

  else if (!v13)
  {
    return;
  }

  CFRelease(v13);
}

void sub_29714F388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, const void *a19)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a19);
  _Unwind_Resume(a1);
}

void AntennaModule::processCallback(AntennaModule *this, xpc_object_t *a2)
{
  v4 = *MEMORY[0x29EDBEC68];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEC68]))
  {
    memset(__s1, 170, sizeof(__s1));
    value = xpc_dictionary_get_value(*a2, v4);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    xpc::dyn_cast_or_default(__s1, object, "", v6);
    xpc_release(object[0]);
    v7 = strlen(*MEMORY[0x29EDBEBE8]);
    v8 = v7;
    v9 = HIBYTE(__s1[2]);
    if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
    {
      if (v7 != -1)
      {
        v10 = __s1[0];
        v11 = __s1[1];
LABEL_10:
        if (v11 >= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v11;
        }

        if (!memcmp(v10, *MEMORY[0x29EDBEBE8], v12) && v11 == v8)
        {
          AntennaModule::reportTransmitState(this, a2);
          v9 = HIBYTE(__s1[2]);
        }

        v14 = *MEMORY[0x29EDBE728];
        v15 = strlen(*MEMORY[0x29EDBE728]);
        v16 = v15;
        if ((v9 & 0x80) != 0)
        {
          if (v15 != -1)
          {
            v17 = __s1[1];
            if (__s1[1] >= v15)
            {
              v19 = v15;
            }

            else
            {
              v19 = __s1[1];
            }

            if (memcmp(__s1[0], v14, v19))
            {
              goto LABEL_44;
            }

            goto LABEL_31;
          }
        }

        else if (v15 != -1)
        {
          v17 = v9;
          if (v9 >= v15)
          {
            v18 = v15;
          }

          else
          {
            v18 = v9;
          }

          if (memcmp(__s1, v14, v18))
          {
            goto LABEL_44;
          }

LABEL_31:
          if (v17 != v16)
          {
LABEL_44:
            if ((v9 & 0x80) != 0)
            {
              operator delete(__s1[0]);
            }

            return;
          }

          v20 = *MEMORY[0x29EDBEBD0];
          v21 = strlen(*MEMORY[0x29EDBEBD0]);
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
            v30 = v24 | 0x8000000000000000;
            object[0] = v23;
          }

          else
          {
            HIBYTE(v30) = v21;
            v23 = object;
            if (!v21)
            {
              goto LABEL_41;
            }
          }

          memmove(v23, v20, v22);
LABEL_41:
          *(v22 + v23) = 0;
          v25 = *MEMORY[0x29EDBE750];
          v27[0] = a2;
          v27[1] = v25;
          xpc::dict::object_proxy::operator xpc::dict(v27, &v28);
          v26 = 0;
          Service::runCommand(this, object, &v28, &v26);
          xpc_release(v28);
          v28 = 0;
          if (SHIBYTE(v30) < 0)
          {
            operator delete(object[0]);
          }

          v9 = HIBYTE(__s1[2]);
          goto LABEL_44;
        }

        std::string::__throw_out_of_range[abi:ne200100]();
      }
    }

    else if (v7 != -1)
    {
      v10 = __s1;
      v11 = SHIBYTE(__s1[2]);
      goto LABEL_10;
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }
}

void sub_29714F684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void **xpc::dict::operator=(void **a1, xpc_object_t object)
{
  if (object)
  {
    v3 = object;
    xpc_retain(object);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = *a1;
  *a1 = v3;
  xpc_release(v4);
  return a1;
}

atomic_ullong *std::shared_ptr<AntennaModule>::shared_ptr[abi:ne200100]<AntennaModule,std::shared_ptr<AntennaModule> ctu::SharedSynchronizable<AntennaModule>::make_shared_ptr<AntennaModule>(AntennaModule*)::{lambda(AntennaModule*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E2C358;
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

void sub_29714F8C0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<AntennaModule> ctu::SharedSynchronizable<AntennaModule>::make_shared_ptr<AntennaModule>(AntennaModule*)::{lambda(AntennaModule*)#1}::operator() const(AntennaModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AntennaModule *,std::shared_ptr<AntennaModule> ctu::SharedSynchronizable<AntennaModule>::make_shared_ptr<AntennaModule>(AntennaModule*)::{lambda(AntennaModule *)#1},std::allocator<AntennaModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<AntennaModule *,std::shared_ptr<AntennaModule> ctu::SharedSynchronizable<AntennaModule>::make_shared_ptr<AntennaModule>(AntennaModule*)::{lambda(AntennaModule *)#1},std::allocator<AntennaModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI13AntennaModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI13AntennaModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI13AntennaModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI13AntennaModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<AntennaModule> ctu::SharedSynchronizable<AntennaModule>::make_shared_ptr<AntennaModule>(AntennaModule*)::{lambda(AntennaModule*)#1}::operator() const(AntennaModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void AntennaModule::init(void)::$_0::operator()(uint64_t a1)
{
  v131 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 104);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing", buf, 2u);
  }

  v3 = *(a1 + 80);
  if (!v3 || (v4 = *(a1 + 72), (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  p_shared_weak_owners = &v5->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v106 = 0xAAAAAAAAAAAAAAAALL;
  v107 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZZN13AntennaModule4initEvENK3__0clEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_44_1;
  aBlock[4] = a1;
  aBlock[5] = v4;
  v105 = v6;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v8 = _Block_copy(aBlock);
  v9 = *(a1 + 88);
  if (v9)
  {
    dispatch_retain(*(a1 + 88));
  }

  v106 = v8;
  v107 = v9;
  v10 = operator new(0x10uLL);
  if (v8)
  {
    v102 = _Block_copy(v8);
    v103 = v9;
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v102 = 0;
  v103 = v9;
  if (v9)
  {
LABEL_11:
    dispatch_retain(v9);
  }

LABEL_12:
  v11 = *(a1 + 96);
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  antenna::Service::Service(v10, &v102, &object);
  *buf = v10;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E2C3D8;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = v10;
  v13 = *(a1 + 128);
  *(a1 + 120) = v10;
  *(a1 + 128) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v103)
  {
    dispatch_release(v103);
  }

  if (v102)
  {
    _Block_release(v102);
  }

  v14 = *MEMORY[0x29EDBEFD0];
  v15 = strlen(*MEMORY[0x29EDBEFD0]);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
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

    v17 = operator new(v18);
    v109 = v16;
    v110 = v18 | 0x8000000000000000;
    *buf = v17;
    goto LABEL_31;
  }

  HIBYTE(v110) = v15;
  v17 = buf;
  if (v15)
  {
LABEL_31:
    memmove(v17, v14, v16);
  }

  *(v17 + v16) = 0;
  v19 = v111;
  v20 = *MEMORY[0x29EDBE978];
  v21 = strlen(*MEMORY[0x29EDBE978]);
  if (v21 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v22 = v21;
  if (v21 >= 0x17)
  {
    if ((v21 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v21 | 7) + 1;
    }

    v24 = operator new(v23);
    v111[1] = v22;
    v112 = v23 | 0x8000000000000000;
    v111[0] = v24;
    v19 = v24;
    goto LABEL_40;
  }

  HIBYTE(v112) = v21;
  if (v21)
  {
LABEL_40:
    memmove(v19, v20, v22);
  }

  *(v22 + v19) = 0;
  v25 = v113;
  v26 = *MEMORY[0x29EDBEBA0];
  v27 = strlen(*MEMORY[0x29EDBEBA0]);
  if (v27 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v28 = v27;
  if (v27 >= 0x17)
  {
    if ((v27 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v27 | 7) + 1;
    }

    v30 = operator new(v29);
    v113[1] = v28;
    v114 = v29 | 0x8000000000000000;
    v113[0] = v30;
    v25 = v30;
    goto LABEL_49;
  }

  HIBYTE(v114) = v27;
  if (v27)
  {
LABEL_49:
    memmove(v25, v26, v28);
  }

  *(v28 + v25) = 0;
  v31 = v115;
  v32 = *MEMORY[0x29EDBED08];
  v33 = strlen(*MEMORY[0x29EDBED08]);
  if (v33 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v34 = v33;
  if (v33 >= 0x17)
  {
    if ((v33 | 7) == 0x17)
    {
      v35 = 25;
    }

    else
    {
      v35 = (v33 | 7) + 1;
    }

    v36 = operator new(v35);
    v115[1] = v34;
    v116 = v35 | 0x8000000000000000;
    v115[0] = v36;
    v31 = v36;
    goto LABEL_58;
  }

  HIBYTE(v116) = v33;
  if (v33)
  {
LABEL_58:
    memmove(v31, v32, v34);
  }

  *(v34 + v31) = 0;
  v37 = v117;
  v38 = *MEMORY[0x29EDBF530];
  v39 = strlen(*MEMORY[0x29EDBF530]);
  if (v39 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v40 = v39;
  if (v39 >= 0x17)
  {
    if ((v39 | 7) == 0x17)
    {
      v41 = 25;
    }

    else
    {
      v41 = (v39 | 7) + 1;
    }

    v42 = operator new(v41);
    v117[1] = v40;
    v118 = v41 | 0x8000000000000000;
    v117[0] = v42;
    v37 = v42;
    goto LABEL_67;
  }

  HIBYTE(v118) = v39;
  if (v39)
  {
LABEL_67:
    memmove(v37, v38, v40);
  }

  *(v40 + v37) = 0;
  v43 = v119;
  v44 = *MEMORY[0x29EDBF558];
  v45 = strlen(*MEMORY[0x29EDBF558]);
  if (v45 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v46 = v45;
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

    v48 = operator new(v47);
    v119[1] = v46;
    v120 = v47 | 0x8000000000000000;
    v119[0] = v48;
    v43 = v48;
    goto LABEL_76;
  }

  HIBYTE(v120) = v45;
  if (v45)
  {
LABEL_76:
    memmove(v43, v44, v46);
  }

  *(v46 + v43) = 0;
  v49 = v121;
  v50 = *MEMORY[0x29EDBECA0];
  v51 = strlen(*MEMORY[0x29EDBECA0]);
  if (v51 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v52 = v51;
  if (v51 >= 0x17)
  {
    if ((v51 | 7) == 0x17)
    {
      v53 = 25;
    }

    else
    {
      v53 = (v51 | 7) + 1;
    }

    v54 = operator new(v53);
    v121[1] = v52;
    v122 = v53 | 0x8000000000000000;
    v121[0] = v54;
    v49 = v54;
    goto LABEL_85;
  }

  HIBYTE(v122) = v51;
  if (v51)
  {
LABEL_85:
    memmove(v49, v50, v52);
  }

  *(v52 + v49) = 0;
  v55 = v123;
  v56 = *MEMORY[0x29EDBF528];
  v57 = strlen(*MEMORY[0x29EDBF528]);
  if (v57 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v58 = v57;
  if (v57 >= 0x17)
  {
    if ((v57 | 7) == 0x17)
    {
      v59 = 25;
    }

    else
    {
      v59 = (v57 | 7) + 1;
    }

    v60 = operator new(v59);
    v123[1] = v58;
    v124 = v59 | 0x8000000000000000;
    v123[0] = v60;
    v55 = v60;
    goto LABEL_94;
  }

  HIBYTE(v124) = v57;
  if (v57)
  {
LABEL_94:
    memmove(v55, v56, v58);
  }

  *(v58 + v55) = 0;
  v61 = v125;
  v62 = *MEMORY[0x29EDBF510];
  v63 = strlen(*MEMORY[0x29EDBF510]);
  if (v63 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v64 = v63;
  if (v63 >= 0x17)
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
    v125[1] = v64;
    v126 = v65 | 0x8000000000000000;
    v125[0] = v66;
    v61 = v66;
    goto LABEL_103;
  }

  HIBYTE(v126) = v63;
  if (v63)
  {
LABEL_103:
    memmove(v61, v62, v64);
  }

  *(v64 + v61) = 0;
  v67 = v127;
  v68 = *MEMORY[0x29EDBF5A8];
  v69 = strlen(*MEMORY[0x29EDBF5A8]);
  if (v69 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v70 = v69;
  if (v69 >= 0x17)
  {
    if ((v69 | 7) == 0x17)
    {
      v71 = 25;
    }

    else
    {
      v71 = (v69 | 7) + 1;
    }

    v72 = operator new(v71);
    v127[1] = v70;
    v128 = v71 | 0x8000000000000000;
    v127[0] = v72;
    v67 = v72;
    goto LABEL_112;
  }

  HIBYTE(v128) = v69;
  if (v69)
  {
LABEL_112:
    memmove(v67, v68, v70);
  }

  *(v70 + v67) = 0;
  v73 = __p;
  v74 = *MEMORY[0x29EDBE4F0];
  v75 = strlen(*MEMORY[0x29EDBE4F0]);
  if (v75 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v76 = v75;
  if (v75 >= 0x17)
  {
    if ((v75 | 7) == 0x17)
    {
      v90 = 25;
    }

    else
    {
      v90 = (v75 | 7) + 1;
    }

    v91 = operator new(v90);
    __p[1] = v76;
    v130 = v90 | 0x8000000000000000;
    __p[0] = v91;
    v73 = v91;
  }

  else
  {
    HIBYTE(v130) = v75;
    if (!v75)
    {
      LOBYTE(__p[0]) = 0;
      v78 = (a1 + 112);
      v77 = *(a1 + 112);
      if (v77)
      {
        goto LABEL_117;
      }

LABEL_145:
      v86 = 0;
      goto LABEL_149;
    }
  }

  memmove(v73, v74, v76);
  *(v76 + v73) = 0;
  v78 = (a1 + 112);
  v77 = *(a1 + 112);
  if (!v77)
  {
    goto LABEL_145;
  }

LABEL_117:
  v79 = 0;
  do
  {
    v80 = &buf[v79];
    v81 = (v77 + 1);
    if (&buf[v79] != (v77 + 1))
    {
      v82 = v80[23];
      if (*(v77 + 31) < 0)
      {
        if (v82 >= 0)
        {
          v84 = &buf[v79];
        }

        else
        {
          v84 = *&buf[v79];
        }

        if (v82 >= 0)
        {
          v85 = v80[23];
        }

        else
        {
          v85 = *&buf[v79 + 8];
        }

        std::string::__assign_no_alias<false>(v81, v84, v85);
      }

      else if ((v80[23] & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v81, *&buf[v79], *&buf[v79 + 8]);
      }

      else
      {
        v83 = *v80;
        v77[3] = *(v80 + 2);
        *v81 = v83;
      }
    }

    v78 = *v78;
    v77 = *v77;
    v86 = v79 + 24;
    if (!v77)
    {
      break;
    }

    v87 = v79 == 240;
    v79 += 24;
  }

  while (!v87);
  if (v77)
  {
    if (v78)
    {
      v88 = *v78;
      if (*v78)
      {
        *v78 = 0;
        do
        {
          v89 = *v88;
          if (*(v88 + 31) < 0)
          {
            operator delete(v88[1]);
          }

          operator delete(v88);
          v88 = v89;
        }

        while (v89);
      }
    }

    goto LABEL_154;
  }

  if (v86 == 264)
  {
    goto LABEL_154;
  }

LABEL_149:
  v92 = operator new(0x20uLL);
  v93 = &buf[v86];
  *v92 = 0;
  v94 = (v92 + 1);
  if (*(&v110 + v86 + 7) < 0)
  {
    std::string::__init_copy_ctor_external(v94, *v93, *(v93 + 1));
  }

  else
  {
    *&v94->__r_.__value_.__l.__data_ = *v93;
    v92[3] = *(v93 + 2);
  }

  v95 = v92;
  if (v86 != 240)
  {
    v97 = &buf[v86 + 24];
    v98 = v86 - 240;
    v99 = v92;
    do
    {
      v95 = operator new(0x20uLL);
      *v95 = 0;
      v100 = (v95 + 1);
      if (v97[23] < 0)
      {
        std::string::__init_copy_ctor_external(v100, *v97, *(v97 + 1));
      }

      else
      {
        *&v100->__r_.__value_.__l.__data_ = *v97;
        v95[3] = *(v97 + 2);
      }

      *v99 = v95;
      v97 += 24;
      v99 = v95;
      v98 += 24;
    }

    while (v98);
  }

  *v95 = *v78;
  *v78 = v92;
LABEL_154:
  if (SHIBYTE(v130) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v128) & 0x80000000) == 0)
    {
LABEL_156:
      if ((SHIBYTE(v126) & 0x80000000) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_174;
    }
  }

  else if ((SHIBYTE(v128) & 0x80000000) == 0)
  {
    goto LABEL_156;
  }

  operator delete(v127[0]);
  if ((SHIBYTE(v126) & 0x80000000) == 0)
  {
LABEL_157:
    if ((SHIBYTE(v124) & 0x80000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_175;
  }

LABEL_174:
  operator delete(v125[0]);
  if ((SHIBYTE(v124) & 0x80000000) == 0)
  {
LABEL_158:
    if ((SHIBYTE(v122) & 0x80000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_176;
  }

LABEL_175:
  operator delete(v123[0]);
  if ((SHIBYTE(v122) & 0x80000000) == 0)
  {
LABEL_159:
    if ((SHIBYTE(v120) & 0x80000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_177;
  }

LABEL_176:
  operator delete(v121[0]);
  if ((SHIBYTE(v120) & 0x80000000) == 0)
  {
LABEL_160:
    if ((SHIBYTE(v118) & 0x80000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_178;
  }

LABEL_177:
  operator delete(v119[0]);
  if ((SHIBYTE(v118) & 0x80000000) == 0)
  {
LABEL_161:
    if ((SHIBYTE(v116) & 0x80000000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_179;
  }

LABEL_178:
  operator delete(v117[0]);
  if ((SHIBYTE(v116) & 0x80000000) == 0)
  {
LABEL_162:
    if ((SHIBYTE(v114) & 0x80000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_180;
  }

LABEL_179:
  operator delete(v115[0]);
  if ((SHIBYTE(v114) & 0x80000000) == 0)
  {
LABEL_163:
    if ((SHIBYTE(v112) & 0x80000000) == 0)
    {
      goto LABEL_164;
    }

LABEL_181:
    operator delete(v111[0]);
    if ((SHIBYTE(v110) & 0x80000000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_182;
  }

LABEL_180:
  operator delete(v113[0]);
  if (SHIBYTE(v112) < 0)
  {
    goto LABEL_181;
  }

LABEL_164:
  if ((SHIBYTE(v110) & 0x80000000) == 0)
  {
    goto LABEL_165;
  }

LABEL_182:
  operator delete(*buf);
LABEL_165:
  AntennaModule::initializeProperty(a1);
  if (v107)
  {
    dispatch_release(v107);
  }

  if (v106)
  {
    _Block_release(v106);
  }

  if (v105)
  {
    std::__shared_weak_count::__release_weak(v105);
  }

  std::__shared_weak_count::__release_weak(v6);
  v96 = *MEMORY[0x29EDCA608];
}

void sub_2971504BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  operator delete(v77);
  if (a76 < 0)
  {
    operator delete(__p);
    if ((a74 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a74 & 0x80000000) == 0)
  {
LABEL_3:
    if (a72 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  operator delete(a73);
  if (a72 < 0)
  {
LABEL_4:
    operator delete(a69);
    if ((a68 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  if ((a68 & 0x80000000) == 0)
  {
LABEL_5:
    if (a62 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a63);
  if (a62 < 0)
  {
LABEL_6:
    operator delete(a57);
    if ((a56 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  if ((a56 & 0x80000000) == 0)
  {
LABEL_7:
    if (a50 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a51);
  if (a50 < 0)
  {
LABEL_8:
    operator delete(a45);
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  if ((a44 & 0x80000000) == 0)
  {
LABEL_9:
    if (a38 < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a39);
  if (a38 < 0)
  {
LABEL_10:
    operator delete(a33);
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  if ((a32 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a26 & 0x80000000) == 0)
    {
LABEL_24:
      dispatch::callback<void({block_pointer})(xpc::dict)>::~callback(&a19);
      if (a18)
      {
        std::__shared_weak_count::__release_weak(a18);
      }

      std::__shared_weak_count::__release_weak(v76);
      _Unwind_Resume(a1);
    }

LABEL_23:
    operator delete(a21);
    goto LABEL_24;
  }

LABEL_22:
  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  goto LABEL_23;
}

void sub_2971504CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a76 < 0)
  {
    operator delete(a75);
    if ((a74 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a74 & 0x80000000) == 0)
  {
LABEL_3:
    if (a72 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  operator delete(a73);
  if (a72 < 0)
  {
LABEL_4:
    operator delete(a69);
    if ((a68 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  if ((a68 & 0x80000000) == 0)
  {
LABEL_5:
    if (a62 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a63);
  if (a62 < 0)
  {
LABEL_6:
    operator delete(a57);
    if ((a56 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  if ((a56 & 0x80000000) == 0)
  {
LABEL_7:
    if (a50 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a51);
  if (a50 < 0)
  {
LABEL_8:
    operator delete(a45);
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  if ((a44 & 0x80000000) == 0)
  {
LABEL_9:
    if (a38 < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a39);
  if (a38 < 0)
  {
LABEL_10:
    operator delete(a33);
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  if ((a32 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a26 & 0x80000000) == 0)
    {
LABEL_24:
      dispatch::callback<void({block_pointer})(xpc::dict)>::~callback(&a19);
      if (a18)
      {
        std::__shared_weak_count::__release_weak(a18);
      }

      std::__shared_weak_count::__release_weak(v76);
      _Unwind_Resume(a1);
    }

LABEL_23:
    operator delete(a21);
    goto LABEL_24;
  }

LABEL_22:
  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  goto LABEL_23;
}

void sub_29715054C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x297150554);
  }

  JUMPOUT(0x2971506C8);
}

void sub_2971506D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  while (1)
  {
    v22 = *(v21 - 1);
    v21 -= 3;
    if (v22 < 0)
    {
      operator delete(*v21);
    }

    if (v21 == &a21)
    {
      JUMPOUT(0x29715069CLL);
    }
  }
}

void ___ZZN13AntennaModule4initEvENK3__0clEv_block_invoke(void *a1, xpc_object_t *a2)
{
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
          return;
        }
      }

      else
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
        if (!v7)
        {
          return;
        }
      }

      AntennaModule::processCallback(v5, a2);
    }
  }
}

uint64_t dispatch::callback<void({block_pointer})(xpc::dict)>::~callback(uint64_t a1)
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

void std::__shared_ptr_pointer<antenna::Service *,std::shared_ptr<antenna::Service>::__shared_ptr_default_delete<antenna::Service,antenna::Service>,std::allocator<antenna::Service>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<antenna::Service *,std::shared_ptr<antenna::Service>::__shared_ptr_default_delete<antenna::Service,antenna::Service>,std::allocator<antenna::Service>>::__on_zero_shared(uint64_t a1)
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

uint64_t std::__shared_ptr_pointer<antenna::Service *,std::shared_ptr<antenna::Service>::__shared_ptr_default_delete<antenna::Service,antenna::Service>,std::allocator<antenna::Service>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029722CA17)
  {
    if (((v2 & 0x800000029722CA17 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029722CA17))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029722CA17 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E2C420;
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

uint64_t __copy_helper_block_e8_40c42_ZTSNSt3__110shared_ptrIK13AntennaModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c42_ZTSNSt3__110shared_ptrIK13AntennaModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  AntennaModule::registerCommandHandlers_sync(**a1);
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

void sub_297150C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  AntennaModule::registerEventHandlers_sync(**a1);
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

void sub_297150D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1 + 1);
  v5 = 3760250880;
  if (MEMORY[0x29C26CE60](*v4) == MEMORY[0x29EDCAA00])
  {
    v6 = *(v3 + 120);
    if (v6)
    {
      v7 = *(v3 + 104);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        xpc::object::to_string(__p, (v2 + 1));
        if (v17 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        *buf = 136315138;
        v19 = v10;
        _os_log_debug_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEBUG, "#D Received Audio State: %s", buf, 0xCu);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }

        v6 = *(v3 + 120);
        v8 = *v4;
        if (*v4)
        {
LABEL_5:
          xpc_retain(v8);
          v9 = *v6;
          if (!*v6)
          {
            goto LABEL_18;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v8 = *v4;
        if (*v4)
        {
          goto LABEL_5;
        }
      }

      v8 = xpc_null_create();
      v9 = *v6;
      if (!*v6)
      {
LABEL_18:
        xpc_release(v8);
        v5 = 0;
        goto LABEL_19;
      }

LABEL_14:
      __p[0] = v8;
      if (v8)
      {
        xpc_retain(v8);
        v11 = v8;
      }

      else
      {
        v11 = xpc_null_create();
        __p[0] = v11;
      }

      antenna::Service::Internal::setAudioState(v9, __p);
      xpc_release(v11);
      goto LABEL_18;
    }
  }

LABEL_19:
  v12 = v2[2];
  __p[0] = xpc_null_create();
  (*(v12 + 16))(v12, v5, __p);
  xpc_release(__p[0]);
  v13 = v2[2];
  if (v13)
  {
    _Block_release(v13);
  }

  xpc_release(*v4);
  operator delete(v2);
  v14 = a1[2];
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  operator delete(a1);
  v15 = *MEMORY[0x29EDCA608];
}

void sub_297150F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = 3760250880;
  if (MEMORY[0x29C26CE60]((*a1)[1]) == MEMORY[0x29EDCAA00])
  {
    v5 = *(v3 + 120);
    if (v5)
    {
      v6 = v2[1];
      v10 = v6;
      if (v6)
      {
        xpc_retain(v6);
      }

      else
      {
        v6 = xpc_null_create();
        v10 = v6;
      }

      antenna::Service::setMotionThresholds(v5, &v10);
      xpc_release(v6);
      v4 = 0;
      v10 = 0;
    }
  }

  v7 = v2[2];
  object = xpc_null_create();
  (*(v7 + 16))(v7, v4, &object);
  xpc_release(object);
  v8 = v2[2];
  if (v8)
  {
    _Block_release(v8);
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_297151160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(v12);
  _ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb0_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb0_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(xpc_object_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *a1 + 1;
  v5 = 3760250880;
  if (MEMORY[0x29C26CE60](*v4) == MEMORY[0x29EDCAA00])
  {
    v6 = *(v3 + 15);
    if (v6)
    {
      if (*v6)
      {
        antenna::Service::Internal::antennaSetProperty(*v6, v2 + 1);
      }

      AntennaModule::setProperty_sync(v3, v2 + 1);
      v5 = 0;
    }
  }

  v7 = v2[2];
  object = xpc_null_create();
  v7[2](v7, v5, &object);
  xpc_release(object);
  v8 = v2[2];
  if (v8)
  {
    _Block_release(v8);
  }

  xpc_release(*v4);
  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_297151348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb1_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb1_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v11 = -534716416;
  v4 = xpc_null_create();
  v10 = v4;
  if (MEMORY[0x29C26CE60](v2[1]) == MEMORY[0x29EDCAA00])
  {
    v5 = *(v3 + 120);
    if (v5)
    {
      antenna::Service::antennaGetProperty(v5, v2 + 1, &object);
      v6 = object;
      object = xpc_null_create();
      v10 = v6;
      xpc_release(v4);
      xpc_release(object);
      v11 = 0;
    }
  }

  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int &,xpc::dict&>(v2 + 2, &v11, &v10);
  xpc_release(v10);
  v7 = v2[2];
  if (v7)
  {
    _Block_release(v7);
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

void sub_297151514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  xpc_release(v13);
  _ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb2_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb2_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E2C460;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E2C460;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E2C460;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E2C460;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13AntennaModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13AntennaModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13AntennaModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13AntennaModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 120);
  if (v3 && *v3)
  {
    antenna::Service::Internal::dumpState(*v3);
  }

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

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E2C4E0;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E2C4E0;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E2C4E0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E2C4E0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13AntennaModule26registerEventHandlers_syncEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13AntennaModule26registerEventHandlers_syncEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13AntennaModule26registerEventHandlers_syncEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13AntennaModule26registerEventHandlers_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 120);
  if (v3 && *v3)
  {
    antenna::Service::Internal::dumpState(*v3);
  }

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

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E2C560;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E2C560;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E2C560;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E2C560;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      if (!a1[2] || MEMORY[0x29C26CE60](v5) != MEMORY[0x29EDCAA00])
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
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

void sub_297152318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13AntennaModule26registerEventHandlers_syncEvE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13AntennaModule26registerEventHandlers_syncEvE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13AntennaModule26registerEventHandlers_syncEvE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13AntennaModule26registerEventHandlers_syncEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  if (!*(v3 + 120))
  {
    goto LABEL_46;
  }

  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(v2[2], *MEMORY[0x29EDBEAF8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  xpc_release(object);
  v5 = *MEMORY[0x29EDBEFB8];
  v6 = strlen(*MEMORY[0x29EDBEFB8]);
  v7 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    if (v6 == __s1[1])
    {
      if (v6 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], v5, v6))
      {
        goto LABEL_37;
      }
    }
  }

  else if (v6 == SHIBYTE(__s1[2]) && !memcmp(__s1, v5, v6))
  {
LABEL_37:
    v16 = **(v3 + 120);
    if (v16)
    {
      antenna::Service::Internal::startService(v16);
    }

    goto LABEL_44;
  }

  v8 = *MEMORY[0x29EDBF210];
  v9 = strlen(*MEMORY[0x29EDBF210]);
  if ((v7 & 0x80000000) != 0)
  {
    if (v9 == __s1[1])
    {
      if (v9 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], v8, v9))
      {
        goto LABEL_42;
      }
    }
  }

  else if (v9 == v7 && !memcmp(__s1, v8, v9))
  {
    goto LABEL_42;
  }

  v10 = *MEMORY[0x29EDBF420];
  v11 = strlen(*MEMORY[0x29EDBF420]);
  if ((v7 & 0x80000000) != 0)
  {
    if (v11 == __s1[1])
    {
      if (v11 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], v10, v11))
      {
        goto LABEL_42;
      }
    }
  }

  else if (v11 == v7 && !memcmp(__s1, v10, v11))
  {
    goto LABEL_42;
  }

  v12 = *MEMORY[0x29EDBEB58];
  v13 = strlen(*MEMORY[0x29EDBEB58]);
  if ((v7 & 0x80000000) != 0)
  {
    if (v13 == __s1[1])
    {
      if (v13 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], v12, v13))
      {
        goto LABEL_42;
      }
    }
  }

  else if (v13 == v7 && !memcmp(__s1, v12, v13))
  {
    goto LABEL_42;
  }

  v14 = *MEMORY[0x29EDBEFC0];
  v15 = strlen(*MEMORY[0x29EDBEFC0]);
  if ((v7 & 0x80000000) != 0)
  {
    if (v15 != __s1[1])
    {
      goto LABEL_44;
    }

    if (v15 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (memcmp(__s1[0], v14, v15))
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v15 == v7 && !memcmp(__s1, v14, v15))
  {
LABEL_42:
    v17 = **(v3 + 120);
    if (v17)
    {
      antenna::Service::Internal::stopService(v17);
    }
  }

LABEL_44:
  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
  }

LABEL_46:
  xpc_release(v2[2]);
  v2[2] = 0;
  v18 = v2[1];
  if (v18)
  {
    dispatch_group_leave(v18);
    v19 = v2[1];
    if (v19)
    {
      dispatch_release(v19);
    }
  }

  operator delete(v2);
  v20 = a1[2];
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  operator delete(a1);
}

void sub_297152734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E2C5E0;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E2C5E0;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E2C5E0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E2C5E0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
        dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13AntennaModule26registerEventHandlers_syncEvE3$_3")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13AntennaModule26registerEventHandlers_syncEvE3$_3" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13AntennaModule26registerEventHandlers_syncEvE3$_3"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13AntennaModule26registerEventHandlers_syncEvE3$_3" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 120))
  {
    if (MEMORY[0x29C26CE60](v2[2]) == MEMORY[0x29EDCAA00])
    {
      value = xpc_dictionary_get_value(v2[2], *MEMORY[0x29EDBE5A8]);
      *buf = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        *buf = xpc_null_create();
      }

      v7 = xpc::dyn_cast_or_default(buf, 0);
      xpc_release(*buf);
      v8 = *(v3 + 120);
      if (v7)
      {
        antenna::Service::callActive(v8);
      }

      else
      {
        antenna::Service::callInactive(v8);
      }
    }

    else
    {
      v4 = *(v3 + 104);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v5 = "No input is given for voice call active state";
LABEL_7:
        _os_log_error_impl(&dword_296FF7000, v4, OS_LOG_TYPE_ERROR, v5, buf, 2u);
      }
    }
  }

  else
  {
    v4 = *(v3 + 104);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v5 = "Antenna Service has not created yet.";
      goto LABEL_7;
    }
  }

  xpc_release(v2[2]);
  v2[2] = 0;
  v9 = v2[1];
  if (v9)
  {
    dispatch_group_leave(v9);
    v10 = v2[1];
    if (v10)
    {
      dispatch_release(v10);
    }
  }

  operator delete(v2);
  v11 = a1[2];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(a1);
}

void sub_297152DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::sleep(dispatch::group_session)::$_0>(AntennaModule::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AntennaModule::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 120);
  if (v3 && *v3)
  {
    antenna::Service::Internal::enterLowPower(*v3);
  }

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

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::wake(dispatch::group_session)::$_0>(AntennaModule::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AntennaModule::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 120);
  if (v3 && *v3)
  {
    antenna::Service::Internal::exitLowPower(*v3);
  }

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

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::initializeProperty(void)::$_0>(AntennaModule::initializeProperty(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::initializeProperty(void)::$_0,dispatch_queue_s *::default_delete<AntennaModule::initializeProperty(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  AntennaModule::initializeProperty_sync(**a1, *a1 + 8);
  if (*(v2 + 31) < 0)
  {
    operator delete(v2[1]);
  }

  operator delete(v2);
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_2971530AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  std::unique_ptr<AntennaModule::initializeProperty(void)::$_0,std::default_delete<AntennaModule::initializeProperty(void)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<AntennaModule::initializeProperty(void)::$_0,std::default_delete<AntennaModule::initializeProperty(void)::$_0>>::~unique_ptr[abi:ne200100](void *result)
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

void *ABMProperties::create_default_global(ABMProperties *this)
{
  v2 = operator new(0x18uLL);
  MEMORY[0x29C26B190](v2, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
  *this = v2;
  result = operator new(0x20uLL);
  *result = &unk_2A1E26558;
  result[1] = 0;
  result[2] = 0;
  result[3] = v2;
  *(this + 1) = result;
  return result;
}

void sub_297153190(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::shared_ptr<ABMProperties>::operator=[abi:ne200100](uint64_t a1)
{
  v1 = *a1;
  *a1 = 0;
  *(a1 + 8) = 0;
  v2 = *(&xmmword_2A18B7520 + 1);
  xmmword_2A18B7520 = v1;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t __cxx_global_var_init_22()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t __cxx_global_var_init_23()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_296FF7000);
  }

  return result;
}

void *PowerManager::PowerManager(void *a1, uint64_t *a2)
{
  *a1 = &unk_2A1E2C660;
  v3 = (a1 + 1);
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::create(&v6, v3);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  PowerManager::State::init(*v3);
  return a1;
}

{
  *a1 = &unk_2A1E2C660;
  v3 = (a1 + 1);
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::create(&v6, v3);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  PowerManager::State::init(*v3);
  return a1;
}

void sub_297153360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (!a10)
  {
    _Unwind_Resume(exception_object);
  }

  std::__shared_weak_count::__release_weak(a10);
  _Unwind_Resume(exception_object);
}

void PowerManager::State::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0xE0uLL);
  v5 = v4;
  v6 = a1[1];
  v7 = *a1;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::State(v4, &v7);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<PowerManager::State>::shared_ptr[abi:ne200100]<PowerManager::State,std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State*)#1},0>(a2, v5);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_29715340C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
    if (!v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v10);
  _Unwind_Resume(exception_object);
}

void PowerManager::State::init(PowerManager::State *this)
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

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN12PowerManager5State4initEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_21_4;
  v9[4] = this;
  v9[5] = v3;
  v10 = v5;
  v11 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN12PowerManager5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_23;
  block[4] = this;
  block[5] = &v11;
  v7 = *(this + 2);
  if (!*(this + 3))
  {
    dispatch_sync(v7, block);
    v8 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v7, block);
  v8 = v10;
  if (v10)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v5);
}

void sub_297153640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (!a10)
  {
    _Unwind_Resume(exception_object);
  }

  std::__shared_weak_count::__release_weak(a10);
  _Unwind_Resume(exception_object);
}

void PowerManager::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *v4 = &unk_2A1E2C660;
  v8 = (v4 + 1);
  v10 = v6;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::create(&v10, v4 + 1);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  PowerManager::State::init(*v8);
  *a2 = v5;
  v9 = operator new(0x20uLL);
  *v9 = &unk_2A1E2CA08;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = v5;
  a2[1] = v9;
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_297153744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 48))(v10);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  _Unwind_Resume(a1);
}

void PowerManager::registerForPowerEvents(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (*a2)
  {
    v3 = _Block_copy(*a2);
  }

  else
  {
    v3 = 0;
  }

  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1174405120;
  v5[2] = ___ZN12PowerManager5State22registerForPowerEventsEN8dispatch5blockIU13block_pointerFv10PowerStateNS1_13group_sessionEEEE_block_invoke;
  v5[3] = &__block_descriptor_tmp_30_0;
  v5[4] = v2;
  if (!v3)
  {
    aBlock = 0;
    ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v2, v5);
    v4 = aBlock;
    if (!aBlock)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  aBlock = _Block_copy(v3);
  ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v2, v5);
  v4 = aBlock;
  if (aBlock)
  {
LABEL_8:
    _Block_release(v4);
  }

LABEL_9:
  if (v3)
  {
    _Block_release(v3);
  }
}

void PowerManager::createPowerAssertion(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject **a4@<X8>)
{
  v6 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  v7 = dispatch_group_create();
  *a4 = v7;
  v18 = v6;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v17;
  }

  v20 = a3;
  group = v7;
  if (v7)
  {
    dispatch_retain(v7);
    if (group)
    {
      dispatch_group_enter(group);
    }
  }

  v8 = v6[1];
  if (!v8 || (v9 = *v6, (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = operator new(0x30uLL);
  *v12 = v18;
  v13 = (v12 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v13->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    v12[3] = *(&__p.__r_.__value_.__l + 2);
  }

  v14 = group;
  v12[4] = v20;
  v12[5] = v14;
  group = 0;
  v15 = v6[2];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x18uLL);
  *v16 = v12;
  v16[1] = v9;
  v16[2] = v11;
  dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>(PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_24:
    operator delete(v17.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_24;
  }
}

void sub_297153AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v14)
  {
    dispatch_release(v14);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void PowerManager::releasePowerAssertion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
    v12 = v2;
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
    goto LABEL_6;
  }

  v11 = *a2;
  v12 = v2;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  __p = v11;
LABEL_6:
  v3 = v2[1];
  if (!v3 || (v4 = *v2, (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = operator new(0x20uLL);
  *v7 = v12;
  v8 = (v7 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v8, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v8->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    v7[3] = *(&__p.__r_.__value_.__l + 2);
  }

  v9 = v2[2];
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v7;
  v10[1] = v4;
  v10[2] = v6;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1}>(PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1},std::default_delete<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_13:
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_17:
      operator delete(v11.__r_.__value_.__l.__data_);
      return;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_17;
  }
}

void sub_297153CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PowerManager::initialize(PowerManager *this)
{
  v1 = *(this + 1);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN12PowerManager5State10initializeEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_52_1;
  v2[4] = v1;
  ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v1, v2);
}

void PowerManager::shutdown(PowerManager *this)
{
  v1 = *(this + 1);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN12PowerManager5State8shutdownEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_53_0;
  v2[4] = v1;
  ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v1, v2);
}

void PowerManager::~PowerManager(PowerManager *this)
{
  *this = &unk_2A1E2C660;
  v1 = *(this + 2);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_2A1E2C660;
  v1 = *(this + 2);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  operator delete(this);
}

void *std::shared_ptr<PowerManager::State>::shared_ptr[abi:ne200100]<PowerManager::State,std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E2C6D0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = a2[1];
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *a2 = a2;
      a2[1] = v4;
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
  *a2 = a2;
  a2[1] = v4;
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

void sub_297154010(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State*)#1}::operator() const(PowerManager::State*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<PowerManager::State *,std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State *)#1},std::allocator<PowerManager::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<PowerManager::State *,std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State *)#1},std::allocator<PowerManager::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN12PowerManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN12PowerManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN12PowerManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN12PowerManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State*)#1}::operator() const(PowerManager::State*)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
    v3 = *(a1 + 96);
    *(a1 + 96) = 0;
    if (v3)
    {
      _Block_release(v3);
    }
  }

  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Gone!", v15, 2u);
  }

  v5 = *(a1 + 216);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(*(a1 + 192));
  std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(*(a1 + 168));
  std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(*(a1 + 144));
  v6 = *(a1 + 128);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a1 + 112);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = *(a1 + 96);
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v8 = *(a1 + 96);
  if (v8)
  {
LABEL_15:
    _Block_release(v8);
  }

LABEL_16:
  v9 = *(a1 + 88);
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(a1 + 80);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(a1 + 48);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  MEMORY[0x29C26B020](a1 + 32);
  v12 = *(a1 + 24);
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  operator delete(a1);
}

void std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 7);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(a1 + 7);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v4 = a1;
    }

    else
    {
      v4 = a1;
    }

    operator delete(v4);
  }
}

uint64_t std::pair<std::string const,dispatch::group_session>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 24);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(uint64_t a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(*(a1 + 8));
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

uint64_t PowerManager::State::State(uint64_t a1, void *a2)
{
  ctu::OsLogContext::OsLogContext(v10, "com.apple.telephony.abm", "power.mgr");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v5 = dispatch_queue_create_with_target_V2("power.mgr", initially_inactive, 0);
  dispatch_set_qos_class_floor(v5, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v5);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v5)
  {
    dispatch_retain(v5);
    *(a1 + 24) = 0;
    dispatch_release(v5);
  }

  else
  {
    *(a1 + 24) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](a1 + 32, v11);
  MEMORY[0x29C26B020](v11);
  ctu::OsLogContext::~OsLogContext(v10);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0x200000001;
  *(a1 + 64) = -536870144;
  v6 = operator new(0x88uLL);
  PowerStats::PowerStats(v6);
  *(a1 + 72) = v6;
  v10[0] = v6;
  v7 = operator new(0x20uLL);
  *v7 = &unk_2A1E2E768;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = v6;
  *(a1 + 80) = v7;
  *(a1 + 144) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = a1 + 144;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 200) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 208) = *a2;
  v8 = a2[1];
  *(a1 + 216) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_2971546B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<PowerStats>::~unique_ptr[abi:ne200100](va);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v3);
  MEMORY[0x29C26B020](v2 + 4);
  ctu::SharedSynchronizable<StatsModule>::~SharedSynchronizable(v2);
  _Unwind_Resume(a1);
}

void ___ZN12PowerManager5State4initEv_block_invoke(uint64_t a1)
{
  v41.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40 = v2;
  *&v41.__r_.__value_.__l.__data_ = v2;
  v39 = v2;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN12PowerManager5State4initEv_block_invoke_2;
  aBlock[3] = &__block_descriptor_tmp_40;
  v22 = *(a1 + 32);
  v37 = v22;
  v3 = *(a1 + 48);
  v38 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = _Block_copy(aBlock);
  v5 = *(v22 + 16);
  *&v39 = 1;
  *(&v39 + 1) = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  if (v4)
  {
    v40 = _Block_copy(v4);
    v41.__r_.__value_.__r.__words[0] = 5063233;
    *(&v41.__r_.__value_.__s + 23) = 3;
    _Block_release(v4);
  }

  else
  {
    v40 = 0uLL;
    v41.__r_.__value_.__r.__words[0] = 5063233;
    *(&v41.__r_.__value_.__s + 23) = 3;
  }

  ctu::power::manager::get(buf, v5);
  v6 = *buf;
  memset(buf, 0, 16);
  v7 = *(v22 + 112);
  *(v22 + 104) = v6;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = buf[1];
  if (buf[1] && !atomic_fetch_add((buf[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(v22 + 104);
  v31 = v39;
  if (*(&v39 + 1))
  {
    dispatch_retain(*(&v39 + 1));
  }

  v10 = v40;
  if (v40)
  {
    v10 = _Block_copy(v40);
  }

  v32 = v10;
  v11 = *(&v40 + 1);
  if (*(&v40 + 1))
  {
    v11 = _Block_copy(*(&v40 + 1));
  }

  v33 = v11;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v41;
  }

  ctu::power::manager::registerListener();
  v12 = *buf;
  memset(buf, 0, 16);
  v13 = *(v22 + 128);
  *(v22 + 120) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = buf[1];
  if (!buf[1] || atomic_fetch_add((buf[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    operator delete(__p.__r_.__value_.__l.__data_);
    v15 = v33;
    if (!v33)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  (v14->__on_zero_shared)(v14);
  std::__shared_weak_count::__release_weak(v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_32;
  }

LABEL_29:
  v15 = v33;
  if (v33)
  {
LABEL_33:
    _Block_release(v15);
  }

LABEL_34:
  if (v32)
  {
    _Block_release(v32);
  }

  if (*(&v31 + 1))
  {
    dispatch_release(*(&v31 + 1));
  }

  v16 = *(v22 + 32);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_296FF7000, v16, OS_LOG_TYPE_DEFAULT, "#I Registered power listener", buf, 2u);
  }

  memset(buf, 170, 16);
  abm::AWDHelperGetConnection(buf);
  if (buf[0])
  {
    v24 = MEMORY[0x29EDCA5F8];
    v25 = 1174405120;
    v26 = ___ZN12PowerManager5State4initEv_block_invoke_11;
    v27 = &__block_descriptor_tmp_18_3;
    v18 = *(a1 + 40);
    v17 = *(a1 + 48);
    v28 = v22;
    v29 = v18;
    v30 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    wis::WISServerConnection::RegisterQueriableMetricCallbackForIdentifier();
    if (v30)
    {
      std::__shared_weak_count::__release_weak(v30);
      v19 = buf[1];
      if (!buf[1])
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }
  }

  else
  {
    v20 = *(v22 + 32);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&dword_296FF7000, v20, OS_LOG_TYPE_ERROR, "AWD connection setup failed", v23, 2u);
      v19 = buf[1];
      if (!buf[1])
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }
  }

  v19 = buf[1];
  if (!buf[1])
  {
    goto LABEL_50;
  }

LABEL_48:
  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

LABEL_50:
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
    v21 = *(&v40 + 1);
    if (!*(&v40 + 1))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v21 = *(&v40 + 1);
  if (*(&v40 + 1))
  {
LABEL_54:
    _Block_release(v21);
  }

LABEL_55:
  if (v40)
  {
    _Block_release(v40);
  }

  if (*(&v39 + 1))
  {
    dispatch_release(*(&v39 + 1));
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }
}

void sub_297154C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, char a20, dispatch_object_t object, void *a22, void *aBlock, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a22)
  {
    _Block_release(a22);
  }

  if (object)
  {
    dispatch_release(object);
    ctu::power::manager::parameters::~parameters((v36 - 128));
    v38 = a36;
    if (!a36)
    {
LABEL_7:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    ctu::power::manager::parameters::~parameters((v36 - 128));
    v38 = a36;
    if (!a36)
    {
      goto LABEL_7;
    }
  }

  std::__shared_weak_count::__release_weak(v38);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN12PowerManager5State4initEv_block_invoke_11(void *a1, int a2)
{
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
        v8[0] = MEMORY[0x29EDCA5F8];
        v8[1] = 0x40000000;
        v8[2] = ___ZN12PowerManager5State4initEv_block_invoke_2_12;
        v8[3] = &__block_descriptor_tmp_14_1;
        v8[4] = v5;
        v9 = a2;
        ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v5, v8);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void ___ZN12PowerManager5State4initEv_block_invoke_2_12(uint64_t a1)
{
  if (*(a1 + 40) == 524466)
  {
    PowerStats::submitLowPowerStatsMetric_sync(*(*(a1 + 32) + 72));
  }
}

void ctu::power::manager::parameters::~parameters(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
    v2 = this[3];
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = this[3];
  if (v2)
  {
LABEL_5:
    _Block_release(v2);
  }

LABEL_6:
  v3 = this[2];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = this[1];
  if (v4)
  {
    dispatch_release(v4);
  }
}

void ___ZN12PowerManager5State22registerForPowerEventsEN8dispatch5blockIU13block_pointerFv10PowerStateNS1_13group_sessionEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  v3 = *(v2 + 88);
  *(v2 + 88) = v1;
  if (v3)
  {
    _Block_release(v3);
  }
}

void *__copy_helper_block_e8_40c73_ZTSN8dispatch5blockIU13block_pointerFv10PowerStateNS_13group_sessionEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c73_ZTSN8dispatch5blockIU13block_pointerFv10PowerStateNS_13group_sessionEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>(PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t ***a1)
{
  v179 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[4] / 1000 + 60;
  v169 = 0xAAAAAAAAAAAAAAAALL;
  v170 = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance);
  v4 = qword_2A18B7160;
  if (qword_2A18B7160)
  {
    goto LABEL_12;
  }

  v5 = operator new(0x38uLL);
  MEMORY[0x29C26B510]();
  v6 = operator new(0x20uLL);
  v6->__shared_owners_ = 0;
  p_shared_owners = &v6->__shared_owners_;
  v6->__vftable = &unk_2A1E2C878;
  v6->__shared_weak_owners_ = 0;
  v6[1].__vftable = v5;
  v8 = v5->~__shared_weak_count_0;
  if (v8)
  {
    if (v8->__shared_owners_ != -1)
    {
      goto LABEL_8;
    }

    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v5->~__shared_weak_count = v5;
    v5->~__shared_weak_count_0 = v6;
    std::__shared_weak_count::__release_weak(v8);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_8;
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v5->~__shared_weak_count = v5;
    v5->~__shared_weak_count_0 = v6;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_8;
    }
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
LABEL_8:
  v9 = off_2A18B7168;
  qword_2A18B7160 = v5;
  off_2A18B7168 = v6;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v4 = qword_2A18B7160;
LABEL_12:
  v10 = off_2A18B7168;
  buf.__r_.__value_.__r.__words[0] = v4;
  buf.__r_.__value_.__l.__size_ = off_2A18B7168;
  if (off_2A18B7168)
  {
    atomic_fetch_add_explicit(off_2A18B7168 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance);
  v166 = (v1 + 1);
  ctu::power::assertion::createInternal();
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = v169;
    if (v169)
    {
      goto LABEL_17;
    }

LABEL_58:
    v33 = v2[4];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = v1 + 1;
      if (*(v1 + 31) < 0)
      {
        v34 = *v166;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v34;
      _os_log_error_impl(&dword_296FF7000, v33, OS_LOG_TYPE_ERROR, "Failed to create power assertion '%s'", &buf, 0xCu);
    }

    goto LABEL_331;
  }

  v11 = v169;
  if (!v169)
  {
    goto LABEL_58;
  }

LABEL_17:
  v160 = v11;
  v164 = v2;
  v14 = v2[18];
  v13 = (v2 + 18);
  v12 = v14;
  v162 = (v13 - 1);
  if (!v14)
  {
    v19 = v13;
    if (*(v13 - 1) == v13)
    {
      v35 = 0;
      v19 = v13;
      v36 = v13;
      if (*v13)
      {
        goto LABEL_134;
      }

      goto LABEL_122;
    }

    goto LABEL_71;
  }

  v15 = *(v1 + 31);
  v16 = v1[2];
  v156 = v1[1];
  if ((v15 & 0x80u) == 0)
  {
    v17 = (v1 + 1);
  }

  else
  {
    v17 = v1[1];
  }

  if ((v15 & 0x80u) == 0)
  {
    v18 = *(v1 + 31);
  }

  else
  {
    v18 = v1[2];
  }

  v19 = v13;
  v20 = v12;
  do
  {
    while (1)
    {
      v21 = *(v20 + 55);
      v22 = v21 >= 0 ? v20 + 4 : v20[4];
      v23 = v21 >= 0 ? *(v20 + 55) : v20[5];
      v24 = v18 >= v23 ? v23 : v18;
      v25 = memcmp(v22, v17, v24);
      if (v25)
      {
        break;
      }

      if (v23 >= v18)
      {
        goto LABEL_39;
      }

LABEL_25:
      v20 = v20[1];
      if (!v20)
      {
        goto LABEL_40;
      }
    }

    if (v25 < 0)
    {
      goto LABEL_25;
    }

LABEL_39:
    v19 = v20;
    v20 = *v20;
  }

  while (v20);
LABEL_40:
  if (v19 != v13)
  {
    v26 = *(v19 + 55);
    if (v26 >= 0)
    {
      v27 = (v19 + 4);
    }

    else
    {
      v27 = v19[4];
    }

    if (v26 >= 0)
    {
      v28 = *(v19 + 55);
    }

    else
    {
      v28 = v19[5];
    }

    if (v28 >= v18)
    {
      v29 = v18;
    }

    else
    {
      v29 = v28;
    }

    v30 = memcmp(v17, v27, v29);
    if (v30)
    {
      if ((v30 & 0x80000000) == 0)
      {
LABEL_52:
        v31 = v170;
        if (v170)
        {
          atomic_fetch_add_explicit((v170 + 8), 1uLL, memory_order_relaxed);
        }

        v32 = v19[8];
        v19[7] = v160;
        v19[8] = v31;
        if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v32->__on_zero_shared)(v32);
          std::__shared_weak_count::__release_weak(v32);
        }

        goto LABEL_134;
      }
    }

    else if (v18 >= v28)
    {
      goto LABEL_52;
    }
  }

  v35 = *v19;
  if (v162->__vftable == v19)
  {
    v36 = v19;
    if (v35)
    {
      v13 = v19 + 1;
    }

    else
    {
      v13 = v19;
    }

    if (*v13)
    {
      goto LABEL_134;
    }

LABEL_122:
    if (v35)
    {
      v47 = v36;
    }

    else
    {
      v47 = v19;
    }

    v54 = *(v1 + 31);
    goto LABEL_128;
  }

  if (!v35)
  {
LABEL_71:
    v36 = v19;
    do
    {
      v40 = v36;
      v36 = v36[2];
    }

    while (*v36 == v40);
    v35 = 0;
    v15 = *(v1 + 31);
    v39 = v1[1];
    v16 = v1[2];
    v38 = *(v1 + 31);
    goto LABEL_74;
  }

  v37 = *v19;
  do
  {
    v36 = v37;
    v37 = v37[1];
  }

  while (v37);
  v38 = v15;
  v39 = v156;
LABEL_74:
  v41 = *(v36 + 55);
  if (v41 >= 0)
  {
    v42 = (v36 + 4);
  }

  else
  {
    v42 = v36[4];
  }

  if (v41 >= 0)
  {
    v43 = *(v36 + 55);
  }

  else
  {
    v43 = v36[5];
  }

  v158 = v38;
  if (v38 >= 0)
  {
    v44 = (v1 + 1);
  }

  else
  {
    v44 = v39;
  }

  if (v38 < 0)
  {
    v15 = v16;
  }

  if (v15 >= v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = v15;
  }

  v46 = memcmp(v42, v44, v45);
  if (!v46)
  {
    if (v43 >= v15)
    {
      goto LABEL_90;
    }

    goto LABEL_113;
  }

  if (v46 < 0)
  {
LABEL_113:
    if (v35)
    {
      v13 = v36 + 1;
    }

    else
    {
      v13 = v19;
    }

    if (*v13)
    {
      goto LABEL_134;
    }

    goto LABEL_122;
  }

LABEL_90:
  if (!v12)
  {
    v47 = v13;
    goto LABEL_127;
  }

  while (2)
  {
    while (2)
    {
      v47 = v12;
      v48 = *(v12 + 55);
      if (v48 >= 0)
      {
        v49 = v12 + 4;
      }

      else
      {
        v49 = v12[4];
      }

      if (v48 >= 0)
      {
        v50 = *(v12 + 55);
      }

      else
      {
        v50 = v12[5];
      }

      if (v50 >= v15)
      {
        v51 = v15;
      }

      else
      {
        v51 = v50;
      }

      v52 = memcmp(v44, v49, v51);
      if (v52)
      {
        if (v52 < 0)
        {
          break;
        }

        goto LABEL_106;
      }

      if (v15 >= v50)
      {
LABEL_106:
        v53 = memcmp(v49, v44, v51);
        if (v53)
        {
          if ((v53 & 0x80000000) == 0)
          {
            goto LABEL_134;
          }
        }

        else if (v50 >= v15)
        {
          goto LABEL_134;
        }

        v12 = v47[1];
        if (!v12)
        {
          v13 = v47 + 1;
          goto LABEL_127;
        }

        continue;
      }

      break;
    }

    v12 = *v47;
    if (*v47)
    {
      continue;
    }

    break;
  }

  v13 = v47;
LABEL_127:
  v54 = v158;
LABEL_128:
  v55 = operator new(0x48uLL);
  v56 = v55;
  buf.__r_.__value_.__r.__words[0] = v55;
  *&buf.__r_.__value_.__r.__words[1] = v162;
  if (v54 < 0)
  {
    std::string::__init_copy_ctor_external((v55 + 32), v1[1], v1[2]);
    v58 = v170;
    v56[7] = v169;
    v56[8] = v58;
    if (v58)
    {
LABEL_130:
      atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v57 = *v166;
    *(v55 + 6) = v1[3];
    *(v55 + 2) = v57;
    v58 = v170;
    *(v55 + 7) = v160;
    *(v55 + 8) = v58;
    if (v58)
    {
      goto LABEL_130;
    }
  }

  *v56 = 0;
  v56[1] = 0;
  v56[2] = v47;
  *v13 = v56;
  v59 = v162->~__shared_weak_count;
  if (v59)
  {
    v162->__vftable = v59;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v164[18], v56);
  ++v164[19];
LABEL_134:
  v60 = *(v169 + 32);
  v61 = *(v164 + 14);
  v62 = v164[4];
  v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
  if (!v61)
  {
    if (!v63)
    {
LABEL_149:
      v71 = v164[12];
      if (v71)
      {
        (*(v71 + 16))(v71, 1);
        v72 = v164[12];
        v164[12] = 0;
        if (v72)
        {
          _Block_release(v72);
        }

        v73 = v164[4];
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          v60 = 2;
          _os_log_impl(&dword_296FF7000, v73, OS_LOG_TYPE_DEFAULT, "#I Assertion held, but action will be deferred; acknowledging previous notification", &buf, 2u);
          v66 = v164[9];
          if (*(v1 + 31) < 0)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v60 = 2;
          v66 = v164[9];
          if (*(v1 + 31) < 0)
          {
            goto LABEL_139;
          }
        }

        goto LABEL_157;
      }

      v60 = 2;
      goto LABEL_156;
    }

    v67 = (v1 + 1);
    if (*(v1 + 31) < 0)
    {
      v67 = *v166;
      v68 = v1[4];
      v69 = *(v164 + 15);
      if (v69 <= 2)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v68 = v1[4];
      v69 = *(v164 + 15);
      if (v69 <= 2)
      {
LABEL_143:
        v70 = off_29EE64A20[v69];
LABEL_148:
        LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
        *(buf.__r_.__value_.__r.__words + 4) = v67;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v68;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
        *group = v60;
        *&group[4] = 1024;
        *&group[6] = 2;
        *&group[10] = 2080;
        *&group[12] = v70;
        _os_log_impl(&dword_296FF7000, v62, OS_LOG_TYPE_DEFAULT, "#I Power assertion created for '%s' during sleep; Timeout (millisec): %llu, Status = %d, Override = %d; Sleep state: %s", &buf, 0x2Cu);
        goto LABEL_149;
      }
    }

    v70 = "Unknown";
    goto LABEL_148;
  }

  if (!v63)
  {
LABEL_156:
    v66 = v164[9];
    if (*(v1 + 31) < 0)
    {
      goto LABEL_139;
    }

    goto LABEL_157;
  }

  v64 = (v1 + 1);
  if (*(v1 + 31) < 0)
  {
    v64 = *v166;
  }

  v65 = v1[4];
  LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
  *(buf.__r_.__value_.__r.__words + 4) = v64;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v65;
  HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
  *group = v60;
  _os_log_impl(&dword_296FF7000, v62, OS_LOG_TYPE_DEFAULT, "#I Power assertion created for '%s'; Timeout (millisec): %llu, Status = %d", &buf, 0x1Cu);
  v66 = v164[9];
  if (*(v1 + 31) < 0)
  {
LABEL_139:
    std::string::__init_copy_ctor_external(&v168, v1[1], v1[2]);
    goto LABEL_158;
  }

LABEL_157:
  v74 = *v166;
  v168.__r_.__value_.__r.__words[2] = v1[3];
  *&v168.__r_.__value_.__l.__data_ = v74;
LABEL_158:
  PowerStats::gotAssertion(v66, &v168, v60);
  if ((SHIBYTE(v168.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v60 == 2)
    {
      goto LABEL_160;
    }

LABEL_163:
    if (v1[4] < 1)
    {
      goto LABEL_331;
    }

    v76 = v164[1];
    if (!v76 || (v77 = *v164, (v78 = std::__shared_weak_count::lock(v76)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v79 = v78;
    p_shared_weak_owners = &v78->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v78->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v78->__on_zero_shared)(v78);
      std::__shared_weak_count::__release_weak(v79);
    }

    v81 = *(v1 + 8);
    buf.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    buf.__r_.__value_.__l.__size_ = 1174405120;
    buf.__r_.__value_.__r.__words[2] = ___ZZN12PowerManager5State20createPowerAssertionENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_6chrono8durationIxNS1_5ratioILl1ELl1000EEEEEENKUlvE_clEv_block_invoke;
    *group = &__block_descriptor_tmp_31_1;
    *&group[8] = v164;
    *&group[16] = v77;
    v176 = v79;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v163 = v79;
    if (*(v1 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v1[1], v1[2]);
    }

    else
    {
      v82 = *v166;
      __p.__r_.__value_.__r.__words[2] = v1[3];
      *&__p.__r_.__value_.__l.__data_ = v82;
    }

    v178 = v1[4];
    v102 = operator new(0x10uLL);
    v103 = _Block_copy(&buf);
    *v102 = "Watchdog timed out";
    TelephonyBasebandWatchdogStart();
    v159 = v102;
    v167 = v102;
    if (v103)
    {
      _Block_release(v103);
    }

    v104 = (v164 + 21);
    v105 = v164[21];
    v161 = (v164 + 20);
    if (!v105)
    {
      v110 = (v164 + 21);
      if (v164[20] == v104)
      {
        v124 = 0;
        v110 = (v164 + 21);
        v125 = v164 + 21;
        goto LABEL_308;
      }

      goto LABEL_264;
    }

    v106 = *(v1 + 31);
    v107 = v1[2];
    v155 = v1[1];
    if ((v106 & 0x80u) == 0)
    {
      v108 = (v1 + 1);
    }

    else
    {
      v108 = v1[1];
    }

    if ((v106 & 0x80u) == 0)
    {
      v109 = *(v1 + 31);
    }

    else
    {
      v109 = v1[2];
    }

    v110 = (v164 + 21);
    v111 = v164[21];
    while (1)
    {
      v112 = *(v111 + 55);
      if (v112 >= 0)
      {
        v113 = v111 + 4;
      }

      else
      {
        v113 = v111[4];
      }

      if (v112 >= 0)
      {
        v114 = *(v111 + 55);
      }

      else
      {
        v114 = v111[5];
      }

      if (v109 >= v114)
      {
        v115 = v114;
      }

      else
      {
        v115 = v109;
      }

      v116 = memcmp(v113, v108, v115);
      if (v116)
      {
        if (v116 < 0)
        {
          goto LABEL_226;
        }
      }

      else if (v114 < v109)
      {
LABEL_226:
        v111 = v111[1];
        if (!v111)
        {
          goto LABEL_241;
        }

        continue;
      }

      v110 = v111;
      v111 = *v111;
      if (!v111)
      {
LABEL_241:
        if (v110 != v104)
        {
          v117 = *(v110 + 55);
          if (v117 >= 0)
          {
            v118 = (v110 + 4);
          }

          else
          {
            v118 = v110[4];
          }

          if (v117 >= 0)
          {
            v119 = *(v110 + 55);
          }

          else
          {
            v119 = v110[5];
          }

          if (v119 >= v109)
          {
            v120 = v109;
          }

          else
          {
            v120 = v119;
          }

          v121 = memcmp(v108, v118, v120);
          if (v121)
          {
            if ((v121 & 0x80000000) == 0)
            {
LABEL_253:
              v122 = operator new(0x20uLL);
              *v122 = &unk_2A1E2C8C8;
              v122[1] = 0;
              v122[2] = 0;
              v122[3] = v159;
              v167 = 0;
              v123 = v110[8];
              v110[7] = v159;
              v110[8] = v122;
              if (v123 && !atomic_fetch_add(&v123->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v123->__on_zero_shared)(v123);
                std::__shared_weak_count::__release_weak(v123);
              }

              goto LABEL_324;
            }
          }

          else if (v109 >= v119)
          {
            goto LABEL_253;
          }
        }

        v124 = *v110;
        if (*v161 == v110)
        {
          v125 = v110;
          goto LABEL_308;
        }

        if (v124)
        {
          v126 = *v110;
          do
          {
            v125 = v126;
            v126 = v126[1];
          }

          while (v126);
          v127 = v106;
          v128 = v155;
LABEL_267:
          v130 = *(v125 + 55);
          if (v130 >= 0)
          {
            v131 = v125 + 4;
          }

          else
          {
            v131 = v125[4];
          }

          if (v130 >= 0)
          {
            v132 = *(v125 + 55);
          }

          else
          {
            v132 = v125[5];
          }

          v157 = v127;
          if (v127 >= 0)
          {
            v133 = (v1 + 1);
          }

          else
          {
            v133 = v128;
          }

          if (v127 >= 0)
          {
            v107 = v106;
          }

          if (v107 >= v132)
          {
            v134 = v132;
          }

          else
          {
            v134 = v107;
          }

          v135 = memcmp(v131, v133, v134);
          if (v135)
          {
            if (v135 < 0)
            {
              goto LABEL_308;
            }

LABEL_285:
            v136 = (v164 + 21);
            v137 = v164;
            if (!v105)
            {
LABEL_315:
              v144 = *(v1 + 31);
              goto LABEL_318;
            }

            while (1)
            {
              v136 = v105;
              v138 = *(v105 + 55);
              if (v138 >= 0)
              {
                v139 = v105 + 4;
              }

              else
              {
                v139 = v105[4];
              }

              if (v138 >= 0)
              {
                v140 = *(v105 + 55);
              }

              else
              {
                v140 = v105[5];
              }

              if (v140 >= v107)
              {
                v141 = v107;
              }

              else
              {
                v141 = v140;
              }

              v142 = memcmp(v133, v139, v141);
              if (v142)
              {
                if ((v142 & 0x80000000) == 0)
                {
                  goto LABEL_301;
                }
              }

              else if (v107 >= v140)
              {
LABEL_301:
                v143 = memcmp(v139, v133, v141);
                if (v143)
                {
                  if ((v143 & 0x80000000) == 0)
                  {
                    goto LABEL_324;
                  }
                }

                else if (v140 >= v107)
                {
                  goto LABEL_324;
                }

                v105 = v136[1];
                if (!v105)
                {
                  v104 = v136 + 1;
                  goto LABEL_317;
                }

                continue;
              }

              v105 = *v136;
              if (!*v136)
              {
                v104 = v136;
LABEL_317:
                v144 = v157;
LABEL_318:
                v145 = operator new(0x48uLL);
                v146 = v145;
                v171 = v145;
                v172 = v164 + 20;
                v173 = 0;
                if (v144 < 0)
                {
                  std::string::__init_copy_ctor_external((v145 + 32), v1[1], v1[2]);
                }

                else
                {
                  v147 = *v166;
                  *(v145 + 6) = v1[3];
                  *(v145 + 2) = v147;
                }

                v146[7] = v159;
                v148 = operator new(0x20uLL);
                *v148 = &unk_2A1E2C8C8;
                v148[1] = 0;
                v148[2] = 0;
                v148[3] = v159;
                v146[8] = v148;
                v167 = 0;
                *v146 = 0;
                v146[1] = 0;
                v146[2] = v136;
                *v104 = v146;
                v149 = **v161;
                if (v149)
                {
                  *v161 = v149;
                }

                std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v137[21], v146);
                ++v137[22];
LABEL_324:
                if (v167)
                {
                  TelephonyBasebandWatchdogStop();
                  operator delete(v167);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (v176)
                {
                  std::__shared_weak_count::__release_weak(v176);
                }

                std::__shared_weak_count::__release_weak(v163);
                goto LABEL_331;
              }
            }
          }

          if (v132 >= v107)
          {
            goto LABEL_285;
          }

LABEL_308:
          if (v124)
          {
            v136 = v125;
          }

          else
          {
            v136 = v110;
          }

          if (v124)
          {
            v104 = (v125 + 1);
          }

          else
          {
            v104 = v110;
          }

          v137 = v164;
          if (*v104)
          {
            goto LABEL_324;
          }

          goto LABEL_315;
        }

LABEL_264:
        v125 = v110;
        do
        {
          v129 = v125;
          v125 = v125[2];
        }

        while (*v125 == v129);
        v124 = 0;
        v106 = *(v1 + 31);
        v128 = v1[1];
        v107 = v1[2];
        v127 = *(v1 + 31);
        goto LABEL_267;
      }
    }
  }

  operator delete(v168.__r_.__value_.__l.__data_);
  if (v60 != 2)
  {
    goto LABEL_163;
  }

LABEL_160:
  if (*(v1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, v1[1], v1[2]);
  }

  else
  {
    v75 = *v166;
    buf.__r_.__value_.__r.__words[2] = v1[3];
    *&buf.__r_.__value_.__l.__data_ = v75;
  }

  v83 = v1[5];
  *group = v83;
  if (v83)
  {
    dispatch_retain(v83);
    if (*group)
    {
      dispatch_group_enter(*group);
    }
  }

  v84 = v164[24];
  if (!v84)
  {
    v87 = (v164 + 24);
    v88 = (v164 + 24);
    goto LABEL_202;
  }

  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = buf.__r_.__value_.__l.__size_;
  }

  do
  {
    while (2)
    {
      v88 = v84;
      v91 = v84[4];
      v89 = v84 + 4;
      v90 = v91;
      v92 = *(v89 + 23);
      if (v92 >= 0)
      {
        v93 = v89;
      }

      else
      {
        v93 = v90;
      }

      if (v92 >= 0)
      {
        v94 = *(v89 + 23);
      }

      else
      {
        v94 = v89[1];
      }

      if (v94 >= size)
      {
        v95 = size;
      }

      else
      {
        v95 = v94;
      }

      v96 = memcmp(p_buf, v93, v95);
      if (v96)
      {
        if (v96 < 0)
        {
          goto LABEL_181;
        }
      }

      else if (size < v94)
      {
LABEL_181:
        v84 = *v88;
        v87 = v88;
        if (!*v88)
        {
          goto LABEL_202;
        }

        continue;
      }

      break;
    }

    v97 = memcmp(v93, p_buf, v95);
    if (v97)
    {
      if ((v97 & 0x80000000) == 0)
      {
        goto LABEL_208;
      }
    }

    else if (v94 >= size)
    {
      goto LABEL_208;
    }

    v84 = v88[1];
  }

  while (v84);
  v87 = v88 + 1;
LABEL_202:
  v98 = operator new(0x40uLL);
  v99 = v98;
  v100 = (v164 + 23);
  v171 = v98;
  v172 = v164 + 23;
  v173 = 0;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v98 + 32), buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v98 + 32) = buf;
  }

  v99[7] = *group;
  *group = 0;
  *v99 = 0;
  v99[1] = 0;
  v99[2] = v88;
  *v87 = v99;
  v101 = **v100;
  if (v101)
  {
    *v100 = v101;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v164[24], v99);
  ++v164[25];
LABEL_208:
  if (*group)
  {
    dispatch_group_leave(*group);
    if (*group)
    {
      dispatch_release(*group);
    }
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_331:
  v150 = v170;
  if (v170 && !atomic_fetch_add((v170 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v150->__on_zero_shared)(v150);
    std::__shared_weak_count::__release_weak(v150);
  }

  v151 = v1[5];
  if (v151)
  {
    dispatch_group_leave(v151);
    v152 = v1[5];
    if (v152)
    {
      dispatch_release(v152);
    }
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v166);
  }

  operator delete(v1);
  v153 = a1[2];
  if (v153 && !atomic_fetch_add(&v153->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v153->__on_zero_shared)(v153);
    std::__shared_weak_count::__release_weak(v153);
  }

  v154 = *MEMORY[0x29EDCA608];

  operator delete(a1);
}