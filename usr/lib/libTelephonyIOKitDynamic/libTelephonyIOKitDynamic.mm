void ctu::iokit::sCameraServiceCallbackInternal(ctu::iokit *this, void *a2, int a3, unsigned int a4, void *a5)
{
  v6 = a2;
  v15 = *MEMORY[0x29EDCA608];
  ctu::iokit::sCreateOsLogContext(this);
  v8 = qword_2A1899B58;
  if (this)
  {
    if (os_log_type_enabled(qword_2A1899B58, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315394;
      v12 = "void ctu::iokit::sCameraServiceCallbackInternal(void *, io_service_t, uint32_t, void *)";
      v13 = 1024;
      v14 = a3;
      _os_log_debug_impl(&dword_298245000, v8, OS_LOG_TYPE_DEBUG, "%s: messageType: 0x%x", &v11, 0x12u);
    }

    ctu::iokit::Controller::cameraService(this, v6, a3, v9);
  }

  else if (os_log_type_enabled(qword_2A1899B58, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315138;
    v12 = "void ctu::iokit::sCameraServiceCallbackInternal(void *, io_service_t, uint32_t, void *)";
    _os_log_error_impl(&dword_298245000, v8, OS_LOG_TYPE_ERROR, "%s: refCon is NULL", &v11, 0xCu);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void ctu::iokit::sCreateOsLogContext(ctu::iokit *this)
{
  if ((atomic_load_explicit(&qword_2A1899B48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1899B48))
  {
    qword_2A1899B58 = 0;
    qword_2A1899B50 = 0;
    __cxa_atexit(MEMORY[0x29EDC91B8], &qword_2A1899B50, &dword_298245000);
    __cxa_guard_release(&qword_2A1899B48);
  }

  if (_MergedGlobals != -1)
  {

    dispatch_once(&_MergedGlobals, &__block_literal_global);
  }
}

void ctu::iokit::Controller::cameraService(ctu::iokit::Controller *this, io_registry_entry_t entry, int a3, void *a4)
{
  v100 = *MEMORY[0x29EDCA608];
  v5 = *(this + 1);
  if (*v5)
  {
    if (a3 == -536870608)
    {
      if (v5[16])
      {
        if (v5[17])
        {
          v7 = *MEMORY[0x29EDB8ED8];
          CFProperty = IORegistryEntryCreateCFProperty(entry, @"FrontIRCameraActive", *MEMORY[0x29EDB8ED8], 0);
          if (CFProperty)
          {
            v9 = CFProperty;
            Value = CFBooleanGetValue(CFProperty);
            CFRelease(v9);
            if (Value)
            {
              v11 = IORegistryEntryCreateCFProperty(entry, @"FrontIRCameraMode", v7, 0);
              if (v11 && (v12 = v11, v13 = CFGetTypeID(v11), v13 == CFStringGetTypeID()))
              {
                Value = CFStringCompare(v12, @"Authentication", 1uLL) == kCFCompareEqualTo;
                v14 = *this;
                if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(v93) = 138412290;
                  *(&v93 + 4) = v12;
                  _os_log_debug_impl(&dword_298245000, v14, OS_LOG_TYPE_DEBUG, "#D Front IR Camera Mode: %@", &v93, 0xCu);
                }

                CFRelease(v12);
              }

              else
              {
                Value = 1;
              }
            }

            v16 = *this;
            if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(v93) = 67109120;
              DWORD1(v93) = Value;
              _os_log_debug_impl(&dword_298245000, v16, OS_LOG_TYPE_DEBUG, "#D Front IR Camera Active: 0x%x", &v93, 8u);
            }

            v17 = *(this + 1);
            v18 = *(v17 + 128);
            if (v18)
            {
              v19 = _Block_copy(v18);
            }

            else
            {
              v19 = 0;
            }

            v20 = *(v17 + 136);
            *&v93 = MEMORY[0x29EDCA5F8];
            *(&v93 + 1) = 1174405120;
            v94 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu5iokit25TelephonyIOKitFaceIDStateEEEclIJS3_EEEvDpT__block_invoke;
            v95 = &__block_descriptor_tmp_125;
            if (v19)
            {
              v21 = _Block_copy(v19);
            }

            else
            {
              v21 = 0;
            }

            aBlock = v21;
            v97 = Value;
            dispatch_async(v20, &v93);
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v19)
            {
              _Block_release(v19);
            }
          }
        }
      }

      v22 = *(this + 1);
      if (*(v22 + 144))
      {
        if (*(v22 + 152))
        {
          v23 = IORegistryEntryCreateCFProperty(entry, @"FrontCameraActive", *MEMORY[0x29EDB8ED8], 0);
          v24 = v23;
          if (v23)
          {
            v25 = CFBooleanGetValue(v23);
            v26 = v25 != 0;
            CFRelease(v24);
            v27 = *this;
            if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(v93) = 67109120;
              DWORD1(v93) = v25 != 0;
              _os_log_debug_impl(&dword_298245000, v27, OS_LOG_TYPE_DEBUG, "#D Front Camera Active: 0x%x", &v93, 8u);
            }

            v28 = *(this + 1);
            v29 = *(v28 + 144);
            if (v29)
            {
              v30 = _Block_copy(v29);
            }

            else
            {
              v30 = 0;
            }

            v31 = *(v28 + 152);
            *&v93 = MEMORY[0x29EDCA5F8];
            *(&v93 + 1) = 1174405120;
            v94 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu5iokit30TelephonyIOKitFrontCameraStateEEEclIJS3_EEEvDpT__block_invoke;
            v95 = &__block_descriptor_tmp_126;
            if (v30)
            {
              v32 = _Block_copy(v30);
            }

            else
            {
              v32 = 0;
            }

            aBlock = v32;
            v97 = v26;
            dispatch_async(v31, &v93);
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v30)
            {
              _Block_release(v30);
            }
          }
        }
      }

      v33 = *(this + 1);
      if (*(v33 + 160))
      {
        if (*(v33 + 168))
        {
          v34 = IORegistryEntryCreateCFProperty(entry, @"BackTeleCameraActive", *MEMORY[0x29EDB8ED8], 0);
          v35 = v34;
          if (v34)
          {
            v36 = CFBooleanGetValue(v34);
            v37 = v36 != 0;
            CFRelease(v35);
            v38 = *this;
            if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(v93) = 67109120;
              DWORD1(v93) = v36 != 0;
              _os_log_debug_impl(&dword_298245000, v38, OS_LOG_TYPE_DEBUG, "#D Back Tele Camera Active: 0x%x", &v93, 8u);
            }

            v39 = *(this + 1);
            v40 = *(v39 + 160);
            if (v40)
            {
              v41 = _Block_copy(v40);
            }

            else
            {
              v41 = 0;
            }

            v42 = *(v39 + 168);
            *&v93 = MEMORY[0x29EDCA5F8];
            *(&v93 + 1) = 1174405120;
            v94 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu5iokit33TelephonyIOKitBackTeleCameraStateEEEclIJS3_EEEvDpT__block_invoke;
            v95 = &__block_descriptor_tmp_127;
            if (v41)
            {
              v43 = _Block_copy(v41);
            }

            else
            {
              v43 = 0;
            }

            aBlock = v43;
            v97 = v37;
            dispatch_async(v42, &v93);
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v41)
            {
              _Block_release(v41);
            }
          }
        }
      }

      v44 = *(this + 1);
      if (*(v44 + 176))
      {
        if (*(v44 + 184))
        {
          v45 = IORegistryEntryCreateCFProperty(entry, @"BackSuperWideCameraActive", *MEMORY[0x29EDB8ED8], 0);
          v46 = v45;
          if (v45)
          {
            v47 = CFBooleanGetValue(v45);
            v48 = v47 != 0;
            CFRelease(v46);
            v49 = *this;
            if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(v93) = 67109120;
              DWORD1(v93) = v47 != 0;
              _os_log_debug_impl(&dword_298245000, v49, OS_LOG_TYPE_DEBUG, "#D Back Super Wide Camera Active: 0x%x", &v93, 8u);
            }

            v50 = *(this + 1);
            v51 = *(v50 + 176);
            if (v51)
            {
              v52 = _Block_copy(v51);
            }

            else
            {
              v52 = 0;
            }

            v53 = *(v50 + 184);
            *&v93 = MEMORY[0x29EDCA5F8];
            *(&v93 + 1) = 1174405120;
            v94 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu5iokit38TelephonyIOKitBackSuperWideCameraStateEEEclIJS3_EEEvDpT__block_invoke;
            v95 = &__block_descriptor_tmp_128;
            if (v52)
            {
              v54 = _Block_copy(v52);
            }

            else
            {
              v54 = 0;
            }

            aBlock = v54;
            v97 = v48;
            dispatch_async(v53, &v93);
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v52)
            {
              _Block_release(v52);
            }
          }
        }
      }

      v55 = *(this + 1);
      if (*(v55 + 192))
      {
        if (*(v55 + 200))
        {
          v56 = IORegistryEntryCreateCFProperty(entry, @"BackCameraActive", *MEMORY[0x29EDB8ED8], 0);
          v57 = v56;
          if (v56)
          {
            v58 = CFBooleanGetValue(v56);
            v59 = v58 != 0;
            CFRelease(v57);
            v60 = *this;
            if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(v93) = 67109120;
              DWORD1(v93) = v58 != 0;
              _os_log_debug_impl(&dword_298245000, v60, OS_LOG_TYPE_DEBUG, "#D Back Camera Active: 0x%x", &v93, 8u);
            }

            v61 = *(this + 1);
            v62 = *(v61 + 192);
            if (v62)
            {
              v63 = _Block_copy(v62);
            }

            else
            {
              v63 = 0;
            }

            v64 = *(v61 + 200);
            *&v93 = MEMORY[0x29EDCA5F8];
            *(&v93 + 1) = 1174405120;
            v94 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu5iokit29TelephonyIOKitBackCameraStateEEEclIJS3_EEEvDpT__block_invoke;
            v95 = &__block_descriptor_tmp_129;
            if (v63)
            {
              v65 = _Block_copy(v63);
            }

            else
            {
              v65 = 0;
            }

            aBlock = v65;
            v97 = v59;
            dispatch_async(v64, &v93);
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v63)
            {
              _Block_release(v63);
            }
          }
        }
      }

      v66 = *(this + 1);
      if (*(v66 + 208) && *(v66 + 216))
      {
        v67 = *MEMORY[0x29EDB8ED8];
        v68 = IORegistryEntryCreateCFProperty(entry, @"BackCameraActive", *MEMORY[0x29EDB8ED8], 0);
        v69 = v68;
        v70 = MEMORY[0x29EDB8F00];
        if (v68)
        {
          v71 = CFGetTypeID(v68);
          v73 = v71 == CFBooleanGetTypeID() && v69 == *v70;
          CFRelease(v69);
          v74 = *this;
          if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v93) = 67109120;
            DWORD1(v93) = v73;
            _os_log_debug_impl(&dword_298245000, v74, OS_LOG_TYPE_DEBUG, "#D Back Camera Active: 0x%x", &v93, 8u);
          }
        }

        else
        {
          LOBYTE(v73) = 0;
        }

        v75 = IORegistryEntryCreateCFProperty(entry, @"BackSuperWideCameraActive", v67, 0);
        v76 = v75;
        if (v75)
        {
          v77 = CFGetTypeID(v75);
          v79 = v77 == CFBooleanGetTypeID() && v76 == *v70;
          CFRelease(v76);
          v80 = *this;
          if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v93) = 67109120;
            DWORD1(v93) = v79;
            _os_log_debug_impl(&dword_298245000, v80, OS_LOG_TYPE_DEBUG, "#D Back Super Wide Camera Active: 0x%x", &v93, 8u);
          }
        }

        else
        {
          LOBYTE(v79) = 0;
        }

        v81 = IORegistryEntryCreateCFProperty(entry, @"BackTeleCameraActive", v67, 0);
        v82 = v81;
        if (v81)
        {
          v83 = CFGetTypeID(v81);
          v85 = v83 == CFBooleanGetTypeID() && v82 == *v70;
          CFRelease(v82);
          v86 = *this;
          if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v93) = 67109120;
            DWORD1(v93) = v85;
            _os_log_debug_impl(&dword_298245000, v86, OS_LOG_TYPE_DEBUG, "#D Back Tele Camera Active: 0x%x", &v93, 8u);
          }
        }

        else
        {
          LOBYTE(v85) = 0;
        }

        v87 = *(this + 1);
        v88 = *(v87 + 208);
        if (v88)
        {
          v89 = _Block_copy(v88);
        }

        else
        {
          v89 = 0;
        }

        v90 = *(v87 + 216);
        *&v93 = MEMORY[0x29EDCA5F8];
        *(&v93 + 1) = 1174405120;
        v94 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu5iokit29TelephonyIOKitBackCameraStateENS2_33TelephonyIOKitBackTeleCameraStateENS2_38TelephonyIOKitBackSuperWideCameraStateEEEclIJS3_S4_S5_EEEvDpT__block_invoke;
        v95 = &__block_descriptor_tmp_130;
        if (v89)
        {
          v91 = _Block_copy(v89);
        }

        else
        {
          v91 = 0;
        }

        aBlock = v91;
        v97 = v73;
        v98 = v85;
        v99 = v79;
        dispatch_async(v90, &v93);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v89)
        {
          _Block_release(v89);
        }
      }
    }
  }

  else
  {
    v15 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v93) = 136315138;
      *(&v93 + 4) = "void ctu::iokit::Controller::cameraService(io_service_t, uint32_t, void *)";
      _os_log_error_impl(&dword_298245000, v15, OS_LOG_TYPE_ERROR, "%s: notificationPort is NULL", &v93, 0xCu);
    }
  }

  v92 = *MEMORY[0x29EDCA608];
}

