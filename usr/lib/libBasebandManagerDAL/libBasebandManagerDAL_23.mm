void ___ZN9SARModule21sendCurrentState_syncEv_block_invoke(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = *(a1 + 40);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7)
      {
        v9 = *(v5 + 104);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = "Failed to send";
          v11 = *(a1 + 57);
          if (a2)
          {
            v10 = "Succeeded in sending";
          }

          v13 = 136315394;
          v14 = v10;
          v15 = 1024;
          v16 = v11;
          _os_log_impl(&dword_297288000, v9, OS_LOG_TYPE_DEFAULT, "#I %s stewie SAR wait time (%u sec)", &v13, 0x12u);
        }
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(uint64_t a1)
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

uint64_t SARModule::convertUSBCAccessoryBitMask(uint64_t a1, unsigned __int16 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    LODWORD(v4) = 0;
    while (1)
    {
      v5 = *v2;
      v6 = v2[1];
      if (v5 == 17 && v6 == 2)
      {
        LODWORD(v4) = v4 | 0x40000;
      }

      if (v5 == 18 && v6 == 2)
      {
        LODWORD(v4) = v4 | 0x80000;
      }

      if (v5 == 19 && v6 == 2)
      {
        LODWORD(v4) = v4 | 0x100000;
      }

      if (v5 == 20 && v6 == 2)
      {
        v4 = v4 | 0x200000;
      }

      else
      {
        v4 = v4;
      }

      v7 = v2[3];
      if (v7 == 3 && v5 == 2055)
      {
        if (v6 != 2)
        {
          v4 = v4 & 0xFFBFFFFF;
LABEL_38:
          v8 = *(a1 + 240) & 0xFFFFFFFE;
          goto LABEL_39;
        }

        v4 = v4 | 0x400000;
      }

      else if (v7 == 3 && v5 == 2058)
      {
        if (v6 != 2)
        {
          v4 = v4 & 0xFF7FFFFF;
          goto LABEL_38;
        }

        v4 = v4 | 0x800000;
      }

      else if (v7 == 3 && v5 == 2059)
      {
        if (v6 != 2)
        {
          v4 = v4 & 0xFEFFFFFF;
          goto LABEL_38;
        }

        v4 = v4 | 0x1000000;
      }

      else if (v7 == 3 && v5 == 2060)
      {
        if (v6 != 2)
        {
          v4 = v4 & 0xFDFFFFFF;
          goto LABEL_38;
        }

        v4 = v4 | 0x2000000;
      }

      else
      {
        if (v5 == 4)
        {
          *(a1 + 240) = *(a1 + 240) & 0xFFFFFBFF | ((v6 == 2) << 10);
        }

        if (!v7 || v7 == 0xFFFF)
        {
          goto LABEL_40;
        }

        if (v6 != 2)
        {
          goto LABEL_38;
        }
      }

      v8 = *(a1 + 240) | 1;
LABEL_39:
      *(a1 + 240) = v8;
LABEL_40:
      v2 += 6;
      if (v2 == v3)
      {
        return v4;
      }
    }
  }

  return 0;
}

void SARModule::dumpSARFusionState(SARModule *this)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = sar::toStringAccessory(*(this + 32));
    v5 = *(this + 32);
    v17 = 136315394;
    v18 = v4;
    v19 = 1024;
    v20 = v5;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D SAR Fusion: Accessory: %s (0x%x)", &v17, 0x12u);
    v2 = *(this + 13);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
LABEL_3:
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_3;
  }

  v6 = *(this + 132);
  v7 = sar::toString();
  v17 = 136315138;
  v18 = v7;
  _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D SAR Fusion: Sar Selection: %s", &v17, 0xCu);
  v2 = *(this + 13);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
LABEL_4:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v8 = *(this + 132);
  v9 = sar::toString();
  v17 = 136315138;
  v18 = v9;
  _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D SAR Fusion: Tuner State: %s SPACE", &v17, 0xCu);
  v2 = *(this + 13);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
LABEL_5:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_13:
  if (*(this + 135))
  {
    v10 = "ON";
  }

  else
  {
    v10 = "OFF";
  }

  v17 = 136315138;
  v18 = v10;
  _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D SAR Fusion: Speaker: %s", &v17, 0xCu);
  v2 = *(this + 13);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
LABEL_6:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

LABEL_23:
    if ((*(this + 138) & 8) != 0)
    {
      v14 = "Arcas";
    }

    else if ((*(this + 138) & 4) != 0)
    {
      v14 = "Callisto";
    }

    else if ((*(this + 138) & 2) != 0)
    {
      v14 = "USB";
    }

    else
    {
      v14 = "Power Off";
    }

    v17 = 136315138;
    v18 = v14;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D SAR Fusion: Power: %s", &v17, 0xCu);
    v2 = *(this + 13);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_17:
  v11 = *(this + 136);
  v12 = "Default Hand Position";
  if (v11 == 1)
  {
    v12 = "Left Hand";
  }

  if (v11 == 2)
  {
    v13 = "Right Hand";
  }

  else
  {
    v13 = v12;
  }

  v17 = 136315138;
  v18 = v13;
  _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D SAR Fusion: Hand Grip: %s", &v17, 0xCu);
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_23;
  }

LABEL_7:
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
LABEL_8:
    v3 = *MEMORY[0x29EDCA608];
    return;
  }

LABEL_31:
  if (*(this + 139))
  {
    v15 = "ON";
  }

  else
  {
    v15 = "OFF";
  }

  v17 = 136315138;
  v18 = v15;
  _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D SAR Fusion: Wrist: %s", &v17, 0xCu);
  v16 = *MEMORY[0x29EDCA608];
}

void SARModule::setupTxIndicationWorkaround(SARModule *this)
{
  if (*(this + 31))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    v3 = MEMORY[0x29EDCAA00];
    if (v2 || (v2 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26F9F0](v2) == v3)
      {
        xpc_retain(v2);
        v4 = v2;
      }

      else
      {
        v4 = xpc_null_create();
      }
    }

    else
    {
      v4 = xpc_null_create();
      v2 = 0;
    }

    xpc_release(v2);
    v6 = xpc_string_create(*MEMORY[0x29EDC9078]);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v7 = *MEMORY[0x29EDC8FA8];
    xpc_dictionary_set_value(v4, *MEMORY[0x29EDC8FA8], v6);
    v8 = xpc_null_create();
    xpc_release(v6);
    xpc_release(v8);
    v9 = xpc_BOOL_create(1);
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, *MEMORY[0x29EDC9050], v9);
    v10 = xpc_null_create();
    xpc_release(v9);
    xpc_release(v10);
    v11 = *(this + 10);
    if (!v11 || (v12 = *(this + 9), (v13 = std::__shared_weak_count::lock(v11)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v14 = v13;
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = *(this + 31);
      v61[0] = v4;
      if (v4)
      {
LABEL_18:
        xpc_retain(v4);
        goto LABEL_21;
      }
    }

    else
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v14);
      v15 = *(this + 31);
      v61[0] = v4;
      if (v4)
      {
        goto LABEL_18;
      }
    }

    v61[0] = xpc_null_create();
LABEL_21:
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN9SARModule27setupTxIndicationWorkaroundEv_block_invoke;
    aBlock[3] = &__block_descriptor_64_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE56c15_ZTSN3xpc4dictE_e21_v20__0B8_object__v_12l;
    aBlock[4] = this;
    aBlock[5] = v12;
    v57 = v14;
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    object = v4;
    if (v4)
    {
      xpc_retain(v4);
    }

    else
    {
      object = xpc_null_create();
    }

    v16 = _Block_copy(aBlock);
    v17 = *(this + 11);
    if (v17)
    {
      dispatch_retain(*(this + 11));
    }

    *buf = v16;
    v60 = v17;
    (**v15)(v15, v61, buf);
    if (v60)
    {
      dispatch_release(v60);
    }

    if (*buf)
    {
      _Block_release(*buf);
    }

    xpc_release(v61[0]);
    v61[0] = 0;
    xpc_release(object);
    object = 0;
    if (v57)
    {
      std::__shared_weak_count::__release_weak(v57);
    }

    std::__shared_weak_count::__release_weak(v14);
    xpc_release(v4);
    v18 = xpc_dictionary_create(0, 0, 0);
    if (v18 || (v18 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26F9F0](v18) == v3)
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
    v20 = MEMORY[0x29C26F9F0](v19);
    if (v20 != v3)
    {
      v21 = *(this + 13);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297288000, v21, OS_LOG_TYPE_ERROR, "Failed to create dictionary for antenna command driver!", buf, 2u);
      }

      goto LABEL_68;
    }

    v22 = xpc_string_create(*MEMORY[0x29EDC90C0]);
    if (!v22)
    {
      v22 = xpc_null_create();
    }

    xpc_dictionary_set_value(v19, v7, v22);
    v23 = xpc_null_create();
    xpc_release(v22);
    xpc_release(v23);
    v24 = xpc_BOOL_create(1);
    if (!v24)
    {
      v24 = xpc_null_create();
    }

    xpc_dictionary_set_value(v19, *MEMORY[0x29EDC9088], v24);
    v25 = xpc_null_create();
    xpc_release(v24);
    xpc_release(v25);
    v26 = xpc_string_create(*MEMORY[0x29EDC90A8]);
    if (!v26)
    {
      v26 = xpc_null_create();
    }

    xpc_dictionary_set_value(v19, *MEMORY[0x29EDC90A0], v26);
    v27 = xpc_null_create();
    xpc_release(v26);
    xpc_release(v27);
    v28 = xpc_int64_create(1);
    if (!v28)
    {
      v28 = xpc_null_create();
    }

    xpc_dictionary_set_value(v19, *MEMORY[0x29EDC9060], v28);
    v29 = xpc_null_create();
    xpc_release(v28);
    xpc_release(v29);
    v30 = *(this + 10);
    if (!v30 || (v31 = *(this + 9), (v32 = std::__shared_weak_count::lock(v30)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v33 = v32;
    atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v34 = *(this + 31);
      v55 = v19;
      if (v19)
      {
LABEL_53:
        xpc_retain(v19);
LABEL_56:
        v52[0] = MEMORY[0x29EDCA5F8];
        v52[1] = 3321888768;
        v52[2] = ___ZN9SARModule27setupTxIndicationWorkaroundEv_block_invoke_57;
        v52[3] = &__block_descriptor_64_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE56c15_ZTSN3xpc4dictE_e21_v20__0B8_object__v_12l;
        v52[4] = this;
        v52[5] = v31;
        v53 = v33;
        atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v54 = v19;
        if (v19)
        {
          xpc_retain(v19);
        }

        else
        {
          v54 = xpc_null_create();
        }

        v35 = _Block_copy(v52);
        v36 = *(this + 11);
        if (v36)
        {
          dispatch_retain(*(this + 11));
        }

        *buf = v35;
        v60 = v36;
        (**v34)(v34, &v55, buf);
        if (v60)
        {
          dispatch_release(v60);
        }

        if (*buf)
        {
          _Block_release(*buf);
        }

        xpc_release(v55);
        v55 = 0;
        xpc_release(v54);
        v54 = 0;
        if (v53)
        {
          std::__shared_weak_count::__release_weak(v53);
        }

        std::__shared_weak_count::__release_weak(v33);
LABEL_68:
        xpc_release(v19);
        if (v20 != v3)
        {
          return;
        }

        v37 = xpc_dictionary_create(0, 0, 0);
        if (v37 || (v37 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C26F9F0](v37) == v3)
          {
            xpc_retain(v37);
            v38 = v37;
          }

          else
          {
            v38 = xpc_null_create();
          }
        }

        else
        {
          v38 = xpc_null_create();
          v37 = 0;
        }

        xpc_release(v37);
        v39 = xpc_string_create(*MEMORY[0x29EDC90F0]);
        if (!v39)
        {
          v39 = xpc_null_create();
        }

        xpc_dictionary_set_value(v38, v7, v39);
        v40 = xpc_null_create();
        xpc_release(v39);
        xpc_release(v40);
        v41 = *(this + 10);
        if (!v41 || (v42 = *(this + 9), (v43 = std::__shared_weak_count::lock(v41)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v44 = v43;
        atomic_fetch_add_explicit(&v43->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v45 = *(this + 31);
          v51 = v38;
          if (v38)
          {
LABEL_81:
            xpc_retain(v38);
LABEL_84:
            v48[0] = MEMORY[0x29EDCA5F8];
            v48[1] = 3321888768;
            v48[2] = ___ZN9SARModule27setupTxIndicationWorkaroundEv_block_invoke_58;
            v48[3] = &__block_descriptor_64_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE56c15_ZTSN3xpc4dictE_e21_v20__0B8_object__v_12l;
            v48[4] = this;
            v48[5] = v42;
            v49 = v44;
            atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v50 = v38;
            if (v38)
            {
              xpc_retain(v38);
            }

            else
            {
              v50 = xpc_null_create();
            }

            v46 = _Block_copy(v48);
            v47 = *(this + 11);
            if (v47)
            {
              dispatch_retain(v47);
            }

            *buf = v46;
            v60 = v47;
            (**v45)(v45, &v51, buf);
            if (v60)
            {
              dispatch_release(v60);
            }

            if (*buf)
            {
              _Block_release(*buf);
            }

            xpc_release(v51);
            v51 = 0;
            xpc_release(v50);
            v50 = 0;
            if (v49)
            {
              std::__shared_weak_count::__release_weak(v49);
            }

            std::__shared_weak_count::__release_weak(v44);
            xpc_release(v38);
            return;
          }
        }

        else
        {
          (v43->__on_zero_shared)(v43);
          std::__shared_weak_count::__release_weak(v44);
          v45 = *(this + 31);
          v51 = v38;
          if (v38)
          {
            goto LABEL_81;
          }
        }

        v51 = xpc_null_create();
        goto LABEL_84;
      }
    }

    else
    {
      (v32->__on_zero_shared)(v32);
      std::__shared_weak_count::__release_weak(v33);
      v34 = *(this + 31);
      v55 = v19;
      if (v19)
      {
        goto LABEL_53;
      }
    }

    v55 = xpc_null_create();
    goto LABEL_56;
  }

  v5 = *(this + 13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v5, OS_LOG_TYPE_ERROR, "Check if it is mav device or antenna command driver is ready yet!", buf, 2u);
  }
}

void sub_2973A086C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, xpc_object_t object, xpc_object_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, xpc_object_t a25, xpc_object_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, xpc_object_t a34)
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
          _os_log_impl(&dword_297288000, v9, OS_LOG_TYPE_DEFAULT, "#I Succeeded in enabling Tx Capping Enable", buf, 2u);
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
            _os_log_error_impl(&dword_297288000, v13, OS_LOG_TYPE_ERROR, "Failed to run command driver: %s", v21, 0xCu);
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

