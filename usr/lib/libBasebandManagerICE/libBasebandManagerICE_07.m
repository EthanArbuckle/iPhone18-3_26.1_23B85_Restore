void __destroy_helper_block_e8_40c40_ZTSNSt3__18weak_ptrI15TransportModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN15TransportModule28registerCommandHandlers_syncEv_block_invoke_7(void *a1, void **a2, void **a3)
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
      v12[2] = ___ZN15TransportModule28registerCommandHandlers_syncEv_block_invoke_2_8;
      v12[3] = &__block_descriptor_tmp_13_2;
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
          ctu::SharedSynchronizable<TransportModule>::execute_wrapped((v7 + 72), v12);
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

void ___ZN15TransportModule28registerCommandHandlers_syncEv_block_invoke_2_8(uint64_t a1)
{
  v19[1] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  v5 = MEMORY[0x29EDCAA00];
  if (v3)
  {
    object = v3;
  }

  else
  {
    v4 = xpc_null_create();
    object = v4;
    if (!v4)
    {
      v6 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C272BA0](v4) != v5)
  {
    v6 = xpc_null_create();
LABEL_8:
    object = v6;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
  v17 = -534716416;
  if (MEMORY[0x29C272BA0](*(a1 + 40)) == v5 && (v10 = *MEMORY[0x29EDBEF78], xpc_dictionary_get_value(*(a1 + 40), *MEMORY[0x29EDBEF78])))
  {
    value = xpc_dictionary_get_value(*(a1 + 40), v10);
    v19[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      v19[0] = xpc_null_create();
    }

    v12 = xpc::dyn_cast_or_default(v19, 0);
    xpc_release(v19[0]);
    v13 = *(v2 + 104);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v19[0]) = 67109120;
      HIDWORD(v19[0]) = v12;
      _os_log_impl(&dword_297476000, v13, OS_LOG_TYPE_DEFAULT, "#I Transport bypass enable (%u)", v19, 8u);
    }

    v14 = *(v2 + 128);
    if (v14)
    {
      if ((*(*v14 + 72))(v14, v12 != 0))
      {
        v17 = 0;
      }
    }

    else if (MEMORY[0x29C272BA0](object) == v5)
    {
      v15 = xpc_string_create("TransportService is not ready!");
      if (!v15)
      {
        v15 = xpc_null_create();
      }

      xpc_dictionary_set_value(object, *MEMORY[0x29EDBE648], v15);
      v16 = xpc_null_create();
      xpc_release(v15);
      xpc_release(v16);
    }
  }

  else
  {
    if (MEMORY[0x29C272BA0](object) == v5)
    {
      v7 = xpc_string_create("Invalid key!");
      if (!v7)
      {
        v7 = xpc_null_create();
      }

      xpc_dictionary_set_value(object, *MEMORY[0x29EDBE648], v7);
      v8 = xpc_null_create();
      xpc_release(v7);
      xpc_release(v8);
    }

    v17 = -534716414;
  }

  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int &,xpc::dict&>((a1 + 48), &v17, &object);
  xpc_release(object);
  v9 = *MEMORY[0x29EDCA608];
}

void sub_2974D0CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

xpc_object_t xpc::dict::object_proxy::operator=@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

void ___ZN15TransportModule28registerCommandHandlers_syncEv_block_invoke_17(void *a1, uint64_t a2, void **a3)
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
        v10[2] = ___ZN15TransportModule28registerCommandHandlers_syncEv_block_invoke_2_18;
        v10[3] = &__block_descriptor_tmp_23_0;
        v10[4] = v6;
        v9 = *a3;
        if (*a3)
        {
          v9 = _Block_copy(v9);
        }

        aBlock = v9;
        ctu::SharedSynchronizable<TransportModule>::execute_wrapped((v6 + 72), v10);
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

void ___ZN15TransportModule28registerCommandHandlers_syncEv_block_invoke_2_18(uint64_t a1)
{
  v2 = *(a1 + 32);
  xdict = 0xAAAAAAAAAAAAAAAALL;
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
  v6 = *(v2 + 112);
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (v6 == 3)
      {
        v9 = *(v2 + 120);
        if (v9)
        {
          xpc_retain(*(v2 + 120));
        }

        else
        {
          v9 = xpc_null_create();
        }

        v16 = *(a1 + 40);
        object = v9;
        v17 = xpc_null_create();
        (*(v16 + 16))(v16, 0, &object);
        xpc_release(object);
        xpc_release(v17);
        goto LABEL_30;
      }

LABEL_19:
      v10 = xpc_string_create("Request for wake data from baseband returned error.");
      if (!v10)
      {
        v10 = xpc_null_create();
      }

      xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE648], v10);
      v11 = xpc_null_create();
      xpc_release(v10);
      xpc_release(v11);
      LODWORD(object) = -534716416;
      dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>((a1 + 40), &object, &xdict);
      goto LABEL_30;
    }

    v14 = xpc_string_create("Requested for wake data from baseband. Please try again.");
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE648], v14);
    v15 = xpc_null_create();
    xpc_release(v14);
    xpc_release(v15);
    LODWORD(object) = -534716411;
    dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>((a1 + 40), &object, &xdict);
  }

  else
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = xpc_string_create("Device has not entered sleep state after bootup. So, there is no wake data yet.");
        if (!v7)
        {
          v7 = xpc_null_create();
        }

        xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE648], v7);
        v8 = xpc_null_create();
        xpc_release(v7);
        xpc_release(v8);
        LODWORD(object) = -534716409;
        dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>((a1 + 40), &object, &xdict);
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    v12 = xpc_string_create("Wake data is not supported on this device.");
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE648], v12);
    v13 = xpc_null_create();
    xpc_release(v12);
    xpc_release(v13);
    LODWORD(object) = -534716412;
    dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>((a1 + 40), &object, &xdict);
  }

LABEL_30:
  xpc_release(xdict);
}

void sub_2974D1200(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  JUMPOUT(0x2974D11B8);
}

void dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(uint64_t *a1, unsigned int *a2, void **a3)
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

void *__copy_helper_block_e8_40c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void TransportModule::claimSystemWake_sync(TransportModule *this)
{
  v26 = *MEMORY[0x29EDCA608];
  if (*(this + 28) != 3)
  {
    goto LABEL_38;
  }

  v2 = *(this + 15);
  if (v2)
  {
    xpc_retain(*(this + 15));
  }

  else
  {
    v2 = xpc_null_create();
  }

  value = xpc_dictionary_get_value(v2, *MEMORY[0x29EDBE9D8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::bridge(cf, &object, v4);
  v5 = *cf;
  if (!*cf || (v6 = CFGetTypeID(*cf), v6 != CFStringGetTypeID()))
  {
    v5 = 0;
    v7 = *cf;
    if (!*cf)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  CFRetain(v5);
  v7 = *cf;
  if (*cf)
  {
LABEL_13:
    CFRelease(v7);
  }

LABEL_14:
  xpc_release(object);
  v8 = *MEMORY[0x29EDBE9D0];
  v9 = xpc_dictionary_get_value(v2, *MEMORY[0x29EDBE9D0]);
  object = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::bridge(cf, &object, v10);
  v11 = *cf;
  if (*cf)
  {
    v12 = CFGetTypeID(*cf);
    if (v12 == CFDataGetTypeID())
    {
      CFRetain(v11);
      v13 = *cf;
      if (!*cf)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  v11 = 0;
  v13 = *cf;
  if (*cf)
  {
LABEL_22:
    CFRelease(v13);
  }

LABEL_23:
  xpc_release(object);
  v14 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *cf = 0;
  ctu::cf::convert_copy(cf, v8, 0x8000100, v14, v16);
  v17 = *cf;
  object = *cf;
  *cf = v11;
  if (v11)
  {
    CFRetain(v11);
    if (v17)
    {
      CFDictionaryAddValue(Mutable, v17, v11);
    }

    CFRelease(v11);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  IOPMClaimSystemWakeEvent();
  v18 = *(this + 13);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *cf = 138412802;
    *&cf[4] = @"com.apple.CommCenter";
    v22 = 2112;
    v23 = v5;
    v24 = 2112;
    v25 = Mutable;
    _os_log_impl(&dword_297476000, v18, OS_LOG_TYPE_DEFAULT, "#I \n--- IOPM System Wake ---\nIdentity: %@\nReason: %@\nDetails: %@---", cf, 0x20u);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  xpc_release(v2);
LABEL_38:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_2974D1630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void TransportModule::submitMetric_sync(TransportModule *this, xpc_object_t *a2)
{
  v4 = *(this + 13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Submitting Wake Reason Info to AWD", buf, 2u);
  }

  v5 = MEMORY[0x29C272BA0](*a2);
  v6 = MEMORY[0x29EDCAA00];
  if (v5 == MEMORY[0x29EDCAA00])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8 || (v8 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C272BA0](v8) == v6)
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
    v101 = 0xAAAAAAAAAAAAAAAALL;
    v10 = xpc_dictionary_create(0, 0, 0);
    v11 = v10;
    if (v10)
    {
      v101 = v10;
    }

    else
    {
      v11 = xpc_null_create();
      v101 = v11;
      if (!v11)
      {
        v12 = xpc_null_create();
        v11 = 0;
        goto LABEL_19;
      }
    }

    if (MEMORY[0x29C272BA0](v11) == v6)
    {
      xpc_retain(v11);
      goto LABEL_20;
    }

    v12 = xpc_null_create();
LABEL_19:
    v101 = v12;
LABEL_20:
    xpc_release(v11);
    v13 = *MEMORY[0x29EDBEA28];
    value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEA28]);
    v15 = value != 0;
    if (value)
    {
      *buf = a2;
      v74 = v13;
      v16 = *MEMORY[0x29EDBF6A8];
      v98 = &v101;
      v99 = v16;
      xpc::dict::object_proxy::operator=(&v98, buf, &v100);
      xpc_release(v100);
      v100 = 0;
    }

    v17 = *MEMORY[0x29EDBF4F8];
    if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF4F8]))
    {
      *buf = a2;
      v74 = v17;
      v18 = *MEMORY[0x29EDBF570];
      v98 = &v101;
      v99 = v18;
      xpc::dict::object_proxy::operator=(&v98, buf, &v97);
      xpc_release(v97);
      v97 = 0;
      v15 = 1;
    }

    v19 = *MEMORY[0x29EDBE848];
    if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE848]))
    {
      *buf = a2;
      v74 = v19;
      v20 = *MEMORY[0x29EDBF768];
      v98 = &v101;
      v99 = v20;
      xpc::dict::object_proxy::operator=(&v98, buf, &v96);
      xpc_release(v96);
      v96 = 0;
      v15 = 1;
    }

    v21 = *MEMORY[0x29EDBEDA8];
    if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEDA8]))
    {
      *buf = a2;
      v74 = v21;
      v22 = *MEMORY[0x29EDBF628];
      v98 = &v101;
      v99 = v22;
      xpc::dict::object_proxy::operator=(&v98, buf, &v95);
      xpc_release(v95);
      v95 = 0;
      v15 = 1;
    }

    v23 = *MEMORY[0x29EDBE9D8];
    if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE9D8]))
    {
      *buf = a2;
      v74 = v23;
      v24 = *MEMORY[0x29EDBF478];
      v98 = &v101;
      v99 = v24;
      xpc::dict::object_proxy::operator=(&v98, buf, &v94);
      xpc_release(v94);
      v94 = 0;
      v15 = 1;
    }

    v25 = *MEMORY[0x29EDBEDB0];
    if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEDB0]))
    {
      *buf = a2;
      v74 = v25;
      v26 = *MEMORY[0x29EDBF630];
      v98 = &v101;
      v99 = v26;
      xpc::dict::object_proxy::operator=(&v98, buf, &v93);
      xpc_release(v93);
      v93 = 0;
      v27 = *MEMORY[0x29EDBF190];
      if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF190]))
      {
        v92 = 0xAAAAAAAAAAAAAAAALL;
        *buf = a2;
        v74 = v27;
        xpc::dict::object_proxy::operator xpc::dict(buf, &v92);
        if (xpc::operator==<char const*>(*a2, v25, MEMORY[0x29EDBEB78]))
        {
          v28 = *MEMORY[0x29EDBF198];
          *buf = &v92;
          v74 = v28;
          v29 = *MEMORY[0x29EDBF568];
          v98 = &v101;
          v99 = v29;
          xpc::dict::object_proxy::operator=(&v98, buf, &v91);
          xpc_release(v91);
          v91 = 0;
          v30 = *MEMORY[0x29EDBF040];
          *buf = &v92;
          v74 = v30;
          v31 = *MEMORY[0x29EDBF4C8];
          v98 = &v101;
          v99 = v31;
          xpc::dict::object_proxy::operator=(&v98, buf, &object);
          xpc_release(object);
          object = 0;
        }

        else if (xpc::operator==<char const*>(*a2, v25, MEMORY[0x29EDBECE8]))
        {
          v33 = *MEMORY[0x29EDBEF10];
          *buf = &v92;
          v74 = v33;
          v34 = *MEMORY[0x29EDBF150];
          v98 = &v101;
          v99 = v34;
          xpc::dict::object_proxy::operator=(&v98, buf, &v89);
          xpc_release(v89);
          v89 = 0;
          v35 = *MEMORY[0x29EDBF1B0];
          *buf = &v92;
          v74 = v35;
          v36 = *MEMORY[0x29EDBF368];
          v98 = &v101;
          v99 = v36;
          xpc::dict::object_proxy::operator=(&v98, buf, &v88);
          xpc_release(v88);
          v88 = 0;
          v37 = *MEMORY[0x29EDBF290];
          *buf = &v92;
          v74 = v37;
          v38 = *MEMORY[0x29EDBF470];
          v98 = &v101;
          v99 = v38;
          xpc::dict::object_proxy::operator=(&v98, buf, &v87);
          xpc_release(v87);
          v87 = 0;
          v39 = *MEMORY[0x29EDBF4E0];
          *buf = &v92;
          v74 = v39;
          v40 = *MEMORY[0x29EDBF360];
          v98 = &v101;
          v99 = v40;
          xpc::dict::object_proxy::operator=(&v98, buf, &v86);
          xpc_release(v86);
          v86 = 0;
          v41 = *MEMORY[0x29EDBEF08];
          *buf = &v92;
          v74 = v41;
          v42 = *MEMORY[0x29EDBF018];
          v98 = &v101;
          v99 = v42;
          xpc::dict::object_proxy::operator=(&v98, buf, &v85);
          xpc_release(v85);
          v85 = 0;
        }

        else if (xpc::operator==<char const*>(*a2, v25, MEMORY[0x29EDBECD0]))
        {
          v43 = *MEMORY[0x29EDBEF00];
          *buf = &v92;
          v74 = v43;
          v44 = *MEMORY[0x29EDBF150];
          v98 = &v101;
          v99 = v44;
          xpc::dict::object_proxy::operator=(&v98, buf, &v84);
          xpc_release(v84);
          v84 = 0;
          v45 = *MEMORY[0x29EDBF188];
          *buf = &v92;
          v74 = v45;
          v46 = *MEMORY[0x29EDBF368];
          v98 = &v101;
          v99 = v46;
          xpc::dict::object_proxy::operator=(&v98, buf, &v83);
          xpc_release(v83);
          v83 = 0;
          v47 = *MEMORY[0x29EDBF180];
          *buf = &v92;
          v74 = v47;
          xpc::dict::object_proxy::operator xpc::object(buf, &v98);
          v48 = xpc::dyn_cast_or_default(&v98, 0);
          xpc_release(v98);
          v81 = xpc_int64_create(v48 | 0x10000);
          if (!v81)
          {
            v81 = xpc_null_create();
          }

          v49 = *MEMORY[0x29EDBF360];
          *buf = &v101;
          v74 = v49;
          xpc::dict::object_proxy::operator=(buf, &v81, &v82);
          xpc_release(v82);
          v82 = 0;
          xpc_release(v81);
          v81 = 0;
          v50 = *MEMORY[0x29EDBEF08];
          *buf = &v92;
          v74 = v50;
          v51 = *MEMORY[0x29EDBF018];
          v98 = &v101;
          v99 = v51;
          xpc::dict::object_proxy::operator=(&v98, buf, &v80);
          xpc_release(v80);
          v80 = 0;
        }

        else if (xpc::operator==<char const*>(*a2, v25, MEMORY[0x29EDBEE20]))
        {
          v52 = *MEMORY[0x29EDBF048];
          *buf = &v92;
          v74 = v52;
          v53 = *MEMORY[0x29EDBF150];
          v98 = &v101;
          v99 = v53;
          xpc::dict::object_proxy::operator=(&v98, buf, &v79);
          xpc_release(v79);
          v79 = 0;
          v54 = *MEMORY[0x29EDBF1A8];
          *buf = &v92;
          v74 = v54;
          v55 = *MEMORY[0x29EDBF368];
          v98 = &v101;
          v99 = v55;
          xpc::dict::object_proxy::operator=(&v98, buf, &v78);
          xpc_release(v78);
          v78 = 0;
          v56 = *MEMORY[0x29EDBF3A0];
          *buf = &v92;
          v74 = v56;
          v57 = *MEMORY[0x29EDBF470];
          v98 = &v101;
          v99 = v57;
          xpc::dict::object_proxy::operator=(&v98, buf, &v77);
          xpc_release(v77);
          v77 = 0;
          v58 = *MEMORY[0x29EDBEF08];
          *buf = &v92;
          v74 = v58;
          v59 = *MEMORY[0x29EDBF018];
          v98 = &v101;
          v99 = v59;
          xpc::dict::object_proxy::operator=(&v98, buf, &v76);
          xpc_release(v76);
          v76 = 0;
        }

        xpc_release(v92);
      }
    }

    else if (!v15)
    {
      v32 = *(this + 13);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297476000, v32, OS_LOG_TYPE_ERROR, "Wake Reason data is missing", buf, 2u);
      }

      goto LABEL_66;
    }

    v60 = xpc_string_create(*MEMORY[0x29EDBF880]);
    if (!v60)
    {
      v60 = xpc_null_create();
    }

    xpc_dictionary_set_value(v9, *MEMORY[0x29EDBE588], v60);
    v61 = xpc_null_create();
    xpc_release(v60);
    xpc_release(v61);
    v62 = xpc_int64_create(524467);
    if (!v62)
    {
      v62 = xpc_null_create();
    }

    xpc_dictionary_set_value(v9, *MEMORY[0x29EDBE660], v62);
    v63 = xpc_null_create();
    xpc_release(v62);
    xpc_release(v63);
    v64 = v101;
    if (v101)
    {
      xpc_retain(v101);
    }

    else
    {
      v64 = xpc_null_create();
    }

    xpc_dictionary_set_value(v9, *MEMORY[0x29EDBE580], v64);
    v65 = xpc_null_create();
    xpc_release(v64);
    xpc_release(v65);
    v66 = *MEMORY[0x29EDBEBD0];
    v67 = strlen(*MEMORY[0x29EDBEBD0]);
    if (v67 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v68 = v67;
    if (v67 >= 0x17)
    {
      if ((v67 | 7) == 0x17)
      {
        v70 = 25;
      }

      else
      {
        v70 = (v67 | 7) + 1;
      }

      v69 = operator new(v70);
      v74 = v68;
      v75 = v70 | 0x8000000000000000;
      *buf = v69;
    }

    else
    {
      HIBYTE(v75) = v67;
      v69 = buf;
      if (!v67)
      {
        buf[0] = 0;
        v72 = v9;
        if (v9)
        {
LABEL_57:
          xpc_retain(v9);
          goto LABEL_64;
        }

LABEL_63:
        v72 = xpc_null_create();
LABEL_64:
        v71 = 0;
        Service::runCommand(this, buf, &v72, &v71);
        xpc_release(v72);
        v72 = 0;
        if (SHIBYTE(v75) < 0)
        {
          operator delete(*buf);
        }

LABEL_66:
        xpc_release(v101);
        xpc_release(v9);
        return;
      }
    }

    memmove(v69, v66, v68);
    *(v69 + v68) = 0;
    v72 = v9;
    if (v9)
    {
      goto LABEL_57;
    }

    goto LABEL_63;
  }

  v7 = *(this + 13);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297476000, v7, OS_LOG_TYPE_ERROR, "Invalid Wake Reason dictionary", buf, 2u);
  }
}