void sub_298246710(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c81_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit25TelephonyIOKitFaceIDStateEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c81_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit25TelephonyIOKitFaceIDStateEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZZN3ctu5iokit15IOHIDController4initEvENK3__0clEv_block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[6];
  if (v6)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v6);
    if (v10)
    {
      v11 = v10;
      if (a1[5] && !a3 && a5)
      {
        if (IOHIDEventGetType() == 14 && *(v9 + 40))
        {
          IOHIDEventGetIntegerValue();
          (*(*(v9 + 40) + 16))();
        }

        IntegerValue = IOHIDEventGetIntegerValue();
        if ((IOHIDEventGetIntegerValue() | (IntegerValue << 16)) == 0xFF090002 && *(v9 + 48))
        {
          v13 = IOHIDEventGetIntegerValue();
          (*(*(v9 + 48) + 16))(*(v9 + 48), v13 != 0);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void ctu::power::manager::_powerChanged(io_connect_t *this, unsigned int *a2, int a3, intptr_t notificationID, void *a5)
{
  HIDWORD(v9) = a3 + 536870288;
  LODWORD(v9) = a3 + 536870288;
  v8 = v9 >> 4;
  if (v8 <= 1)
  {
    if (!v8)
    {
      v40 = 0xAAAAAAAAAAAAAAAALL;
      v41 = 0xAAAAAAAAAAAAAAAALL;
      ctu::power::manager::get(&v40);
      v20 = v40;
      v12 = v41;
      *(v40 + 112) = 256;
      v21 = *(v20 + 16);
      v35[0] = MEMORY[0x29EDCA5F8];
      v35[1] = 1174405120;
      v35[2] = ___ZN3ctu5power7manager13_powerChangedEPjjjPv_block_invoke;
      v35[3] = &__block_descriptor_tmp_4;
      v35[4] = v20;
      v36 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
      }

      v39 = a3;
      v37 = this;
      v38 = notificationID;
      dispatch_async(v21, v35);
      v16 = v36;
      if (!v36)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (v8 != 1)
    {
LABEL_27:
      v22 = *this;

      IOAllowPowerChange(v22, notificationID);
      return;
    }

    v40 = 0xAAAAAAAAAAAAAAAALL;
    v41 = 0xAAAAAAAAAAAAAAAALL;
    ctu::power::manager::get(&v40);
    v17 = v40;
    v12 = v41;
    v18 = (*(v40 + 113) & 1) == 0;
    *(v40 + 112) = v18;
    v19 = *(v17 + 16);
    v29[0] = MEMORY[0x29EDCA5F8];
    v29[1] = 1174405120;
    v29[2] = ___ZN3ctu5power7manager13_powerChangedEPjjjPv_block_invoke_5;
    v29[3] = &__block_descriptor_tmp_8;
    v29[4] = v17;
    v30 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }

    v33 = a3;
    v34 = v18;
    v31 = this;
    v32 = notificationID;
    dispatch_async(v19, v29);
    v16 = v30;
    if (v30)
    {
LABEL_13:
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else
  {
    if (v8 != 2 && v8 != 9 && v8 != 11)
    {
      goto LABEL_27;
    }

    v40 = 0xAAAAAAAAAAAAAAAALL;
    v41 = 0xAAAAAAAAAAAAAAAALL;
    ctu::power::manager::get(&v40);
    v13 = v40;
    v12 = v41;
    v14 = *(v40 + 112);
    v15 = *(v40 + 16);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN3ctu5power7manager13_powerChangedEPjjjPv_block_invoke_9;
    block[3] = &__block_descriptor_tmp_12;
    block[4] = v40;
    v24 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
    }

    v27 = a3;
    v28 = v14;
    v25 = this;
    v26 = notificationID;
    dispatch_async(v15, block);
    *(v13 + 113) = 0;
    v16 = v24;
    if (v24)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void ctu::power::manager::get(void *a1@<X8>)
{
  if (_MergedGlobals_0 != -1)
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
  }

  v3 = *(qword_2A1899B68 + 8);
  *a1 = *qword_2A1899B68;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t __copy_helper_block_e8_32c46_ZTSNSt3__110shared_ptrIN3ctu5power7managerEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN3ctu5power7manager14listenerHandleclERKjRKbRKN8dispatch5groupENSt3__110shared_ptrINSB_6atomicIbEEEE_block_invoke(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN3ctu5power7manager14listenerHandleclERKjRKbRKN8dispatch5groupENSt3__110shared_ptrINSB_6atomicIbEEEE_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_38;
  group = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(group);
  }

  v4 = a1[8];
  v9 = a1[7];
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a1[4];
  v6 = *v3;
  v11 = _Block_copy(v7);
  (*(v5 + 16))(v5, v6, &v11);
  if (v11)
  {
    _Block_release(v11);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_298246DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, dispatch_group_t group, uint64_t a14, std::__shared_weak_count *a15)
{
  v17 = *(v15 - 24);
  if (v17)
  {
    _Block_release(v17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c30_ZTSN8dispatch13group_sessionE40c40_ZTSNSt3__110shared_ptrINS_6atomicIbEEEE(void *a1, void *a2)
{
  v4 = a2[4];
  a1[4] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[4];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a2[6];
  a1[5] = a2[5];
  a1[6] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t ctu::power::manager::handlePowerChanged_sync(ctu::power::manager *this, int a2, char a3)
{
  v97[5] = *MEMORY[0x29EDCA608];
  v91 = a2;
  v90 = a3;
  v5 = operator new(0x20uLL);
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = &unk_2A1EB0878;
  v5[24] = 1;
  v82 = (v5 + 24);
  v6 = dispatch_group_create();
  v83 = v5;
  v7 = operator new(0x38uLL);
  v8 = v7;
  v7->__vftable = &unk_2A1EB08C8;
  v7->__shared_owners_ = 0;
  v7->__shared_weak_owners_ = 0;
  v7[1].__vftable = v6;
  if (v6)
  {
    dispatch_retain(v6);
    v8[1].__shared_owners_ = 0;
    v8[1].__shared_weak_owners_ = 0;
    v8[2].__vftable = 0;
    dispatch_release(v6);
  }

  else
  {
    v7[1].__shared_owners_ = 0;
    v7[1].__shared_weak_owners_ = 0;
    v7[2].__vftable = 0;
  }

  HIDWORD(v10) = a2 + 536870288;
  LODWORD(v10) = a2 + 536870288;
  v9 = v10 >> 4;
  if (v9 <= 0xB)
  {
    v11 = off_29EE8E230[v9];
  }

  v86 = v8;
  _TelephonyUtilDebugPrint();
  v12 = this + 88;
  v13 = *(this + 12);
  if (v13 != this + 88)
  {
    v81 = this + 88;
    do
    {
      v14 = *(v13 + 3);
      if (v14)
      {
        v15 = *(v13 + 2);
        atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v16 = std::__shared_weak_count::lock(v14);
        if (v16)
        {
          if (v15)
          {
            v84 = v16;
            v85 = v14;
            if (*(v15 + 55) < 0)
            {
              std::string::__init_copy_ctor_external(&v96, *(v15 + 32), *(v15 + 40));
            }

            else
            {
              *&v96.__first_ = *(v15 + 32);
              v96.__end_ = *(v15 + 48);
            }

            HIDWORD(v18) = v91 + 536870288;
            LODWORD(v18) = v91 + 536870288;
            v17 = v18 >> 4;
            if (v17 <= 0xB)
            {
              v19 = off_29EE8E230[v17];
            }

            _TelephonyUtilDebugPrint();
            if (SHIBYTE(v96.__end_) < 0)
            {
              operator delete(v96.__first_);
            }

            if (*(v15 + 55) < 0)
            {
              std::string::__init_copy_ctor_external(&v89, *(v15 + 32), *(v15 + 40));
            }

            else
            {
              v89 = *(v15 + 32);
            }

            v93.__r_.__value_.__r.__words[0] = v89.__r_.__value_.__l.__size_;
            v20 = v89.__r_.__value_.__r.__words[0];
            *(v93.__r_.__value_.__r.__words + 7) = *(&v89.__r_.__value_.__r.__words[1] + 7);
            v21 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
            memset(&v89, 0, sizeof(v89));
            v94 = 0;
            memset(v95, 0, sizeof(v95));
            v22 = dispatch_group_create();
            v23 = v22;
            if (v22)
            {
              dispatch_retain(v22);
              dispatch_group_enter(v23);
              dispatch_release(v23);
            }

            group = v23;
            v24 = operator new(0x30uLL);
            *(v24 + 1) = 0;
            *(v24 + 2) = 0;
            *v24 = &unk_2A1EB07B0;
            *(v24 + 3) = v20;
            v25 = v24 + 24;
            *(v24 + 4) = v93.__r_.__value_.__r.__words[0];
            *(v24 + 39) = *(v93.__r_.__value_.__r.__words + 7);
            v24[47] = v21;
            v93.__r_.__value_.__r.__words[0] = 0;
            *(v93.__r_.__value_.__r.__words + 7) = 0;
            v26 = v8[1].__vftable;
            if (v26)
            {
              dispatch_retain(v8[1].__vftable);
              dispatch_group_enter(v26);
            }

            global_queue = dispatch_get_global_queue(0, 0);
            v28 = global_queue;
            if (global_queue)
            {
              dispatch_retain(global_queue);
            }

            v96.__first_ = (v24 + 24);
            v96.__begin_ = v24;
            atomic_fetch_add_explicit(v24 + 1, 1uLL, memory_order_relaxed);
            v96.__end_ = v26;
            if (v26)
            {
              dispatch_retain(v26);
              dispatch_group_enter(v26);
            }

            v96.__end_cap_ = v94;
            std::__function::__value_func<void ()(os_log_s *,unsigned long long)>::__value_func[abi:ne200100](v97, v95);
            v94 = 0;
            std::__function::__value_func<void ()(os_log_s *,unsigned long long)>::operator=[abi:ne200100](v95);
            v29 = operator new(0x48uLL);
            v30 = *&v96.__first_;
            v31 = *&v96.__end_;
            memset(&v96, 0, 24);
            *v29 = v30;
            v29[1] = v31;
            *(v29 + 4) = v96.__end_cap_.__value_;
            std::__function::__value_func<void ()(os_log_s *,unsigned long long)>::__value_func[abi:ne200100](v29 + 40, v97);
            v96.__end_cap_ = 0uLL;
            std::__function::__value_func<void ()(os_log_s *,unsigned long long)>::operator=[abi:ne200100](v97);
            v92 = 0;
            dispatch_group_notify_f(group, v28, v29, dispatch::detail::group_notify<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
            std::unique_ptr<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1},std::default_delete<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}>>::reset[abi:ne200100](&v92);
            ctu::os::signpost_interval::~signpost_interval(&v96.__end_cap_);
            if (v96.__end_)
            {
              dispatch_group_leave(v96.__end_);
              if (v96.__end_)
              {
                dispatch_release(v96.__end_);
              }
            }

            if (v96.__begin_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v96.__begin_);
            }

            if (v28)
            {
              dispatch_release(v28);
            }

            v8 = v86;
            shared_weak_owners = v86[1].__shared_weak_owners_;
            v33 = v86[2].__vftable;
            if (shared_weak_owners >= v33)
            {
              shared_owners = v86[1].__shared_owners_;
              v36 = shared_weak_owners - shared_owners;
              v37 = (shared_weak_owners - shared_owners) >> 4;
              v38 = v37 + 1;
              if ((v37 + 1) >> 60)
              {
                std::vector<std::weak_ptr<std::string>>::__throw_length_error[abi:ne200100]();
              }

              v39 = v33 - shared_owners;
              if (v39 >> 3 > v38)
              {
                v38 = v39 >> 3;
              }

              if (v39 >= 0x7FFFFFFFFFFFFFF0)
              {
                v40 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v40 = v38;
              }

              if (v40)
              {
                if (v40 >> 60)
                {
                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v41 = operator new(16 * v40);
              }

              else
              {
                v41 = 0;
              }

              v42 = &v41[16 * v37];
              *v42 = v25;
              *(v42 + 1) = v24;
              atomic_fetch_add_explicit(v24 + 2, 1uLL, memory_order_relaxed);
              v43 = &v41[16 * v40];
              v34 = v42 + 16;
              memcpy(v41, shared_owners, v36);
              v86[1].__shared_owners_ = v41;
              v86[1].__shared_weak_owners_ = v34;
              v86[2].__vftable = v43;
              if (shared_owners)
              {
                operator delete(shared_owners);
              }

              v5 = v83;
              v8 = v86;
            }

            else
            {
              *shared_weak_owners = v25;
              *(shared_weak_owners + 1) = v24;
              atomic_fetch_add_explicit(v24 + 2, 1uLL, memory_order_relaxed);
              v34 = shared_weak_owners + 16;
            }

            v8[1].__shared_weak_owners_ = v34;
            if (v26)
            {
              dispatch_group_leave(v26);
              dispatch_release(v26);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v24);
            ctu::os::signpost_interval::~signpost_interval(&v94);
            v12 = v81;
            if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v89.__r_.__value_.__l.__data_);
            }

            v96.__first_ = group;
            v14 = v85;
            if (group)
            {
              dispatch_retain(group);
            }

            v88[0] = v82;
            v88[1] = v5;
            atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
            ctu::power::manager::listenerHandle::operator()(v15, &v91, &v90, &v96, v88);
            std::__shared_weak_count::__release_shared[abi:ne200100](v5);
            if (group)
            {
              dispatch_release(group);
              dispatch_group_leave(group);
              dispatch_release(group);
            }

            v16 = v84;
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        std::__shared_weak_count::__release_weak(v14);
      }

      v13 = *(v13 + 1);
    }

    while (v13 != v12);
  }

  v44 = v8[1].__vftable;
  v45 = dispatch_time(0, 30250000000);
  if (dispatch_group_wait(v44, v45))
  {
    v94 = 0;
    *&v95[0] = 0;
    v46 = v8[1].__shared_owners_;
    for (i = v8[1].__shared_weak_owners_; v46 != i; v46 += 2)
    {
      v48 = v46[1];
      if (v48)
      {
        v49 = std::__shared_weak_count::lock(v48);
        if (v49)
        {
          v50 = v49;
          v51 = *v46;
          if (*v46)
          {
            value = v94.std::__1::__compressed_pair_elem<std::allocator<std::string> &, 1, false>::__value_;
            if (v94.std::__1::__compressed_pair_elem<std::allocator<std::string> &, 1, false>::__value_ >= *&v95[0])
            {
              v54 = v94.std::__1::__compressed_pair_elem<std::string *, 0, false>::__value_;
              v55 = v94.std::__1::__compressed_pair_elem<std::allocator<std::string> &, 1, false>::__value_ - v94.std::__1::__compressed_pair_elem<std::string *, 0, false>::__value_;
              v56 = 0xAAAAAAAAAAAAAAABLL * ((v94.std::__1::__compressed_pair_elem<std::allocator<std::string> &, 1, false>::__value_ - v94.std::__1::__compressed_pair_elem<std::string *, 0, false>::__value_) >> 3) + 1;
              if (v56 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<std::weak_ptr<std::string>>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((*&v95[0] - v94.std::__1::__compressed_pair_elem<std::string *, 0, false>::__value_) >> 3) > v56)
              {
                v56 = 0x5555555555555556 * ((*&v95[0] - v94.std::__1::__compressed_pair_elem<std::string *, 0, false>::__value_) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((*&v95[0] - v94.std::__1::__compressed_pair_elem<std::string *, 0, false>::__value_) >> 3) >= 0x555555555555555)
              {
                v57 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v57 = v56;
              }

              v96.__end_cap_.__value_ = &v94;
              if (v57)
              {
                if (v57 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v58 = operator new(24 * v57);
              }

              else
              {
                v58 = 0;
              }

              begin = (v58 + 8 * (v55 >> 3));
              v96.__first_ = v58;
              v96.__begin_ = begin;
              v61 = &v58[v57];
              v96.__end_ = begin;
              v96.__end_cap_.__value_ = v61;
              if (*(v51 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(begin, *v51, *(v51 + 1));
                end = v96.__end_;
                begin = v96.__begin_;
                v61 = v96.__end_cap_.__value_;
                v54 = v94.std::__1::__compressed_pair_elem<std::string *, 0, false>::__value_;
                v55 = v94.std::__1::__compressed_pair_elem<std::allocator<std::string> &, 1, false>::__value_ - v94.std::__1::__compressed_pair_elem<std::string *, 0, false>::__value_;
              }

              else
              {
                v62 = *v51;
                begin->__r_.__value_.__r.__words[2] = *(v51 + 2);
                *&begin->__r_.__value_.__l.__data_ = v62;
                end = (v58 + 8 * (v55 >> 3));
              }

              v59 = &end[1];
              v64 = (begin - v55);
              memcpy(begin - v55, v54, v55);
              v65 = v94.std::__1::__compressed_pair_elem<std::string *, 0, false>::__value_;
              v66 = *&v95[0];
              v94.std::__1::__compressed_pair_elem<std::string *, 0, false>::__value_ = v64;
              v94.std::__1::__compressed_pair_elem<std::allocator<std::string> &, 1, false>::__value_ = v59;
              *&v95[0] = v61;
              v96.__end_ = v65;
              v96.__end_cap_.__value_ = v66;
              v96.__first_ = v65;
              v96.__begin_ = v65;
              std::__split_buffer<std::string>::~__split_buffer(&v96);
            }

            else
            {
              if (*(v51 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(v94.std::__1::__compressed_pair_elem<std::allocator<std::string> &, 1, false>::__value_, *v51, *(v51 + 1));
              }

              else
              {
                v53 = *v51;
                *(v94.std::__1::__compressed_pair_elem<std::allocator<std::string> &, 1, false>::__value_ + 2) = *(v51 + 2);
                *value = v53;
              }

              v59 = (value + 24);
            }

            v94.std::__1::__compressed_pair_elem<std::allocator<std::string> &, 1, false>::__value_ = v59;
            v5 = v83;
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v50);
        }
      }
    }

    HIDWORD(v68) = v91 + 536870288;
    LODWORD(v68) = v91 + 536870288;
    v67 = v68 >> 4;
    if (v67 <= 0xB)
    {
      v69 = off_29EE8E230[v67];
    }

    v73 = v94;
    memset(&v93, 0, sizeof(v93));
    if (v94.std::__1::__compressed_pair_elem<std::string *, 0, false>::__value_ == v94.std::__1::__compressed_pair_elem<std::allocator<std::string> &, 1, false>::__value_)
    {
      v8 = v86;
    }

    else
    {
      v8 = v86;
      std::string::operator=(&v93, v94.std::__1::__compressed_pair_elem<std::string *, 0, false>::__value_);
      for (j = v73.std::__1::__compressed_pair_elem<std::string *, 0, false>::__value_ + 1; j != v73.std::__1::__compressed_pair_elem<std::allocator<std::string> &, 1, false>::__value_; ++j)
      {
        HIBYTE(v96.__end_) = 1;
        LOWORD(v96.__first_) = 44;
        std::string::append(&v93, &v96, 1uLL);
        if (SHIBYTE(v96.__end_) < 0)
        {
          operator delete(v96.__first_);
        }

        v75 = SHIBYTE(j->__r_.__value_.__r.__words[2]);
        if (v75 >= 0)
        {
          v76 = j;
        }

        else
        {
          v76 = j->__r_.__value_.__r.__words[0];
        }

        if (v75 >= 0)
        {
          size = HIBYTE(j->__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = j->__r_.__value_.__l.__size_;
        }

        std::string::append(&v93, v76, size);
      }
    }

    _TelephonyUtilDebugPrint();
    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__r_.__value_.__l.__data_);
    }

    v96.__first_ = &v94;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v96);
    v78 = 0;
  }

  else
  {
    HIDWORD(v71) = v91 + 536870288;
    LODWORD(v71) = v91 + 536870288;
    v70 = v71 >> 4;
    if (v70 <= 0xB)
    {
      v72 = off_29EE8E230[v70];
    }

    _TelephonyUtilDebugPrint();
    v78 = atomic_load(v82);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  v79 = *MEMORY[0x29EDCA608];
  return v78 & 1;
}

void sub_2982477F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, std::__shared_weak_count *a19, dispatch_group_t group, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, char *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, uint64_t a38)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  __p = &a37;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3ctu5power7manager13_powerChangedEPjjjPv_block_invoke_9(uint64_t a1)
{
  ctu::power::manager::handlePowerChanged_sync(*(a1 + 32), *(a1 + 64), *(a1 + 68));
  v2 = *(a1 + 56);
  v3 = **(a1 + 48);

  return IOAllowPowerChange(v3, v2);
}

uint64_t std::__function::__value_func<void ()(os_log_s *,unsigned long long)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void __destroy_helper_block_e8_32c30_ZTSN8dispatch13group_sessionE40c40_ZTSNSt3__110shared_ptrINS_6atomicIbEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 32);
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

void __destroy_helper_block_e8_32c70_ZTSN8dispatch5blockIU13block_pointerFvjNS0_IU13block_pointerFvbEEEEEE48c30_ZTSN8dispatch13group_sessionE56c40_ZTSNSt3__110shared_ptrINS_6atomicIbEEEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[6];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[6];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = a1[4];
  if (v5)
  {
    _Block_release(v5);
  }
}

const char *ctu::power::manager::asCString(ctu::power::manager *this)
{
  HIDWORD(v2) = this + 536870288;
  LODWORD(v2) = this + 536870288;
  v1 = v2 >> 4;
  if (v1 > 0xB)
  {
    return "???";
  }

  else
  {
    return off_29EE8E230[v1];
  }
}

uint64_t std::__function::__value_func<void ()(os_log_s *,unsigned long long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void std::unique_ptr<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1},std::default_delete<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}>>::reset[abi:ne200100](void **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    ctu::os::signpost_interval::~signpost_interval((v1 + 3));
    v2 = v1[2];
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = v1[2];
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    v4 = v1[1];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(v1);
  }
}

void ctu::os::signpost_interval::~signpost_interval(ctu::os::signpost_interval *this)
{
  v2 = *(this + 5);
  if (v2 && *this)
  {
    v3 = *(this + 1);
    v6 = *this;
    v7 = v3;
    (*(*v2 + 48))(v2, &v7, &v6);
  }

  v4 = *(this + 1);
  if (v4)
  {
    os_release(v4);
  }

  *(this + 1) = 0;
  std::__function::__value_func<void ()(os_log_s *,unsigned long long)>::operator=[abi:ne200100](this + 16);
  *this = 0;
  v5 = *(this + 5);
  if (v5 == (this + 16))
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))(v5);
  }
}

void ctu::power::manager::listenerHandle::operator()(uint64_t a1, _DWORD *a2, uint64_t a3, dispatch_object_t *a4, uint64_t *a5)
{
  v9 = *a4;
  if (*a4)
  {
    dispatch_retain(*a4);
    dispatch_group_enter(v9);
  }

  if (*(a1 + 55) < 0)
  {
    v10 = *(a1 + 32);
  }

  HIDWORD(v12) = *a2 + 536870288;
  LODWORD(v12) = HIDWORD(v12);
  v11 = v12 >> 4;
  if (v11 <= 0xB)
  {
    v13 = off_29EE8E230[v11];
  }

  _TelephonyUtilDebugPrint();
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = _Block_copy(v14);
    v16 = v15;
    v17 = *a1;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN3ctu5power7manager14listenerHandleclERKjRKbRKN8dispatch5groupENSt3__110shared_ptrINSB_6atomicIbEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_39;
    if (v15)
    {
      v18 = _Block_copy(v15);
    }

    else
    {
      v18 = 0;
    }

    aBlock = v18;
    v35 = a2;
    group = v9;
    if (v9)
    {
      dispatch_retain(v9);
      dispatch_group_enter(group);
    }

    v24 = a5[1];
    v37 = *a5;
    v38 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(v17, block);
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v16)
    {
      _Block_release(v16);
    }
  }

  else
  {
    v19 = *(a1 + 16);
    if (v19)
    {
      v20 = _Block_copy(v19);
      v21 = v20;
      v22 = *a1;
      v26[0] = MEMORY[0x29EDCA5F8];
      v26[1] = 1174405120;
      v26[2] = ___ZN3ctu5power7manager14listenerHandleclERKjRKbRKN8dispatch5groupENSt3__110shared_ptrINSB_6atomicIbEEEE_block_invoke_40;
      v26[3] = &__block_descriptor_tmp_45;
      if (v20)
      {
        v23 = _Block_copy(v20);
      }

      else
      {
        v23 = 0;
      }

      v27 = v23;
      v28 = a2;
      v29 = a3;
      object = v9;
      if (v9)
      {
        dispatch_retain(v9);
        dispatch_group_enter(object);
      }

      v25 = a5[1];
      v31 = *a5;
      v32 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      dispatch_async(v22, v26);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      if (object)
      {
        dispatch_group_leave(object);
        if (object)
        {
          dispatch_release(object);
        }
      }

      if (v27)
      {
        _Block_release(v27);
      }

      if (v21)
      {
        _Block_release(v21);
      }
    }
  }

  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }
}

void sub_298248000(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c70_ZTSN8dispatch5blockIU13block_pointerFvjNS0_IU13block_pointerFvbEEEEEE48c30_ZTSN8dispatch13group_sessionE56c40_ZTSNSt3__110shared_ptrINS_6atomicIbEEEE(void *a1, void *a2)
{
  v4 = a2[4];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  a1[4] = v4;
  v5 = a2[6];
  a1[6] = v5;
  if (v5)
  {
    dispatch_retain(v5);
    v6 = a1[6];
    if (v6)
    {
      dispatch_group_enter(v6);
    }
  }

  v7 = a2[8];
  a1[7] = a2[7];
  a1[8] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }
}

void ctu::iokit::IOPortUSBCController::serviceCallback(ctu::iokit::IOPortUSBCController *this, void *a2, int a3, void *a4, void *a5)
{
  v6 = a2;
  if (this)
  {
    ctu::iokit::IOPortUSBCController::messageHandler(this, &v6, a3, a4);
  }

  else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_298245000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Failed to get IOPortUSBCController object!", v5, 2u);
  }
}

const void **ctu::iokit::IOPortUSBCController::messageHandler(ctu::iokit::IOPortUSBCController *this, unsigned int *a2, int a3, void *a4)
{
  v30 = *MEMORY[0x29EDCA608];
  cf = 0;
  v7 = *MEMORY[0x29EDB8ED8];
  cf = IORegistryEntryCreateCFProperty(*a2, @"TransportTypeDescription", *MEMORY[0x29EDB8ED8], 0);
  *buf = 0;
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(buf);
  if (cf && (v8 = CFGetTypeID(cf), v8 == CFStringGetTypeID()))
  {
    v9 = *(this + 4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *&buf[4] = cf;
      v28 = 1024;
      LODWORD(v29) = a3;
      _os_log_debug_impl(&dword_298245000, v9, OS_LOG_TYPE_DEBUG, "#D %@: [message]: 0x%x", buf, 0x12u);
    }

    if (a3 == -469794815)
    {
      CFProperty = 0;
      CFProperty = IORegistryEntryCreateCFProperty(*a2, @"Active", v7, 0);
      *buf = 0;
      ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(buf);
      v14 = CFProperty;
      if (!CFProperty)
      {
        v15 = CFGetTypeID(0);
        if (v15 != CFBooleanGetTypeID())
        {
          v17 = *(this + 4);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = cf;
            goto LABEL_35;
          }

LABEL_26:
          ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&CFProperty);
          goto LABEL_27;
        }

        v14 = CFProperty;
      }

      v16 = *(this + 4);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        Value = CFBooleanGetValue(v14);
        v23 = "YES";
        if (!Value)
        {
          v23 = "NO";
        }

        *buf = 138412546;
        *&buf[4] = cf;
        v28 = 2080;
        v29 = v23;
        _os_log_debug_impl(&dword_298245000, v16, OS_LOG_TYPE_DEBUG, "#D %@: [message] Active: %s", buf, 0x16u);
        v14 = CFProperty;
      }

      if (CFBooleanGetValue(v14) && CFStringCompare(cf, @"CC", 1uLL) == kCFCompareEqualTo)
      {
        ctu::iokit::IOPortUSBCController::setupUSBProtocols(this);
      }

      goto LABEL_26;
    }

    if (a3 == -536870608)
    {
      CFProperty = 0;
      CFProperty = IORegistryEntryCreateCFProperty(*a2, @"Active", v7, 0);
      *buf = 0;
      ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(buf);
      v10 = CFProperty;
      if (CFProperty)
      {
LABEL_10:
        v12 = *(this + 4);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v20 = CFBooleanGetValue(v10);
          v21 = "YES";
          if (!v20)
          {
            v21 = "NO";
          }

          *buf = 138412546;
          *&buf[4] = cf;
          v28 = 2080;
          v29 = v21;
          _os_log_debug_impl(&dword_298245000, v12, OS_LOG_TYPE_DEBUG, "#D %@: [message] Active: %s", buf, 0x16u);
          v10 = CFProperty;
        }

        if (CFBooleanGetValue(v10) && CFStringCompare(cf, @"CC", 1uLL))
        {
          ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&v24, cf);
          ctu::iokit::IOPortUSBCController::detectingAccessories(this, &v24, a2);
          ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v24);
        }

        goto LABEL_26;
      }

      v11 = CFGetTypeID(0);
      if (v11 == CFBooleanGetTypeID())
      {
        v10 = CFProperty;
        goto LABEL_10;
      }

      v17 = *(this + 4);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = cf;
