void IOPortUSBCAccessoriesDelegate::start(IOPortUSBCAccessoriesDelegate *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN29IOPortUSBCAccessoriesDelegate5startEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_5_0;
  v1[4] = this;
  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(this + 1, v1);
}

void ___ZN29IOPortUSBCAccessoriesDelegate5startEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 80) & 1) == 0)
  {
    v2 = *(v1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
    }

    *(v1 + 80) = 1;
    v3 = *(v1 + 16);
    if (!v3 || (v4 = *(v1 + 8), (v5 = std::__shared_weak_count::lock(v3)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v7 = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *(v1 + 24);
    v20 = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    v9.fObj.fObj = "com.apple.telephony.abm";
    ctu::iokit::IOPortUSBCController::create(buf, &v20, v9, "IOPortUSBCAccessories.delegate", v6);
    v10 = *buf;
    memset(buf, 0, sizeof(buf));
    v11 = *(v1 + 96);
    *(v1 + 88) = v10;
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

    if (v20)
    {
      dispatch_release(v20);
    }

    if (*(v1 + 88))
    {
      v16[0] = MEMORY[0x29EDCA5F8];
      v16[1] = 1174405120;
      v16[2] = ___ZN29IOPortUSBCAccessoriesDelegate5startEv_block_invoke_2;
      v16[3] = &__block_descriptor_tmp_36;
      v16[4] = v1;
      v16[5] = v4;
      v17 = v7;
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v13 = _Block_copy(v16);
      v14 = *(v1 + 24);
      if (v14)
      {
        dispatch_retain(v14);
      }

      aBlock = v13;
      object = v14;
      ctu::iokit::IOPortUSBCController::registerCallback();
      if (object)
      {
        dispatch_release(object);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }
    }

    else
    {
      v15 = *(v1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297476000, v15, OS_LOG_TYPE_ERROR, "Failed to create IOPort Controller!", buf, 2u);
      }
    }

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_2975BBF98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16)
{
  dispatch::callback<void({block_pointer})(ctu::iokit::USBCAccessory)>::~callback(&a16);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    std::__shared_weak_count::__release_weak(v16);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v16);
  _Unwind_Resume(a1);
}

void ___ZN29IOPortUSBCAccessoriesDelegate5startEv_block_invoke_2(void *a1, int a2)
{
  v69 = *MEMORY[0x29EDCA608];
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
          goto LABEL_117;
        }
      }

      else
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
        if (!v7)
        {
          goto LABEL_117;
        }
      }

      v9 = *(v5 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        ctu::iokit::IOPortUSBCController::asString();
        v10 = v66 >= 0 ? &__p : __p;
        *buf = 136315138;
        v68 = v10;
        _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Detected Accessory: %s\n", buf, 0xCu);
        if (v66 < 0)
        {
          operator delete(__p);
        }
      }

      if (*(v5 + 72))
      {
        if (ctu::iokit::operator&())
        {
          v11 = 2;
        }

        else
        {
          v12 = *(v5 + 104);
          if (!ctu::iokit::operator&())
          {
            v13 = 0;
            v14 = 0;
            v15 = 0;
LABEL_19:
            if (ctu::iokit::operator&())
            {
              v16 = v14 - v13;
              v17 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 2);
              v18 = v17 + 1;
              if (v17 + 1 > 0x1555555555555555)
              {
                std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v14 - v13) >> 2) > v18)
              {
                v18 = 0x5555555555555556 * ((v14 - v13) >> 2);
              }

              if (v17 >= 0xAAAAAAAAAAAAAAALL)
              {
                v19 = 0x1555555555555555;
              }

              else
              {
                v19 = v18;
              }

              if (v19)
              {
                if (v19 > 0x1555555555555555)
                {
                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v20 = operator new(12 * v19);
              }

              else
              {
                v20 = 0;
              }

              v26 = &v20[12 * v17];
              v27 = &v20[12 * v19];
              v28 = 131090;
            }

            else
            {
              v21 = *(v5 + 104);
              if (!ctu::iokit::operator&())
              {
                v27 = v14;
                goto LABEL_48;
              }

              v16 = v14 - v13;
              v22 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 2);
              v23 = v22 + 1;
              if (v22 + 1 > 0x1555555555555555)
              {
                std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v14 - v13) >> 2) > v23)
              {
                v23 = 0x5555555555555556 * ((v14 - v13) >> 2);
              }

              if (v22 >= 0xAAAAAAAAAAAAAAALL)
              {
                v24 = 0x1555555555555555;
              }

              else
              {
                v24 = v23;
              }

              if (v24)
              {
                if (v24 > 0x1555555555555555)
                {
                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v25 = operator new(12 * v24);
              }

              else
              {
                v25 = 0;
              }

              v26 = &v25[12 * v22];
              v27 = &v25[12 * v24];
              v28 = 65554;
            }

            *v26 = v28;
            *(v26 + 2) = 0x20000;
            v14 = v26 + 12;
            v29 = &v26[-v16];
            memcpy(&v26[-v16], v13, v16);
            if (v13)
            {
              operator delete(v13);
            }

            v15 = 1;
            v13 = v29;
LABEL_48:
            if (ctu::iokit::operator&())
            {
              if (v14 < v27)
              {
                v30 = 131091;
LABEL_54:
                *v14 = v30;
                *(v14 + 2) = 0x20000;
                v14 += 12;
                v15 = 1;
                goto LABEL_80;
              }

              v32 = v14 - v13;
              v33 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 2);
              v34 = v33 + 1;
              if (v33 + 1 > 0x1555555555555555)
              {
                std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v27 - v13) >> 2) > v34)
              {
                v34 = 0x5555555555555556 * ((v27 - v13) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v27 - v13) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v35 = 0x1555555555555555;
              }

              else
              {
                v35 = v34;
              }

              if (v35)
              {
                if (v35 > 0x1555555555555555)
                {
                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v36 = operator new(12 * v35);
              }

              else
              {
                v36 = 0;
              }

              v41 = &v36[12 * v33];
              v27 = &v36[12 * v35];
              v42 = 131091;
            }

            else
            {
              v31 = *(v5 + 104);
              if (!ctu::iokit::operator&())
              {
                goto LABEL_80;
              }

              if (v14 < v27)
              {
                v30 = 65555;
                goto LABEL_54;
              }

              v32 = v14 - v13;
              v37 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 2);
              v38 = v37 + 1;
              if (v37 + 1 > 0x1555555555555555)
              {
                std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v27 - v13) >> 2) > v38)
              {
                v38 = 0x5555555555555556 * ((v27 - v13) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v27 - v13) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v39 = 0x1555555555555555;
              }

              else
              {
                v39 = v38;
              }

              if (v39)
              {
                if (v39 > 0x1555555555555555)
                {
                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v40 = operator new(12 * v39);
              }

              else
              {
                v40 = 0;
              }

              v41 = &v40[12 * v37];
              v27 = &v40[12 * v39];
              v42 = 65555;
            }

            *v41 = v42;
            *(v41 + 2) = 0x20000;
            v14 = v41 + 12;
            v43 = &v41[-v32];
            memcpy(&v41[-v32], v13, v32);
            if (v13)
            {
              operator delete(v13);
            }

            v15 = 1;
            v13 = v43;
LABEL_80:
            if (ctu::iokit::operator&())
            {
              if (v14 < v27)
              {
                v44 = 131092;
                goto LABEL_86;
              }

              v48 = v14 - v13;
              v49 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 2) + 1;
              if (v49 > 0x1555555555555555)
              {
                std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v27 - v13) >> 2) > v49)
              {
                v49 = 0x5555555555555556 * ((v27 - v13) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v27 - v13) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v49 = 0x1555555555555555;
              }

              if (v49 > 0x1555555555555555)
              {
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v50 = operator new(12 * v49);
              v51 = v50;
              v52 = &v50[v48];
              v53 = 131092;
            }

            else
            {
              v45 = *(v5 + 104);
              if (!ctu::iokit::operator&())
              {
                if (!v15)
                {
                  v54 = *(v5 + 40);
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                  {
                    v55 = *(v5 + 104);
                    LODWORD(__p) = 67109376;
                    HIDWORD(__p) = v55;
                    v64 = 1024;
                    v65 = a2;
                    _os_log_error_impl(&dword_297476000, v54, OS_LOG_TYPE_ERROR, "Failed to parse bitmask (current: 0x%x, received: 0x%x)", &__p, 0xEu);
                  }

                  goto LABEL_115;
                }

LABEL_107:
                *(v5 + 104) = a2;
                v61 = 0;
                cf = 0;
                v59 = 0;
                v60 = 0;
                v47 = v14 - v13;
                if (v14 == v13)
                {
LABEL_110:
                  v57 = *(v5 + 72);
                  if (!v57)
                  {
                    std::__throw_bad_function_call[abi:ne200100]();
                  }

                  (*(*v57 + 48))(v57, &cf, &v59);
                  if (v59)
                  {
                    v60 = v59;
                    operator delete(v59);
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                  }

LABEL_115:
                  if (v13)
                  {
                    operator delete(v13);
                  }

                  goto LABEL_117;
                }

LABEL_108:
                if (0xAAAAAAAAAAAAAAABLL * (v47 >> 2) > 0x1555555555555555)
                {
                  std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
                }

                v59 = operator new(v47);
                v61 = v59 + v47;
                memcpy(v59, v13, v47);
                v60 = v59 + v47;
                goto LABEL_110;
              }

              if (v14 < v27)
              {
                v44 = 65556;
LABEL_86:
                *v14 = v44;
                *(v14 + 2) = 0x20000;
                v46 = v14 + 12;
                *(v5 + 104) = a2;
                v61 = 0;
                cf = 0;
                v59 = 0;
                v60 = 0;
                v47 = v46 - v13;
                if (v46 == v13)
                {
                  goto LABEL_110;
                }

                goto LABEL_108;
              }

              v48 = v14 - v13;
              v56 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 2) + 1;
              if (v56 > 0x1555555555555555)
              {
                std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v27 - v13) >> 2) > v56)
              {
                v56 = 0x5555555555555556 * ((v27 - v13) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v27 - v13) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v56 = 0x1555555555555555;
              }

              if (v56 > 0x1555555555555555)
              {
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v50 = operator new(12 * v56);
              v51 = v50;
              v52 = &v50[v48];
              v53 = 65556;
            }

            *v52 = v53;
            *(v52 + 2) = 0x20000;
            v14 = v52 + 12;
            memcpy(v50, v13, v48);
            if (!v13)
            {
              v13 = v51;
              *(v5 + 104) = a2;
              v61 = 0;
              cf = 0;
              v59 = 0;
              v60 = 0;
              v47 = v14 - v51;
              if (v14 == v51)
              {
                goto LABEL_110;
              }

              goto LABEL_108;
            }

            operator delete(v13);
            v13 = v51;
            goto LABEL_107;
          }

          v11 = 1;
        }

        v13 = operator new(0xCuLL);
        v14 = v13 + 12;
        *v13 = 17;
        *(v13 + 1) = v11;
        *(v13 + 4) = 0x2000000000000;
        v15 = 1;
        goto LABEL_19;
      }
    }
  }

LABEL_117:
  v58 = *MEMORY[0x29EDCA608];
}

void sub_2975BC770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (!v12)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v12);
  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrI23AccessoriesDelegateBaseEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrI23AccessoriesDelegateBaseEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void IOPortUSBCAccessoriesDelegate::stop(IOPortUSBCAccessoriesDelegate *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN29IOPortUSBCAccessoriesDelegate4stopEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_6_1;
  v1[4] = this;
  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(this + 1, v1);
}

void ___ZN29IOPortUSBCAccessoriesDelegate4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  v3 = *(v1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Stopping", buf, 2u);
    }

    v6 = (v1 + 88);
    v5 = *(v1 + 88);
    *(v1 + 80) = 0;
    if (v5)
    {
      v7 = *(v1 + 96);
      *(v1 + 88) = 0;
      *(v1 + 96) = 0;
      if (v7)
      {
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v8 = *(v1 + 96);
        *v6 = 0;
        *(v1 + 96) = 0;
        if (v8)
        {
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }
        }
      }

      else
      {
        *v6 = 0;
        *(v1 + 96) = 0;
      }
    }
  }

  else if (v4)
  {
    *v9 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Already stopped", v9, 2u);
  }
}

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::USBCAccessory)>::~callback(uint64_t a1)
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

void std::__shared_ptr_pointer<IOPortUSBCAccessoriesDelegate *,std::shared_ptr<IOPortUSBCAccessoriesDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<IOPortUSBCAccessoriesDelegate>(IOPortUSBCAccessoriesDelegate*)::{lambda(IOPortUSBCAccessoriesDelegate *)#1},std::allocator<IOPortUSBCAccessoriesDelegate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<IOPortUSBCAccessoriesDelegate *,std::shared_ptr<IOPortUSBCAccessoriesDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<IOPortUSBCAccessoriesDelegate>(IOPortUSBCAccessoriesDelegate*)::{lambda(IOPortUSBCAccessoriesDelegate *)#1},std::allocator<IOPortUSBCAccessoriesDelegate>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI29IOPortUSBCAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI29IOPortUSBCAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI29IOPortUSBCAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI29IOPortUSBCAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<IOPortUSBCAccessoriesDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<IOPortUSBCAccessoriesDelegate>(IOPortUSBCAccessoriesDelegate*)::{lambda(IOPortUSBCAccessoriesDelegate*)#1}::operator() const(IOPortUSBCAccessoriesDelegate*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E4A418;
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

uint64_t __copy_helper_block_e8_40c52_ZTSNSt3__110shared_ptrIK23AccessoriesDelegateBaseEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c52_ZTSNSt3__110shared_ptrIK23AccessoriesDelegateBaseEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void **BasebandTransport::getSupportedProtocols@<X0>(BasebandTransport *this@<X0>, void **a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  result = capabilities::radio::vendor(this);
  if (result > 2)
  {
    if (result == 3)
    {
      v53 = &v53;
      v54 = &v53;
      v55 = 0;
      v20 = operator new(0x18uLL);
      v20[4] = 8;
      *v20 = &v53;
      *(v20 + 1) = &v53;
      v53 = v20;
      v54 = v20;
      v55 = 1;
      v42 = operator new(0x18uLL);
      v42[4] = 17;
      *v42 = v20;
      *(v42 + 1) = &v53;
      *(v20 + 1) = v42;
      v53 = v42;
      v55 = 2;
      v43 = operator new(0x18uLL);
      v43[4] = 10;
      *v43 = v42;
      *(v43 + 1) = &v53;
      *(v42 + 1) = v43;
      v53 = v43;
      v55 = 3;
      v44 = operator new(0x18uLL);
      v44[4] = 14;
      *v44 = v43;
      *(v44 + 1) = &v53;
      *(v43 + 1) = v44;
      v53 = v44;
      v55 = 4;
      v45 = operator new(0x18uLL);
      v45[4] = 16;
      *v45 = v44;
      *(v45 + 1) = &v53;
      *(v44 + 1) = v45;
      v53 = v45;
      v55 = 5;
      result = operator new(0x18uLL);
      *(result + 4) = 18;
      v46 = &v53;
      *result = v45;
      result[1] = &v53;
      *(v45 + 1) = result;
      v19 = 6;
      v53 = result;
      v55 = 6;
      if (a2[2])
      {
        result = a2[1];
        v47 = *(*a2 + 1);
        v48 = *result;
        v48[1] = v47;
        *v47 = v48;
        a2[2] = 0;
        if (result == a2)
        {
          v19 = 6;
        }

        else
        {
          do
          {
            v49 = result[1];
            operator delete(result);
            result = v49;
          }

          while (v49 != a2);
          if (!v55)
          {
            return result;
          }

          v19 = a2[2] + v55;
        }

        result = v53;
        v20 = v54;
        v51 = v53[1];
        v46 = *v54;
      }

      else
      {
        v51 = &v53;
      }

      v46[1] = v51;
      *v51 = v46;
LABEL_36:
      v52 = *a2;
      v52[1] = v20;
      *v20 = v52;
      *a2 = result;
      result[1] = a2;
      goto LABEL_37;
    }

    if (result != 4)
    {
      return result;
    }

    v53 = &v53;
    v54 = &v53;
    v55 = 0;
    v20 = operator new(0x18uLL);
    v20[4] = 10;
    *v20 = &v53;
    *(v20 + 1) = &v53;
    v53 = v20;
    v54 = v20;
    v55 = 1;
    v21 = operator new(0x18uLL);
    v21[4] = 19;
    *v21 = v20;
    *(v21 + 1) = &v53;
    *(v20 + 1) = v21;
    v53 = v21;
    v55 = 2;
    v22 = operator new(0x18uLL);
    v22[4] = 20;
    *v22 = v21;
    *(v22 + 1) = &v53;
    *(v21 + 1) = v22;
    v53 = v22;
    v55 = 3;
    v23 = operator new(0x18uLL);
    v23[4] = 21;
    *v23 = v22;
    *(v23 + 1) = &v53;
    *(v22 + 1) = v23;
    v53 = v23;
    v55 = 4;
    v24 = operator new(0x18uLL);
    v24[4] = 22;
    *v24 = v23;
    *(v24 + 1) = &v53;
    *(v23 + 1) = v24;
    v53 = v24;
    v55 = 5;
    v25 = operator new(0x18uLL);
    v25[4] = 23;
    v26 = &v53;
    *v25 = v24;
    *(v25 + 1) = &v53;
    *(v24 + 1) = v25;
    v53 = v25;
    v55 = 6;
    result = operator new(0x18uLL);
    *(result + 4) = 24;
    *result = v25;
    result[1] = &v53;
    *(v25 + 1) = result;
    v19 = 7;
    v53 = result;
    v55 = 7;
    if (a2[2])
    {
      result = a2[1];
      v27 = *(*a2 + 1);
      v28 = *result;
      v28[1] = v27;
      *v27 = v28;
      a2[2] = 0;
      if (result != a2)
      {
        do
        {
          v29 = result[1];
          operator delete(result);
          result = v29;
        }

        while (v29 != a2);
        goto LABEL_20;
      }

      v19 = 7;
LABEL_34:
      result = v53;
      v20 = v54;
      v50 = v53[1];
      v26 = *v54;
      goto LABEL_35;
    }

LABEL_27:
    v50 = &v53;
LABEL_35:
    v26[1] = v50;
    *v50 = v26;
    goto LABEL_36;
  }

  if (result == 1)
  {
    v53 = &v53;
    v54 = &v53;
    v55 = 0;
    v20 = operator new(0x18uLL);
    v20[4] = 0;
    *v20 = &v53;
    *(v20 + 1) = &v53;
    v53 = v20;
    v54 = v20;
    v55 = 1;
    v30 = operator new(0x18uLL);
    v30[4] = 1;
    *v30 = v20;
    *(v30 + 1) = &v53;
    *(v20 + 1) = v30;
    v53 = v30;
    v55 = 2;
    v31 = operator new(0x18uLL);
    v31[4] = 2;
    *v31 = v30;
    *(v31 + 1) = &v53;
    *(v30 + 1) = v31;
    v53 = v31;
    v55 = 3;
    v32 = operator new(0x18uLL);
    v32[4] = 3;
    *v32 = v31;
    *(v32 + 1) = &v53;
    *(v31 + 1) = v32;
    v53 = v32;
    v55 = 4;
    v33 = operator new(0x18uLL);
    v33[4] = 4;
    *v33 = v32;
    *(v33 + 1) = &v53;
    *(v32 + 1) = v33;
    v53 = v33;
    v55 = 5;
    v34 = operator new(0x18uLL);
    v34[4] = 5;
    *v34 = v33;
    *(v34 + 1) = &v53;
    *(v33 + 1) = v34;
    v53 = v34;
    v55 = 6;
    v35 = operator new(0x18uLL);
    v35[4] = 10;
    *v35 = v34;
    *(v35 + 1) = &v53;
    *(v34 + 1) = v35;
    v53 = v35;
    v55 = 7;
    v36 = operator new(0x18uLL);
    v36[4] = 12;
    *v36 = v35;
    *(v36 + 1) = &v53;
    *(v35 + 1) = v36;
    v53 = v36;
    v55 = 8;
    v37 = operator new(0x18uLL);
    v37[4] = 14;
    *v37 = v36;
    *(v37 + 1) = &v53;
    *(v36 + 1) = v37;
    v53 = v37;
    v55 = 9;
    v38 = operator new(0x18uLL);
    v38[4] = 11;
    v26 = &v53;
    *v38 = v37;
    *(v38 + 1) = &v53;
    *(v37 + 1) = v38;
    v53 = v38;
    v55 = 10;
    result = operator new(0x18uLL);
    *(result + 4) = 15;
    *result = v38;
    result[1] = &v53;
    *(v38 + 1) = result;
    v19 = 11;
    v53 = result;
    v55 = 11;
    if (a2[2])
    {
      result = a2[1];
      v39 = *(*a2 + 1);
      v40 = *result;
      v40[1] = v39;
      *v39 = v40;
      a2[2] = 0;
      if (result != a2)
      {
        do
        {
          v41 = result[1];
          operator delete(result);
          result = v41;
        }

        while (v41 != a2);
LABEL_20:
        if (!v55)
        {
          return result;
        }

        v19 = a2[2] + v55;
        goto LABEL_34;
      }

      v19 = 11;
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  if (result == 2)
  {
    v53 = &v53;
    v54 = &v53;
    v55 = 0;
    v4 = operator new(0x18uLL);
    v4[4] = 6;
    *v4 = &v53;
    *(v4 + 1) = &v53;
    v53 = v4;
    v54 = v4;
    v55 = 1;
    v5 = operator new(0x18uLL);
    v5[4] = 7;
    *v5 = v4;
    *(v5 + 1) = &v53;
    *(v4 + 1) = v5;
    v53 = v5;
    v55 = 2;
    v6 = operator new(0x18uLL);
    v6[4] = 8;
    *v6 = v5;
    *(v6 + 1) = &v53;
    *(v5 + 1) = v6;
    v53 = v6;
    v55 = 3;
    v7 = operator new(0x18uLL);
    v7[4] = 9;
    *v7 = v6;
    *(v7 + 1) = &v53;
    *(v6 + 1) = v7;
    v53 = v7;
    v55 = 4;
    v8 = operator new(0x18uLL);
    v8[4] = 10;
    *v8 = v7;
    *(v8 + 1) = &v53;
    *(v7 + 1) = v8;
    v53 = v8;
    v55 = 5;
    result = capabilities::abs::supportsETSProtocol(v8);
    if (result)
    {
      result = operator new(0x18uLL);
      *(result + 4) = 13;
      v9 = v53;
      *result = v53;
      result[1] = &v53;
      v9[1] = result;
      v53 = result;
      ++v55;
    }

    if (a2[2])
    {
      result = a2[1];
      v10 = *(*a2 + 1);
      v11 = *result;
      v11[1] = v10;
      *v10 = v11;
      a2[2] = 0;
      if (result != a2)
      {
        do
        {
          v12 = result[1];
          operator delete(result);
          result = v12;
        }

        while (v12 != a2);
      }
    }

    v13 = v55;
    if (v55)
    {
      v15 = v53;
      v14 = v54;
      v16 = v53[1];
      v17 = *v54;
      v17[1] = v16;
      *v16 = v17;
      v18 = *a2;
      v18[1] = v14;
      *v14 = v18;
      *a2 = v15;
      v15[1] = a2;
      v19 = a2[2] + v13;
LABEL_37:
      a2[2] = v19;
    }
  }

  return result;
}

void sub_2975BD43C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::list<std::pair<unsigned long long,unsigned int>>::~list(va);
  std::list<std::pair<unsigned long long,unsigned int>>::~list(v2);
  _Unwind_Resume(a1);
}

void sub_2975BD45C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<std::pair<unsigned long long,unsigned int>>::clear(va);
  std::list<std::pair<unsigned long long,unsigned int>>::~list(v2);
  _Unwind_Resume(a1);
}

void BasebandTransport::getSupportedProtocolsAsStringLowerCase(BasebandTransport *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  memset(v15, 170, sizeof(v15));
  BasebandTransport::getSupportedProtocols(this, v15);
  for (i = v15[1]; i != v15; i = i[1])
  {
    v4 = *(i + 4);
    memset(__p, 170, sizeof(__p));
    BasebandTransport::asString(v4, __p);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v5 = (__p + HIBYTE(__p[2]));
    }

    else
    {
      v5 = (__p[0] + __p[1]);
    }

    if (SHIBYTE(__p[2]) >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    for (; v6 != v5; v6 = (v6 + 1))
    {
      *v6 = __tolower(*v6);
    }

    v7 = operator new(0x28uLL);
    v8 = v7;
    *v7 = 0;
    *(v7 + 1) = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
      std::string::__init_copy_ctor_external((v7 + 16), __p[0], __p[1]);
    }

    else
    {
      *(v7 + 1) = *__p;
      *(v7 + 4) = __p[2];
    }

    v9 = *a2;
    *v8 = *a2;
    v8[1] = a2;
    *(v9 + 8) = v8;
    *a2 = v8;
    ++a2[2];
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v15[2])
  {
    v10 = v15[1];
    v11 = *(v15[0] + 1);
    v12 = *v15[1];
    *(v12 + 8) = v11;
    *v11 = v12;
    v15[2] = 0;
    if (v10 != v15)
    {
      do
      {
        v13 = v10[1];
        operator delete(v10);
        v10 = v13;
      }

      while (v13 != v15);
    }
  }
}