void sub_2974D21BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(*(v17 - 96));
  xpc_release(*(v17 - 144));
  xpc_release(*(v17 - 72));
  xpc_release(v16);
  _Unwind_Resume(a1);
}

void xpc::dict::object_proxy::operator=(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  value = xpc_dictionary_get_value(**a2, *(a2 + 8));
  v6 = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v6 = xpc_null_create();
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_5;
    }
  }

  xpc_retain(v6);
  v7 = v6;
LABEL_5:
  xpc_dictionary_set_value(**a1, *(a1 + 8), v7);
  *a3 = v7;
  v8 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v6);
}

BOOL xpc::operator==<char const*>(void *a1, const char *a2, const char **a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (value)
  {
    v5 = value;
    xpc_retain(value);
  }

  else
  {
    v5 = xpc_null_create();
  }

  v6 = xpc_string_create(*a3);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  v7 = xpc_equal(v5, v6);
  xpc_release(v6);
  xpc_release(v5);
  return v7;
}

void sub_2974D2454(_Unwind_Exception *a1)
{
  xpc_release(v2);
  xpc_release(v1);
  _Unwind_Resume(a1);
}

void TransportModule::registerEventHandlers_sync(TransportModule *this)
{
  v86 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", buf, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_133:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_133;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_133;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 10);
  if (!v7 || (v8 = *(this + 9), (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v67 = v8;
  v68 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = v9;
    (v9->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(this + 23);
  v65 = *(this + 22);
  v66 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  TransportService::create(&v67, &v65, buf);
  v12 = *buf;
  *buf = 0;
  *&buf[8] = 0;
  v13 = *(this + 17);
  *(this + 8) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = v66;
  if (v66 && !atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v68)
  {
    std::__shared_weak_count::__release_weak(v68);
  }

  v16 = *(this + 16);
  if (!v16)
  {
    v58 = GetOsLogContext()[1];
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      __break(1u);
    }

    *buf = 136315906;
    *&buf[4] = "ABM ASSERT";
    *&buf[12] = 2080;
    *&buf[14] = "fTransportService != NULL";
    *&buf[22] = 2080;
    *&buf[24] = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/Transport/TransportModule.cpp";
    v84 = 1024;
    v85 = 370;
    _os_log_fault_impl(&dword_297476000, v58, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", buf, 0x26u);
    __break(1u);
LABEL_137:
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (*(this + 28))
  {
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN15TransportModule26registerEventHandlers_syncEv_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_34_0;
    aBlock[4] = this;
    aBlock[5] = v4;
    v62 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = _Block_copy(aBlock);
    v18 = *(this + 11);
    if (v18)
    {
      dispatch_retain(*(this + 11));
    }

    v63 = v17;
    object = v18;
    (*(*v16 + 80))(v16, &v63);
    if (object)
    {
      dispatch_release(object);
    }

    if (v63)
    {
      _Block_release(v63);
    }

    if (v62)
    {
      std::__shared_weak_count::__release_weak(v62);
    }
  }

  else
  {
    v19 = *(this + 13);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v19, OS_LOG_TYPE_DEFAULT, "#I Wake reason is not supported by this baseband", buf, 2u);
    }
  }

  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v20;
  *&buf[16] = v20;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *&buf[24] = 0;
  v21 = operator new(0x20uLL);
  *v21 = &unk_2A1E44338;
  v21[1] = this;
  v21[2] = v4;
  v21[3] = v6;
  *&buf[24] = v21;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v81 = v22;
  v82 = v22;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(&v82 + 1) = 0;
  v23 = operator new(0x20uLL);
  *v23 = &unk_2A1E443B8;
  v23[1] = this;
  v23[2] = v4;
  v23[3] = v6;
  *(&v82 + 1) = v23;
  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v79 = v24;
  v80 = v24;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(&v80 + 1) = 0;
  v25 = operator new(0x20uLL);
  *v25 = &unk_2A1E44438;
  v25[1] = this;
  v25[2] = v4;
  v25[3] = v6;
  *(&v80 + 1) = v25;
  *&v26 = 0xAAAAAAAAAAAAAAAALL;
  *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v77 = v26;
  v78 = v26;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(&v78 + 1) = 0;
  v27 = operator new(0x20uLL);
  *v27 = &unk_2A1E444B8;
  v27[1] = this;
  v27[2] = v4;
  v27[3] = v6;
  *(&v78 + 1) = v27;
  v28 = *MEMORY[0x29EDBF460];
  v29 = strlen(*MEMORY[0x29EDBF460]);
  if (v29 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_137;
  }

  v30 = v29;
  if (v29 >= 0x17)
  {
    if ((v29 | 7) == 0x17)
    {
      v33 = 25;
    }

    else
    {
      v33 = (v29 | 7) + 1;
    }

    p_p = operator new(v33);
    *(&__p + 1) = v30;
    v60 = v33 | 0x8000000000000000;
    *&__p = p_p;
  }

  else
  {
    HIBYTE(v60) = v29;
    p_p = &__p;
    if (!v29)
    {
      LOBYTE(__p) = 0;
      v32 = *(&v82 + 1);
      if (!*(&v82 + 1))
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }
  }

  memmove(p_p, v28, v30);
  *(p_p + v30) = 0;
  v32 = *(&v82 + 1);
  if (!*(&v82 + 1))
  {
LABEL_47:
    v76 = v32;
    goto LABEL_49;
  }

LABEL_45:
  if (v32 != &v81)
  {
    v32 = (*(*v32 + 16))(v32);
    goto LABEL_47;
  }

  v76 = v75;
  (*(*v32 + 24))(v32, v75);
LABEL_49:
  Service::registerEventHandler(this, &__p, v75);
  if (v76 == v75)
  {
    (*(*v76 + 32))(v76);
    if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_67;
  }

  if (v76)
  {
    (*(*v76 + 40))(v76, v34, v35);
  }

  if (SHIBYTE(v60) < 0)
  {
LABEL_67:
    operator delete(__p);
  }

LABEL_53:
  v36 = *MEMORY[0x29EDBEFF0];
  v37 = strlen(*MEMORY[0x29EDBEFF0]);
  if (v37 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v38 = v37;
  if (v37 >= 0x17)
  {
    if ((v37 | 7) == 0x17)
    {
      v41 = 25;
    }

    else
    {
      v41 = (v37 | 7) + 1;
    }

    v39 = operator new(v41);
    *(&__p + 1) = v38;
    v60 = v41 | 0x8000000000000000;
    *&__p = v39;
  }

  else
  {
    HIBYTE(v60) = v37;
    v39 = &__p;
    if (!v37)
    {
      LOBYTE(__p) = 0;
      v40 = *&buf[24];
      if (!*&buf[24])
      {
        goto LABEL_65;
      }

      goto LABEL_63;
    }
  }

  memmove(v39, v36, v38);
  *(v39 + v38) = 0;
  v40 = *&buf[24];
  if (!*&buf[24])
  {
LABEL_65:
    v74 = v40;
    goto LABEL_69;
  }

LABEL_63:
  if (v40 != buf)
  {
    v40 = (*(*v40 + 16))(v40);
    goto LABEL_65;
  }

  v74 = v73;
  (*(*v40 + 24))(v40, v73);
LABEL_69:
  Service::registerEventHandler(this, &__p, v73);
  if (v74 == v73)
  {
    (*(*v74 + 32))(v74);
    if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_87;
  }

  if (v74)
  {
    (*(*v74 + 40))();
  }

  if (SHIBYTE(v60) < 0)
  {
LABEL_87:
    operator delete(__p);
  }

LABEL_73:
  v42 = *MEMORY[0x29EDBF278];
  v43 = strlen(*MEMORY[0x29EDBF278]);
  if (v43 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v44 = v43;
  if (v43 >= 0x17)
  {
    if ((v43 | 7) == 0x17)
    {
      v47 = 25;
    }

    else
    {
      v47 = (v43 | 7) + 1;
    }

    v45 = operator new(v47);
    *(&__p + 1) = v44;
    v60 = v47 | 0x8000000000000000;
    *&__p = v45;
  }

  else
  {
    HIBYTE(v60) = v43;
    v45 = &__p;
    if (!v43)
    {
      LOBYTE(__p) = 0;
      v46 = *(&v80 + 1);
      if (!*(&v80 + 1))
      {
        goto LABEL_85;
      }

      goto LABEL_83;
    }
  }

  memmove(v45, v42, v44);
  *(v45 + v44) = 0;
  v46 = *(&v80 + 1);
  if (!*(&v80 + 1))
  {
LABEL_85:
    v72 = v46;
    goto LABEL_89;
  }

LABEL_83:
  if (v46 != &v79)
  {
    v46 = (*(*v46 + 16))(v46);
    goto LABEL_85;
  }

  v72 = v71;
  (*(*v46 + 24))(v46, v71);
LABEL_89:
  Service::registerEventHandler(this, &__p, v71);
  if (v72 == v71)
  {
    (*(*v72 + 32))(v72);
    if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_107;
  }

  if (v72)
  {
    (*(*v72 + 40))();
  }

  if (SHIBYTE(v60) < 0)
  {
LABEL_107:
    operator delete(__p);
  }

LABEL_93:
  v48 = *MEMORY[0x29EDBEFF8];
  v49 = strlen(*MEMORY[0x29EDBEFF8]);
  if (v49 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v50 = v49;
  if (v49 >= 0x17)
  {
    if ((v49 | 7) == 0x17)
    {
      v53 = 25;
    }

    else
    {
      v53 = (v49 | 7) + 1;
    }

    v51 = operator new(v53);
    *(&__p + 1) = v50;
    v60 = v53 | 0x8000000000000000;
    *&__p = v51;
  }

  else
  {
    HIBYTE(v60) = v49;
    v51 = &__p;
    if (!v49)
    {
      LOBYTE(__p) = 0;
      v52 = *(&v78 + 1);
      if (!*(&v78 + 1))
      {
        goto LABEL_105;
      }

      goto LABEL_103;
    }
  }

  memmove(v51, v48, v50);
  *(v51 + v50) = 0;
  v52 = *(&v78 + 1);
  if (!*(&v78 + 1))
  {
LABEL_105:
    v70 = v52;
    goto LABEL_109;
  }

LABEL_103:
  if (v52 != &v77)
  {
    v52 = (*(*v52 + 16))(v52);
    goto LABEL_105;
  }

  v70 = v69;
  (*(*v52 + 24))(v52, v69);
LABEL_109:
  Service::registerEventHandler(this, &__p, v69);
  if (v70 == v69)
  {
    (*(*v70 + 32))(v70);
    if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_126;
  }

  if (v70)
  {
    (*(*v70 + 40))();
  }

  if (SHIBYTE(v60) < 0)
  {
LABEL_126:
    operator delete(__p);
  }

LABEL_113:
  Service::eventsOn(this);
  if (*(&v78 + 1) == &v77)
  {
    (*(**(&v78 + 1) + 32))(*(&v78 + 1));
    v54 = *(&v80 + 1);
    if (*(&v80 + 1) != &v79)
    {
      goto LABEL_117;
    }

LABEL_128:
    (*(*v54 + 32))(v54);
    v55 = *(&v82 + 1);
    if (*(&v82 + 1) != &v81)
    {
      goto LABEL_120;
    }

    goto LABEL_129;
  }

  if (*(&v78 + 1))
  {
    (*(**(&v78 + 1) + 40))();
  }

  v54 = *(&v80 + 1);
  if (*(&v80 + 1) == &v79)
  {
    goto LABEL_128;
  }

LABEL_117:
  if (v54)
  {
    (*(*v54 + 40))(v54);
  }

  v55 = *(&v82 + 1);
  if (*(&v82 + 1) != &v81)
  {
LABEL_120:
    if (v55)
    {
      (*(*v55 + 40))(v55);
    }

    v56 = *&buf[24];
    if (*&buf[24] != buf)
    {
      goto LABEL_123;
    }

LABEL_130:
    (*(*v56 + 32))(v56);
    goto LABEL_131;
  }

LABEL_129:
  (*(*v55 + 32))(v55);
  v56 = *&buf[24];
  if (*&buf[24] == buf)
  {
    goto LABEL_130;
  }

LABEL_123:
  if (v56)
  {
    (*(*v56 + 40))(v56);
  }

LABEL_131:
  std::__shared_weak_count::__release_weak(v6);
  v57 = *MEMORY[0x29EDCA608];
}

void sub_2974D319C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN15TransportModule26registerEventHandlers_syncEv_block_invoke(void *a1, uint64_t a2)
{
  v64 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_94;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v52 = v6;
  if (!v6)
  {
    goto LABEL_94;
  }

  if (a1[5])
  {
    v7 = (v5 + 112);
    v8 = *(v5 + 112);
    v9 = *(v5 + 120);
    if (v9)
    {
      xpc_retain(*(v5 + 120));
      *v7 = *a2;
      v10 = *(a2 + 8);
      if (v10)
      {
LABEL_6:
        xpc_retain(v10);
        goto LABEL_9;
      }
    }

    else
    {
      v9 = xpc_null_create();
      *v7 = *a2;
      v10 = *(a2 + 8);
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v10 = xpc_null_create();
LABEL_9:
    v11 = *(v5 + 120);
    *(v5 + 120) = v10;
    xpc_release(v11);
    if (v8 != 2)
    {
      goto LABEL_91;
    }

    if (*v7 != 3)
    {
      v14 = *(v5 + 104);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        WakeReason::describe(&block, (v5 + 112));
        v26 = SHIBYTE(v56) >= 0 ? &block : block;
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v26;
        _os_log_error_impl(&dword_297476000, v14, OS_LOG_TYPE_ERROR, "Baseband wake data (Error): %s", &buf, 0xCu);
        if (SHIBYTE(v56) < 0)
        {
          operator delete(block);
        }
      }

      v15 = *(v5 + 144);
      if (v15)
      {
        *&buf = MEMORY[0x29EDCA5F8];
        *(&buf + 1) = 0x40000000;
        v61 = ___ZN4data16TransportService5State17unblockThrottlingEv_block_invoke;
        v62 = &__block_descriptor_tmp_53;
        v63 = v15;
        p_buf = &buf;
        block = MEMORY[0x29EDCA5F8];
        v55 = 0x40000000;
        v56 = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
        v57 = &__block_descriptor_tmp_47;
        v58 = v15;
        p_p_buf = &p_buf;
        v16 = *(v15 + 16);
        if (*(v15 + 24))
        {
          dispatch_async_and_wait(v16, &block);
        }

        else
        {
          dispatch_sync(v16, &block);
        }
      }

LABEL_91:
      xpc_release(v9);
      v6 = v52;
      if (!v52)
      {
        goto LABEL_94;
      }

      goto LABEL_92;
    }

    v12 = *(v5 + 120);
    xdict = v12;
    if (v12)
    {
      xpc_retain(v12);
      v13 = xdict;
    }

    else
    {
      v13 = xpc_null_create();
      xdict = v13;
    }

    v17 = MEMORY[0x29C272BA0](v13);
    v18 = MEMORY[0x29EDCAA00];
    if (v17 == MEMORY[0x29EDCAA00])
    {
      *&buf = 0xAAAAAAAAAAAAAAAALL;
      v21 = *MEMORY[0x29EDBF190];
      block = &xdict;
      v55 = v21;
      xpc::dict::object_proxy::operator xpc::dict(&block, &buf);
      value = xpc_dictionary_get_value(xdict, *MEMORY[0x29EDBF4F8]);
      block = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        block = xpc_null_create();
      }

      v19 = xpc::dyn_cast_or_default(&block, 0);
      xpc_release(block);
      v23 = xpc_dictionary_get_value(xdict, *MEMORY[0x29EDBEDA8]);
      block = v23;
      if (v23)
      {
        xpc_retain(v23);
      }

      else
      {
        block = xpc_null_create();
      }

      v20 = xpc::dyn_cast_or_default(&block, 0);
      xpc_release(block);
      if (MEMORY[0x29C272BA0](buf) == v18)
      {
        v25 = xpc_dictionary_get_value(buf, *MEMORY[0x29EDBEF08]);
        block = v25;
        if (v25)
        {
          xpc_retain(v25);
        }

        else
        {
          block = xpc_null_create();
        }

        v24 = xpc::dyn_cast_or_default(&block, 0);
        xpc_release(block);
      }

      else
      {
        v24 = 0;
      }

      xpc_release(buf);
      if (v24)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    v27 = *(v5 + 144);
    if (v27)
    {
      *&buf = MEMORY[0x29EDCA5F8];
      *(&buf + 1) = 0x40000000;
      v61 = ___ZN4data16TransportService5State17unblockThrottlingEv_block_invoke;
      v62 = &__block_descriptor_tmp_53;
      v63 = v27;
      p_buf = &buf;
      block = MEMORY[0x29EDCA5F8];
      v55 = 0x40000000;
      v56 = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
      v57 = &__block_descriptor_tmp_47;
      v58 = v27;
      p_p_buf = &p_buf;
      v28 = *(v27 + 16);
      if (*(v27 + 24))
      {
        dispatch_async_and_wait(v28, &block);
        if ((v19 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_55:
        TransportModule::claimSystemWake_sync(v5);
        TransportModule::notifyWakeToNetworkStack_sync(v5);
        v33 = *MEMORY[0x29EDBEEB8];
        v34 = strlen(*MEMORY[0x29EDBEEB8]);
        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v35 = v34;
        if (v34 >= 0x17)
        {
          if ((v34 | 7) == 0x17)
          {
            v37 = 25;
          }

          else
          {
            v37 = (v34 | 7) + 1;
          }

          v36 = operator new(v37);
          __dst[1] = v35;
          v49 = v37 | 0x8000000000000000;
          __dst[0] = v36;
        }

        else
        {
          HIBYTE(v49) = v34;
          v36 = __dst;
          if (!v34)
          {
LABEL_64:
            *(v35 + v36) = 0;
            v38 = *(v5 + 120);
            if (v38)
            {
              xpc_retain(*(v5 + 120));
              *&buf = v38;
            }

            else
            {
              v38 = xpc_null_create();
              *&buf = v38;
              if (!v38)
              {
                v38 = 0;
                *&buf = xpc_null_create();
LABEL_70:
                xpc::bridge(&block, &buf, v39);
                v40 = block;
                if (block && (v41 = CFGetTypeID(block), v41 == CFDictionaryGetTypeID()))
                {
                  cf = v40;
                  CFRetain(v40);
                }

                else
                {
                  cf = 0;
                }

                aBlock = 0;
                Service::broadcastEvent(v5, __dst, &cf, &aBlock);
                if (aBlock)
                {
                  _Block_release(aBlock);
                }

                if (cf)
                {
                  CFRelease(cf);
                }

                if (block)
                {
                  CFRelease(block);
                }

                xpc_release(buf);
                *&buf = 0;
                xpc_release(v38);
                if (SHIBYTE(v49) < 0)
                {
                  operator delete(__dst[0]);
                }

                v42 = *(v5 + 104);
                if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_89;
                }

                WakeReason::describe(&block, (v5 + 112));
                if (SHIBYTE(v56) >= 0)
                {
                  p_block = &block;
                }

                else
                {
                  p_block = block;
                }

                LODWORD(buf) = 136315138;
                *(&buf + 4) = p_block;
                _os_log_impl(&dword_297476000, v42, OS_LOG_TYPE_DEFAULT, "#I Baseband wake data (Did wake AP): %s", &buf, 0xCu);
                goto LABEL_87;
              }
            }

            xpc_retain(v38);
            goto LABEL_70;
          }
        }

        memmove(v36, v33, v35);
        goto LABEL_64;
      }

      dispatch_sync(v28, &block);
      if (v19)
      {
        goto LABEL_55;
      }

LABEL_42:
      v29 = *(v5 + 104);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        WakeReason::describe(&block, (v5 + 112));
        v30 = SHIBYTE(v56) >= 0 ? &block : block;
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v30;
        _os_log_impl(&dword_297476000, v29, OS_LOG_TYPE_DEFAULT, "#I Baseband wake data (Did NOT wake AP): %s", &buf, 0xCu);
        if (SHIBYTE(v56) < 0)
        {
          operator delete(block);
        }
      }

      if (!v20)
      {
        goto LABEL_90;
      }

      v31 = *(v5 + 104);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
LABEL_89:
        TransportModule::submitMetric_sync(v5, &xdict);
LABEL_90:
        xpc_release(xdict);
        goto LABEL_91;
      }

      WakeReason::describe(&block, (v5 + 112));
      if (SHIBYTE(v56) >= 0)
      {
        v32 = &block;
      }

      else
      {
        v32 = block;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v32;
      _os_log_error_impl(&dword_297476000, v31, OS_LOG_TYPE_ERROR, "System and Baseband wake reason mismatch: %s", &buf, 0xCu);
LABEL_87:
      if (SHIBYTE(v56) < 0)
      {
        operator delete(block);
      }

      goto LABEL_89;
    }

LABEL_54:
    if (v19)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

LABEL_92:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v44 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v44);
  }

LABEL_94:
  v45 = *MEMORY[0x29EDCA608];
}

void sub_2974D3A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, xpc_object_t a18, char a19, uint64_t a20, uint64_t a21, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void TransportModule::notifyWakeToNetworkStack_sync(TransportModule *this)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(this + 28) == 3)
  {
    v2 = *(this + 15);
    if (v2)
    {
      xpc_retain(*(this + 15));
    }

    else
    {
      v2 = xpc_null_create();
    }

    if (xpc::operator==<char const*>(MEMORY[0x29EDBEA88], v2, *MEMORY[0x29EDBE9D8]) && xpc::operator==<char const*>(MEMORY[0x29EDBEB78], v2, *MEMORY[0x29EDBEDB0]))
    {
      v8 = 15;
      v3 = sysctlbyname("net.link.generic.system.port_used.wake_pkt_event_notify", 0, 0, &v8, 4uLL);
      v4 = *(this + 13);
      if (v3)
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = __error();
          v6 = strerror(*v5);
          *buf = 136315138;
          v10 = v6;
          _os_log_error_impl(&dword_297476000, v4, OS_LOG_TYPE_ERROR, "Failed to notify networking stack about Baseband wake packet, error: (%s)", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Notified networking stack about Baseband wake packet", buf, 2u);
      }
    }

    xpc_release(v2);
  }

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t WakeReason::describe(WakeReason *this, int *a2)
{
  v35 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34[7] = v4;
  v34[8] = v4;
  v34[5] = v4;
  v34[6] = v4;
  v34[3] = v4;
  v34[4] = v4;
  v34[1] = v4;
  v34[2] = v4;
  v34[0] = v4;
  v32 = v4;
  v33 = v4;
  v30 = v4;
  *v31 = v4;
  v28 = v4;
  v29 = v4;
  v27 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v27);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "WakeStatus:'", 12);
  v6 = *a2;
  if (*a2 <= 1)
  {
    if (v6)
    {
      if (v6 != 1)
      {
LABEL_13:
        v7 = 8;
        v26 = 8;
        v9 = 0x64696C61766E496BLL;
        goto LABEL_14;
      }

      v7 = 13;
      v26 = 13;
      v8 = "kNotAvailable";
    }

    else
    {
      v7 = 13;
      v26 = 13;
      v8 = "kNotSupported";
    }

    *&__p = *v8;
    *(&__p + 5) = *(v8 + 5);
    goto LABEL_15;
  }

  switch(v6)
  {
    case 2:
      v7 = 10;
      v26 = 10;
      WORD4(__p) = 25701;
      v9 = *"kRequested";
      break;
    case 3:
      v7 = 10;
      v26 = 10;
      WORD4(__p) = 25964;
      v9 = *"kAvailable";
      break;
    case 4:
      v7 = 6;
      v26 = 6;
      qmemcpy(&__p, "kError", 6);
      goto LABEL_15;
    default:
      goto LABEL_13;
  }

LABEL_14:
  *&__p = v9;
LABEL_15:
  *(&__p + v7) = 0;
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &__p, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "'", 1);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  v12 = *(a2 + 1);
  v11 = (a2 + 2);
  if (MEMORY[0x29C272BA0](v12) == MEMORY[0x29EDCAA00])
  {
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, " WakeData:'", 11);
    xpc::object::to_string(&__p, v11);
    v14 = v26 >= 0 ? &__p : __p;
    v15 = v26 >= 0 ? v26 : *(&__p + 1);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "'", 1);
    if (v26 < 0)
    {
      operator delete(__p);
      v17 = BYTE8(v33);
      if ((BYTE8(v33) & 0x10) == 0)
      {
        goto LABEL_26;
      }

LABEL_30:
      v20 = v33;
      if (v33 < *(&v30 + 1))
      {
        *&v33 = *(&v30 + 1);
        v20 = *(&v30 + 1);
      }

      v19 = &v30;
      goto LABEL_33;
    }
  }

  v17 = BYTE8(v33);
  if ((BYTE8(v33) & 0x10) != 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  if ((v17 & 8) == 0)
  {
    v18 = 0;
    *(this + 23) = 0;
    goto LABEL_42;
  }

  v19 = &v28 + 1;
  v20 = *(&v29 + 1);
LABEL_33:
  v21 = *v19;
  v18 = v20 - *v19;
  if (v18 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v18 | 7) + 1;
    }

    v23 = operator new(v22);
    *(this + 1) = v18;
    *(this + 2) = v22 | 0x8000000000000000;
    *this = v23;
    this = v23;
    goto LABEL_41;
  }

  *(this + 23) = v18;
  if (v18)
  {
LABEL_41:
    memmove(this, v21, v18);
  }