void sub_2973A0C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t xpc::dict::object_proxy::operator xpc::object@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
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
          _os_log_impl(&dword_297288000, v9, OS_LOG_TYPE_DEFAULT, "#I Succeeded in enabling Tx indication", buf, 2u);
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
            _os_log_error_impl(&dword_297288000, v13, OS_LOG_TYPE_ERROR, "Failed to run command driver: %s", v21, 0xCu);
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

void sub_2973A0F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
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
          _os_log_impl(&dword_297288000, v9, OS_LOG_TYPE_DEFAULT, "#I Succeeded in registering Tx indication", buf, 2u);
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
            _os_log_error_impl(&dword_297288000, v13, OS_LOG_TYPE_ERROR, "Failed to run command driver: %s", v21, 0xCu);
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

void sub_2973A1130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
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
      if (MEMORY[0x29C26F9F0](v8) == MEMORY[0x29EDCAA00])
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
    _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, "This is not supported device", v17, 2u);
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
    if (MEMORY[0x29C26F9F0](v4) == v5)
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
    if (MEMORY[0x29C26F9F0](v39) == v31)
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
    if (MEMORY[0x29C26F9F0](v49) == v31)
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

void sub_2973A2068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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
    *(a2 + 8) = xmmword_2974315E0;
    result = *"Dump coredump along with telephony logs";
    strcpy(v6, "Dump coredump along with telephony logs");
  }

  else if (a1 == 1)
  {
    v5 = operator new(0x20uLL);
    *a2 = v5;
    *(a2 + 8) = xmmword_29742C690;
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
    *(a2 + 8) = xmmword_29742C6A0;
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

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitPowerSource)>::~callback(uint64_t a1)
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

void sub_2973A2938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_2973A2954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, char a11)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a11);
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<antenna::AntennaCommandDriverDelegate<SARModule>::create(std::shared_ptr<SARModule>)::MakeSharedEnabler,std::allocator<antenna::AntennaCommandDriverDelegate<SARModule>::create(std::shared_ptr<SARModule>)::MakeSharedEnabler>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E3BDD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void antenna::AntennaCommandDriverDelegate<SARModule>::create(std::shared_ptr<SARModule>)::MakeSharedEnabler::~MakeSharedEnabler(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E3BE80;
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
  *this = &unk_2A1E3BE80;
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
  *a1 = &unk_2A1E3BE80;
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
  *this = &unk_2A1E3BE80;
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

void sub_2973A2D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
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

void sub_2973A2E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
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

void sub_2973A2EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = 3760250884;
  if (MEMORY[0x29C26F9F0]((*a1)[1]) == MEMORY[0x29EDCAA00])
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
        _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I Audio Manager is not created yet", buf, 2u);
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

void sub_2973A3094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN9SARModule28registerCommandHandlers_syncEvEUb_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
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
  v3 = MEMORY[0x29C26F9F0]((*a1)->__shared_owners_);
  get_deleter = v2[2].__get_deleter;
  if (v3 != MEMORY[0x29EDCAA00])
  {
    v5 = 3760250880;
    if (os_log_type_enabled(v2[2].__get_deleter, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_ERROR, "Motion parameter dictionary is empty!", buf, 2u);
    }

    goto LABEL_50;
  }

  if (os_log_type_enabled(v2[2].__get_deleter, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x29C26F920](v1->__shared_owners_);
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
    _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Motion parameter is given: %s", v33, 0xCu);
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
      _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Set CoreMotion On Body Handler's motion parameter!", buf, 2u);
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
          _os_log_debug_impl(&dword_297288000, v17, OS_LOG_TYPE_DEBUG, "#D OBD manager is empty", buf, 2u);
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
          _os_log_debug_impl(&dword_297288000, v21, OS_LOG_TYPE_DEBUG, "#D hand detection manager is empty", buf, 2u);
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
  _os_log_debug_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEBUG, "#D CoreMotion On Body Handler is empty", buf, 2u);
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
    _os_log_impl(&dword_297288000, v17, OS_LOG_TYPE_DEFAULT, "#I Setting OBD manager's motion parameter!", buf, 2u);
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
    _os_log_impl(&dword_297288000, v21, OS_LOG_TYPE_DEFAULT, "#I Setting hand detection manager's motion parameter!", buf, 2u);
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

void sub_2973A3660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, xpc_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
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
  v2 = *(&off_2A1399A30 + 1);
  off_2A1399A30 = v1;
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

  if (MEMORY[0x29C26F9F0](v4) == MEMORY[0x29EDCAA40])
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
    _os_log_error_impl(&dword_297288000, v5, OS_LOG_TYPE_ERROR, "Failed to get accessory information!", &object, 2u);
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
    _os_log_impl(&dword_297288000, v18, OS_LOG_TYPE_DEFAULT, "#I Sending Accessory State with USB-C: 0x%x", buf, 8u);
  }

  v19 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v20 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v19);
    v21 = *buf;
    memset(buf, 0, sizeof(buf));
    v22 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v21;
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

    v20 = off_2A1399A30;
  }

  v24 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
        _os_log_error_impl(&dword_297288000, v30, OS_LOG_TYPE_ERROR, "Failed to set SAR Fusion State!", buf, 2u);
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

void sub_2973A3D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, xpc_object_t object, uint64_t a22, uint64_t a23, uint64_t a24, xpc_object_t a25)
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
    _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Blocking accessories", buf, 2u);
  }

  v4 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v5 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v4);
    v6 = *buf;
    memset(buf, 0, sizeof(buf));
    v7 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v6;
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

    v5 = off_2A1399A30;
  }

  v9 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
        _os_log_error_impl(&dword_297288000, v13, OS_LOG_TYPE_ERROR, "Failed to set blocking accessories", buf, 2u);
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

void sub_2973A4204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, xpc_object_t object)
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
    _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Unblocking accessories", buf, 2u);
  }

  v4 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v5 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v4);
    v6 = *buf;
    memset(buf, 0, sizeof(buf));
    v7 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v6;
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

    v5 = off_2A1399A30;
  }

  v9 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
        _os_log_error_impl(&dword_297288000, v13, OS_LOG_TYPE_ERROR, "Failed to set unblocking accessories", buf, 2u);
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

void sub_2973A4640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, xpc_object_t object)
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

  if (MEMORY[0x29C26F9F0](v4) == MEMORY[0x29EDCAA00])
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
      _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Get property for %s command is not supported", object, 0xCu);
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
    _os_log_impl(&dword_297288000, v26, OS_LOG_TYPE_DEFAULT, "#I cellular transmit state: %s", buf, 0xCu);
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

void sub_2973A4B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t object, uint64_t a18, uint64_t a19, xpc_object_t a20)
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
  *result = &unk_2A1E3BEA8;
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
  *a1 = &unk_2A1E3BEA8;
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
  *result = &unk_2A1E3BEA8;
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
  *a2 = &unk_2A1E3BEA8;
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
      if (!a1[2] || MEMORY[0x29C26F9F0](v5) != MEMORY[0x29EDCAA00])
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

void sub_2973A5008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
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
  MEMORY[0x29C26DF80](&v41);
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
    MEMORY[0x29C26DFC0](v39);
    v28 = v40;
    if (!v40)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  MEMORY[0x29C26DFC0](v39);
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

void sub_2973A5834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  dispatch::callback<void({block_pointer})(BOOL,antenna::NVItems)>::~callback(v19 - 64);
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  std::__shared_weak_count::__release_weak(v18);
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_2973A5870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
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
    _os_log_error_impl(&dword_297288000, v11, OS_LOG_TYPE_ERROR, "Failed to get NV item!", __p, 2u);
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
  _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "#I %s nv item is detected", &buf, 0xCu);
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
  v15 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(__p, v14);
    v16 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v17 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v16;
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

    v15 = off_2A1399A30;
  }

  v19 = *(&off_2A1399A30 + 1);
  *&buf = v15;
  *(&buf + 1) = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
  _os_log_error_impl(&dword_297288000, v22, OS_LOG_TYPE_ERROR, "Failed to set HSAR configuration!", __p, 2u);
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

void sub_2973A5D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_1,std::allocator<SARModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E3BF58;
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
  *a1 = &unk_2A1E3BF58;
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
  *result = &unk_2A1E3BF58;
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
  *a2 = &unk_2A1E3BF58;
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

void sub_2973A6280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_2,std::allocator<SARModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E3BFD8;
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
  *a1 = &unk_2A1E3BFD8;
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
  *result = &unk_2A1E3BFD8;
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
  *a2 = &unk_2A1E3BFD8;
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
    if (*cf && MEMORY[0x29C26F9F0](*cf) == MEMORY[0x29EDCAA00])
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
      _os_log_impl(&dword_297288000, v14, OS_LOG_TYPE_DEFAULT, "#I Received voice call event with state: %s", cf, 0xCu);
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
      _os_log_error_impl(&dword_297288000, v11, OS_LOG_TYPE_ERROR, "No input is given for voice call active state", cf, 2u);
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

void sub_2973A69BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t a11, char a12, xpc_object_t object)
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

void sub_2973A6C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
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

void sub_2973A6D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *std::__function::__func<void({block_pointer})(BOOL,BOOL,char const*),std::allocator<void({block_pointer})(BOOL,BOOL,char const*)>,void ()(BOOL,BOOL,char const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2A1E3C058;
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
  if (v2 == 0x8000000297434754)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000297434754 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297434754))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297434754 & 0x7FFFFFFFFFFFFFFFLL));
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

void sub_2973A6F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
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
    if (MEMORY[0x29C26F9F0](v43) != MEMORY[0x29EDCAA00])
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
        _os_log_error_impl(&dword_297288000, v5, OS_LOG_TYPE_ERROR, "Failed to get the Tx state from the state (%d) and trigger (%d)", buf, 0xEu);
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
          _os_log_impl(&dword_297288000, v35, OS_LOG_TYPE_DEFAULT, "#I Tx is on from QMI", __dst, 2u);
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
          MEMORY[0x29C26EC90](v53);
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
        _os_log_impl(&dword_297288000, v34, OS_LOG_TYPE_DEFAULT, "#I Tx is off from QMI", __dst, 2u);
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
    _os_log_impl(&dword_297288000, v22, OS_LOG_TYPE_DEFAULT, "#I %s", v44, 0xCu);
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
    _os_log_error_impl(&dword_297288000, v8, OS_LOG_TYPE_ERROR, "This is not supported device", buf, 2u);
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

void sub_2973A7650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, xpc_object_t object, uint64_t a27, uint64_t a28, xpc_object_t a29)
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
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Getting call state", buf, 2u);
  }

  v4 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v5 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v4);
    v6 = *buf;
    memset(buf, 0, sizeof(buf));
    v7 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v6;
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

    v5 = off_2A1399A30;
  }

  v9 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
        _os_log_error_impl(&dword_297288000, v12, OS_LOG_TYPE_ERROR, "Failed to get call state!", buf, 2u);
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
          _os_log_impl(&dword_297288000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
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
  _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "#I Succeeded getting call state: %s", buf, 0xCu);
  v14 = v1[8];
  if (v14 == *v10)
  {
    goto LABEL_28;
  }

LABEL_33:
  *v10 = v14;
  v20 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v21 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v20);
    v22 = *buf;
    memset(buf, 0, sizeof(buf));
    v23 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v22;
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

    v21 = off_2A1399A30;
  }

  v25 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
  _os_log_error_impl(&dword_297288000, v27, OS_LOG_TYPE_ERROR, "Failed to set call state!", buf, 2u);
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

void sub_2973A7D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  operator delete(v3);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::processCallStatusSARFusion(BOOL)::$_0>(SARModule::processCallStatusSARFusion(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::processCallStatusSARFusion(BOOL)::$_0,dispatch_queue_s *::default_delete<SARModule::processCallStatusSARFusion(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(unsigned __int8 **a1)
{
  v39[1] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  v3 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v4 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v3);
    v5 = *buf;
    memset(buf, 0, sizeof(buf));
    v6 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v5;
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

    v4 = off_2A1399A30;
  }

  v8 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
        _os_log_error_impl(&dword_297288000, v11, OS_LOG_TYPE_ERROR, "Failed to get voice state!", buf, 2u);
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
          _os_log_impl(&dword_297288000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
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
  _os_log_impl(&dword_297288000, v11, OS_LOG_TYPE_DEFAULT, "#I Succeeded getting voice state: %s", buf, 0xCu);
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
    _os_log_impl(&dword_297288000, v19, OS_LOG_TYPE_DEFAULT, "#I Sending voice state to driver: %s", buf, 0xCu);
  }

  v21 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v22 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v21);
    v23 = *buf;
    memset(buf, 0, sizeof(buf));
    v24 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v23;
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

    v22 = off_2A1399A30;
  }

  v26 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
  _os_log_error_impl(&dword_297288000, v28, OS_LOG_TYPE_ERROR, "Failed to set voice state!", buf, 2u);
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

void sub_2973A8424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  operator delete(v3);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_74()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_75()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<AppleSARHelper>::~PthreadMutexGuardPolicy, &ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_76()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_77()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_297288000);
  }

  return result;
}