void sub_2975BD62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v17 = v16;
  operator delete(v17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::list<std::pair<unsigned long long,unsigned int>>::~list(&a15);
  std::list<std::string>::~list(v15);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransport::asStringLowerCase@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(a2, 170, 24);
  result = BasebandTransport::asString(a1, a2);
  v4 = *(a2 + 23);
  v5 = v4;
  v6 = a2 + v4;
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = (*a2 + a2[1]);
  }

  if (v5 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  for (; v8 != v7; ++v8)
  {
    result = __tolower(*v8);
    *v8 = result;
  }

  return result;
}

void sub_2975BD6E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *std::list<std::string>::~list(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v6 = *(v2 + 1);
        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != a1);
    }
  }

  return a1;
}

void BasebandTransport::getSupportedProtocolsAsString(BasebandTransport *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  memset(v14, 170, sizeof(v14));
  BasebandTransport::getSupportedProtocols(this, v14);
  for (i = v14[1]; i != v14; i = i[1])
  {
    BasebandTransport::asString(*(i + 4), __p);
    v4 = operator new(0x28uLL);
    v5 = v4;
    *v4 = 0;
    *(v4 + 1) = 0;
    v6 = SHIBYTE(v13);
    if (SHIBYTE(v13) < 0)
    {
      std::string::__init_copy_ctor_external((v4 + 16), __p[0], __p[1]);
    }

    else
    {
      *(v4 + 1) = *__p;
      *(v4 + 4) = v13;
    }

    v7 = *a2;
    *v5 = *a2;
    v5[1] = a2;
    *(v7 + 8) = v5;
    *a2 = v5;
    ++a2[2];
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v14[2])
  {
    v8 = v14[1];
    v9 = *(v14[0] + 1);
    v10 = *v14[1];
    *(v10 + 8) = v9;
    *v9 = v10;
    v14[2] = 0;
    if (v8 != v14)
    {
      do
      {
        v11 = v8[1];
        operator delete(v8);
        v8 = v11;
      }

      while (v11 != v14);
    }
  }
}

void sub_2975BD8C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v18 = v16;
  operator delete(v18);
  operator delete(v17);
  std::list<std::pair<unsigned long long,unsigned int>>::~list(&a15);
  std::list<std::string>::~list(v15);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransport::asString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  switch(result)
  {
    case 0:
      a2[23] = 3;
      *a2 = 16976;
      a2[2] = 76;
      a2[3] = 0;
      break;
    case 1:
      a2[23] = 3;
      *a2 = 16979;
      a2[2] = 76;
      a2[3] = 0;
      break;
    case 2:
      a2[23] = 4;
      strcpy(a2, "DIAG");
      break;
    case 3:
      a2[23] = 4;
      strcpy(a2, "REFS");
      break;
    case 4:
      a2[23] = 5;
      *a2 = 1481985361;
      a2[4] = 49;
      a2[5] = 0;
      break;
    case 5:
      a2[23] = 5;
      *a2 = 1481985361;
      a2[4] = 50;
      a2[5] = 0;
      break;
    case 6:
      a2[23] = 3;
      *a2 = 20306;
      a2[2] = 77;
      a2[3] = 0;
      break;
    case 7:
      a2[23] = 4;
      strcpy(a2, "BOOT");
      break;
    case 8:
      a2[23] = 3;
      *a2 = 21057;
      a2[2] = 73;
      a2[3] = 0;
      break;
    case 9:
      a2[23] = 3;
      *a2 = 21587;
      a2[2] = 84;
      a2[3] = 0;
      break;
    case 10:
      a2[23] = 2;
      strcpy(a2, "AT");
      break;
    case 11:
      a2[23] = 4;
      strcpy(a2, "ADPL");
      break;
    case 12:
      a2[23] = 8;
      strcpy(a2, "MEDIACTL");
      break;
    case 13:
      a2[23] = 3;
      *a2 = 21573;
      a2[2] = 83;
      a2[3] = 0;
      break;
    case 14:
      a2[23] = 4;
      strcpy(a2, "GNSS");
      break;
    case 15:
      a2[23] = 4;
      strcpy(a2, "QDSS");
      break;
    case 16:
      a2[23] = 5;
      *a2 = 1414808402;
      a2[4] = 72;
      a2[5] = 0;
      break;
    case 17:
      a2[23] = 3;
      *a2 = 17217;
      a2[2] = 80;
      a2[3] = 0;
      break;
    case 18:
      a2[23] = 4;
      strcpy(a2, "VCOM");
      break;
    case 19:
      a2[23] = 4;
      strcpy(a2, "MIPC");
      break;
    case 20:
      a2[23] = 3;
      *a2 = 18500;
      a2[2] = 76;
      a2[3] = 0;
      break;
    case 21:
      a2[23] = 3;
      *a2 = 21837;
      a2[2] = 88;
      a2[3] = 0;
      break;
    case 22:
      a2[23] = 3;
      *a2 = 16710;
      a2[2] = 67;
      a2[3] = 0;
      break;
    case 23:
      a2[23] = 3;
      *a2 = 17734;
      a2[2] = 80;
      a2[3] = 0;
      break;
    case 24:
      a2[23] = 7;
      strcpy(a2, "IQTRACE");
      break;
    default:
      a2[23] = 7;
      strcpy(a2, "Unknown");
      break;
  }

  return result;
}

{
  if (result > 1)
  {
    if (result != 2)
    {
      if (result == 3)
      {
        a2[23] = 7;
        strcpy(a2, "Stalled");
        return result;
      }

      goto LABEL_8;
    }

    a2[23] = 5;
    *a2 = 1869771333;
    a2[4] = 114;
    a2[5] = 0;
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        a2[23] = 5;
        *a2 = 1684104530;
        a2[4] = 121;
        a2[5] = 0;
        return result;
      }

LABEL_8:
      a2[23] = 7;
      strcpy(a2, "Unknown");
      return result;
    }

    a2[23] = 8;
    strcpy(a2, "NotReady");
  }

  return result;
}

uint64_t BasebandTransport::asProtocol(char *__s1)
{
  v1 = __s1;
  if ((__s1[23] & 0x80000000) == 0)
  {
    result = strcmp(__s1, "PBL");
    if (!result)
    {
      return result;
    }

    if (!strcmp(v1, "SBL"))
    {
      return 1;
    }

    if (strcasecmp(v1, "DIAG"))
    {
      if (strcasecmp(v1, "REFS"))
      {
        if (strcasecmp(v1, "QMUX1"))
        {
          if (strcasecmp(v1, "QMUX2"))
          {
            if (strcasecmp(v1, "ROM"))
            {
              if (strcasecmp(v1, "BOOT"))
              {
                if (strcasecmp(v1, "ARI"))
                {
                  if (strcasecmp(v1, "STT"))
                  {
                    if (strcasecmp(v1, "AT"))
                    {
                      if (strcasecmp(v1, "ADPL"))
                      {
                        if (strcasecmp(v1, "MEDIACTL"))
                        {
                          if (strcasecmp(v1, "ETS"))
                          {
                            if (strcasecmp(v1, "GNSS"))
                            {
                              if (strcasecmp(v1, "QDSS"))
                              {
                                if (strcasecmp(v1, "RCTTH"))
                                {
                                  if (strcasecmp(v1, "ACP"))
                                  {
                                    if (strcasecmp(v1, "VCOM"))
                                    {
                                      if (strcasecmp(v1, "MIPC"))
                                      {
                                        if (strcasecmp(v1, "DHL"))
                                        {
                                          if (strcasecmp(v1, "MUX"))
                                          {
                                            if (strcasecmp(v1, "FAC"))
                                            {
                                              if (strcasecmp(v1, "FEP"))
                                              {
                                                goto LABEL_26;
                                              }

                                              return 23;
                                            }

                                            return 22;
                                          }

                                          return 21;
                                        }

                                        return 20;
                                      }

                                      return 19;
                                    }

                                    return 18;
                                  }

                                  return 17;
                                }

                                return 16;
                              }

                              return 15;
                            }

                            return 14;
                          }

                          return 13;
                        }

                        return 12;
                      }

                      return 11;
                    }

                    return 10;
                  }

                  return 9;
                }

                return 8;
              }

              return 7;
            }

            return 6;
          }

          return 5;
        }

        return 4;
      }

      return 3;
    }

    return 2;
  }

  v1 = *__s1;
  result = strcmp(*__s1, "PBL");
  if (!result)
  {
    return result;
  }

  if (!strcmp(v1, "SBL"))
  {
    return 1;
  }

  if (!strcasecmp(v1, "DIAG"))
  {
    return 2;
  }

  if (!strcasecmp(v1, "REFS"))
  {
    return 3;
  }

  if (!strcasecmp(v1, "QMUX1"))
  {
    return 4;
  }

  if (!strcasecmp(v1, "QMUX2"))
  {
    return 5;
  }

  if (!strcasecmp(v1, "ROM"))
  {
    return 6;
  }

  if (!strcasecmp(v1, "BOOT"))
  {
    return 7;
  }

  if (!strcasecmp(v1, "ARI"))
  {
    return 8;
  }

  if (!strcasecmp(v1, "STT"))
  {
    return 9;
  }

  if (!strcasecmp(v1, "AT"))
  {
    return 10;
  }

  if (!strcasecmp(v1, "ADPL"))
  {
    return 11;
  }

  if (!strcasecmp(v1, "MEDIACTL"))
  {
    return 12;
  }

  if (!strcasecmp(v1, "ETS"))
  {
    return 13;
  }

  if (!strcasecmp(v1, "GNSS"))
  {
    return 14;
  }

  if (!strcasecmp(v1, "QDSS"))
  {
    return 15;
  }

  if (!strcasecmp(v1, "RCTTH"))
  {
    return 16;
  }

  if (!strcasecmp(v1, "ACP"))
  {
    return 17;
  }

  if (!strcasecmp(v1, "VCOM"))
  {
    return 18;
  }

  if (!strcasecmp(v1, "MIPC"))
  {
    return 19;
  }

  if (!strcasecmp(v1, "DHL"))
  {
    return 20;
  }

  if (!strcasecmp(v1, "MUX"))
  {
    return 21;
  }

  if (!strcasecmp(v1, "FAC"))
  {
    return 22;
  }

  if (!strcasecmp(v1, "FEP"))
  {
    return 23;
  }

LABEL_26:
  if (!strcasecmp(v1, "IQTRACE"))
  {
    return 24;
  }

  else
  {
    return 25;
  }
}

uint64_t BasebandTransport::getDefaultTransportIOReadSize(capabilities::radio *a1)
{
  v1 = a1;
  v2 = capabilities::radio::dal(a1);
  if (v2)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0x4000;
  }

  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v2);
  if (shouldUseMinBasebandTransportIOReadSize)
  {
    return v3;
  }

  if (v1 == 17)
  {
    return 0x80000;
  }

  if (v1 == 21 || v1 == 20)
  {
    return 61440;
  }

  v6 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
  if (v1 == 10 && (v6 & 1) != 0)
  {
    return 3584;
  }

  if ((v1 - 19) > 5)
  {
    return 0x8000;
  }

  return dword_2976A40E0[v1 - 19];
}

uint64_t BasebandTransport::getDefaultTransportIOReadCount(capabilities::abs *a1)
{
  v1 = a1;
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(a1);
  if (shouldUseMinBasebandTransportIOReadCount)
  {
    return 4;
  }

  switch(v1)
  {
    case 17:
      return 16;
    case 21:
      return 15;
    case 20:
      return 63;
  }

  v4 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
  if (v1 == 10 && (v4 & 1) != 0)
  {
    return 15;
  }

  if (v1 <= 18)
  {
    if (v1 != 2)
    {
      if (v1 == 15 || v1 == 16)
      {
        return 36;
      }

      return 4;
    }

    return 16;
  }

  result = 31;
  if (v1 > 22)
  {
    if (v1 != 23)
    {
      if (v1 == 24)
      {
        return 86;
      }

      return 4;
    }
  }

  else if (v1 != 19)
  {
    return 15;
  }

  return result;
}