LABEL_42:
  *(this + v18) = 0;
  *&v27 = *MEMORY[0x29EDC9538];
  *(&v27 + *(v27 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v27 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[1]);
  }

  *(&v27 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v28);
  std::ostream::~ostream();
  return MEMORY[0x29C271DA0](v34);
}

void sub_2974D4190(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::ostringstream::~ostringstream(&a9, MEMORY[0x29EDC9538]);
  MEMORY[0x29C271DA0](va);
  _Unwind_Resume(a1);
}

void TransportModule::sleep(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<TransportModule>::execute_wrapped<TransportModule::sleep(dispatch::group_session)::$_0>(TransportModule::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TransportModule::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<TransportModule::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
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

BOOL xpc::operator==<char const*>(const char **a1, xpc_object_t xdict, char *key)
{
  value = xpc_dictionary_get_value(xdict, key);
  if (value)
  {
    v5 = value;
    xpc_retain(value);
  }

  else
  {
    v5 = xpc_null_create();
  }

  v6 = xpc_string_create(*a1);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  v7 = xpc_equal(v6, v5);
  xpc_release(v6);
  xpc_release(v5);
  return v7;
}

void sub_2974D449C(_Unwind_Exception *a1)
{
  xpc_release(v2);
  xpc_release(v1);
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

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t dispatch::callback<void({block_pointer})(WakeReason)>::~callback(uint64_t a1)
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

void std::__shared_ptr_pointer<TransportModule *,std::shared_ptr<TransportModule> ctu::SharedSynchronizable<TransportModule>::make_shared_ptr<TransportModule>(TransportModule*)::{lambda(TransportModule *)#1},std::allocator<TransportModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<TransportModule *,std::shared_ptr<TransportModule> ctu::SharedSynchronizable<TransportModule>::make_shared_ptr<TransportModule>(TransportModule*)::{lambda(TransportModule *)#1},std::allocator<TransportModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI15TransportModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI15TransportModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI15TransportModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI15TransportModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<TransportModule> ctu::SharedSynchronizable<TransportModule>::make_shared_ptr<TransportModule>(TransportModule*)::{lambda(TransportModule*)#1}::operator() const(TransportModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ctu::SharedSynchronizable<TransportModule>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI15TransportModuleE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E442F8;
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

uint64_t __copy_helper_block_e8_40c44_ZTSNSt3__110shared_ptrIK15TransportModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c44_ZTSNSt3__110shared_ptrIK15TransportModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<TransportModule>::execute_wrapped<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  TransportModule::registerCommandHandlers_sync(**a1);
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

void sub_2974D4970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v1[1];
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

void dispatch::async<void ctu::SharedSynchronizable<TransportModule>::execute_wrapped<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  TransportModule::registerEventHandlers_sync(**a1);
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

void sub_2974D4AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_0,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E44338;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_0,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E44338;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_0,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E44338;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_0,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E44338;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_0,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_0,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_0,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
        dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<TransportModule>::execute_wrapped<TransportModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(TransportModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TransportModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<TransportModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

uint64_t std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_0,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN15TransportModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN15TransportModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN15TransportModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN15TransportModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<TransportModule>::execute_wrapped<TransportModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(TransportModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TransportModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<TransportModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v51 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v41 = *a1;
  v2 = **a1;
  v3 = v2[13];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I --------------- ABM Transport state ---------------", buf, 2u);
  }

  v4 = v2[18];
  if (!v4)
  {
LABEL_6:
    v6 = v2[16];
    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  object[0] = MEMORY[0x29EDCA5F8];
  object[1] = 0x40000000;
  object[2] = ___ZNK4data16TransportService5State9dumpStateEv_block_invoke;
  object[3] = &__block_descriptor_tmp_52;
  __s1[0] = object;
  object[4] = v4;
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
  v46 = &__block_descriptor_tmp_47;
  v47 = v4;
  v48 = __s1;
  v5 = v4[2];
  if (v4[3])
  {
    dispatch_async_and_wait(v5, buf);
    goto LABEL_6;
  }

  dispatch_sync(v5, buf);
  v6 = v2[16];
  if (v6)
  {
LABEL_7:
    (*(*v6 + 40))(v6);
  }

LABEL_8:
  memset(buf, 170, sizeof(buf));
  value = xpc_dictionary_get_value(v1[2], *MEMORY[0x29EDBE930]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(buf, object, *MEMORY[0x29EDBE7B8], v8);
  xpc_release(object[0]);
  memset(object, 170, 24);
  v9 = xpc_dictionary_get_value(v1[2], *MEMORY[0x29EDBEC90]);
  __s1[0] = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    __s1[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(object, __s1, *MEMORY[0x29EDBFC08], v10);
  xpc_release(__s1[0]);
  memset(__s1, 170, sizeof(__s1));
  v11 = xpc_dictionary_get_value(v1[2], *MEMORY[0x29EDBEB18]);
  *&v49 = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    *&v49 = xpc_null_create();
  }

  v13 = *MEMORY[0x29EDBECB0];
  xpc::dyn_cast_or_default(__s1, &v49, *MEMORY[0x29EDBECB0], v12);
  xpc_release(v49);
  v14 = strlen(v13);
  v15 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    if (v14 != __s1[1])
    {
      v16 = v2[13];
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      goto LABEL_42;
    }

    if (v14 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (memcmp(__s1[0], v13, v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v14 != SHIBYTE(__s1[2]))
    {
      v16 = v2[13];
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      goto LABEL_38;
    }

    if (memcmp(__s1, v13, v14))
    {
LABEL_20:
      v16 = v2[13];
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      if (v15 < 0)
      {
LABEL_42:
        v26 = __s1[0];
        goto LABEL_43;
      }

LABEL_38:
      v26 = __s1;
LABEL_43:
      LODWORD(v49) = 136315138;
      *(&v49 + 4) = v26;
      _os_log_impl(&dword_297476000, v16, OS_LOG_TYPE_DEFAULT, "#I Skipping snapshot as trace filter is '%s'", &v49, 0xCu);
      goto LABEL_44;
    }
  }

  v17 = v2[16];
  if (!v17)
  {
    goto LABEL_44;
  }

  v18 = *MEMORY[0x29EDBFBF8];
  v19 = SHIBYTE(object[2]);
  if (SHIBYTE(object[2]) >= 0)
  {
    v20 = HIBYTE(object[2]);
  }

  else
  {
    v20 = object[1];
  }

  v21 = strlen(*MEMORY[0x29EDBFBF8]);
  v22 = v20 + v21;
  if (v20 + v21 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v23 = v21;
  if (v22 > 0x16)
  {
    if ((v22 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v22 | 7) + 1;
    }

    v25 = operator new(v24);
    v42.__r_.__value_.__l.__size_ = v22;
    v42.__r_.__value_.__r.__words[2] = v24 | 0x8000000000000000;
    v42.__r_.__value_.__r.__words[0] = v25;
    if (!v20)
    {
      goto LABEL_67;
    }

    goto LABEL_63;
  }

  memset(&v42, 0, sizeof(v42));
  v25 = &v42;
  *(&v42.__r_.__value_.__s + 23) = v20 + v21;
  if (v20)
  {
LABEL_63:
    if (v19 >= 0)
    {
      v34 = object;
    }

    else
    {
      v34 = object[0];
    }

    memmove(v25, v34, v20);
  }

LABEL_67:
  v35 = &v25[v20];
  if (v23)
  {
    memmove(v35, v18, v23);
  }

  v35[v23] = 0;
  if ((buf[23] & 0x80u) == 0)
  {
    v36 = buf;
  }

  else
  {
    v36 = *buf;
  }

  if ((buf[23] & 0x80u) == 0)
  {
    v37 = buf[23];
  }

  else
  {
    v37 = *&buf[8];
  }

  v38 = std::string::append(&v42, v36, v37);
  v39 = *&v38->__r_.__value_.__l.__data_;
  v50 = v38->__r_.__value_.__r.__words[2];
  v49 = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  (*(*v17 + 48))(v17, &v49);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

LABEL_44:
  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
    if ((SHIBYTE(object[2]) & 0x80000000) == 0)
    {
LABEL_46:
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_52;
    }
  }

  else if ((SHIBYTE(object[2]) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  operator delete(object[0]);
  if ((buf[23] & 0x80000000) == 0)
  {
LABEL_47:
    v27 = v41;
    if (!v41)
    {
      goto LABEL_48;
    }

    goto LABEL_53;
  }

LABEL_52:
  operator delete(*buf);
  v27 = v41;
  if (!v41)
  {
LABEL_48:
    v28 = a1;
    if (!a1)
    {
      goto LABEL_61;
    }

    goto LABEL_57;
  }

LABEL_53:
  xpc_release(v27[2]);
  v27[2] = 0;
  v29 = v27[1];
  if (v29)
  {
    dispatch_group_leave(v29);
    v30 = v27[1];
    if (v30)
    {
      dispatch_release(v30);
    }
  }

  operator delete(v27);
  v28 = a1;
  if (a1)
  {
LABEL_57:
    v31 = v28[2];
    if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v32 = v28;
      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
      v28 = v32;
    }

    operator delete(v28);
  }

LABEL_61:
  v33 = *MEMORY[0x29EDCA608];
}

void sub_2974D54D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, xpc_object_t object, uint64_t a19, int a20, __int16 a21, char a22, char a23, xpc_object_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a23 & 0x80000000) == 0)
      {
LABEL_8:
        if (a29 < 0)
        {
          operator delete(a24);
        }

        if (a37 < 0)
        {
          operator delete(a32);
        }

        std::unique_ptr<TransportModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<TransportModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
        _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(object);
      goto LABEL_8;
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void *std::unique_ptr<TransportModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<TransportModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

uint64_t std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_1,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E443B8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_1,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E443B8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_1,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E443B8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_1,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E443B8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_1,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_1,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_1,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
        dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<TransportModule>::execute_wrapped<TransportModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(TransportModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TransportModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<TransportModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

uint64_t std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_1,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN15TransportModule26registerEventHandlers_syncEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN15TransportModule26registerEventHandlers_syncEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN15TransportModule26registerEventHandlers_syncEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN15TransportModule26registerEventHandlers_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<TransportModule>::execute_wrapped<TransportModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(TransportModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TransportModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<TransportModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  v28 = *a1;
  v2 = (*a1)->__vftable;
  get_deleter = v2[3].__get_deleter;
  if (!get_deleter)
  {
LABEL_4:
    if (!v2[3].~__shared_weak_count_0)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (MEMORY[0x29C272BA0](v1->__shared_weak_owners_) != MEMORY[0x29EDCAA00])
    {
      goto LABEL_6;
    }

    memset(block, 170, 24);
    value = xpc_dictionary_get_value(v1->__shared_weak_owners_, *MEMORY[0x29EDBEAF8]);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    xpc::dyn_cast_or_default(block, object, "", v10);
    xpc_release(object[0]);
    memset(object, 170, 24);
    v11 = xpc_dictionary_get_value(v1->__shared_weak_owners_, *MEMORY[0x29EDBEB00]);
    v30 = v11;
    if (v11)
    {
      xpc_retain(v11);
    }

    else
    {
      v30 = xpc_null_create();
    }

    xpc::dyn_cast_or_default(object, &v30, "", v12);
    xpc_release(v30);
    v13 = *MEMORY[0x29EDBEDF0];
    v14 = strlen(*MEMORY[0x29EDBEDF0]);
    v15 = SHIBYTE(block[2]);
    if ((SHIBYTE(block[2]) & 0x8000000000000000) != 0)
    {
      if (v14 == block[1])
      {
        if (v14 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(block[0], v13, v14))
        {
          goto LABEL_41;
        }
      }
    }

    else if (v14 == SHIBYTE(block[2]) && !memcmp(block, v13, v14))
    {
LABEL_41:
      (*(*v2[3].~__shared_weak_count_0 + 8))(v2[3].~__shared_weak_count_0);
      v21 = *v2[3].~__shared_weak_count_0;
LABEL_69:
      (*v21)();
      goto LABEL_70;
    }

    v16 = *MEMORY[0x29EDBF210];
    v17 = strlen(*MEMORY[0x29EDBF210]);
    if ((v15 & 0x80000000) != 0)
    {
      if (v17 != block[1])
      {
        goto LABEL_48;
      }

      if (v17 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(block[0], v16, v17))
      {
        goto LABEL_48;
      }
    }

    else if (v17 != v15 || memcmp(block, v16, v17))
    {
      goto LABEL_48;
    }

    v18 = strlen(*MEMORY[0x29EDBEB60]);
    v19 = v18;
    if ((SHIBYTE(object[2]) & 0x8000000000000000) != 0)
    {
      if (v18 != object[1])
      {
        goto LABEL_48;
      }

      if (v18 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v20 = object[0];
    }

    else
    {
      if (v18 != SHIBYTE(object[2]))
      {
        goto LABEL_48;
      }

      v20 = object;
    }

    if (!memcmp(v20, *MEMORY[0x29EDBEB60], v19))
    {
      if ((*(*v2[3].~__shared_weak_count_0 + 88))(v2[3].~__shared_weak_count_0))
      {
LABEL_68:
        v21 = (*v2[3].~__shared_weak_count_0 + 16);
        goto LABEL_69;
      }

      LOBYTE(v15) = HIBYTE(block[2]);
    }

LABEL_48:
    v22 = *MEMORY[0x29EDBF0C8];
    v23 = strlen(*MEMORY[0x29EDBF0C8]);
    if ((v15 & 0x80) != 0)
    {
      if (v23 == block[1])
      {
        if (v23 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(block[0], v22, v23))
        {
LABEL_65:
          if (!(*(*v2[3].~__shared_weak_count_0 + 88))(v2[3].~__shared_weak_count_0) || (*(*v2[3].~__shared_weak_count_0 + 88))(v2[3].~__shared_weak_count_0) && std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(object, *MEMORY[0x29EDBEB68]))
          {
            goto LABEL_68;
          }

LABEL_70:
          if (SHIBYTE(object[2]) < 0)
          {
            operator delete(object[0]);
            if ((SHIBYTE(block[2]) & 0x80000000) == 0)
            {
LABEL_72:
              v1 = v28;
              if (!v28)
              {
                goto LABEL_10;
              }

              goto LABEL_6;
            }
          }

          else if ((SHIBYTE(block[2]) & 0x80000000) == 0)
          {
            goto LABEL_72;
          }

          operator delete(block[0]);
          v1 = v28;
          if (!v28)
          {
            goto LABEL_10;
          }

          goto LABEL_6;
        }
      }
    }

    else if (v23 == v15 && !memcmp(block, v22, v23))
    {
      goto LABEL_65;
    }

    v24 = *MEMORY[0x29EDBF420];
    v25 = strlen(*MEMORY[0x29EDBF420]);
    if ((v15 & 0x80) != 0)
    {
      if (v25 != block[1])
      {
        goto LABEL_70;
      }

      if (v25 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(block[0], v24, v25))
      {
        goto LABEL_70;
      }
    }

    else if (v25 != v15 || memcmp(block, v24, v25))
    {
      goto LABEL_70;
    }

    (*(*v2[3].~__shared_weak_count_0 + 16))(v2[3].~__shared_weak_count_0);
    (*(*v2[3].~__shared_weak_count_0 + 56))(v2[3].~__shared_weak_count_0);
    on_zero_shared = v2[3].__on_zero_shared;
    v2[3].~__shared_weak_count_0 = 0;
    v2[3].__on_zero_shared = 0;
    if (on_zero_shared && !atomic_fetch_add(&on_zero_shared->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (on_zero_shared->__on_zero_shared)(on_zero_shared);
      std::__shared_weak_count::__release_weak(on_zero_shared);
    }

    goto LABEL_70;
  }

  object[0] = MEMORY[0x29EDCA5F8];
  object[1] = 0x40000000;
  object[2] = ___ZN4data16TransportService5State17unblockThrottlingEv_block_invoke;
  object[3] = &__block_descriptor_tmp_53;
  object[4] = get_deleter;
  v30 = object;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
  block[3] = &__block_descriptor_tmp_47;
  block[4] = get_deleter;
  block[5] = &v30;
  v4 = *(get_deleter + 2);
  if (*(get_deleter + 3))
  {
    dispatch_async_and_wait(v4, block);
    goto LABEL_4;
  }

  dispatch_sync(v4, block);
  if (v2[3].~__shared_weak_count_0)
  {
    goto LABEL_5;
  }

LABEL_6:
  xpc_release(v1->__shared_weak_owners_);
  v1->__shared_weak_owners_ = 0;
  shared_owners = v1->__shared_owners_;
  if (shared_owners)
  {
    dispatch_group_leave(shared_owners);
    v6 = v1->__shared_owners_;
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v1);
LABEL_10:
  v7 = a1;
  if (a1)
  {
    v8 = a1[2];
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        v7 = a1;
      }
    }

    operator delete(v7);
  }
}

void sub_2974D60F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, xpc_object_t object, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
    std::unique_ptr<TransportModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<TransportModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
    _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<TransportModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<TransportModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<TransportModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<TransportModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

uint64_t std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_2,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E44438;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_2,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E44438;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_2,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E44438;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_2,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E44438;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_2,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_2,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_2,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
        goto LABEL_19;
      }

      v10 = v7[10];
      if (!v10 || (v11 = v7[9], (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = operator new(8uLL);
      *v14 = v7;
      v15 = v7[11];
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<TransportModule>::execute_wrapped<TransportModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(TransportModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TransportModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<TransportModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_19:
        if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_8:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

LABEL_9:
  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_2,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN15TransportModule26registerEventHandlers_syncEvE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN15TransportModule26registerEventHandlers_syncEvE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN15TransportModule26registerEventHandlers_syncEvE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN15TransportModule26registerEventHandlers_syncEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<TransportModule>::execute_wrapped<TransportModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(TransportModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TransportModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<TransportModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 144);
  if (v4)
  {
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 0x40000000;
    v8[2] = ___ZN4data16TransportService5State17unblockThrottlingEv_block_invoke;
    v8[3] = &__block_descriptor_tmp_53;
    v8[4] = v4;
    v9 = v8;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
    block[3] = &__block_descriptor_tmp_47;
    block[4] = v4;
    block[5] = &v9;
    v5 = *(v4 + 16);
    if (!*(v4 + 24))
    {
      dispatch_sync(v5, block);
      v6 = *(v3 + 128);
      if (!v6)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    dispatch_async_and_wait(v5, block);
  }

  v6 = *(v3 + 128);
  if (v6)
  {
LABEL_5:
    (*(*v6 + 16))(v6);
  }

LABEL_6:
  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_2974D6750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_3,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E444B8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_3,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E444B8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_3,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E444B8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_3,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E444B8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_3,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_3,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_3,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
        goto LABEL_19;
      }

      v10 = v7[10];
      if (!v10 || (v11 = v7[9], (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = operator new(8uLL);
      *v14 = v7;
      v15 = v7[11];
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<TransportModule>::execute_wrapped<TransportModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(TransportModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TransportModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<TransportModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_19:
        if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_8:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

LABEL_9:
  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<TransportModule::registerEventHandlers_sync(void)::$_3,std::allocator<TransportModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN15TransportModule26registerEventHandlers_syncEvE3$_3")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN15TransportModule26registerEventHandlers_syncEvE3$_3" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN15TransportModule26registerEventHandlers_syncEvE3$_3"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN15TransportModule26registerEventHandlers_syncEvE3$_3" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<TransportModule>::execute_wrapped<TransportModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(TransportModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TransportModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<TransportModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v3[13];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I --------------- ABM Transport state ---------------", buf, 2u);
  }

  v5 = v3[18];
  if (v5)
  {
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 0x40000000;
    v9[2] = ___ZNK4data16TransportService5State9dumpStateEv_block_invoke;
    v9[3] = &__block_descriptor_tmp_52;
    v9[4] = v5;
    v10 = v9;
    *buf = MEMORY[0x29EDCA5F8];
    v12 = 0x40000000;
    v13 = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
    v14 = &__block_descriptor_tmp_47;
    v15 = v5;
    v16 = &v10;
    v6 = *(v5 + 16);
    if (!*(v5 + 24))
    {
      dispatch_sync(v6, buf);
      v7 = v3[16];
      if (!v7)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    dispatch_async_and_wait(v6, buf);
  }

  v7 = v3[16];
  if (v7)
  {
LABEL_7:
    (*(*v7 + 40))(v7);
  }

LABEL_8:
  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

void sub_2974D6D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<TransportModule>::execute_wrapped<TransportModule::sleep(dispatch::group_session)::$_0>(TransportModule::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TransportModule::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<TransportModule::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 144);
  if (!v4)
  {
LABEL_4:
    v6 = *(v3 + 128);
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 0x40000000;
  v11[2] = ___ZN4data16TransportService5State13enterLowPowerEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_46;
  v11[4] = v4;
  v12 = v11;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
  block[3] = &__block_descriptor_tmp_47;
  block[4] = v4;
  block[5] = &v12;
  isa = v4[2].isa;
  if (v4[3].isa)
  {
    dispatch_async_and_wait(isa, block);
    goto LABEL_4;
  }

  dispatch_sync(isa, block);
  v6 = *(v3 + 128);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  v7 = v2[1];
  block[0] = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v7);
  }

  (*(*v6 + 24))(v6, block);
  if (block[0])
  {
    dispatch_group_leave(block[0]);
    if (block[0])
    {
      dispatch_release(block[0]);
    }
  }

LABEL_11:
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
}

void sub_2974D6EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
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

void sub_2974D7144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void TraceManager::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x108uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v11[0] = v6;
  v11[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  TraceManager::TraceManager(v4, v11);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<TraceManager>::shared_ptr[abi:ne200100]<TraceManager,std::shared_ptr<TraceManager> ctu::SharedSynchronizable<TraceManager>::make_shared_ptr<TraceManager>(TraceManager*)::{lambda(TraceManager*)#1},0>(a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2;
  v9 = *a2 + 72;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 0x40000000;
  v12[2] = ___ZN12TraceManager4initEv_block_invoke;
  v12[3] = &__block_descriptor_tmp_6_0;
  v12[4] = v8;
  v13 = v12;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI12TraceManagerE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_110;
  block[4] = v9;
  block[5] = &v13;
  v10 = *(v8 + 88);
  if (*(v8 + 96))
  {
    dispatch_async_and_wait(v10, block);
  }

  else
  {
    dispatch_sync(v10, block);
  }
}

void sub_2974D72C8(_Unwind_Exception *exception_object)
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

void TraceManager::init(TraceManager *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN12TraceManager4initEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_6_0;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI12TraceManagerE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_110;
  block[4] = this + 72;
  block[5] = &v4;
  v2 = this + 88;
  v1 = *(this + 11);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

uint64_t TraceManager::TraceManager(uint64_t a1, uint64_t *a2)
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
    *a1 = &unk_2A1E42AA8;
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
    *a1 = &unk_2A1E42AA8;
  }

  *a1 = &unk_2A1E44538;
  ctu::OsLogContext::OsLogContext(v18, "com.apple.telephony.abm", "trace.mgr");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("trace.mgr", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v6);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v6;
  if (v6)
  {
    dispatch_retain(v6);
    *(a1 + 96) = 0;
    dispatch_release(v6);
  }

  else
  {
    *(a1 + 96) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](a1 + 104, v19);
  MEMORY[0x29C270D60](v19);
  ctu::OsLogContext::~OsLogContext(v18);
  *a1 = &unk_2A1E44538;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = a1 + 160;
  *(a1 + 168) = a1 + 160;
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  v7 = operator new(0x18uLL);
  v7[2] = 0;
  v7[1] = 0;
  *v7 = v7 + 1;
  *(a1 + 200) = v7;
  v18[0] = v7;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E44A40;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  *(a1 + 208) = v8;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  v9 = operator new(0x60uLL);
  BasebandCrashReasonFilter::BasebandCrashReasonFilter(v9);
  v18[0] = 0xAAAAAAAAAAAAAAAALL;
  v18[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<BasebandCrashReasonFilter>::shared_ptr[abi:ne200100]<BasebandCrashReasonFilter,std::shared_ptr<BasebandCrashReasonFilter> ctu::SharedSynchronizable<BasebandCrashReasonFilter>::make_shared_ptr<BasebandCrashReasonFilter>(BasebandCrashReasonFilter*)::{lambda(BasebandCrashReasonFilter*)#1},0>(v18, v9);
  v10 = *v18;
  *v18 = 0uLL;
  v11 = *(a1 + 240);
  *(a1 + 232) = v10;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = v18[1];
  if (v18[1] && !atomic_fetch_add((v18[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = operator new(0x68uLL);
  TraceCAReporter::TraceCAReporter(v13);
  v18[0] = 0xAAAAAAAAAAAAAAAALL;
  v18[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<TraceCAReporter>::shared_ptr[abi:ne200100]<TraceCAReporter,std::shared_ptr<TraceCAReporter> ctu::SharedSynchronizable<TraceCAReporter>::make_shared_ptr<TraceCAReporter>(TraceCAReporter*)::{lambda(TraceCAReporter*)#1},0>(v18, v13);
  v14 = *v18;
  *v18 = 0uLL;
  v15 = *(a1 + 256);
  *(a1 + 248) = v14;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = v18[1];
  if (v18[1] && !atomic_fetch_add((v18[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  if (initServerLogging(void)::sOnce != -1)
  {
    dispatch_once(&initServerLogging(void)::sOnce, &__block_literal_global_12);
  }

  return a1;
}

void sub_2974D77D0(_Unwind_Exception *a1)
{
  v10 = v8;
  operator delete(v10);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v7);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v6);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v1 + 200);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v4);
  std::list<boost::signals2::connection>::~list(v3);
  if (*(v1 + 159) < 0)
  {
    operator delete(*(v1 + 136));
  }

  if (*(v1 + 135) < 0)
  {
    operator delete(*v9);
  }

  MEMORY[0x29C270D60](v1 + 104);
  ctu::SharedSynchronizable<data::TransportService::State>::~SharedSynchronizable(v2);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

void TraceManager::~TraceManager(TraceManager *this)
{
  *this = &unk_2A1E44538;
  v2 = this + 160;
  v3 = *(this + 21);
  if (v3 != this + 160)
  {
    do
    {
      boost::signals2::connection::disconnect((v3 + 16));
      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }

  if (*(this + 22))
  {
    v4 = *(this + 21);
    v5 = *(*(this + 20) + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    *(this + 22) = 0;
    if (v4 != v2)
    {
      do
      {
        v7 = *(v4 + 1);
        v8 = *(v4 + 3);
        if (v8 && atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
        {
          v9 = v4;
          (*(*v8 + 24))(v8);
          v4 = v9;
        }

        operator delete(v4);
        v4 = v7;
      }

      while (v7 != v2);
    }
  }

  v10 = *(this + 24);
  *(this + 23) = 0;
  *(this + 24) = 0;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = this + 104;
    v12 = *(this + 13);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v11 = this + 104;
  v12 = *(this + 13);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
LABEL_13:
    v32[0] = 0;
    _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#I Gone!", v32, 2u);
  }

LABEL_14:
  v13 = *(this + 32);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *(this + 30);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = *(this + 28);
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(this + 26);
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *(this + 24);
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    if (!*(this + 22))
    {
      goto LABEL_38;
    }
  }

  else if (!*(this + 22))
  {
    goto LABEL_38;
  }

  v18 = *(this + 21);
  v19 = *(*(this + 20) + 8);
  v20 = *v18;
  *(v20 + 8) = v19;
  *v19 = v20;
  *(this + 22) = 0;
  if (v18 != v2)
  {
    do
    {
      v21 = *(v18 + 1);
      v22 = *(v18 + 3);
      if (v22 && atomic_fetch_add(v22 + 3, 0xFFFFFFFF) == 1)
      {
        v23 = v18;
        (*(*v22 + 24))(v22);
        v18 = v23;
      }

      operator delete(v18);
      v18 = v21;
    }

    while (v21 != v2);
  }

LABEL_38:
  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
    if ((*(this + 135) & 0x80000000) == 0)
    {
LABEL_40:
      MEMORY[0x29C270D60](v11);
      v24 = *(this + 12);
      if (!v24)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }
  }

  else if ((*(this + 135) & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

  operator delete(*(this + 14));
  MEMORY[0x29C270D60](v11);
  v24 = *(this + 12);
  if (v24)
  {
LABEL_41:
    dispatch_release(v24);
  }

LABEL_42:
  v25 = *(this + 11);
  if (v25)
  {
    dispatch_release(v25);
  }

  v26 = *(this + 10);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  *this = &unk_2A1E500C0;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v27 = *(this + 3);
  if (v27)
  {
    v28 = *(this + 4);
    v29 = *(this + 3);
    if (v28 != v27)
    {
      do
      {
        v30 = *(v28 - 1);
        v28 -= 3;
        if (v30 < 0)
        {
          operator delete(*v28);
        }
      }

      while (v28 != v27);
      v29 = *(this + 3);
    }

    *(this + 4) = v27;
    operator delete(v29);
  }

  v31 = *(this + 2);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }
}

{
  TraceManager::~TraceManager(this);

  operator delete(v1);
}

void ___ZN12TraceManager4initEv_block_invoke(uint64_t a1)
{
  v212 = *MEMORY[0x29EDCA608];
  v172 = *(a1 + 32);
  v1 = v172[13];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v1, OS_LOG_TYPE_DEFAULT, "#I Initializing", buf, 2u);
  }

  v2 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v3 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(buf, v2);
    v4 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v5 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v3 = off_2A18CADD8;
  }

  block[5] = v3;
  v179 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v3 + 16))(&v180, v3);
  v7 = std::__shared_weak_count::lock(v181);
  v8 = v180;
  v182 = v180;
  v183 = v7;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ctu20SharedSynchronizableI12TraceManagerE13connect_eventIN5boost8signals26signalIFvNS_2cf11CFSharedRefIK14__CFDictionaryEEENS5_19optional_last_valueIvEEiNSt3__14lessIiEENS4_8functionISC_EENSI_IFvRKNS5_10connectionESB_EEENS5_5mutexEEES1_vJSB_EEEDTcl7connectfp_cvNSF_10shared_ptrIS1_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FSV_SX_E_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_85;
  aBlock[4] = v172 + 9;
  aBlock[5] = TraceManager::handleDumpLogsIndication_sync;
  aBlock[6] = 0;
  v9 = _Block_copy(aBlock);
  v10 = v172[10];
  if (!v10 || (v11 = v172[9], (v173 = std::__shared_weak_count::lock(v10)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v172[11];
  v186 = v12;
  if (v9)
  {
    v13 = _Block_copy(v9);
  }

  else
  {
    v13 = 0;
  }

  v187 = v13;
  dispatch_retain(v12);
  v188 = 0u;
  v189 = 0u;
  v192 = v12;
  if (v13)
  {
    v13 = _Block_copy(v13);
  }

  v193 = v13;
  dispatch_retain(v12);
  object = v12;
  v169 = v9;
  v170 = v8;
  v176 = v11;
  if (!v13)
  {
    v198 = 0;
    dispatch_retain(v12);
    goto LABEL_29;
  }

  v14 = _Block_copy(v13);
  v198 = v14;
  dispatch_retain(v12);
  if (!v14)
  {
LABEL_29:
    dispatch_retain(v12);
    v194 = 0;
    goto LABEL_30;
  }

  v15 = _Block_copy(v14);
  dispatch_retain(v12);
  v194 = 0;
  if (!v15)
  {
LABEL_30:
    dispatch_retain(v12);
    v15 = 0;
    v20 = 1;
LABEL_31:
    dispatch_retain(v12);
    v16 = 0;
    v21 = 1;
LABEL_32:
    v174 = v15;
    dispatch_retain(v12);
    v17 = 0;
    v22 = 1;
LABEL_33:
    dispatch_retain(v12);
    v18 = 0;
    v195 = v12;
    v23 = 1;
    goto LABEL_34;
  }

  v16 = _Block_copy(v15);
  dispatch_retain(v12);
  if (!v16)
  {
    v20 = 0;
    goto LABEL_31;
  }

  v17 = _Block_copy(v16);
  dispatch_retain(v12);
  if (!v17)
  {
    v20 = 0;
    v21 = 0;
    goto LABEL_32;
  }

  v18 = _Block_copy(v17);
  dispatch_retain(v12);
  v174 = v15;
  if (!v18)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_33;
  }

  v19 = _Block_copy(v18);
  dispatch_retain(v12);
  v195 = v12;
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v196 = _Block_copy(v19);
    dispatch_retain(v12);
    dispatch_release(v12);
    _Block_release(v19);
    goto LABEL_35;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
LABEL_34:
  v196 = 0;
  dispatch_retain(v12);
  dispatch_release(v12);
LABEL_35:
  dispatch_release(v12);
  if ((v23 & 1) == 0)
  {
    _Block_release(v18);
  }

  dispatch_release(v12);
  if ((v22 & 1) == 0)
  {
    _Block_release(v17);
  }

  v194 = boost::function1<void,ctu::cf::CFSharedRef<__CFDictionary const>>::assign_to<ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>>>(ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>>)::stored_vtable;
  dispatch_release(v12);
  if ((v21 & 1) == 0)
  {
    _Block_release(v16);
  }

  dispatch_release(v12);
  if ((v20 & 1) == 0)
  {
    _Block_release(v174);
  }

  *buf = 0;
  memset(&buf[8], 170, 24);
  boost::function1<void,ctu::cf::CFSharedRef<__CFDictionary const>>::move_assign(buf, &v194);
  boost::function1<void,ctu::cf::CFSharedRef<__CFDictionary const>>::move_assign(&v194, &v189 + 8);
  boost::function1<void,ctu::cf::CFSharedRef<__CFDictionary const>>::move_assign(&v189 + 8, buf);
  if (*buf && (buf[0] & 1) == 0 && **buf)
  {
    (**buf)(&buf[8], &buf[8], 2);
  }

  if (v194)
  {
    if ((v194 & 1) == 0 && *v194)
    {
      (*v194)(&v195, &v195, 2u);
    }

    v194 = 0;
  }

  dispatch_release(object);
  if (v198)
  {
    _Block_release(v198);
  }

  dispatch_release(v192);
  if (v193)
  {
    _Block_release(v193);
  }

  atomic_fetch_add_explicit(&v173->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = operator new(0x18uLL);
  *v24 = &unk_2A1E44CA8;
  v24[1] = v176;
  v24[2] = v173;
  atomic_fetch_add_explicit(&v173->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v25 = operator new(0x18uLL);
  *v25 = &unk_2A1E44CA8;
  v25[1] = v176;
  v25[2] = v173;
  atomic_fetch_add_explicit(&v173->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *&buf[8] = v25;
  *buf = 2;
  v26 = *(&v188 + 1);
  if (*(&v188 + 1) < v189)
  {
    v27 = operator new(0x18uLL);
    v28 = v170;
    *v27 = &unk_2A1E44CA8;
    v27[1] = v176;
    v27[2] = v173;
    atomic_fetch_add_explicit(&v173->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v26 + 8) = v27;
    *v26 = 2;
    *(&v188 + 1) = v26 + 24;
LABEL_58:
    (*(*v25 + 8))(v25);
    goto LABEL_59;
  }

  v129 = std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__emplace_back_slow_path<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>(&v188, buf);
  v28 = v170;
  v130 = *buf ^ (*buf >> 31);
  *(&v188 + 1) = v129;
  if (v130 == 2)
  {
    v25 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (v130 == 1)
  {
    v131 = *&buf[16];
    if (*&buf[16] && atomic_fetch_add((*&buf[16] + 12), 0xFFFFFFFF) == 1)
    {
LABEL_250:
      (*(*v131 + 24))(v131);
    }
  }

  else
  {
    v131 = *&buf[16];
    if (*&buf[16] && atomic_fetch_add((*&buf[16] + 12), 0xFFFFFFFF) == 1)
    {
      goto LABEL_250;
    }
  }

LABEL_59:
  (*(*v24 + 8))(v24);
  std::__shared_weak_count::__release_weak(v173);
  v29 = *(v28 + 56);
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v206 = v30;
  v207 = v30;
  v204 = v30;
  v205 = v30;
  v202 = v30;
  v203 = v30;
  v200 = v30;
  v201 = v30;
  *buf = v30;
  *&buf[16] = v30;
  v31 = v29[3];
  v208 = 10;
  __p = buf;
  v210 = 0;
  v211 = v31;
  pthread_mutex_lock(v31);
  v32 = v29[1];
  v177 = v29;
  if (!v32 || atomic_load_explicit(v32 + 2, memory_order_acquire) != 1)
  {
    v36 = operator new(0x20uLL);
    v37 = *v29;
    v38 = **v29;
    v171 = v36;
    v39 = operator new(0x40uLL);
    v40 = v39;
    *v39 = v39;
    v39[1] = v39;
    v39[2] = 0;
    v41 = *(v38 + 1);
    if (v41 != v38)
    {
      v42 = 0;
      v43 = v39;
      do
      {
        v44 = operator new(0x20uLL);
        v44[2] = *(v41 + 2);
        v45 = *(v41 + 3);
        v44[3] = v45;
        if (v45)
        {
          atomic_fetch_add_explicit((v45 + 8), 1u, memory_order_relaxed);
          v43 = *v40;
          v42 = v40[2];
        }

        *v44 = v43;
        v44[1] = v40;
        v43[1] = v44;
        *v40 = v44;
        v40[2] = ++v42;
        v41 = *(v41 + 1);
        v43 = v44;
      }

      while (v41 != v38);
    }

    v168 = v37;
    v40[3] = 0;
    v40[4] = 0;
    v46 = v40 + 4;
    v40[5] = 0;
    *(v40 + 48) = *(v38 + 48);
    v175 = (v40 + 3);
    v40[3] = v40 + 4;
    v47 = *(v38 + 3);
    v48 = (v38 + 32);
    if (v47 == (v38 + 32))
    {
LABEL_69:
      *(v40 + 56) = *(v38 + 56);
      v49 = *(v38 + 3);
      if (v49 != v48)
      {
        v50 = v40[3];
        v51 = v40[1];
        do
        {
          v50[6] = v51;
          v52 = v38;
          if (v49 != v48)
          {
            v52 = v49[6];
          }

          v53 = v49[1];
          v54 = v53;
          v55 = v49;
          if (v53)
          {
            do
            {
              v56 = v54;
              v54 = *v54;
            }

            while (v54);
          }

          else
          {
            do
            {
              v56 = v55[2];
              v100 = *v56 == v55;
              v55 = v56;
            }

            while (!v100);
          }

          v57 = v38;
          if (v56 != v48)
          {
            v57 = v56[6];
          }

          while (v52 != v57)
          {
            v52 = *(v52 + 1);
            v51 = *(v51 + 8);
          }

          if (v53)
          {
            do
            {
              v58 = v53;
              v53 = *v53;
            }

            while (v53);
          }

          else
          {
            do
            {
              v58 = v49[2];
              v100 = *v58 == v49;
              v49 = v58;
            }

            while (!v100);
          }

          v59 = v50[1];
          if (v59)
          {
            do
            {
              v60 = v59;
              v59 = *v59;
            }

            while (v59);
          }

          else
          {
            do
            {
              v60 = v50[2];
              v100 = *v60 == v50;
              v50 = v60;
            }

            while (!v100);
          }

          v49 = v58;
          v50 = v60;
        }

        while (v58 != v48);
      }

      *v171 = v40;
      v171[1] = 0;
      v80 = operator new(0x18uLL);
      *(v80 + 1) = 0x100000001;
      *v80 = &unk_2A1E44AF0;
      *(v80 + 2) = v40;
      v171[1] = v80;
      v171[2] = v168[2];
      v81 = v168[3];
      v171[3] = v81;
      if (v81)
      {
        atomic_fetch_add_explicit(v81 + 2, 1u, memory_order_relaxed);
      }

      v194 = v171;
      v195 = 0;
      v82 = operator new(0x18uLL);
      v82[1] = 0x100000001;
      *v82 = &unk_2A1E44A90;
      v82[2] = v171;
      v83 = v177[1];
      v194 = *v177;
      *v177 = v171;
      v177[1] = v82;
      v195 = v83;
      if (v83)
      {
        if (atomic_fetch_add(v83 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v83 + 16))(v83);
          if (atomic_fetch_add(v83 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v83 + 24))(v83);
          }
        }
      }

      v33 = **v177;
      v35 = -1;
LABEL_148:
      v34 = *(v33 + 1);
      if (v33 == v34)
      {
        goto LABEL_243;
      }

      goto LABEL_149;
    }

    while (1)
    {
      v61 = *(v47 + 8);
      v62 = *v175;
      v63 = *v46;
      v64 = v40 + 4;
      if (*v175 != v46)
      {
        v65 = *v46;
        v66 = v40 + 4;
        if (v63)
        {
          do
          {
            v64 = v65;
            v65 = v65[1];
          }

          while (v65);
        }

        else
        {
          do
          {
            v64 = v66[2];
            v100 = *v64 == v66;
            v66 = v64;
          }

          while (v100);
        }

        v67 = *(v47 + 10);
        v68 = *(v64 + 8);
        if (v68 == v61)
        {
          if (v61 != 1)
          {
            goto LABEL_114;
          }

          if (*(v64 + 10) >= v67)
          {
            v69 = *v46;
            v70 = v40 + 4;
            v71 = v40 + 4;
            if (v63)
            {
              goto LABEL_118;
            }

LABEL_125:
            v75 = operator new(0x38uLL);
            v76 = *(v47 + 2);
            v75[6] = v47[6];
            *(v75 + 2) = v76;
            *v75 = 0;
            v75[1] = 0;
            v75[2] = v71;
            *v70 = v75;
            if (*v62)
            {
              *v175 = *v62;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v40[4], v75);
            ++v40[5];
            goto LABEL_128;
          }
        }

        else if (v68 >= v61)
        {
LABEL_114:
          v70 = v40 + 4;
          v71 = v40 + 4;
          if (!v63)
          {
            goto LABEL_125;
          }

          v69 = *v46;
          if (v61 != 1)
          {
            v72 = *(v63 + 8);
            v71 = *v46;
            while (v61 != v72)
            {
              if (v61 < v72)
              {
                v79 = *v71;
                v70 = v71;
                if (!*v71)
                {
                  goto LABEL_125;
                }
              }

              else
              {
                if (v72 >= v61)
                {
                  goto LABEL_128;
                }

                v79 = v71[1];
                if (!v79)
                {
                  goto LABEL_124;
                }
              }

              v72 = *(v79 + 32);
              v71 = v79;
            }

            goto LABEL_128;
          }

          while (1)
          {
LABEL_118:
            v71 = v69;
            v73 = *(v69 + 8);
            if (v73 == 1)
            {
              v74 = *(v69 + 10);
              if (v74 > v67)
              {
                goto LABEL_117;
              }

              if (v74 >= v67)
              {
                goto LABEL_128;
              }
            }

            else if (v73 > 1)
            {
LABEL_117:
              v69 = *v69;
              v70 = v71;
              if (!*v71)
              {
                goto LABEL_125;
              }

              continue;
            }

            v69 = v69[1];
            if (!v69)
            {
LABEL_124:
              v70 = v71 + 1;
              goto LABEL_125;
            }
          }
        }
      }

      if (v63)
      {
        v71 = v64;
      }

      else
      {
        v71 = v40 + 4;
      }

      if (v63)
      {
        v70 = v64 + 1;
      }

      else
      {
        v70 = v40 + 4;
      }

      if (!*v70)
      {
        goto LABEL_125;
      }

LABEL_128:
      v77 = v47[1];
      if (v77)
      {
        do
        {
          v78 = v77;
          v77 = *v77;
        }

        while (v77);
      }

      else
      {
        do
        {
          v78 = v47[2];
          v100 = *v78 == v47;
          v47 = v78;
        }

        while (!v100);
      }

      v47 = v78;
      if (v78 == v48)
      {
        goto LABEL_69;
      }
    }
  }

  v33 = **v29;
  v34 = v29[2];
  v35 = 1;
  if (v34 == v33)
  {
    goto LABEL_148;
  }

LABEL_149:
  v84 = 0;
  do
  {
    v86 = *(v34 + 2);
    v87 = *(v86 + 32);
    if (v87)
    {
      for (i = *v87; i != v87[1]; i += 24)
      {
        if ((*i ^ (*i >> 31)) > 1)
        {
          if ((*(**(i + 8) + 24))(*(i + 8)))
          {
            goto LABEL_165;
          }
        }

        else
        {
          v89 = *(i + 16);
          if (!v89 || !atomic_load_explicit((v89 + 8), memory_order_acquire))
          {
LABEL_165:
            if (*(v86 + 24) == 1)
            {
              *(v86 + 24) = 0;
              boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(v86, buf);
            }

            break;
          }
        }
      }
    }

    v90 = *(v34 + 2);
    if (*(v90 + 24))
    {
      v33 = *(v34 + 1);
      goto LABEL_151;
    }

    v91 = **v177;
    v92 = (v91 + 32);
    v93 = *(v91 + 4);
    if (!v93)
    {
      if (*(v91 + 10) != v34)
      {
        goto LABEL_238;
      }

      v113 = *(v34 + 1);
      v115 = (v91 + 32);
      v96 = (v91 + 32);
      if (v113 != v91)
      {
        goto LABEL_234;
      }

LABEL_216:
      v118 = v96[1];
      v119 = v96;
      if (v118)
      {
        do
        {
          v120 = v118;
          v118 = *v118;
        }

        while (v118);
      }

      else
      {
        do
        {
          v120 = v119[2];
          v100 = *v120 == v119;
          v119 = v120;
        }

        while (!v100);
      }

      if (*(v91 + 3) == v96)
      {
        *(v91 + 3) = v120;
      }

      --*(v91 + 5);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v93, v96);
      operator delete(v96);
      goto LABEL_238;
    }

    v94 = *(v90 + 64);
    v95 = *(v90 + 72);
    v96 = (v91 + 32);
    v97 = *(v91 + 4);
    if (v94 == 1)
    {
      v96 = (v91 + 32);
      v98 = *(v91 + 4);
      do
      {
        while (1)
        {
          v103 = *(v98 + 32);
          v104 = v103 < 1;
          if (v103 == 1)
          {
            v104 = *(v98 + 40) < v95;
          }

          if (!v104)
          {
            break;
          }

          v98 = *(v98 + 8);
          if (!v98)
          {
            goto LABEL_184;
          }
        }

        v96 = v98;
        v98 = *v98;
      }

      while (v98);
    }

    else
    {
      do
      {
        v99 = *(v97 + 32);
        v100 = v99 == v94;
        v104 = v99 < v94;
        v101 = 8 * (v99 < v94);
        if (v104)
        {
          v102 = v96;
        }

        else
        {
          v102 = v97;
        }

        if (v100)
        {
          v101 = 0;
          v96 = v97;
        }

        else
        {
          v96 = v102;
        }

        v97 = *(v97 + v101);
      }

      while (v97);
    }

LABEL_184:
    if (v96[6] != v34)
    {
      goto LABEL_238;
    }

    v105 = (v91 + 32);
    v106 = *(v91 + 4);
    if (v94 == 1)
    {
      while (1)
      {
        v111 = *(v106 + 8);
        if (v111 == 1)
        {
          if (v95 < *(v106 + 10))
          {
            goto LABEL_199;
          }

LABEL_194:
          v106 = v106[1];
          if (!v106)
          {
            goto LABEL_200;
          }
        }

        else
        {
          if (v111 <= 1)
          {
            goto LABEL_194;
          }

LABEL_199:
          v105 = v106;
          v106 = *v106;
          if (!v106)
          {
            goto LABEL_200;
          }
        }
      }
    }

    do
    {
      v107 = *(v106 + 8);
      v108 = v94 == v107;
      v104 = v94 < v107;
      v109 = v94 >= v107;
      if (v104)
      {
        v110 = v106;
      }

      else
      {
        v110 = v105;
      }

      if (v108)
      {
        v109 = 1;
      }

      else
      {
        v105 = v110;
      }

      v106 = v106[v109];
    }

    while (v106);
LABEL_200:
    v112 = **v177;
    if (v105 != v92)
    {
      v112 = v105[6];
    }

    v113 = *(v34 + 1);
    if (v113 == v112)
    {
      goto LABEL_216;
    }

    if (v94 == 1)
    {
      while (1)
      {
        while (1)
        {
          v115 = v93;
          v116 = *(v93 + 8);
          if (v116 == 1)
          {
            break;
          }

          if (v116 <= 1)
          {
            goto LABEL_212;
          }

LABEL_206:
          v93 = *v93;
          if (!*v115)
          {
            v92 = v115;
            goto LABEL_234;
          }
        }

        v117 = *(v93 + 10);
        if (v117 > v95)
        {
          goto LABEL_206;
        }

        if (v117 >= v95)
        {
          *(v93 + 6) = v113;
          goto LABEL_238;
        }

LABEL_212:
        v93 = *(v93 + 1);
        if (!v93)
        {
          v92 = v115 + 1;
          goto LABEL_234;
        }
      }
    }

    v114 = *(v93 + 8);
    if (v94 == v114)
    {
      goto LABEL_237;
    }

    while (v94 >= v114)
    {
      if (v114 >= v94)
      {
        goto LABEL_237;
      }

      v121 = *(v93 + 1);
      if (!v121)
      {
        v92 = v93 + 8;
        goto LABEL_233;
      }

LABEL_225:
      v114 = *(v121 + 8);
      v93 = v121;
      if (v94 == v114)
      {
        v121[6] = v113;
        goto LABEL_238;
      }
    }

    v121 = *v93;
    if (*v93)
    {
      goto LABEL_225;
    }

    v92 = v93;
LABEL_233:
    v115 = v93;
LABEL_234:
    v93 = operator new(0x38uLL);
    v122 = *(v90 + 64);
    *(v93 + 10) = *(v90 + 72);
    *(v93 + 4) = v122;
    *(v93 + 6) = 0;
    *v93 = 0;
    *(v93 + 1) = 0;
    *(v93 + 2) = v115;
    *v92 = v93;
    v123 = **(v91 + 3);
    if (v123)
    {
      *(v91 + 3) = v123;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v91 + 4), v93);
    ++*(v91 + 5);
LABEL_237:
    *(v93 + 6) = v113;
LABEL_238:
    v124 = *v34;
    v33 = *(v34 + 1);
    *(v124 + 8) = v33;
    *v33 = v124;
    --*(v91 + 2);
    v125 = *(v34 + 3);
    if (v125)
    {
      if (atomic_fetch_add(v125 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v125 + 16))(v125);
        if (atomic_fetch_add(v125 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v125 + 24))(v125);
        }
      }
    }

    operator delete(v34);
LABEL_151:
    v85 = v33 != **v177 && v35 >= ++v84;
    v34 = v33;
  }

  while (v85);
LABEL_243:
  v177[2] = v33;
  v126 = operator new(0x50uLL);
  *(v126 + 1) = 0;
  *(v126 + 2) = 0;
  v126[24] = 1;
  *(v126 + 7) = 1;
  *v126 = &unk_2A1E44B50;
  v127 = operator new(0x38uLL);
  std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::vector[abi:ne200100](v127, &v188);
  v127[3] = 0;
  v128 = *(&v189 + 1);
  if (*(&v189 + 1))
  {
    v127[3] = *(&v189 + 1);
    if (v128)
    {
      *(v127 + 2) = v190;
      v127[6] = v191;
    }

    else
    {
      (*v128)(&v190, v127 + 32, 0);
    }
  }

  *(v126 + 5) = 0;
  *(v126 + 4) = v127;
  v132 = operator new(0x18uLL);
  v132[1] = 0x100000001;
  *v132 = &unk_2A1E44BA8;
  v132[2] = v127;
  *(v126 + 5) = v132;
  *(v126 + 6) = v177[3];
  v133 = v177[4];
  *(v126 + 7) = v133;
  if (v133)
  {
    atomic_fetch_add_explicit(v133 + 2, 1u, memory_order_relaxed);
  }

  *(v126 + 16) = 0;
  v126[68] = 0;
  object = v126;
  v198 = 0;
  v134 = operator new(0x18uLL);
  *(v134 + 1) = 0x100000001;
  *v134 = &unk_2A1E44C08;
  *(v134 + 2) = v126;
  v198 = v134;
  v135 = **v177;
  v136 = operator new(0x20uLL);
  v137 = (v135 + 32);
  v136[2] = v126;
  v136[3] = v134;
  atomic_fetch_add_explicit(v134 + 2, 1u, memory_order_relaxed);
  v138 = *v135;
  *(v138 + 8) = v136;
  *v136 = v138;
  *v135 = v136;
  v136[1] = v135;
  ++*(v135 + 2);
  v139 = *(v135 + 4);
  if (v139)
  {
    v140 = v135 + 32;
    v141 = *(v135 + 4);
    do
    {
      v142 = *(v141 + 32);
      v143 = v142 == 2;
      v104 = v142 < 2;
      v144 = v142 < 2;
      if (!v104)
      {
        v140 = v141;
      }

      if (v143)
      {
        v140 = v141;
      }

      v141 = *(v141 + 8 * v144);
    }

    while (v141);
    if (v140 == v137 || *(v140 + 32) != 2)
    {
      v145 = *(v139 + 8);
      while (v145 != 2)
      {
        if (v145 < 3)
        {
          v146 = v139[1];
          if (!v146)
          {
            v137 = v139 + 1;
            goto LABEL_271;
          }
        }

        else
        {
          v146 = *v139;
          v137 = v139;
          if (!*v139)
          {
            goto LABEL_271;
          }
        }

        v145 = *(v146 + 8);
        v139 = v146;
      }
    }
  }

  else
  {
    v139 = (v135 + 32);
LABEL_271:
    v147 = operator new(0x38uLL);
    v147[4] = 0xAAAAAA0000000002;
    *(v147 + 10) = -1431655766;
    v147[6] = v136;
    *v147 = 0;
    v147[1] = 0;
    v147[2] = v139;
    *v137 = v147;
    v148 = **(v135 + 3);
    if (v148)
    {
      *(v135 + 3) = v148;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v135 + 4), v147);
    ++*(v135 + 5);
    v126 = object;
  }

  *(v126 + 16) = 2;
  *(v126 + 68) = 0xAAAAAAAAAAAAAA00;
  atomic_fetch_add_explicit(v134 + 3, 1u, memory_order_relaxed);
  *&v184 = v126;
  *(&v184 + 1) = v134;
  atomic_fetch_add_explicit(v134 + 3, 1u, memory_order_relaxed);
  if (atomic_fetch_add(v134 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v134 + 24))(v134);
  }

  v149 = v198;
  if (v198)
  {
    if (atomic_fetch_add(v198 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v149 + 16))(v149);
      if (atomic_fetch_add(v149 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v149 + 24))(v149);
      }
    }
  }

  pthread_mutex_unlock(v211);
  v150 = __p;
  if (__p)
  {
    if (v210 > 0)
    {
      v166 = __p + 16 * v210;
      do
      {
        v167 = *(v166 - 1);
        if (v167)
        {
          if (atomic_fetch_add(v167 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v167 + 16))(v167);
            if (atomic_fetch_add(v167 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v167 + 24))(v167);
            }
          }
        }

        v166 -= 16;
      }

      while (v166 > v150);
    }

    if (v208 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v151 = v172;
  v152 = v173;
  if (*(&v189 + 1))
  {
    if ((BYTE8(v189) & 1) == 0 && **(&v189 + 1))
    {
      (**(&v189 + 1))(&v190, &v190, 2);
    }

    *(&v189 + 1) = 0;
  }

  v153 = v188;
  if (v188)
  {
    v154 = *(&v188 + 1);
    v155 = v188;
    if (*(&v188 + 1) != v188)
    {
      do
      {
        v154 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v154);
      }

      while (v154 != v153);
      v155 = v188;
    }

    *(&v188 + 1) = v153;
    operator delete(v155);
    v151 = v172;
    v152 = v173;
  }

  dispatch_release(v186);
  if (v187)
  {
    _Block_release(v187);
  }

  if (atomic_fetch_add(&v152->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v169)
    {
      goto LABEL_301;
    }

LABEL_300:
    _Block_release(v169);
  }

  else
  {
    (v152->__on_zero_shared)(v152);
    std::__shared_weak_count::__release_weak(v152);
    if (v169)
    {
      goto LABEL_300;
    }
  }

LABEL_301:
  v156 = operator new(0x20uLL);
  v156[1] = v184;
  v184 = 0uLL;
  v157 = v151[20];
  *v156 = v157;
  *(v156 + 1) = v151 + 20;
  *(v157 + 8) = v156;
  v151[20] = v156;
  ++v151[22];
  v158 = v183;
  if (v183 && !atomic_fetch_add(&v183->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v158->__on_zero_shared)(v158);
    std::__shared_weak_count::__release_weak(v158);
  }

  if (v181)
  {
    std::__shared_weak_count::__release_weak(v181);
  }

  if (v179 && !atomic_fetch_add(&v179->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v179->__on_zero_shared)(v179);
    std::__shared_weak_count::__release_weak(v179);
  }

  v159 = *MEMORY[0x29EDBFBF0];
  v160 = strlen(*MEMORY[0x29EDBFBF0]);
  if (v160 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v161 = v160;
  if (v160 >= 0x17)
  {
    if ((v160 | 7) == 0x17)
    {
      v163 = 25;
    }

    else
    {
      v163 = (v160 | 7) + 1;
    }

    v162 = operator new(v163);
    *&buf[8] = v161;
    *&buf[16] = v163 | 0x8000000000000000;
    *buf = v162;
    goto LABEL_317;
  }

  buf[23] = v160;
  v162 = buf;
  if (v160)
  {
LABEL_317:
    memmove(v162, v159, v161);
  }

  v162[v161] = 0;
  support::fs::createDir(buf, 0x1EDu, 1);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN12TraceManager4initEv_block_invoke_2;
  block[3] = &__block_descriptor_tmp_3;
  block[4] = v172;
  dispatch_async(global_queue, block);
  v165 = *MEMORY[0x29EDCA608];
}

void sub_2974D9588(uint64_t a1, int a2)
{
  if (a2)
  {
    boost::signals2::slot_base::~slot_base(v4);
    operator delete(v4);
    *v2 = &unk_2A1E41C60;
    boost::weak_ptr<void>::~weak_ptr(v3);
    JUMPOUT(0x2974D98E0);
  }

  JUMPOUT(0x2974D98F0);
}

void sub_2974D95C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a2)
  {
    boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(&a55);
    (*(*v55 + 8))(v55);
    std::__shared_weak_count::__release_weak(a13);
    JUMPOUT(0x2974D9900);
  }

  JUMPOUT(0x2974D98F0);
}

void sub_2974D9614(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::invocation_state>(a11);
    __cxa_rethrow();
  }

  JUMPOUT(0x2974D98F0);
}

void sub_2974D9634(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a2)
  {
    __cxa_end_catch();
    boost::detail::shared_count::~shared_count((v60 + 8));
    JUMPOUT(0x2974D98F8);
  }

  JUMPOUT(0x2974D98F0);
}

void sub_2974D973C(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>>(v2);
    __cxa_rethrow();
  }

  JUMPOUT(0x2974D98F0);
}

void sub_2974D975C(uint64_t a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    boost::detail::shared_count::~shared_count(v4);
    *v2 = &unk_2A1E41C60;
    boost::weak_ptr<void>::~weak_ptr(v3);
    JUMPOUT(0x2974D98E0);
  }

  JUMPOUT(0x2974D98F0);
}

void sub_2974D9778(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2974D9780);
  }

  JUMPOUT(0x2974D98F0);
}

void sub_2974D978C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2974D9794);
  }

  JUMPOUT(0x2974D98F0);
}

void sub_2974D97C0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a2)
  {
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::~auto_buffer(&a55);
    JUMPOUT(0x2974D9900);
  }

  JUMPOUT(0x2974D98F0);
}

void sub_2974D97D4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2974D97DCLL);
  }

  JUMPOUT(0x2974D98F0);
}