void lcdm::constructSubTLVWithUInt32Value(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *__dst = 0u;
  v27 = 0u;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(__p.__r_.__value_.__r.__words[2]) - 5 >= 0xFFFFFFFC)
    {
      goto LABEL_14;
    }

    v6 = 0;
    goto LABEL_38;
  }

  if (!__p.__r_.__value_.__l.__size_ || __p.__r_.__value_.__l.__size_ > 4)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v6 = 0;
    goto LABEL_38;
  }

  while (1)
  {
LABEL_14:
    if ((v5 & 0x80) == 0)
    {
      size = v5;
      if (v5 < 4)
      {
        p_p = &__p;
LABEL_22:
        p_p->__r_.__value_.__s.__data_[size] = 32;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          __p.__r_.__value_.__l.__size_ = size + 1;
        }

        else
        {
          *(&__p.__r_.__value_.__s + 23) = size + 1;
        }

        v7 = &p_p->__r_.__value_.__s.__data_[size + 1];
        goto LABEL_13;
      }

      strncpy(__dst, &__p, v5);
      *&__dst[4] = 4;
      v14 = *&__dst[8];
      v13 = v27;
      v15 = v27 - *&__dst[8];
      if (v27 - *&__dst[8] > 3uLL)
      {
        goto LABEL_34;
      }

LABEL_25:
      if (*(&v27 + 1) - v13 >= 4 - v15)
      {
        v20 = &v13[4 - v15];
        bzero(v13, 4 - v15);
        *&v27 = v20;
      }

      else
      {
        v16 = 2 * (*(&v27 + 1) - v14);
        if (v16 <= 4)
        {
          v16 = 4;
        }

        if (*(&v27 + 1) - v14 >= 0x3FFFFFFFFFFFFFFFuLL)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        v18 = operator new(v17);
        bzero(&v18[v15], 4 - v15);
        memcpy(v18, v14, v15);
        *&__dst[8] = v18;
        *&v27 = v18 + 4;
        *(&v27 + 1) = &v18[v17];
        if (v14)
        {
          operator delete(v14);
        }
      }

      goto LABEL_37;
    }

    size = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_ >= 4)
    {
      break;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    v10 = __p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
    if ((__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1 != __p.__r_.__value_.__l.__size_)
    {
      goto LABEL_22;
    }

    v11 = operator new(0x17uLL);
    v12 = v11;
    if (size)
    {
      memmove(v11, p_p, size);
    }

    *(v12 + size) = 32;
    operator delete(p_p);
    __p.__r_.__value_.__l.__size_ = v10;
    __p.__r_.__value_.__r.__words[2] = 0x8000000000000017;
    v7 = (v12 + v10);
    __p.__r_.__value_.__r.__words[0] = v12;
LABEL_13:
    *v7 = 0;
    v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v19 = __p.__r_.__value_.__r.__words[0];
  strncpy(__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  operator delete(v19);
  *&__dst[4] = 4;
  v14 = *&__dst[8];
  v13 = v27;
  v15 = v27 - *&__dst[8];
  if (v27 - *&__dst[8] <= 3uLL)
  {
    goto LABEL_25;
  }

LABEL_34:
  if (v15 != 4)
  {
    *&v27 = v14 + 4;
  }

LABEL_37:
  **&__dst[8] = a2;
  v6 = 1;
LABEL_38:
  *a3 = v6;
  v21 = *&__dst[8];
  *(a3 + 8) = *__dst;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v22 = v27 - v21;
  if (v27 != v21)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v23 = operator new(v27 - v21);
    *(a3 + 16) = v23;
    v24 = &v23[v22];
    *(a3 + 32) = &v23[v22];
    memcpy(v23, v21, v22);
    *(a3 + 24) = v24;
  }

  if (v21)
  {
    *&v27 = v21;
    operator delete(v21);
  }
}

void sub_2973A8870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t lcdm::setSubTLVType(char *__dst, char *__src)
{
  v2 = __src;
  v3 = __src[23];
  if ((__src[23] & 0x80000000) == 0)
  {
    if (__src[23])
    {
      v4 = __src[23];
      goto LABEL_5;
    }

    return 0;
  }

  v4 = *(__src + 1);
  if (!v4)
  {
    return 0;
  }

LABEL_5:
  if (v4 > 4)
  {
    return 0;
  }

  while ((v3 & 0x80) == 0)
  {
    if (v3 > 3)
    {
      v7 = v3;
      goto LABEL_14;
    }

LABEL_9:
    std::string::append(v2, " ", 1uLL);
    v3 = v2[23];
  }

  v7 = *(v2 + 1);
  if (v7 < 4)
  {
    goto LABEL_9;
  }

  v2 = *v2;
LABEL_14:
  strncpy(__dst, v2, v7);
  return 1;
}

uint64_t lcdm::setSubTLVLength(uint64_t a1, unint64_t a2)
{
  if (HIDWORD(a2))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_2A1E3C100;
  }

  *(a1 + 4) = a2;
  return 1;
}

BOOL sub_2973A89F8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return v1 == 0;
}

uint64_t lcdm::setSubTLVValueToUInt32(void *a1, int a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = v4 - v5;
  if ((v4 - v5) > 3)
  {
    if (v6 != 4)
    {
      a1[2] = v5 + 4;
    }
  }

  else
  {
    v7 = a1[3];
    if (v7 - v4 >= 4 - v6)
    {
      bzero(v4, 4 - v6);
      a1[2] = v5 + 4;
    }

    else
    {
      v8 = v7 - v5;
      v9 = 2 * v8;
      if (2 * v8 <= 4)
      {
        v9 = 4;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      v11 = operator new(v10);
      bzero(&v11[v6], 4 - v6);
      memcpy(v11, v5, v6);
      a1[1] = v11;
      a1[2] = v11 + 4;
      a1[3] = &v11[v10];
      if (v5)
      {
        operator delete(v5);
      }
    }
  }

  *a1[1] = a2;
  return 1;
}

void lcdm::constructSubTLVWithUInt64Value(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *__dst = 0u;
  v27 = 0u;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(__p.__r_.__value_.__r.__words[2]) - 5 >= 0xFFFFFFFC)
    {
      goto LABEL_14;
    }

    v6 = 0;
    goto LABEL_38;
  }

  if (!__p.__r_.__value_.__l.__size_ || __p.__r_.__value_.__l.__size_ > 4)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v6 = 0;
    goto LABEL_38;
  }

  while (1)
  {
LABEL_14:
    if ((v5 & 0x80) == 0)
    {
      size = v5;
      if (v5 < 4)
      {
        p_p = &__p;
LABEL_22:
        p_p->__r_.__value_.__s.__data_[size] = 32;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          __p.__r_.__value_.__l.__size_ = size + 1;
        }

        else
        {
          *(&__p.__r_.__value_.__s + 23) = size + 1;
        }

        v7 = &p_p->__r_.__value_.__s.__data_[size + 1];
        goto LABEL_13;
      }

      strncpy(__dst, &__p, v5);
      *&__dst[4] = 8;
      v14 = *&__dst[8];
      v13 = v27;
      v15 = v27 - *&__dst[8];
      if (v27 - *&__dst[8] > 7uLL)
      {
        goto LABEL_34;
      }

LABEL_25:
      if (*(&v27 + 1) - v13 >= 8 - v15)
      {
        v20 = &v13[8 - v15];
        bzero(v13, 8 - v15);
        *&v27 = v20;
      }

      else
      {
        v16 = 2 * (*(&v27 + 1) - v14);
        if (v16 <= 8)
        {
          v16 = 8;
        }

        if (*(&v27 + 1) - v14 >= 0x3FFFFFFFFFFFFFFFuLL)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        v18 = operator new(v17);
        bzero(&v18[v15], 8 - v15);
        memcpy(v18, v14, v15);
        *&__dst[8] = v18;
        *&v27 = v18 + 8;
        *(&v27 + 1) = &v18[v17];
        if (v14)
        {
          operator delete(v14);
        }
      }

      goto LABEL_37;
    }

    size = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_ >= 4)
    {
      break;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    v10 = __p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
    if ((__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1 != __p.__r_.__value_.__l.__size_)
    {
      goto LABEL_22;
    }

    v11 = operator new(0x17uLL);
    v12 = v11;
    if (size)
    {
      memmove(v11, p_p, size);
    }

    *(v12 + size) = 32;
    operator delete(p_p);
    __p.__r_.__value_.__l.__size_ = v10;
    __p.__r_.__value_.__r.__words[2] = 0x8000000000000017;
    v7 = (v12 + v10);
    __p.__r_.__value_.__r.__words[0] = v12;
LABEL_13:
    *v7 = 0;
    v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v19 = __p.__r_.__value_.__r.__words[0];
  strncpy(__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  operator delete(v19);
  *&__dst[4] = 8;
  v14 = *&__dst[8];
  v13 = v27;
  v15 = v27 - *&__dst[8];
  if (v27 - *&__dst[8] <= 7uLL)
  {
    goto LABEL_25;
  }

LABEL_34:
  if (v15 != 8)
  {
    *&v27 = v14 + 8;
  }

LABEL_37:
  **&__dst[8] = a2;
  v6 = 1;
LABEL_38:
  *a3 = v6;
  v21 = *&__dst[8];
  *(a3 + 8) = *__dst;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v22 = v27 - v21;
  if (v27 != v21)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v23 = operator new(v27 - v21);
    *(a3 + 16) = v23;
    v24 = &v23[v22];
    *(a3 + 32) = &v23[v22];
    memcpy(v23, v21, v22);
    *(a3 + 24) = v24;
  }

  if (v21)
  {
    *&v27 = v21;
    operator delete(v21);
  }
}

void sub_2973A8DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t lcdm::setSubTLVValueToUInt64(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = v4 - v5;
  if ((v4 - v5) > 7)
  {
    if (v6 != 8)
    {
      a1[2] = v5 + 8;
    }
  }

  else
  {
    v7 = a1[3];
    if (v7 - v4 >= 8 - v6)
    {
      bzero(v4, 8 - v6);
      a1[2] = v5 + 8;
    }

    else
    {
      v8 = v7 - v5;
      v9 = 2 * v8;
      if (2 * v8 <= 8)
      {
        v9 = 8;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      v11 = operator new(v10);
      bzero(&v11[v6], 8 - v6);
      memcpy(v11, v5, v6);
      a1[1] = v11;
      a1[2] = v11 + 8;
      a1[3] = &v11[v10];
      if (v5)
      {
        operator delete(v5);
      }
    }
  }

  *a1[1] = a2;
  return 1;
}

void lcdm::asString(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = strnlen(a1, 4uLL);
  memset(__dst, 170, sizeof(__dst));
  if (v4 > 0x7FFFFFFFFFFFFFF7)
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
    __dst[1] = v5;
    __dst[2] = (v7 | 0x8000000000000000);
    __dst[0] = v6;
    goto LABEL_9;
  }

  HIBYTE(__dst[2]) = v4;
  v6 = __dst;
  if (v4)
  {
LABEL_9:
    memcpy(v6, a1, v5);
  }

  *(v5 + v6) = 0;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[7] = v8;
  v28[8] = v8;
  v28[5] = v8;
  v28[6] = v8;
  v28[3] = v8;
  v28[4] = v8;
  v28[1] = v8;
  v28[2] = v8;
  v27 = v8;
  v28[0] = v8;
  *__p = v8;
  v26 = v8;
  v23 = v8;
  *__src = v8;
  v21 = v8;
  v22 = v8;
  v20 = v8;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v20);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "Type = '", 8);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) >= 0)
  {
    v11 = HIBYTE(__dst[2]);
  }

  else
  {
    v11 = __dst[1];
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "', Length = ", 12);
  MEMORY[0x29C26EA60](v13, *(a1 + 4));
  if ((BYTE8(v27) & 0x10) != 0)
  {
    v15 = v27;
    if (v27 < __src[1])
    {
      *&v27 = __src[1];
      v15 = __src[1];
    }

    v16 = __src[0];
    v14 = v15 - __src[0];
    if ((v15 - __src[0]) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if ((BYTE8(v27) & 8) == 0)
    {
      v14 = 0;
      a2[23] = 0;
      goto LABEL_30;
    }

    v16 = *(&v22 + 1);
    v14 = *(&v23 + 1) - *(&v22 + 1);
    if (*(&v23 + 1) - *(&v22 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_36:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

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

    v18 = operator new(v17);
    *(a2 + 1) = v14;
    *(a2 + 2) = v17 | 0x8000000000000000;
    *a2 = v18;
    a2 = v18;
    goto LABEL_29;
  }

  a2[23] = v14;
  if (v14)
  {
LABEL_29:
    memmove(a2, v16, v14);
  }

LABEL_30:
  a2[v14] = 0;
  *&v20 = *MEMORY[0x29EDC9528];
  v19 = *(MEMORY[0x29EDC9528] + 72);
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v21 = v19;
  *(&v21 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v21 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v22);
  std::iostream::~basic_iostream();
  MEMORY[0x29C26EC90](v28);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_2973A928C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 65) < 0)
  {
    operator delete(*(v1 - 88));
  }

  _Unwind_Resume(exception_object);
}

unint64_t lcdm::getSubTLVValueAsUInt32(uint64_t a1)
{
  if (*(a1 + 4) == 4)
  {
    return (**(a1 + 8) << 32) | 1;
  }

  else
  {
    return 0;
  }
}

uint64_t lcdm::setSubTLVTypeFromBuf(_DWORD *a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 4)
  {
    return 0;
  }

  *a3 = *a1;
  return 1;
}

uint64_t lcdm::setSubTLVLengthFromBuf(_DWORD *a1, unint64_t a2, uint64_t a3)
{
  if (a2 < 4)
  {
    return 0;
  }

  *(a3 + 4) = *a1;
  return 1;
}