LABEL_35:
        _os_log_error_impl(&dword_298245000, v17, OS_LOG_TYPE_ERROR, "%@: Failed to read active property", buf, 0xCu);
        goto LABEL_26;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v13 = *(this + 4);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_error_impl(&dword_298245000, v13, OS_LOG_TYPE_ERROR, "Failed to get the service description and not going to handle the message: 0x%x", buf, 8u);
    }
  }

LABEL_27:
  result = ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&cf);
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29824853C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(va);
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(va1);
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(va2);
  _Unwind_Resume(a1);
}

const void **ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(void *a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFStringGetTypeID()))
  {
    *a1 = cf;
    CFRetain(cf);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void ctu::iokit::IOPortUSBCController::detectingAccessories(uint64_t a1, CFStringRef *a2, io_registry_entry_t *a3)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v14 = 0;
    _os_log_debug_impl(&dword_298245000, v7, OS_LOG_TYPE_DEBUG, "#D Detecting Accessories", v14, 2u);
  }

  if (CFStringCompare(*a2, @"USB3", 1uLL) == kCFCompareEqualTo)
  {
    *(a1 + 48) |= 1u;
    v8 = *(a1 + 32);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_298245000, v8, OS_LOG_TYPE_DEFAULT, "#I USB3 accessory is detected", buf, 2u);
    }
  }

  if (CFStringCompare(*a2, @"DisplayPort", 1uLL) == kCFCompareEqualTo)
  {
    *(a1 + 48) |= 2u;
    v9 = *(a1 + 32);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_298245000, v9, OS_LOG_TYPE_DEFAULT, "#I DisplayPort accessory is detected", v12, 2u);
    }
  }

  v10 = *a2;
  v11 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  *(a1 + 48) |= ctu::iokit::IOPortUSBCController::getAccessories(a1, &v11, a3);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v11);
  if (v6 != *(a1 + 48))
  {
    ctu::iokit::IOPortUSBCController::notifyCallback(a1);
  }
}

void sub_2982487B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t ctu::iokit::IOPortUSBCController::getAccessories(uint64_t a1, uint64_t *a2, io_registry_entry_t *a3)
{
  v41 = *MEMORY[0x29EDCA608];
  cf = 0;
  v6 = *MEMORY[0x29EDB8ED8];
  cf = IORegistryEntryCreateCFProperty(*a3, @"Vendor ID", *MEMORY[0x29EDB8ED8], 0);
  *buf = 0;
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(buf);
  if (!cf || (v7 = CFGetTypeID(cf), v7 != CFNumberGetTypeID()))
  {
    v18 = *(a1 + 32);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = cf;
      _os_log_debug_impl(&dword_298245000, v18, OS_LOG_TYPE_DEBUG, "#D No vendor ID is given or it is not a number: %@", buf, 0xCu);
    }

    goto LABEL_24;
  }

  valuePtr = 0;
  Type = CFNumberGetType(cf);
  if (!Type || !CFNumberGetValue(cf, Type, &valuePtr))
  {
    v19 = *(a1 + 32);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_24:
      v17 = 0;
      goto LABEL_25;
    }

    *buf = 138412290;
    *&buf[4] = cf;
LABEL_18:
    _os_log_error_impl(&dword_298245000, v19, OS_LOG_TYPE_ERROR, "Failed to convert a number: %@", buf, 0xCu);
    goto LABEL_24;
  }

  v9 = valuePtr;
  v10 = *(a1 + 32);
  if (valuePtr != 1452)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 67109120;
    *&buf[4] = v9;
    v20 = "#I Non-Apple Vendor (ID: 0x%x) is detected";
    v21 = v10;
    v22 = 8;
LABEL_23:
    _os_log_impl(&dword_298245000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
    goto LABEL_24;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = 1452;
    _os_log_debug_impl(&dword_298245000, v10, OS_LOG_TYPE_DEBUG, "#D Apple Product (ID: 0x%x) is detected", buf, 8u);
  }

  CFProperty = IORegistryEntryCreateCFProperty(*a3, @"Product ID", v6, 0);
  v12 = cf;
  cf = CFProperty;
  *buf = v12;
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(buf);
  if (!cf || (v13 = CFGetTypeID(cf), v13 != CFNumberGetTypeID()))
  {
    v23 = *(a1 + 32);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    *&buf[4] = cf;
    v20 = "#I No product ID is given or it is not a number: %@";
    v21 = v23;
    v22 = 12;
    goto LABEL_23;
  }

  v35 = 0;
  v14 = CFNumberGetType(cf);
  if (!CFNumberGetValue(cf, v14, &v35))
  {
    v19 = *(a1 + 32);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    *&buf[4] = cf;
    goto LABEL_18;
  }

  v15 = v35;
  if (v35 != 4362)
  {
    v17 = 0;
LABEL_29:
    if (v15 == 4363)
    {
      v26 = *(a1 + 32);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_298245000, v26, OS_LOG_TYPE_DEFAULT, "#I EarPods with USB-C Connector is detected", buf, 2u);
      }

      v17 = v17 | 8;
    }

    goto LABEL_34;
  }

  v16 = *(a1 + 32);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_298245000, v16, OS_LOG_TYPE_DEFAULT, "#I USB-C to 3.5mm Headphone Jack Adapter is detected", buf, 2u);
    v17 = 4;
    v15 = v35;
    goto LABEL_29;
  }

  v17 = 4;
LABEL_34:
  v27 = IORegistryEntryCreateCFProperty(*a3, @"Manufacturer", v6, 0);
  v28 = cf;
  cf = v27;
  *buf = v28;
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(buf);
  v29 = *(a1 + 32);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v34 = *a2;
    *buf = 138412546;
    *&buf[4] = v34;
    v39 = 2112;
    v40 = cf;
    _os_log_debug_impl(&dword_298245000, v29, OS_LOG_TYPE_DEBUG, "#D %@: Property for Manufacturer: %@", buf, 0x16u);
  }

  v30 = IORegistryEntryCreateCFProperty(*a3, @"Product", v6, 0);
  v31 = cf;
  cf = v30;
  *buf = v31;
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(buf);
  v32 = *(a1 + 32);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    v33 = *a2;
    *buf = 138412546;
    *&buf[4] = v33;
    v39 = 2112;
    v40 = cf;
    _os_log_debug_impl(&dword_298245000, v32, OS_LOG_TYPE_DEBUG, "#D %@: Property for Product: %@", buf, 0x16u);
  }

LABEL_25:
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&cf);
  v24 = *MEMORY[0x29EDCA608];
  return v17;
}

void sub_298248CA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<std::string>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

const void **ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<ctu::TrackedGroup>::__on_zero_shared(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[4];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  v6 = a1[3];
  if (v6)
  {

    dispatch_release(v6);
  }
}

void __destroy_helper_block_e8_32c46_ZTSNSt3__110shared_ptrIN3ctu5power7managerEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t TelephonyUtilGetSystemWakeReason(void *a1, size_t a2, BOOL *a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__s1 = 0u;
  v11 = 0u;
  __n = 0;
  v6 = sysctlbyname("kern.wakereason", 0, &__n, 0, 0);
  result = 0;
  if (!v6 && __n - 257 >= 0xFFFFFFFFFFFFFF00)
  {
    if (a1 && __n > a2)
    {
      result = 0;
    }

    else
    {
      sysctlbyname("kern.wakereason", __s1, &__n, 0, 0);
      if (a3)
      {
        *a3 = strstr(__s1, "baseband") != 0;
      }

      if (a1)
      {
        memcpy(a1, __s1, __n);
      }

      result = 1;
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOMikeyBusDeviceAllocateTrafficChannel(mach_port_t a1, unsigned int a2, unsigned int a3, int a4, unsigned int a5)
{
  input[4] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  HIDWORD(v5) = a4;
  LODWORD(v5) = a4;
  input[2] = (v5 >> 16);
  input[3] = a5;
  result = IOConnectCallScalarMethod(a1, 5u, input, 4u, 0, 0);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOMikeyBusDeviceDeallocateTrafficChannel(mach_port_t a1, unsigned int a2)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = a2;
  result = IOConnectCallScalarMethod(a1, 6u, v4, 1u, 0, 0);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOMikeyBusDeviceSpecifyChannelAssignment(mach_port_t a1, void *inputStruct)
{
  if (inputStruct)
  {
    v2 = 159;
  }

  else
  {
    v2 = 0;
  }

  return IOConnectCallStructMethod(a1, 7u, inputStruct, v2, 0, 0);
}

uint64_t IOMikeyBusDeviceSetFixedSlotAssignment(mach_port_t a1, unsigned int a2)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = a2;
  result = IOConnectCallScalarMethod(a1, 0xBu, v4, 1u, 0, 0);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOMikeyBusDeviceRegisterSystemLineOut()
{
  v14[1] = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x2A1C7C4A8]();
  v5 = v14 - v4;
  *v5 = v6;
  *(v5 + 1) = v7;
  if (v2)
  {
    v8 = v5 + 16;
    v9 = v2;
    do
    {
      v10 = *v3++;
      HIDWORD(v11) = v10;
      LODWORD(v11) = v10;
      *v8++ = (v11 >> 16);
      --v9;
    }

    while (v9);
  }

  result = IOConnectCallScalarMethod(v0, 8u, v5, v1, 0, 0);
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOMikeyBusDeviceGetAddress(io_registry_entry_t a1)
{
  valuePtr = 0;
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"DeviceAddress", *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v2 = CFProperty;
    CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v2);
    return valuePtr;
  }

  else
  {
    return 0;
  }
}

uint64_t IOMikeyBusDeviceGetVendorID(io_registry_entry_t a1)
{
  valuePtr = 0;
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"VendorID", *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v2 = CFProperty;
    CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v2);
    return valuePtr;
  }

  else
  {
    return 0;
  }
}

uint64_t IOMikeyBusDeviceGetProductID(io_registry_entry_t a1)
{
  valuePtr = 0;
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"ProductID", *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v2 = CFProperty;
    CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v2);
    return valuePtr;
  }

  else
  {
    return 0;
  }
}

uint64_t IOMikeyBusDeviceGetVoltageClass(io_registry_entry_t a1)
{
  valuePtr = 0;
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"VoltageClass", *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v2 = CFProperty;
    CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v2);
    return valuePtr;
  }

  else
  {
    return 0;
  }
}

uint64_t IOMikeyBusDeviceGetMikeyBusVersion(io_registry_entry_t a1)
{
  valuePtr = 0;
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"MikeyBusVersion", *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v2 = CFProperty;
    CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v2);
    return valuePtr;
  }

  else
  {
    return 0;
  }
}

uint64_t IOMikeyBusDeviceGetInterfaceChipVendorID(io_registry_entry_t a1)
{
  valuePtr = 0;
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"InterfaceChipVendorID", *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v2 = CFProperty;
    CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v2);
    return valuePtr;
  }

  else
  {
    return 0;
  }
}

uint64_t IOMikeyBusDeviceGetInterfaceChipProductID(io_registry_entry_t a1)
{
  valuePtr = 0;
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"InterfaceChipProductID", *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v2 = CFProperty;
    CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v2);
    return valuePtr;
  }

  else
  {
    return 0;
  }
}

uint64_t IOMikeyBusDeviceGetInterfaceChipRevision(io_registry_entry_t a1)
{
  valuePtr = 0;
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"InterfaceChipRevision", *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v2 = CFProperty;
    CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v2);
    return valuePtr;
  }

  else
  {
    return 0;
  }
}

const __CFNumber *IOMikeyBusDeviceGetInterfaceChipSerialNumber(io_registry_entry_t a1)
{
  valuePtr = 0;
  result = IORegistryEntryCreateCFProperty(a1, @"InterfaceChipSerialNumber", *MEMORY[0x29EDB8ED8], 0);
  if (result)
  {
    v2 = result;
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    CFRelease(v2);
    return valuePtr;
  }

  return result;
}

uint64_t IOMikeyBusDeviceGetNumConfigurations(io_registry_entry_t a1)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"Configurations", *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v2 = CFProperty;
    Count = CFArrayGetCount(CFProperty);
    CFRelease(v2);
  }

  else
  {
    return 0;
  }

  return Count;
}

uint64_t IOMikeyBusDeviceGetActiveConfiguration(io_registry_entry_t a1)
{
  valuePtr = 0;
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"ConfigurationNumber", *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v2 = CFProperty;
    CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v2);
    return valuePtr;
  }

  else
  {
    return 0;
  }
}

uint64_t IOMikeyBusDeviceGetActiveConfigurationClass(io_registry_entry_t a1)
{
  valuePtr = 0;
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"ConfigurationClass", *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v2 = CFProperty;
    CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v2);
    return valuePtr;
  }

  else
  {
    return 0;
  }
}

uint64_t IOMikeyBusDeviceGetActiveConfigurationSubclass(io_registry_entry_t a1)
{
  valuePtr = 0;
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"ConfigurationSubclass", *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v2 = CFProperty;
    CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v2);
    return valuePtr;
  }

  else
  {
    return 0;
  }
}

uint64_t IOMikeyBusDeviceGetConfigurationInfo(io_registry_entry_t a1, int a2, _BYTE *a3, _BYTE *a4)
{
  v4 = 3758097136;
  if (!a2)
  {
    return 3758097090;
  }

  CFProperty = IORegistryEntryCreateCFProperty(a1, @"Configurations", *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v9 = CFProperty;
    ValueAtIndex = CFArrayGetValueAtIndex(CFProperty, (a2 - 1));
    if (ValueAtIndex)
    {
      v11 = ValueAtIndex;
      v12 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
      v13 = CFArrayGetValueAtIndex(v11, 1);
      if (v12)
      {
        v14 = v13 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        v15 = v13;
        valuePtr = 0;
        CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
        *a3 = valuePtr;
        CFNumberGetValue(v15, kCFNumberSInt32Type, &valuePtr);
        v4 = 0;
        *a4 = valuePtr;
      }
    }

    CFRelease(v9);
  }

  return v4;
}

uint64_t IOMikeyBusDeviceSetConfiguration(mach_port_t a1, unsigned int a2)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = a2;
  result = IOConnectCallScalarMethod(a1, 0xAu, v4, 1u, 0, 0);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

__CFDictionary *IOMikeyBusFunctionGroupCreateMatching(int a1)
{
  v2 = IOServiceMatching("IOMikeyBusFunctionGroup");
  v3 = *MEMORY[0x29EDB8ED8];
  valuePtr = a1;
  v4 = CFNumberCreate(v3, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(v2, @"IOMikeyBusMatchFunctionGroupType", v4);
  CFRelease(v4);
  return v2;
}

uint64_t IOMikeyBusFunctionGroupGetDevice(io_registry_entry_t a1)
{
  parent = 0;
  if (IORegistryEntryGetParentEntry(a1, "IOService", &parent))
  {
    return 0;
  }

  else
  {
    return parent;
  }
}

CFTypeRef IOMikeyBusFunctionGroupCopyPropertyInfo(io_registry_entry_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x29EDB8ED8];
  v4 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"FunctionGroupProperty%02x", a2);
  CFProperty = IORegistryEntryCreateCFProperty(a1, v4, v3, 0);
  CFRelease(v4);
  return CFProperty;
}

uint64_t IOMikeyBusFunctionGroupSetPropertyInfo(mach_port_t a1, unsigned int a2, CFDataRef theData, uint64_t a4)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a4;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  result = IOConnectCallMethod(a1, 5u, input, 2u, BytePtr, Length, 0, 0, 0, 0);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOMikeyBusFunctionGroupGetID(io_registry_entry_t a1)
{
  valuePtr = 0;
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"FunctionGroupID", *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v2 = CFProperty;
    CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v2);
    return valuePtr;
  }

  else
  {
    return 0;
  }
}

uint64_t IOMikeyBusFunctionGroupGetType(io_registry_entry_t a1)
{
  valuePtr = 0;
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"FunctionGroupType", *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v2 = CFProperty;
    CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v2);
    return valuePtr;
  }

  else
  {
    return 0;
  }
}

uint64_t IOMikeyBusBulkPipeSendData(mach_port_t a1, void *inputStruct, size_t inputStructCnt, uint64_t a4)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a4;
  result = IOConnectCallMethod(a1, 0, input, 1u, inputStruct, inputStructCnt, 0, 0, 0, 0);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOMikeyBusBulkPipeReceiveData(mach_port_t a1, void *outputStruct, size_t *outputStructCnt, uint64_t a4)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a4;
  result = IOConnectCallMethod(a1, 1u, input, 1u, 0, 0, 0, 0, outputStruct, outputStructCnt);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOMikeyBusBulkPipeEnable(mach_port_t a1, unsigned int a2)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = a2;
  result = IOConnectCallScalarMethod(a1, 2u, v4, 1u, 0, 0);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOMikeyBusBulkPipeSendAsync(mach_port_t a1, const void *a2, size_t a3, IONotificationPortRef notify, uint64_t a5, unint64_t a6, uint64_t a7)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a7;
  reference[0] = 0;
  v15 = 0u;
  v16 = 0u;
  reference[1] = a5;
  v14 = a6;
  MachPort = IONotificationPortGetMachPort(notify);
  result = IOConnectCallAsyncMethod(a1, 0, MachPort, reference, 3u, input, 1u, a2, a3, 0, 0, 0, 0);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOMikeyBusBulkPipeReceiveDataAsync(mach_port_t a1, uint64_t a2, uint64_t a3, IONotificationPortRef notify, uint64_t a5, unint64_t a6, uint64_t a7)
{
  input[3] = *MEMORY[0x29EDCA608];
  input[0] = a7;
  input[1] = a2;
  input[2] = a3;
  reference[0] = 0;
  v13 = 0u;
  v14 = 0u;
  reference[1] = a5;
  v12 = a6;
  MachPort = IONotificationPortGetMachPort(notify);
  result = IOConnectCallAsyncMethod(a1, 1u, MachPort, reference, 3u, input, 3u, 0, 0, 0, 0, 0, 0);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOMikeyBusBulkPipeSetAllocation(mach_port_t a1, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  result = IOConnectCallScalarMethod(a1, 3u, input, 2u, 0, 0);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ctu::power::assertion::HandleRaw::HandleRaw(uint64_t this)
{
  *this = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  *(this + 32) = 0;
  return this;
}

void ctu::power::assertion::HandleRaw::~HandleRaw(IOPMAssertionID *this)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (*this)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v3 = this + 2;
      if (*(this + 31) < 0)
      {
        v3 = *v3;
      }

      v5 = 136315138;
      v6 = v3;
      _os_log_impl(&dword_298245000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s - system activity completed", &v5, 0xCu);
      v2 = *this;
    }

    IOPMAssertionRelease(v2);
    *this = 0;
    this[8] = 0;
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  v4 = *MEMORY[0x29EDCA608];
}

void sub_298249FF0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL ctu::power::assertion::HandleRaw::init(uint64_t a1, std::string::size_type a2, unsigned int a3)
{
  v27 = *MEMORY[0x29EDCA608];
  v21 = 0xAAAAAAAAAAAAAAAALL;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = __p;
  }

  v22 = 0;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&valuePtr, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    valuePtr = v23;
  }

  v24 = 0;
  v6 = *MEMORY[0x29EDB8ED8];
  if (ctu::cf::convert_copy())
  {
    v7 = v22;
    v22 = v24;
    v25 = v7;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v25);
  }

  if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(valuePtr.__r_.__value_.__l.__data_);
  }

  v21 = v22;
  v22 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v22);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  LODWORD(v24) = 1;
  std::string::operator=((a1 + 8), a2);
  if (IOPMAssertionDeclareSystemActivity())
  {
    *(a1 + 32) = 0;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      LODWORD(valuePtr.__r_.__value_.__l.__data_) = 136315138;
      *(valuePtr.__r_.__value_.__r.__words + 4) = v8;
      _os_log_error_impl(&dword_298245000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%s - Failed to declare system activity", &valuePtr, 0xCu);
    }
  }

  else
  {
    if (v24 == 1)
    {
      *(a1 + 32) = 2;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        if (*(a2 + 23) >= 0)
        {
          v9 = a2;
        }

        else
        {
          v9 = *a2;
        }

        LODWORD(valuePtr.__r_.__value_.__l.__data_) = 136315138;
        *(valuePtr.__r_.__value_.__r.__words + 4) = v9;
        _os_log_error_impl(&dword_298245000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%s - Unable to revert sleep", &valuePtr, 0xCu);
      }
    }

    else
    {
      *(a1 + 32) = 1;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v10 = a2;
        }

        else
        {
          v10 = *a2;
        }

        LODWORD(valuePtr.__r_.__value_.__l.__data_) = 136315138;
        *(valuePtr.__r_.__value_.__r.__words + 4) = v10;
        _os_log_impl(&dword_298245000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s - Declared system activity to prevent sleep", &valuePtr, 0xCu);
      }
    }

    v23.__r_.__value_.__r.__words[0] = 0;
    valuePtr.__r_.__value_.__r.__words[0] = a3;
    v11 = CFNumberCreate(v6, kCFNumberLongLongType, &valuePtr);
    if (v11)
    {
      v23.__r_.__value_.__r.__words[0] = v11;
      valuePtr.__r_.__value_.__r.__words[0] = 0;
      ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&valuePtr.__r_.__value_.__l.__data_);
      v12 = v23.__r_.__value_.__r.__words[0];
    }

    else
    {
      v12 = 0;
    }

    v25 = v12;
    v23.__r_.__value_.__r.__words[0] = 0;
    ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v23.__r_.__value_.__l.__data_);
    if (IOPMAssertionSetProperty(*a1, @"TimeoutSeconds", v12))
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        if (*(a2 + 23) >= 0)
        {
          v18 = a2;
        }

        else
        {
          v18 = *a2;
        }

        LODWORD(valuePtr.__r_.__value_.__l.__data_) = 136315138;
        *(valuePtr.__r_.__value_.__r.__words + 4) = v18;
        _os_log_error_impl(&dword_298245000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%s - Unable to set timeout", &valuePtr, 0xCu);
      }

      IOPMAssertionRelease(*a1);
      *a1 = 0;
      *(a1 + 32) = 0;
    }

    v23.__r_.__value_.__r.__words[0] = 0;
    Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v23.__r_.__value_.__r.__words[0] = Mutable;
      valuePtr.__r_.__value_.__r.__words[0] = 0;
      ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(&valuePtr.__r_.__value_.__l.__data_);
      v14 = v23.__r_.__value_.__r.__words[0];
    }

    else
    {
      v14 = 0;
    }

    valuePtr.__r_.__value_.__r.__words[0] = @"baseband";
    CFRetain(@"baseband");
    CFArrayAppendValue(v14, @"baseband");
    ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&valuePtr.__r_.__value_.__l.__data_);
    if (IOPMAssertionSetProperty(*a1, @"ResourcesUsed", v23.__r_.__value_.__l.__data_) && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a2;
      }

      LODWORD(valuePtr.__r_.__value_.__l.__data_) = 136315138;
      *(valuePtr.__r_.__value_.__r.__words + 4) = v19;
      _os_log_error_impl(&dword_298245000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%s - Unable to set assertion resources", &valuePtr, 0xCu);
    }

    ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(&v23.__r_.__value_.__l.__data_);
    ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v25);
  }

  v15 = *(a1 + 32) != 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v21);
  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