void sub_2974D9808(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2974D9810);
  }

  JUMPOUT(0x2974D98F0);
}

void sub_2974D9838(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a2)
  {
    boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>::~shared_ptr(&a53);
    JUMPOUT(0x2974D98F8);
  }

  JUMPOUT(0x2974D98F0);
}

void sub_2974D985C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, void (**a49)(void, void, void), uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, void (**a55)(void, void, void))
{
  if (a2)
  {
    boost::function1<void,ctu::cf::CFSharedRef<__CFDictionary const>>::~function1(&a55);
    boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>::~function(&a49);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>>::~DispatchSlot(&a53);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>)>>::~DispatchSlot(&a47);
    boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>::~function((v55 + 24));
    boost::signals2::slot_base::~slot_base(&a39);
    JUMPOUT(0x2974D9908);
  }

  JUMPOUT(0x2974D98F0);
}

void sub_2974D989C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void TraceManager::handleDumpLogsIndication_sync(uint64_t a1, const __CFDictionary **a2)
{
  v67 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Received Dump logs indication from Baseband", buf, 2u);
  }

  memset(buf, 170, 24);
  Timestamp::Timestamp(buf);
  memset(&__dst, 170, sizeof(__dst));
  v5 = *MEMORY[0x29EDBE530];
  v6 = strlen(*MEMORY[0x29EDBE530]);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v6 | 7) + 1;
    }

    p_dst = operator new(v14);
    __dst.__r_.__value_.__l.__size_ = v7;
    __dst.__r_.__value_.__r.__words[2] = v14 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v6;
    p_dst = &__dst;
    if (!v6)
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      memset(&v61, 0, sizeof(v61));
      v9 = *a2;
      if (*a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      Bool = 0;
      v16 = 2;
      goto LABEL_75;
    }
  }

  memmove(p_dst, v5, v7);
  p_dst->__r_.__value_.__s.__data_[v7] = 0;
  memset(&v61, 0, sizeof(v61));
  v9 = *a2;
  if (!*a2)
  {
    goto LABEL_16;
  }