uint64_t lcdm::setSubTLVValueFromBuf(const void *a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 4);
  if (a2 < v3)
  {
    return 0;
  }

  v8 = *(a3 + 8);
  v7 = *(a3 + 16);
  v9 = v7 - v8;
  v10 = v3 - (v7 - v8);
  if (v3 <= v7 - v8)
  {
    if (v3 < v7 - v8)
    {
      *(a3 + 16) = &v8[v3];
    }
  }

  else
  {
    v11 = *(a3 + 24);
    if (v11 - v7 >= v10)
    {
      bzero(v7, v10);
      *(a3 + 16) = &v8[v3];
      v16 = *(a3 + 4);
      if (!v16)
      {
        return 1;
      }

      goto LABEL_16;
    }

    v12 = v11 - v8;
    v13 = 2 * v12;
    if (2 * v12 <= v3)
    {
      v13 = *(a3 + 4);
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    v15 = operator new(v14);
    bzero(&v15[v9], v10);
    memcpy(v15, v8, v9);
    *(a3 + 8) = v15;
    *(a3 + 16) = &v15[v3];
    *(a3 + 24) = &v15[v14];
    if (v8)
    {
      operator delete(v8);
      v16 = *(a3 + 4);
      if (!v16)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v16 = *(a3 + 4);
  if (v16)
  {
LABEL_16:
    memmove(*(a3 + 8), a1, v16);
    v17 = *(a3 + 4);
  }

  return 1;
}

uint64_t lcdm::serializeSubTLV(_DWORD *a1, unint64_t a2, uint64_t a3)
{
  if (a2 < *(a3 + 4) + 8)
  {
    return 0;
  }

  *a1 = *a3;
  a1[1] = *(a3 + 4);
  memcpy(a1 + 2, *(a3 + 8), *(a3 + 4));
  v5 = *(a3 + 4) + 8;
  return 1;
}

uint64_t lcdm::serializeSubTLVs(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = a3[1];
  v4 = a3[4];
  v5 = (v3 + 8 * (v4 >> 7));
  v6 = *v5 + 32 * (v4 & 0x7F);
  if (*(v6 + 4) != 4 || a2 < **(v6 + 8))
  {
    return 0;
  }

  if (a3[2] == v3)
  {
    return 1;
  }

  v10 = *(v3 + (((a3[5] + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a3[5] + v4) & 0x7F);
  if (v6 == v10)
  {
    return 1;
  }

  v12 = 0;
  v8 = 1;
  while (a2 - v12 >= *(v6 + 4) + 8)
  {
    v13 = (a1 + v12);
    *v13 = *v6;
    v13[1] = *(v6 + 4);
    memcpy((a1 + v12 + 8), *(v6 + 8), *(v6 + 4));
    v14 = v6 + 32;
    if (v6 + 32 - *v5 == 4096)
    {
      v15 = v5[1];
      ++v5;
      v14 = v15;
    }

    v12 += *(v6 + 4) + 8;
    v6 = v14;
    if (v14 == v10)
    {
      return v8;
    }
  }

  return 0;
}

void lcdm::deserializeSubTLV(unsigned int *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 > 7)
  {
    v5 = *a1;
    v4 = a1[1];
    if (a2 - 8 >= v4)
    {
      if (v4)
      {
        v7 = operator new(a1[1]);
        v8 = &v7[v4];
        memmove(v7, a1 + 2, v4);
      }

      else
      {
        v7 = 0;
        v8 = 0;
      }

      *a3 = 1;
      *(a3 + 8) = v4 + 8;
      *(a3 + 16) = v5 | (v4 << 32);
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 24) = 0;
      v9 = v8 - v7;
      if (v8 != v7)
      {
        if (v9 < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v10 = operator new(v8 - v7);
        *(a3 + 24) = v10;
        v11 = &v10[v9];
        *(a3 + 40) = &v10[v9];
        memcpy(v10, v7, v8 - v7);
        *(a3 + 32) = v11;
      }

      if (v7)
      {

        operator delete(v7);
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 8;
      *(a3 + 16) = v5 | (v4 << 32);
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 24) = 0;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0;
  }
}

void sub_2973A9778(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void lcdm::deserializeToSubTLVs(unsigned int *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  lcdm::deserializeSubTLV(a1, a2, v44);
  v6 = v45;
  v7 = v46;
  v49 = v46;
  v39 = v47;
  v50 = v47;
  v51 = v48;
  if ((v44[0] & 1) == 0)
  {
    *a3 = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    v16 = (v54 >> 4) & 0xFFFFFFFFFFFFFF8;
    if (v53 == *(&v52 + 1))
    {
      v17 = 0;
    }

    else
    {
      v17 = (*(*(&v52 + 1) + v16) + 32 * (v54 & 0x7F));
      v18 = ((*(&v54 + 1) + v54) >> 4) & 0xFFFFFFFFFFFFFF8;
      v19 = (BYTE8(v54) + v54) & 0x7F;
      if ((*(*(&v52 + 1) + v18) + 32 * v19) != v17)
      {
        v20 = v19 - (v54 & 0x7F) + 16 * (v18 - v16);
LABEL_27:
        std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>((a3 + 8), (*(&v52 + 1) + v16), v17, v20);
        goto LABEL_28;
      }
    }

    v20 = 0;
    goto LABEL_27;
  }

  std::deque<lcdm::SubTLV>::push_back(&v52, &v49);
  if (HIDWORD(v7) != 4 || a2 != *v39)
  {
    *a3 = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    v16 = (v54 >> 4) & 0xFFFFFFFFFFFFFF8;
    if (v53 == *(&v52 + 1))
    {
      v17 = 0;
    }

    else
    {
      v17 = (*(*(&v52 + 1) + v16) + 32 * (v54 & 0x7F));
      v21 = ((*(&v54 + 1) + v54) >> 4) & 0xFFFFFFFFFFFFFF8;
      v22 = (BYTE8(v54) + v54) & 0x7F;
      if ((*(*(&v52 + 1) + v21) + 32 * v22) != v17)
      {
        v20 = v22 - (v54 & 0x7F) + 16 * (v21 - v16);
        goto LABEL_27;
      }
    }

    v20 = 0;
    goto LABEL_27;
  }

  v8 = a2 - v6;
  while (v8)
  {
    lcdm::deserializeSubTLV((a1 + v6), a2 - v6, v44);
    v9 = v44[0];
    v10 = v45;
    v41 = v46;
    v40 = v47;
    v42 = v47;
    v43 = v48;
    if ((v44[0] & 1) == 0)
    {
      *a3 = 0;
      *(a3 + 8) = 0u;
      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      v11 = (v54 >> 4) & 0xFFFFFFFFFFFFFF8;
      if (v53 == *(&v52 + 1))
      {
        v12 = 0;
      }

      else
      {
        v12 = (*(*(&v52 + 1) + v11) + 32 * (v54 & 0x7F));
        v13 = ((*(&v54 + 1) + v54) >> 4) & 0xFFFFFFFFFFFFFF8;
        v14 = (BYTE8(v54) + v54) & 0x7F;
        if ((*(*(&v52 + 1) + v13) + 32 * v14) != v12)
        {
          v15 = v14 - (v54 & 0x7F) + 16 * (v13 - v11);
LABEL_14:
          std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>((a3 + 8), (*(&v52 + 1) + v11), v12, v15);
          goto LABEL_15;
        }
      }

      v15 = 0;
      goto LABEL_14;
    }

    std::deque<lcdm::SubTLV>::push_back(&v52, &v41);
    v8 -= v10;
    v6 += v10;
LABEL_15:
    if (v40)
    {
      operator delete(v40);
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  *a3 = 1;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  v34 = (v54 >> 4) & 0xFFFFFFFFFFFFFF8;
  if (v53 == *(&v52 + 1))
  {
    v35 = 0;
  }

  else
  {
    v35 = (*(*(&v52 + 1) + v34) + 32 * (v54 & 0x7F));
    v36 = ((*(&v54 + 1) + v54) >> 4) & 0xFFFFFFFFFFFFFF8;
    v37 = (BYTE8(v54) + v54) & 0x7F;
    if ((*(*(&v52 + 1) + v36) + 32 * v37) != v35)
    {
      v38 = v37 - (v54 & 0x7F) + 16 * (v36 - v34);
      goto LABEL_59;
    }
  }

  v38 = 0;
LABEL_59:
  std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>((a3 + 8), (*(&v52 + 1) + v34), v35, v38);
LABEL_28:
  if (v39)
  {
    operator delete(v39);
  }

  v23 = *(&v52 + 1);
  v24 = v53;
  if (v53 == *(&v52 + 1))
  {
    v24 = *(&v52 + 1);
    *(&v54 + 1) = 0;
    v29 = 0;
  }

  else
  {
    v25 = (*(&v52 + 1) + 8 * (v54 >> 7));
    v26 = *v25;
    v27 = *v25 + 32 * (v54 & 0x7F);
    v28 = *(*(&v52 + 1) + (((*(&v54 + 1) + v54) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(&v54 + 1) + v54) & 0x7F);
    if (v27 == v28)
    {
      *(&v54 + 1) = 0;
      v29 = (v53 - *(&v52 + 1)) >> 3;
      if (v29 >= 3)
      {
        goto LABEL_33;
      }
    }

    else
    {
      do
      {
        v31 = *(v27 + 8);
        if (v31)
        {
          *(v27 + 16) = v31;
          operator delete(v31);
          v26 = *v25;
        }

        v27 += 32;
        if (v27 - v26 == 4096)
        {
          v32 = v25[1];
          ++v25;
          v26 = v32;
          v27 = v32;
        }
      }

      while (v27 != v28);
      v23 = *(&v52 + 1);
      v24 = v53;
      *(&v54 + 1) = 0;
      v29 = (v53 - *(&v52 + 1)) >> 3;
      if (v29 >= 3)
      {
        do
        {
LABEL_33:
          operator delete(*v23);
          v24 = v53;
          v23 = (*(&v52 + 1) + 8);
          *(&v52 + 1) = v23;
          v29 = (v53 - v23) >> 3;
        }

        while (v29 > 2);
      }
    }
  }

  if (v29 == 1)
  {
    v30 = 64;
LABEL_46:
    *&v54 = v30;
  }

  else if (v29 == 2)
  {
    v30 = 128;
    goto LABEL_46;
  }

  if (v23 != v24)
  {
    do
    {
      v33 = *v23++;
      operator delete(v33);
    }

    while (v23 != v24);
    if (v53 != *(&v52 + 1))
    {
      *&v53 = v53 + ((*(&v52 + 1) - v53 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v52)
  {
    operator delete(v52);
  }
}

void sub_2973A9C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  std::__split_buffer<lcdm::SubTLV *>::~__split_buffer(v9 + 8);
  if (!a9)
  {
    std::deque<lcdm::SubTLV>::~deque[abi:ne200100](v10 - 112);
    _Unwind_Resume(a1);
  }

  operator delete(a9);
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](v10 - 112);
  _Unwind_Resume(a1);
}

void std::deque<lcdm::SubTLV>::push_back(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 16 * (v4 - v5) - 1;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40) + v8;
  if (v7 == v9)
  {
    if (v8 >= 0x80)
    {
      *(a1 + 32) = v8 - 128;
      v53 = *v5;
      *(a1 + 8) = v5 + 1;
      goto LABEL_7;
    }

    v10 = *(a1 + 24);
    v11 = &v10[-*a1];
    if (v6 < v11)
    {
      if (v10 != v4)
      {
        v53 = operator new(0x1000uLL);
        std::__split_buffer<lcdm::SubTLV *>::emplace_back<lcdm::SubTLV *&>(a1, &v53);
        goto LABEL_22;
      }

      v53 = operator new(0x1000uLL);
      std::__split_buffer<lcdm::SubTLV *>::emplace_front<lcdm::SubTLV *>(a1, &v53);
      v30 = *(a1 + 8);
      v53 = *v30;
      *(a1 + 8) = v30 + 1;
LABEL_7:
      std::__split_buffer<lcdm::SubTLV *>::emplace_back<lcdm::SubTLV *&>(a1, &v53);
LABEL_22:
      v5 = *(a1 + 8);
      v9 = *(a1 + 40) + *(a1 + 32);
      goto LABEL_23;
    }

    v12 = v11 >> 2;
    if (v10 == *a1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    if (v13 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = 8 * v13;
    v15 = operator new(8 * v13);
    v16 = operator new(0x1000uLL);
    v17 = v16;
    v18 = &v15[v6];
    v19 = &v15[v14];
    if (v6 != v14)
    {
      goto LABEL_18;
    }

    if (v6 >= 1)
    {
      v18 -= ((v6 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_18:
      *v18 = v16;
      v20 = v18 + 8;
      if (v4 != v5)
      {
        goto LABEL_36;
      }

LABEL_19:
      v21 = v18;
LABEL_20:
      v22 = *a1;
      *a1 = v15;
      *(a1 + 8) = v21;
      *(a1 + 16) = v20;
      *(a1 + 24) = v19;
      if (v22)
      {
        operator delete(v22);
      }

      goto LABEL_22;
    }

    if (v4 == v5)
    {
      v31 = 1;
    }

    else
    {
      v31 = v6 >> 2;
    }

    if (v31 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v18 = operator new(8 * v31);
    v19 = &v18[8 * v31];
    operator delete(v15);
    v32 = *(a1 + 8);
    v4 = *(a1 + 16);
    v15 = v18;
    *v18 = v17;
    v20 = v18 + 8;
    if (v4 == v32)
    {
      goto LABEL_19;
    }

LABEL_36:
    while (v18 != v15)
    {
      v33 = v18;
LABEL_35:
      v34 = *(v4 - 1);
      v4 -= 8;
      *(v33 - 1) = v34;
      v21 = v33 - 8;
      v18 = v21;
      if (v4 == *(a1 + 8))
      {
        goto LABEL_20;
      }
    }

    if (v20 < v19)
    {
      v33 = &v15[8 * ((((v19 - v20) >> 3) + 1 + ((((v19 - v20) >> 3) + 1) >> 63)) >> 1)];
      v36 = v20 - v15;
      v35 = v20 == v15;
      v20 += 8 * ((((v19 - v20) >> 3) + 1 + ((((v19 - v20) >> 3) + 1) >> 63)) >> 1);
      if (!v35)
      {
        memmove(v33, v18, v36);
      }

      goto LABEL_35;
    }

    if (v19 == v15)
    {
      v37 = 1;
    }

    else
    {
      v37 = (v19 - v15) >> 2;
    }

    if (v37 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v38 = operator new(8 * v37);
    v39 = v38;
    v40 = (v37 + 3) >> 2;
    v33 = &v38[8 * v40];
    v41 = v20 - v15;
    v35 = v20 == v15;
    v20 = v33;
    if (!v35)
    {
      v20 = &v33[v41];
      v42 = v41 - 8;
      if (v42 >= 0x18 && (v43 = 8 * v40, (&v38[8 * v40] - v18) >= 0x20))
      {
        v47 = (v42 >> 3) + 1;
        v48 = 8 * (v47 & 0x3FFFFFFFFFFFFFFCLL);
        v44 = &v33[v48];
        v45 = &v18[v48];
        v49 = (v18 + 16);
        v50 = &v38[v43 + 16];
        v51 = v47 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v52 = *v49;
          *(v50 - 1) = *(v49 - 1);
          *v50 = v52;
          v49 += 2;
          v50 += 32;
          v51 -= 4;
        }

        while (v51);
        if (v47 == (v47 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_49;
        }
      }

      else
      {
        v44 = &v38[8 * v40];
        v45 = v18;
      }

      do
      {
        v46 = *v45;
        v45 += 8;
        *v44 = v46;
        v44 += 8;
      }

      while (v44 != v20);
    }

LABEL_49:
    v19 = &v38[8 * v37];
    operator delete(v15);
    v15 = v39;
    goto LABEL_35;
  }

LABEL_23:
  v23 = *(v5 + ((v9 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v9 & 0x7F);
  v24 = *a2;
  v23[1] = 0;
  *v23 = v24;
  v23[2] = 0;
  v23[3] = 0;
  v26 = a2[1];
  v25 = a2[2];
  v27 = v25 - v26;
  if (v25 != v26)
  {
    if ((v27 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v28 = operator new(v25 - v26);
    v23[1] = v28;
    v23[2] = v28;
    v29 = &v28[v27];
    v23[3] = &v28[v27];
    memcpy(v28, v26, v27);
    v23[2] = v29;
  }

  ++*(a1 + 40);
}

void sub_2973AA078(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void gsl::narrowing_error::~narrowing_error(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

void *TraceCAReporter::create@<X0>(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0x68uLL);
  TraceCAReporter::TraceCAReporter(v3);
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;

  return std::shared_ptr<TraceCAReporter>::shared_ptr[abi:ne200100]<TraceCAReporter,std::shared_ptr<TraceCAReporter> ctu::SharedSynchronizable<TraceCAReporter>::make_shared_ptr<TraceCAReporter>(TraceCAReporter*)::{lambda(TraceCAReporter*)#1},0>(a1, v3);
}

void TraceCAReporter::TraceCAReporter(TraceCAReporter *this)
{
  v39 = *MEMORY[0x29EDCA608];
  ctu::OsLogContext::OsLogContext(&__dst, "com.apple.telephony.abm", "ca.trace.reporter");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v3 = dispatch_queue_create_with_target_V2("TraceCAReporter", initially_inactive, 0);
  dispatch_set_qos_class_floor(v3, QOS_CLASS_UTILITY, 0);
  dispatch_activate(v3);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    *(this + 3) = 0;
    dispatch_release(v3);
  }

  else
  {
    *(this + 3) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](this + 32, v22);
  MEMORY[0x29C26DE80](v22);
  ctu::OsLogContext::~OsLogContext(&__dst);
  v4 = *MEMORY[0x29EDBE6E0];
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&__dst, *MEMORY[0x29EDBE6E0], MEMORY[0x29EDBF7E0]);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(v27, *MEMORY[0x29EDBE6E8], MEMORY[0x29EDBEC50]);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(v31, *MEMORY[0x29EDBF2E0], MEMORY[0x29EDBEF28]);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(v35, *MEMORY[0x29EDBE590], MEMORY[0x29EDBE638]);
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(this + 64, &__dst, &__dst);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(this + 64, v27, v27);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(this + 64, v31, v31);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(this + 64, v35, v35);
  if (v38 < 0)
  {
    operator delete(__p);
    if ((v36 & 0x80000000) == 0)
    {
LABEL_6:
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_33;
    }
  }

  else if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v35[0]);
  if ((v34 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v33);
  if ((v32 & 0x80000000) == 0)
  {
LABEL_8:
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v31[0]);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_9:
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v29);
  if ((v28 & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_37:
    operator delete(v25[0]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_36:
  operator delete(v27[0]);
  if (SHIBYTE(v26) < 0)
  {
    goto LABEL_37;
  }

LABEL_11:
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_38:
  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_12:
  gettimeofday(this + 3, 0);
  v5 = strlen(v4);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
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
    v22[1] = v6;
    v23 = v8 | 0x8000000000000000;
    v22[0] = v7;
    goto LABEL_20;
  }

  HIBYTE(v23) = v5;
  v7 = v22;
  if (v5)
  {
LABEL_20:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__dst, 0, sizeof(__dst));
  v9 = prop::bbtrace::get(v22, &__dst);
  if (v9)
  {
    v9 = util::convert<BOOL>(&__dst, this + 40, 0);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(v23) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v22[0]);
LABEL_25:
  if (!capabilities::radio::maverick(v9))
  {
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&__dst, *MEMORY[0x29EDBFCC0], MEMORY[0x29EDBEC58]);
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(this + 64, &__dst, &__dst);
    goto LABEL_56;
  }

  v10 = *MEMORY[0x29EDBD4C8];
  v11 = strlen(*MEMORY[0x29EDBD4C8]);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
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

    p_dst = operator new(v14);
    __dst.__r_.__value_.__l.__size_ = v12;
    __dst.__r_.__value_.__r.__words[2] = v14 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_45;
  }

  *(&__dst.__r_.__value_.__s + 23) = v11;
  p_dst = &__dst;
  if (v11)
  {
LABEL_45:
    memmove(p_dst, v10, v12);
  }

  p_dst->__r_.__value_.__s.__data_[v12] = 0;
  v15 = *MEMORY[0x29EDBEC58];
  v16 = strlen(*MEMORY[0x29EDBEC58]);
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
    v25[1] = v17;
    v26 = v19 | 0x8000000000000000;
    v25[0] = v18;
  }

  else
  {
    v18 = v25;
    HIBYTE(v26) = v16;
    if (!v16)
    {
      goto LABEL_55;
    }
  }

  memmove(v18, v15, v17);
LABEL_55:
  *(v17 + v18) = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(this + 64, &__dst, &__dst);
LABEL_56:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_58:
    v20 = *MEMORY[0x29EDCA608];
    return;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  v21 = *MEMORY[0x29EDCA608];
}

void sub_2973AA7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  support::mobileasset::registerForUpdates(std::string const&,std::string const&,dispatch_queue_s *,void({block_pointer})(int))::$_0::~$_0(&__p);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table((v20 + 8));
  MEMORY[0x29C26DE80](v20 + 4);
  ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v20);
  _Unwind_Resume(a1);
}

void sub_2973AA8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  do
  {
    v13 -= 48;
    support::mobileasset::registerForUpdates(std::string const&,std::string const&,dispatch_queue_s *,void({block_pointer})(int))::$_0::~$_0(v13);
  }

  while (v13 != &a12);
  MEMORY[0x29C26DE80](v12 + 4);
  ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v12);
  _Unwind_Resume(a1);
}

void TraceCAReporter::prepTraceStats(TraceCAReporter *a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  v42 = *MEMORY[0x29EDCA608];
  memset(v39, 170, sizeof(v39));
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEB28]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  __p = 0uLL;
  v41 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(object[0]);
  memset(object, 170, sizeof(object));
  v7 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE598]);
  v37 = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v37 = xpc_null_create();
  }

  __p = 0uLL;
  v41 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(v37);
  if (!TraceCAReporter::supportedTraceDomainToReport(a1, object))
  {
    goto LABEL_14;
  }

  if (SHIBYTE(v39[2]) >= 0)
  {
    v8 = v39;
  }

  else
  {
    v8 = v39[0];
  }

  v9 = *MEMORY[0x29EDBE6E0];
  if (strcasecmp(v8, *MEMORY[0x29EDBE6E0]))
  {
    v10 = *(a1 + 4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p) = 136315138;
      *(&__p + 4) = v8;
      _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, "Trace property %s is not supported to report to CA", &__p, 0xCu);
    }

LABEL_14:
    *a3 = xpc_null_create();
    goto LABEL_15;
  }

  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = MEMORY[0x29EDCAA00];
  if (v13 || (v13 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v13) == v14)
    {
      xpc_retain(v13);
      v15 = v13;
    }

    else
    {
      v15 = xpc_null_create();
    }
  }

  else
  {
    v15 = xpc_null_create();
    v13 = 0;
  }

  xpc_release(v13);
  v16 = xpc_string_create(*MEMORY[0x29EDBEF20]);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, *MEMORY[0x29EDBE7F8], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = xpc_string_create(*MEMORY[0x29EDBE858]);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, *MEMORY[0x29EDBE9B8], v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = xpc_string_create(*MEMORY[0x29EDBE928]);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, *MEMORY[0x29EDBE9B0], v20);
  v21 = xpc_null_create();
  xpc_release(v20);
  xpc_release(v21);
  *&__p = 0xAAAAAAAAAAAAAAAALL;
  v22 = xpc_null_create();
  *&__p = v22;
  if (SHIBYTE(v39[2]) >= 0)
  {
    v23 = v39;
  }

  else
  {
    v23 = v39[0];
  }

  if (!strcasecmp(v23, v9))
  {
    v25 = *a2;
    v36 = v25;
    if (v25)
    {
      xpc_retain(v25);
    }

    else
    {
      v25 = xpc_null_create();
      v36 = v25;
    }

    TraceCAReporter::prepTraceStatsEnabled(a1, &v36, &v37);
    v24 = v37;
    v37 = xpc_null_create();
    *&__p = v24;
    xpc_release(v22);
    xpc_release(v37);
    v37 = 0;
    xpc_release(v25);
    v36 = 0;
  }

  else
  {
    v24 = v22;
  }

  if (MEMORY[0x29C26F9F0](v24) == v14)
  {
    TraceCAReporter::gatherMissingBasebandTraceState(a1, &__p);
    v26 = __p;
    if (__p)
    {
      xpc_retain(__p);
    }

    else
    {
      v26 = xpc_null_create();
    }

    xpc_dictionary_set_value(v15, *MEMORY[0x29EDBF020], v26);
    v27 = xpc_null_create();
    xpc_release(v26);
    xpc_release(v27);
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    v28 = xpc_dictionary_create(0, 0, 0);
    v29 = v28;
    if (v28)
    {
      *a3 = v28;
    }

    else
    {
      v29 = xpc_null_create();
      *a3 = v29;
      if (!v29)
      {
        v30 = xpc_null_create();
        v29 = 0;
        goto LABEL_53;
      }
    }

    if (MEMORY[0x29C26F9F0](v29) == v14)
    {
      xpc_retain(v29);
LABEL_54:
      xpc_release(v29);
      v31 = xpc_string_create(*MEMORY[0x29EDBE550]);
      if (!v31)
      {
        v31 = xpc_null_create();
      }

      v32 = *a3;
      xpc_dictionary_set_value(*a3, *MEMORY[0x29EDBE588], v31);
      v33 = xpc_null_create();
      xpc_release(v31);
      xpc_release(v33);
      if (v15)
      {
        xpc_retain(v15);
        v32 = *a3;
        v34 = v15;
      }

      else
      {
        v34 = xpc_null_create();
      }

      xpc_dictionary_set_value(v32, *MEMORY[0x29EDBE580], v34);
      v35 = xpc_null_create();
      xpc_release(v34);
      xpc_release(v35);
      v24 = __p;
      goto LABEL_60;
    }

    v30 = xpc_null_create();
LABEL_53:
    *a3 = v30;
    goto LABEL_54;
  }

  *a3 = xpc_null_create();
LABEL_60:
  xpc_release(v24);
  xpc_release(v15);
LABEL_15:
  if (SHIBYTE(object[2]) < 0)
  {
    operator delete(object[0]);
    if ((SHIBYTE(v39[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((SHIBYTE(v39[2]) & 0x80000000) == 0)
  {
LABEL_17:
    v11 = *MEMORY[0x29EDCA608];
    return;
  }

  operator delete(v39[0]);
  v12 = *MEMORY[0x29EDCA608];
}

void sub_2973AAEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL TraceCAReporter::supportedTraceDomainToReport(uint64_t a1, char *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = a2[23];
  if ((v4 & 0x80000000) == 0)
  {
    v5 = a2;
    if (strcasecmp(a2, *MEMORY[0x29EDBE5F0]))
    {
      goto LABEL_3;
    }

LABEL_8:
    result = 1;
    v9 = *MEMORY[0x29EDCA608];
    return result;
  }

  v5 = *a2;
  if (!strcasecmp(*a2, *MEMORY[0x29EDBE5F0]))
  {
    goto LABEL_8;
  }

LABEL_3:
  if (!strcasecmp(v5, *MEMORY[0x29EDBD2B8]))
  {
    result = 1;
    v10 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v6 = *(a1 + 32);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v11 = *a2;
      if (v4 >= 0)
      {
        v11 = a2;
      }

      v13 = 136315138;
      v14 = v11;
      _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "Trace domain %s is not supported to report to CA", &v13, 0xCu);
      result = 0;
      v12 = *MEMORY[0x29EDCA608];
    }

    else
    {
      v8 = *MEMORY[0x29EDCA608];
    }
  }

  return result;
}

BOOL TraceCAReporter::supportedTracePropertyToReport(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = strcasecmp(v3, *MEMORY[0x29EDBE6E0]);
  if (v4)
  {
    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = v3;
      _os_log_error_impl(&dword_297288000, v5, OS_LOG_TYPE_ERROR, "Trace property %s is not supported to report to CA", &v8, 0xCu);
    }
  }

  result = v4 == 0;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void TraceCAReporter::prepTraceStatsEnabled(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  v53 = *MEMORY[0x29EDCA608];
  memset(v50, 170, sizeof(v50));
  v6 = *MEMORY[0x29EDBEB28];
  v49 = 12;
  strcpy(__p, "NotSpecified");
  TraceCAReporter::getOrDefault<std::string>(v50, *a2, v6, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  memset(&v47, 170, sizeof(v47));
  v7 = *MEMORY[0x29EDBEC98];
  v46 = 12;
  strcpy(v45, "NotSpecified");
  TraceCAReporter::getOrDefault<std::string>(&v47, *a2, v7, v45);
  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  memset(v44, 170, sizeof(v44));
  v8 = *MEMORY[0x29EDBF6C8];
  v43 = 12;
  strcpy(v42, "NotSpecified");
  TraceCAReporter::getOrDefault<std::string>(v44, *a2, v8, v42);
  if (v43 < 0)
  {
    operator delete(v42[0]);
    v9 = v50[23];
    if ((v50[23] & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = v50[23];
    if ((v50[23] & 0x80000000) == 0)
    {
LABEL_7:
      if (v9 != 12)
      {
        goto LABEL_16;
      }

      v10 = v50;
      goto LABEL_12;
    }
  }

  if (*&v50[8] != 12)
  {
    goto LABEL_16;
  }

  v10 = *v50;
LABEL_12:
  v11 = *v10;
  v12 = *(v10 + 2);
  if (v11 == 0x6963657053746F4ELL && v12 == 1684367718)
  {
    goto LABEL_45;
  }

LABEL_16:
  if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) != 12 || (v47.__r_.__value_.__r.__words[0] == 0x6963657053746F4ELL ? (v14 = LODWORD(v47.__r_.__value_.__r.__words[1]) == 1684367718) : (v14 = 0), !v14))
    {
      v15 = &v47;
      goto LABEL_28;
    }

LABEL_45:
    v23 = *(a1 + 32);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v38 = *v50;
      if (v9 >= 0)
      {
        v38 = v50;
      }

      v39 = &v47;
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v39 = v47.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      *&buf[4] = v38;
      *&buf[12] = 2080;
      *&buf[14] = v39;
      _os_log_error_impl(&dword_297288000, v23, OS_LOG_TYPE_ERROR, "Missing one of the key/value: key is %s, value is %s", buf, 0x16u);
    }

    goto LABEL_51;
  }

  v15 = v47.__r_.__value_.__r.__words[0];
  if (v47.__r_.__value_.__l.__size_ == 12 && *v47.__r_.__value_.__l.__data_ == 0x6963657053746F4ELL && *(v47.__r_.__value_.__r.__words[0] + 8) == 1684367718)
  {
    goto LABEL_45;
  }

LABEL_28:
  if (!strcmp(v15, "default") && !defaults::bbtrace::get(v50, &v47))
  {
LABEL_51:
    v25 = xpc_null_create();
    goto LABEL_52;
  }

  v41 = 0;
  util::convert<BOOL>(&v47, &v41, 0);
  if (*(a1 + 40) != v41)
  {
    goto LABEL_60;
  }

  abm::asString();
  if (SHIBYTE(v44[2]) >= 0)
  {
    v17 = HIBYTE(v44[2]);
  }

  else
  {
    v17 = v44[1];
  }

  v18 = v52;
  v19 = v52;
  if ((v52 & 0x80u) != 0)
  {
    v18 = *&buf[8];
  }

  if (v17 != v18)
  {
    v22 = 1;
    if (v52 < 0)
    {
      goto LABEL_59;
    }

LABEL_48:
    if (!v22)
    {
      goto LABEL_60;
    }

    goto LABEL_49;
  }

  if (SHIBYTE(v44[2]) >= 0)
  {
    v20 = v44;
  }

  else
  {
    v20 = v44[0];
  }

  if ((v52 & 0x80u) == 0)
  {
    v21 = buf;
  }

  else
  {
    v21 = *buf;
  }

  v22 = memcmp(v20, v21, v17) != 0;
  if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

LABEL_59:
  operator delete(*buf);
  if (v22)
  {
LABEL_49:
    v24 = *(a1 + 32);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v40 = v44;
      if (SHIBYTE(v44[2]) < 0)
      {
        v40 = v44[0];
      }

      *buf = 67109378;
      *&buf[4] = v41;
      *&buf[8] = 2080;
      *&buf[10] = v40;
      _os_log_debug_impl(&dword_297288000, v24, OS_LOG_TYPE_DEBUG, "#D No state transistion, not reporting to CA(state: %d, triggerInterface: %s)", buf, 0x12u);
    }

    v25 = xpc_null_create();
LABEL_52:
    *a3 = v25;
    if ((SHIBYTE(v44[2]) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_60:
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v28 = xpc_dictionary_create(0, 0, 0);
  v29 = v28;
  if (v28)
  {
    *a3 = v28;
  }

  else
  {
    v29 = xpc_null_create();
    *a3 = v29;
    if (!v29)
    {
      v30 = xpc_null_create();
      v29 = 0;
      goto LABEL_67;
    }
  }

  if (MEMORY[0x29C26F9F0](v29) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v29);
    goto LABEL_68;
  }

  v30 = xpc_null_create();
LABEL_67:
  *a3 = v30;
LABEL_68:
  xpc_release(v29);
  TraceCAReporter::gatherDurationInformation(a1, a3);
  if (*(a1 + 40))
  {
    v31 = "On";
  }

  else
  {
    v31 = "Off";
  }

  v32 = xpc_string_create(v31);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  v33 = *a3;
  xpc_dictionary_set_value(v33, *MEMORY[0x29EDBF7E0], v32);
  v34 = xpc_null_create();
  xpc_release(v32);
  xpc_release(v34);
  if (SHIBYTE(v44[2]) >= 0)
  {
    v35 = v44;
  }

  else
  {
    v35 = v44[0];
  }

  v36 = xpc_string_create(v35);
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  xpc_dictionary_set_value(v33, *MEMORY[0x29EDBEC60], v36);
  v37 = xpc_null_create();
  xpc_release(v36);
  xpc_release(v37);
  *(a1 + 40) = v41;
  if (SHIBYTE(v44[2]) < 0)
  {
LABEL_53:
    operator delete(v44[0]);
  }

LABEL_54:
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
    if ((v50[23] & 0x80000000) == 0)
    {
      goto LABEL_56;
    }
  }

  else if ((v50[23] & 0x80000000) == 0)
  {
LABEL_56:
    v26 = *MEMORY[0x29EDCA608];
    return;
  }

  operator delete(*v50);
  v27 = *MEMORY[0x29EDCA608];
}

void sub_2973AB88C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void TraceCAReporter::gatherMissingBasebandTraceState(TraceCAReporter *this, xpc_object_t *a2)
{
  v4 = MEMORY[0x29C26F9F0](*a2);
  v5 = MEMORY[0x29EDCAA00];
  if (v4 != MEMORY[0x29EDCAA00])
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6 || (v6 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26F9F0](v6) == v5)
      {
        xpc_retain(v6);
        v7 = v6;
      }

      else
      {
        v7 = xpc_null_create();
      }
    }

    else
    {
      v7 = xpc_null_create();
      v6 = 0;
    }

    xpc_release(v6);
    v8 = xpc_null_create();
    v9 = *a2;
    *a2 = v7;
    xpc_release(v9);
    xpc_release(v8);
  }

  for (i = *(this + 10); i; i = *i)
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v22 = v11;
    *&v22[16] = v11;
    v21 = v11;
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, i[2], i[3]);
      if ((*(i + 63) & 0x80000000) == 0)
      {
LABEL_14:
        *&v22[8] = *(i + 5);
        *&v22[24] = i[7];
        goto LABEL_17;
      }
    }

    else
    {
      v21 = *(i + 1);
      *v22 = i[4];
      if ((*(i + 63) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    std::string::__init_copy_ctor_external(&v22[8], i[5], i[6]);
LABEL_17:
    memset(&v20, 170, sizeof(v20));
    if ((v22[7] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v20, v21, *(&v21 + 1));
    }

    else
    {
      *&v20.__r_.__value_.__l.__data_ = v21;
      v20.__r_.__value_.__r.__words[2] = *v22;
    }

    memset(&v19, 170, sizeof(v19));
    if ((v22[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v19, *&v22[8], *&v22[16]);
    }

    else
    {
      v19 = *&v22[8];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19.__r_.__value_.__r.__words[0];
    }

    if (xpc_dictionary_get_value(*a2, v12))
    {
LABEL_37:
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_44;
    }

    memset(&v18, 0, sizeof(v18));
    prop::bbtrace::get(&v20, &v18);
    TraceCAReporter::convertPlistValToCAInformation(&v20, &v18, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v14 = xpc_string_create(p_p);
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v19;
    }

    else
    {
      v15 = v19.__r_.__value_.__r.__words[0];
    }

    xpc_dictionary_set_value(*a2, v15, v14);
    v16 = xpc_null_create();
    xpc_release(v14);
    xpc_release(v16);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }
    }

    else if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    operator delete(v18.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_38:
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_45;
    }

LABEL_44:
    operator delete(v19.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_39:
      if ((v22[31] & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_46;
    }

LABEL_45:
    operator delete(v20.__r_.__value_.__l.__data_);
    if ((v22[31] & 0x80000000) == 0)
    {
LABEL_40:
      if ((v22[7] & 0x80000000) != 0)
      {
        goto LABEL_47;
      }

      continue;
    }

LABEL_46:
    operator delete(*&v22[8]);
    if ((v22[7] & 0x80000000) != 0)
    {
LABEL_47:
      operator delete(v21);
    }
  }
}

void sub_2973ABC88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2973ABCA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a30 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_4:
    support::mobileasset::registerForUpdates(std::string const&,std::string const&,dispatch_queue_s *,void({block_pointer})(int))::$_0::~$_0(&a32);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a25);
  support::mobileasset::registerForUpdates(std::string const&,std::string const&,dispatch_queue_s *,void({block_pointer})(int))::$_0::~$_0(&a32);
  _Unwind_Resume(a1);
}

void TraceCAReporter::getOrDefault<std::string>(uint64_t a1, xpc_object_t xdict, char *key, uint64_t a4)
{
  memset(v10, 170, 24);
  value = xpc_dictionary_get_value(xdict, key);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  memset(&v10[3], 0, 24);
  xpc::dyn_cast_or_default();
  xpc_release(object);
  v7 = HIBYTE(v10[2]);
  v8 = SHIBYTE(v10[2]);
  if (SHIBYTE(v10[2]) < 0)
  {
    v7 = v10[1];
  }

  if (v7)
  {
    *a1 = *v10;
    *(a1 + 16) = v10[2];
  }

  else
  {
    *a1 = *a4;
    *(a1 + 16) = *(a4 + 16);
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = 0;
    if (v8 < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_2973ABE40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

double TraceCAReporter::gatherDurationInformation(TraceCAReporter *this, xpc_object_t *a2)
{
  v4 = MEMORY[0x29C26F9F0](*a2);
  v5 = MEMORY[0x29EDCAA00];
  if (v4 != MEMORY[0x29EDCAA00])
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6 || (v6 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26F9F0](v6) == v5)
      {
        xpc_retain(v6);
        v7 = v6;
      }

      else
      {
        v7 = xpc_null_create();
      }
    }

    else
    {
      v7 = xpc_null_create();
      v6 = 0;
    }

    xpc_release(v6);
    v8 = xpc_null_create();
    v9 = *a2;
    *a2 = v7;
    xpc_release(v9);
    xpc_release(v8);
  }

  v15.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v15.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v15, 0);
  v11 = *(this + 6);
  v10 = (this + 48);
  v12 = xpc_int64_create(v15.tv_sec - v11);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE908], v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  result = *&v15.tv_sec;
  *v10 = v15;
  return result;
}