double BasebandTransport::Status::Status(BasebandTransport::Status *this)
{
  *this = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double BasebandTransport::Status::init(BasebandTransport::Status *this)
{
  *this = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t BasebandTransport::Status::toString@<X0>(BasebandTransport::Status *this@<X0>, _BYTE *a2@<X8>)
{
  v46 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45[7] = v4;
  v45[8] = v4;
  v45[5] = v4;
  v45[6] = v4;
  v45[3] = v4;
  v45[4] = v4;
  v45[1] = v4;
  v45[2] = v4;
  v44 = v4;
  v45[0] = v4;
  *v42 = v4;
  v43 = v4;
  v40 = v4;
  v41 = v4;
  v38 = v4;
  v39 = v4;
  v37 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v37);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "State: ", 7);
  v6 = *this;
  if (*this > 1)
  {
    if (v6 == 2)
    {
      v7 = 5;
      v36 = 5;
      LODWORD(__p[0]) = 1869771333;
      v8 = 114;
      goto LABEL_12;
    }

    if (v6 == 3)
    {
      v7 = 7;
      v36 = 7;
      LODWORD(__p[0]) = 1818326099;
      v9 = 1684368492;
LABEL_9:
      *(__p + 3) = v9;
      goto LABEL_13;
    }

LABEL_8:
    v7 = 7;
    v36 = 7;
    LODWORD(__p[0]) = 1852534357;
    v9 = 1853321070;
    goto LABEL_9;
  }

  if (!v6)
  {
    v7 = 8;
    v36 = 8;
    __p[0] = 0x7964616552746F4ELL;
    goto LABEL_13;
  }

  if (v6 != 1)
  {
    goto LABEL_8;
  }

  v7 = 5;
  v36 = 5;
  LODWORD(__p[0]) = 1684104530;
  v8 = 121;
LABEL_12:
  BYTE4(__p[0]) = v8;
LABEL_13:
  *(__p + v7) = 0;
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, __p, v7);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", ", 2);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Async: ", 7);
  *(v12 + *(*v12 - 24) + 8) |= 1u;
  v13 = *(this + 4);
  v14 = MEMORY[0x29C271B40]();
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", ", 2);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Total Rx: ", 10);
  v17 = MEMORY[0x29C271BB0](v16, *(this + 1) >> 10);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " KB, ", 5);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Total Tx: ", 10);
  v20 = MEMORY[0x29C271BB0](v19, *(this + 2) >> 10);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " KB, ", 5);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Total RX: ", 10);
  v23 = MEMORY[0x29C271BB0](v22, *(this + 1));
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " B, ", 4);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Total TX: ", 10);
  v26 = MEMORY[0x29C271BB0](v25, *(this + 2));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " B", 2);
  if ((v36 & 0x80000000) == 0)
  {
    v27 = BYTE8(v44);
    if ((BYTE8(v44) & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v29 = v44;
    if (v44 < *(&v41 + 1))
    {
      *&v44 = *(&v41 + 1);
      v29 = *(&v41 + 1);
    }

    v30 = v41;
    v28 = v29 - v41;
    if ((v29 - v41) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_33;
    }

    goto LABEL_21;
  }

  operator delete(__p[0]);
  v27 = BYTE8(v44);
  if ((BYTE8(v44) & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  if ((v27 & 8) == 0)
  {
    v28 = 0;
    a2[23] = 0;
    goto LABEL_29;
  }

  v30 = *(&v39 + 1);
  v28 = *(&v40 + 1) - *(&v39 + 1);
  if (*(&v40 + 1) - *(&v39 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
  {
LABEL_33:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_21:
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

    v32 = operator new(v31);
    *(a2 + 1) = v28;
    *(a2 + 2) = v31 | 0x8000000000000000;
    *a2 = v32;
    a2 = v32;
    goto LABEL_28;
  }

  a2[23] = v28;
  if (v28)
  {
LABEL_28:
    memmove(a2, v30, v28);
  }

LABEL_29:
  a2[v28] = 0;
  *&v37 = *MEMORY[0x29EDC9528];
  v33 = *(MEMORY[0x29EDC9528] + 72);
  *(&v37 + *(v37 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v38 = v33;
  *(&v38 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[1]);
  }

  *(&v38 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v39);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C271DA0](v45);
}

void sub_2975BE86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_2975BE880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransport::Parameters::toString@<X0>(BasebandTransport::Parameters *this@<X0>, _BYTE *a2@<X8>)
{
  v49 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48[7] = v4;
  v48[8] = v4;
  v48[5] = v4;
  v48[6] = v4;
  v48[3] = v4;
  v48[4] = v4;
  v48[1] = v4;
  v48[2] = v4;
  v47 = v4;
  v48[0] = v4;
  *v45 = v4;
  v46 = v4;
  v43 = v4;
  v44 = v4;
  v41 = v4;
  v42 = v4;
  v40 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v40);
  BasebandTransport::asString(*this, v35);
  v5 = v36;
  if ((v36 & 0x80u) == 0)
  {
    v6 = v36;
  }

  else
  {
    v6 = v35[1];
  }

  v7 = v6 + 10;
  if (v6 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 < 0x17)
  {
    v38 = 8250;
    v39 = 0;
    HIBYTE(v39) = v6 + 10;
    __p = *"Protocol: ";
    v10 = &v38 + 2;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v7 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v7 | 7) + 1;
    }

    v9 = operator new(v8);
    v38 = v6 + 10;
    v39 = v8 | 0x8000000000000000;
    __p = v9;
    *(v9 + 4) = 8250;
    *v9 = *"Protocol: ";
    v10 = v9 + 10;
  }

  if (v5 >= 0)
  {
    v11 = v35;
  }

  else
  {
    v11 = v35[0];
  }

  memmove(v10, v11, v6);
LABEL_15:
  v10[v6] = 0;
  if (v39 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v39 >= 0)
  {
    v13 = HIBYTE(v39);
  }

  else
  {
    v13 = v38;
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, p_p, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", ", 2);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Powersave: ", 11);
  *(v16 + *(*v16 - 24) + 8) |= 1u;
  v17 = *(this + 4);
  v18 = MEMORY[0x29C271B40]();
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", ", 2);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Create Timeout: ", 16);
  v21 = MEMORY[0x29C271BA0](v20, *(this + 1));
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " sec, ", 6);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "IO Size: ", 9);
  v24 = MEMORY[0x29C271B70](v23, *(this + 4) >> 10);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " KB, ", 5);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Num Pending Reads: ", 19);
  MEMORY[0x29C271B70](v26, *(this + 5));
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
    if ((v5 & 0x80000000) == 0)
    {
LABEL_23:
      v27 = BYTE8(v47);
      if ((BYTE8(v47) & 0x10) == 0)
      {
        goto LABEL_24;
      }

LABEL_28:
      v29 = v47;
      if (v47 < *(&v44 + 1))
      {
        *&v47 = *(&v44 + 1);
        v29 = *(&v44 + 1);
      }

      v30 = v44;
      v28 = v29 - v44;
      if ((v29 - v44) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_43;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

  operator delete(v35[0]);
  v27 = BYTE8(v47);
  if ((BYTE8(v47) & 0x10) != 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  if ((v27 & 8) == 0)
  {
    v28 = 0;
    a2[23] = 0;
    goto LABEL_39;
  }

  v30 = *(&v42 + 1);
  v28 = *(&v43 + 1) - *(&v42 + 1);
  if (*(&v43 + 1) - *(&v42 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
  {
LABEL_43:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_31:
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

    v32 = operator new(v31);
    *(a2 + 1) = v28;
    *(a2 + 2) = v31 | 0x8000000000000000;
    *a2 = v32;
    a2 = v32;
    goto LABEL_38;
  }

  a2[23] = v28;
  if (v28)
  {
LABEL_38:
    memmove(a2, v30, v28);
  }

LABEL_39:
  a2[v28] = 0;
  *&v40 = *MEMORY[0x29EDC9528];
  v33 = *(MEMORY[0x29EDC9528] + 72);
  *(&v40 + *(v40 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v41 = v33;
  *(&v41 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[1]);
  }

  *(&v41 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v42);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C271DA0](v48);
}

void sub_2975BEDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_2975BEDF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if ((v18 & 0x80000000) == 0)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

void BasebandTransport::BasebandTransport(BasebandTransport *this, queue a2, qos_class_t a3)
{
  *this = &unk_2A1E4A458;
  ctu::OsLogContext::OsLogContext(v18, "com.apple.telephony.abm", "ipc.bb");
  v6 = dispatch_queue_attr_make_with_qos_class(0, a3, 0);
  v7 = dispatch_queue_create("ipc.bb", v6);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = v7;
  if (v7)
  {
    v8 = v7;
    dispatch_retain(v7);
    *(this + 4) = 0;
    dispatch_release(v8);
  }

  else
  {
    *(this + 4) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](this + 40, v19);
  MEMORY[0x29C270D60](v19);
  ctu::OsLogContext::~OsLogContext(v18);
  *this = &unk_2A1E4A458;
  *(this + 12) = 25;
  *(this + 52) = 0;
  *(this + 7) = 10;
  v10 = capabilities::radio::dal(v9);
  v11 = v10;
  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v10);
  if (v11)
  {
    v13 = 1024;
  }

  else
  {
    v13 = 0x4000;
  }

  if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
  {
    shouldUseMinBasebandTransportIOReadSize = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
    v13 = 0x8000;
  }

  *(this + 16) = v13;
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadSize);
  if ((shouldUseMinBasebandTransportIOReadCount & 1) == 0)
  {
    capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
  }

  *(this + 17) = 4;
  *(this + 9) = 0;
  *(this + 80) = 0;
  v15 = *a2.fObj.fObj;
  *(this + 11) = 0;
  *(this + 12) = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  *(this + 13) = 0;
  *(this + 14) = 0;
  v16 = *MEMORY[0x29EDB8ED8];
  Controller = TelephonyBasebandCreateController();
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 26) = Controller;
  *(this + 229) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 30) = 0;
  *(this + 33) = dispatch_group_create();
  *(this + 68) = 0;
  *(this + 276) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 309) = 0;
  *(this + 88) = a3;
  *(this + 45) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 25) = 0;
}

void sub_2975BF010(_Unwind_Exception *a1)
{
  v5 = v1[14];
  if (v5)
  {
    _Block_release(v5);
  }

  if (*v3)
  {
    _Block_release(*v3);
  }

  v6 = v1[12];
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = v1[11];
  if (v7)
  {
    _Block_release(v7);
  }

  MEMORY[0x29C270D60](v1 + 5);
  ctu::SharedSynchronizable<data::TransportService::State>::~SharedSynchronizable(v2);
  _Unwind_Resume(a1);
}

void BasebandTransport::~BasebandTransport(BasebandTransport *this)
{
  *this = &unk_2A1E4A458;
  v2 = *(this + 28);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 28));
    *(this + 28) = 0;
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v17, 2u);
    }
  }

  (*(*this + 48))(this);
  v4 = *(this + 26);
  if (v4)
  {
    CFRelease(v4);
    *(this + 26) = 0;
  }

  v5 = *(this + 30);
  if (v5)
  {
    operator delete[](v5);
    *(this + 30) = 0;
  }

  v6 = *(this + 45);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 33);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 32);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 27);
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(this + 14);
  if (v10)
  {
    _Block_release(v10);
  }

  v11 = *(this + 13);
  if (v11)
  {
    _Block_release(v11);
  }

  v12 = *(this + 12);
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = *(this + 11);
  if (v13)
  {
    _Block_release(v13);
  }

  MEMORY[0x29C270D60](this + 40);
  v14 = *(this + 4);
  if (v14)
  {
    dispatch_release(v14);
  }

  v15 = *(this + 3);
  if (v15)
  {
    dispatch_release(v15);
  }

  v16 = *(this + 2);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }
}

{
  BasebandTransport::~BasebandTransport(this);

  operator delete(v1);
}

void BasebandTransport::timerOff_sync(BasebandTransport *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 28));
    *(this + 28) = 0;
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v4, 2u);
    }
  }
}

void BasebandTransport::create(BasebandTransport *this@<X0>, queue a2@<0:X1>, BasebandTransportICE **a3@<X8>)
{
  fObj = a2.fObj.fObj;
  *a3 = 0;
  a3[1] = 0;
  v7 = capabilities::radio::vendor(this);
  if ((v7 - 3) >= 2)
  {
    if (v7 != 2)
    {
      return;
    }

    v8 = operator new(0x1E0uLL);
    v14 = *this;
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    v15.fObj.fObj = &object;
    BasebandTransportICE::BasebandTransportICE(v8, v15, fObj);
    v16 = operator new(0x20uLL);
    v16->__shared_owners_ = 0;
    p_shared_owners = &v16->__shared_owners_;
    v16->__vftable = &unk_2A1E4A6F8;
    v16->__shared_weak_owners_ = 0;
    v16[1].__vftable = v8;
    v18 = *(v8 + 2);
    if (v18)
    {
      if (v18->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        *(v8 + 1) = v8;
        *(v8 + 2) = v16;
        std::__shared_weak_count::__release_weak(v18);
        if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_14:
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
          *a3 = v8;
          a3[1] = v16;
          v9 = object;
          if (!object)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *(v8 + 1) = v8;
      *(v8 + 2) = v16;
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_14;
      }
    }

    *a3 = v8;
    a3[1] = v16;
    v9 = object;
    if (!object)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v8 = operator new(0x170uLL);
  v9 = *this;
  v19 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10.fObj.fObj = &v19;
  BasebandTransport::BasebandTransport(v8, v10, fObj);
  v11 = operator new(0x20uLL);
  v11->__shared_owners_ = 0;
  v12 = &v11->__shared_owners_;
  v11->__vftable = &unk_2A1E4A748;
  v11->__shared_weak_owners_ = 0;
  v11[1].__vftable = v8;
  v13 = *(v8 + 2);
  if (!v13)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v8 + 1) = v8;
    *(v8 + 2) = v11;
    if (atomic_fetch_add(v12, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v13->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v8 + 1) = v8;
    *(v8 + 2) = v11;
    std::__shared_weak_count::__release_weak(v13);
    if (!atomic_fetch_add(v12, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_17:
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_18:
  *a3 = v8;
  a3[1] = v11;
  if (v9)
  {
LABEL_19:
    dispatch_release(v9);
  }

LABEL_20:
  BasebandTransport::init(v8);
}

void sub_2975BF56C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<BasebandTransportICE> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportICE>(BasebandTransportICE*)::{lambda(BasebandTransportICE*)#1}::operator() const(BasebandTransportICE*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void BasebandTransport::init(BasebandTransport *this)
{
  v5 = *(this + 1);
  v3 = *(this + 2);
  v4 = this + 8;
  if (!v3 || (v6 = std::__shared_weak_count::lock(v3)) == 0)
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

  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN17BasebandTransport4initEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_56_2;
  v11[4] = this;
  v11[5] = v5;
  v12 = v7;
  v13 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98_0;
  block[4] = v4;
  block[5] = &v13;
  v9 = *(this + 3);
  if (!*(this + 4))
  {
    dispatch_sync(v9, block);
    v10 = v12;
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v9, block);
  v10 = v12;
  if (v12)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v7);
}

void ___ZN17BasebandTransport4initEv_block_invoke(capabilities::ipc *a1)
{
  v2 = *(a1 + 4);
  if (capabilities::ipc::supportsPCI(a1))
  {
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN17BasebandTransport4initEv_block_invoke_2;
    aBlock[3] = &__block_descriptor_tmp_37;
    v4 = *(a1 + 5);
    v3 = *(a1 + 6);
    aBlock[4] = v2;
    aBlock[5] = v4;
    v14 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = _Block_copy(aBlock);
    v6 = *(v2 + 104);
    *(v2 + 104) = v5;
    if (v6)
    {
      _Block_release(v6);
    }

    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 1174405120;
    v11[2] = ___ZN17BasebandTransport4initEv_block_invoke_48;
    v11[3] = &__block_descriptor_tmp_52_4;
    v8 = *(a1 + 5);
    v7 = *(a1 + 6);
    v11[4] = v2;
    v11[5] = v8;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = _Block_copy(v11);
    v10 = *(v2 + 112);
    *(v2 + 112) = v9;
    if (v10)
    {
      _Block_release(v10);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }
  }
}

void ___ZN17BasebandTransport4initEv_block_invoke_2(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x29EDCA608];
  v5 = a1[6];
  if (v5)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v5);
    if (v10)
    {
      v11 = v10;
      if (a1[5])
      {
        v12 = *(v9 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          v24 = a2;
          v25 = 2048;
          v26 = a3;
          v27 = 2048;
          v28 = a4;
          _os_log_error_impl(&dword_297476000, v12, OS_LOG_TYPE_ERROR, "PCI Transport Status: 0x%x (0x%08lx, 0x%08lx)", buf, 0x1Cu);
        }

        *(v9 + 272) = 2 * (a2 != 0);
        *(v9 + 296) = vsubq_s64(*(v9 + 280), *(v9 + 320));
        v13 = *(v9 + 216);
        if (v13)
        {
          v14 = _Block_copy(v13);
          v15 = v14;
          v20 = *(v9 + 272);
          v21 = *(v9 + 288);
          v22 = *(v9 + 304);
          v16 = *(v9 + 96);
          v17 = v14 ? _Block_copy(v14) : 0;
          v18 = operator new(0x30uLL);
          *v18 = v17;
          *(v18 + 8) = v20;
          *(v18 + 24) = v21;
          *(v18 + 5) = v22;
          dispatch_async_f(v16, v18, _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_);
          if (v15)
          {
            _Block_release(v15);
          }
        }
      }

      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

  v19 = *MEMORY[0x29EDCA608];
}

void sub_2975BFAD8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

int64x2_t BasebandTransport::updateDeltas_sync(BasebandTransport *this)
{
  result = vsubq_s64(*(this + 280), *(this + 20));
  *(this + 296) = result;
  return result;
}

uint64_t __copy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrI17BasebandTransportEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrI17BasebandTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN17BasebandTransport4initEv_block_invoke_48(void *a1, int a2, void *a3, unsigned int a4)
{
  v32 = *MEMORY[0x29EDCA608];
  v6 = a1[4];
  v28 = 0;
  v7 = a1[6];
  if (v7 && (v28 = std::__shared_weak_count::lock(v7)) != 0 && (v10 = a1[5]) != 0)
  {
    v11 = *(v10 + 264);
    if (v11)
    {
      dispatch_retain(*(v10 + 264));
      dispatch_group_enter(v11);
    }

    if (a2)
    {
      v12 = *(v6 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(__p) = 67109120;
        HIDWORD(__p) = a2;
        _os_log_debug_impl(&dword_297476000, v12, OS_LOG_TYPE_DEBUG, "#D Async read error 0x%08x", &__p, 8u);
      }
    }

    else
    {
      *(v6 + 280) += a4;
      v14 = *(v6 + 88);
      if (v14)
      {
        v15 = _Block_copy(v14);
        v16 = *(v6 + 72);
        if (v16)
        {
          __p = 0;
          v30 = 0;
          v31 = 0;
          (*(*v16 + 8))(v16, a3, a4, &__p);
          v17 = *(v6 + 96);
          if (v15)
          {
            v18 = _Block_copy(v15);
          }

          else
          {
            v18 = 0;
          }

          v22 = __p;
          v23 = v30 - __p;
          if (v30 == __p)
          {
            v25 = 0;
            v24 = 0;
          }

          else
          {
            if ((v23 & 0x8000000000000000) != 0)
            {
              std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
            }

            v24 = operator new(v30 - __p);
            v25 = &v24[v23];
            memcpy(v24, v22, v23);
          }

          v26 = operator new(0x20uLL);
          *v26 = v18;
          v26[1] = v24;
          v26[2] = v25;
          v26[3] = v25;
          dispatch_async_f(v17, v26, _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_);
          if (__p)
          {
            v30 = __p;
            operator delete(__p);
          }
        }

        else
        {
          v19 = *(v6 + 80);
          v20 = *(v6 + 96);
          if (v15)
          {
            v21 = _Block_copy(v15);
          }

          else
          {
            v21 = 0;
          }

          v27 = operator new(0x18uLL);
          *v27 = v21;
          v27[1] = a3;
          *(v27 + 4) = a4;
          *(v27 + 20) = v19;
          dispatch_async_f(v20, v27, _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_);
          a3 = 0;
        }

        if (v15)
        {
          _Block_release(v15);
        }
      }
    }

    if (a3 && (*(v6 + 80) & 1) == 0)
    {
      free(a3);
    }

    if (v11)
    {
      dispatch_group_leave(v11);
      dispatch_release(v11);
    }
  }

  else if (a3)
  {
    free(a3);
  }

  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_2975BFE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t BasebandTransport::open(BasebandTransport *a1, __int128 *a2, void **a3)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  BasebandTransport::stopReader(a1);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZN17BasebandTransport4openENS_10ParametersEN8dispatch5blockIU13block_pointerFvPhjEEE_block_invoke;
  v12[3] = &unk_2A1E4A528;
  v12[5] = a1;
  v6 = a2[1];
  v13 = *a2;
  v14 = v6;
  v15 = *(a2 + 4);
  v7 = *a3;
  if (*a3)
  {
    v7 = _Block_copy(v7);
  }

  aBlock = v7;
  v12[4] = &v17;
  v21 = v12;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98_0;
  block[4] = a1 + 8;
  block[5] = &v21;
  v8 = *(a1 + 3);
  if (*(a1 + 4))
  {
    dispatch_async_and_wait(v8, block);
    v9 = *(v18 + 24);
    v10 = aBlock;
    if (!aBlock)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_sync(v8, block);
  v9 = *(v18 + 24);
  v10 = aBlock;
  if (aBlock)
  {
LABEL_7:
    _Block_release(v10);
  }

LABEL_8:
  _Block_object_dispose(&v17, 8);
  return v9;
}

void sub_2975C0024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void BasebandTransport::stopReader(BasebandTransport *this)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v15 = 0;
  v2 = (this + 8);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 0x40000000;
  v13[2] = ___ZN17BasebandTransport10stopReaderEv_block_invoke;
  v13[3] = &unk_29EE6C160;
  v13[4] = v14;
  v13[5] = this;
  v16 = v13;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98_0;
  block[4] = this + 8;
  block[5] = &v16;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 0x40000000;
  v12[2] = ___ZN17BasebandTransport10stopReaderEv_block_invoke_2;
  v12[3] = &unk_29EE6C188;
  v12[4] = v14;
  v12[5] = this;
  ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v2, v12);
  v5 = *(this + 33);
  if (v5)
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Waiting for reader to be stopped", block, 2u);
      v5 = *(this + 33);
    }

    v7 = dispatch_time(0, 3000000000);
    if (dispatch_group_wait(v5, v7))
    {
      (*(*this + 48))(this);
      v8 = *(this + 5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(block[0]) = 0;
        _os_log_error_impl(&dword_297476000, v8, OS_LOG_TYPE_ERROR, "Timeout waiting for read to unblock, freed transport to force read unblock", block, 2u);
      }
    }

    else
    {
      v10 = *(this + 30);
      if (v10)
      {
        operator delete[](v10);
        *(this + 30) = 0;
        v11 = *(this + 32);
        *(this + 32) = 0;
        if (v11)
        {
          dispatch_release(v11);
        }
      }
    }

    v9 = *(this + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Reader stopped", block, 2u);
    }
  }

  _Block_object_dispose(v14, 8);
}