LABEL_7:
  v60[0] = 0xAAAAAAAAAAAAAAAALL;
  v60[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v60, v9);
  v10 = *MEMORY[0x29EDBE5C0];
  v11 = strlen(*MEMORY[0x29EDBE5C0]);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v11 | 7) + 1;
    }

    v13 = operator new(v17);
    v65 = v12;
    v66 = v17 | 0x8000000000000000;
    *v64 = v13;
    goto LABEL_21;
  }

  HIBYTE(v66) = v11;
  v13 = v64;
  if (v11)
  {
LABEL_21:
    memmove(v13, v10, v12);
  }

  v18 = *MEMORY[0x29EDC8E18];
  *(v13 + v12) = 0;
  ctu::cf::map_adapter::getString();
  if (SHIBYTE(__p[2]) >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v20 = HIBYTE(__p[2]);
  }

  else
  {
    v20 = __p[1];
  }

  std::string::append(&__dst, v19, v20);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v66) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }
  }

  else if ((SHIBYTE(v66) & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

  operator delete(*v64);
LABEL_30:
  memset(__p, 170, sizeof(__p));
  v21 = *MEMORY[0x29EDC8EF0];
  HIBYTE(v66) = 0;
  v64[0] = 0;
  ctu::cf::map_adapter::getString();
  if (SHIBYTE(v66) < 0)
  {
    operator delete(*v64);
  }

  *v64 = 1;
  v22 = radio::asString();
  v23 = strlen(v22);
  v24 = v23;
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    if (v23 == __p[1])
    {
      if (v23 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v25 = __p[0];
      goto LABEL_40;
    }

LABEL_43:
    v16 = 2;
    goto LABEL_44;
  }

  if (v23 != SHIBYTE(__p[2]))
  {
    goto LABEL_43;
  }

  v25 = __p;
LABEL_40:
  if (!memcmp(v25, v22, v24))
  {
    v16 = 5;
  }

  else
  {
    v16 = 2;
  }

LABEL_44:
  Bool = ctu::cf::map_adapter::getBool(v60, *MEMORY[0x29EDC8F50]);
  Int = ctu::cf::map_adapter::getInt(v60, *MEMORY[0x29EDC8E00]);
  v27 = Int;
  if (!capabilities::radio::initium(Int))
  {
    goto LABEL_68;
  }

  v28 = *MEMORY[0x29EDBF500];
  v29 = strlen(*MEMORY[0x29EDBF500]);
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
    v65 = v30;
    v66 = v32 | 0x8000000000000000;
    *v64 = v31;
    goto LABEL_53;
  }

  HIBYTE(v66) = v29;
  v31 = v64;
  if (v29)
  {
LABEL_53:
    memmove(v31, v28, v30);
  }

  *(v31 + v30) = 0;
  v33 = prop::bbtrace::get(v64, &v61);
  if (SHIBYTE(v66) < 0)
  {
    v34 = v33;
    operator delete(*v64);
    v33 = v34;
  }

  if (!v33)
  {
    v35 = *(a1 + 104);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *v64 = 0;
      _os_log_error_impl(&dword_297476000, v35, OS_LOG_TYPE_ERROR, "Failed to read trace anomaly detection level from properties", v64, 2u);
    }
  }

  *v64 = -1431655766;
  if ((util::convert<int>(&v61, v64, 0) & 1) == 0)
  {
    v38 = *(a1 + 104);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *v64 = 0;
      _os_log_error_impl(&dword_297476000, v38, OS_LOG_TYPE_ERROR, "Failed to convert anomaly detection level", v64, 2u);
      if (v27)
      {
LABEL_69:
        v36 = 1;
        v37 = *(a1 + 104);
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_64;
        }

        goto LABEL_63;
      }

      goto LABEL_72;
    }

    goto LABEL_68;
  }

  v36 = *v64;
  if (*v64 != 2)
  {
    if (*v64 != 1)
    {
      v37 = *(a1 + 104);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
LABEL_64:
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        MEMORY[0x29C270ED0](v60);
        goto LABEL_111;
      }

LABEL_63:
      *v64 = 67109376;
      *&v64[4] = v27;
      LOWORD(v65) = 1024;
      *(&v65 + 2) = v36;
      _os_log_impl(&dword_297476000, v37, OS_LOG_TYPE_DEFAULT, "#I Ignoring dump logs indication from baseband because dump level %d is insufficient for anomaly detection level %d", v64, 0xEu);
      goto LABEL_64;
    }