void sub_29824A4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const void *a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef((v25 - 64));
  ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(&__p);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef((v25 - 72));
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a16);
  _Unwind_Resume(a1);
}

void ctu::power::assertion::HandleRaw::create(std::string::size_type a1@<X0>, unsigned int a2@<W1>, std::__shared_weak_count_vtbl **a3@<X8>)
{
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0x28uLL);
  LODWORD(v6->~__shared_weak_count) = 0;
  v6->__on_zero_shared = 0;
  v6->__get_deleter = 0;
  v6->~__shared_weak_count_0 = 0;
  LODWORD(v6->__on_zero_shared_weak) = 0;
  *a3 = v6;
  v7 = operator new(0x20uLL);
  v7->__vftable = &unk_2A1EB0120;
  v7->__shared_owners_ = 0;
  v7->__shared_weak_owners_ = 0;
  v7[1].__vftable = v6;
  a3[1] = v7;
  if (!ctu::power::assertion::HandleRaw::init(v6, a1, a2))
  {
    *a3 = 0;
    a3[1] = 0;

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

ctu::power::assertion *ctu::power::assertion::assertion(ctu::power::assertion *this)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v3 = dispatch_queue_create("TelephonyPowerAssertion", v2);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v3;
  if (v3)
  {
    v4 = v3;
    dispatch_retain(v3);
    *(this + 3) = 0;
    dispatch_release(v4);
  }

  else
  {
    *(this + 3) = 0;
  }

  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 4) = this + 40;
  return this;
}

void ctu::power::assertion::lookupInternal_sync(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v18 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  a3[1] = 0;
  v4 = a1 + 40;
  v5 = *(a1 + 40);
  if (v5)
  {
    v7 = a1 + 40;
    do
    {
      v8 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v5 + 32), a2);
      if ((v8 & 0x80u) == 0)
      {
        v7 = v5;
      }

      v5 = *(v5 + ((v8 >> 4) & 8));
    }

    while (v5);
    if (v7 != v4 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v7 + 32)) & 0x80) == 0)
    {
      v9 = *(v7 + 64);
      if (v9 && (v10 = std::__shared_weak_count::lock(v9)) != 0)
      {
        v11 = *(v7 + 56);
        *a3 = v11;
        a3[1] = v10;
        if (v11 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          if (*(v11 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *(v11 + 8), *(v11 + 16));
          }

          else
          {
            v12 = *(v11 + 8);
            __p.__r_.__value_.__r.__words[2] = *(v11 + 24);
            *&__p.__r_.__value_.__l.__data_ = v12;
          }

          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315138;
          v17 = p_p;
          _os_log_impl(&dword_298245000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s - System activity already declared", buf, 0xCu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      else
      {
        *a3 = 0;
        a3[1] = 0;
      }
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

void ctu::power::assertion::lookupInternal(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3802000000;
  v11 = __Block_byref_object_copy_;
  v13 = 0;
  v14 = 0;
  v12 = __Block_byref_object_dispose_;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1107296256;
  v7[2] = ___ZN3ctu5power9assertion14lookupInternalERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_1;
  v7[4] = &v8;
  v7[5] = a1;
  v7[6] = a2;
  v15 = v7;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_5power9assertionEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_16;
  block[4] = a1;
  block[5] = &v15;
  v5 = a1 + 16;
  v4 = *(a1 + 16);
  if (*(v5 + 8))
  {
    dispatch_async_and_wait(v4, block);
  }

  else
  {
    dispatch_sync(v4, block);
  }

  v6 = v9[6];
  *a3 = v9[5];
  a3[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  _Block_object_dispose(&v8, 8);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN3ctu5power9assertion14lookupInternalERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  ctu::power::assertion::lookupInternal_sync(*(a1 + 40), *(a1 + 48), &v4);
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 48);
  *(v2 + 40) = v4;
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void ctu::power::assertion::createInternal(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3802000000;
  v13 = __Block_byref_object_copy_;
  v15 = 0;
  v16 = 0;
  v14 = __Block_byref_object_dispose_;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1107296256;
  v8[2] = ___ZN3ctu5power9assertion14createInternalERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEj_block_invoke;
  v8[3] = &__block_descriptor_tmp_11;
  v8[4] = &v10;
  v8[5] = a1;
  v8[6] = a2;
  v9 = a3;
  v17 = v8;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_5power9assertionEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_16;
  block[4] = a1;
  block[5] = &v17;
  v6 = a1 + 16;
  v5 = *(a1 + 16);
  if (*(v6 + 8))
  {
    dispatch_async_and_wait(v5, block);
  }

  else
  {
    dispatch_sync(v5, block);
  }

  v7 = v11[6];
  *a4 = v11[5];
  a4[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  _Block_object_dispose(&v10, 8);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void ___ZN3ctu5power9assertion14createInternalERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  ctu::power::assertion::lookupInternal_sync(v2, *(a1 + 48), &__p);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 48);
  *(v3 + 40) = *&__p.__r_.__value_.__l.__data_;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    ctu::power::assertion::HandleRaw::create(*(a1 + 48), *(a1 + 56), &__p);
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 48);
    *(v5 + 40) = *&__p.__r_.__value_.__l.__data_;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = *(a1 + 48);
    v8 = *(*(a1 + 32) + 8);
    if (*(v7 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 1));
    }

    else
    {
      v9 = *v7;
      __p.__r_.__value_.__r.__words[2] = *(v7 + 2);
      *&__p.__r_.__value_.__l.__data_ = v9;
    }

    v10 = *(v8 + 48);
    v20[0] = *(v8 + 40);
    v20[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = (v2 + 40);
    v11 = *(v2 + 40);
    if (v11)
    {
      while (1)
      {
        while (1)
        {
          v13 = v11;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, v11 + 4) & 0x80) == 0)
          {
            break;
          }

          v11 = *v13;
          v12 = v13;
          if (!*v13)
          {
            goto LABEL_19;
          }
        }

        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v13 + 4, &__p.__r_.__value_.__l.__data_) & 0x80) == 0)
        {
          break;
        }

        v12 = v13 + 1;
        v11 = v13[1];
        if (!v11)
        {
          goto LABEL_19;
        }
      }

      if (*v12)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v13 = (v2 + 40);
    }

LABEL_19:
    v14 = operator new(0x48uLL);
    v15 = v14;
    v16 = (v2 + 32);
    v21[0] = v14;
    v21[1] = v2 + 32;
    v22 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external((v14 + 32), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v17 = v21[0];
    }

    else
    {
      *(v14 + 32) = __p;
      v17 = v14;
    }

    *(v15 + 56) = *v20;
    v20[0] = 0;
    v20[1] = 0;
    LOBYTE(v22) = 1;
    *v17 = 0;
    v17[1] = 0;
    v17[2] = v13;
    *v12 = v17;
    v18 = **v16;
    if (v18)
    {
      *v16 = v18;
      v17 = *v12;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 40), v17);
    ++*(v2 + 48);
    v21[0] = 0;
    std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,void *>>>>::~unique_ptr[abi:ne200100](v21);
LABEL_25:
    if (v20[1])
    {
      std::__shared_weak_count::__release_weak(v20[1]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29824ADBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,void *>>>>::~unique_ptr[abi:ne200100](&a14);
  std::pair<std::string const,std::weak_ptr<ctu::power::assertion::HandleRaw>>::~pair(&a9);
  _Unwind_Resume(a1);
}

uint64_t ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE8E180, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

const void **ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::pair<std::string const,std::weak_ptr<ctu::power::assertion::HandleRaw>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::__shared_ptr_pointer<ctu::power::assertion::HandleRaw *,std::shared_ptr<ctu::power::assertion::HandleRaw>::__shared_ptr_default_delete<ctu::power::assertion::HandleRaw,ctu::power::assertion::HandleRaw>,std::allocator<ctu::power::assertion::HandleRaw>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ctu::power::assertion::HandleRaw *,std::shared_ptr<ctu::power::assertion::HandleRaw>::__shared_ptr_default_delete<ctu::power::assertion::HandleRaw,ctu::power::assertion::HandleRaw>,std::allocator<ctu::power::assertion::HandleRaw>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    ctu::power::assertion::HandleRaw::~HandleRaw(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<ctu::power::assertion::HandleRaw *,std::shared_ptr<ctu::power::assertion::HandleRaw>::__shared_ptr_default_delete<ctu::power::assertion::HandleRaw,ctu::power::assertion::HandleRaw>,std::allocator<ctu::power::assertion::HandleRaw>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        std::__shared_weak_count::__release_weak(v3);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_298245000);
  }

  return result;
}

const char *ctu::iokit::asString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EE8E1C8[a1];
  }
}

uint64_t ctu::iokit::asString@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = a1;
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  return MEMORY[0x29C284D40](a2, v4, " | ");
}

{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = a1;
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  return MEMORY[0x29C284D40](a2, v4, " | ");
}

{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = a1;
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  return MEMORY[0x29C284D40](a2, v4, " | ");
}

void sub_29824B538(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29824B620(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29824B828(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

ctu::iokit::Controller *ctu::iokit::Controller::Controller(ctu::iokit::Controller *this, __CFRunLoop *a2)
{
  ctu::iokit::sCreateOsLogContext(this);
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C284CF0](this, v6);
  MEMORY[0x29C284D00](v6);
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = operator new(0x160uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = &unk_2A1EB0278;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0u;
  *(v4 + 248) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 264) = 0u;
  *(v4 + 280) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 296) = 0u;
  *(v4 + 312) = 0u;
  *(v4 + 9) = v4 + 72;
  *(v4 + 10) = v4 + 72;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 16) = 0;
  *(v4 + 17) = 0;
  *(v4 + 152) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 17) = 0u;
  *(v4 + 36) = 0;
  *(v4 + 38) = 0;
  *(v4 + 39) = 0;
  *(v4 + 42) = 0;
  *(v4 + 43) = 0;
  *(v4 + 41) = 0;
  *(this + 1) = v4 + 24;
  *(this + 2) = v4;
  *(v4 + 5) = a2;
  CFRetain(a2);
  return this;
}

void sub_29824B968(_Unwind_Exception *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x29C284D00](v1);
  _Unwind_Resume(a1);
}

void ctu::iokit::Controller::~Controller(std::__shared_weak_count **this)
{
  ctu::iokit::Controller::release(this);
  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x29C284D00);
}

uint64_t ctu::iokit::Controller::release(ctu::iokit::Controller *this)
{
  ctu::iokit::Controller::stopPowerSourceNotifications(this);
  ctu::iokit::Controller::stopBatteryInfoNotifications(this);
  ctu::iokit::Controller::stopDisplayCoverStateNotifications(this);
  v2 = *(this + 1);
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      CFRunLoopRemoveSource(v4, v3, *MEMORY[0x29EDB8FB8]);
      v3 = *(*(this + 1) + 8);
    }

    CFRunLoopSourceInvalidate(v3);
    v2 = *(this + 1);
    *(v2 + 8) = 0;
  }

  v5 = *(v2 + 16);
  if (v5 && CFRunLoopIsWaiting(v5))
  {
    v6 = dispatch_group_create();
    v7 = v6;
    if (v6)
    {
      dispatch_retain(v6);
      dispatch_group_enter(v7);
    }

    v8 = *(*(this + 1) + 16);
    v9 = *MEMORY[0x29EDB8FC0];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN3ctu5iokit10Controller7releaseEv_block_invoke;
    block[3] = &__block_descriptor_tmp_2;
    group = v7;
    if (v7)
    {
      dispatch_retain(v7);
      dispatch_group_enter(group);
    }

    CFRunLoopPerformBlock(v8, v9, block);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    if (v7)
    {
      dispatch_group_leave(v7);
      dispatch_release(v7);
    }

    CFRunLoopWakeUp(*(*(this + 1) + 16));
    dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    CFRelease(*(*(this + 1) + 16));
    *(*(this + 1) + 16) = 0;
    if (v7)
    {
      dispatch_release(v7);
    }
  }

  v10 = *(this + 1);
  if (*v10)
  {
    IONotificationPortDestroy(*v10);
    v10 = *(this + 1);
    *v10 = 0;
  }

  v11 = *(v10 + 28);
  if (v11)
  {
    IOObjectRelease(v11);
    v10 = *(this + 1);
    *(v10 + 28) = 0;
  }

  v12 = *(v10 + 24);
  if (v12)
  {
    IOObjectRelease(v12);
    v10 = *(this + 1);
    *(v10 + 24) = 0;
  }

  v13 = *(v10 + 228);
  if (v13)
  {
    IOObjectRelease(v13);
    v10 = *(this + 1);
    *(v10 + 228) = 0;
  }

  v14 = *(v10 + 224);
  if (v14)
  {
    IOObjectRelease(v14);
    v10 = *(this + 1);
    *(v10 + 224) = 0;
  }

  if (*(v10 + 64))
  {
    v15 = v10 + 48;
    v16 = *(v10 + 56);
    if (v16 != v10 + 48)
    {
      do
      {
        v17 = *(v16 + 16);
        if (v17)
        {
          IOObjectRelease(v17);
        }

        v16 = *(v16 + 8);
      }

      while (v16 != v15);
      v10 = *(this + 1);
    }

    std::__list_imp<unsigned int>::clear((v10 + 48));
    v10 = *(this + 1);
  }

  result = *(v10 + 96);
  if (result)
  {
    result = IOObjectRelease(result);
    *(*(this + 1) + 96) = 0;
  }

  return result;
}

void sub_29824BC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v14)
  {
    dispatch_group_leave(v14);
    dispatch_release(v14);
    dispatch_release(v14);
  }

  _Unwind_Resume(exception_object);
}

void ctu::iokit::Controller::init(ctu::iokit::Controller *this)
{
  v2 = *(this + 1);
  v2[3] = 0;
  v2[28] = 0;
  *v2 = 0;
  v2[1] = 0;
  std::__list_imp<unsigned int>::clear(v2 + 6);
  v3 = *(this + 1);
  v5 = v3[9];
  v4 = v3[10];
  v6 = v5;
  v7 = v3;
  if (v4 != v5)
  {
    do
    {
      v4 -= 16;
      std::allocator_traits<std::allocator<dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitPDP)>>>::destroy[abi:ne200100]<dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitPDP)>,void,0>(v4);
    }

    while (v4 != v5);
    v7 = *(this + 1);
    v6 = v7[9];
  }

  v3[10] = v5;
  if (v7[11] - v6 <= 0xBFuLL)
  {
    v8 = v7[10];
    v9 = operator new(0xC0uLL);
    v10 = v9;
    v11 = (v9 + 12);
    v12 = v9 + v8 - v6;
    if (v8 != v6)
    {
      v13 = v6;
      v14 = v9;
      do
      {
        *v14++ = *v13;
        *v13 = 0;
        *(v13 + 1) = 0;
        v13 += 16;
      }

      while (v13 != v8);
      do
      {
        std::allocator_traits<std::allocator<dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitPDP)>>>::destroy[abi:ne200100]<dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitPDP)>,void,0>(v6);
        v6 += 16;
      }

      while (v6 != v8);
      v6 = v7[9];
    }

    v7[9] = v10;
    v7[10] = v12;
    v7[11] = v11;
    if (v6)
    {
      operator delete(v6);
    }
  }

  *(*(this + 1) + 96) = 0;
  v15 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
  **(this + 1) = v15;
  if (!v15)
  {
    v18 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v32 = 0;
    v19 = "Could not create notification port";
    v20 = &v32;
    goto LABEL_34;
  }

  RunLoopSource = IONotificationPortGetRunLoopSource(v15);
  v17 = *(this + 1);
  *(v17 + 8) = RunLoopSource;
  if (RunLoopSource)
  {
    CFRunLoopAddSource(*(v17 + 16), RunLoopSource, *MEMORY[0x29EDB8FB8]);
    goto LABEL_18;
  }

  v18 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v19 = "Could not create run loop source";
    v20 = buf;
LABEL_34:
    _os_log_error_impl(&dword_298245000, v18, OS_LOG_TYPE_ERROR, v19, v20, 2u);
  }

LABEL_18:
  v21 = *(this + 1);
  *(v21 + 272) = -1;
  v22 = *(v21 + 248);
  *(v21 + 248) = 0;
  if (v22)
  {
    _Block_release(v22);
  }

  v23 = *(v21 + 256);
  *(v21 + 256) = 0;
  if (v23)
  {
    dispatch_release(v23);
  }

  v24 = *(this + 1);
  *(v24 + 276) = -1;
  v25 = *(v24 + 280);
  *(v24 + 280) = 0;
  if (v25)
  {
    _Block_release(v25);
  }

  v26 = *(v24 + 288);
  *(v24 + 288) = 0;
  if (v26)
  {
    dispatch_release(v26);
  }

  v27 = *(this + 1);
  v28 = *(v27 + 304);
  *(v27 + 296) = 0;
  *(v27 + 304) = 0;
  if (v28)
  {
    _Block_release(v28);
  }

  v29 = *(this + 1);
  v30 = *(v29 + 312);
  *(v29 + 312) = 0;
  if (v30)
  {
    _Block_release(v30);
  }

  v31 = *(v29 + 320);
  *(v29 + 320) = 0;
  if (v31)
  {
    dispatch_release(v31);
  }
}

void ctu::iokit::Controller::stopPowerSourceNotifications(ctu::iokit::Controller *this)
{
  v2 = *(this + 1);
  v3 = *(v2 + 272);
  if (v3 != -1)
  {
    notify_cancel(v3);
    v2 = *(this + 1);
    *(v2 + 272) = -1;
  }

  v4 = *(v2 + 248);
  *(v2 + 248) = 0;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = *(v2 + 256);
  *(v2 + 256) = 0;
  if (v5)
  {

    dispatch_release(v5);
  }
}

void ctu::iokit::Controller::stopBatteryInfoNotifications(ctu::iokit::Controller *this)
{
  v2 = *(this + 1);
  v3 = *(v2 + 276);
  if (v3 != -1)
  {
    notify_cancel(v3);
    v2 = *(this + 1);
    *(v2 + 276) = -1;
  }

  v4 = *(v2 + 280);
  *(v2 + 280) = 0;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = *(v2 + 288);
  *(v2 + 288) = 0;
  if (v5)
  {

    dispatch_release(v5);
  }
}

void ctu::iokit::Controller::stopDisplayCoverStateNotifications(ctu::iokit::Controller *this)
{
  v2 = *(this + 1);
  v3 = *(v2 + 296);
  if (v3)
  {
    v4 = *(v2 + 320);
    if (v4)
    {
      dispatch_retain(*(v2 + 320));
    }

    MEMORY[0x29C284AB0](v3, v4);
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = *(*(this + 1) + 296);
    IOHIDEventSystemClientUnregisterEventBlock();
    CFRelease(*(*(this + 1) + 296));
    v2 = *(this + 1);
    *(v2 + 296) = 0;
  }

  v6 = *(v2 + 304);
  *(v2 + 304) = 0;
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = *(this + 1);
  v8 = *(v7 + 312);
  *(v7 + 312) = 0;
  if (v8)
  {
    _Block_release(v8);
  }

  v9 = *(v7 + 320);
  *(v7 + 320) = 0;
  if (v9)
  {

    dispatch_release(v9);
  }
}