std::string *TraceCAReporter::convertPlistValToCAInformation@<X0>(char *a1@<X1>, const std::string *a2@<X2>, std::string *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v5 = a3;
  memset(a3, 170, sizeof(std::string));
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a3, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    v6 = MEMORY[0x29EDBF2E0];
    if ((v4[23] & 0x80000000) == 0)
    {
LABEL_3:
      result = strcasecmp(v4, *v6);
      if (result)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *&a2->__r_.__value_.__l.__data_;
    a3->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
    v6 = MEMORY[0x29EDBF2E0];
    if ((a1[23] & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v4 = *v4;
  result = strcasecmp(v4, *v6);
  if (result)
  {
LABEL_4:
    if (!strcasecmp(v4, *MEMORY[0x29EDBE590]))
    {
      v12 = -1431655766;
      util::convert<int>(v3, &v12, 0);
      v10 = trace::toString();
      return std::string::__assign_external(v5, v10);
    }

    if (!strcasecmp(v4, *MEMORY[0x29EDBE6E0]) || !strcasecmp(v4, *MEMORY[0x29EDBFCC0]) || (result = strcasecmp(v4, *MEMORY[0x29EDBD4C8]), !result))
    {
      v8 = SHIBYTE(v3->__r_.__value_.__r.__words[2]);
      if (v8 < 0)
      {
        if (v3->__r_.__value_.__l.__size_ == 1)
        {
          v3 = v3->__r_.__value_.__r.__words[0];
          goto LABEL_24;
        }
      }

      else if (v8 == 1)
      {
LABEL_24:
        if (v3->__r_.__value_.__s.__data_[0] == 48)
        {
          v11 = "Off";
        }

        else
        {
          v11 = "On";
        }

        return std::string::__assign_external(v5, v11);
      }

      v11 = "On";
      return std::string::__assign_external(v5, v11);
    }

    return result;
  }

LABEL_13:
  v9 = SHIBYTE(v3->__r_.__value_.__r.__words[2]);
  if (v9 < 0)
  {
    if (v3->__r_.__value_.__l.__size_ != 1 || *v3->__r_.__value_.__l.__data_ != 48)
    {
      return result;
    }
  }

  else if (v9 != 1 || v3->__r_.__value_.__s.__data_[0] != 48)
  {
    return result;
  }

  if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
  {
    v5->__r_.__value_.__l.__size_ = 8;
    v5 = v5->__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&v5->__r_.__value_.__s + 23) = 8;
  }

  strcpy(v5, "No limit");
  return result;
}

void sub_2973AC1FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(uint64_t a1, char *__s, const char **a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    *(a1 + 8) = v7;
    *(a1 + 16) = v9 | 0x8000000000000000;
    *a1 = v8;
    goto LABEL_9;
  }

  *(a1 + 23) = v6;
  v8 = a1;
  if (v6)
  {
LABEL_9:
    memmove(v8, __s, v7);
  }

  *(v8 + v7) = 0;
  v10 = *a3;
  v11 = strlen(*a3);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
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
    *(a1 + 32) = v12;
    *(a1 + 40) = v14 | 0x8000000000000000;
    *(a1 + 24) = v13;
  }

  else
  {
    v13 = (a1 + 24);
    *(a1 + 47) = v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  memmove(v13, v10, v12);
LABEL_19:
  *(v13 + v12) = 0;
  return a1;
}

void sub_2973AC348(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<TraceCAReporter>::shared_ptr[abi:ne200100]<TraceCAReporter,std::shared_ptr<TraceCAReporter> ctu::SharedSynchronizable<TraceCAReporter>::make_shared_ptr<TraceCAReporter>(TraceCAReporter*)::{lambda(TraceCAReporter*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E3C128;
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

void sub_2973AC484(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<TraceCAReporter> ctu::SharedSynchronizable<TraceCAReporter>::make_shared_ptr<TraceCAReporter>(TraceCAReporter*)::{lambda(TraceCAReporter*)#1}::operator() const(TraceCAReporter*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<TraceCAReporter *,std::shared_ptr<TraceCAReporter> ctu::SharedSynchronizable<TraceCAReporter>::make_shared_ptr<TraceCAReporter>(TraceCAReporter*)::{lambda(TraceCAReporter *)#1},std::allocator<TraceCAReporter>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<TraceCAReporter *,std::shared_ptr<TraceCAReporter> ctu::SharedSynchronizable<TraceCAReporter>::make_shared_ptr<TraceCAReporter>(TraceCAReporter*)::{lambda(TraceCAReporter *)#1},std::allocator<TraceCAReporter>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI15TraceCAReporterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI15TraceCAReporterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI15TraceCAReporterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI15TraceCAReporterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<TraceCAReporter> ctu::SharedSynchronizable<TraceCAReporter>::make_shared_ptr<TraceCAReporter>(TraceCAReporter*)::{lambda(TraceCAReporter*)#1}::operator() const(TraceCAReporter*)::{lambda(void *)#1}::__invoke(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = a1[10];
  if (v2)
  {
    do
    {
      v7 = *v2;
      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
        if (*(v2 + 39) < 0)
        {
LABEL_19:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_19;
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  MEMORY[0x29C26DE80](a1 + 4);
  v4 = a1[3];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = a1[1];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](v42, a2, v7);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = v8;
      if (v8 >= v10)
      {
        v12 = v8 % v10;
      }
    }

    else
    {
      v12 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v12);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = v4[23];
        if (v15 >= 0)
        {
          v16 = v4[23];
        }

        else
        {
          v16 = *(v4 + 1);
        }

        if (v15 < 0)
        {
          v4 = *v4;
        }

        if (v11.u32[0] < 2uLL)
        {
          while (1)
          {
            v21 = v14[1];
            if (v21 == v9)
            {
              v22 = *(v14 + 39);
              v23 = v22;
              if (v22 < 0)
              {
                v22 = v14[3];
              }

              if (v22 == v16)
              {
                v24 = v23 >= 0 ? (v14 + 2) : v14[2];
                if (!memcmp(v24, v4, v16))
                {
                  return;
                }
              }
            }

            else if ((v21 & (v10 - 1)) != v12)
            {
              goto LABEL_43;
            }

            v14 = *v14;
            if (!v14)
            {
              goto LABEL_43;
            }
          }
        }

        do
        {
          v17 = v14[1];
          if (v17 == v9)
          {
            v18 = *(v14 + 39);
            v19 = v18;
            if (v18 < 0)
            {
              v18 = v14[3];
            }

            if (v18 == v16)
            {
              v20 = v19 >= 0 ? (v14 + 2) : v14[2];
              if (!memcmp(v20, v4, v16))
              {
                return;
              }
            }
          }

          else
          {
            if (v17 >= v10)
            {
              v17 %= v10;
            }

            if (v17 != v12)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_43:
  v25 = operator new(0x40uLL);
  v26 = v25;
  v42[0] = v25;
  v42[1] = a1;
  v43 = 0;
  *v25 = 0;
  *(v25 + 1) = v9;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v25 + 16), *a3, *(a3 + 8));
  }

  else
  {
    *(v25 + 1) = *a3;
    *(v25 + 4) = *(a3 + 16);
  }

  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v26 + 40), *(a3 + 24), *(a3 + 32));
  }

  else
  {
    *(v26 + 40) = *(a3 + 24);
    *(v26 + 7) = *(a3 + 40);
  }

  LOBYTE(v43) = 1;
  v27 = (*(a1 + 24) + 1);
  v28 = *(a1 + 32);
  if (v10 && (v28 * v10) >= v27)
  {
    goto LABEL_77;
  }

  v29 = 1;
  if (v10 >= 3)
  {
    v29 = (v10 & (v10 - 1)) != 0;
  }

  v30 = v29 | (2 * v10);
  v31 = vcvtps_u32_f32(v27 / v28);
  if (v30 <= v31)
  {
    prime = v31;
  }

  else
  {
    prime = v30;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v33 = *(a1 + 8);
  if (prime > *&v33)
  {
    goto LABEL_61;
  }

  if (prime < *&v33)
  {
    v34 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v33 < 3uLL || (v35 = vcnt_s8(v33), v35.i16[0] = vaddlv_u8(v35), v35.u32[0] > 1uLL))
    {
      v34 = std::__next_prime(v34);
    }

    else
    {
      v36 = 1 << -__clz(v34 - 1);
      if (v34 >= 2)
      {
        v34 = v36;
      }
    }

    if (prime <= v34)
    {
      prime = v34;
    }

    if (prime < *&v33)
    {
LABEL_61:
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
    }
  }

  v10 = *(a1 + 8);
  if ((v10 & (v10 - 1)) != 0)
  {
    if (v9 >= v10)
    {
      v12 = v9 % v10;
      v37 = *a1;
      v38 = *(*a1 + 8 * (v9 % v10));
      if (!v38)
      {
        goto LABEL_81;
      }

      goto LABEL_78;
    }

    v12 = v9;
LABEL_77:
    v37 = *a1;
    v38 = *(*a1 + 8 * v12);
    if (!v38)
    {
      goto LABEL_81;
    }

    goto LABEL_78;
  }

  v12 = (v10 - 1) & v9;
  v37 = *a1;
  v38 = *(*a1 + 8 * v12);
  if (!v38)
  {
LABEL_81:
    v40 = v42[0];
    *v42[0] = *(a1 + 16);
    *(a1 + 16) = v40;
    *(v37 + 8 * v12) = a1 + 16;
    if (*v40)
    {
      v41 = *(*v40 + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v41 >= v10)
        {
          v41 %= v10;
        }

        *(v37 + 8 * v41) = v40;
      }

      else
      {
        *(v37 + 8 * (v41 & (v10 - 1))) = v40;
      }
    }

    goto LABEL_79;
  }

LABEL_78:
  v39 = v42[0];
  *v42[0] = *v38;
  *v38 = v39;
LABEL_79:
  ++*(a1 + 24);
}

void sub_2973ACA2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 63) < 0)
      {
        operator delete(*(v2 + 40));
        if ((*(v2 + 39) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v2 + 39) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v2 + 16));
    }