LABEL_68:
    if (v27)
    {
      goto LABEL_69;
    }
  }

LABEL_72:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  MEMORY[0x29C270ED0](v60);
LABEL_75:
  v39 = xpc_dictionary_create(0, 0, 0);
  if (v39 || (v39 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v39) == MEMORY[0x29EDCAA00])
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
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &__dst;
  }

  else
  {
    v41 = __dst.__r_.__value_.__r.__words[0];
  }

  v42 = xpc_string_create(v41);
  if (!v42)
  {
    v42 = xpc_null_create();
  }

  xpc_dictionary_set_value(v40, *MEMORY[0x29EDBEF60], v42);
  v43 = xpc_null_create();
  xpc_release(v42);
  xpc_release(v43);
  v44 = xpc_int64_create(v16);
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  xpc_dictionary_set_value(v40, *MEMORY[0x29EDBE578], v44);
  v45 = xpc_null_create();
  xpc_release(v44);
  xpc_release(v45);
  Timestamp::asString(buf, 0, 9, __p);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v46 = __p;
  }

  else
  {
    v46 = __p[0];
  }

  v47 = xpc_string_create(v46);
  if (!v47)
  {
    v47 = xpc_null_create();
  }

  xpc_dictionary_set_value(v40, *MEMORY[0x29EDBE930], v47);
  v48 = xpc_null_create();
  xpc_release(v47);
  xpc_release(v48);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v49 = xpc_BOOL_create(Bool);
  if (!v49)
  {
    v49 = xpc_null_create();
  }

  xpc_dictionary_set_value(v40, *MEMORY[0x29EDBF498], v49);
  v50 = xpc_null_create();
  xpc_release(v49);
  xpc_release(v50);
  v51 = *MEMORY[0x29EDBEBE0];
  v52 = strlen(*MEMORY[0x29EDBEBE0]);
  if (v52 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v53 = v52;
  if (v52 >= 0x17)
  {
    if ((v52 | 7) == 0x17)
    {
      v55 = 25;
    }

    else
    {
      v55 = (v52 | 7) + 1;
    }

    v54 = operator new(v55);
    __p[1] = v53;
    __p[2] = (v55 | 0x8000000000000000);
    __p[0] = v54;
LABEL_106:
    memmove(v54, v51, v53);
    *(v53 + v54) = 0;
    object = v40;
    if (v40)
    {
      goto LABEL_101;
    }

LABEL_107:
    object = xpc_null_create();
    goto LABEL_108;
  }

  HIBYTE(__p[2]) = v52;
  v54 = __p;
  if (v52)
  {
    goto LABEL_106;
  }

  LOBYTE(__p[0]) = 0;
  object = v40;
  if (!v40)
  {
    goto LABEL_107;
  }

LABEL_101:
  xpc_retain(v40);
LABEL_108:
  v57 = 0;
  Service::runCommand(a1, __p, &object, &v57);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v40);
LABEL_111:
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_113;
    }

LABEL_115:
    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_113;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_115;
  }

LABEL_113:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(buf, *&buf[8]);
  v56 = *MEMORY[0x29EDCA608];
}

void sub_2974DA16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN12TraceManager4initEv_block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *MEMORY[0x29EDBFBF0];
  v3 = strlen(*MEMORY[0x29EDBFBF0]);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
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

    p_p = operator new(v6);
    *&v18 = v4;
    *(&v18 + 1) = v6 | 0x8000000000000000;
    __p = p_p;
    goto LABEL_9;
  }

  HIBYTE(v18) = v3;
  p_p = &__p;
  if (v3)
  {
LABEL_9:
    memmove(p_p, v2, v4);
  }

  *(p_p + v4) = 0;
  v7 = support::fs::removeDirContents(&__p, 0);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (config::hw::watch(v7) && (TelephonyUtilIsInternalBuild() & 1) == 0 && (TelephonyUtilIsCarrierBuild() & 1) == 0)
  {
    v8 = *MEMORY[0x29EDBFC08];
    v9 = strlen(*MEMORY[0x29EDBFC08]);
    if (v9 > 0x7FFFFFFFFFFFFFF7)
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
      *&v18 = v10;
      *(&v18 + 1) = v12 | 0x8000000000000000;
      __p = v11;
    }

    else
    {
      HIBYTE(v18) = v9;
      v11 = &__p;
      if (!v9)
      {
        goto LABEL_24;
      }
    }

    memmove(v11, v8, v10);