void sub_2975C02C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN17BasebandTransport4openENS_10ParametersEN8dispatch5blockIU13block_pointerFvPhjEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 224);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(v2 + 224));
    *(v2 + 224) = 0;
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v9, 2u);
    }
  }

  (*(*v2 + 48))(v2);
  *(v2 + 272) = 0;
  *(v2 + 276) = 0;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 309) = 0;
  v5 = *(a1 + 80);
  v6 = *(a1 + 64);
  *(v2 + 48) = *(a1 + 48);
  *(v2 + 64) = v6;
  *(v2 + 80) = v5;
  v7 = *(a1 + 88);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(v2 + 88);
  *(v2 + 88) = v7;
  if (v8)
  {
    _Block_release(v8);
  }

  if (*(v2 + 48) != 25)
  {
    if (capabilities::ipc::supportsPCI(v7))
    {
      *(*(*(a1 + 32) + 8) + 24) = BasebandTransport::openPCI_sync(v2);
    }

    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      BasebandTransport::timerOn_sync(v2);
    }

    else
    {
      (*(*v2 + 48))(v2);
    }

    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 0x40000000;
    v9[2] = ___ZN17BasebandTransport9dumpStateEb_block_invoke;
    v9[3] = &__block_descriptor_tmp_86_0;
    v9[4] = v2;
    v10 = 0;
    ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped((v2 + 8), v9);
  }
}

uint64_t BasebandTransport::openPCI_sync(BasebandTransport *this)
{
  v50 = *MEMORY[0x29EDCA608];
  v2 = *(this + 2);
  if (!v2 || (v3 = std::__shared_weak_count::lock(v2)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = v3;
  atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v4);
  }

  inited = TelephonyBasebandPCITransportInitParameters();
  v6 = *(this + 14);
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::traceTransportTimeoutScalingFactor(inited);
  v8 = 1000 * v6;
  if ((((1000 * v6) * shouldUseMinBasebandTransportIOReadCount) & 0xFFFFFFFF00000000) != 0)
  {
    v9 = *(this + 5);
    shouldUseMinBasebandTransportIOReadCount = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_error_impl(&dword_297476000, v9, OS_LOG_TYPE_ERROR, "Scaled create timeout overflowed, falling back to unscaled value: %u", buf, 8u);
    }
  }

  v36 = *(this + 3);
  v10 = *(this + 17);
  if (!v10)
  {
    v11 = *(this + 12);
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadCount);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
LABEL_10:
      v10 = 4;
      goto LABEL_29;
    }

    if (v11 != 17)
    {
      if (v11 == 21)
      {
        goto LABEL_19;
      }

      if (v11 == 20)
      {
        v10 = 63;
        goto LABEL_29;
      }

      shouldUseMinBasebandTransportIOReadCount = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
      v12 = v11 == 10 ? shouldUseMinBasebandTransportIOReadCount : 0;
      if (v12)
      {
        goto LABEL_19;
      }

      if (v11 > 18)
      {
        v10 = 31;
        if (v11 > 22)
        {
          if (v11 == 23)
          {
            goto LABEL_29;
          }

          if (v11 == 24)
          {
            v10 = 86;
            goto LABEL_29;
          }

          goto LABEL_10;
        }

        if (v11 == 19)
        {
          goto LABEL_29;
        }

LABEL_19:
        v10 = 15;
        goto LABEL_29;
      }

      if (v11 != 2)
      {
        if (v11 == 15 || v11 == 16)
        {
          v10 = 36;
          goto LABEL_29;
        }

        goto LABEL_10;
      }
    }

    v10 = 16;
  }

LABEL_29:
  v38 = v10;
  v13 = *(this + 16);
  if (!v13)
  {
    v14 = *(this + 12);
    v15 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
    v16 = v15;
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v15);
    v13 = v16 ? 1024 : 0x4000;
    if ((shouldUseMinBasebandTransportIOReadCount & 1) == 0)
    {
      if (v14 == 17)
      {
        v13 = 0x80000;
      }

      else if (v14 == 21 || v14 == 20)
      {
        v13 = 61440;
      }

      else
      {
        shouldUseMinBasebandTransportIOReadCount = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
        if (v14 == 10)
        {
          v17 = shouldUseMinBasebandTransportIOReadCount;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          v13 = 3584;
        }

        else if ((v14 - 19) > 5)
        {
          v13 = 0x8000;
        }

        else
        {
          v13 = dword_2976A40E0[v14 - 19];
        }
      }
    }
  }

  v39 = v13;
  v41 = *(this + 88);
  v18 = *(this + 12);
  if (v18 != 20 && v18 != 9)
  {
    goto LABEL_57;
  }

  v48[0] = &unk_2A1E4A7D0;
  v49 = v48;
  inactive = dispatch_workloop_create_inactive("com.apple.BasebandTransport.workloop");
  *buf = inactive;
  if (!v49)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v49 + 48))(v49, buf);
  dispatch_activate(inactive);
  v20 = *(this + 45);
  *(this + 45) = inactive;
  if (v20)
  {
    dispatch_release(v20);
  }

  shouldUseMinBasebandTransportIOReadCount = v49;
  if (v49 != v48)
  {
    if (v49)
    {
      shouldUseMinBasebandTransportIOReadCount = (*(*v49 + 40))(v49);
    }

    if (*(this + 45))
    {
      goto LABEL_56;
    }

LABEL_59:
    v21 = *(this + 5);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297476000, v21, OS_LOG_TYPE_ERROR, "Failed to create workloop", buf, 2u);
    }

    goto LABEL_95;
  }

  shouldUseMinBasebandTransportIOReadCount = (*(*v49 + 32))(v49);
  if (!*(this + 45))
  {
    goto LABEL_59;
  }

LABEL_56:
  v18 = *(this + 12);
LABEL_57:
  switch(v18)
  {
    case 0:
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
      goto LABEL_70;
    case 2:
      shouldUseMinBasebandTransportIOReadCount = capabilities::diag::supportsQDSS(shouldUseMinBasebandTransportIOReadCount);
      goto LABEL_70;
    case 10:
      shouldUseMinBasebandTransportIOReadCount = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
LABEL_70:
      v25 = v38;
      if (v38 < 0x41)
      {
        goto LABEL_71;
      }

      goto LABEL_63;
    case 24:
      v25 = v38;
      if (v38 >= 0x57)
      {
LABEL_63:
        v22 = *(this + 5);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        BasebandTransport::asString(*(this + 12), buf);
        if (v43 >= 0)
        {
          v23 = buf;
        }

        else
        {
          v23 = *buf;
        }

        *v44 = 136315394;
        v45 = v23;
        v46 = 2048;
        v47 = v25;
        v24 = "%s: invalid transport io read count (%lu)";
        goto LABEL_92;
      }

LABEL_71:
      if (capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount))
      {
        v26 = 1024;
      }

      else
      {
        v26 = 0x4000;
      }

      if (v39 > 0x100000 || v26 > v39)
      {
        v22 = *(this + 5);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        BasebandTransport::asString(*(this + 12), buf);
        if (v43 >= 0)
        {
          v31 = buf;
        }

        else
        {
          v31 = *buf;
        }

        *v44 = 136315394;
        v45 = v31;
        v46 = 2048;
        v47 = v39;
        v24 = "%s: invalid transport io read size (%lu)";
LABEL_92:
        _os_log_error_impl(&dword_297476000, v22, OS_LOG_TYPE_ERROR, v24, v44, 0x16u);
        if ((v43 & 0x80000000) == 0)
        {
          goto LABEL_95;
        }

        goto LABEL_93;
      }

      v37 = *(this + 13);
      if (*(this + 11))
      {
        *(this + 276) = 1;
        v40 = *(this + 14);
      }

      v27 = *(this + 5);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_297476000, v27, OS_LOG_TYPE_DEFAULT, "#I opening transport", buf, 2u);
      }

      if (!TelephonyBasebandPCITransportCreate())
      {
        *(this + 68) = 2;
        v32 = *(this + 5);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          BasebandTransport::asString(*(this + 12), buf);
          v35 = v43 >= 0 ? buf : *buf;
          *v44 = 136315138;
          v45 = v35;
          _os_log_error_impl(&dword_297476000, v32, OS_LOG_TYPE_ERROR, "%s: transport open failed", v44, 0xCu);
          if (v43 < 0)
          {
LABEL_93:
            operator delete(*buf);
          }
        }

LABEL_95:
        v28 = 0;
        goto LABEL_96;
      }

      v28 = 1;
      *(this + 68) = 1;
      v29 = *(this + 5);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        BasebandTransport::asString(*(this + 12), buf);
        if (v43 >= 0)
        {
          v30 = buf;
        }

        else
        {
          v30 = *buf;
        }

        *v44 = 136315394;
        v45 = v30;
        v46 = 1024;
        LODWORD(v47) = v39;
        _os_log_impl(&dword_297476000, v29, OS_LOG_TYPE_DEFAULT, "#I %s: transport successfully opened with read io size as %u", v44, 0x12u);
        if (v43 < 0)
        {
          operator delete(*buf);
        }
      }

LABEL_96:
      std::__shared_weak_count::__release_weak(v4);
      v33 = *MEMORY[0x29EDCA608];
      return v28;
    default:
      goto LABEL_95;
  }
}

void sub_2975C0CD4(_Unwind_Exception *a1)
{
  std::function<void ()(dispatch_workloop_s *)>::~function(v2 - 88);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void BasebandTransport::timerOn_sync(BasebandTransport *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = *(this + 28);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 28));
    *(this + 28) = 0;
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", buf, 2u);
    }
  }

  if (*(this + 68) == 1)
  {
    v4 = *(this + 58);
    if (v4 && *(this + 27))
    {
      v5 = 1000000000 * v4;
      v6 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(this + 3));
      *(this + 28) = v6;
      v7 = dispatch_time(0, v5);
      dispatch_source_set_timer(v6, v7, v5, 0xBEBC200uLL);
      v8 = *(this + 2);
      if (!v8 || (v9 = *(this + 1), (v10 = std::__shared_weak_count::lock(v8)) == 0))
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

      v13 = *(this + 28);
      handler[0] = MEMORY[0x29EDCA5F8];
      handler[1] = 1174405120;
      handler[2] = ___ZN17BasebandTransport12timerOn_syncEv_block_invoke;
      handler[3] = &__block_descriptor_tmp_85_1;
      handler[4] = this;
      handler[5] = v9;
      v19 = v11;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      dispatch_source_set_event_handler(v13, handler);
      dispatch_activate(*(this + 28));
      v14 = *(this + 5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(this + 58);
        *buf = 67109120;
        v21 = v15;
        _os_log_impl(&dword_297476000, v14, OS_LOG_TYPE_DEFAULT, "#I Status report enabled(%d sec)", buf, 8u);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_weak(v19);
      }

      std::__shared_weak_count::__release_weak(v11);
    }
  }

  else
  {
    v16 = *(this + 5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v16, OS_LOG_TYPE_DEFAULT, "#I Invalid state for status report enable.  Ignoring enable request.", buf, 2u);
    }
  }

  v17 = *MEMORY[0x29EDCA608];
}

void BasebandTransport::dumpState(BasebandTransport *this, char a2)
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN17BasebandTransport9dumpStateEb_block_invoke;
  v2[3] = &__block_descriptor_tmp_86_0;
  v2[4] = this;
  v3 = a2;
  ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(this + 1, v2);
}

void *__copy_helper_block_e8_88c45_ZTSN8dispatch5blockIU13block_pointerFvPhjEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 88);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 88) = result;
  return result;
}

void __destroy_helper_block_e8_88c45_ZTSN8dispatch5blockIU13block_pointerFvPhjEEE(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t BasebandTransport::write(BasebandTransport *this, const unsigned __int8 *a2, uint64_t a3, unsigned int *a4)
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v7 = this + 8;
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 0x40000000;
  v34[2] = ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke;
  v34[3] = &unk_29EE6C030;
  v34[5] = &v39;
  v34[6] = this;
  v34[4] = &v35;
  v44 = v34;
  block = MEMORY[0x29EDCA5F8];
  p_block = 0x40000000;
  v28 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v29 = &__block_descriptor_tmp_98_0;
  v30 = (this + 8);
  __p = &v44;
  v9 = this + 24;
  v8 = *(this + 3);
  if (*(v9 + 1))
  {
    dispatch_async_and_wait(v8, &block);
    if (*(v40 + 24) == 1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v14 = 0;
    goto LABEL_19;
  }

  dispatch_sync(v8, &block);
  if (*(v40 + 24) != 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  block = 0;
  p_block = &block;
  v28 = 0x4002000000;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  __p = 0;
  v32 = 0;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = a3;
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 0x40000000;
  v17[2] = ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_59;
  v17[3] = &unk_29EE6C058;
  v17[8] = a2;
  v17[9] = a3;
  v17[4] = &block;
  v17[5] = &v22;
  v17[6] = &v18;
  v17[7] = this;
  v43 = v17;
  v44 = MEMORY[0x29EDCA5F8];
  v45 = 0x40000000;
  v46 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v47 = &__block_descriptor_tmp_98_0;
  v48 = v7;
  v49 = &v43;
  v10 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v10, &v44);
    if (v19[3])
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_sync(v10, &v44);
    if (v19[3])
    {
LABEL_5:
      v11 = v36[3];
      if (*v11)
      {
        v12 = (*v11)(v11, v23[3]);
        *(v40 + 24) = v12;
        if (v12)
        {
          v16[0] = MEMORY[0x29EDCA5F8];
          v16[1] = 0x40000000;
          v16[2] = ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_2;
          v16[3] = &unk_29EE6C080;
          v16[4] = &v18;
          v16[5] = this;
          v43 = v16;
          v44 = MEMORY[0x29EDCA5F8];
          v45 = 0x40000000;
          v46 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
          v47 = &__block_descriptor_tmp_98_0;
          v48 = v7;
          v49 = &v43;
          v13 = *(this + 3);
          if (*(this + 4))
          {
            dispatch_async_and_wait(v13, &v44);
          }

          else
          {
            dispatch_sync(v13, &v44);
          }

          v14 = *(v40 + 24);
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
        *(v40 + 24) = 0;
      }

      goto LABEL_17;
    }
  }

  v14 = 1;
LABEL_17:
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&block, 8);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

LABEL_19:
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  return v14 & 1;
}

void sub_2975C1420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  if (__p)
  {
    a39 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v39 - 216), 8);
  _Block_object_dispose((v39 - 184), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke(void *a1)
{
  v2 = a1[6];
  *(*(a1[4] + 8) + 24) = v2 + 120;
  v3 = *(v2 + 176);
  if (v3)
  {
    result = v3();
    *(*(a1[5] + 8) + 24) = result;
  }

  else
  {
    result = 0;
    *(*(a1[5] + 8) + 24) = 0;
  }

  return result;
}

__n128 __Block_byref_object_copy__2(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void *___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_59(void *result)
{
  v1 = *(result[7] + 72);
  if (v1)
  {
    v2 = result;
    result = (**v1)(*(result[7] + 72), result[8], result[9], *(result[4] + 8) + 40);
    *(*(v2[5] + 8) + 24) = *(*(v2[4] + 8) + 40);
    *(*(v2[6] + 8) + 24) = *(*(v2[4] + 8) + 48) - *(*(v2[4] + 8) + 40);
  }

  return result;
}

void ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(v2 + 288) + *(*(*(a1 + 32) + 8) + 24);
  *(v2 + 288) = v3;
  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(*(*(a1 + 32) + 8) + 24);
    v7 = 134218240;
    v8 = v6;
    v9 = 2048;
    v10 = v3;
    _os_log_debug_impl(&dword_297476000, v4, OS_LOG_TYPE_DEBUG, "#D Written: %zu bytes, for a total of: %llu", &v7, 0x16u);
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t BasebandTransport::read(BasebandTransport *this, unsigned __int8 *a2, unint64_t a3, unsigned int *a4)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v6 = (this + 8);
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 0x40000000;
  v17[2] = ___ZN17BasebandTransport4readEPhmPjbj_block_invoke;
  v17[3] = &unk_29EE6C0A8;
  v17[5] = &v22;
  v17[6] = this;
  v17[4] = &v18;
  v26 = v17;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98_0;
  block[4] = this + 8;
  block[5] = &v26;
  v8 = this + 24;
  v7 = *(this + 3);
  if (*(v8 + 1))
  {
    dispatch_async_and_wait(v7, block);
    v9 = v23;
    if (*(v23 + 24) != 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    dispatch_sync(v7, block);
    v9 = v23;
    if (*(v23 + 24) != 1)
    {
      goto LABEL_14;
    }
  }

  v10 = v19[3];
  if (v10 && (v11 = *(v10 + 8)) != 0)
  {
    v12 = v11();
    *(v23 + 24) = v12;
    if (v12)
    {
      v16[0] = MEMORY[0x29EDCA5F8];
      v16[1] = 0x40000000;
      v16[2] = ___ZN17BasebandTransport4readEPhmPjbj_block_invoke_63;
      v16[3] = &__block_descriptor_tmp_64;
      v16[4] = this;
      v16[5] = a4;
      ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v6, v16);
      goto LABEL_14;
    }

    v10 = v19[3];
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(v9 + 24) = 0;
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  v13 = *(v10 + 24);
  if (v13)
  {
    v13();
  }

LABEL_14:
  v14 = *(v23 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v14;
}

void sub_2975C18C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void ___ZN17BasebandTransport4readEPhmPjbj_block_invoke(void *a1)
{
  v2 = a1[6];
  *(*(a1[4] + 8) + 24) = v2 + 120;
  v3 = *(v2 + 176);
  if (v3)
  {
    if (v3())
    {
      LOBYTE(v3) = *(v2 + 276) ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  *(*(a1[5] + 8) + 24) = v3 & 1;
  if (*(v2 + 276) == 1)
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_297476000, v4, OS_LOG_TYPE_ERROR, "Explicit reads not allowed in async mode", v5, 2u);
    }
  }
}

uint64_t BasebandTransport::close(BasebandTransport *this)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  *(this + 58) = 0;
  v2 = this + 8;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___ZN17BasebandTransport5closeEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_65;
  v9[4] = this;
  v14 = v9;
  block = MEMORY[0x29EDCA5F8];
  v16 = 0x40000000;
  v17 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v18 = &__block_descriptor_tmp_98_0;
  v19 = this + 8;
  v20 = &v14;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    dispatch_sync(v3, &block);
  }

  BasebandTransport::stopReader(this);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = ___ZN17BasebandTransport5closeEv_block_invoke_2;
  v8[3] = &unk_29EE6C110;
  v8[4] = &v10;
  v8[5] = this;
  v14 = v8;
  block = MEMORY[0x29EDCA5F8];
  v16 = 0x40000000;
  v17 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v18 = &__block_descriptor_tmp_98_0;
  v19 = v2;
  v20 = &v14;
  v5 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v5, &block);
  }

  else
  {
    dispatch_sync(v5, &block);
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_2975C1B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN17BasebandTransport5closeEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 224);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(v1 + 224));
    *(v1 + 224) = 0;
    v3 = *(v1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v4, 2u);
    }
  }
}