void sub_29824C0CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 32);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void __destroy_helper_block_e8_32c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

uint64_t ctu::iokit::Controller::cleanUpDisplayNotifcation(ctu::iokit::Controller *this)
{
  result = *(*(this + 1) + 28);
  if (result)
  {
    result = IOObjectRelease(result);
    *(*(this + 1) + 28) = 0;
  }

  return result;
}

void ctu::iokit::Controller::create(ctu::iokit::Controller *this@<X0>, ctu::iokit::Controller **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v5 = operator new(0x18uLL);
  ctu::iokit::Controller::Controller(v5, this);
  v6 = operator new(0x20uLL);
  *v6 = &unk_2A1EB02C8;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = v5;
  *a2 = v5;
  a2[1] = v6;
  ctu::iokit::Controller::init(v5);
}

BOOL ctu::iokit::Controller::registerForIOKitService(ctu::iokit::Controller *this, io_service_t service, IOServiceInterestCallback callback, io_object_t *notification)
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = *(this + 1);
  v6 = *v5;
  if (!*v5)
  {
    v19 = *this;
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_17;
    }

    LOWORD(v21[0]) = 0;
    v16 = "Notification port was not successfully created";
LABEL_14:
    v17 = v19;
    v18 = 2;
    goto LABEL_15;
  }

  if (!*(v5 + 8))
  {
    v19 = *this;
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_17;
    }

    LOWORD(v21[0]) = 0;
    v16 = "Run Loop Source was not successfully created";
    goto LABEL_14;
  }

  v10 = *notification;
  if (*notification)
  {
    v11 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21[0]) = 0;
      _os_log_impl(&dword_298245000, v11, OS_LOG_TYPE_DEFAULT, "#I Since notification is already allocated, releasing the previous one.", v21, 2u);
      v10 = *notification;
    }

    IOObjectRelease(v10);
    *notification = 0;
    v6 = **(this + 1);
  }

  v12 = IOServiceAddInterestNotification(v6, service, "IOBusyInterest", callback, this, notification);
  if (!v12)
  {
    result = 1;
    goto LABEL_17;
  }

  v13 = v12;
  v14 = *this;
  result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v21[0] = 67109120;
    v21[1] = v13;
    v16 = "Could not add interest notification on service. Error: %#x";
    v17 = v14;
    v18 = 8;
LABEL_15:
    _os_log_error_impl(&dword_298245000, v17, OS_LOG_TYPE_ERROR, v16, v21, v18);
    result = 0;
  }

LABEL_17:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL ctu::iokit::Controller::setDisplayCallback(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  if (!*v3)
  {
    v16 = *a1;
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_21;
    }

    LOWORD(v18) = 0;
    v13 = "notificationPort is NULL";
LABEL_18:
    v14 = v16;
    v15 = 2;
    goto LABEL_19;
  }

  if (!v3[2])
  {
    v16 = *a1;
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_21;
    }

    LOWORD(v18) = 0;
    v13 = "runLoop is NULL";
    goto LABEL_18;
  }

  v5 = *a2;
  if (*a2)
  {
    v5 = _Block_copy(v5);
  }

  v6 = v3[4];
  v3[4] = v5;
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = v3[5];
  v3[5] = v7;
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = **(a1 + 8);
  v10 = IOServiceMatching("IOAVVideoInterface");
  if (!IOServiceAddMatchingNotification(v9, "IOServicePublish", v10, ctu::iokit::sControllerDisplayServiceAdded, a1, (*(a1 + 8) + 24)))
  {
    ctu::iokit::Controller::displayServiceAdded(a1, *(*(a1 + 8) + 24));
    result = 1;
    goto LABEL_21;
  }

  v11 = *a1;
  result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v18 = 136315138;
    v19 = "TelephonyIOKitDisplayController";
    v13 = "%s: Registering Publish Notification failed";
    v14 = v11;
    v15 = 12;
LABEL_19:
    _os_log_error_impl(&dword_298245000, v14, OS_LOG_TYPE_ERROR, v13, &v18, v15);
    result = 0;
  }

LABEL_21:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29824C60C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ctu::iokit::sControllerDisplayServiceAdded(ctu::iokit *this, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (this)
  {
    v2 = *MEMORY[0x29EDCA608];

    ctu::iokit::Controller::displayServiceAdded(this, a2);
  }

  else
  {
    ctu::iokit::sCreateOsLogContext(0);
    v3 = qword_2A1899B58;
    if (os_log_type_enabled(qword_2A1899B58, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "void ctu::iokit::sControllerDisplayServiceAdded(void *, io_iterator_t)";
      _os_log_error_impl(&dword_298245000, v3, OS_LOG_TYPE_ERROR, "%s: refCon is NULL", &v5, 0xCu);
    }

    v4 = *MEMORY[0x29EDCA608];
  }
}

uint64_t ctu::iokit::Controller::acquireMesaService(ctu::iokit::Controller *this)
{
  v2 = *(this + 1);
  if (!*v2)
  {
    v4 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *v13 = 0;
    v9 = "notificationPort is NULL";
    v10 = v13;
LABEL_13:
    _os_log_error_impl(&dword_298245000, v4, OS_LOG_TYPE_ERROR, v9, v10, 2u);
    return 0;
  }

  if (!*(v2 + 96))
  {
    v5 = *MEMORY[0x29EDBB110];
    v6 = IOServiceMatching("AppleMesaSEPDriver");
    MatchingService = IOServiceGetMatchingService(v5, v6);
    *(*(this + 1) + 96) = MatchingService;
    if (MatchingService)
    {
      return 1;
    }

    v4 = *this;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v11 = 0;
    v9 = "Failed to get mesaService";
    v10 = &v11;
    goto LABEL_13;
  }

  v3 = 1;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_298245000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "We already matched in - No need to do it again", buf, 2u);
  }

  return v3;
}

BOOL ctu::iokit::Controller::setMesaQuality(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x29EDCA608];
  valuePtr = a2;
  v3 = *(a1 + 8);
  if (!*v3)
  {
    v12 = *a1;
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_16;
    }

    *buf = 0;
    v9 = "notificationPort is NULL";
LABEL_13:
    v10 = v12;
    v11 = 2;
    goto LABEL_14;
  }

  if (!*(v3 + 96))
  {
    v12 = *a1;
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_16;
    }

    *buf = 0;
    v9 = "mesaService is NULL";
    goto LABEL_13;
  }

  v4 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  if (!v4)
  {
    v12 = *a1;
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_16;
    }

    *buf = 0;
    v9 = "Failed to convert input to MESA signal quality setting";
    goto LABEL_13;
  }

  v5 = v4;
  v6 = IORegistryEntrySetCFProperty(*(*(a1 + 8) + 96), @"SignalQuality", v4);
  CFRelease(v5);
  if (!v6)
  {
    result = 1;
    goto LABEL_16;
  }

  v7 = *a1;
  result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 67109120;
    v16 = v6;
    v9 = "Failed to change the MESA quality setting. Error: %#x";
    v10 = v7;
    v11 = 8;
LABEL_14:
    _os_log_error_impl(&dword_298245000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
    result = 0;
  }

LABEL_16:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL ctu::iokit::Controller::setMesaCallback(void *refCon, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = *(refCon + 1);
  if (!*v3)
  {
    v15 = *refCon;
    if (os_log_type_enabled(*refCon, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "notificationPort is NULL";
      goto LABEL_27;
    }

LABEL_24:
    v10 = 0;
    goto LABEL_25;
  }

  if (!*(v3 + 16) || !*(v3 + 96))
  {
    v15 = *refCon;
    if (os_log_type_enabled(*refCon, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "runLoop/mesaService is NULL";
LABEL_27:
      _os_log_error_impl(&dword_298245000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  v5 = *(v3 + 104);
  if (v5 && *(v3 + 112))
  {
    goto LABEL_24;
  }

  v6 = *a2;
  if (*a2)
  {
    v6 = _Block_copy(*a2);
    v5 = *(v3 + 104);
  }

  *(v3 + 104) = v6;
  if (v5)
  {
    _Block_release(v5);
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *(v3 + 112);
  *(v3 + 112) = v7;
  if (v8)
  {
    dispatch_release(v8);
  }

  notification = 0;
  v9 = IOServiceAddInterestNotification(**(refCon + 1), *(*(refCon + 1) + 96), "IOGeneralInterest", ctu::iokit::sMesaCallbackInternal, refCon, &notification);
  v10 = v9 == 0;
  if (v9)
  {
    v11 = *refCon;
    if (os_log_type_enabled(*refCon, OS_LOG_TYPE_ERROR))
    {
      v19 = *(*(refCon + 1) + 96);
      *buf = 67109120;
      v22 = v19;
      _os_log_error_impl(&dword_298245000, v11, OS_LOG_TYPE_ERROR, "Failed to register MESA notifications on instance 0x%u", buf, 8u);
    }

    v12 = *(refCon + 1);
    v13 = *(v12 + 104);
    *(v12 + 104) = 0;
    if (v13)
    {
      _Block_release(v13);
    }

    v14 = *(v12 + 112);
    *(v12 + 112) = 0;
    if (v14)
    {
      dispatch_release(v14);
    }
  }

LABEL_25:
  v17 = *MEMORY[0x29EDCA608];
  return v10;
}

void sub_29824CBDC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ctu::iokit::sMesaCallbackInternal(os_log_t *this, void *a2, int a3, void *a4, void *a5)
{
  v10 = *MEMORY[0x29EDCA608];
  if (this)
  {
    v5 = *MEMORY[0x29EDCA608];

    ctu::iokit::Controller::mesaService(this, a2, a3, a4);
  }

  else
  {
    ctu::iokit::sCreateOsLogContext(0);
    v6 = qword_2A1899B58;
    if (os_log_type_enabled(qword_2A1899B58, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "void ctu::iokit::sMesaCallbackInternal(void *, io_service_t, uint32_t, void *)";
      _os_log_error_impl(&dword_298245000, v6, OS_LOG_TYPE_ERROR, "%s: refCon is NULL", &v8, 0xCu);
    }

    v7 = *MEMORY[0x29EDCA608];
  }
}

uint64_t ctu::iokit::Controller::setupCameraService(ctu::iokit::Controller *this)
{
  v2 = *(this + 1);
  if (!*v2)
  {
    v4 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *v21 = 0;
    v15 = "notificationPort is NULL";
    v16 = v21;
LABEL_17:
    _os_log_error_impl(&dword_298245000, v4, OS_LOG_TYPE_ERROR, v15, v16, 2u);
    return 0;
  }

  if (!*(v2 + 120))
  {
    v5 = *MEMORY[0x29EDBB110];
    v6 = IOServiceMatching("AppleH16CamIn");
    MatchingService = IOServiceGetMatchingService(v5, v6);
    *(*(this + 1) + 120) = MatchingService;
    if (MatchingService)
    {
      return 1;
    }

    v8 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
    {
      *v19 = 0;
      _os_log_debug_impl(&dword_298245000, v8, OS_LOG_TYPE_DEBUG, "#D H16 Camera is not found. Trying H13 Camera", v19, 2u);
    }

    v9 = IOServiceMatching("AppleH13CamIn");
    v10 = IOServiceGetMatchingService(v5, v9);
    *(*(this + 1) + 120) = v10;
    if (v10)
    {
      return 1;
    }

    v11 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
    {
      *v18 = 0;
      _os_log_debug_impl(&dword_298245000, v11, OS_LOG_TYPE_DEBUG, "#D H13 Camera is not found. Trying H10 Camera", v18, 2u);
    }

    v12 = IOServiceMatching("AppleH10CamIn");
    v13 = IOServiceGetMatchingService(v5, v12);
    *(*(this + 1) + 120) = v13;
    if (v13)
    {
      return 1;
    }

    v4 = *this;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v17 = 0;
    v15 = "Could not find matching camera driver";
    v16 = &v17;
    goto LABEL_17;
  }

  v3 = 1;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_298245000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "We already matched in - No need to do it again", buf, 2u);
  }

  return v3;
}

BOOL ctu::iokit::Controller::setFaceIDCallback(NSObject **a1, uint64_t a2)
{
  v36 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if (*a2)
  {
    v5 = _Block_copy(*a2);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = a1[1];
  isa = v7->isa;
  if (!v7->isa || !v7[2].isa || !LODWORD(v7[15].isa))
  {
    v12 = *a1;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      v13 = 0;
      goto LABEL_18;
    }

    v26 = v7[2].isa;
    v27 = v7[15].isa;
    *buf = 134218496;
    v31 = isa;
    v32 = 2048;
    v33 = v26;
    v34 = 1024;
    v35 = v27;
    v18 = "Failed to get notificationPort(%p)/runLoop(%p)/cameraService(%u). They should not be NULL.";
    v19 = v12;
    v20 = 28;
LABEL_40:
    _os_log_error_impl(&dword_298245000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
    goto LABEL_17;
  }

  v9 = v4[16].isa;
  if (v9)
  {
    v10 = v4[17].isa == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v16 = *a1;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v18 = "The callback is already set. Not allowed to override the callback";
    v19 = v16;
    v20 = 2;
    goto LABEL_40;
  }

  if (v5)
  {
    v11 = _Block_copy(v5);
    v9 = v4[16].isa;
  }

  else
  {
    v11 = 0;
  }

  v4[16].isa = v11;
  if (v9)
  {
    _Block_release(v9);
  }

  if (v6)
  {
    dispatch_retain(v6);
  }

  v21 = v4[17].isa;
  v4[17].isa = v6;
  if (v21)
  {
    dispatch_release(v21);
  }

  notification = 0;
  v22 = IOServiceAddInterestNotification(a1[1]->isa, a1[1][15].isa, "IOGeneralInterest", ctu::iokit::sCameraServiceCallbackInternal, a1, &notification);
  v13 = v22 == 0;
  if (v22)
  {
    v23 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      v28 = a1[1][15].isa;
      *buf = 67109120;
      LODWORD(v31) = v28;
      _os_log_error_impl(&dword_298245000, v23, OS_LOG_TYPE_ERROR, "Failed to register the notifications on instance 0x%u", buf, 8u);
    }

    v24 = v4[16].isa;
    v4[16].isa = 0;
    if (v24)
    {
      _Block_release(v24);
    }

    v25 = v4[17].isa;
    v4[17].isa = 0;
    if (v25)
    {
      dispatch_release(v25);
    }
  }

LABEL_18:
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_29824D16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL ctu::iokit::Controller::setFrontCameraCallback(NSObject **a1, uint64_t a2)
{
  v36 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if (*a2)
  {
    v5 = _Block_copy(*a2);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = a1[1];
  isa = v7->isa;
  if (!v7->isa || !v7[2].isa || !LODWORD(v7[15].isa))
  {
    v12 = *a1;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      v13 = 0;
      goto LABEL_18;
    }

    v26 = v7[2].isa;
    v27 = v7[15].isa;
    *buf = 134218496;
    v31 = isa;
    v32 = 2048;
    v33 = v26;
    v34 = 1024;
    v35 = v27;
    v18 = "Failed to get notificationPort(%p)/runLoop(%p)/cameraService(%u). They should not be NULL.";
    v19 = v12;
    v20 = 28;
LABEL_40:
    _os_log_error_impl(&dword_298245000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
    goto LABEL_17;
  }

  v9 = v4[18].isa;
  if (v9)
  {
    v10 = v4[19].isa == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v16 = *a1;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v18 = "The callback is already set. Not allowed to override the callback";
    v19 = v16;
    v20 = 2;
    goto LABEL_40;
  }

  if (v5)
  {
    v11 = _Block_copy(v5);
    v9 = v4[18].isa;
  }

  else
  {
    v11 = 0;
  }

  v4[18].isa = v11;
  if (v9)
  {
    _Block_release(v9);
  }

  if (v6)
  {
    dispatch_retain(v6);
  }

  v21 = v4[19].isa;
  v4[19].isa = v6;
  if (v21)
  {
    dispatch_release(v21);
  }

  notification = 0;
  v22 = IOServiceAddInterestNotification(a1[1]->isa, a1[1][15].isa, "IOGeneralInterest", ctu::iokit::sCameraServiceCallbackInternal, a1, &notification);
  v13 = v22 == 0;
  if (v22)
  {
    v23 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      v28 = a1[1][15].isa;
      *buf = 67109120;
      LODWORD(v31) = v28;
      _os_log_error_impl(&dword_298245000, v23, OS_LOG_TYPE_ERROR, "Failed to register the notifications on instance 0x%u", buf, 8u);
    }

    v24 = v4[18].isa;
    v4[18].isa = 0;
    if (v24)
    {
      _Block_release(v24);
    }

    v25 = v4[19].isa;
    v4[19].isa = 0;
    if (v25)
    {
      dispatch_release(v25);
    }
  }

LABEL_18:
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_29824D42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL ctu::iokit::Controller::setBackTeleCameraCallback(NSObject **a1, uint64_t a2)
{
  v36 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if (*a2)
  {
    v5 = _Block_copy(*a2);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = a1[1];
  isa = v7->isa;
  if (!v7->isa || !v7[2].isa || !LODWORD(v7[15].isa))
  {
    v12 = *a1;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      v13 = 0;
      goto LABEL_18;
    }

    v26 = v7[2].isa;
    v27 = v7[15].isa;
    *buf = 134218496;
    v31 = isa;
    v32 = 2048;
    v33 = v26;
    v34 = 1024;
    v35 = v27;
    v18 = "Failed to get notificationPort(%p)/runLoop(%p)/cameraService(%u). They should not be NULL.";
    v19 = v12;
    v20 = 28;
LABEL_40:
    _os_log_error_impl(&dword_298245000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
    goto LABEL_17;
  }

  v9 = v4[20].isa;
  if (v9)
  {
    v10 = v4[21].isa == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v16 = *a1;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v18 = "The callback is already set. Not allowed to override the callback";
    v19 = v16;
    v20 = 2;
    goto LABEL_40;
  }

  if (v5)
  {
    v11 = _Block_copy(v5);
    v9 = v4[20].isa;
  }

  else
  {
    v11 = 0;
  }

  v4[20].isa = v11;
  if (v9)
  {
    _Block_release(v9);
  }

  if (v6)
  {
    dispatch_retain(v6);
  }

  v21 = v4[21].isa;
  v4[21].isa = v6;
  if (v21)
  {
    dispatch_release(v21);
  }

  notification = 0;
  v22 = IOServiceAddInterestNotification(a1[1]->isa, a1[1][15].isa, "IOGeneralInterest", ctu::iokit::sCameraServiceCallbackInternal, a1, &notification);
  v13 = v22 == 0;
  if (v22)
  {
    v23 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      v28 = a1[1][15].isa;
      *buf = 67109120;
      LODWORD(v31) = v28;
      _os_log_error_impl(&dword_298245000, v23, OS_LOG_TYPE_ERROR, "Failed to register the notifications on instance 0x%u", buf, 8u);
    }

    v24 = v4[20].isa;
    v4[20].isa = 0;
    if (v24)
    {
      _Block_release(v24);
    }

    v25 = v4[21].isa;
    v4[21].isa = 0;
    if (v25)
    {
      dispatch_release(v25);
    }
  }

LABEL_18:
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_29824D6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL ctu::iokit::Controller::setBackSuperWideCameraCallback(NSObject **a1, uint64_t a2)
{
  v36 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if (*a2)
  {
    v5 = _Block_copy(*a2);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = a1[1];
  isa = v7->isa;
  if (!v7->isa || !v7[2].isa || !LODWORD(v7[15].isa))
  {
    v12 = *a1;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      v13 = 0;
      goto LABEL_18;
    }

    v26 = v7[2].isa;
    v27 = v7[15].isa;
    *buf = 134218496;
    v31 = isa;
    v32 = 2048;
    v33 = v26;
    v34 = 1024;
    v35 = v27;
    v18 = "Failed to get notificationPort(%p)/runLoop(%p)/cameraService(%u). They should not be NULL.";
    v19 = v12;
    v20 = 28;
LABEL_40:
    _os_log_error_impl(&dword_298245000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
    goto LABEL_17;
  }

  v9 = v4[22].isa;
  if (v9)
  {
    v10 = v4[23].isa == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v16 = *a1;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v18 = "The callback is already set. Not allowed to override the callback";
    v19 = v16;
    v20 = 2;
    goto LABEL_40;
  }

  if (v5)
  {
    v11 = _Block_copy(v5);
    v9 = v4[22].isa;
  }

  else
  {
    v11 = 0;
  }

  v4[22].isa = v11;
  if (v9)
  {
    _Block_release(v9);
  }

  if (v6)
  {
    dispatch_retain(v6);
  }

  v21 = v4[23].isa;
  v4[23].isa = v6;
  if (v21)
  {
    dispatch_release(v21);
  }

  notification = 0;
  v22 = IOServiceAddInterestNotification(a1[1]->isa, a1[1][15].isa, "IOGeneralInterest", ctu::iokit::sCameraServiceCallbackInternal, a1, &notification);
  v13 = v22 == 0;
  if (v22)
  {
    v23 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      v28 = a1[1][15].isa;
      *buf = 67109120;
      LODWORD(v31) = v28;
      _os_log_error_impl(&dword_298245000, v23, OS_LOG_TYPE_ERROR, "Failed to register the notifications on instance 0x%u", buf, 8u);
    }

    v24 = v4[22].isa;
    v4[22].isa = 0;
    if (v24)
    {
      _Block_release(v24);
    }

    v25 = v4[23].isa;
    v4[23].isa = 0;
    if (v25)
    {
      dispatch_release(v25);
    }
  }

LABEL_18:
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_29824D9AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL ctu::iokit::Controller::setBackCameraCallback(NSObject **a1, uint64_t a2)
{
  v36 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if (*a2)
  {
    v5 = _Block_copy(*a2);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = a1[1];
  isa = v7->isa;
  if (!v7->isa || !v7[2].isa || !LODWORD(v7[15].isa))
  {
    v12 = *a1;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      v13 = 0;
      goto LABEL_18;
    }

    v26 = v7[2].isa;
    v27 = v7[15].isa;
    *buf = 134218496;
    v31 = isa;
    v32 = 2048;
    v33 = v26;
    v34 = 1024;
    v35 = v27;
    v18 = "Failed to get notificationPort(%p)/runLoop(%p)/cameraService(%u). They should not be NULL.";
    v19 = v12;
    v20 = 28;
LABEL_40:
    _os_log_error_impl(&dword_298245000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
    goto LABEL_17;
  }

  v9 = v4[24].isa;
  if (v9)
  {
    v10 = v4[25].isa == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v16 = *a1;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v18 = "The callback is already set. Not allowed to override the callback";
    v19 = v16;
    v20 = 2;
    goto LABEL_40;
  }

  if (v5)
  {
    v11 = _Block_copy(v5);
    v9 = v4[24].isa;
  }

  else
  {
    v11 = 0;
  }

  v4[24].isa = v11;
  if (v9)
  {
    _Block_release(v9);
  }

  if (v6)
  {
    dispatch_retain(v6);
  }

  v21 = v4[25].isa;
  v4[25].isa = v6;
  if (v21)
  {
    dispatch_release(v21);
  }

  notification = 0;
  v22 = IOServiceAddInterestNotification(a1[1]->isa, a1[1][15].isa, "IOGeneralInterest", ctu::iokit::sCameraServiceCallbackInternal, a1, &notification);
  v13 = v22 == 0;
  if (v22)
  {
    v23 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      v28 = a1[1][15].isa;
      *buf = 67109120;
      LODWORD(v31) = v28;
      _os_log_error_impl(&dword_298245000, v23, OS_LOG_TYPE_ERROR, "Failed to register the notifications on instance 0x%u", buf, 8u);
    }

    v24 = v4[24].isa;
    v4[24].isa = 0;
    if (v24)
    {
      _Block_release(v24);
    }

    v25 = v4[25].isa;
    v4[25].isa = 0;
    if (v25)
    {
      dispatch_release(v25);
    }
  }

LABEL_18:
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_29824DC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL ctu::iokit::Controller::setAllBackCameraCallback(NSObject **a1, uint64_t a2)
{
  v36 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if (*a2)
  {
    v5 = _Block_copy(*a2);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = a1[1];
  isa = v7->isa;
  if (!v7->isa || !v7[2].isa || !LODWORD(v7[15].isa))
  {
    v12 = *a1;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      v13 = 0;
      goto LABEL_18;
    }

    v26 = v7[2].isa;
    v27 = v7[15].isa;
    *buf = 134218496;
    v31 = isa;
    v32 = 2048;
    v33 = v26;
    v34 = 1024;
    v35 = v27;
    v18 = "Failed to get notificationPort(%p)/runLoop(%p)/cameraService(%u). They should not be NULL.";
    v19 = v12;
    v20 = 28;
LABEL_40:
    _os_log_error_impl(&dword_298245000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
    goto LABEL_17;
  }

  v9 = v4[26].isa;
  if (v9)
  {
    v10 = v4[27].isa == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v16 = *a1;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v18 = "The callback is already set. Not allowed to override the callback";
    v19 = v16;
    v20 = 2;
    goto LABEL_40;
  }

  if (v5)
  {
    v11 = _Block_copy(v5);
    v9 = v4[26].isa;
  }

  else
  {
    v11 = 0;
  }

  v4[26].isa = v11;
  if (v9)
  {
    _Block_release(v9);
  }

  if (v6)
  {
    dispatch_retain(v6);
  }

  v21 = v4[27].isa;
  v4[27].isa = v6;
  if (v21)
  {
    dispatch_release(v21);
  }

  notification = 0;
  v22 = IOServiceAddInterestNotification(a1[1]->isa, a1[1][15].isa, "IOGeneralInterest", ctu::iokit::sCameraServiceCallbackInternal, a1, &notification);
  v13 = v22 == 0;
  if (v22)
  {
    v23 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      v28 = a1[1][15].isa;
      *buf = 67109120;
      LODWORD(v31) = v28;
      _os_log_error_impl(&dword_298245000, v23, OS_LOG_TYPE_ERROR, "Failed to register the notifications on instance 0x%u", buf, 8u);
    }

    v24 = v4[26].isa;
    v4[26].isa = 0;
    if (v24)
    {
      _Block_release(v24);
    }

    v25 = v4[27].isa;
    v4[27].isa = 0;
    if (v25)
    {
      dispatch_release(v25);
    }
  }

LABEL_18:
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_29824DF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ctu::iokit::Controller::processBatteryInfoNotification(os_log_t *this)
{
  v10 = 0;
  v11 = 0;
  ctu::iokit::Controller::getBatteryInfo(this, &v10);
  v2 = this[1];
  isa = v2[35].isa;
  if (isa && v2[36].isa)
  {
    v4 = v11;
    v5 = v10;
    v6 = _Block_copy(isa);
    v7 = v6;
    v8 = v2[36].isa;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu5iokit25TelephonyIOKitBatteryInfoEEEclIJS3_EEEvDpT__block_invoke;
    block[3] = &__block_descriptor_tmp_131;
    if (v6)
    {
      v9 = _Block_copy(v6);
    }

    else
    {
      v9 = 0;
    }

    aBlock = v9;
    v14 = v5;
    v15 = (v5 | (v4 << 16)) >> 16;
    dispatch_async(v8, block);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v7)
    {
      _Block_release(v7);
    }
  }
}

BOOL ctu::iokit::Controller::getBatteryInfo(os_log_t *a1, _BYTE *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v4 = IOPSGetPercentRemaining();
    v5 = v4 == 0;
    if (v4)
    {
      v6 = v4;
      v7 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v12 = v6;
        _os_log_error_impl(&dword_298245000, v7, OS_LOG_TYPE_ERROR, "Failed to get battery info: 0x%08x", buf, 8u);
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }
  }

  else
  {
    v8 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_298245000, v8, OS_LOG_TYPE_ERROR, "Invalid batteryInfo buffer", buf, 2u);
    }

    v5 = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return v5;
}

void ctu::iokit::Controller::displayServiceAdded(ctu::iokit::Controller *this, io_iterator_t iterator)
{
  if (**(this + 1))
  {
    v4 = IOIteratorNext(iterator);
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      do
      {
        if ((v6 & 1) == 0)
        {
          ctu::iokit::Controller::registerForIOKitService(this, v5, ctu::iokit::sDisplayCallbackInternal, (*(this + 1) + 28));
          ctu::iokit::Controller::displayService(this, -535736319, v7);
        }

        IOObjectRelease(v5);
        v5 = IOIteratorNext(iterator);
        v6 = 1;
      }

      while (v5);
    }
  }

  else
  {
    v8 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_298245000, v8, OS_LOG_TYPE_ERROR, "notificationPort is NULL", v9, 2u);
    }
  }
}

void ctu::iokit::sDisplayCallbackInternal(ctu::iokit *this, void *a2, void *a3, unsigned int a4, void *a5)
{
  v10 = *MEMORY[0x29EDCA608];
  if (this)
  {
    v5 = *MEMORY[0x29EDCA608];

    ctu::iokit::Controller::displayService(this, a3, a3);
  }

  else
  {
    ctu::iokit::sCreateOsLogContext(0);
    v6 = qword_2A1899B58;
    if (os_log_type_enabled(qword_2A1899B58, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "void ctu::iokit::sDisplayCallbackInternal(void *, io_service_t, uint32_t, void *)";
      _os_log_error_impl(&dword_298245000, v6, OS_LOG_TYPE_ERROR, "%s: refCon is NULL", &v8, 0xCu);
    }

    v7 = *MEMORY[0x29EDCA608];
  }
}

void ctu::iokit::Controller::displayService(ctu::iokit::Controller *this, int a2, void *a3)
{
  v3 = *(this + 1);
  if (*v3)
  {
    if (a2 == -535736315)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    if (a2 == -535736319)
    {
      v4 = 4;
    }

    if (a2 == -536870896)
    {
      v5 = 8;
    }

    else
    {
      v5 = v4;
    }

    v6 = v3[4];
    if (v6)
    {
      v7 = _Block_copy(v6);
    }

    else
    {
      v7 = 0;
    }

    v9 = v3[5];
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 1174405120;
    v11[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu5iokit25TelephonyIOKitDisplayLinkEEEclIJS3_EEEvDpT__block_invoke;
    v11[3] = &__block_descriptor_tmp_132;
    if (v7)
    {
      v10 = _Block_copy(v7);
    }

    else
    {
      v10 = 0;
    }

    aBlock = v10;
    v13 = v5;
    dispatch_async(v9, v11);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v7)
    {
      _Block_release(v7);
    }
  }

  else
  {
    v8 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11[0]) = 0;
      _os_log_error_impl(&dword_298245000, v8, OS_LOG_TYPE_ERROR, "notificationPort is NULL", v11, 2u);
    }
  }
}

void ctu::iokit::Controller::mesaService(os_log_t *this, io_registry_entry_t entry, int a3, void *a4)
{
  if (this[1]->isa)
  {
    if (a3 == -536870608)
    {
      valuePtr = 0;
      CFProperty = IORegistryEntryCreateCFProperty(entry, @"ScanningState", *MEMORY[0x29EDB8ED8], 0);
      if (CFProperty)
      {
        v6 = CFProperty;
        CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
        CFRelease(v6);
        if (valuePtr == 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = 2 * (valuePtr == 2);
        }
      }

      else
      {
        v9 = *this;
        if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_298245000, v9, OS_LOG_TYPE_ERROR, "couldn't get kScanningStateKey ", buf, 2u);
        }

        v7 = 0;
      }

      v10 = this[1];
      isa = v10[13].isa;
      if (isa)
      {
        v12 = _Block_copy(isa);
      }

      else
      {
        v12 = 0;
      }

      v13 = v10[14].isa;
      *buf = MEMORY[0x29EDCA5F8];
      v17 = 1174405120;
      v18 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu5iokit23TelephonyIOKitMesaEventEEEclIJS3_EEEvDpT__block_invoke;
      v19 = &__block_descriptor_tmp_133;
      if (v12)
      {
        v14 = _Block_copy(v12);
      }

      else
      {
        v14 = 0;
      }

      aBlock = v14;
      v21 = v7;
      dispatch_async(v13, buf);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v12)
      {
        _Block_release(v12);
      }
    }
  }

  else
  {
    v8 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_298245000, v8, OS_LOG_TYPE_ERROR, "notificationPort is NULL", buf, 2u);
    }
  }
}