LABEL_24:
    *(v11 + v10) = 0;
    v13 = support::fs::removeDirContents(&__p, 0x708uLL);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    v14 = *(v1 + 104);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "failed";
      if (v13)
      {
        v15 = "success";
      }

      __p = 0x1E04000202;
      LOWORD(v18) = 2080;
      *(&v18 + 2) = v15;
      _os_log_impl(&dword_297476000, v14, OS_LOG_TYPE_DEFAULT, "#I Deleting telephony log files older than %d mins %s", &__p, 0x12u);
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_2974DA548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void TraceManager::setupDumpLogsIndication_sync(NSObject **this)
{
  if (!capabilities::trace::supportsDumpLogIndication(this))
  {
    return;
  }

  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v2 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v3 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(buf, v2);
    v4 = *buf;
    memset(buf, 0, sizeof(buf));
    v5 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
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
  (*(*v3 + 16))(&v11, v3);
  v13 = 0;
  v14 = 0;
  if (v12)
  {
    v14 = std::__shared_weak_count::lock(v12);
    if (v14)
    {
      v13 = v11;
    }

    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = v13;
    if (v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = v13;
    if (v13)
    {
LABEL_20:
      v9 = this[13];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Enabling Dump logs indication", buf, 2u);
      }

      (*(*v8 + 152))(v8);
    }
  }

  v10 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

void sub_2974DA824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_WORD *TraceManager::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

char *TraceManager::getShutdownStages@<X0>(void *a1@<X8>)
{
  result = operator new(3uLL);
  a1[1] = result + 3;
  a1[2] = result + 3;
  *result = 512;
  result[2] = 3;
  *a1 = result;
  return result;
}

void TraceManager::shutdownWithStage(uint64_t a1, int a2, NSObject **a3)
{
  if (a2 == 3)
  {
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1174405120;
    v8[2] = ___ZN12TraceManager17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_14;
    v8[3] = &__block_descriptor_tmp_15_0;
    v7 = *a3;
    object = v7;
    if (v7)
    {
      dispatch_retain(v7);
      dispatch_group_enter(object);
    }

    ctu::SharedSynchronizable<TraceManager>::execute_wrapped((a1 + 72), v8);
    if (object)
    {
      dispatch_group_leave(object);
      v5 = object;
      if (object)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (a2 != 2)
    {
      if (a2)
      {
        return;
      }

      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 1174405120;
      v12[2] = ___ZN12TraceManager17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
      v12[3] = &__block_descriptor_tmp_9_2;
      v4 = *a3;
      v12[4] = a1;
      v13 = v4;
      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v13);
      }

      ctu::SharedSynchronizable<TraceManager>::execute_wrapped((a1 + 72), v12);
      if (!v13)
      {
        return;
      }

      dispatch_group_leave(v13);
      v5 = v13;
      if (!v13)
      {
        return;
      }

LABEL_18:
      dispatch_release(v5);
      return;
    }

    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN12TraceManager17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_10;
    v10[3] = &__block_descriptor_tmp_13_3;
    v6 = *a3;
    v10[4] = a1;
    group = v6;
    if (v6)
    {
      dispatch_retain(v6);
      dispatch_group_enter(group);
    }

    ctu::SharedSynchronizable<TraceManager>::execute_wrapped((a1 + 72), v10);
    if (group)
    {
      dispatch_group_leave(group);
      v5 = group;
      if (group)
      {
        goto LABEL_18;
      }
    }
  }
}

void ___ZN12TraceManager17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_null_create();
  v4 = *MEMORY[0x29EDBD3F8];
  v5 = *(a1 + 40);
  v7 = v5;
  object = v3;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  v6[0] = 0;
  v6[1] = 0;
  TraceManager::runOnHelper_sync(v2, 9, v4, 0x1F40u, 0, &object, &v7, v6);
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  xpc_release(object);
}

void sub_2974DAB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a9);
  if (v12)
  {
    dispatch_group_leave(v12);
    dispatch_release(v12);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void TraceManager::runOnHelper_sync(void *a1, const char *a2, uint64_t a3, unsigned int a4, char a5, xpc_object_t *a6, NSObject **a7, void **a8)
{
  v13 = a2;
  v56 = *MEMORY[0x29EDCA608];
  if ((a5 & 1) == 0 && !prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], a2) && !prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v15) && !prop::tracesettings::enabled(*MEMORY[0x29EDBE690], v16))
  {
    goto LABEL_70;
  }

  v17 = a1[13];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = abm::helper::asString();
    *&buf[12] = 2080;
    *&buf[14] = a3;
    _os_log_impl(&dword_297476000, v17, OS_LOG_TYPE_DEFAULT, "#I Running helper action: %s:%s", buf, 0x16u);
  }

  memset(buf, 170, 16);
  abm::HelperClient::create(buf, "tracing.helper", v18);
  v19 = MEMORY[0x29C272BA0](*a6);
  v20 = MEMORY[0x29EDCAA00];
  if (v19 != MEMORY[0x29EDCAA00])
  {
    v21 = xpc_dictionary_create(0, 0, 0);
    if (v21 || (v21 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C272BA0](v21) == v20)
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
    v23 = xpc_null_create();
    v24 = *a6;
    *a6 = v22;
    xpc_release(v24);
    xpc_release(v23);
  }

  if (a4)
  {
    v25 = xpc_int64_create(a4);
    if (!v25)
    {
      v25 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a6, *MEMORY[0x29EDBD2D8], v25);
    v26 = xpc_null_create();
    xpc_release(v25);
    xpc_release(v26);
  }

  if (!*a8 || !a8[1])
  {
    v28 = a1[10];
    if (!v28 || (v29 = a1[9], (v30 = std::__shared_weak_count::lock(v28)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v31 = v30;
    p_shared_weak_owners = &v30->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v31);
    }

    v50 = 0xAAAAAAAAAAAAAAAALL;
    v51 = 0xAAAAAAAAAAAAAAAALL;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN12TraceManager16runOnHelper_syncEN3abm6helper6TaskIDEPKcjbN3xpc4dictEN8dispatch13group_sessionENS7_8callbackIU13block_pointerFvN12TelephonyXPC6ResultES6_EEE_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_65_0;
    aBlock[4] = a1;
    aBlock[5] = v29;
    v44 = v31;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v33 = *a7;
    group = v33;
    if (v33)
    {
      dispatch_retain(v33);
      dispatch_group_enter(group);
    }

    v46 = *buf;
    v47 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    }

    v49 = v13;
    v48 = a3;
    v34 = _Block_copy(aBlock);
    v35 = a1[11];
    if (v35)
    {
      dispatch_retain(v35);
    }

    v50 = v34;
    v51 = v35;
    v42 = *a6;
    if (*a6)
    {
      xpc_retain(*a6);
      if (v34)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v42 = xpc_null_create();
      if (v34)
      {
LABEL_36:
        v40 = _Block_copy(v34);
        object = v35;
        if (!v35)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    v40 = 0;
    object = v35;
    if (!v35)
    {
LABEL_38:
      abm::HelperClient::perform();
      if (object)
      {
        dispatch_release(object);
      }

      if (v40)
      {
        _Block_release(v40);
      }

      xpc_release(v42);
      if (v35)
      {
        dispatch_release(v35);
      }

      if (v34)
      {
        _Block_release(v34);
      }

      v36 = v47;
      if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v36->__on_zero_shared)(v36);
        std::__shared_weak_count::__release_weak(v36);
      }

      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      if (v44)
      {
        std::__shared_weak_count::__release_weak(v44);
      }

      std::__shared_weak_count::__release_weak(v31);
      v37 = *&buf[8];
      if (*&buf[8])
      {
        goto LABEL_68;
      }

      goto LABEL_70;
    }

LABEL_37:
    dispatch_retain(v35);
    goto LABEL_38;
  }

  v54 = *a6;
  if (!v54)
  {
    v54 = xpc_null_create();
    v27 = *a8;
    if (!*a8)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  xpc_retain(v54);
  v27 = *a8;
  if (*a8)
  {
LABEL_60:
    v27 = _Block_copy(v27);
  }

LABEL_61:
  v38 = a8[1];
  v52 = v27;
  v53 = v38;
  if (v38)
  {
    dispatch_retain(v38);
  }

  abm::HelperClient::perform();
  if (v53)
  {
    dispatch_release(v53);
  }

  if (v52)
  {
    _Block_release(v52);
  }

  xpc_release(v54);
  v54 = 0;
  v37 = *&buf[8];
  if (*&buf[8])
  {
LABEL_68:
    if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
    }
  }

LABEL_70:
  v39 = *MEMORY[0x29EDCA608];
}

void sub_2974DB108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, dispatch_group_t group, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(uint64_t a1)
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

void ___ZN12TraceManager17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v3) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = (v2 + 112);
  if (*(v2 + 135) < 0)
  {
    v5 = *v5;
  }

  v6 = xpc_string_create(v5);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBE8F0], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  object = v4;
  if (v4)
  {
    xpc_retain(v4);
    v8 = *MEMORY[0x29EDBD3E0];
    v9 = *(a1 + 40);
    v11 = v9;
    if (!v9)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  object = xpc_null_create();
  v8 = *MEMORY[0x29EDBD3E0];
  v9 = *(a1 + 40);
  v11 = v9;
  if (v9)
  {
LABEL_13:
    dispatch_retain(v9);
    dispatch_group_enter(v9);
  }

LABEL_14:
  v10[0] = 0;
  v10[1] = 0;
  TraceManager::runOnHelper_sync(v2, 9, v8, 0x1388u, 0, &object, &v11, v10);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

void sub_2974DB430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a9);
  if (v13)
  {
    dispatch_group_leave(v13);
    dispatch_release(v13);
  }

  xpc_release(object);
  object = 0;
  xpc_release(v12);
  _Unwind_Resume(a1);
}

void TraceManager::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<TraceManager>::execute_wrapped<TraceManager::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(TraceManager::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceManager::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<TraceManager::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<TraceManager>::execute_wrapped<TraceManager::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(TraceManager::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceManager::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<TraceManager::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void TraceManager::registerCommandHandlers_sync(TraceManager *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_89:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_89;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_89;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  TraceManager::initTraceHelper_sync(this);
  v7 = *(this + 10);
  if (!v7 || (v8 = *(this + 9), (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  v11 = MEMORY[0x29EDBEF20];
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
  }

  v12 = *v11;
  v13 = *(this + 11);
  if (v13)
  {
    dispatch_retain(*(this + 11));
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_17;
  aBlock[4] = this;
  if (v12)
  {
    if (v13)
    {
      v14 = _Block_copy(aBlock);
      v15 = v14;
      v61 = v13;
      __dst = MEMORY[0x29EDCA5F8];
      v55 = 1174405120;
      v56 = ___ZN9analytics29registerCallbackForTimedEventI12TraceManagerEEvPKcNS_9TimerTypeENSt3__18weak_ptrIT_EEN8dispatch5queueEU13block_pointerFvNS5_12basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEE_block_invoke;
      v57 = &__block_descriptor_tmp_123_0;
      v58 = v8;
      v59 = v10;
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (v14)
      {
        v16 = _Block_copy(v14);
      }

      else
      {
        v16 = 0;
      }

      v60 = v16;
      analytics::registerCallbackForTimedEventImpl(v12, &v61);
      if (v61)
      {
        dispatch_release(v61);
      }

      if (v60)
      {
        _Block_release(v60);
      }

      if (v59)
      {
        std::__shared_weak_count::__release_weak(v59);
      }

      if (v15)
      {
        _Block_release(v15);
      }
    }
  }

  else if (v13)
  {
    dispatch_release(v13);
  }

  std::__shared_weak_count::__release_weak(v10);
  v17 = *MEMORY[0x29EDBF600];
  v18 = strlen(*MEMORY[0x29EDBF600]);
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v18;
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

    p_dst = operator new(v21);
    v55 = v19;
    v56 = v21 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_35;
  }

  HIBYTE(v56) = v18;
  p_dst = &__dst;
  if (v18)
  {
LABEL_35:
    memmove(p_dst, v17, v19);
  }

  *(p_dst + v19) = 0;
  v50[0] = MEMORY[0x29EDCA5F8];
  v50[1] = 1174405120;
  v50[2] = ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_2;
  v50[3] = &__block_descriptor_tmp_24_0;
  v50[4] = this;
  v50[5] = v4;
  v51 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v22 = _Block_copy(v50);
  v52 = v22;
  Service::registerCommandHandler(this, &__dst, &v52);
  if (v22)
  {
    _Block_release(v22);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(__dst);
  }

  v23 = *MEMORY[0x29EDBF5F0];
  v24 = strlen(*MEMORY[0x29EDBF5F0]);
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

    v26 = operator new(v27);
    v55 = v25;
    v56 = v27 | 0x8000000000000000;
    __dst = v26;
    goto LABEL_48;
  }

  HIBYTE(v56) = v24;
  v26 = &__dst;
  if (v24)
  {
LABEL_48:
    memmove(v26, v23, v25);
  }

  *(v26 + v25) = 0;
  v47[0] = MEMORY[0x29EDCA5F8];
  v47[1] = 1174405120;
  v47[2] = ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_25;
  v47[3] = &__block_descriptor_tmp_34_1;
  v47[4] = this;
  v47[5] = v4;
  v48 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v28 = _Block_copy(v47);
  v49 = v28;
  Service::registerCommandHandler(this, &__dst, &v49);
  if (v28)
  {
    _Block_release(v28);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(__dst);
  }

  v29 = *MEMORY[0x29EDBF4B8];
  v30 = strlen(*MEMORY[0x29EDBF4B8]);
  if (v30 > 0x7FFFFFFFFFFFFFF7)
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
    v55 = v31;
    v56 = v33 | 0x8000000000000000;
    __dst = v32;
    goto LABEL_61;
  }

  HIBYTE(v56) = v30;
  v32 = &__dst;
  if (v30)
  {
LABEL_61:
    memmove(v32, v29, v31);
  }

  *(v32 + v31) = 0;
  v44[0] = MEMORY[0x29EDCA5F8];
  v44[1] = 1174405120;
  v44[2] = ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_35;
  v44[3] = &__block_descriptor_tmp_40_2;
  v44[4] = this;
  v44[5] = v4;
  v45 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v34 = _Block_copy(v44);
  v46 = v34;
  Service::registerCommandHandler(this, &__dst, &v46);
  if (v34)
  {
    _Block_release(v34);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(__dst);
  }

  v35 = *MEMORY[0x29EDBE7D8];
  v36 = strlen(*MEMORY[0x29EDBE7D8]);
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

    v38 = operator new(v39);
    v55 = v37;
    v56 = v39 | 0x8000000000000000;
    __dst = v38;
    goto LABEL_74;
  }

  HIBYTE(v56) = v36;
  v38 = &__dst;
  if (v36)
  {
LABEL_74:
    memmove(v38, v35, v37);
  }

  *(v38 + v37) = 0;
  v41[0] = MEMORY[0x29EDCA5F8];
  v41[1] = 1174405120;
  v41[2] = ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_41;
  v41[3] = &__block_descriptor_tmp_50_0;
  v41[4] = this;
  v41[5] = v4;
  v42 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v40 = _Block_copy(v41);
  v43 = v40;
  Service::registerCommandHandler(this, &__dst, &v43);
  if (v40)
  {
    _Block_release(v40);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(__dst);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_weak(v48);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_weak(v51);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_2974DBD78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40)
{
  v45 = *(v43 - 112);
  if (v45)
  {
    _Block_release(v45);
  }

  v46 = *(v43 - 120);
  if (v46)
  {
    std::__shared_weak_count::__release_weak(v46);
    v47 = *(v43 - 104);
    if (!v47)
    {
LABEL_5:
      if (!v42)
      {
LABEL_10:
        std::__shared_weak_count::__release_weak(v41);
        std::__shared_weak_count::__release_weak(v40);
        _Unwind_Resume(a1);
      }

LABEL_9:
      _Block_release(v42);
      goto LABEL_10;
    }
  }

  else
  {
    v47 = *(v43 - 104);
    if (!v47)
    {
      goto LABEL_5;
    }
  }

  dispatch_release(v47);
  if (!v42)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void TraceManager::initTraceHelper_sync(TraceManager *this)
{
  v2 = *(this + 10);
  if (!v2 || (v3 = *(this + 9), (v4 = std::__shared_weak_count::lock(v2)) == 0))
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

  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN12TraceManager20initTraceHelper_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_64_1;
  aBlock[4] = this;
  aBlock[5] = v3;
  v14 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v7 = _Block_copy(aBlock);
  v8 = *(this + 11);
  if (v8)
  {
    dispatch_retain(*(this + 11));
  }

  v15 = v7;
  v16 = v8;
  if (!v7)
  {
    v10 = 0;
    object = v8;
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v10 = _Block_copy(v7);
  object = v8;
  if (v8)
  {
LABEL_9:
    dispatch_retain(v8);
  }

LABEL_10:
  abm::HelperClient::registerForHelperReady();
  v9 = *(this + 24);
  *(this + 184) = v12;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (v16)
  {
    dispatch_release(v16);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_2974DC194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a9);
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(v21 - 48);
  if (a20)
  {
    std::__shared_weak_count::__release_weak(a20);
  }

  std::__shared_weak_count::__release_weak(v20);
  _Unwind_Resume(a1);
}

void ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = MEMORY[0x29EDCAA00];
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v2) == v3)
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
  v5 = xpc_string_create(*MEMORY[0x29EDBE5F0]);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBE598], v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v7 = *MEMORY[0x29EDBE6E0];
  v8 = xpc_string_create(*MEMORY[0x29EDBE6E0]);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBEB28], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  __val[0] = 0;
  v10 = strlen(v7);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
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
    __dst[1] = v11;
    v31 = v13 | 0x8000000000000000;
    __dst[0] = v12;
    goto LABEL_19;
  }

  HIBYTE(v31) = v10;
  v12 = __dst;
  if (v10)
  {
LABEL_19:
    memmove(v12, v7, v11);
  }

  *(v11 + v12) = 0;
  memset(&__val[1], 0, 24);
  if (prop::bbtrace::get(__dst, &__val[1]))
  {
    util::convert<BOOL>(&__val[1], __val, 0);
  }

  if (__val[24] < 0)
  {
    operator delete(*&__val[1]);
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(__dst[0]);
LABEL_24:
  std::to_string(&__val[1], __val[0]);
  if (__val[24] >= 0)
  {
    v14 = &__val[1];
  }

  else
  {
    v14 = *&__val[1];
  }

  v15 = xpc_string_create(v14);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBEC98], v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  if (__val[24] < 0)
  {
    operator delete(*&__val[1]);
  }

  abm::asString();
  if (__val[24] >= 0)
  {
    v17 = &__val[1];
  }

  else
  {
    v17 = *&__val[1];
  }

  v18 = xpc_string_create(v17);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBF6C8], v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  if (__val[24] < 0)
  {
    operator delete(*&__val[1]);
    object = v4;
    __dst[0] = 0xAAAAAAAAAAAAAAAALL;
    v20 = *(v1 + 248);
    if (v4)
    {
      goto LABEL_38;
    }
  }

  else
  {
    object = v4;
    __dst[0] = 0xAAAAAAAAAAAAAAAALL;
    v20 = *(v1 + 248);
    if (v4)
    {
LABEL_38:
      xpc_retain(v4);
      goto LABEL_43;
    }
  }

  object = xpc_null_create();
LABEL_43:
  TraceCAReporter::prepTraceStats(v20, &object, __dst);
  xpc_release(object);
  object = 0;
  if (MEMORY[0x29C272BA0](__dst[0]) != v3)
  {
    goto LABEL_57;
  }

  v21 = *MEMORY[0x29EDBEBD0];
  v22 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v22 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v23 = v22;
  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v24 = operator new(v26);
    *&__val[9] = v23;
    *&__val[17] = v26 | 0x8000000000000000;
    *&__val[1] = v24;
LABEL_53:
    memmove(v24, v21, v23);
    v24[v23] = 0;
    v25 = __dst[0];
    v28 = __dst[0];
    if (__dst[0])
    {
      goto LABEL_48;
    }

    goto LABEL_54;
  }

  __val[24] = v22;
  v24 = &__val[1];
  if (v22)
  {
    goto LABEL_53;
  }

  __val[1] = 0;
  v25 = __dst[0];
  v28 = __dst[0];
  if (__dst[0])
  {
LABEL_48:
    xpc_retain(v25);
    goto LABEL_55;
  }

LABEL_54:
  v25 = xpc_null_create();
  v28 = v25;
LABEL_55:
  v27 = 0;
  Service::runCommand(v1, &__val[1], &v28, &v27);
  xpc_release(v25);
  v28 = 0;
  if (__val[24] < 0)
  {
    operator delete(*&__val[1]);
  }

LABEL_57:
  xpc_release(__dst[0]);
  xpc_release(v4);
}

void sub_2974DC624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t object, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(v25);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(v24);
  _Unwind_Resume(a1);
}

void ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_2(void *a1, void **a2, void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (!v10)
      {
        goto LABEL_14;
      }

      v15[0] = MEMORY[0x29EDCA5F8];
      v15[1] = 1174405120;
      v15[2] = ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_3;
      v15[3] = &__block_descriptor_tmp_22_0;
      v11 = *a2;
      v15[4] = v7;
      object = v11;
      if (v11)
      {
        xpc_retain(v11);
        v12 = *a3;
        if (!*a3)
        {
          goto LABEL_9;
        }
      }

      else
      {
        object = xpc_null_create();
        v12 = *a3;
        if (!*a3)
        {
LABEL_9:
          aBlock = v12;
          v18 = v10;
          v19 = v9;
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          ctu::SharedSynchronizable<TraceManager>::execute_wrapped((v7 + 72), v15);
          v13 = v19;
          if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v13->__on_zero_shared)(v13);
            std::__shared_weak_count::__release_weak(v13);
            v14 = aBlock;
            if (!aBlock)
            {
              goto LABEL_13;
            }
          }

          else
          {
            v14 = aBlock;
            if (!aBlock)
            {
LABEL_13:
              xpc_release(object);
              object = 0;
LABEL_14:
              if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v9->__on_zero_shared)(v9);
                std::__shared_weak_count::__release_weak(v9);
              }

              return;
            }
          }

          _Block_release(v14);
          goto LABEL_13;
        }
      }

      v12 = _Block_copy(v12);
      goto LABEL_9;
    }
  }
}

void ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_3(uint64_t a1)
{
  v129 = *MEMORY[0x29EDCA608];
  memset(&v125, 170, sizeof(v125));
  v2 = *(a1 + 32);
  value = xpc_dictionary_get_value(*(a1 + 40), *MEMORY[0x29EDBE598]);
  v124[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v124[0] = xpc_null_create();
  }

  memset(buf, 0, sizeof(buf));
  xpc::dyn_cast_or_default();
  xpc_release(v124[0]);
  memset(v124, 170, sizeof(v124));
  v4 = xpc_dictionary_get_value(*(a1 + 40), *MEMORY[0x29EDBEB28]);
  object[0] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  memset(buf, 0, sizeof(buf));
  xpc::dyn_cast_or_default();
  xpc_release(object[0]);
  memset(object, 170, sizeof(object));
  v5 = xpc_dictionary_get_value(*(a1 + 40), *MEMORY[0x29EDBEC98]);
  *v126 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *v126 = xpc_null_create();
  }

  memset(buf, 0, sizeof(buf));
  xpc::dyn_cast_or_default();
  xpc_release(*v126);
  v6 = xpc_dictionary_get_value(*(a1 + 40), *MEMORY[0x29EDBF728]);
  *buf = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    *buf = xpc_null_create();
  }

  v7 = xpc::dyn_cast_or_default(buf, 0);
  xpc_release(*buf);
  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v122, v125.__r_.__value_.__l.__data_, v125.__r_.__value_.__l.__size_);
  }

  else
  {
    v122 = v125;
  }

  isSupported = abm::trace::isSupported();
  if ((SHIBYTE(v122.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (isSupported)
    {
      goto LABEL_18;
    }

LABEL_24:
    *v126 = 0xAAAAAAAAAAAAAAAALL;
    v15 = *(a1 + 40);
    v121 = v15;
    if (v15)
    {
      xpc_retain(v15);
    }

    else
    {
      v121 = xpc_null_create();
    }

    xpc::bridge(buf, &v121, v16);
    v20 = *buf;
    if (*buf && (v21 = CFGetTypeID(*buf), v21 == CFDictionaryGetTypeID()))
    {
      *v126 = v20;
      CFRetain(v20);
      v22 = *buf;
      if (!*buf)
      {
LABEL_37:
        xpc_release(v121);
        v23 = *MEMORY[0x29EDBF000];
        v24 = strlen(*MEMORY[0x29EDBF000]);
        if (v24 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v25 = v24;
        if (v24 >= 0x17)
        {
          if ((v24 | 7) == 0x17)
          {
            v28 = 25;
          }

          else
          {
            v28 = (v24 | 7) + 1;
          }

          v26 = operator new(v28);
          __dst[1] = v25;
          v120 = v28 | 0x8000000000000000;
          __dst[0] = v26;
        }

        else
        {
          HIBYTE(v120) = v24;
          v26 = __dst;
          if (!v24)
          {
            LOBYTE(__dst[0]) = 0;
            v27 = *v126;
            cf = *v126;
            if (!*v126)
            {
LABEL_48:
              aBlock = 0;
              Service::broadcastEvent(v2, __dst, &cf, &aBlock);
              if (aBlock)
              {
                _Block_release(aBlock);
              }

              if (cf)
              {
                CFRelease(cf);
              }

              if (SHIBYTE(v120) < 0)
              {
                operator delete(__dst[0]);
                v29 = *(v2 + 104);
                if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
LABEL_54:
                  if (!*(a1 + 48))
                  {
                    goto LABEL_56;
                  }

                  goto LABEL_55;
                }
              }

              else
              {
                v29 = *(v2 + 104);
                if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_54;
                }
              }

              v33 = &v125;
              if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v33 = v125.__r_.__value_.__r.__words[0];
              }

              *buf = 136315138;
              *&buf[4] = v33;
              _os_log_error_impl(&dword_297476000, v29, OS_LOG_TYPE_ERROR, "Trace not supported: %s", buf, 0xCu);
              if (!*(a1 + 48))
              {
                goto LABEL_56;
              }

LABEL_55:
              v30 = xpc_null_create();
              v31 = *(a1 + 48);
              *buf = v30;
              v32 = xpc_null_create();
              (*(v31 + 16))(v31, 3760250884, buf);
              xpc_release(*buf);
              xpc_release(v32);
LABEL_56:
              if (v27)
              {
                CFRelease(v27);
              }

LABEL_193:
              if ((SHIBYTE(object[2]) & 0x80000000) == 0)
              {
                goto LABEL_194;
              }

              goto LABEL_198;
            }

LABEL_47:
            CFRetain(v27);
            goto LABEL_48;
          }
        }

        memmove(v26, v23, v25);
        *(v25 + v26) = 0;
        v27 = *v126;
        cf = *v126;
        if (!*v126)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }
    }

    else
    {
      *v126 = 0;
      v22 = *buf;
      if (!*buf)
      {
        goto LABEL_37;
      }
    }

    CFRelease(v22);
    goto LABEL_37;
  }

  v14 = isSupported;
  operator delete(v122.__r_.__value_.__l.__data_);
  if ((v14 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  if (!(*(*v2 + 96))(v2))
  {
    v17 = xpc_dictionary_create(0, 0, 0);
    v18 = MEMORY[0x29EDCAA00];
    if (v17 || (v17 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C272BA0](v17) == v18)
      {
        xpc_retain(v17);
        v19 = v17;
      }

      else
      {
        v19 = xpc_null_create();
      }
    }

    else
    {
      v19 = xpc_null_create();
      v17 = 0;
    }

    xpc_release(v17);
    v61 = xpc_int64_create(5000);
    if (!v61)
    {
      v61 = xpc_null_create();
    }

    xpc_dictionary_set_value(v19, *MEMORY[0x29EDBD2D8], v61);
    v62 = xpc_null_create();
    xpc_release(v61);
    xpc_release(v62);
    if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = &v125;
    }

    else
    {
      v63 = v125.__r_.__value_.__r.__words[0];
    }

    v64 = xpc_string_create(v63);
    if (!v64)
    {
      v64 = xpc_null_create();
    }

    xpc_dictionary_set_value(v19, *MEMORY[0x29EDBD2F0], v64);
    v65 = xpc_null_create();
    xpc_release(v64);
    xpc_release(v65);
    if (SHIBYTE(v124[2]) >= 0)
    {
      v66 = v124;
    }

    else
    {
      v66 = v124[0];
    }

    v67 = xpc_string_create(v66);
    if (!v67)
    {
      v67 = xpc_null_create();
    }

    xpc_dictionary_set_value(v19, *MEMORY[0x29EDBD318], v67);
    v68 = xpc_null_create();
    xpc_release(v67);
    xpc_release(v68);
    if (SHIBYTE(object[2]) >= 0)
    {
      v69 = object;
    }

    else
    {
      v69 = object[0];
    }

    v70 = xpc_string_create(v69);
    if (!v70)
    {
      v70 = xpc_null_create();
    }

    xpc_dictionary_set_value(v19, *MEMORY[0x29EDBD350], v70);
    v71 = xpc_null_create();
    xpc_release(v70);
    xpc_release(v71);
    if (v7)
    {
      v72 = *(v2 + 104);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_297476000, v72, OS_LOG_TYPE_DEBUG, "#D Request to set property with completion", buf, 2u);
      }

      memset(buf, 170, 16);
      v113[0] = MEMORY[0x29EDCA5F8];
      v113[1] = 1174405120;
      v113[2] = ___ZN12TraceManager28registerCommandHandlers_syncEv_block_invoke_19;
      v113[3] = &__block_descriptor_tmp_21_1;
      v74 = *(a1 + 56);
      v73 = *(a1 + 64);
      v113[4] = v2;
      v113[5] = v74;
      v114 = v73;
      if (v73)
      {
        atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v75 = *(a1 + 48);
      if (v75)
      {
        v76 = _Block_copy(v75);
        v77 = *(a1 + 40);
        v115 = v76;
        v116 = v77;
        if (v77)
        {
LABEL_132:
          xpc_retain(v77);
          goto LABEL_137;
        }
      }

      else
      {
        v77 = *(a1 + 40);
        v115 = 0;
        v116 = v77;
        if (v77)
        {
          goto LABEL_132;
        }
      }

      v116 = xpc_null_create();
LABEL_137:
      v78 = _Block_copy(v113);
      v79 = *(v2 + 88);
      if (v79)
      {
        dispatch_retain(*(v2 + 88));
      }

      *buf = v78;
      *&buf[8] = v79;
      v112 = v19;
      if (v19)
      {
        xpc_retain(v19);
        v78 = *buf;
        v111 = 0;
        if (*buf)
        {
          goto LABEL_141;
        }
      }

      else
      {
        v111 = 0;
        v112 = xpc_null_create();
        if (v78)
        {
LABEL_141:
          v80 = _Block_copy(v78);
          v81 = *MEMORY[0x29EDBD388];
          v82 = *&buf[8];
          v109 = v80;
          v110 = *&buf[8];
          if (!*&buf[8])
          {
LABEL_143:
            TraceManager::runOnHelper_sync(v2, 9, v81, 0, 1, &v112, &v111, &v109);
            if (v82)
            {
              dispatch_release(v82);
            }

            if (v80)
            {
              _Block_release(v80);
            }

            xpc_release(v112);
            v112 = 0;
            if (v82)
            {
              dispatch_release(v82);
            }

            if (v78)
            {
              _Block_release(v78);
            }

            xpc_release(v116);
            v116 = 0;
            if (v115)
            {
              _Block_release(v115);
            }

            v83 = v114;
            if (v114 && !atomic_fetch_add(&v114->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v83->__on_zero_shared)(v83);
              std::__shared_weak_count::__release_weak(v83);
            }

LABEL_183:
            xpc_release(v19);
            goto LABEL_193;
          }

LABEL_142:
          dispatch_retain(v82);
          goto LABEL_143;
        }
      }

      v80 = 0;
      v81 = *MEMORY[0x29EDBD388];
      v82 = *&buf[8];
      v109 = 0;
      v110 = *&buf[8];
      if (!*&buf[8])
      {
        goto LABEL_143;
      }

      goto LABEL_142;
    }

    v108 = v19;
    if (v19)
    {
      xpc_retain(v19);
    }

    else
    {
      v108 = xpc_null_create();
    }

    v84 = *MEMORY[0x29EDBD388];
    v106[1] = 0;
    v107 = 0;
    v106[0] = 0;
    TraceManager::runOnHelper_sync(v2, 9, v84, 0, 1, &v108, &v107, v106);
    xpc_release(v108);
    v108 = 0;
    *v126 = 0xAAAAAAAAAAAAAAAALL;
    v85 = *(v2 + 248);
    v86 = *(a1 + 40);
    v105 = v86;
    if (v86)
    {
      xpc_retain(v86);
    }

    else
    {
      v105 = xpc_null_create();
    }

    TraceCAReporter::prepTraceStats(v85, &v105, v126);
    xpc_release(v105);
    v105 = 0;
    if (MEMORY[0x29C272BA0](*v126) != v18)
    {
LABEL_180:
      if (*(a1 + 48))
      {
        v93 = xpc_null_create();
        v94 = *(a1 + 48);
        *buf = v93;
        v95 = xpc_null_create();
        (*(v94 + 16))(v94, 0, buf);
        xpc_release(*buf);
        xpc_release(v95);
      }

      xpc_release(*v126);
      goto LABEL_183;
    }

    v87 = *MEMORY[0x29EDBEBD0];
    v88 = strlen(*MEMORY[0x29EDBEBD0]);
    if (v88 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v89 = v88;
    if (v88 >= 0x17)
    {
      if ((v88 | 7) == 0x17)
      {
        v91 = 25;
      }

      else
      {
        v91 = (v88 | 7) + 1;
      }

      v90 = operator new(v91);
      *&buf[8] = v89;
      *&buf[16] = v91 | 0x8000000000000000;
      *buf = v90;
    }

    else
    {
      buf[23] = v88;
      v90 = buf;
      if (!v88)
      {
LABEL_175:
        v90[v89] = 0;
        v92 = *v126;
        v104 = *v126;
        if (*v126)
        {
          xpc_retain(*v126);
        }

        else
        {
          v92 = xpc_null_create();
          v104 = v92;
        }

        v103 = 0;
        Service::runCommand(v2, buf, &v104, &v103);
        xpc_release(v92);
        v104 = 0;
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_180;
      }
    }

    memmove(v90, v87, v89);
    goto LABEL_175;
  }

  v9 = 0x7FFFFFFFFFFFFFF7;
  memset(buf, 170, sizeof(buf));
  v10 = *MEMORY[0x29EDBEEA0];
  v11 = strlen(*MEMORY[0x29EDBEEA0]);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v11 | 7) + 1;
    }

    v13 = operator new(v34);
    *&v126[8] = v12;
    v127 = v34 | 0x8000000000000000;
    *v126 = v13;
    goto LABEL_67;
  }

  HIBYTE(v127) = v11;
  v13 = v126;
  if (v11)
  {
LABEL_67:
    memmove(v13, v10, v12);
  }

  *(v13 + v12) = 0;
  v35 = operator new(0x28uLL);
  v36 = v35;
  strcpy(v35, " rejected; ABM is shutting down ");
  v37 = SHIBYTE(v127);
  if ((SHIBYTE(v127) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(v127) < 0x17)
    {
      v38 = SHIBYTE(v127) | 0x20;
      v39 = v126;
      v40 = 22;
LABEL_74:
      v41 = 2 * v40;
      if (v38 > 2 * v40)
      {
        v41 = v38;
      }

      if ((v41 | 7) == 0x17)
      {
        v42 = 25;
      }

      else
      {
        v42 = (v41 | 7) + 1;
      }

      if (v41 >= 0x17)
      {
        v9 = v42;
      }

      else
      {
        v9 = 23;
      }

      v43 = v40 == 22;
      goto LABEL_83;
    }

    v49 = v126;
    qmemcpy(&v126[SHIBYTE(v127)], " rejected; ABM is shutting down ", 32);
    v50 = v37 + 32;
    HIBYTE(v127) = (v37 + 32) & 0x7F;
LABEL_91:
    v48 = &v49[v50];
    goto LABEL_92;
  }

  v37 = *&v126[8];
  v40 = (v127 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v40 - *&v126[8] >= 0x20)
  {
    v49 = *v126;
    v51 = (*v126 + *&v126[8]);
    v52 = v35[1];
    *v51 = *v35;
    v51[1] = v52;
    v50 = v37 + 32;
    *&v126[8] = v37 + 32;
    goto LABEL_91;
  }

  v38 = *&v126[8] + 32;
  if (0x7FFFFFFFFFFFFFF7 - (v127 & 0x7FFFFFFFFFFFFFFFLL) < *&v126[8] + 32 - v40)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v39 = *v126;
  if (v40 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_74;
  }

  v43 = 0;
LABEL_83:
  v44 = operator new(v9);
  v45 = v44;
  if (v37)
  {
    memmove(v44, v39, v37);
  }

  v46 = &v45[v37];
  v47 = v36[1];
  *v46 = *v36;
  *(v46 + 1) = v47;
  if (!v43)
  {
    operator delete(v39);
  }

  *&v126[8] = v38;
  v127 = v9 | 0x8000000000000000;
  *v126 = v45;
  v48 = &v45[v38];
LABEL_92:
  *v48 = 0;
  *buf = *v126;
  *&buf[16] = v127;
  v127 = 0;
  memset(v126, 0, sizeof(v126));
  operator delete(v36);
  if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
    v53 = *(v2 + 104);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_94;
    }

LABEL_99:
    v57 = *(a1 + 48);
    v55 = (a1 + 48);
    if (!v57)
    {
      goto LABEL_192;
    }

    goto LABEL_100;
  }

  operator delete(*v126);
  v53 = *(v2 + 104);
  if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_99;
  }

LABEL_94:
  v54 = buf;
  if ((buf[23] & 0x80u) != 0)
  {
    v54 = *buf;
  }

  *v126 = 136315138;
  *&v126[4] = v54;
  _os_log_impl(&dword_297476000, v53, OS_LOG_TYPE_DEFAULT, "#I %s", v126, 0xCu);
  v56 = *(a1 + 48);
  v55 = (a1 + 48);
  if (v56)
  {
LABEL_100:
    *v126 = 0xAAAAAAAAAAAAAAAALL;
    *v126 = xpc_null_create();
    v58 = buf[23];
    if ((buf[23] & 0x80u) != 0)
    {
      v58 = *&buf[8];
    }

    if (v58)
    {
      v59 = xpc_dictionary_create(0, 0, 0);
      if (v59 || (v59 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C272BA0](v59) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v59);
          v60 = v59;
        }

        else
        {
          v60 = xpc_null_create();
        }
      }

      else
      {
        v60 = xpc_null_create();
        v59 = 0;
      }

      xpc_release(v59);
      v96 = xpc_null_create();
      v97 = *v126;
      *v126 = v60;
      xpc_release(v97);
      xpc_release(v96);
      if ((buf[23] & 0x80u) == 0)
      {
        v98 = buf;
      }

      else
      {
        v98 = *buf;
      }

      v99 = xpc_string_create(v98);
      if (!v99)
      {
        v99 = xpc_null_create();
      }

      xpc_dictionary_set_value(v60, *MEMORY[0x29EDBE648], v99);
      v100 = xpc_null_create();
      xpc_release(v99);
      xpc_release(v100);
    }

    LODWORD(v121) = -534716415;
    dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v55, &v121, v126);
    xpc_release(*v126);
  }

LABEL_192:
  if ((buf[23] & 0x80000000) == 0)
  {
    goto LABEL_193;
  }

  operator delete(*buf);
  if ((SHIBYTE(object[2]) & 0x80000000) == 0)
  {
LABEL_194:
    if ((SHIBYTE(v124[2]) & 0x80000000) == 0)
    {
      goto LABEL_195;
    }

LABEL_199:
    operator delete(v124[0]);
    if ((SHIBYTE(v125.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_200;
  }

LABEL_198:
  operator delete(object[0]);
  if (SHIBYTE(v124[2]) < 0)
  {
    goto LABEL_199;
  }

LABEL_195:
  if ((SHIBYTE(v125.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_196:
    v101 = *MEMORY[0x29EDCA608];
    return;
  }

LABEL_200:
  operator delete(v125.__r_.__value_.__l.__data_);
  v102 = *MEMORY[0x29EDCA608];
}