uint64_t ___ZN17BasebandTransport5closeEv_block_invoke_2(uint64_t a1)
{
  result = (*(**(a1 + 40) + 48))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t BasebandTransport::operator*(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZN17BasebandTransportdeEv_block_invoke;
  v5[3] = &unk_29EE6C138;
  v5[4] = &v6;
  v5[5] = a1;
  v10 = v5;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98_0;
  block[4] = a1 + 8;
  block[5] = &v10;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t BasebandTransport::close_sync(BasebandTransport *this)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(this + 22);
  if (v2 && v2(this + 120))
  {
    *(this + 68) = 0;
    v3 = TelephonyUtilTransportFree();
    *(this + 120) = 0u;
    *(this + 136) = 0u;
    *(this + 152) = 0u;
    *(this + 168) = 0u;
    *(this + 184) = 0u;
    *(this + 25) = 0;
    v4 = *(this + 5);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = 1;
    v4 = *(this + 5);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }
  }

  BasebandTransport::asString(*(this + 12), __p);
  v5 = __p[0];
  v6 = "error";
  if (v10 >= 0)
  {
    v5 = __p;
  }

  if (v3)
  {
    v6 = "success";
  }

  *buf = 136315394;
  v12 = v5;
  v13 = 2080;
  v14 = v6;
  _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Transport close %s: %s", buf, 0x16u);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_12:
  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t BasebandTransport::startReader_sync(BasebandTransport *this)
{
  if (!*(this + 30))
  {
    v2 = *(this + 12);
    v3 = capabilities::radio::dal(this);
    if (v3)
    {
      v4 = 1024;
    }

    else
    {
      v4 = 0x4000;
    }

    shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v3);
    if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
    {
      if (v2 == 17)
      {
        v4 = 0x80000;
      }

      else if (v2 == 21 || v2 == 20)
      {
        v4 = 61440;
      }

      else
      {
        v6 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
        if (v2 == 10 && (v6 & 1) != 0)
        {
          v4 = 3584;
        }

        else if ((v2 - 19) > 5)
        {
          v4 = 0x8000;
        }

        else
        {
          v4 = qword_2976A40B0[v2 - 19];
        }
      }
    }

    *(this + 31) = v4;
    *(this + 30) = operator new[](v4);
    v7 = dispatch_queue_create("ipc.bb", 0);
    v8 = *(this + 32);
    *(this + 32) = v7;
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  *(this + 236) = 1;
  *(this + 276) = 1;
  BasebandTransport::queueRead_sync(this);
  return *(this + 236);
}

void BasebandTransport::queueRead_sync(BasebandTransport *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = *(this + 33);
  if (v6)
  {
    dispatch_retain(*(this + 33));
    dispatch_group_enter(v6);
  }

  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN17BasebandTransport14queueRead_syncEv_block_invoke;
  v8[3] = &__block_descriptor_tmp_73_0;
  v8[4] = this;
  v8[5] = v3;
  v9 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  group = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(group);
  }

  dispatch_async(*(this + 32), v8);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v7 = v9;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v6)
  {
    dispatch_group_leave(v6);
    dispatch_release(v6);
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t ___ZN17BasebandTransport10stopReaderEv_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = *(v1 + 236);
  *(v1 + 236) = 0;
  *(v1 + 276) = 0;
  return result;
}

uint64_t ___ZN17BasebandTransport10stopReaderEv_block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 176);
  if (v2)
  {
    v3 = result;
    result = v2(v1 + 120);
    if (result)
    {
      if (*(*(*(v3 + 32) + 8) + 24) == 1)
      {
        v4 = *(v1 + 136);
        if (v4)
        {

          return v4(v1 + 120);
        }
      }
    }
  }

  return result;
}

void ___ZN17BasebandTransport14queueRead_syncEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v3 = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v2);
  }

  BasebandTransport::read_sync(v1, &v3);
  if (v2)
  {
    dispatch_group_leave(v2);

    dispatch_release(v2);
  }
}

void sub_2975C229C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void BasebandTransport::read_sync(uint64_t a1, NSObject **a2)
{
  v6 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  v34 = v6;
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4), (v35 = v8) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v33 = 0;
  v9 = *(a1 + 128);
  if (v9)
  {
    v10 = v8;
    v11 = *(a1 + 240);
    v12 = *(a1 + 48);
    v13 = capabilities::radio::dal(v8);
    v14 = v13;
    shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v13);
    if (v14)
    {
      v16 = 1024;
    }

    else
    {
      v16 = 0x4000;
    }

    if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
    {
      if (v12 == 17)
      {
        v16 = 0x80000;
      }

      else if (v12 == 21 || v12 == 20)
      {
        v16 = 61440;
      }

      else
      {
        v17 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
        if (v12 == 10)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        if (v18)
        {
          v16 = 3584;
        }

        else if ((v12 - 19) > 5)
        {
          v16 = 0x8000;
        }

        else
        {
          v16 = dword_2976A40E0[v12 - 19];
        }
      }
    }

    v19 = v9(a1 + 120, v11, v16, &v33, 0, 0xFFFFFFFFLL, 0);
    if (v33)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 == 1)
    {
      v31[0] = MEMORY[0x29EDCA5F8];
      v31[1] = 0x40000000;
      v31[2] = ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke;
      v31[3] = &__block_descriptor_tmp_74;
      v31[4] = a1;
      v32 = v33;
      ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v5, v31);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_2;
      block[3] = &__block_descriptor_tmp_77_1;
      block[4] = a1;
      block[5] = v6;
      v28 = v10;
      atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
      v21 = *a2;
      group = v21;
      if (v21)
      {
        dispatch_retain(v21);
        dispatch_group_enter(group);
      }

      v30 = v33;
      dispatch_sync(*(a1 + 96), block);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      v22 = v28;
      if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }
    }
  }

  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 1174405120;
  v25[2] = ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_78;
  v25[3] = &__block_descriptor_tmp_79;
  v25[4] = a1;
  v25[5] = v34;
  v26 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v5, v25);
  v23 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v35;
  if (v35)
  {
    if (!atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }
}

void __copy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE56c30_ZTSN8dispatch13group_sessionE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[7];
  a1[7] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[7];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void __destroy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE56c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 48);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[9];
  if (v3)
  {
    __p = 0;
    v8 = 0;
    v9 = 0;
    (*(*v3 + 8))(v3, v2[30], *(a1 + 64), &__p);
    (*(v2[11] + 16))();
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = v2[30];
    v5 = *(a1 + 64);
    v6 = *(v2[11] + 16);

    v6();
  }
}

void sub_2975C2824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BasebandTransport *___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_78(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 236) == 1)
  {
    return BasebandTransport::queueRead_sync(result);
  }

  return result;
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN17BasebandTransport12timerOn_syncEv_block_invoke(void *a1)
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
      if (!v6)
      {
LABEL_15:
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        return;
      }

      v7 = *(v3 + 280);
      v8 = *(v3 + 320);
      v9 = *(v3 + 288) - *(v3 + 328);
      v11 = *(v3 + 288) == *(v3 + 328);
      *(v3 + 296) = v7 - v8;
      *(v3 + 304) = v9;
      v10 = (v3 + 272);
      v11 = v11 && v7 == v8;
      if (v11)
      {
        v12 = 3;
      }

      else
      {
        if (*v10 != 3)
        {
LABEL_12:
          v13 = *(v3 + 288);
          *(v3 + 312) = *v10;
          *(v3 + 328) = v13;
          *(v3 + 344) = *(v3 + 304);
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 1174405120;
          block[2] = ___ZN17BasebandTransport12timerOn_syncEv_block_invoke_2;
          block[3] = &__block_descriptor_tmp_82_0;
          block[4] = v3;
          block[5] = v6;
          v16 = v4;
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
          dispatch_async(*(v3 + 96), block);
          v14 = v16;
          if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
          }

          goto LABEL_15;
        }

        v12 = 1;
      }

      *v10 = v12;
      goto LABEL_12;
    }
  }
}

uint64_t ___ZN17BasebandTransport12timerOn_syncEv_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 216);
  v10 = *(v5 + 344);
  v7 = *(v5 + 328);
  v9[0] = *(v5 + 312);
  v9[1] = v7;
  return (*(v6 + 16))(v6, v9, a3, a4, a5);
}

void BasebandTransport::getStatus(BasebandTransport *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xAAAAAA0000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  v4[0] = a2;
  v4[1] = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIZNS1_9getStatusEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_108;
  block[4] = this + 8;
  block[5] = v4;
  v3 = this + 24;
  v2 = *(this + 3);
  if (*(v3 + 1))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void ___ZN17BasebandTransport9dumpStateEb_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  *(v2 + 296) = vsubq_s64(*(v2 + 280), *(v2 + 320));
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    BasebandTransport::Parameters::toString((v2 + 48), __p);
    if (v8 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    v10 = v4;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v3 = *(v2 + 40);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    BasebandTransport::Status::toString((v2 + 272), __p);
    v5 = v8 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v10 = v5;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
      if (*(a1 + 40) != 1)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  if (*(a1 + 40) == 1)
  {
LABEL_14:
    *(v2 + 272) = 0;
    *(v2 + 276) = 0;
    *(v2 + 320) = 0u;
    *(v2 + 336) = 0u;
    *(v2 + 280) = 0u;
    *(v2 + 296) = 0u;
    *(v2 + 309) = 0;
    BasebandTransport::timerOn_sync(v2);
  }

LABEL_15:
  v6 = *MEMORY[0x29EDCA608];
}

void BasebandTransport::reportStatus(uint64_t a1, int a2, void **a3)
{
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN17BasebandTransport12reportStatusEjN8dispatch5blockIU13block_pointerFvNS_6StatusEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_87_0;
  v7[4] = a1;
  v9 = a2;
  v4 = *a3;
  if (*a3)
  {
    v4 = _Block_copy(v4);
  }

  aBlock = v4;
  v10 = v7;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98_0;
  block[4] = a1 + 8;
  block[5] = &v10;
  v5 = *(a1 + 24);
  if (!*(a1 + 32))
  {
    dispatch_sync(v5, block);
    v6 = aBlock;
    if (!aBlock)
    {
      return;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v5, block);
  v6 = aBlock;
  if (aBlock)
  {
LABEL_7:
    _Block_release(v6);
  }
}

void ___ZN17BasebandTransport12reportStatusEjN8dispatch5blockIU13block_pointerFvNS_6StatusEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v3 + 232) = v1;
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 216);
  *(v3 + 216) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  BasebandTransport::timerOn_sync(v3);
}