uint64_t ctu::iokit::Controller::setAccessoryCallback(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  if (!*v3)
  {
    v15 = *a1;
    if (!os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
LABEL_24:
      v12 = 0;
      goto LABEL_27;
    }

    *buf = 0;
    v16 = "notificationPort is NULL";
LABEL_29:
    _os_log_error_impl(&dword_298245000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_24;
  }

  if (!v3[2])
  {
    v15 = *a1;
    if (!os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v16 = "runLoop is NULL";
    goto LABEL_29;
  }

  v5 = *a2;
  if (*a2)
  {
    v5 = _Block_copy(v5);
  }

  v6 = v3[29];
  v3[29] = v5;
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = v3[30];
  v3[30] = v7;
  if (v8)
  {
    dispatch_release(v8);
  }

  notification = 0;
  v9 = **(a1 + 8);
  v10 = IOServiceMatching("IOAccessoryManager");
  if (IOServiceAddMatchingNotification(v9, "IOServiceMatched", v10, ctu::iokit::sControllerAccessoryServiceAdded, a1, &notification))
  {
    v11 = 1;
  }

  else
  {
    v11 = notification == 0;
  }

  v12 = !v11;
  if (v11)
  {
    v17 = *a1;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "TelephonyIOKitAccessoryController";
      _os_log_error_impl(&dword_298245000, v17, OS_LOG_TYPE_ERROR, "%s: Registering Publish Notification failed", buf, 0xCu);
    }
  }

  else
  {
    ctu::iokit::Controller::accessoryServiceAdded(a1, notification);
    v13 = *(a1 + 8);
    v14 = *(v13 + 224);
    if (v14)
    {
      IOObjectRelease(v14);
      v13 = *(a1 + 8);
    }

    *(v13 + 224) = notification;
  }

LABEL_27:
  v18 = *MEMORY[0x29EDCA608];
  return v12;
}

void sub_29824E8D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ctu::iokit::sControllerAccessoryServiceAdded(os_log_t *this, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (this)
  {
    v2 = *MEMORY[0x29EDCA608];

    ctu::iokit::Controller::accessoryServiceAdded(this, a2);
  }

  else
  {
    ctu::iokit::sCreateOsLogContext(0);
    v3 = qword_2A1899B58;
    if (os_log_type_enabled(qword_2A1899B58, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "void ctu::iokit::sControllerAccessoryServiceAdded(void *, io_iterator_t)";
      _os_log_error_impl(&dword_298245000, v3, OS_LOG_TYPE_ERROR, "%s: refCon is NULL", &v5, 0xCu);
    }

    v4 = *MEMORY[0x29EDCA608];
  }
}

void ctu::iokit::Controller::accessoryServiceAdded(os_log_t *this, io_iterator_t iterator)
{
  v14 = *MEMORY[0x29EDCA608];
  if (this[1]->isa)
  {
    v4 = IOIteratorNext(iterator);
    if (v4)
    {
      v5 = v4;
      do
      {
        PrimaryPort = IOAccessoryManagerGetPrimaryPort();
        if (PrimaryPort)
        {
          v7 = PrimaryPort;
          v8 = *this;
          if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            v13 = v7;
            _os_log_debug_impl(&dword_298245000, v8, OS_LOG_TYPE_DEBUG, "#D Port Number (%d) is registering accessory service", buf, 8u);
          }

          if (ctu::iokit::Controller::registerForIOKitService(this, v5, ctu::iokit::sAccessoryCallbackInternal, &this[1][28].isa + 1))
          {
            ctu::iokit::Controller::accessoryService(this, v5, -469794797, v9);
          }
        }

        IOObjectRelease(v5);
        v5 = IOIteratorNext(iterator);
      }

      while (v5);
    }
  }

  else
  {
    v10 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_298245000, v10, OS_LOG_TYPE_ERROR, "notificationPort is NULL", buf, 2u);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void ctu::iokit::sAccessoryCallbackInternal(os_log_t *this, void *a2, int a3, void *a4, void *a5)
{
  v10 = *MEMORY[0x29EDCA608];
  if (this)
  {
    v5 = *MEMORY[0x29EDCA608];

    ctu::iokit::Controller::accessoryService(this, a2, a3, a4);
  }

  else
  {
    ctu::iokit::sCreateOsLogContext(0);
    v6 = qword_2A1899B58;
    if (os_log_type_enabled(qword_2A1899B58, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "void ctu::iokit::sAccessoryCallbackInternal(void *, io_service_t, uint32_t, void *)";
      _os_log_error_impl(&dword_298245000, v6, OS_LOG_TYPE_ERROR, "%s: refCon is NULL", &v8, 0xCu);
    }

    v7 = *MEMORY[0x29EDCA608];
  }
}

void ctu::iokit::Controller::accessoryService(os_log_t *this, int a2, int a3, void *a4)
{
  v26 = *MEMORY[0x29EDCA608];
  if (!this[1]->isa)
  {
    v13 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    LOWORD(v22[0]) = 0;
    v14 = "notificationPort is NULL";
LABEL_18:
    _os_log_error_impl(&dword_298245000, v13, OS_LOG_TYPE_ERROR, v14, v22, 2u);
    goto LABEL_36;
  }

  if (!a2)
  {
    v13 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    LOWORD(v22[0]) = 0;
    v14 = "service is IO_OBJECT_NULL";
    goto LABEL_18;
  }

  if (IOAccessoryManagerGetPrimaryPort() && ((a3 + 469794800) <= 7 && ((1 << (a3 - 16)) & 0x9B) != 0 || a3 == -469794716))
  {
    AccessoryID = IOAccessoryManagerGetAccessoryID();
    v7 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v22[0]) = 67109120;
      HIDWORD(v22[0]) = AccessoryID;
      _os_log_debug_impl(&dword_298245000, v7, OS_LOG_TYPE_DEBUG, "#D Accessory ID: %d", v22, 8u);
    }

    if (AccessoryID != -1)
    {
      if (AccessoryID == 100)
      {
        PrimaryPort = IOAccessoryManagerGetPrimaryPort();
        v9 = *this;
        if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v22[0]) = 67109120;
          HIDWORD(v22[0]) = PrimaryPort;
          _os_log_debug_impl(&dword_298245000, v9, OS_LOG_TYPE_DEBUG, "#D Port (%d) has been disconnected", v22, 8u);
        }

        v10 = this[1];
        isa = v10[29].isa;
        if (isa)
        {
          v12 = _Block_copy(isa);
        }

        else
        {
          v12 = 0;
        }

        v16 = v10[30].isa;
        v22[0] = MEMORY[0x29EDCA5F8];
        v22[1] = 1174405120;
        v22[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu5iokit32TelephonyIOKitAccessoryParameterEEEclIJS3_EEEvDpT__block_invoke;
        v22[3] = &__block_descriptor_tmp_134;
        if (v12)
        {
          v17 = _Block_copy(v12);
        }

        else
        {
          v17 = 0;
        }

        aBlock = v17;
        v24 = 0x100000002;
        v25 = PrimaryPort;
        dispatch_async(v16, v22);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v12)
        {
          _Block_release(v12);
        }
      }

      else
      {
        v15 = *this;
        if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
        {
          v21 = IOAccessoryManagerGetPrimaryPort();
          LODWORD(v22[0]) = 67109120;
          HIDWORD(v22[0]) = v21;
          _os_log_debug_impl(&dword_298245000, v15, OS_LOG_TYPE_DEBUG, "#D Port (%d) has been connected", v22, 8u);
        }

        ctu::iokit::Controller::processAccessoryType(this);
      }
    }

    isa_high = HIDWORD(this[1][28].isa);
    if (isa_high)
    {
      v19 = *this;
      if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v22[0]) = 0;
        _os_log_debug_impl(&dword_298245000, v19, OS_LOG_TYPE_DEBUG, "#D Found the accessory event. Release the notification", v22, 2u);
        isa_high = HIDWORD(this[1][28].isa);
      }

      IOObjectRelease(isa_high);
      HIDWORD(this[1][28].isa) = 0;
    }
  }