LABEL_5:
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    v14 = *a1;
    *a1 = 0;
    if (v14)
    {
      operator delete(v14);
    }

    *(a1 + 8) = 0;
    return;
  }

  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v4 = operator new(8 * a2);
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
    v4 = *a1;
  }

  *(a1 + 8) = a2;
  bzero(v4, 8 * a2);
  v8 = *(a1 + 16);
  v7 = a1 + 16;
  v6 = v8;
  if (v8)
  {
    v9 = v6[1];
    v10 = a2 - 1;
    if ((a2 & (a2 - 1)) == 0)
    {
      v11 = v9 & v10;
      *(v4 + v11) = v7;
      while (1)
      {
        v12 = *v6;
        if (!*v6)
        {
          break;
        }

        v13 = v12[1] & v10;
        if (v13 == v11)
        {
          v6 = *v6;
        }

        else if (*(v4 + v13))
        {
          *v6 = *v12;
          *v12 = **(v4 + v13);
          **(v4 + v13) = v12;
        }

        else
        {
          *(v4 + v13) = v6;
          v6 = v12;
          v11 = v13;
        }
      }

      return;
    }

    if (v9 >= a2)
    {
      v9 %= a2;
    }

    *(v4 + v9) = v7;
    v15 = *v6;
    if (*v6)
    {
      while (1)
      {
        v16 = v15[1];
        if (v16 >= a2)
        {
          v16 %= a2;
        }

        if (v16 == v9)
        {
          goto LABEL_23;
        }

        if (*(v4 + v16))
        {
          *v6 = *v15;
          *v15 = **(v4 + v16);
          **(v4 + v16) = v15;
          v15 = v6;
LABEL_23:
          v6 = v15;
          v15 = *v15;
          if (!v15)
          {
            return;
          }
        }

        else
        {
          *(v4 + v16) = v6;
          v6 = v15;
          v15 = *v15;
          v9 = v16;
          if (!v15)
          {
            return;
          }
        }
      }
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
        if (*(v2 + 39) < 0)
        {
LABEL_10:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_10;
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](v42, a2, v7);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = v8;
      if (v8 >= v10)
      {
        v12 = v8 % v10;
      }
    }

    else
    {
      v12 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v12);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = v4[23];
        if (v15 >= 0)
        {
          v16 = v4[23];
        }

        else
        {
          v16 = *(v4 + 1);
        }

        if (v15 < 0)
        {
          v4 = *v4;
        }

        if (v11.u32[0] < 2uLL)
        {
          while (1)
          {
            v21 = v14[1];
            if (v21 == v9)
            {
              v22 = *(v14 + 39);
              v23 = v22;
              if (v22 < 0)
              {
                v22 = v14[3];
              }

              if (v22 == v16)
              {
                v24 = v23 >= 0 ? (v14 + 2) : v14[2];
                if (!memcmp(v24, v4, v16))
                {
                  return;
                }
              }
            }

            else if ((v21 & (v10 - 1)) != v12)
            {
              goto LABEL_43;
            }

            v14 = *v14;
            if (!v14)
            {
              goto LABEL_43;
            }
          }
        }

        do
        {
          v17 = v14[1];
          if (v17 == v9)
          {
            v18 = *(v14 + 39);
            v19 = v18;
            if (v18 < 0)
            {
              v18 = v14[3];
            }

            if (v18 == v16)
            {
              v20 = v19 >= 0 ? (v14 + 2) : v14[2];
              if (!memcmp(v20, v4, v16))
              {
                return;
              }
            }
          }

          else
          {
            if (v17 >= v10)
            {
              v17 %= v10;
            }

            if (v17 != v12)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_43:
  v25 = operator new(0x40uLL);
  v42[0] = v25;
  v42[1] = a1;
  v43 = 0;
  *v25 = 0;
  *(v25 + 1) = v9;
  if (*(a3 + 23) < 0)
  {
    v26 = v25;
    std::string::__init_copy_ctor_external((v25 + 16), *a3, *(a3 + 8));
    v25 = v26;
  }

  else
  {
    *(v25 + 1) = *a3;
    *(v25 + 4) = *(a3 + 16);
  }

  *(v25 + 40) = *(a3 + 24);
  *(v25 + 7) = *(a3 + 40);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0;
  LOBYTE(v43) = 1;
  v27 = (*(a1 + 24) + 1);
  v28 = *(a1 + 32);
  if (v10 && (v28 * v10) >= v27)
  {
    goto LABEL_74;
  }

  v29 = 1;
  if (v10 >= 3)
  {
    v29 = (v10 & (v10 - 1)) != 0;
  }

  v30 = v29 | (2 * v10);
  v31 = vcvtps_u32_f32(v27 / v28);
  if (v30 <= v31)
  {
    prime = v31;
  }

  else
  {
    prime = v30;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v33 = *(a1 + 8);
  if (prime > *&v33)
  {
    goto LABEL_58;
  }

  if (prime < *&v33)
  {
    v34 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v33 < 3uLL || (v35 = vcnt_s8(v33), v35.i16[0] = vaddlv_u8(v35), v35.u32[0] > 1uLL))
    {
      v34 = std::__next_prime(v34);
    }

    else
    {
      v36 = 1 << -__clz(v34 - 1);
      if (v34 >= 2)
      {
        v34 = v36;
      }
    }

    if (prime <= v34)
    {
      prime = v34;
    }

    if (prime < *&v33)
    {
LABEL_58:
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
    }
  }

  v10 = *(a1 + 8);
  if ((v10 & (v10 - 1)) != 0)
  {
    if (v9 >= v10)
    {
      v12 = v9 % v10;
      v37 = *a1;
      v38 = *(*a1 + 8 * (v9 % v10));
      if (!v38)
      {
        goto LABEL_78;
      }

      goto LABEL_75;
    }

    v12 = v9;
LABEL_74:
    v37 = *a1;
    v38 = *(*a1 + 8 * v12);
    if (!v38)
    {
      goto LABEL_78;
    }

    goto LABEL_75;
  }

  v12 = (v10 - 1) & v9;
  v37 = *a1;
  v38 = *(*a1 + 8 * v12);
  if (!v38)
  {
LABEL_78:
    v40 = v42[0];
    *v42[0] = *(a1 + 16);
    *(a1 + 16) = v40;
    *(v37 + 8 * v12) = a1 + 16;
    if (*v40)
    {
      v41 = *(*v40 + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v41 >= v10)
        {
          v41 %= v10;
        }

        *(v37 + 8 * v41) = v40;
      }

      else
      {
        *(v37 + 8 * (v41 & (v10 - 1))) = v40;
      }
    }

    goto LABEL_76;
  }

LABEL_75:
  v39 = v42[0];
  *v42[0] = *v38;
  *v38 = v39;
LABEL_76:
  ++*(a1 + 24);
}

void sub_2973AD0D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2973AD0E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void LogTracker::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xA8uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v8[0] = v6;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  LogTracker::LogTracker(v4, v8);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<LogTracker>::shared_ptr[abi:ne200100]<LogTracker,std::shared_ptr<LogTracker> ctu::SharedSynchronizable<LogTracker>::make_shared_ptr<LogTracker>(LogTracker*)::{lambda(LogTracker*)#1},0>(a2, v5);
  if (v7)
  {

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_2973AD1B4(_Unwind_Exception *exception_object)
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

void *LogTracker::LogTracker(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E3EF20;
  a1[1] = v3;
  a1[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    a1[3] = 0;
    a1[4] = 0;
    a1[8] = 0;
    a1[7] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    std::__shared_weak_count::__release_weak(v4);
    *a1 = &unk_2A1E3C5E0;
    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    a1[3] = 0;
    a1[4] = 0;
    a1[7] = 0;
    a1[8] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    *a1 = &unk_2A1E3C5E0;
  }

  *a1 = &unk_2A1E3C178;
  ctu::OsLogContext::OsLogContext(v8, "com.apple.telephony.abm", "logtracker.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("logtracker.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v6);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = v6;
  if (v6)
  {
    dispatch_retain(v6);
    a1[12] = 0;
    dispatch_release(v6);
  }

  else
  {
    a1[12] = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](a1 + 13, v9);
  MEMORY[0x29C26DE80](v9);
  ctu::OsLogContext::~OsLogContext(v8);
  *a1 = &unk_2A1E3C178;
  a1[16] = 0;
  a1[17] = 0;
  a1[15] = 0;
  a1[14] = a1 + 15;
  a1[18] = 0;
  a1[19] = 0;
  return a1;
}

void LogTracker::~LogTracker(LogTracker *this)
{
  *this = &unk_2A1E3C178;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v14, 2u);
  }

  v4 = *(this + 19);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    dispatch_release(v5);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(*(this + 15));
  MEMORY[0x29C26DE80](v2);
  v6 = *(this + 12);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *this = &unk_2A1E3EF20;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v9 = *(this + 3);
  if (v9)
  {
    v10 = *(this + 4);
    v11 = *(this + 3);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(this + 3);
    }

    *(this + 4) = v9;
    operator delete(v11);
  }

  v13 = *(this + 2);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }
}