void *__copy_helper_block_e8_40c70_ZTSN8dispatch5blockIU13block_pointerFvN17BasebandTransport6StatusEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c70_ZTSN8dispatch5blockIU13block_pointerFvN17BasebandTransport6StatusEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t std::function<void ()(dispatch_workloop_s *)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void std::__shared_ptr_pointer<BasebandTransportICE *,std::shared_ptr<BasebandTransportICE> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportICE>(BasebandTransportICE*)::{lambda(BasebandTransportICE *)#1},std::allocator<BasebandTransportICE>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandTransportICE *,std::shared_ptr<BasebandTransportICE> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportICE>(BasebandTransportICE*)::{lambda(BasebandTransportICE *)#1},std::allocator<BasebandTransportICE>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BasebandTransportICE> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportICE>(BasebandTransportICE*)::{lambda(BasebandTransportICE*)#1}::operator() const(BasebandTransportICE*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void std::__shared_ptr_pointer<BasebandTransport *,std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport *)#1},std::allocator<BasebandTransport>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandTransport *,std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport *)#1},std::allocator<BasebandTransport>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport*)#1}::operator() const(BasebandTransport*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

const void ***_ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0NS_14default_deleteIS2_EEED1B8ne200100Ev(const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_(const void **a1)
{
  v4 = a1[5];
  v2 = *(a1 + 1);
  v3 = *(a1 + 3);
  (*(*a1 + 2))();
  if (*a1)
  {
    _Block_release(*a1);
  }

  operator delete(a1);
}

void sub_2975C31D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void *_ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1NS_14default_deleteIS2_EEED1B8ne200100Ev(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 8);
    if (v3)
    {
      *(v1 + 16) = v3;
      operator delete(v3);
    }

    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_(const void **a1)
{
  v2 = *(a1 + 4);
  v3 = a1[1];
  (*(*a1 + 2))();
  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  operator delete(a1);
}

void sub_2975C32B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

const void ***_ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_(const void **a1)
{
  v2 = a1[1];
  v3 = *(a1 + 4);
  (*(*a1 + 2))();
  if ((*(a1 + 20) & 1) == 0)
  {
    free(a1[1]);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  operator delete(a1);
}

void sub_2975C3388(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E4A790;
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

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIK17BasebandTransportEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIK17BasebandTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<BasebandTransport::openPCI_sync(void)::$_0,std::allocator<BasebandTransport::openPCI_sync(void)::$_0>,void ()(dispatch_workloop_s *)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_2A1E4A7D0;
  return result;
}

uint64_t std::__function::__func<BasebandTransport::openPCI_sync(void)::$_0,std::allocator<BasebandTransport::openPCI_sync(void)::$_0>,void ()(dispatch_workloop_s *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17BasebandTransport12openPCI_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17BasebandTransport12openPCI_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17BasebandTransport12openPCI_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17BasebandTransport12openPCI_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIZNS1_9getStatusEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = *v1;
  v2 = v1[1];
  result = *(v2 + 272);
  v5 = *(v2 + 288);
  *(v3 + 32) = *(v2 + 304);
  *v3 = result;
  *(v3 + 16) = v5;
  return result;
}

void NetworkingModule::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x90uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v9[0] = v6;
  v9[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  NetworkingModule::NetworkingModule(v4, v9);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<NetworkingModule>::shared_ptr[abi:ne200100]<NetworkingModule,std::shared_ptr<NetworkingModule> ctu::SharedSynchronizable<NetworkingModule>::make_shared_ptr<NetworkingModule>(NetworkingModule*)::{lambda(NetworkingModule*)#1},0>(a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2;

  NetworkingModule::init(v8);
}

void sub_2975C376C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    if (!v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void NetworkingModule::init(NetworkingModule *this)
{
  v2 = *(this + 10);
  if (!v2 || (v3 = *(this + 9), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 11);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::init(void)::$_0>(NetworkingModule::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::init(void)::$_0,dispatch_queue_s *::default_delete<NetworkingModule::init(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t NetworkingModule::NetworkingModule(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E500C0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    std::__shared_weak_count::__release_weak(v4);
    *a1 = &unk_2A1E4A9F0;
    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    *a1 = &unk_2A1E4A9F0;
  }

  *a1 = &unk_2A1E4A888;
  ctu::OsLogContext::OsLogContext(v6, "com.apple.telephony.abm", "net.mod");
  ctu::SharedLoggable<NetworkingModule,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>((a1 + 72), "net.mod", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v6);
  *a1 = &unk_2A1E4A888;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  return a1;
}

void sub_2975C39F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  Service::~Service(v9);
  _Unwind_Resume(a1);
}

void *ctu::SharedLoggable<NetworkingModule,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(void *a1, const char *a2, dispatch_qos_class_t a3)
{
  object = 0;
  ctu::SharedSynchronizable<AnalyticsHelper>::SharedSynchronizable(a1, a2, a3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](a1 + 4, &object);
  MEMORY[0x29C270D60](&object);
  return a1;
}

void NetworkingModule::~NetworkingModule(NetworkingModule *this)
{
  *this = &unk_2A1E4A888;
  v2 = *(this + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 15);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x29C270D60](this + 104);
  v4 = *(this + 12);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  *this = &unk_2A1E500C0;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v7 = *(this + 3);
  if (v7)
  {
    v8 = *(this + 4);
    v9 = *(this + 3);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = *(this + 3);
    }

    *(this + 4) = v7;
    operator delete(v9);
  }

  v11 = *(this + 2);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

{
  NetworkingModule::~NetworkingModule(this);

  operator delete(v1);
}

_WORD *NetworkingModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void NetworkingModule::shutdown(void *a1, dispatch_object_t *a2)
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
  v8 = operator new(8uLL);
  *v8 = v3;
  v9 = a1[11];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::shutdown(dispatch::group_session)::$_0>(NetworkingModule::shutdown(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::shutdown(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<NetworkingModule::shutdown(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void NetworkingModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_18:
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

  v16 = v15;
  v17 = operator new(0x10uLL);
  *v17 = a1;
  v17[1] = v12;
  v18 = a1[11];
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  v19 = operator new(0x18uLL);
  *v19 = v17;
  v19[1] = v14;
  v19[2] = v16;
  dispatch_async_f(v18, v19, dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v20 = a1[10];
  if (!v20 || (v21 = a1[9], (v22 = std::__shared_weak_count::lock(v20)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v22;
  v23 = operator new(8uLL);
  *v23 = a1;
  v24 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v25 = operator new(0x18uLL);
  *v25 = v23;
  v25[1] = v21;
  v25[2] = v8;
  dispatch_async_f(v24, v25, dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>(NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2,dispatch_queue_s *::default_delete<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }
}

void NetworkingModule::registerCommandHandlers_sync(NetworkingModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_68:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_68;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_68;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBEE70];
  v8 = strlen(*MEMORY[0x29EDBEE70]);
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
    v44 = v9;
    v45 = v11 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v45) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_14:
    memmove(p_dst, v7, v9);
  }

  *(p_dst + v9) = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN16NetworkingModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrI16NetworkingModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  aBlock[4] = this;
  aBlock[5] = v4;
  v41 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(aBlock);
  v42 = v12;
  Service::registerCommandHandler(this, &__dst, &v42);
  if (v12)
  {
    _Block_release(v12);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  v13 = *MEMORY[0x29EDBF258];
  v14 = strlen(*MEMORY[0x29EDBF258]);
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
    v44 = v15;
    v45 = v17 | 0x8000000000000000;
    __dst = v16;
    goto LABEL_27;
  }

  HIBYTE(v45) = v14;
  v16 = &__dst;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 3321888768;
  v37[2] = ___ZN16NetworkingModule28registerCommandHandlers_syncEv_block_invoke_3;
  v37[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrI16NetworkingModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  v37[4] = this;
  v37[5] = v4;
  v38 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v18 = _Block_copy(v37);
  v39 = v18;
  Service::registerCommandHandler(this, &__dst, &v39);
  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  v19 = *MEMORY[0x29EDBEE88];
  v20 = strlen(*MEMORY[0x29EDBEE88]);
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
    v44 = v21;
    v45 = v23 | 0x8000000000000000;
    __dst = v22;
    goto LABEL_40;
  }

  HIBYTE(v45) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 3321888768;
  v34[2] = ___ZN16NetworkingModule28registerCommandHandlers_syncEv_block_invoke_2;
  v34[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrI16NetworkingModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  v34[4] = this;
  v34[5] = v4;
  v35 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = _Block_copy(v34);
  v36 = v24;
  Service::registerCommandHandler(this, &__dst, &v36);
  if (v24)
  {
    _Block_release(v24);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  v25 = *MEMORY[0x29EDBF268];
  v26 = strlen(*MEMORY[0x29EDBF268]);
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
    v44 = v27;
    v45 = v29 | 0x8000000000000000;
    __dst = v28;
    goto LABEL_53;
  }

  HIBYTE(v45) = v26;
  v28 = &__dst;
  if (v26)
  {
LABEL_53:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 3321888768;
  v31[2] = ___ZN16NetworkingModule28registerCommandHandlers_syncEv_block_invoke_3;
  v31[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrI16NetworkingModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  v31[4] = this;
  v31[5] = v4;
  v32 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v30 = _Block_copy(v31);
  v33 = v30;
  Service::registerCommandHandler(this, &__dst, &v33);
  if (v30)
  {
    _Block_release(v30);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_2975C4558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (v40)
  {
    _Block_release(v40);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if ((*(v41 - 105) & 0x80000000) == 0)
    {
LABEL_5:
      v43 = a23;
      if (!a23)
      {
LABEL_10:
        if (a31)
        {
          std::__shared_weak_count::__release_weak(a31);
        }

        if (a39)
        {
          std::__shared_weak_count::__release_weak(a39);
          std::__shared_weak_count::__release_weak(v39);
          _Unwind_Resume(a1);
        }

        std::__shared_weak_count::__release_weak(v39);
        _Unwind_Resume(a1);
      }

LABEL_9:
      std::__shared_weak_count::__release_weak(v43);
      goto LABEL_10;
    }
  }

  else if ((*(v41 - 105) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v41 - 128));
  v43 = a23;
  if (!a23)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void ___ZN16NetworkingModule28registerCommandHandlers_syncEv_block_invoke(void *a1, xpc_object_t *a2, const void **a3)
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

  v9 = v8;
  if (a1[5])
  {
    v10 = *a2;
    if (v10)
    {
      xpc_retain(v10);
      v11 = *a3;
      if (*a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = xpc_null_create();
      v11 = *a3;
      if (*a3)
      {
LABEL_6:
        v12 = _Block_copy(v11);
        v13 = v7[10];
        if (!v13)
        {
LABEL_19:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_10;
      }
    }

    v12 = 0;
    v13 = v7[10];
    if (!v13)
    {
      goto LABEL_19;
    }

LABEL_10:
    v14 = v7[9];
    v15 = std::__shared_weak_count::lock(v13);
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = v15;
    v17 = operator new(0x18uLL);
    *v17 = v7;
    v17[1] = v10;
    v18 = xpc_null_create();
    v17[2] = v12;
    v19 = v7[11];
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = operator new(0x18uLL);
    *v20 = v17;
    v20[1] = v14;
    v20[2] = v16;
    dispatch_async_f(v19, v20, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI16NetworkingModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    xpc_release(v18);
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

uint64_t __copy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrI16NetworkingModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrI16NetworkingModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN16NetworkingModule28registerCommandHandlers_syncEv_block_invoke_3(void *a1, xpc_object_t *a2, const void **a3)
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

  v9 = v8;
  if (a1[5])
  {
    v10 = *a2;
    if (v10)
    {
      xpc_retain(v10);
      v11 = *a3;
      if (*a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = xpc_null_create();
      v11 = *a3;
      if (*a3)
      {
LABEL_6:
        v12 = _Block_copy(v11);
        v13 = v7[10];
        if (!v13)
        {
LABEL_19:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_10;
      }
    }

    v12 = 0;
    v13 = v7[10];
    if (!v13)
    {
      goto LABEL_19;
    }

LABEL_10:
    v14 = v7[9];
    v15 = std::__shared_weak_count::lock(v13);
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = v15;
    v17 = operator new(0x18uLL);
    *v17 = v7;
    v17[1] = v10;
    v18 = xpc_null_create();
    v17[2] = v12;
    v19 = v7[11];
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = operator new(0x18uLL);
    *v20 = v17;
    v20[1] = v14;
    v20[2] = v16;
    dispatch_async_f(v19, v20, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI16NetworkingModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    xpc_release(v18);
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

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

  v9 = v8;
  if (a1[5])
  {
    v10 = *a2;
    if (v10)
    {
      xpc_retain(v10);
      v11 = *a3;
      if (*a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = xpc_null_create();
      v11 = *a3;
      if (*a3)
      {
LABEL_6:
        v12 = _Block_copy(v11);
        v13 = v7[10];
        if (!v13)
        {
LABEL_19:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_10;
      }
    }

    v12 = 0;
    v13 = v7[10];
    if (!v13)
    {
      goto LABEL_19;
    }

LABEL_10:
    v14 = v7[9];
    v15 = std::__shared_weak_count::lock(v13);
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = v15;
    v17 = operator new(0x18uLL);
    *v17 = v7;
    v17[1] = v10;
    v18 = xpc_null_create();
    v17[2] = v12;
    v19 = v7[11];
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = operator new(0x18uLL);
    *v20 = v17;
    v20[1] = v14;
    v20[2] = v16;
    dispatch_async_f(v19, v20, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI16NetworkingModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__8EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    xpc_release(v18);
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN16NetworkingModule28registerCommandHandlers_syncEv_block_invoke_2(void *a1, xpc_object_t *a2, const void **a3)
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

  v9 = v8;
  if (a1[5])
  {
    v10 = *a2;
    if (v10)
    {
      xpc_retain(v10);
      v11 = *a3;
      if (*a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = xpc_null_create();
      v11 = *a3;
      if (*a3)
      {
LABEL_6:
        v12 = _Block_copy(v11);
        v13 = v7[10];
        if (!v13)
        {
LABEL_19:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_10;
      }
    }

    v12 = 0;
    v13 = v7[10];
    if (!v13)
    {
      goto LABEL_19;
    }

LABEL_10:
    v14 = v7[9];
    v15 = std::__shared_weak_count::lock(v13);
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = v15;
    v17 = operator new(0x18uLL);
    *v17 = v7;
    v17[1] = v10;
    v18 = xpc_null_create();
    v17[2] = v12;
    v19 = v7[11];
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = operator new(0x18uLL);
    *v20 = v17;
    v20[1] = v14;
    v20[2] = v16;
    dispatch_async_f(v19, v20, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI16NetworkingModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__7EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    xpc_release(v18);
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void NetworkingModule::registerEventHandlers_sync(NetworkingModule *this)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", &__p, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_25:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_25;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (config::hw::watch(v5))
  {
    v7 = *MEMORY[0x29EDBF460];
    v8 = strlen(*MEMORY[0x29EDBF460]);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
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
      v15 = v11 | 0x8000000000000000;
      *&__p = p_p;
    }

    else
    {
      HIBYTE(v15) = v8;
      p_p = &__p;
      if (!v8)
      {
LABEL_16:
        p_p[v9] = 0;
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v17 = 0;
        v12 = operator new(0x20uLL);
        *v12 = &unk_2A1E4AB58;
        v12[1] = this;
        v12[2] = v4;
        v12[3] = v6;
        v17 = v12;
        Service::registerEventHandler(this, &__p, v16);
        if (v17 == v16)
        {
          (*(*v17 + 32))(v17);
          if ((SHIBYTE(v15) & 0x80000000) == 0)
          {
LABEL_20:
            Service::eventsOn(this);
            goto LABEL_21;
          }
        }

        else
        {
          if (v17)
          {
            (*(*v17 + 40))();
          }

          if ((SHIBYTE(v15) & 0x80000000) == 0)
          {
            goto LABEL_20;
          }
        }

        operator delete(__p);
        goto LABEL_20;
      }
    }

    memmove(p_p, v7, v9);
    goto LABEL_16;
  }

LABEL_21:
  std::__shared_weak_count::__release_weak(v6);
  v13 = *MEMORY[0x29EDCA608];
}

void sub_2975C50C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::function<void ()(dispatch::group_session,xpc::dict)>::~function(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
    std::__shared_weak_count::__release_weak(v15);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v15);
  _Unwind_Resume(a1);
}

void NetworkingModule::applyBreadMode_sync(NetworkingModule *this)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v2 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v3 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(&v14, v2);
    v4 = v14;
    v14 = 0uLL;
    v5 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = *(&v14 + 1);
    if (*(&v14 + 1) && !atomic_fetch_add((*(&v14 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v3 = off_2A18CADD8;
  }

  v7 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v3 + 16))(&v10, v3);
  v12 = 0;
  v13 = 0;
  if (v11)
  {
    v13 = std::__shared_weak_count::lock(v11);
    if (v13)
    {
      v12 = v10;
    }

    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v12;
    if (!v12)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  v8 = v12;
  if (v12)
  {
LABEL_19:
    (*(*v8 + 280))(v8, *(this + 136));
  }

LABEL_20:
  v9 = v13;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void sub_2975C5390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void NetworkingModule::sendVisitInfo_sync(NetworkingModule *this, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = *(this + 13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a2;
    *&buf[8] = 1024;
    *&buf[10] = a3;
    _os_log_impl(&dword_297476000, v5, OS_LOG_TYPE_DEFAULT, "#I Visit info: Arrival=%u Departure=%u", buf, 0xEu);
  }

  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v6 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v7 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(buf, v6);
    v8 = *buf;
    memset(buf, 0, sizeof(buf));
    v9 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v7 = off_2A18CADD8;
  }

  v11 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v7 + 16))(&v15, v7);
  v17 = 0;
  v18 = 0;
  if (v16)
  {
    v18 = std::__shared_weak_count::lock(v16);
    if (v18)
    {
      v17 = v15;
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }
  }

  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v12 = v17;
    if (!v17)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v12 = v17;
  if (v17)
  {
LABEL_21:
    (*(*v12 + 320))(v12, a2, a3);
  }

LABEL_22:
  v13 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void NetworkingModule::applyLQMAbortPolicy_sync(NetworkingModule *this)
{
  v83 = *MEMORY[0x29EDCA608];
  if (*(this + 14))
  {
    cf = 0xAAAAAAAAAAAAAAAALL;
    __src = *MEMORY[0x29EDBF7C8];
    v1 = strlen(*MEMORY[0x29EDBF7C8]);
    if (v1 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v2 = v1;
    if (v1 >= 0x17)
    {
      if ((v1 | 7) == 0x17)
      {
        v5 = 25;
      }

      else
      {
        v5 = (v1 | 7) + 1;
      }

      v3 = operator new(v5);
      *&buf[8] = v2;
      *&buf[16] = v5 | 0x8000000000000000;
      *buf = v3;
    }

    else
    {
      buf[23] = v1;
      v3 = buf;
      if (!v1)
      {
LABEL_13:
        v3[v2] = 0;
        NetworkingModule::getBundleIDList_sync(this, buf, &cf);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
          v6 = cf;
          if (cf)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v6 = cf;
          if (cf)
          {
LABEL_15:
            v7 = *(this + 14);
            theArray = v6;
            CFRetain(v6);
            Count = CFArrayGetCount(v6);
            v9 = &off_29769A000;
            v60 = Count;
            if (Count)
            {
              v10 = 0;
              v62 = 0;
              while (1)
              {
                memset(&__p, 170, sizeof(__p));
                CFArrayGetValueAtIndex(theArray, v10);
                memset(&v80, 0, sizeof(v80));
                ctu::cf::assign();
                __p = v80;
                if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v71, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                }

                else
                {
                  v71 = __p;
                }

                v11 = NEHelperCacheCopyAppUUIDMapping();
                v12 = v11;
                if (v11)
                {
                  object = v11;
                }

                else
                {
                  v12 = xpc_null_create();
                  object = v12;
                  if (!v12)
                  {
                    v13 = xpc_null_create();
                    v12 = 0;
                    goto LABEL_28;
                  }
                }

                if (MEMORY[0x29C272BA0](v12) == MEMORY[0x29EDCA9E0])
                {
                  xpc_retain(v12);
                  goto LABEL_29;
                }

                v13 = xpc_null_create();
LABEL_28:
                object = v13;
LABEL_29:
                xpc_release(v12);
                v14 = object;
                if (object)
                {
                  xpc_retain(object);
                  v15 = v14;
                }

                else
                {
                  v15 = xpc_null_create();
                }

                if (MEMORY[0x29C272BA0](v15) == MEMORY[0x29EDCA9E0])
                {
                  v80.__r_.__value_.__r.__words[0] = 0;
                  v80.__r_.__value_.__l.__size_ = &v80;
                  v80.__r_.__value_.__r.__words[2] = 0x3052000000;
                  *&v81 = __Block_byref_object_copy__3;
                  *(&v81 + 1) = __Block_byref_object_dispose__3;
                  v82 = 0;
                  *applier = MEMORY[0x29EDCA5F8];
                  *&applier[8] = 3221225472;
                  *&applier[16] = ___ZN20NetworkPolicyManager10uuidBridgeEN3xpc5arrayE_block_invoke;
                  v78 = &unk_29EE6C230;
                  v79 = &v80;
                  xpc_array_apply(v15, applier);
                  obj = *(v80.__r_.__value_.__l.__size_ + 40);
                  _Block_object_dispose(&v80, 8);
                }

                else
                {
                  obj = 0;
                }

                xpc_release(v15);
                v16 = *v7;
                if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
                {
                  v17 = SHIBYTE(v71.__r_.__value_.__r.__words[2]);
                  v18 = v71.__r_.__value_.__r.__words[0];
                  xpc::object::to_string(&v80, &object);
                  v19 = &v71;
                  if (v17 < 0)
                  {
                    v19 = v18;
                  }

                  v20 = &v80;
                  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v20 = v80.__r_.__value_.__r.__words[0];
                  }

                  *applier = 136315394;
                  *&applier[4] = v19;
                  *&applier[12] = 2080;
                  *&applier[14] = v20;
                  _os_log_impl(&dword_297476000, v16, OS_LOG_TYPE_DEFAULT, "#I UUIDs for bundleID:%s => %s", applier, 0x16u);
                  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v80.__r_.__value_.__l.__data_);
                  }

                  v14 = object;
                }

                xpc_release(v14);
                if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v71.__r_.__value_.__l.__data_);
                  v61 = v10;
                  if (obj)
                  {
LABEL_45:
                    v21 = [MEMORY[0x29EDBB898] allInterfaces];
                    if (v21)
                    {
                      v22 = [MEMORY[0x29EDBB8B0] routeRuleWithAction:4 forType:2];
                      if (v22)
                      {
                        v76 = v22;
                        v23 = [MEMORY[0x29EDBB8A8] routeRules:{objc_msgSend(MEMORY[0x29EDB8D80], "arrayWithObjects:count:", &v76, 1)}];
                        if (v23)
                        {
                          v69 = 0u;
                          v70 = 0u;
                          v67 = 0u;
                          v68 = 0u;
                          v24 = [obj countByEnumeratingWithState:&v67 objects:buf count:16];
                          if (v24)
                          {
                            v64 = v21;
                            v25 = *v68;
                            do
                            {
                              for (i = 0; i != v24; ++i)
                              {
                                if (*v68 != v25)
                                {
                                  objc_enumerationMutation(obj);
                                }

                                v27 = *(*(&v67 + 1) + 8 * i);
                                v28 = [MEMORY[0x29EDBB898] effectiveApplication:v27];
                                if (v28)
                                {
                                  v29 = objc_alloc(MEMORY[0x29EDBB888]);
                                  v74[0] = v28;
                                  v74[1] = v64;
                                  v30 = [v29 initWithOrder:0 result:v23 conditions:{objc_msgSend(MEMORY[0x29EDB8D80], "arrayWithObjects:count:", v74, 2)}];
                                  if (v30)
                                  {
                                    v31 = [*(v7 + 8) addPolicy:v30];
                                    v32 = *v7;
                                    v33 = os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT);
                                    if (v31)
                                    {
                                      if (v33)
                                      {
                                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                        {
                                          p_p = &__p;
                                        }

                                        else
                                        {
                                          p_p = __p.__r_.__value_.__r.__words[0];
                                        }

                                        v35 = [objc_msgSend(v27 "UUIDString")];
                                        v36 = [v23 resultType];
                                        LODWORD(v80.__r_.__value_.__l.__data_) = 136315906;
                                        *(v80.__r_.__value_.__r.__words + 4) = p_p;
                                        WORD2(v80.__r_.__value_.__r.__words[1]) = 2080;
                                        *(&v80.__r_.__value_.__r.__words[1] + 6) = v35;
                                        HIWORD(v80.__r_.__value_.__r.__words[2]) = 1024;
                                        LODWORD(v81) = v36;
                                        WORD2(v81) = 1024;
                                        *(&v81 + 6) = v31;
                                        _os_log_impl(&dword_297476000, v32, OS_LOG_TYPE_DEFAULT, "#I Valid policy; bundle-id:%s UUID:%s result:%u policy-id:%u", &v80, 0x22u);
                                      }

                                      v62 = 1;
                                    }

                                    else if (v33)
                                    {
                                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                      {
                                        v37 = &__p;
                                      }

                                      else
                                      {
                                        v37 = __p.__r_.__value_.__r.__words[0];
                                      }

                                      v38 = [objc_msgSend(v27 "UUIDString")];
                                      v39 = [v23 resultType];
                                      LODWORD(v80.__r_.__value_.__l.__data_) = 136315650;
                                      *(v80.__r_.__value_.__r.__words + 4) = v37;
                                      WORD2(v80.__r_.__value_.__r.__words[1]) = 2080;
                                      *(&v80.__r_.__value_.__r.__words[1] + 6) = v38;
                                      HIWORD(v80.__r_.__value_.__r.__words[2]) = 1024;
                                      LODWORD(v81) = v39;
                                      _os_log_impl(&dword_297476000, v32, OS_LOG_TYPE_DEFAULT, "#I Invalid policy; bundle-id:%s UUID:%s result:%u ", &v80, 0x1Cu);
                                    }
                                  }
                                }
                              }

                              v24 = [obj countByEnumeratingWithState:&v67 objects:buf count:16];
                            }

                            while (v24);
                          }

                          goto LABEL_84;
                        }

                        v47 = *v7;
                        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
                        {
                          LOWORD(v80.__r_.__value_.__l.__data_) = 0;
                          v42 = v47;
                          v43 = "#I Result creation failed";
LABEL_82:
                          v44 = 2;
LABEL_83:
                          _os_log_impl(&dword_297476000, v42, OS_LOG_TYPE_DEFAULT, v43, &v80, v44);
                          goto LABEL_84;
                        }
                      }

                      else
                      {
                        v46 = *v7;
                        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
                        {
                          LOWORD(v80.__r_.__value_.__l.__data_) = 0;
                          v42 = v46;
                          v43 = "#I Route rule creation failed";
                          goto LABEL_82;
                        }
                      }
                    }

                    else
                    {
                      v45 = *v7;
                      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
                      {
                        LOWORD(v80.__r_.__value_.__l.__data_) = 0;
                        v42 = v45;
                        v43 = "#I Interface condition creation failed";
                        goto LABEL_82;
                      }
                    }

                    goto LABEL_84;
                  }
                }

                else
                {
                  v61 = v10;
                  if (obj)
                  {
                    goto LABEL_45;
                  }
                }

                v40 = *v7;
                if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
                {
                  v41 = &__p;
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v41 = __p.__r_.__value_.__r.__words[0];
                  }

                  LODWORD(v80.__r_.__value_.__l.__data_) = 136315138;
                  *(v80.__r_.__value_.__r.__words + 4) = v41;
                  v42 = v40;
                  v43 = "#I No UUIDs available for bundle-id:%s";
                  v44 = 12;
                  goto LABEL_83;
                }

LABEL_84:
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                  v10 = v61 + 1;
                  if (v61 + 1 == v60)
                  {
LABEL_86:
                    if (v62)
                    {
                      v9 = &off_29769A000;
                      v48 = [*(v7 + 8) apply];
                      v49 = theArray;
                      if (!theArray)
                      {
                        goto LABEL_99;
                      }

                      goto LABEL_98;
                    }

                    v48 = 0;
                    v9 = &off_29769A000;
                    v49 = theArray;
                    if (theArray)
                    {
                      goto LABEL_98;
                    }

                    goto LABEL_99;
                  }
                }

                else
                {
                  v10 = v61 + 1;
                  if (v61 + 1 == v60)
                  {
                    goto LABEL_86;
                  }
                }
              }
            }

            v54 = *v7;
            if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
            {
              v48 = 1;
              v49 = theArray;
              if (!theArray)
              {
                goto LABEL_99;
              }

              goto LABEL_98;
            }

            *buf = 0;
            _os_log_impl(&dword_297476000, v54, OS_LOG_TYPE_DEFAULT, "#I Empty bundle-id list; nothing to apply", buf, 2u);
            v48 = 1;
            v49 = theArray;
            if (theArray)
            {
LABEL_98:
              CFRelease(v49);
            }

LABEL_99:
            v55 = *(this + 13);
            if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_104;
            }

            v56 = "failed";
            if (v48)
            {
              v56 = "successful";
            }

            *buf = *(v9 + 135);
            *&buf[4] = __src;
            *&buf[12] = 2080;
            *&buf[14] = v56;
            v51 = "#I Applying network policy for '%s' %s ";
            v52 = v55;
            v53 = 22;
            goto LABEL_103;
          }
        }

        v50 = *(this + 13);
        if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_104;
        }

        *buf = 136315138;
        *&buf[4] = __src;
        v51 = "#I No network policy to apply for action: %s";
        v52 = v50;
        v53 = 12;
LABEL_103:
        _os_log_impl(&dword_297476000, v52, OS_LOG_TYPE_DEFAULT, v51, buf, v53);
LABEL_104:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_106;
      }
    }

    memmove(v3, __src, v2);
    goto LABEL_13;
  }

  v4 = *(this + 13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Network policy update is not supported", buf, 2u);
  }

LABEL_106:
  v57 = *MEMORY[0x29EDCA608];
}

void sub_2975C60A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void NetworkingModule::getBundleIDList_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, CFTypeRef *a3@<X8>)
{
  memset(&v30, 170, sizeof(v30));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, *a2, *(a2 + 8));
  }

  else
  {
    v30 = *a2;
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = (&v30 + HIBYTE(v30.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v5 = (v30.__r_.__value_.__r.__words[0] + v30.__r_.__value_.__l.__size_);
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v30;
  }

  else
  {
    v6 = v30.__r_.__value_.__r.__words[0];
  }

  for (; v6 != v5; v6 = (v6 + 1))
  {
    v6->__r_.__value_.__s.__data_[0] = __toupper(v6->__r_.__value_.__s.__data_[0]);
  }

  cf = 0;
  if (!TelephonyUtilIsInternalBuild())
  {
    goto LABEL_23;
  }

  pthread_mutex_lock(&ctu::Singleton<ABMNetworkPolicy,ABMNetworkPolicy,ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>>::sInstance);
  if (qword_2A139A2C8)
  {
LABEL_14:
    v8 = qword_2A139A2C8;
    v7 = off_2A139A2D0;
    v26 = qword_2A139A2C8;
    v27 = off_2A139A2D0;
    if (!off_2A139A2D0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v8 = operator new(0x18uLL);
  MEMORY[0x29C270EE0](v8, @"com.apple.AppleBasebandManager.NetworkPolicy", *MEMORY[0x29EDB8FB0]);
  v31 = v8;
  v7 = operator new(0x20uLL);
  v7->__vftable = &unk_2A1E4AB08;
  v7->__shared_owners_ = 0;
  v7->__shared_weak_owners_ = 0;
  v7[1].__vftable = v8;
  v9 = off_2A139A2D0;
  qword_2A139A2C8 = v8;
  off_2A139A2D0 = v7;
  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    goto LABEL_14;
  }

  v26 = v8;
  v27 = v7;
LABEL_20:
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_21:
  pthread_mutex_unlock(&ctu::Singleton<ABMNetworkPolicy,ABMNetworkPolicy,ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>>::sInstance);
  Preferences::getPreference<__CFArray const*>(v8, &v30, &cf);
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
    v10 = cf;
    *a3 = cf;
    if (!v10)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = cf;
  *a3 = cf;
  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_24:
  CFRetain(v10);
  if (CFArrayGetCount(v10))
  {
    goto LABEL_55;
  }

LABEL_25:
  v11 = *(a1 + 104);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_297476000, v11, OS_LOG_TYPE_DEFAULT, "#I getBundleIDList_sync count zero", &v26, 2u);
  }

  v12 = *MEMORY[0x29EDBF7C8];
  v13 = strlen(*MEMORY[0x29EDBF7C8]);
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
    v27 = v14;
    v28 = v16 | 0x8000000000000000;
    v26 = v15;
    goto LABEL_35;
  }

  HIBYTE(v28) = v13;
  v15 = &v26;
  if (v13)
  {
LABEL_35:
    memmove(v15, v12, v14);
  }

  *(&v14->__vftable + v15) = 0;
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v30;
  }

  else
  {
    v17 = v30.__r_.__value_.__r.__words[0];
  }

  v18 = SHIBYTE(v28);
  v19 = v26;
  if (v28 >= 0)
  {
    v20 = &v26;
  }

  else
  {
    v20 = v26;
  }

  v21 = strcasecmp(v17, v20);
  if (v18 < 0)
  {
    v22 = v21;
    operator delete(v19);
    if (v22)
    {
      goto LABEL_55;
    }
  }

  else if (v21)
  {
    goto LABEL_55;
  }

  v23 = *(a1 + 128);
  if (v23)
  {
    v24 = CFGetTypeID(v23);
    if (v24 != CFArrayGetTypeID())
    {
      v25 = *a3;
      *a3 = 0;
      if (!v25)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    CFRetain(v23);
  }

  v25 = *a3;
  *a3 = v23;
  if (v25)
  {
LABEL_54:
    CFRelease(v25);
  }

LABEL_55:
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }
}

void sub_2975C656C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&a19);
  pthread_mutex_unlock(&ctu::Singleton<ABMNetworkPolicy,ABMNetworkPolicy,ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>>::sInstance);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void GlobalService::getShutdownStages(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t ___ZN20NetworkPolicyManager10uuidBridgeEN3xpc5arrayE_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 && MEMORY[0x29C272BA0](a3) == MEMORY[0x29EDCAA60])
  {
    if (!*(*(*(a1 + 32) + 8) + 40))
    {
      *(*(*(a1 + 32) + 8) + 40) = [MEMORY[0x29EDB8DE8] array];
    }

    v5 = [objc_alloc(MEMORY[0x29EDBA140]) initWithUUIDBytes:xpc_uuid_get_bytes(a3)];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
  }

  return 1;
}

atomic_ullong *std::shared_ptr<NetworkingModule>::shared_ptr[abi:ne200100]<NetworkingModule,std::shared_ptr<NetworkingModule> ctu::SharedSynchronizable<NetworkingModule>::make_shared_ptr<NetworkingModule>(NetworkingModule*)::{lambda(NetworkingModule*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E4AA68;
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

void sub_2975C68F8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<NetworkingModule> ctu::SharedSynchronizable<NetworkingModule>::make_shared_ptr<NetworkingModule>(NetworkingModule*)::{lambda(NetworkingModule*)#1}::operator() const(NetworkingModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<NetworkingModule *,std::shared_ptr<NetworkingModule> ctu::SharedSynchronizable<NetworkingModule>::make_shared_ptr<NetworkingModule>(NetworkingModule*)::{lambda(NetworkingModule *)#1},std::allocator<NetworkingModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<NetworkingModule *,std::shared_ptr<NetworkingModule> ctu::SharedSynchronizable<NetworkingModule>::make_shared_ptr<NetworkingModule>(NetworkingModule*)::{lambda(NetworkingModule *)#1},std::allocator<NetworkingModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI16NetworkingModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI16NetworkingModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI16NetworkingModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI16NetworkingModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<NetworkingModule> ctu::SharedSynchronizable<NetworkingModule>::make_shared_ptr<NetworkingModule>(NetworkingModule*)::{lambda(NetworkingModule*)#1}::operator() const(NetworkingModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::init(void)::$_0>(NetworkingModule::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::init(void)::$_0,dispatch_queue_s *::default_delete<NetworkingModule::init(void)::$_0>>)::{lambda(void *)#1}::__invoke(capabilities::abs *a1)
{
  v1 = *a1;
  v2 = **a1;
  if (capabilities::abs::supportsNetworkPolicy(a1))
  {
    v3 = operator new(0x28uLL);
    v3[1] = 0;
    v3[2] = 0;
    *v3 = &unk_2A1E4AAB8;
    ctu::OsLogLogger::OsLogLogger((v3 + 3), "com.apple.telephony", "net.policy");
    v3[4] = objc_alloc_init(MEMORY[0x29EDBB8B8]);
    v4 = v2[15];
    v2[14] = v3 + 3;
    v2[15] = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v6 = v2[16];
      v2[16] = Mutable;
      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  operator delete(v1);
  v7 = a1;
  if (a1)
  {
    v8 = *(a1 + 2);
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      v7 = a1;
    }

    operator delete(v7);
  }
}

void sub_2975C6BB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v4;
  MEMORY[0x29C270D60](v5);
  std::__shared_weak_count::~__shared_weak_count(v3);
  operator delete(v7);
  operator delete(v2);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void sub_2975C6BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<NetworkPolicyManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E4AAB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<NetworkPolicyManager>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {

    *(a1 + 32) = 0;
  }

  JUMPOUT(0x29C270D60);
}

void dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::shutdown(dispatch::group_session)::$_0>(NetworkingModule::shutdown(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::shutdown(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<NetworkingModule::shutdown(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(dispatch_group_t **__p)
{
  v2 = *__p;
  if (*__p)
  {
    if (*v2)
    {
      dispatch_group_leave(*v2);
      if (*v2)
      {
        dispatch_release(*v2);
      }
    }

    operator delete(v2);
  }

  v3 = __p[2];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = __p;
  }

  else
  {
    v4 = __p;
  }

  operator delete(v4);
}

void dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  NetworkingModule::registerCommandHandlers_sync(**a1);
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

void sub_2975C6E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  NetworkingModule::registerEventHandlers_sync(**a1);
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

void sub_2975C6F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>(NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2,dispatch_queue_s *::default_delete<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  NetworkingModule::applyLQMAbortPolicy_sync(**a1);
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

void sub_2975C7038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void *ABMNetworkPolicy::create_default_global(ABMNetworkPolicy *this)
{
  v2 = operator new(0x18uLL);
  MEMORY[0x29C270EE0](v2, @"com.apple.AppleBasebandManager.NetworkPolicy", *MEMORY[0x29EDB8FB0]);
  *this = v2;
  result = operator new(0x20uLL);
  *result = &unk_2A1E4AB08;
  result[1] = 0;
  result[2] = 0;
  result[3] = v2;
  *(this + 1) = result;
  return result;
}

void sub_2975C70D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::shared_ptr<ABMNetworkPolicy>::operator=[abi:ne200100](__int128 *a1)
{
  v1 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v2 = off_2A139A2D0;
  *&qword_2A139A2C8 = v1;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__shared_ptr_pointer<ABMNetworkPolicy *,std::shared_ptr<ABMNetworkPolicy>::__shared_ptr_default_delete<ABMNetworkPolicy,ABMNetworkPolicy>,std::allocator<ABMNetworkPolicy>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ABMNetworkPolicy *,std::shared_ptr<ABMNetworkPolicy>::__shared_ptr_default_delete<ABMNetworkPolicy,ABMNetworkPolicy>,std::allocator<ABMNetworkPolicy>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = MEMORY[0x29C270EF0]();

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ABMNetworkPolicy *,std::shared_ptr<ABMNetworkPolicy>::__shared_ptr_default_delete<ABMNetworkPolicy,ABMNetworkPolicy>,std::allocator<ABMNetworkPolicy>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002976A43D2)
  {
    if (((v2 & 0x80000002976A43D2 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002976A43D2))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002976A43D2 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI16NetworkingModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v73 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v64 = *a1;
  v2 = **a1;
  v3 = *(v2 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(&__p, (v1 + 1));
    v4 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Add network policy: %s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if ((TelephonyUtilIsInternalBuild() & 1) == 0)
  {
    v6 = *(v2 + 104);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Modifying network policy not supported in this build variant", &__p, 2u);
    }

    v7 = xpc_null_create();
    v8 = v1[2];
    __p.__r_.__value_.__r.__words[0] = v7;
    v9 = xpc_null_create();
    (*(v8 + 16))(v8, 3760250884, &__p);
    xpc_release(__p.__r_.__value_.__l.__data_);
    xpc_release(v9);
    goto LABEL_105;
  }

  memset(buf, 170, sizeof(buf));
  v5 = xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF2B8]);
  theArray[1] = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    theArray[1] = xpc_null_create();
  }

  memset(&__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(theArray[1]);
  if ((buf[23] & 0x80u) == 0)
  {
    v10 = &buf[buf[23]];
  }

  else
  {
    v10 = (*buf + *&buf[8]);
  }

  if ((buf[23] & 0x80u) == 0)
  {
    v11 = buf;
  }

  else
  {
    v11 = *buf;
  }

  for (; v11 != v10; ++v11)
  {
    *v11 = __toupper(*v11);
  }

  v12 = *MEMORY[0x29EDBF7C8];
  v13 = strlen(*MEMORY[0x29EDBF7C8]);
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

    p_p = operator new(v16);
    __p.__r_.__value_.__l.__size_ = v14;
    __p.__r_.__value_.__r.__words[2] = v16 | 0x8000000000000000;
    __p.__r_.__value_.__r.__words[0] = p_p;
    goto LABEL_32;
  }

  *(&__p.__r_.__value_.__s + 23) = v13;
  p_p = &__p;
  if (v13)
  {
LABEL_32:
    memmove(p_p, v12, v14);
  }

  p_p->__r_.__value_.__s.__data_[v14] = 0;
  if ((buf[23] & 0x80u) == 0)
  {
    v17 = buf;
  }

  else
  {
    v17 = *buf;
  }

  v18 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v19 = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p.__r_.__value_.__r.__words[0];
  }

  v21 = strcasecmp(v17, v20);
  v22 = v21;
  if (v18 < 0)
  {
    operator delete(v19);
    if (v22)
    {
      goto LABEL_41;
    }
  }

  else if (v21)
  {
LABEL_41:
    v23 = *(v2 + 104);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = buf;
      if ((buf[23] & 0x80u) != 0)
      {
        v24 = *buf;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v24;
      _os_log_impl(&dword_297476000, v23, OS_LOG_TYPE_DEFAULT, "#I Invalid network policy action: %s", &__p, 0xCu);
    }

    v25 = xpc_null_create();
    v26 = v1[2];
    __p.__r_.__value_.__r.__words[0] = v25;
    v27 = xpc_null_create();
    (*(v26 + 16))(v26, 3760250882, &__p);
    xpc_release(__p.__r_.__value_.__l.__data_);
    xpc_release(v27);
LABEL_99:
    if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_104;
  }

  memset(&theArray[1], 170, 24);
  v28 = xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF088]);
  value = v28;
  if (v28)
  {
    xpc_retain(v28);
  }

  else
  {
    value = xpc_null_create();
  }

  memset(&__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(value);
  v29 = HIBYTE(theArray[3]);
  if (SHIBYTE(theArray[3]) < 0)
  {
    v29 = theArray[2];
  }

  if (v29)
  {
    theArray[0] = 0xAAAAAAAAAAAAAAAALL;
    NetworkingModule::getBundleIDList_sync(v2, buf, theArray);
    if (!theArray[0])
    {
      v37 = *(v2 + 104);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_297476000, v37, OS_LOG_TYPE_DEFAULT, "#I BUG: We should never receive a null reference for bundle-id list", &__p, 2u);
      }

      v38 = xpc_null_create();
      v39 = v1[2];
      __p.__r_.__value_.__r.__words[0] = v38;
      v40 = xpc_null_create();
      (*(v39 + 16))(v39, 3760250880, &__p);
      xpc_release(__p.__r_.__value_.__l.__data_);
      xpc_release(v40);
      goto LABEL_96;
    }

    Count = CFArrayGetCount(theArray[0]);
    v31 = Count;
    if (Count)
    {
      v32 = theArray[0];
      if (SHIBYTE(theArray[3]) < 0)
      {
        std::string::__init_copy_ctor_external(&v68, theArray[1], theArray[2]);
      }

      else
      {
        v68 = *&theArray[1];
      }

      v42 = CFArrayGetCount(v32);
      v41 = *MEMORY[0x29EDB8ED8];
      __p.__r_.__value_.__r.__words[0] = 0;
      ctu::cf::convert_copy();
      v43 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__r.__words[0])
      {
        v74.length = v42;
        v74.location = 0;
        v44 = CFArrayContainsValue(v32, v74, __p.__r_.__value_.__l.__data_);
        CFRelease(v43);
        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v68.__r_.__value_.__l.__data_);
        }

        if (v44)
        {
          v45 = *(v2 + 104);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_297476000, v45, OS_LOG_TYPE_DEFAULT, "#I Policy for bundle-id already exists", &__p, 2u);
          }

          v46 = xpc_null_create();
          v47 = v1[2];
          __p.__r_.__value_.__r.__words[0] = v46;
          v48 = xpc_null_create();
          (*(v47 + 16))(v47, 0, &__p);
          xpc_release(__p.__r_.__value_.__l.__data_);
          xpc_release(v48);
LABEL_96:
          if (theArray[0])
          {
            CFRelease(theArray[0]);
          }

          goto LABEL_98;
        }
      }

      else if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v41 = *MEMORY[0x29EDB8ED8];
    }

    v67 = 0;
    __p.__r_.__value_.__r.__words[0] = 0;
    if (ctu::cf::convert_copy())
    {
      v67 = __p.__r_.__value_.__r.__words[0];
    }

    cf = 0;
    Mutable = CFArrayCreateMutable(v41, 0, MEMORY[0x29EDB9000]);
    v50 = Mutable;
    if (Mutable)
    {
      cf = Mutable;
    }

    if (v31)
    {
      for (i = 0; i != v31; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], i);
        v53 = ValueAtIndex;
        __p.__r_.__value_.__r.__words[0] = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
          CFArrayAppendValue(v50, v53);
          CFRelease(v53);
        }
      }
    }

    if (SHIBYTE(theArray[3]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, theArray[1], theArray[2]);
    }

    else
    {
      __p = *&theArray[1];
    }

    ctu::cf::convert_copy();
    v70 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v54 = *(v2 + 104);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_297476000, v54, OS_LOG_TYPE_DEFAULT, "#I Policy addition failed with some error", &__p, 2u);
    }

    v55 = xpc_null_create();
    v56 = v1[2];
    __p.__r_.__value_.__r.__words[0] = v55;
    v57 = xpc_null_create();
    (*(v56 + 16))(v56, 3760250880, &__p);
    xpc_release(__p.__r_.__value_.__l.__data_);
    xpc_release(v57);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v67)
    {
      CFRelease(v67);
    }

    goto LABEL_96;
  }

  v33 = *(v2 + 104);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_297476000, v33, OS_LOG_TYPE_DEFAULT, "#I Empty network policy bundle-id", &__p, 2u);
  }

  v34 = xpc_null_create();
  v35 = v1[2];
  __p.__r_.__value_.__r.__words[0] = v34;
  v36 = xpc_null_create();
  (*(v35 + 16))(v35, 3760250882, &__p);
  xpc_release(__p.__r_.__value_.__l.__data_);
  xpc_release(v36);