LABEL_36:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_29824EFA0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ctu::iokit::Controller::processAccessoryType(os_log_t *this)
{
  v32 = *MEMORY[0x29EDCA608];
  memset(&__p, 170, sizeof(__p));
  std::string::basic_string[abi:ne200100]<0>(&__p, &unk_29825A069);
  PrimaryPort = IOAccessoryManagerGetPrimaryPort();
  AccessoryID = IOAccessoryManagerGetAccessoryID();
  v4 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = AccessoryID;
    _os_log_debug_impl(&dword_298245000, v4, OS_LOG_TYPE_DEBUG, "#D Accessory ID: %d", &buf, 8u);
  }

  if ((AccessoryID - 80) < 9)
  {
    v5 = 0x1000000001;
    v6 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_debug_impl(&dword_298245000, v6, OS_LOG_TYPE_DEBUG, "#D Found USB-C connection and consider this as E75 for the baseband", &buf, 2u);
    }

    goto LABEL_15;
  }

  if (AccessoryID == 90)
  {
    goto LABEL_14;
  }

  if (AccessoryID != 91)
  {
    v7 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_debug_impl(&dword_298245000, v7, OS_LOG_TYPE_DEBUG, "#D There is no Digitial ID for this accessory", &buf, 2u);
    }

    goto LABEL_14;
  }

  memset(v24, 170, 6);
  if (IOAccessoryManagerGetDigitalID())
  {
LABEL_14:
    v5 = 0x100000001;
    goto LABEL_15;
  }

  if ((v24[1] & 3) != 0)
  {
    if ((v24[0] & 4) != 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if ((v24[0] & 4) != 0)
    {
LABEL_43:
      ctu::iokit::Controller::getModelNumberViaMB(&buf);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = buf;
      v16 = *this;
      v17 = os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG);
      if (!v17)
      {
        goto LABEL_46;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = p_p;
      v19 = "#D Found Model ID via MikeyBus ID: %s";
LABEL_58:
      _os_log_debug_impl(&dword_298245000, v16, OS_LOG_TYPE_DEBUG, v19, &buf, 0xCu);
      goto LABEL_46;
    }

    if ((v24[3] & 0x70) == 0 && (v24[4] & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  ctu::iokit::Controller::getModelNumberViaAccessoryManager(&buf);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = buf;
  v16 = *this;
  v17 = os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG);
  if (v17)
  {
    v18 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v18;
    v19 = "#D Found Model ID via Accessory Manager: %s";
    goto LABEL_58;
  }

LABEL_46:
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    AccessoryType = ctu::iokit::Controller::getAccessoryType(v17, &__p);
    v5 = (AccessoryType << 32) | 1;
    if (AccessoryType != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  v5 = 0x100000001;
LABEL_52:
  if ((v24[0] & 0x1F) == 0x10)
  {
    v5 = 0x1000000001;
  }

LABEL_15:
  v8 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
  {
    ctu::iokit::asString(HIDWORD(v5), &buf);
    v15 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
    *v24 = 136315394;
    *&v24[4] = v15;
    v25 = 1024;
    v26 = PrimaryPort;
    _os_log_debug_impl(&dword_298245000, v8, OS_LOG_TYPE_DEBUG, "#D Found accessory type: %s, port number: %d", v24, 0x12u);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  v9 = this[1];
  isa = v9[29].isa;
  if (isa)
  {
    v11 = _Block_copy(isa);
  }

  else
  {
    v11 = 0;
  }

  v12 = v9[30].isa;
  buf.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  buf.__r_.__value_.__l.__size_ = 1174405120;
  buf.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu5iokit32TelephonyIOKitAccessoryParameterEEEclIJS3_EEEvDpT__block_invoke;
  v28 = &__block_descriptor_tmp_134;
  if (v11)
  {
    v13 = _Block_copy(v11);
  }

  else
  {
    v13 = 0;
  }

  aBlock = v13;
  v30 = v5;
  v31 = PrimaryPort;
  dispatch_async(v12, &buf);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_29824F430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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

const __CFDictionary *ctu::iokit::Controller::getModelNumberViaMB@<X0>(uint64_t a1@<X8>)
{
  memset(a1, 170, 24);
  std::string::basic_string[abi:ne200100]<0>(a1, &unk_29825A069);
  existing = -1431655766;
  result = IOServiceMatching("IOMikeyBusDevice");
  if (result)
  {
    result = IOServiceGetMatchingServices(*MEMORY[0x29EDBB110], result, &existing);
    if (!result)
    {
      do
      {
        v4 = IOIteratorNext(existing);
        if (!v4)
        {
          break;
        }

        v5 = IOMikeyBusDeviceCopyProductModelNumber(v4);
        ctu::cf::assign();
        IOObjectRelease(v4);
        if (v5)
        {
          CFRelease(v5);
        }

        v6 = *(a1 + 23);
        if ((v6 & 0x80u) != 0)
        {
          v6 = *(a1 + 8);
        }
      }

      while (!v6);
      result = existing;
      if (existing)
      {
        return IOObjectRelease(existing);
      }
    }
  }

  return result;
}

void sub_29824F618(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::iokit::Controller::getModelNumberViaAccessoryManager(void *a1@<X8>)
{
  memset(a1, 170, 24);
  std::string::basic_string[abi:ne200100]<0>(a1, &unk_29825A069);
  if (!IOAccessoryManagerCopyDeviceInfo())
  {
    v2 = CFGetTypeID(0);
    if (v2 == CFStringGetTypeID())
    {
      ctu::cf::assign();
    }
  }
}

void sub_29824F6D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::iokit::Controller::getAccessoryType(int a1, std::string *this)
{
  if (!std::string::compare(this, "A1765"))
  {
    return 8;
  }

  if (!std::string::compare(this, "A1748"))
  {
    return 4;
  }

  if (!std::string::compare(this, "A1749"))
  {
    return 2;
  }

  if (!std::string::compare(this, "A1605"))
  {
    return 32;
  }

  if (!std::string::compare(this, "A2121"))
  {
    return 64;
  }

  if (!std::string::compare(this, "A2070"))
  {
    return 128;
  }

  if (!std::string::compare(this, "A2071"))
  {
    return 256;
  }

  if (!std::string::compare(this, "A2183"))
  {
    return 512;
  }

  if (!std::string::compare(this, "A2184"))
  {
    return 1024;
  }

  if (!std::string::compare(this, "A2180"))
  {
    return 2048;
  }

  if (!std::string::compare(this, "A2261") || !std::string::compare(this, "A1998") || !std::string::compare(this, "AM003") || !std::string::find[abi:ne200100](&this->__r_.__value_.__l.__data_, "X533") || !std::string::find[abi:ne200100](&this->__r_.__value_.__l.__data_, "x533"))
  {
    return 4096;
  }

  return 1;
}

uint64_t std::string::find[abi:ne200100](char **a1, char *__s)
{
  v3 = a1;
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v3 = *a1;
    v4 = a1[1];
  }

  result = strlen(__s);
  if (result)
  {
    v6 = result;
    v7 = &v3[v4];
    if (v4 >= result)
    {
      v9 = *__s;
      v10 = v3;
      do
      {
        if (v4 - v6 == -1)
        {
          break;
        }

        v11 = memchr(v10, v9, v4 - v6 + 1);
        if (!v11)
        {
          break;
        }

        v8 = v11;
        if (!memcmp(v11, __s, v6))
        {
          goto LABEL_6;
        }

        v10 = v8 + 1;
        v4 = v7 - (v8 + 1);
      }

      while (v4 >= v6);
    }

    v8 = v7;
LABEL_6:
    if (v8 == v7)
    {
      return -1;
    }

    else
    {
      return v8 - v3;
    }
  }

  return result;
}

uint64_t ctu::iokit::Controller::setPowerSourceCallback(uint64_t a1, uint64_t a2)
{
  if (*a2 && *(a2 + 8))
  {
    v4 = *(a1 + 8);
    v5 = _Block_copy(*a2);
    v6 = *(v4 + 248);
    *(v4 + 248) = v5;
    if (v6)
    {
      _Block_release(v6);
    }

    v7 = *(a2 + 8);
    if (v7)
    {
      dispatch_retain(*(a2 + 8));
    }

    v8 = *(v4 + 256);
    *(v4 + 256) = v7;
    if (v8)
    {
      dispatch_release(v8);
    }

    v9 = *(a2 + 8);
    if (v9)
    {
      dispatch_retain(v9);
    }

    v10 = *(a1 + 8);
    v11 = *(v10 + 264);
    *(v10 + 264) = v9;
    if (v11)
    {
      dispatch_release(v11);
    }

    v12 = *(a1 + 8);
    v13 = *(a1 + 16);
    v14 = v12;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v14 = *(a1 + 8);
    }

    v15 = *(v14 + 264);
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 1174405120;
    handler[2] = ___ZN3ctu5iokit10Controller22setPowerSourceCallbackEN8dispatch8callbackIU13block_pointerFvNS0_25TelephonyIOKitPowerSourceEEEE_block_invoke;
    handler[3] = &__block_descriptor_tmp_86;
    handler[4] = a1;
    handler[5] = v12;
    v27 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = notify_register_dispatch("com.apple.system.powermanagement.poweradapter", (v14 + 272), v15, handler);
    if (v16 || (v19 = *(a1 + 8), *(v19 + 272) == -1))
    {
      v17 = 0;
    }

    else
    {
      PowerSource = ctu::iokit::Controller::queryPowerSource(v16);
      v21 = *(v19 + 248);
      if (v21)
      {
        v22 = _Block_copy(v21);
      }

      else
      {
        v22 = 0;
      }

      v23 = *(v19 + 256);
      *buf = MEMORY[0x29EDCA5F8];
      v29 = 1174405120;
      v30 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu5iokit25TelephonyIOKitPowerSourceEEEclIJS3_EEEvDpT__block_invoke;
      v31 = &__block_descriptor_tmp_135;
      if (v22)
      {
        v24 = _Block_copy(v22);
      }

      else
      {
        v24 = 0;
      }

      aBlock = v24;
      v33 = PowerSource;
      dispatch_async(v23, buf);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v22)
      {
        _Block_release(v22);
      }

      v17 = 1;
    }

    if (v27)
    {
      std::__shared_weak_count::__release_weak(v27);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    v18 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_298245000, v18, OS_LOG_TYPE_ERROR, "Power source call back is NULL!", buf, 2u);
    }

    return 0;
  }

  return v17;
}

void sub_29824FBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ctu5iokit10Controller22setPowerSourceCallbackEN8dispatch8callbackIU13block_pointerFvNS0_25TelephonyIOKitPowerSourceEEEE_block_invoke(void *a1, int a2)
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
        v8 = *(v5 + 8);
        if (*(v8 + 272) == a2)
        {
          PowerSource = ctu::iokit::Controller::queryPowerSource(v6);
          v10 = *(v8 + 248);
          if (v10)
          {
            v11 = _Block_copy(v10);
          }

          else
          {
            v11 = 0;
          }

          v12 = *(v8 + 256);
          v14[0] = MEMORY[0x29EDCA5F8];
          v14[1] = 1174405120;
          v14[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu5iokit25TelephonyIOKitPowerSourceEEEclIJS3_EEEvDpT__block_invoke;
          v14[3] = &__block_descriptor_tmp_135;
          if (v11)
          {
            v13 = _Block_copy(v11);
          }

          else
          {
            v13 = 0;
          }

          aBlock = v13;
          v16 = PowerSource;
          dispatch_async(v12, v14);
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v11)
          {
            _Block_release(v11);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t ctu::iokit::Controller::queryPowerSource(ctu::iokit::Controller *this)
{
  v1 = IOPSCopyExternalPowerAdapterDetails();
  v10 = v1;
  if (v1)
  {
    v9[0] = 0xAAAAAAAAAAAAAAAALL;
    v9[1] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(v9, v1);
    ctu::cf::MakeCFString::MakeCFString(&v11, "IsWireless");
    Bool = ctu::cf::map_adapter::getBool(v9, v11);
    MEMORY[0x29C284D70](&v11);
    ctu::cf::MakeCFString::MakeCFString(&v11, "FamilyCode");
    Int = ctu::cf::map_adapter::getInt(v9, v11);
    MEMORY[0x29C284D70](&v11);
    if ((Int + 536854528) >= 0xB)
    {
      v4 = 1;
    }

    else
    {
      v4 = 3;
    }

    if (Int == -536723453)
    {
      v5 = 9;
    }

    else
    {
      v5 = 1;
    }

    if (Int == -536723450)
    {
      v5 = 5;
    }

    if (Int == -536723449)
    {
      v5 |= 0x20u;
    }

    if (Int == -536723455)
    {
      v6 = v5 | 0x10;
    }

    else
    {
      v6 = v5;
    }

    if (Bool)
    {
      LODWORD(v7) = v6;
    }

    else
    {
      LODWORD(v7) = v4;
    }

    MEMORY[0x29C284DB0](v9);
  }

  else
  {
    LODWORD(v7) = 1;
  }

  if ((v7 & 0x3E) != 0)
  {
    v7 &= 0x3Eu;
  }

  else
  {
    v7 = v7;
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v10);
  return v7;
}

void sub_29824FE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, char a12)
{
  MEMORY[0x29C284D70](&a12);
  MEMORY[0x29C284DB0](&a9);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a11);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c54_ZTSNSt3__18weak_ptrIN3ctu5iokit17ControllerContextEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c54_ZTSNSt3__18weak_ptrIN3ctu5iokit17ControllerContextEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ctu::iokit::Controller::powerSourceService(ctu::iokit::Controller *this)
{
  v1 = *(this + 1);
  PowerSource = ctu::iokit::Controller::queryPowerSource(this);
  v3 = *(v1 + 248);
  if (v3)
  {
    v4 = _Block_copy(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v1 + 256);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu5iokit25TelephonyIOKitPowerSourceEEEclIJS3_EEEvDpT__block_invoke;
  v7[3] = &__block_descriptor_tmp_135;
  if (v4)
  {
    v6 = _Block_copy(v4);
  }

  else
  {
    v6 = 0;
  }

  aBlock = v6;
  v9 = PowerSource;
  dispatch_async(v5, v7);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }
}

BOOL ctu::iokit::Controller::registerForBatteryInfoChange(uint64_t a1, uint64_t a2)
{
  if (!*a2 || !*(a2 + 8))
  {
    v5 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "BatteryInfoCallback is NULL";
      goto LABEL_32;
    }

    return 0;
  }

  v4 = *(a1 + 8);
  if (*(v4 + 276) != -1)
  {
    v5 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "BatteryInfo service is already running";
LABEL_32:
      _os_log_error_impl(&dword_298245000, v5, OS_LOG_TYPE_ERROR, v6, buf, 2u);
      return 0;
    }

    return 0;
  }

  v9 = _Block_copy(*a2);
  v10 = *(v4 + 280);
  *(v4 + 280) = v9;
  if (v10)
  {
    _Block_release(v10);
  }

  v11 = *(a2 + 8);
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = *(v4 + 288);
  *(v4 + 288) = v11;
  if (v12)
  {
    dispatch_release(v12);
  }

  v14 = *(a1 + 8);
  v13 = *(a1 + 16);
  v15 = v14;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v15 = *(a1 + 8);
  }

  v16 = *(v15 + 288);
  if (v16)
  {
    dispatch_retain(*(v15 + 288));
  }

  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 1174405120;
  handler[2] = ___ZN3ctu5iokit10Controller28registerForBatteryInfoChangeEN8dispatch8callbackIU13block_pointerFvNS0_25TelephonyIOKitBatteryInfoEEEE_block_invoke;
  handler[3] = &__block_descriptor_tmp_92;
  handler[4] = a1;
  handler[5] = v14;
  v20 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = notify_register_dispatch("com.apple.system.powersources.percent", (v15 + 276), v16, handler);
  v7 = v17 == 0;
  if (v16)
  {
    dispatch_release(v16);
  }

  if (v17)
  {
    v18 = *a1;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_298245000, v18, OS_LOG_TYPE_ERROR, "Failed to register for kIOPSNotifyPercentChange", buf, 2u);
    }
  }

  else
  {
    ctu::iokit::Controller::processBatteryInfoNotification(a1);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  return v7;
}

void sub_2982501C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ctu5iokit10Controller28registerForBatteryInfoChangeEN8dispatch8callbackIU13block_pointerFvNS0_25TelephonyIOKitBatteryInfoEEEE_block_invoke(void *a1, int a2)
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
        if (*(*(v5 + 8) + 276) == a2)
        {
          ctu::iokit::Controller::processBatteryInfoNotification(v5);
        }

        else
        {
          v8 = *v5;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *v9 = 0;
            _os_log_error_impl(&dword_298245000, v8, OS_LOG_TYPE_ERROR, "Invalid batteryInfoToken token", v9, 2u);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

BOOL ctu::iokit::Controller::registerForDisplayCoverStateChanged(uint64_t a1, uint64_t a2)
{
  if (*a2 && *(a2 + 8))
  {
    if (*(*(a1 + 8) + 296))
    {
      v4 = *a1;
      result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 0;
        v6 = "Display Cover client already running";
LABEL_39:
        _os_log_error_impl(&dword_298245000, v4, OS_LOG_TYPE_ERROR, v6, buf, 2u);
        return 0;
      }
    }

    else
    {
      v7 = *MEMORY[0x29EDB8ED8];
      v8 = IOHIDEventSystemClientCreateWithType();
      v9 = *(a1 + 8);
      v9[37] = v8;
      if (v8)
      {
        v10 = *a2;
        if (*a2)
        {
          v10 = _Block_copy(v10);
        }

        v11 = v9[39];
        v9[39] = v10;
        if (v11)
        {
          _Block_release(v11);
        }

        v12 = *(a2 + 8);
        if (v12)
        {
          dispatch_retain(v12);
        }

        v13 = v9[40];
        v9[40] = v12;
        if (v13)
        {
          dispatch_release(v13);
        }

        v33 = 0;
        Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x29EDB9000]);
        v15 = Mutable;
        if (Mutable)
        {
          v33 = Mutable;
          *buf = 0;
          ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(buf);
        }

        v34 = 0;
        v16 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (v16)
        {
          v34 = v16;
          *buf = 0;
          ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(buf);
          v16 = v34;
        }

        ctu::cf::insert<char const*,unsigned int>(v16, "PrimaryUsagePage", 0xBu, v7, v17);
        ctu::cf::insert<char const*,unsigned int>(v34, "PrimaryUsage", 1u, v7, v18);
        ctu::cf::insert<__CFDictionary *>(v15, v34);
        ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v34);
        v19 = *(*(a1 + 8) + 296);
        IOHIDEventSystemClientSetMatchingMultiple();
        v20 = *(a1 + 8);
        v21 = *(a1 + 16);
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        aBlock[0] = MEMORY[0x29EDCA5F8];
        aBlock[1] = 1174405120;
        aBlock[2] = ___ZN3ctu5iokit10Controller35registerForDisplayCoverStateChangedEN8dispatch8callbackIU13block_pointerFvNS0_31TelephonyIOKitDisplayCoverStateEEEE_block_invoke;
        aBlock[3] = &__block_descriptor_tmp_96;
        aBlock[4] = a1;
        aBlock[5] = v20;
        v32 = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = _Block_copy(aBlock);
        v23 = *(a1 + 8);
        v24 = *(v23 + 304);
        *(v23 + 304) = v22;
        if (v24)
        {
          _Block_release(v24);
        }

        v25 = *(a1 + 8);
        v26 = *(v25 + 296);
        v27 = *(v25 + 304);
        IOHIDEventSystemClientRegisterEventBlock();
        v28 = *(a1 + 8);
        v29 = *(v28 + 296);
        v30 = *(v28 + 320);
        if (v30)
        {
          dispatch_retain(*(v28 + 320));
        }

        IOHIDEventSystemClientScheduleWithDispatchQueue();
        if (v30)
        {
          dispatch_release(v30);
        }

        if (v32)
        {
          std::__shared_weak_count::__release_weak(v32);
        }

        if (v21)
        {
          std::__shared_weak_count::__release_weak(v21);
        }

        ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(&v33);
        return 1;
      }

      else
      {
        v4 = *a1;
        result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 0;
          v6 = "Failed to create EventSystemClient";
          goto LABEL_39;
        }
      }
    }
  }

  else
  {
    v4 = *a1;
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      v6 = "DisplayCoverEventCallback is NULL";
      goto LABEL_39;
    }
  }

  return result;
}

void sub_2982505F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, const void *a17)
{
  if (v18)
  {
    dispatch_release(v18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(&a17);
  _Unwind_Resume(a1);
}

void ___ZN3ctu5iokit10Controller35registerForDisplayCoverStateChangedEN8dispatch8callbackIU13block_pointerFvNS0_31TelephonyIOKitDisplayCoverStateEEEE_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5] && IOHIDEventGetIntegerValue() == 65289)
      {
        IntegerValue = IOHIDEventGetIntegerValue();
        v7 = IOHIDEventGetIntegerValue();
        switch(IntegerValue)
        {
          case 1:
            if (v7)
            {
              v8 = 3;
            }

            else
            {
              v8 = 2;
            }

LABEL_13:
            v9 = *(v3 + 8);
            v10 = *(v9 + 312);
            if (v10)
            {
              v11 = _Block_copy(v10);
            }

            else
            {
              v11 = 0;
            }

            v12 = *(v9 + 320);
            v14[0] = MEMORY[0x29EDCA5F8];
            v14[1] = 1174405120;
            v14[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu5iokit31TelephonyIOKitDisplayCoverStateEEEclIJS3_EEEvDpT__block_invoke;
            v14[3] = &__block_descriptor_tmp_136;
            if (v11)
            {
              v13 = _Block_copy(v11);
            }

            else
            {
              v13 = 0;
            }

            aBlock = v13;
            v16 = v8;
            dispatch_async(v12, v14);
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v11)
            {
              _Block_release(v11);
            }

            break;
          case 16:
            v8 = v7 == 0;
            goto LABEL_13;
          case 32:
            v8 = 4;
            goto LABEL_13;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void ___ZN3ctu5iokitL19sCreateOsLogContextEv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.iokit", "controller");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void std::allocator_traits<std::allocator<dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitPDP)>>>::destroy[abi:ne200100]<dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitPDP)>,void,0>(uint64_t a1)
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
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitFaceIDState)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitFrontCameraState)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitBackTeleCameraState)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitBackSuperWideCameraState)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitBackCameraState)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitBackCameraState,ctu::iokit::TelephonyIOKitBackTeleCameraState,ctu::iokit::TelephonyIOKitBackSuperWideCameraState)>::~callback(uint64_t a1)
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

const void **ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t ctu::cf::insert<char const*,unsigned int>(__CFDictionary *a1, const __CFString **a2, unsigned int a3, const __CFAllocator *a4, const __CFAllocator *a5)
{
  valuePtr = 0;
  ctu::cf::convert_copy(&valuePtr, a2, 0x8000100, a4, a5);
  v8 = valuePtr;
  v14 = valuePtr;
  valuePtr = a3;
  v9 = CFNumberCreate(a4, kCFNumberLongLongType, &valuePtr);
  v13 = v9;
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (!v10)
  {
    CFDictionaryAddValue(a1, v8, v9);
  }

  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&v13);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&v14);
  return v11;
}

void sub_298250B14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

BOOL ctu::cf::insert<__CFDictionary *>(__CFArray *a1, CFTypeRef cf)
{
  v5 = cf;
  if (cf)
  {
    CFRetain(cf);
    CFArrayAppendValue(a1, cf);
  }

  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&v5);
  return cf != 0;
}

void sub_298250B94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