{
  LogTracker::~LogTracker(this);

  operator delete(v1);
}

_WORD *LogTracker::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void LogTracker::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<LogTracker>::execute_wrapped<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<LogTracker>::execute_wrapped<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void LogTracker::registerCommandHandlers_sync(uint64_t a1, NSObject **a2)
{
  v148 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_debug_impl(&dword_297288000, v4, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &buf, 2u);
    v5 = *(a1 + 80);
    if (!v5)
    {
LABEL_239:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      goto LABEL_239;
    }
  }

  v6 = *(a1 + 72);
  v7 = std::__shared_weak_count::lock(v5);
  if (!v7)
  {
    goto LABEL_239;
  }

  v8 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  LogTracker::checkLoggingVersion_sync(a1);
  v9 = dispatch_group_create();
  v10 = *(a1 + 136);
  *(a1 + 136) = v9;
  if (v10)
  {
    dispatch_release(v10);
  }

  v12 = dispatch_group_create();
  v13 = *(a1 + 152);
  *(a1 + 152) = v12;
  if (v13)
  {
    dispatch_release(v13);
  }

  *(a1 + 160) = 0;
  if (prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], v11) || prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v14) || prop::tracesettings::enabled(*MEMORY[0x29EDBE690], v14))
  {
    v144 = 0xAAAAAAAAAAAAAAAALL;
    v145 = 0xAAAAAAAAAAAAAAAALL;
    abm::HelperClient::create(&v144, "tracing.helper", v14);
    v15 = *(a1 + 104);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_297288000, v15, OS_LOG_TYPE_DEFAULT, "#I ABM is initializing; reinit traces in helper", &buf, 2u);
    }

    v142 = 0xAAAAAAAAAAAAAAAALL;
    v143 = 0xAAAAAAAAAAAAAAAALL;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN10LogTracker28registerCommandHandlers_syncEN8dispatch13group_sessionE_block_invoke;
    aBlock[3] = &__block_descriptor_64_e8_40c30_ZTSN8dispatch13group_sessionE48c46_ZTSNSt3__110shared_ptrIN3abm12HelperClientEEE_e147_v48__0_Result_i_basic_string_char__std::char_traits_char___std::allocator_char______rep____short__23c_b7b1____long__Qb63b1____8_dict__object__v__40l;
    v16 = *a2;
    aBlock[4] = a1;
    v139 = v16;
    if (v16)
    {
      dispatch_retain(v16);
      dispatch_group_enter(v139);
    }

    v140 = v144;
    v141 = v145;
    if (v145)
    {
      atomic_fetch_add_explicit((v145 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = _Block_copy(aBlock);
    v18 = *(a1 + 88);
    if (v18)
    {
      dispatch_retain(*(a1 + 88));
    }

    v142 = v17;
    v143 = v18;
    v19 = xpc_dictionary_create(0, 0, 0);
    if (v19 || (v19 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26F9F0](v19) == MEMORY[0x29EDCAA00])
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
    v21 = xpc_int64_create(5000);
    if (!v21)
    {
      v21 = xpc_null_create();
    }

    xpc_dictionary_set_value(v20, *MEMORY[0x29EDBD2D8], v21);
    v22 = xpc_null_create();
    xpc_release(v21);
    xpc_release(v22);
    v23 = *MEMORY[0x29EDBE590];
    v24 = strlen(*MEMORY[0x29EDBE590]);
    if (v24 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v25 = v24;
    if (v24 >= 0x17)
    {
      if ((v24 | 7) == 0x17)
      {
        v27 = 25;
      }

      else
      {
        v27 = (v24 | 7) + 1;
      }

      p_dst = operator new(v27);
      v137 = v27 | 0x8000000000000000;
      __dst = p_dst;
      v136 = v25;
    }

    else
    {
      HIBYTE(v137) = v24;
      p_dst = &__dst;
      if (!v24)
      {
LABEL_38:
        *(p_dst + v25) = 0;
        memset(&buf, 0, sizeof(buf));
        if (prop::bbtrace::get(&__dst, &buf))
        {
          v146 = -1431655766;
          v28 = util::convert<int>(&buf, &v146, 0);
          if (v146 == 4)
          {
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }

          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_46:
            if (SHIBYTE(v137) < 0)
            {
              operator delete(__dst);
            }

            v30 = *MEMORY[0x29EDBE880];
            v31 = strlen(*MEMORY[0x29EDBE880]);
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
              v137 = v34 | 0x8000000000000000;
              __dst = v33;
              v136 = v32;
            }

            else
            {
              HIBYTE(v137) = v31;
              v33 = &__dst;
              if (!v31)
              {
LABEL_57:
                *(v33 + v32) = 0;
                memset(&buf, 0, sizeof(buf));
                if (prop::bbtrace::get(&__dst, &buf))
                {
                  v146 = -1431655766;
                  v35 = util::convert<int>(&buf, &v146, 0);
                  if (v146 == 1)
                  {
                    v36 = v35;
                  }

                  else
                  {
                    v36 = 0;
                  }

                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
LABEL_70:
                    operator delete(buf.__r_.__value_.__l.__data_);
                    if (SHIBYTE(v137) < 0)
                    {
LABEL_71:
                      operator delete(__dst);
                      if ((v29 & v36) != 1)
                      {
LABEL_72:
                        v126 = v20;
                        if (v20)
                        {
                          xpc_retain(v20);
                          v38 = v142;
                          if (!v142)
                          {
                            goto LABEL_83;
                          }
                        }

                        else
                        {
                          v126 = xpc_null_create();
                          v38 = v142;
                          if (!v142)
                          {
LABEL_83:
                            v40 = *MEMORY[0x29EDBD390];
                            v124 = v38;
                            object = v143;
                            if (v143)
                            {
                              dispatch_retain(v143);
                            }

                            abm::HelperClient::perform();
                            if (object)
                            {
                              dispatch_release(object);
                            }

                            if (v124)
                            {
                              _Block_release(v124);
                            }

                            xpc_release(v126);
                            v126 = 0;
LABEL_107:
                            xpc_release(v20);
                            if (v143)
                            {
                              dispatch_release(v143);
                            }

                            if (v142)
                            {
                              _Block_release(v142);
                            }

                            v45 = v141;
                            if (v141 && !atomic_fetch_add(&v141->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v45->__on_zero_shared)(v45);
                              std::__shared_weak_count::__release_weak(v45);
                            }

                            if (v139)
                            {
                              dispatch_group_leave(v139);
                              if (v139)
                              {
                                dispatch_release(v139);
                              }
                            }

                            v46 = v145;
                            if (v145 && !atomic_fetch_add((v145 + 8), 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v46->__on_zero_shared)(v46);
                              std::__shared_weak_count::__release_weak(v46);
                            }

                            goto LABEL_120;
                          }
                        }

                        v38 = _Block_copy(v38);
                        goto LABEL_83;
                      }

LABEL_66:
                      v37 = *(a1 + 104);
                      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                      {
                        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                        _os_log_impl(&dword_297288000, v37, OS_LOG_TYPE_DEFAULT, "#N Cellular Logging was detected before initiating LogTracker. The service needs to be paused in boot-up.", &buf, 2u);
                      }

                      v134 = v20;
                      if (v20)
                      {
                        xpc_retain(v20);
                      }

                      else
                      {
                        v134 = xpc_null_create();
                      }

                      v127[0] = MEMORY[0x29EDCA5F8];
                      v127[1] = 3321888768;
                      v127[2] = ___ZN10LogTracker28registerCommandHandlers_syncEN8dispatch13group_sessionE_block_invoke_4;
                      v127[3] = &__block_descriptor_72_e8_32c46_ZTSNSt3__110shared_ptrIN3abm12HelperClientEEE48c15_ZTSN3xpc4dictE56c79_ZTSN8dispatch8callbackIU13block_pointerFvN12TelephonyXPC6ResultEN3xpc4dictEEEE_e147_v48__0_Result_i_basic_string_char__std::char_traits_char___std::allocator_char______rep____short__23c_b7b1____long__Qb63b1____8_dict__object__v__40l;
                      v127[4] = v144;
                      v128 = v145;
                      if (v145)
                      {
                        atomic_fetch_add_explicit((v145 + 8), 1uLL, memory_order_relaxed);
                      }

                      v129 = v20;
                      if (v20)
                      {
                        xpc_retain(v20);
                        v39 = v142;
                        if (!v142)
                        {
                          goto LABEL_92;
                        }
                      }

                      else
                      {
                        v129 = xpc_null_create();
                        v39 = v142;
                        if (!v142)
                        {
LABEL_92:
                          v130 = v39;
                          v131 = v143;
                          if (v143)
                          {
                            dispatch_retain(v143);
                          }

                          v41 = _Block_copy(v127);
                          v42 = *MEMORY[0x29EDBD470];
                          v43 = *(a1 + 88);
                          if (v43)
                          {
                            dispatch_retain(*(a1 + 88));
                          }

                          v132 = v41;
                          v133 = v43;
                          abm::HelperClient::perform();
                          if (v133)
                          {
                            dispatch_release(v133);
                          }

                          if (v132)
                          {
                            _Block_release(v132);
                          }

                          xpc_release(v134);
                          v134 = 0;
                          if (v131)
                          {
                            dispatch_release(v131);
                          }

                          if (v130)
                          {
                            _Block_release(v130);
                          }

                          xpc_release(v129);
                          v129 = 0;
                          v44 = v128;
                          if (v128 && !atomic_fetch_add(&v128->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v44->__on_zero_shared)(v44);
                            std::__shared_weak_count::__release_weak(v44);
                          }

                          goto LABEL_107;
                        }
                      }

                      v39 = _Block_copy(v39);
                      goto LABEL_92;
                    }

LABEL_65:
                    if ((v29 & v36) != 1)
                    {
                      goto LABEL_72;
                    }

                    goto LABEL_66;
                  }
                }

                else
                {
                  v36 = 0;
                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_70;
                  }
                }

                if (SHIBYTE(v137) < 0)
                {
                  goto LABEL_71;
                }

                goto LABEL_65;
              }
            }

            memmove(v33, v30, v32);
            goto LABEL_57;
          }
        }

        else
        {
          v29 = 0;
          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_46;
          }
        }

        operator delete(buf.__r_.__value_.__l.__data_);
        goto LABEL_46;
      }
    }

    memmove(p_dst, v23, v25);
    goto LABEL_38;
  }