LABEL_98:
  if ((SHIBYTE(theArray[3]) & 0x80000000) == 0)
  {
    goto LABEL_99;
  }

  operator delete(theArray[1]);
  if ((buf[23] & 0x80000000) == 0)
  {
LABEL_100:
    v1 = v64;
    if (!v64)
    {
      goto LABEL_101;
    }

    goto LABEL_105;
  }

LABEL_104:
  operator delete(*buf);
  v1 = v64;
  if (!v64)
  {
LABEL_101:
    v58 = a1;
    if (!a1)
    {
      goto LABEL_112;
    }

    goto LABEL_108;
  }

LABEL_105:
  v59 = v1[2];
  if (v59)
  {
    _Block_release(v59);
  }

  xpc_release(v1[1]);
  operator delete(v1);
  v58 = a1;
  if (a1)
  {
LABEL_108:
    v60 = v58[2];
    if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v61 = v58;
      (v60->__on_zero_shared)(v60);
      std::__shared_weak_count::__release_weak(v60);
      v58 = v61;
    }

    operator delete(v58);
  }

LABEL_112:
  v62 = *MEMORY[0x29EDCA608];
}

void sub_2975C7D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, const void *a13, const void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, const void *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, xpc_object_t object, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMNetworkPolicy,ABMNetworkPolicy,ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>>::sInstance);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(&a13);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a14);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(&a21);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  _ZNSt3__110unique_ptrIZZN16NetworkingModule28registerCommandHandlers_syncEvEUb_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN16NetworkingModule28registerCommandHandlers_syncEvEUb_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI16NetworkingModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v95 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v84 = *a1;
  v2 = **a1;
  v3 = *(v2 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(__p, (v1 + 1));
    v4 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Remove network policy: %s", buf, 0xCu);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((TelephonyUtilIsInternalBuild() & 1) == 0)
  {
    v6 = *(v2 + 104);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Modifying network policy not supported in this build variant", __p, 2u);
    }

    v7 = xpc_null_create();
    v8 = v1[2];
    __p[0] = v7;
    v9 = xpc_null_create();
    (*(v8 + 16))(v8, 3760250884, __p);
    xpc_release(__p[0]);
    xpc_release(v9);
    goto LABEL_125;
  }

  memset(buf, 170, sizeof(buf));
  value = xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF2B8]);
  object.__r_.__value_.__r.__words[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object.__r_.__value_.__l.__data_);
  if ((buf[23] & 0x80u) == 0)
  {
    v10 = &buf[buf[23]];
  }

  else
  {
    v10 = (*buf + *&buf[8]);
  }

  if ((buf[23] & 0x80u) == 0)
  {
    v11 = buf;
  }

  else
  {
    v11 = *buf;
  }

  for (; v11 != v10; ++v11)
  {
    *v11 = __toupper(*v11);
  }

  v12 = *MEMORY[0x29EDBF7C8];
  v13 = strlen(*MEMORY[0x29EDBF7C8]);
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
    __p[2] = (v16 | 0x8000000000000000);
    __p[0] = v15;
    goto LABEL_32;
  }

  HIBYTE(__p[2]) = v13;
  v15 = __p;
  if (v13)
  {
LABEL_32:
    memmove(v15, v12, v14);
  }

  *(v14 + v15) = 0;
  if ((buf[23] & 0x80u) == 0)
  {
    v17 = buf;
  }

  else
  {
    v17 = *buf;
  }

  v18 = SHIBYTE(__p[2]);
  v19 = __p[0];
  if (SHIBYTE(__p[2]) >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  v21 = strcasecmp(v17, v20);
  v22 = v21;
  if (v18 < 0)
  {
    operator delete(v19);
    if (v22)
    {
      goto LABEL_41;
    }
  }

  else if (v21)
  {
LABEL_41:
    v23 = *(v2 + 104);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = buf;
      if ((buf[23] & 0x80u) != 0)
      {
        v24 = *buf;
      }

      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = v24;
      _os_log_impl(&dword_297476000, v23, OS_LOG_TYPE_DEFAULT, "#I Invalid network policy action: %s", __p, 0xCu);
    }

    v25 = xpc_null_create();
    v26 = v1[2];
    __p[0] = v25;
    v27 = xpc_null_create();
    (*(v26 + 16))(v26, 3760250882, __p);
    xpc_release(__p[0]);
    xpc_release(v27);
LABEL_119:
    if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_124;
  }

  memset(&object, 170, sizeof(object));
  v28 = xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF088]);
  v85[0] = v28;
  if (v28)
  {
    xpc_retain(v28);
  }

  else
  {
    v85[0] = xpc_null_create();
  }

  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v85[0]);
  size = HIBYTE(object.__r_.__value_.__r.__words[2]);
  if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = object.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    theArray = 0xAAAAAAAAAAAAAAAALL;
    NetworkingModule::getBundleIDList_sync(v2, buf, &theArray);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v31 = Count;
      if (Count)
      {
        v32 = theArray;
        if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v90, object.__r_.__value_.__l.__data_, object.__r_.__value_.__l.__size_);
        }

        else
        {
          v90 = object;
        }

        v41 = CFArrayGetCount(v32);
        v42 = *MEMORY[0x29EDB8ED8];
        __p[0] = 0;
        ctu::cf::convert_copy();
        v43 = __p[0];
        v85[0] = __p[0];
        if (__p[0])
        {
          v96.length = v41;
          v96.location = 0;
          v44 = CFArrayContainsValue(v32, v96, __p[0]);
          CFRelease(v43);
          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
          }

          if (v44)
          {
            v89 = 0;
            __p[0] = 0;
            if (ctu::cf::convert_copy())
            {
              v89 = __p[0];
            }

            cf = 0;
            Mutable = CFArrayCreateMutable(v42, 0, MEMORY[0x29EDB9000]);
            v46 = Mutable;
            if (Mutable)
            {
              cf = Mutable;
            }

            v47 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, v47);
              v49 = ValueAtIndex;
              if (ValueAtIndex && (v50 = CFGetTypeID(ValueAtIndex), v50 == CFStringGetTypeID()))
              {
                v87 = v49;
                CFRetain(v49);
              }

              else
              {
                v49 = 0;
                v87 = 0;
              }

              memset(__p, 0, 24);
              ctu::cf::assign();
              v86 = __p[2];
              *v85 = *__p;
              if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v51 = HIBYTE(object.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v51 = object.__r_.__value_.__l.__size_;
              }

              v52 = HIBYTE(v86);
              v53 = SHIBYTE(v86);
              if (SHIBYTE(v86) < 0)
              {
                v52 = v85[1];
              }

              if (v51 == v52)
              {
                if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_object = &object;
                }

                else
                {
                  p_object = object.__r_.__value_.__r.__words[0];
                }

                if (SHIBYTE(v86) >= 0)
                {
                  v55 = v85;
                }

                else
                {
                  v55 = v85[0];
                }

                v56 = memcmp(p_object, v55, v51) == 0;
                if ((v53 & 0x80000000) == 0)
                {
LABEL_95:
                  if (!v56)
                  {
                    goto LABEL_98;
                  }

                  goto LABEL_100;
                }
              }

              else
              {
                v56 = 0;
                if ((SHIBYTE(v86) & 0x80000000) == 0)
                {
                  goto LABEL_95;
                }
              }

              operator delete(v85[0]);
              if (!v56)
              {
LABEL_98:
                __p[0] = v49;
                if (v49)
                {
                  CFRetain(v49);
                  CFArrayAppendValue(v46, v49);
                  CFRelease(v49);
                }
              }