const void **ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<ctu::iokit::ControllerContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB0278;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<ctu::iokit::ControllerContext>::__on_zero_shared(void *a1)
{
  v2 = a1[43];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[42];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[41];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[39];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = a1[38];
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = a1[36];
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = a1[35];
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = a1[34];
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = a1[33];
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = a1[32];
  if (v11)
  {
    _Block_release(v11);
  }

  v12 = a1[30];
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = a1[29];
  if (v13)
  {
    _Block_release(v13);
  }

  v14 = a1[28];
  if (v14)
  {
    dispatch_release(v14);
  }

  v15 = a1[27];
  if (v15)
  {
    _Block_release(v15);
  }

  v16 = a1[26];
  if (v16)
  {
    dispatch_release(v16);
  }

  v17 = a1[25];
  if (v17)
  {
    _Block_release(v17);
  }

  v18 = a1[24];
  if (v18)
  {
    dispatch_release(v18);
  }

  v19 = a1[23];
  if (v19)
  {
    _Block_release(v19);
  }

  v20 = a1[22];
  if (v20)
  {
    dispatch_release(v20);
  }

  v21 = a1[21];
  if (v21)
  {
    _Block_release(v21);
  }

  v22 = a1[20];
  if (v22)
  {
    dispatch_release(v22);
  }

  v23 = a1[19];
  if (v23)
  {
    _Block_release(v23);
  }

  v24 = a1[17];
  if (v24)
  {
    dispatch_release(v24);
  }

  v25 = a1[16];
  if (v25)
  {
    _Block_release(v25);
  }

  v26 = a1[12];
  if (v26)
  {
    v27 = a1[13];
    v28 = a1[12];
    if (v27 != v26)
    {
      do
      {
        v27 -= 16;
        std::allocator_traits<std::allocator<dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitPDP)>>>::destroy[abi:ne200100]<dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitPDP)>,void,0>(v27);
      }

      while (v27 != v26);
      v28 = a1[12];
    }

    a1[13] = v26;
    operator delete(v28);
  }

  std::__list_imp<unsigned int>::clear(a1 + 9);
  v29 = a1[8];
  if (v29)
  {
    dispatch_release(v29);
  }

  v30 = a1[7];
  if (v30)
  {
    _Block_release(v30);
  }
}

void *std::__list_imp<unsigned int>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void std::__shared_ptr_pointer<ctu::iokit::Controller *,std::shared_ptr<ctu::iokit::Controller>::__shared_ptr_default_delete<ctu::iokit::Controller,ctu::iokit::Controller>,std::allocator<ctu::iokit::Controller>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ctu::iokit::Controller *,std::shared_ptr<ctu::iokit::Controller>::__shared_ptr_default_delete<ctu::iokit::Controller,ctu::iokit::Controller>,std::allocator<ctu::iokit::Controller>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    ctu::iokit::Controller::~Controller(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<ctu::iokit::Controller *,std::shared_ptr<ctu::iokit::Controller>::__shared_ptr_default_delete<ctu::iokit::Controller,ctu::iokit::Controller>,std::allocator<ctu::iokit::Controller>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *__copy_helper_block_e8_32c86_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit30TelephonyIOKitFrontCameraStateEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c86_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit30TelephonyIOKitFrontCameraStateEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *__copy_helper_block_e8_32c89_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit33TelephonyIOKitBackTeleCameraStateEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c89_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit33TelephonyIOKitBackTeleCameraStateEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *__copy_helper_block_e8_32c94_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit38TelephonyIOKitBackSuperWideCameraStateEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c94_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit38TelephonyIOKitBackSuperWideCameraStateEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *__copy_helper_block_e8_32c85_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit29TelephonyIOKitBackCameraStateEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c85_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit29TelephonyIOKitBackCameraStateEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *__copy_helper_block_e8_32c170_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit29TelephonyIOKitBackCameraStateENS2_33TelephonyIOKitBackTeleCameraStateENS2_38TelephonyIOKitBackSuperWideCameraStateEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c170_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit29TelephonyIOKitBackCameraStateENS2_33TelephonyIOKitBackTeleCameraStateENS2_38TelephonyIOKitBackSuperWideCameraStateEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *__copy_helper_block_e8_32c81_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit25TelephonyIOKitBatteryInfoEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c81_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit25TelephonyIOKitBatteryInfoEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *__copy_helper_block_e8_32c81_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit25TelephonyIOKitDisplayLinkEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c81_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit25TelephonyIOKitDisplayLinkEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *__copy_helper_block_e8_32c79_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit23TelephonyIOKitMesaEventEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c79_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit23TelephonyIOKitMesaEventEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *__copy_helper_block_e8_32c88_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit32TelephonyIOKitAccessoryParameterEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c88_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit32TelephonyIOKitAccessoryParameterEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *__copy_helper_block_e8_32c81_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit25TelephonyIOKitPowerSourceEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c81_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit25TelephonyIOKitPowerSourceEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *__copy_helper_block_e8_32c87_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit31TelephonyIOKitDisplayCoverStateEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c87_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit31TelephonyIOKitDisplayCoverStateEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

ctu::power::manager *ctu::power::manager::manager(ctu::power::manager *this)
{
  *this = 0;
  *(this + 1) = 0;
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *(this + 2) = dispatch_queue_create("powerManager", v2);
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 11) = this + 88;
  *(this + 12) = this + 88;
  *(this + 13) = 0;
  *(this + 56) = 0;
  _TelephonyUtilDebugPrint();
  return this;
}

void sub_298251494(_Unwind_Exception *a1)
{
  std::__list_imp<std::weak_ptr<ctu::power::manager::listenerHandle>>::clear(v2);
  v4 = *(v1 + 16);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void ctu::power::manager::~manager(ctu::power::manager *this)
{
  _TelephonyUtilDebugPrint();
  std::__list_imp<std::weak_ptr<ctu::power::manager::listenerHandle>>::clear(this + 11);
  v2 = *(this + 2);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void ___ZN3ctu5power7manager3getEv_block_invoke()
{
  v0 = operator new(0x78uLL);
  ctu::power::manager::manager(v0);
  v1 = operator new(0x20uLL);
  v1->__vftable = &unk_2A1EB0800;
  v1->__shared_owners_ = 0;
  v1->__shared_weak_owners_ = 0;
  v1[1].__vftable = v0;
  v2 = *(v0 + 1);
  if (v2)
  {
    if (v2->__shared_owners_ != -1)
    {
      goto LABEL_6;
    }

    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *v0 = v0;
    *(v0 + 1) = v1;
    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *v0 = v0;
    *(v0 + 1) = v1;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
LABEL_6:
  v3 = operator new(0x10uLL);
  *v3 = v0;
  v3[1] = v1;
  atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  qword_2A1899B68 = v3;
  _TelephonyUtilDebugPrint();

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
}

void sub_298251638(_Unwind_Exception *a1)
{
  ctu::power::manager::~manager(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

CFRunLoopSourceRef ctu::power::manager::registerPowerSource_sync(ctu::power::manager *this)
{
  *(this + 7) = IORegisterForSystemPower(this + 28, this + 5, ctu::power::manager::_powerChanged, this + 8);
  result = IONotificationPortGetRunLoopSource(*(this + 5));
  *(this + 6) = result;
  return result;
}

uint64_t ctu::power::manager::deregisterPowerSource_sync(io_object_t *notifier)
{
  v2 = *(notifier + 6);
  if (v2)
  {
    CFRunLoopSourceInvalidate(v2);
    *(notifier + 6) = 0;
  }

  v3 = *(notifier + 5);
  if (v3)
  {
    IONotificationPortDestroy(v3);
    *(notifier + 5) = 0;
  }

  if (notifier[8])
  {
    IODeregisterForSystemPower(notifier + 8);
    notifier[8] = 0;
  }

  result = notifier[7];
  if (result)
  {
    result = IOServiceClose(result);
    notifier[7] = 0;
  }

  return result;
}

uint64_t ___ZN3ctu5power7manager13_powerChangedEPjjjPv_block_invoke(uint64_t a1)
{
  v2 = ctu::power::manager::handlePowerChanged_sync(*(a1 + 32), *(a1 + 64), 0);
  v3 = *(a1 + 56);
  v4 = **(a1 + 48);
  if (v2)
  {

    return IOAllowPowerChange(v4, v3);
  }

  else
  {

    return IOCancelPowerChange(v4, v3);
  }
}

uint64_t ___ZN3ctu5power7manager13_powerChangedEPjjjPv_block_invoke_5(uint64_t a1)
{
  ctu::power::manager::handlePowerChanged_sync(*(a1 + 32), *(a1 + 64), *(a1 + 68));
  v2 = *(a1 + 56);
  v3 = **(a1 + 48);

  return IOAllowPowerChange(v3, v2);
}

void ctu::power::manager::simulateNotification(ctu::power::manager *this, int a2, char a3)
{
  v3 = *(this + 2);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___ZN3ctu5power7manager20simulateNotificationEjb_block_invoke;
  v4[3] = &__block_descriptor_tmp_18;
  v4[4] = this;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

ctu::power::manager *___ZN3ctu5power7manager20simulateNotificationEjb_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 14))
  {
    return ctu::power::manager::handlePowerChanged_sync(result, *(a1 + 40), *(a1 + 44));
  }

  return result;
}

void ctu::power::manager::registerListener(ctu::power::manager *a1@<X0>, __CFRunLoop **a2@<X1>, std::__shared_weak_count_vtbl **a3@<X8>)
{
  v4 = *(a1 + 1);
  if (!v4 || (v7 = *a1, (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0x38uLL);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN3ctu5power7manager16registerListenerENS1_10parametersE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_27;
  aBlock[4] = a1;
  ctu::power::manager::parameters::parameters(v18, a2);
  v18[7] = v7;
  v19 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = _Block_copy(aBlock);
  v20 = v11;
  ctu::power::manager::listenerHandle::listenerHandle(v10, a2, &v20);
  *a3 = v10;
  v12 = operator new(0x20uLL);
  v12->__vftable = &unk_2A1EB0918;
  v12->__shared_owners_ = 0;
  v12->__shared_weak_owners_ = 0;
  v12[1].__vftable = v10;
  a3[1] = v12;
  if (v11)
  {
    _Block_release(v11);
  }

  _TelephonyUtilDebugPrint();
  v13 = *(a1 + 2);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN3ctu5power7manager16registerListenerENS1_10parametersE_block_invoke_29;
  block[3] = &__block_descriptor_tmp_30;
  block[4] = a1;
  ctu::power::manager::parameters::parameters(v15, a2);
  v15[7] = v10;
  v16 = v12;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  dispatch_async(v13, block);
  if (*a2 >= 2)
  {
    ctu::power::manager::addPowerSourceToRunLoop(a1, *a2);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  ctu::power::manager::parameters::~parameters(v15);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  ctu::power::manager::parameters::~parameters(v18);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
}

void sub_298251A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  ctu::power::manager::parameters::~parameters((v41 + 40));
  std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  ctu::power::manager::parameters::~parameters((v42 + 40));
  std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  _Unwind_Resume(a1);
}

void ___ZN3ctu5power7manager16registerListenerENS1_10parametersE_block_invoke(void *a1)
{
  v2 = a1[4];
  _TelephonyUtilDebugPrint();
  v3 = a1[5];
  if (v3 >= 2)
  {
    ctu::power::manager::removePowerSourceFromRunLoop(v2, v3);
  }

  v4 = *(v2 + 16);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN3ctu5power7manager16registerListenerENS1_10parametersE_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_26;
  v6 = a1[12];
  v5 = a1[13];
  v7[4] = v2;
  v7[5] = v6;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::power::manager::parameters::parameters(v9, (a1 + 5));
  dispatch_async(v4, v7);
  ctu::power::manager::parameters::~parameters(v9);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_298251C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::power::manager::removePowerSourceFromRunLoop(CFRunLoopSourceRef *this, __CFRunLoop *a2)
{
  v4 = (this + 3);
  MEMORY[0x29C284CB0](this + 3);
  v7 = *(this + 14);
  _TelephonyUtilDebugPrint();
  CFRunLoopRemoveSource(a2, this[6], *MEMORY[0x29EDB8FC0]);
  v5 = *(this + 14) - 1;
  *(this + 14) = v5;
  if (!v5)
  {
    ctu::power::manager::deregisterPowerSource_sync(this);
  }

  return MEMORY[0x29C284CC0](v4);
}

void sub_298251CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_lock<ctu::UnfairLock>::~unique_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN3ctu5power7manager16registerListenerENS1_10parametersE_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    v2 = *(v1 + 80) - 1;
    *(v1 + 80) = v2;
    if (!v2)
    {
      ctu::power::manager::removePowerSourceFromRunLoop(v1, *(v1 + 72));
      ctu::power::manager::killRunLoopThread_sync(v1);
    }
  }

  v3 = *(v1 + 96);
  if (v3 != (v1 + 88))
  {
    while (1)
    {
      v4 = v3[3];
      if (!v4)
      {
        break;
      }

      v5 = std::__shared_weak_count::lock(v4);
      if (!v5 || !v3[2])
      {
        goto LABEL_10;
      }

      v6 = v3[1];
LABEL_13:
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
LABEL_14:
      v3 = v6;
      if (v6 == (v1 + 88))
      {
        return;
      }
    }

    v5 = 0;
LABEL_10:
    v7 = *v3;
    v6 = v3[1];
    *(v7 + 8) = v6;
    *v6 = v7;
    --*(v1 + 104);
    v8 = v3[3];
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }

    operator delete(v3);
    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }
}

uint64_t ctu::power::manager::killRunLoopThread_sync(ctu::power::manager *this)
{
  _TelephonyUtilDebugPrint();
  CFRunLoopStop(*(this + 9));
  *(this + 9) = 0;
  pthread_join(*(this + 8), 0);
  *(this + 8) = 0;
  return _TelephonyUtilDebugPrint();
}

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIN3ctu5power7managerEEE56c37_ZTSKN3ctu5power7manager10parametersE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return ctu::power::manager::parameters::parameters(a1 + 56, a2 + 56);
}

void sub_298251E98(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIN3ctu5power7managerEEE56c37_ZTSKN3ctu5power7manager10parametersE(uint64_t a1)
{
  ctu::power::manager::parameters::~parameters((a1 + 56));
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t __copy_helper_block_e8_40c37_ZTSKN3ctu5power7manager10parametersE96c46_ZTSNSt3__110shared_ptrIN3ctu5power7managerEEE(uint64_t a1, uint64_t a2)
{
  result = ctu::power::manager::parameters::parameters(a1 + 40, a2 + 40);
  v5 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c37_ZTSKN3ctu5power7manager10parametersE96c46_ZTSNSt3__110shared_ptrIN3ctu5power7managerEEE(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  ctu::power::manager::parameters::~parameters((a1 + 40));
}

void *___ZN3ctu5power7manager16registerListenerENS1_10parametersE_block_invoke_29(void *a1)
{
  v2 = a1[4];
  if (a1[5] == 1)
  {
    v3 = *(v2 + 80);
    *(v2 + 80) = v3 + 1;
    if (!v3)
    {
      ctu::power::manager::spawnRunLoopThread_sync(v2);
      ctu::power::manager::addPowerSourceToRunLoop(v2, *(v2 + 72));
    }
  }

  v5 = a1[12];
  v4 = a1[13];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  result = operator new(0x20uLL);
  result[2] = v5;
  result[3] = v4;
  v8 = *(v2 + 88);
  v7 = (v2 + 88);
  *result = v8;
  result[1] = v7;
  *(v8 + 8) = result;
  *v7 = result;
  ++v7[2];
  return result;
}

void sub_29825201C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::power::manager::spawnRunLoopThread_sync(pthread_t *this)
{
  _TelephonyUtilDebugPrint();
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 1174405120;
  v3[2] = ___ZN3ctu5power7manager23spawnRunLoopThread_syncEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_32;
  v3[4] = this;
  object = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }

  pthread_create(this + 8, 0, ctu::power::manager::_runLoopThread, v3);
  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  if (object)
  {
    dispatch_release(object);
  }

  if (v2)
  {
    dispatch_release(v2);
  }
}

void sub_298252114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::power::manager::addPowerSourceToRunLoop(ctu::power::manager *this, __CFRunLoop *a2)
{
  v4 = this + 24;
  MEMORY[0x29C284CB0](this + 24);
  v8 = *(this + 14);
  _TelephonyUtilDebugPrint();
  v5 = *(this + 14);
  *(this + 14) = v5 + 1;
  if (v5)
  {
    RunLoopSource = *(this + 6);
  }

  else
  {
    *(this + 7) = IORegisterForSystemPower(this + 28, this + 5, ctu::power::manager::_powerChanged, this + 8);
    RunLoopSource = IONotificationPortGetRunLoopSource(*(this + 5));
    *(this + 6) = RunLoopSource;
  }

  CFRunLoopAddSource(a2, RunLoopSource, *MEMORY[0x29EDB8FC0]);
  return MEMORY[0x29C284CC0](v4);
}

void sub_29825220C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_lock<ctu::UnfairLock>::~unique_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c37_ZTSKN3ctu5power7manager10parametersE96c62_ZTSNSt3__110shared_ptrIN3ctu5power7manager14listenerHandleEEE(uint64_t a1, uint64_t a2)
{
  result = ctu::power::manager::parameters::parameters(a1 + 40, a2 + 40);
  v5 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c37_ZTSKN3ctu5power7manager10parametersE96c62_ZTSNSt3__110shared_ptrIN3ctu5power7manager14listenerHandleEEE(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  ctu::power::manager::parameters::~parameters((a1 + 40));
}

void ___ZN3ctu5power7manager23spawnRunLoopThread_syncEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 72) = CFRunLoopGetCurrent();
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __copy_helper_block_e8_40c21_ZTSN8dispatch5groupE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_40c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t ctu::power::manager::_runLoopThread(void (**this)(ctu::power::manager *), void *a2)
{
  _TelephonyUtilDebugPrint();
  this[2](this);
  v3 = *MEMORY[0x29EDB8FC0];
    ;
  }

  return 0;
}

uint64_t ctu::power::manager::listenerHandle::listenerHandle(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = *(a2 + 8);
  *a1 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  *(a1 + 8) = v7;
  v8 = *(a2 + 24);
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  *(a1 + 16) = v8;
  v9 = *a3;
  if (*a3)
  {
    v9 = _Block_copy(v9);
  }

  *(a1 + 24) = v9;
  v10 = (a1 + 32);
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v11 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *v10 = v11;
  }

  if (*(a1 + 55) < 0)
  {
    v12 = *v10;
  }

  _TelephonyUtilDebugPrint();
  return a1;
}

void sub_29825245C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    _Block_release(v5);
  }

  if (*v1)
  {
    dispatch_release(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::power::manager::listenerHandle::~listenerHandle(ctu::power::manager::listenerHandle *this)
{
  (*(*(this + 3) + 16))();
  v2 = (this + 32);
  if (*(this + 55) < 0)
  {
    v3 = *v2;
  }

  _TelephonyUtilDebugPrint();
  if (*(this + 55) < 0)
  {
    operator delete(*v2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    _Block_release(v6);
  }

  if (*this)
  {
    dispatch_release(*this);
  }
}

void ___ZN3ctu5power7manager14listenerHandleclERKjRKbRKN8dispatch5groupENSt3__110shared_ptrINSB_6atomicIbEEEE_block_invoke_40(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN3ctu5power7manager14listenerHandleclERKjRKbRKN8dispatch5groupENSt3__110shared_ptrINSB_6atomicIbEEEE_block_invoke_2_41;
  v9[3] = &__block_descriptor_tmp_44;
  v4 = a1[7];
  group = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(group);
  }

  v5 = a1[9];
  v11 = a1[8];
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[4];
  v7 = *v2;
  v8 = *v3;
  v13 = _Block_copy(v9);
  (*(v6 + 16))(v6, v7, v8, &v13);
  if (v13)
  {
    _Block_release(v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_298252698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, dispatch_group_t group, uint64_t a14, std::__shared_weak_count *a15)
{
  v17 = *(v15 - 40);
  if (v17)
  {
    _Block_release(v17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c71_ZTSN8dispatch5blockIU13block_pointerFvjbNS0_IU13block_pointerFvbEEEEEE56c30_ZTSN8dispatch13group_sessionE64c40_ZTSNSt3__110shared_ptrINS_6atomicIbEEEE(void *a1, void *a2)
{
  v4 = a2[4];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  a1[4] = v4;
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

void __destroy_helper_block_e8_32c71_ZTSN8dispatch5blockIU13block_pointerFvjbNS0_IU13block_pointerFvbEEEEEE56c30_ZTSN8dispatch13group_sessionE64c40_ZTSNSt3__110shared_ptrINS_6atomicIbEEEE(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
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

  v5 = a1[4];
  if (v5)
  {
    _Block_release(v5);
  }
}

void std::__list_imp<std::weak_ptr<ctu::power::manager::listenerHandle>>::clear(uint64_t *a1)
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
          std::__shared_weak_count::__release_weak(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__shared_ptr_emplace<std::string>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB07B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(void *a1)
{
  ctu::os::signpost_interval::~signpost_interval((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t ctu::power::manager::parameters::parameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  *(a1 + 16) = v5;
  v6 = *(a2 + 24);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  *(a1 + 24) = v6;
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v7 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v7;
  }

  return a1;
}

void sub_298252A0C(_Unwind_Exception *exception_object)
{
  v3 = v1[3];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = v1[2];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = v1[1];
  if (v5)
  {
    dispatch_release(v5);
  }

  _Unwind_Resume(exception_object);
}

void ctu::power::manager::parameters::~parameters(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  v2 = this[3];
  if (v2)
  {
    _Block_release(v2);
  }

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