LABEL_120:
  v47 = MEMORY[0x29EDBD268];
  strlen(*MEMORY[0x29EDBD268]);
  ctu::fs::create_directory();
  v48 = MEMORY[0x29EDBD280];
  v49 = *MEMORY[0x29EDBD280];
  v50 = strlen(*MEMORY[0x29EDBD280]);
  if (v50 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v51 = v50;
  if (v50 >= 0x17)
  {
    if ((v50 | 7) == 0x17)
    {
      v53 = 25;
    }

    else
    {
      v53 = (v50 | 7) + 1;
    }

    v52 = operator new(v53);
    v123 = v53 | 0x8000000000000000;
    v122[0] = v52;
    v122[1] = v51;
    goto LABEL_128;
  }

  HIBYTE(v123) = v50;
  v52 = v122;
  if (v50)
  {
LABEL_128:
    memmove(v52, v49, v51);
  }

  *(v51 + v52) = 0;
  v54 = *v47;
  v55 = strlen(*v47);
  if (v55 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v56 = v55;
  if (v55 >= 0x17)
  {
    if ((v55 | 7) == 0x17)
    {
      v58 = 25;
    }

    else
    {
      v58 = (v55 | 7) + 1;
    }

    v57 = operator new(v58);
    v121 = v58 | 0x8000000000000000;
    __p[0] = v57;
    __p[1] = v56;
  }

  else
  {
    HIBYTE(v121) = v55;
    v57 = __p;
    if (!v55)
    {
      goto LABEL_138;
    }
  }

  memmove(v57, v54, v56);
LABEL_138:
  *(v56 + v57) = 0;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v118, "[^\\.].*", 0);
  util::moveDirContent(v122, __p, 1u, 1, &v118);
  v59 = v119;
  if (!v119 || atomic_fetch_add(&v119->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    std::locale::~locale(&v118);
    if ((SHIBYTE(v121) & 0x80000000) == 0)
    {
      goto LABEL_141;
    }

LABEL_236:
    operator delete(__p[0]);
    if ((SHIBYTE(v123) & 0x80000000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_237;
  }

  (v59->__on_zero_shared)(v59);
  std::__shared_weak_count::__release_weak(v59);
  std::locale::~locale(&v118);
  if (SHIBYTE(v121) < 0)
  {
    goto LABEL_236;
  }

LABEL_141:
  if ((SHIBYTE(v123) & 0x80000000) == 0)
  {
    goto LABEL_142;
  }

LABEL_237:
  operator delete(v122[0]);
LABEL_142:
  strlen(*v48);
  ctu::fs::create_directory();
  v60 = *(a1 + 104);
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v61 = *v48;
    v62 = *v47;
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v61;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v62;