LABEL_100:
              if (v49)
              {
                CFRelease(v49);
              }

              if (v31 == ++v47)
              {
                v57 = *(v2 + 104);
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  v58 = buf;
                  if ((buf[23] & 0x80u) != 0)
                  {
                    v58 = *buf;
                  }

                  v59 = &object;
                  if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v59 = object.__r_.__value_.__r.__words[0];
                  }

                  LODWORD(__p[0]) = 136315650;
                  *(__p + 4) = v58;
                  WORD2(__p[1]) = 2080;
                  *(&__p[1] + 6) = v59;
                  HIWORD(__p[2]) = 2112;
                  __p[3] = v46;
                  _os_log_impl(&dword_297476000, v57, OS_LOG_TYPE_DEFAULT, "#I Remove policy for action=%s bundleid=%s array=%@", __p, 0x20u);
                }

                pthread_mutex_lock(&ctu::Singleton<ABMNetworkPolicy,ABMNetworkPolicy,ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>>::sInstance);
                if (qword_2A139A2C8)
                {
LABEL_109:
                  v61 = qword_2A139A2C8;
                  v60 = off_2A139A2D0;
                  __p[0] = qword_2A139A2C8;
                  __p[1] = off_2A139A2D0;
                  if (!off_2A139A2D0)
                  {
LABEL_138:
                    pthread_mutex_unlock(&ctu::Singleton<ABMNetworkPolicy,ABMNetworkPolicy,ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>>::sInstance);
                    v72 = cf;
                    if ((buf[23] & 0x80u) == 0)
                    {
                      v73 = buf;
                    }

                    else
                    {
                      v73 = *buf;
                    }

                    ctu::cf::MakeCFString::MakeCFString(v85, v73);
                    v74 = ctu::cf::plist_adapter::set<__CFArray *>(v61, v72, v85[0], 1);
                    MEMORY[0x29C270E70](v85);
                    v75 = __p[1];
                    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v75->__on_zero_shared)(v75);
                      std::__shared_weak_count::__release_weak(v75);
                    }

                    if (v74)
                    {
                      v76 = xpc_null_create();
                      v77 = v1[2];
                      __p[0] = v76;
                      v78 = xpc_null_create();
                      (*(v77 + 16))(v77, 0, __p);
                      xpc_release(__p[0]);
                      xpc_release(v78);
                    }

                    else
                    {
                      v79 = *(v2 + 104);
                      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                      {
                        LOWORD(__p[0]) = 0;
                        _os_log_impl(&dword_297476000, v79, OS_LOG_TYPE_DEFAULT, "#I Policy removal failed with preferences update error", __p, 2u);
                      }

                      v80 = xpc_null_create();
                      v81 = v1[2];
                      __p[0] = v80;
                      v82 = xpc_null_create();
                      (*(v81 + 16))(v81, 3760250880, __p);
                      xpc_release(__p[0]);
                      xpc_release(v82);
                    }

                    if (cf)
                    {
                      CFRelease(cf);
                    }

                    if (v89)
                    {
                      CFRelease(v89);
                    }

                    goto LABEL_116;
                  }
                }

                else
                {
                  v61 = operator new(0x18uLL);
                  MEMORY[0x29C270EE0](v61, @"com.apple.AppleBasebandManager.NetworkPolicy", *MEMORY[0x29EDB8FB0]);
                  v85[0] = v61;
                  v60 = operator new(0x20uLL);
                  *v60 = &unk_2A1E4AB08;
                  v60[1] = 0;
                  v60[2] = 0;
                  v60[3] = v61;
                  v71 = off_2A139A2D0;
                  qword_2A139A2C8 = v61;
                  off_2A139A2D0 = v60;
                  if (v71)
                  {
                    if (!atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v71->__on_zero_shared)(v71);
                      std::__shared_weak_count::__release_weak(v71);
                    }

                    goto LABEL_109;
                  }

                  __p[0] = v61;
                  __p[1] = v60;
                }

                atomic_fetch_add_explicit(v60 + 1, 1uLL, memory_order_relaxed);
                goto LABEL_138;
              }
            }
          }
        }

        else if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }
      }

      v62 = *(v2 + 104);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&dword_297476000, v62, OS_LOG_TYPE_DEFAULT, "#I Policy for bundle-id doesn't exist", __p, 2u);
      }

      v63 = xpc_null_create();
      v64 = v1[2];
      __p[0] = v63;
      v65 = xpc_null_create();
      (*(v64 + 16))(v64, 0, __p);
      xpc_release(__p[0]);
      xpc_release(v65);
    }

    else
    {
      v37 = *(v2 + 104);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&dword_297476000, v37, OS_LOG_TYPE_DEFAULT, "#I BUG: We should never receive a null reference for bundle-id list", __p, 2u);
      }

      v38 = xpc_null_create();
      v39 = v1[2];
      __p[0] = v38;
      v40 = xpc_null_create();
      (*(v39 + 16))(v39, 3760250880, __p);
      xpc_release(__p[0]);
      xpc_release(v40);
    }

LABEL_116:
    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  else
  {
    v33 = *(v2 + 104);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_297476000, v33, OS_LOG_TYPE_DEFAULT, "#I Empty network policy bundle-id", __p, 2u);
    }

    v34 = xpc_null_create();
    v35 = v1[2];
    __p[0] = v34;
    v36 = xpc_null_create();
    (*(v35 + 16))(v35, 3760250882, __p);
    xpc_release(__p[0]);
    xpc_release(v36);
  }

  if ((SHIBYTE(object.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_119;
  }

  operator delete(object.__r_.__value_.__l.__data_);
  if ((buf[23] & 0x80000000) == 0)
  {
LABEL_120:
    v1 = v84;
    if (!v84)
    {
      goto LABEL_121;
    }

    goto LABEL_125;
  }

LABEL_124:
  operator delete(*buf);
  v1 = v84;
  if (!v84)
  {
LABEL_121:
    v66 = a1;
    if (!a1)
    {
      goto LABEL_132;
    }

    goto LABEL_128;
  }

LABEL_125:
  v67 = v1[2];
  if (v67)
  {
    _Block_release(v67);
  }

  xpc_release(v1[1]);
  operator delete(v1);
  v66 = a1;
  if (a1)
  {
LABEL_128:
    v68 = v66[2];
    if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v69 = v66;
      (v68->__on_zero_shared)(v68);
      std::__shared_weak_count::__release_weak(v68);
      v66 = v69;
    }

    operator delete(v66);
  }

LABEL_132:
  v70 = *MEMORY[0x29EDCA608];
}

void sub_2975C8CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, char a14, int a15, const void *a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, const void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, xpc_object_t object, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&a11);
  pthread_mutex_unlock(&ctu::Singleton<ABMNetworkPolicy,ABMNetworkPolicy,ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>>::sInstance);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(&a16);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a17);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(&a25);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 105) < 0)
  {
    operator delete(*(v37 - 128));
  }

  _ZNSt3__110unique_ptrIZZN16NetworkingModule28registerCommandHandlers_syncEvEUb0_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN16NetworkingModule28registerCommandHandlers_syncEvEUb0_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI16NetworkingModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__7EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v42 = *a1;
  v2 = **a1;
  v3 = *(v2 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(&__p, (v1 + 1));
    v4 = v48 >= 0 ? &__p : __p;
    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Get network policy: %s", buf, 0xCu);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p);
    }
  }

  memset(buf, 170, 24);
  v5 = xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF2B8]);
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  __p = 0uLL;
  v48 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  if ((buf[23] & 0x80u) == 0)
  {
    v6 = &buf[buf[23]];
  }

  else
  {
    v6 = (*buf + *&buf[8]);
  }

  if ((buf[23] & 0x80u) == 0)
  {
    v7 = buf;
  }

  else
  {
    v7 = *buf;
  }

  for (; v7 != v6; ++v7)
  {
    *v7 = __toupper(*v7);
  }

  v8 = *MEMORY[0x29EDBF7C8];
  v9 = strlen(*MEMORY[0x29EDBF7C8]);
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

    p_p = operator new(v12);
    *(&__p + 1) = v10;
    v48 = v12 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_28;
  }

  HIBYTE(v48) = v9;
  p_p = &__p;
  if (v9)
  {
LABEL_28:
    memmove(p_p, v8, v10);
  }

  *(p_p + v10) = 0;
  if ((buf[23] & 0x80u) == 0)
  {
    v13 = buf;
  }

  else
  {
    v13 = *buf;
  }

  v14 = SHIBYTE(v48);
  v15 = __p;
  if (v48 >= 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p;
  }

  v17 = strcasecmp(v13, v16);
  v18 = v17;
  if (v14 < 0)
  {
    operator delete(v15);
    if (v18)
    {
      goto LABEL_37;
    }
  }

  else if (v17)
  {
LABEL_37:
    v19 = *(v2 + 104);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = buf;
      if ((buf[23] & 0x80u) != 0)
      {
        v20 = *buf;
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v20;
      _os_log_impl(&dword_297476000, v19, OS_LOG_TYPE_DEFAULT, "#I Invalid network policy action: %s", &__p, 0xCu);
    }

    v21 = xpc_null_create();
    v22 = v1[2];
    *&__p = v21;
    v23 = xpc_null_create();
    (*(v22 + 16))(v22, 3760250882, &__p);
    xpc_release(__p);
    xpc_release(v23);
    goto LABEL_64;
  }

  object = 0xAAAAAAAAAAAAAAAALL;
  NetworkingModule::getBundleIDList_sync(v2, buf, &object);
  if (!object || !CFArrayGetCount(object))
  {
    v26 = *(v2 + 104);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = buf;
      if ((buf[23] & 0x80u) != 0)
      {
        v27 = *buf;
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v27;
      _os_log_impl(&dword_297476000, v26, OS_LOG_TYPE_DEFAULT, "#I No network policy available for action: %s", &__p, 0xCu);
    }

    v28 = xpc_null_create();
    v29 = v1[2];
    *&__p = v28;
    v30 = xpc_null_create();
    (*(v29 + 16))(v29, 0, &__p);
    xpc_release(__p);
    xpc_release(v30);
    goto LABEL_62;
  }

  *&__p = 0xAAAAAAAAAAAAAAAALL;
  v24 = xpc_dictionary_create(0, 0, 0);
  v25 = v24;
  if (v24)
  {
    *&__p = v24;
  }

  else
  {
    v25 = xpc_null_create();
    *&__p = v25;
    if (!v25)
    {
      v31 = xpc_null_create();
      v25 = 0;
      goto LABEL_57;
    }
  }

  if (MEMORY[0x29C272BA0](v25) != MEMORY[0x29EDCAA00])
  {
    v31 = xpc_null_create();
LABEL_57:
    *&__p = v31;
    goto LABEL_58;
  }

  xpc_retain(v25);
LABEL_58:
  xpc_release(v25);
  ctu::cf_to_xpc(&value, object, v32);
  if ((buf[23] & 0x80u) == 0)
  {
    v33 = buf;
  }

  else
  {
    v33 = *buf;
  }

  xpc_dictionary_set_value(__p, v33, value);
  v34 = value;
  value = xpc_null_create();
  xpc_release(v34);
  xpc_release(value);
  value = 0;
  v43 = 0;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v1 + 2, &v43, &__p);
  xpc_release(__p);
LABEL_62:
  if (object)
  {
    CFRelease(object);
  }

LABEL_64:
  if (buf[23] < 0)
  {
    operator delete(*buf);
    v35 = v42;
    if (!v42)
    {
LABEL_66:
      v36 = a1;
      if (!a1)
      {
        goto LABEL_76;
      }

      goto LABEL_72;
    }
  }

  else
  {
    v35 = v42;
    if (!v42)
    {
      goto LABEL_66;
    }
  }

  v37 = v35[2];
  if (v37)
  {
    _Block_release(v37);
  }

  xpc_release(v35[1]);
  operator delete(v35);
  v36 = a1;
  if (a1)
  {
LABEL_72:
    v38 = v36[2];
    if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v39 = v36;
      (v38->__on_zero_shared)(v38);
      std::__shared_weak_count::__release_weak(v38);
      v36 = v39;
    }

    operator delete(v36);
  }

LABEL_76:
  v40 = *MEMORY[0x29EDCA608];
}