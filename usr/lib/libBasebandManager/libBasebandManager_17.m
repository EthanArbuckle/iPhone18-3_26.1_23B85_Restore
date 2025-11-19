void sub_2970D6570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

uint64_t StatsAWD::fillMetric_sync(uint64_t a1, int **a2, void *a3)
{
  v52 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v6 = MEMORY[0x29EDCA9E0];
  if (*a3 && MEMORY[0x29C26CE60](*a3) == v6)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
  }

  if (MEMORY[0x29C26CE60](v5) != v6)
  {
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Failed: Expected data needs to be dictionary in bb crash handling", __p, 2u);
    }

    v8 = 0;
    goto LABEL_86;
  }

  if (v5)
  {
    xpc_retain(v5);
    v49 = v5;
    v9 = v5;
LABEL_12:
    xpc_retain(v9);
    goto LABEL_13;
  }

  v9 = xpc_null_create();
  v49 = v9;
  if (v9)
  {
    goto LABEL_12;
  }

  v9 = 0;
  v49 = xpc_null_create();
LABEL_13:
  v50 = 0;
  xpc_release(v9);
  if (v5)
  {
    xpc_retain(v5);
    v10 = v5;
  }

  else
  {
    v10 = xpc_null_create();
  }

  if (MEMORY[0x29C26CE60](v5) == v6)
  {
    count = xpc_array_get_count(v5);
    if (v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    count = 0;
    if (v10)
    {
LABEL_18:
      xpc_retain(v10);
      v45 = v10;
      goto LABEL_21;
    }
  }

  v45 = xpc_null_create();
LABEL_21:
  xpc_release(v10);
  v12 = v50;
  if (v50 == count && v49 == v45)
  {
    v8 = 1;
    goto LABEL_85;
  }

  v13 = *MEMORY[0x29EDBED60];
  v14 = *MEMORY[0x29EDBEC28];
  v15 = *MEMORY[0x29EDBE9A8];
  v16 = MEMORY[0x29EDC9758];
  while (1)
  {
    xdict = 0xAAAAAAAAAAAAAAAALL;
    __p[0] = &v49;
    __p[1] = v12;
    xpc::array::object_proxy::operator xpc::dict(__p, &xdict);
    if (MEMORY[0x29C26CE60](xdict) != MEMORY[0x29EDCAA00] || !xpc_dictionary_get_value(xdict, v13) || !xpc_dictionary_get_value(xdict, v14) || !xpc_dictionary_get_value(xdict, v15))
    {
      break;
    }

    v17 = *a2;
    v18 = (*a2)[7];
    v19 = (*a2)[6];
    if (v19 >= v18)
    {
      if (v18 == v17[8])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v17 + 4));
        v18 = v17[7];
      }

      v17[7] = v18 + 1;
      v21 = operator new(0x28uLL);
      *v21 = &unk_2A1E2D1F8;
      v21[1] = v16;
      v21[2] = v16;
      v21[3] = 0;
      *(v21 + 8) = 0;
      v23 = *(v17 + 2);
      v24 = v17[6];
      v17[6] = v24 + 1;
      *(v23 + 8 * v24) = v21;
LABEL_37:
      value = xpc_dictionary_get_value(xdict, v13);
      *object = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        *object = xpc_null_create();
      }

      xpc::dyn_cast_or_default(__p, object, "", v26);
      *(v21 + 8) |= 1u;
      v27 = v21[1];
      if (v27 == v16)
      {
        v27 = operator new(0x18uLL);
        *v27 = 0;
        v27[1] = 0;
        v27[2] = 0;
        v21[1] = v27;
        v28 = HIBYTE(v47);
        if ((*(v27 + 23) & 0x80000000) == 0)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v27 == __p)
        {
          goto LABEL_54;
        }

        v28 = HIBYTE(v47);
        if ((*(v27 + 23) & 0x80000000) == 0)
        {
LABEL_43:
          if ((v28 & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v27, __p[0], __p[1]);
          }

          else
          {
            v29 = *__p;
            v27[2] = v47;
            *v27 = v29;
          }

          goto LABEL_54;
        }
      }

      if (v28 >= 0)
      {
        v30 = __p;
      }

      else
      {
        v30 = __p[0];
      }

      if (v28 >= 0)
      {
        v31 = v28;
      }

      else
      {
        v31 = __p[1];
      }

      std::string::__assign_no_alias<false>(v27, v30, v31);
LABEL_54:
      if (SHIBYTE(v47) < 0)
      {
        operator delete(__p[0]);
      }

      xpc_release(*object);
      v32 = xpc_dictionary_get_value(xdict, v14);
      __p[0] = v32;
      if (v32)
      {
        xpc_retain(v32);
      }

      else
      {
        __p[0] = xpc_null_create();
      }

      v33 = xpc::dyn_cast_or_default(__p, 0);
      *(v21 + 8) |= 2u;
      *(v21 + 6) = v33;
      xpc_release(__p[0]);
      v34 = xpc_dictionary_get_value(xdict, v15);
      *object = v34;
      if (v34)
      {
        xpc_retain(v34);
      }

      else
      {
        *object = xpc_null_create();
      }

      xpc::dyn_cast_or_default(__p, object, "", v35);
      *(v21 + 8) |= 4u;
      v36 = v21[2];
      if (v36 == v16)
      {
        v36 = operator new(0x18uLL);
        *v36 = 0;
        v36[1] = 0;
        v36[2] = 0;
        v21[2] = v36;
        v37 = HIBYTE(v47);
        if ((*(v36 + 23) & 0x80000000) == 0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (v36 == __p)
        {
LABEL_76:
          if (SHIBYTE(v47) < 0)
          {
            operator delete(__p[0]);
          }

          xpc_release(*object);
          v8 = 1;
          goto LABEL_79;
        }

        v37 = HIBYTE(v47);
        if ((*(v36 + 23) & 0x80000000) == 0)
        {
LABEL_65:
          if ((v37 & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v36, __p[0], __p[1]);
          }

          else
          {
            v38 = *__p;
            v36[2] = v47;
            *v36 = v38;
          }

          goto LABEL_76;
        }
      }

      if (v37 >= 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = __p[0];
      }

      if (v37 >= 0)
      {
        v40 = v37;
      }

      else
      {
        v40 = __p[1];
      }

      std::string::__assign_no_alias<false>(v36, v39, v40);
      goto LABEL_76;
    }

    v20 = *(v17 + 2);
    v17[6] = v19 + 1;
    v21 = *(v20 + 8 * v19);
    if (v21)
    {
      goto LABEL_37;
    }

    v22 = *(a1 + 32);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&dword_296FF7000, v22, OS_LOG_TYPE_ERROR, "Failed: Creating crash record", __p, 2u);
    }

    v8 = 0;
LABEL_79:
    xpc_release(xdict);
    if (v8)
    {
      v12 = v50 + 1;
      v50 = v12;
      if (v12 != count || v49 != v45)
      {
        continue;
      }
    }

    goto LABEL_85;
  }

  v41 = *(a1 + 32);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    xpc::dict::describe(__p, xdict);
    v44 = SHIBYTE(v47) >= 0 ? __p : __p[0];
    *object = 136315138;
    *&object[4] = v44;
    _os_log_error_impl(&dword_296FF7000, v41, OS_LOG_TYPE_ERROR, "Failed: One of elements of bb crash is missing: %s", object, 0xCu);
    if (SHIBYTE(v47) < 0)
    {
      operator delete(__p[0]);
    }
  }

  xpc_release(xdict);
  v8 = 0;
LABEL_85:
  xpc_release(v45);
  xpc_release(v49);
LABEL_86:
  xpc_release(v5);
  v42 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_2970D6DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t object, xpc_object_t a18, uint64_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(a10);
  xpc_release(a18);
  xpc_release(v20);
  _Unwind_Resume(a1);
}

uint64_t StatsAWD::fillMetric_sync(uint64_t a1, int **a2, void **a3)
{
  v75 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  xdict = v5;
  v6 = MEMORY[0x29EDCAA00];
  if (v5 && MEMORY[0x29C26CE60](v5) == v6)
  {
    xpc_retain(v5);
  }

  else
  {
    xdict = xpc_null_create();
  }

  if (MEMORY[0x29C26CE60]() != v6)
  {
    v7 = *(a1 + 32);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_20:
      v18 = 0;
      goto LABEL_21;
    }

    *buf = 0;
    v8 = "Failed: Expected data needs to be dictionary in low power stats handling";
LABEL_8:
    _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, v8, buf, 2u);
    goto LABEL_20;
  }

  v9 = *MEMORY[0x29EDBF288];
  if (!xpc_dictionary_get_value(xdict, *MEMORY[0x29EDBF288]) || (v10 = *MEMORY[0x29EDBEAE0], !xpc_dictionary_get_value(xdict, *MEMORY[0x29EDBEAE0])) || (v11 = *MEMORY[0x29EDBEEC8], !xpc_dictionary_get_value(xdict, *MEMORY[0x29EDBEEC8])) || (v12 = *MEMORY[0x29EDBE768], !xpc_dictionary_get_value(xdict, *MEMORY[0x29EDBE768])) || (v13 = *MEMORY[0x29EDBEC20], !xpc_dictionary_get_value(xdict, *MEMORY[0x29EDBEC20])) || (v14 = *MEMORY[0x29EDBED48], !xpc_dictionary_get_value(xdict, *MEMORY[0x29EDBED48])) || (v65 = *MEMORY[0x29EDBF148], !xpc_dictionary_get_value(xdict, *MEMORY[0x29EDBF148])))
  {
    v17 = *(a1 + 32);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v21 = MEMORY[0x29C26CD90](xdict);
    memset(buf, 170, sizeof(buf));
    v22 = strlen(v21);
    if (v22 >= 0x7FFFFFFFFFFFFFF8)
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
    }

    else
    {
      buf[23] = v22;
      v24 = buf;
      if (!v22)
      {
        goto LABEL_31;
      }
    }

    memcpy(v24, v21, v23);
LABEL_31:
    *(v24 + v23) = 0;
    free(v21);
    v26 = buf;
    if ((buf[23] & 0x80u) != 0)
    {
      v26 = *buf;
    }

    LODWORD(v74) = 136315138;
    *(&v74 + 4) = v26;
    _os_log_error_impl(&dword_296FF7000, v17, OS_LOG_TYPE_ERROR, "Failed: One of elements of low power stats is missing: %s", &v74, 0xCu);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    goto LABEL_20;
  }

  v15 = *MEMORY[0x29EDBED50];
  value = xpc_dictionary_get_value(xdict, *MEMORY[0x29EDBED50]);
  if (MEMORY[0x29C26CE60](value) != MEMORY[0x29EDCA9E0])
  {
    v7 = *(a1 + 32);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v8 = "Failed: Expected data needs to be array in missed MT message handling";
    goto LABEL_8;
  }

  v64 = v15;
  v27 = *a2;
  *buf = &xdict;
  *&buf[8] = v9;
  xpc::dict::object_proxy::operator xpc::object(buf, &v74);
  v28 = xpc::dyn_cast_or_default(&v74, 0);
  v27[18] |= 4u;
  v27[5] = v28;
  xpc_release(v74);
  v29 = *a2;
  *buf = &xdict;
  *&buf[8] = v10;
  xpc::dict::object_proxy::operator xpc::object(buf, &v74);
  v30 = xpc::dyn_cast_or_default(&v74, 0);
  v29[18] |= 8u;
  v29[6] = v30;
  xpc_release(v74);
  v31 = *a2;
  *buf = &xdict;
  *&buf[8] = v11;
  xpc::dict::object_proxy::operator xpc::object(buf, &v74);
  v32 = xpc::dyn_cast_or_default(&v74, 0);
  v31[18] |= 0x10u;
  v31[7] = v32;
  xpc_release(v74);
  v33 = *a2;
  *buf = &xdict;
  *&buf[8] = v12;
  xpc::dict::object_proxy::operator xpc::object(buf, &v74);
  v34 = xpc::dyn_cast_or_default(&v74, 0);
  v33[18] |= 0x20u;
  v33[8] = v34;
  xpc_release(v74);
  v35 = *a2;
  *buf = &xdict;
  *&buf[8] = v13;
  xpc::dict::object_proxy::operator xpc::object(buf, &v74);
  v36 = xpc::dyn_cast_or_default(&v74, 0);
  v35[18] |= 0x40u;
  v35[9] = v36;
  xpc_release(v74);
  v37 = *a2;
  *buf = &xdict;
  *&buf[8] = v14;
  xpc::dict::object_proxy::operator xpc::object(buf, &v74);
  v38 = xpc::dyn_cast_or_default(&v74, 0);
  v37[18] |= 0x80u;
  v37[16] = v38;
  xpc_release(v74);
  xarray = 0xAAAAAAAAAAAAAAAALL;
  *buf = &xdict;
  *&buf[8] = v64;
  xpc::dict::object_proxy::operator xpc::array(buf, &xarray);
  xpc::array::array(buf, xarray);
  xpc::array::iterator::iterator(&v74, *buf, 0);
  xpc_release(*buf);
  xpc::array::array(buf, xarray);
  if (MEMORY[0x29C26CE60](xarray) == MEMORY[0x29EDCA9E0])
  {
    count = xpc_array_get_count(xarray);
  }

  else
  {
    count = 0;
  }

  xpc::array::iterator::iterator(&v67, *buf, count);
  xpc_release(*buf);
  v40 = *MEMORY[0x29EDBEEC0];
  v41 = *MEMORY[0x29EDBED58];
  v42 = *MEMORY[0x29EDBE760];
  v43 = *MEMORY[0x29EDBE758];
  v44 = *(&v74 + 1);
  if (*(&v74 + 1) == v68)
  {
LABEL_39:
    if (v74 != v67)
    {
      goto LABEL_40;
    }

    xpc_release(v67);
    xpc_release(v74);
    v61 = *a2;
    *buf = &xdict;
    *&buf[8] = v65;
    xpc::dict::object_proxy::operator xpc::object(buf, &v74);
    v62 = xpc::dyn_cast_or_default(&v74, 0);
    v61[18] |= 2u;
    v61[4] = v62;
    xpc_release(v74);
    v18 = 1;
  }

  else
  {
LABEL_40:
    while (1)
    {
      object = 0xAAAAAAAAAAAAAAAALL;
      *buf = &v74;
      *&buf[8] = v44;
      xpc::array::object_proxy::operator xpc::dict(buf, &object);
      if (MEMORY[0x29C26CE60](object) != v6 || !xpc_dictionary_get_value(object, v40) || !xpc_dictionary_get_value(object, v41) || !xpc_dictionary_get_value(object, v42) || !xpc_dictionary_get_value(object, v43))
      {
        break;
      }

      v45 = *a2;
      v46 = (*a2)[13];
      v47 = (*a2)[12];
      if (v47 >= v46)
      {
        if (v46 == v45[14])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v45 + 10));
          v46 = v45[13];
        }

        v45[13] = v46 + 1;
        v49 = operator new(0x20uLL);
        *v49 = &unk_2A1E2E450;
        v49[1] = 0;
        v49[2] = 0;
        v49[3] = 0;
        v50 = *(v45 + 5);
        v51 = v45[12];
        v45[12] = v51 + 1;
        *(v50 + 8 * v51) = v49;
      }

      else
      {
        v48 = *(v45 + 5);
        v45[12] = v47 + 1;
        v49 = *(v48 + 8 * v47);
      }

      v52 = xpc_dictionary_get_value(object, v40);
      *buf = v52;
      if (v52)
      {
        xpc_retain(v52);
      }

      else
      {
        *buf = xpc_null_create();
      }

      v53 = xpc::dyn_cast_or_default(buf, 0);
      *(v49 + 7) |= 1u;
      *(v49 + 2) = v53;
      xpc_release(*buf);
      v54 = xpc_dictionary_get_value(object, v41);
      *buf = v54;
      if (v54)
      {
        xpc_retain(v54);
      }

      else
      {
        *buf = xpc_null_create();
      }

      v55 = xpc::dyn_cast_or_default(buf, 0);
      *(v49 + 7) |= 2u;
      *(v49 + 3) = v55;
      xpc_release(*buf);
      v56 = xpc_dictionary_get_value(object, v42);
      *buf = v56;
      if (v56)
      {
        xpc_retain(v56);
      }

      else
      {
        *buf = xpc_null_create();
      }

      v57 = xpc::dyn_cast_or_default(buf, 0);
      *(v49 + 7) |= 4u;
      *(v49 + 4) = v57;
      xpc_release(*buf);
      v58 = xpc_dictionary_get_value(object, v43);
      *buf = v58;
      if (v58)
      {
        xpc_retain(v58);
      }

      else
      {
        *buf = xpc_null_create();
      }

      v59 = xpc::dyn_cast_or_default(buf, 0);
      *(v49 + 7) |= 8u;
      *(v49 + 5) = v59;
      xpc_release(*buf);
      xpc_release(object);
      v44 = *(&v74 + 1) + 1;
      *(&v74 + 1) = v44;
      if (v44 == v68)
      {
        goto LABEL_39;
      }
    }

    v60 = *(a1 + 32);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      xpc::dict::describe(buf, object);
      v63 = (buf[23] & 0x80u) == 0 ? buf : *buf;
      *v72 = 136315138;
      v73 = v63;
      _os_log_error_impl(&dword_296FF7000, v60, OS_LOG_TYPE_ERROR, "Failed: One of elements of missed MT message is missing: %s", v72, 0xCu);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    xpc_release(object);
    xpc_release(v67);
    xpc_release(v74);
    v18 = 0;
  }

  xpc_release(xarray);
LABEL_21:
  xpc_release(xdict);
  v19 = *MEMORY[0x29EDCA608];
  return v18;
}

void sub_2970D77F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, uint64_t a13, xpc_object_t a14, xpc_object_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18, uint64_t a19, uint64_t a20, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_2970D7E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, xpc_object_t object)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

void sub_2970D82CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, xpc_object_t object)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

void sub_2970D864C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL StatsAWD::fillMetric_sync(uint64_t a1, uint64_t *a2, xpc_object_t *a3)
{
  v89 = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29C26CE60](*a3);
  v7 = MEMORY[0x29EDCAA00];
  if (v6 == MEMORY[0x29EDCAA00])
  {
    memset(v78, 170, 24);
    value = xpc_dictionary_get_value(*a3, *MEMORY[0x29EDBED88]);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    xpc::dyn_cast_or_default(&buf, object, "no-reset-reason", v10);
    v11 = std::string::insert(&buf, 0, "modem reset: ", 0xDuLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v78[2] = v11->__r_.__value_.__r.__words[2];
    *v78 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    xpc_release(object[0]);
    v13 = xpc_dictionary_get_value(*a3, *MEMORY[0x29EDBED80]);
    buf.__r_.__value_.__r.__words[0] = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      buf.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v14 = xpc::dyn_cast_or_default(&buf, 0);
    xpc_release(buf.__r_.__value_.__l.__data_);
    v15 = xpc_dictionary_get_value(*a3, *MEMORY[0x29EDBE5A8]);
    buf.__r_.__value_.__r.__words[0] = v15;
    if (v15)
    {
      xpc_retain(v15);
    }

    else
    {
      buf.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v16 = xpc::dyn_cast_or_default(&buf, 0);
    xpc_release(buf.__r_.__value_.__l.__data_);
    v17 = xpc_dictionary_get_value(*a3, *MEMORY[0x29EDBF890]);
    buf.__r_.__value_.__r.__words[0] = v17;
    if (v17)
    {
      xpc_retain(v17);
    }

    else
    {
      buf.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v18 = xpc::dyn_cast_or_default(&buf, 0xB);
    xpc_release(buf.__r_.__value_.__l.__data_);
    v19 = xpc_dictionary_get_value(*a3, *MEMORY[0x29EDBF898]);
    buf.__r_.__value_.__r.__words[0] = v19;
    if (v19)
    {
      xpc_retain(v19);
    }

    else
    {
      buf.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v20 = xpc::dyn_cast_or_default(&buf, 0xB);
    xpc_release(buf.__r_.__value_.__l.__data_);
    memset(object, 170, sizeof(object));
    v21 = xpc_dictionary_get_value(*a3, *MEMORY[0x29EDBF8D0]);
    buf.__r_.__value_.__r.__words[0] = v21;
    if (v21)
    {
      xpc_retain(v21);
    }

    else
    {
      buf.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    xpc::dyn_cast_or_default(object, &buf, "", v22);
    xpc_release(buf.__r_.__value_.__l.__data_);
    memset(v76, 170, sizeof(v76));
    v23 = xpc_dictionary_get_value(*a3, *MEMORY[0x29EDBF8D8]);
    buf.__r_.__value_.__r.__words[0] = v23;
    if (v23)
    {
      xpc_retain(v23);
    }

    else
    {
      buf.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    xpc::dyn_cast_or_default(v76, &buf, "", v24);
    xpc_release(buf.__r_.__value_.__l.__data_);
    memset(v75, 170, sizeof(v75));
    v25 = xpc_dictionary_get_value(*a3, *MEMORY[0x29EDBF888]);
    buf.__r_.__value_.__r.__words[0] = v25;
    if (v25)
    {
      xpc_retain(v25);
    }

    else
    {
      buf.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    xpc::dyn_cast_or_default(v75, &buf, "", v26);
    xpc_release(buf.__r_.__value_.__l.__data_);
    v27 = xpc_dictionary_get_value(*a3, *MEMORY[0x29EDBE548]);
    buf.__r_.__value_.__r.__words[0] = v27;
    if (v27)
    {
      xpc_retain(v27);
    }

    else
    {
      buf.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v28 = xpc::dyn_cast_or_default(&buf, 8);
    xpc_release(buf.__r_.__value_.__l.__data_);
    v29 = *(a1 + 32);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v72 = a2;
      v30 = v6;
      v31 = v20;
      v32 = v28;
      v33 = v14;
      v34 = SHIBYTE(v78[2]);
      v35 = v78[0];
      abm::asString();
      v36 = v78;
      p_p = __p;
      v38 = "NO";
      if (v34 < 0)
      {
        v36 = v35;
      }

      if (v16)
      {
        v39 = "YES";
      }

      else
      {
        v39 = "NO";
      }

      LOBYTE(v14) = v33;
      if (v33)
      {
        v38 = "YES";
      }

      v40 = v76[0];
      if (v74 >= 0)
      {
        p_p = &__p;
      }

      v41 = object;
      if (SHIBYTE(object[2]) < 0)
      {
        v41 = object[0];
      }

      v42 = v75[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136316674;
      if (SHIBYTE(v76[2]) >= 0)
      {
        v40 = v76;
      }

      *(buf.__r_.__value_.__r.__words + 4) = v36;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      if (SHIBYTE(v75[2]) >= 0)
      {
        v42 = v75;
      }

      *(&buf.__r_.__value_.__r.__words[1] + 6) = v38;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v80 = v39;
      v81 = 2080;
      v82 = p_p;
      v83 = 2080;
      v84 = v41;
      v85 = 2080;
      v86 = v40;
      v87 = 2080;
      v88 = v42;
      _os_log_impl(&dword_296FF7000, v29, OS_LOG_TYPE_DEFAULT, "#I CCBasebandReset Metric Submission: Baseband Reset Reason: %s, Is MTBF: %s, Was In Voice Call: %s, RAT: %s, PLMN1: %s, PLMN2: %s, SKU: %s", &buf, 0x48u);
      if (v74 < 0)
      {
        operator delete(__p);
      }

      v7 = MEMORY[0x29EDCAA00];
      v28 = v32;
      v20 = v31;
      v6 = v30;
      a2 = v72;
    }

    v43 = *a2;
    *(v43 + 68) = *(*a2 + 68) | 1;
    v44 = *(v43 + 8);
    v45 = MEMORY[0x29EDC9758];
    if (v44 == MEMORY[0x29EDC9758])
    {
      v44 = operator new(0x18uLL);
      *v44 = 0;
      v44[1] = 0;
      v44[2] = 0;
      *(v43 + 8) = v44;
      v46 = HIBYTE(v78[2]);
      if ((*(v44 + 23) & 0x80000000) == 0)
      {
LABEL_55:
        if ((v46 & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(v44, v78[0], v78[1]);
        }

        else
        {
          v47 = *v78;
          v44[2] = v78[2];
          *v44 = v47;
        }

        goto LABEL_66;
      }
    }

    else
    {
      if (v44 == v78)
      {
        goto LABEL_66;
      }

      v46 = HIBYTE(v78[2]);
      if ((*(v44 + 23) & 0x80000000) == 0)
      {
        goto LABEL_55;
      }
    }

    if (v46 >= 0)
    {
      v48 = v78;
    }

    else
    {
      v48 = v78[0];
    }

    if (v46 >= 0)
    {
      v49 = v46;
    }

    else
    {
      v49 = v78[1];
    }

    std::string::__assign_no_alias<false>(v44, v48, v49);
LABEL_66:
    v50 = *a2;
    v51 = *(*a2 + 68);
    *(v50 + 41) = v14;
    *(v50 + 40) = v16;
    *(v50 + 16) = v18;
    *(v50 + 20) = v20;
    *(v50 + 68) = v51 | 0x21E;
    v52 = *(v50 + 24);
    if (v52 == v45)
    {
      v52 = operator new(0x18uLL);
      *v52 = 0;
      v52[1] = 0;
      v52[2] = 0;
      *(v50 + 24) = v52;
      v53 = HIBYTE(object[2]);
      if ((*(v52 + 23) & 0x80000000) == 0)
      {
LABEL_69:
        if ((v53 & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(v52, object[0], object[1]);
        }

        else
        {
          v54 = *object;
          v52[2] = object[2];
          *v52 = v54;
        }

        goto LABEL_80;
      }
    }

    else
    {
      if (v52 == object)
      {
        goto LABEL_80;
      }

      v53 = HIBYTE(object[2]);
      if ((*(v52 + 23) & 0x80000000) == 0)
      {
        goto LABEL_69;
      }
    }

    if (v53 >= 0)
    {
      v55 = object;
    }

    else
    {
      v55 = object[0];
    }

    if (v53 >= 0)
    {
      v56 = v53;
    }

    else
    {
      v56 = object[1];
    }

    std::string::__assign_no_alias<false>(v52, v55, v56);
LABEL_80:
    v57 = *a2;
    *(v57 + 68) = *(*a2 + 68) | 0x20;
    v58 = *(v57 + 32);
    if (v58 == v45)
    {
      v58 = operator new(0x18uLL);
      *v58 = 0;
      v58[1] = 0;
      v58[2] = 0;
      *(v57 + 32) = v58;
      v59 = HIBYTE(v76[2]);
      if ((*(v58 + 23) & 0x80000000) == 0)
      {
LABEL_83:
        if ((v59 & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(v58, v76[0], v76[1]);
        }

        else
        {
          v60 = *v76;
          v58[2] = v76[2];
          *v58 = v60;
        }

        goto LABEL_94;
      }
    }

    else
    {
      if (v58 == v76)
      {
        goto LABEL_94;
      }

      v59 = HIBYTE(v76[2]);
      if ((*(v58 + 23) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }
    }

    if (v59 >= 0)
    {
      v61 = v76;
    }

    else
    {
      v61 = v76[0];
    }

    if (v59 >= 0)
    {
      v62 = v59;
    }

    else
    {
      v62 = v76[1];
    }

    std::string::__assign_no_alias<false>(v58, v61, v62);
LABEL_94:
    v63 = *a2;
    *(v63 + 68) = *(*a2 + 68) | 0x40;
    v64 = *(v63 + 48);
    if (v64 == v45)
    {
      v64 = operator new(0x18uLL);
      *v64 = 0;
      v64[1] = 0;
      v64[2] = 0;
      *(v63 + 48) = v64;
      v65 = HIBYTE(v75[2]);
      if ((*(v64 + 23) & 0x80000000) == 0)
      {
LABEL_97:
        if ((v65 & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(v64, v75[0], v75[1]);
        }

        else
        {
          v66 = *v75;
          v64[2] = v75[2];
          *v64 = v66;
        }

        goto LABEL_108;
      }
    }

    else
    {
      if (v64 == v75)
      {
        goto LABEL_108;
      }

      v65 = HIBYTE(v75[2]);
      if ((*(v64 + 23) & 0x80000000) == 0)
      {
        goto LABEL_97;
      }
    }

    if (v65 >= 0)
    {
      v67 = v75;
    }

    else
    {
      v67 = v75[0];
    }

    if (v65 >= 0)
    {
      v68 = v65;
    }

    else
    {
      v68 = v75[1];
    }

    std::string::__assign_no_alias<false>(v64, v67, v68);
LABEL_108:
    v69 = *a2;
    *(v69 + 68) = *(*a2 + 68) | 0x80;
    *(v69 + 44) = v28;
    if (SHIBYTE(v75[2]) < 0)
    {
      operator delete(v75[0]);
      if ((SHIBYTE(v76[2]) & 0x80000000) == 0)
      {
LABEL_110:
        if ((SHIBYTE(object[2]) & 0x80000000) == 0)
        {
          goto LABEL_111;
        }

        goto LABEL_115;
      }
    }

    else if ((SHIBYTE(v76[2]) & 0x80000000) == 0)
    {
      goto LABEL_110;
    }

    operator delete(v76[0]);
    if ((SHIBYTE(object[2]) & 0x80000000) == 0)
    {
LABEL_111:
      if ((SHIBYTE(v78[2]) & 0x80000000) == 0)
      {
        goto LABEL_112;
      }

LABEL_116:
      operator delete(v78[0]);
      goto LABEL_112;
    }

LABEL_115:
    operator delete(object[0]);
    if ((SHIBYTE(v78[2]) & 0x80000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_116;
  }

  v8 = *(a1 + 32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_296FF7000, v8, OS_LOG_TYPE_ERROR, "Failed to get the metric information for CCBasebandReset", &buf, 2u);
  }

LABEL_112:
  result = v6 == v7;
  v71 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2970D8EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, xpc_object_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, xpc_object_t object, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t *xpc::array::array(xpc_object_t *a1, xpc_object_t object)
{
  *a1 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  return a1;
}

xpc_object_t *xpc::array::iterator::iterator(xpc_object_t *a1, xpc_object_t object, void *a3)
{
  *a1 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  a1[1] = a3;
  return a1;
}

void *std::shared_ptr<StatsAWD>::shared_ptr[abi:ne200100]<StatsAWD,std::shared_ptr<StatsAWD> ctu::SharedSynchronizable<StatsAWD>::make_shared_ptr<StatsAWD>(StatsAWD*)::{lambda(StatsAWD*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E28FF0;
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

void sub_2970D9228(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<StatsAWD> ctu::SharedSynchronizable<StatsAWD>::make_shared_ptr<StatsAWD>(StatsAWD*)::{lambda(StatsAWD*)#1}::operator() const(StatsAWD*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<StatsAWD *,std::shared_ptr<StatsAWD> ctu::SharedSynchronizable<StatsAWD>::make_shared_ptr<StatsAWD>(StatsAWD*)::{lambda(StatsAWD *)#1},std::allocator<StatsAWD>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<StatsAWD *,std::shared_ptr<StatsAWD> ctu::SharedSynchronizable<StatsAWD>::make_shared_ptr<StatsAWD>(StatsAWD*)::{lambda(StatsAWD *)#1},std::allocator<StatsAWD>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI8StatsAWDE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI8StatsAWDE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI8StatsAWDE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI8StatsAWDE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<StatsAWD> ctu::SharedSynchronizable<StatsAWD>::make_shared_ptr<StatsAWD>(StatsAWD*)::{lambda(StatsAWD*)#1}::operator() const(StatsAWD*)::{lambda(void *)#1}::__invoke(StatsAWD *a1)
{
  if (a1)
  {
    StatsAWD::~StatsAWD(a1);

    operator delete(v1);
  }
}

xpc_object_t **std::unique_ptr<StatsAWD::submit(unsigned int,xpc::object)::$_0,std::default_delete<StatsAWD::submit(unsigned int,xpc::object)::$_0>>::~unique_ptr[abi:ne200100](xpc_object_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(v1[2]);
    operator delete(v1);
    return v2;
  }

  return result;
}

wis::MetricContainer **std::unique_ptr<wis::MetricContainer>::~unique_ptr[abi:ne200100](wis::MetricContainer **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    wis::MetricContainer::~MetricContainer(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void *AnalyticsHelper::create@<X0>(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0x40uLL);
  ctu::OsLogContext::OsLogContext(v5, "com.apple.telephony.abm", "stats.analytics");
  ctu::SharedLoggable<AnalyticsHelper,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(v3, "stats.analytics", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v5);
  v3[7] = 0;
  v3[6] = 0;
  v3[5] = v3 + 6;
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  return std::shared_ptr<AnalyticsHelper>::shared_ptr[abi:ne200100]<AnalyticsHelper,std::shared_ptr<AnalyticsHelper> ctu::SharedSynchronizable<AnalyticsHelper>::make_shared_ptr<AnalyticsHelper>(AnalyticsHelper*)::{lambda(AnalyticsHelper*)#1},0>(a1, v3);
}

void sub_2970D945C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void AnalyticsHelper::AnalyticsHelper(AnalyticsHelper *this)
{
  ctu::OsLogContext::OsLogContext(v2, "com.apple.telephony.abm", "stats.analytics");
  ctu::SharedLoggable<AnalyticsHelper,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this, "stats.analytics", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v2);
  *(this + 7) = 0;
  *(this + 6) = 0;
  *(this + 5) = this + 48;
}

{
  ctu::OsLogContext::OsLogContext(v2, "com.apple.telephony.abm", "stats.analytics");
  ctu::SharedLoggable<AnalyticsHelper,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this, "stats.analytics", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v2);
  *(this + 7) = 0;
  *(this + 6) = 0;
  *(this + 5) = this + 48;
}

void *ctu::SharedLoggable<AnalyticsHelper,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(void *a1, const char *a2, dispatch_qos_class_t a3)
{
  object = 0;
  ctu::SharedSynchronizable<Simulator>::SharedSynchronizable(a1, a2, a3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](a1 + 4, &object);
  MEMORY[0x29C26B020](&object);
  return a1;
}

void AnalyticsHelper::~AnalyticsHelper(char **this)
{
  std::__tree<std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,xpc::dict>>>>::destroy(this[6]);
  MEMORY[0x29C26B020](this + 4);
  v2 = this[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = this[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = this[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  std::__tree<std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,xpc::dict>>>>::destroy(this[6]);
  MEMORY[0x29C26B020](this + 4);
  v2 = this[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = this[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = this[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void AnalyticsHelper::describeAnalyticsCache(AnalyticsHelper *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 272) = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 240) = v3;
  *(a2 + 256) = v3;
  *(a2 + 208) = v3;
  *(a2 + 224) = v3;
  *(a2 + 176) = v3;
  *(a2 + 192) = v3;
  *(a2 + 144) = v3;
  *(a2 + 160) = v3;
  *(a2 + 112) = v3;
  *(a2 + 128) = v3;
  *(a2 + 80) = v3;
  *(a2 + 96) = v3;
  *(a2 + 48) = v3;
  *(a2 + 64) = v3;
  *(a2 + 32) = v3;
  *a2 = v3;
  *(a2 + 16) = v3;
  v4 = (a2 + 16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "** analyticsData **\n", 20);
  v5 = *(this + 5);
  v29 = this + 48;
  if (v5 != (this + 48))
  {
    while (1)
    {
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "[", 1);
      v7 = (v5 + 4);
      if (*(v5 + 55) < 0)
      {
        v7 = *v7;
      }

      v8 = strlen(v7);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "] = \n", 5);
      v10 = v5[7];
      if (v10 != v5 + 8)
      {
        break;
      }

LABEL_7:
      v11 = v5[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v5[2];
          v28 = *v12 == v5;
          v5 = v12;
        }

        while (!v28);
      }

      v5 = v12;
      if (v12 == v29)
      {
        return;
      }
    }

    while (1)
    {
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "<<<", 3);
      v14 = (v10 + 4);
      if (*(v10 + 55) < 0)
      {
        v14 = *v14;
      }

      v15 = strlen(v14);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ">>> = ", 6);
      v18 = MEMORY[0x29C26CD90](v10[7]);
      memset(__dst, 170, sizeof(__dst));
      v19 = strlen(v18);
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v20 = v19;
      if (v19 >= 0x17)
      {
        break;
      }

      HIBYTE(__dst[2]) = v19;
      v21 = __dst;
      if (v19)
      {
        goto LABEL_21;
      }

LABEL_22:
      v20[v21] = 0;
      free(v18);
      if (SHIBYTE(__dst[2]) >= 0)
      {
        v23 = __dst;
      }

      else
      {
        v23 = __dst[0];
      }

      v24 = strlen(v23);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v23, v24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "\n", 1);
      if (SHIBYTE(__dst[2]) < 0)
      {
        operator delete(__dst[0]);
        v26 = v10[1];
        if (v26)
        {
          do
          {
LABEL_29:
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
          goto LABEL_10;
        }
      }

      else
      {
        v26 = v10[1];
        if (v26)
        {
          goto LABEL_29;
        }
      }

      do
      {
        v27 = v10[2];
        v28 = *v27 == v10;
        v10 = v27;
      }

      while (!v28);
LABEL_10:
      v10 = v27;
      if (v27 == v5 + 8)
      {
        goto LABEL_7;
      }
    }

    if ((v19 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v19 | 7) + 1;
    }

    v21 = operator new(v22);
    __dst[1] = v20;
    __dst[2] = (v22 | 0x8000000000000000);
    __dst[0] = v21;
LABEL_21:
    memcpy(v21, v18, v20);
    goto LABEL_22;
  }
}

void sub_2970D9A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(a10);
    _Unwind_Resume(a1);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(a10);
  _Unwind_Resume(a1);
}

void AnalyticsHelper::updateData(uint64_t a1, xpc_object_t *a2)
{
  v203 = *MEMORY[0x29EDCA608];
  memset(&v189, 170, sizeof(v189));
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE7F8]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&v189, object, "", v5);
  xpc_release(object[0]);
  memset(__p, 170, sizeof(__p));
  v6 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE9B8]);
  object[0] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__p, object, "None", v7);
  xpc_release(object[0]);
  size = HIBYTE(v189.__r_.__value_.__r.__words[2]);
  if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v189.__r_.__value_.__l.__size_;
  }

  if (!size || (v9 = *MEMORY[0x29EDBF020], !xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF020])))
  {
    v12 = *(a1 + 32);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_344;
    }

    v13 = MEMORY[0x29C26CD90](*a2);
    memset(object, 170, sizeof(object));
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      if ((v14 | 7) == 0x17)
      {
        v97 = 25;
      }

      else
      {
        v97 = (v14 | 7) + 1;
      }

      v16 = operator new(v97);
      object[1] = v15;
      object[2] = (v97 | 0x8000000000000000);
      object[0] = v16;
    }

    else
    {
      HIBYTE(object[2]) = v14;
      v16 = object;
      if (!v14)
      {
        goto LABEL_195;
      }
    }

    memcpy(v16, v13, v15);
LABEL_195:
    *(v15 + v16) = 0;
    free(v13);
    v98 = object;
    if (SHIBYTE(object[2]) < 0)
    {
      v98 = object[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v98;
    _os_log_error_impl(&dword_296FF7000, v12, OS_LOG_TYPE_ERROR, "Input error: Failed to update AnalyticsData with %s", &buf, 0xCu);
    if (SHIBYTE(object[2]) < 0)
    {
      operator delete(object[0]);
    }

    goto LABEL_344;
  }

  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = MEMORY[0x29EDCAA00];
  if (v10 || (v10 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v10) == v11)
    {
      xpc_retain(v10);
      xdict = v10;
    }

    else
    {
      xdict = xpc_null_create();
    }
  }

  else
  {
    xdict = xpc_null_create();
    v10 = 0;
  }

  v182 = a1;
  xpc_release(v10);
  *(&buf + 1) = 0;
  v202 = 0;
  *&buf = &buf + 8;
  v178 = (a1 + 40);
  v17 = std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::find<std::string>(a1 + 40, &v189.__r_.__value_.__l.__data_);
  v179 = (a1 + 48);
  if ((a1 + 48) == v17)
  {
LABEL_59:
    v38 = xpc_dictionary_get_value(xdict, "ReportProcessStatus");
    goto LABEL_60;
  }

  v177 = v9;
  if (&buf == (v17 + 7) || (v18 = v17[7], v19 = v17 + 8, v18 == v17 + 8))
  {
    v11 = MEMORY[0x29EDCAA00];
    goto LABEL_59;
  }

  while (2)
  {
    memset(object, 170, sizeof(object));
    std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::__construct_node<std::pair<std::string const,xpc::dict> const&>(object, &buf, (v18 + 4));
    v20 = object[0];
    v21 = *(&buf + 1);
    v22 = &buf + 1;
    v23 = &buf + 1;
    if (!*(&buf + 1))
    {
      goto LABEL_50;
    }

    v24 = *(object[0] + 55);
    if (v24 >= 0)
    {
      v25 = object[0] + 32;
    }

    else
    {
      v25 = *(object[0] + 4);
    }

    if (v24 >= 0)
    {
      v26 = *(object[0] + 55);
    }

    else
    {
      v26 = *(object[0] + 5);
    }

    do
    {
      while (1)
      {
        v22 = v21;
        v29 = v21[4];
        v27 = v21 + 4;
        v28 = v29;
        v30 = *(v27 + 23);
        v31 = v30 >= 0 ? v27 : v28;
        v32 = v30 >= 0 ? *(v27 + 23) : v27[1];
        v33 = v32 >= v26 ? v26 : v32;
        v34 = memcmp(v25, v31, v33);
        if (v34)
        {
          break;
        }

        if (v26 >= v32)
        {
          goto LABEL_48;
        }

LABEL_34:
        v21 = *v22;
        v23 = v22;
        if (!*v22)
        {
          goto LABEL_50;
        }
      }

      if (v34 < 0)
      {
        goto LABEL_34;
      }

LABEL_48:
      v21 = v22[1];
    }

    while (v21);
    v23 = v22 + 1;
LABEL_50:
    *v20 = 0;
    v20[1] = 0;
    v20[2] = v22;
    *v23 = v20;
    if (*buf)
    {
      *&buf = *buf;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(&buf + 1), v20);
    ++v202;
    v35 = v18[1];
    if (v35)
    {
      do
      {
        v36 = v35;
        v35 = *v35;
      }

      while (v35);
    }

    else
    {
      do
      {
        v36 = v18[2];
        v37 = *v36 == v18;
        v18 = v36;
      }

      while (!v37);
    }

    v18 = v36;
    if (v36 != v19)
    {
      continue;
    }

    break;
  }

  v43 = *(&buf + 1);
  HIBYTE(object[2]) = 9;
  strcpy(object, "EventInfo");
  v9 = v177;
  v11 = MEMORY[0x29EDCAA00];
  if (!*(&buf + 1))
  {
    goto LABEL_59;
  }

  v44 = &buf + 8;
  while (2)
  {
    while (2)
    {
      v45 = v43[55];
      if (v45 >= 0)
      {
        v46 = v43 + 32;
      }

      else
      {
        v46 = *(v43 + 4);
      }

      if (v45 >= 0)
      {
        v47 = v43[55];
      }

      else
      {
        v47 = *(v43 + 5);
      }

      if (v47 >= 9)
      {
        v48 = 9;
      }

      else
      {
        v48 = v47;
      }

      v49 = memcmp(v46, object, v48);
      if (v49)
      {
        if ((v49 & 0x80000000) == 0)
        {
          break;
        }

        goto LABEL_71;
      }

      if (v47 < 9)
      {
LABEL_71:
        v43 = *(v43 + 1);
        if (!v43)
        {
          goto LABEL_86;
        }

        continue;
      }

      break;
    }

    v44 = v43;
    v43 = *v43;
    if (v43)
    {
      continue;
    }

    break;
  }

LABEL_86:
  if (v44 == &buf + 8)
  {
    goto LABEL_59;
  }

  v50 = v44[55];
  if (v50 >= 0)
  {
    v51 = v44 + 32;
  }

  else
  {
    v51 = *(v44 + 4);
  }

  if (v50 >= 0)
  {
    v52 = v44[55];
  }

  else
  {
    v52 = *(v44 + 5);
  }

  if (v52 >= 9)
  {
    v53 = 9;
  }

  else
  {
    v53 = v52;
  }

  v54 = memcmp(object, v51, v53);
  if (v54)
  {
    if (v54 < 0)
    {
      goto LABEL_59;
    }
  }

  else if (v52 > 9)
  {
    goto LABEL_59;
  }

  v99 = *(v44 + 7);
  if (v99)
  {
    xpc_retain(*(v44 + 7));
  }

  else
  {
    v99 = xpc_null_create();
  }

  xpc_release(xdict);
  xdict = v99;
  v38 = xpc_dictionary_get_value(v99, "ReportProcessStatus");
LABEL_60:
  object[0] = v38;
  if (v38)
  {
    xpc_retain(v38);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  LOBYTE(v39) = xpc::dyn_cast_or_default(object, 0xFF);
  xpc_release(object[0]);
  v187 = 0xAAAAAAAAAAAAAAAALL;
  v40 = xpc_dictionary_create(0, 0, 0);
  v41 = v40;
  if (v40)
  {
    v187 = v40;
    goto LABEL_66;
  }

  v41 = xpc_null_create();
  v187 = v41;
  if (v41)
  {
LABEL_66:
    if (MEMORY[0x29C26CE60](v41) != v11)
    {
      v42 = xpc_null_create();
      goto LABEL_100;
    }

    xpc_retain(v41);
  }

  else
  {
    v42 = xpc_null_create();
    v41 = 0;
LABEL_100:
    v187 = v42;
  }

  xpc_release(v41);
  object[0] = a2;
  object[1] = v9;
  __s1[0] = &v187;
  __s1[1] = v9;
  xpc::dict::object_proxy::operator=(__s1, object, &v186);
  xpc_release(v186);
  v186 = 0;
  v55 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF1E8]);
  object[0] = v55;
  if (v55)
  {
    xpc_retain(v55);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v56 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  memset(__s1, 170, sizeof(__s1));
  v57 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE9B0]);
  object[0] = v57;
  if (v57)
  {
    xpc_retain(v57);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__s1, object, "", v58);
  xpc_release(object[0]);
  v59 = *MEMORY[0x29EDBE928];
  v60 = strlen(*MEMORY[0x29EDBE928]);
  v61 = v60;
  v62 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) == 0)
  {
    if (v60 != -1)
    {
      v63 = SHIBYTE(__s1[2]);
      if (SHIBYTE(__s1[2]) >= v60)
      {
        v64 = v60;
      }

      else
      {
        v64 = SHIBYTE(__s1[2]);
      }

      if (memcmp(__s1, v59, v64))
      {
        goto LABEL_120;
      }

LABEL_119:
      if (v63 != v61)
      {
        goto LABEL_120;
      }

LABEL_134:
      std::map<std::string,xpc::dict>::insert_or_assign[abi:ne200100]<xpc::dict>(&buf, __p, &v187);
      v72 = v182;
      if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v184, v189.__r_.__value_.__l.__data_, v189.__r_.__value_.__l.__size_);
      }

      else
      {
        v184 = v189;
      }

      AnalyticsHelper::submitEvent(v182, &v184, &buf, v56);
      if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v184.__r_.__value_.__l.__data_);
      }

      v39 = 1;
      goto LABEL_212;
    }

LABEL_383:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v60 == -1)
  {
    goto LABEL_383;
  }

  v63 = __s1[1];
  if (__s1[1] >= v60)
  {
    v65 = v60;
  }

  else
  {
    v65 = __s1[1];
  }

  if (!memcmp(__s1[0], v59, v65))
  {
    goto LABEL_119;
  }

LABEL_120:
  v66 = *MEMORY[0x29EDBEA18];
  v67 = strlen(*MEMORY[0x29EDBEA18]);
  v68 = v67;
  if ((v62 & 0x80000000) != 0)
  {
    if (v67 != -1)
    {
      v69 = __s1[1];
      v39 = v39;
      if (__s1[1] >= v67)
      {
        v71 = v67;
      }

      else
      {
        v71 = __s1[1];
      }

      if (!memcmp(__s1[0], v66, v71))
      {
        goto LABEL_132;
      }

      goto LABEL_140;
    }

LABEL_384:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v67 == -1)
  {
    goto LABEL_384;
  }

  v69 = v62;
  v39 = v39;
  if (v62 >= v67)
  {
    v70 = v67;
  }

  else
  {
    v70 = v62;
  }

  if (memcmp(__s1, v66, v70))
  {
    goto LABEL_140;
  }

LABEL_132:
  if (v69 == v68 && !v39)
  {
    goto LABEL_134;
  }

LABEL_140:
  v73 = *MEMORY[0x29EDBE918];
  v74 = strlen(*MEMORY[0x29EDBE918]);
  v75 = v74;
  if ((v62 & 0x80000000) != 0)
  {
    if (v74 != -1)
    {
      v76 = __s1[1];
      if (__s1[1] >= v74)
      {
        v78 = v74;
      }

      else
      {
        v78 = __s1[1];
      }

      if (memcmp(__s1[0], v73, v78))
      {
        goto LABEL_185;
      }

      goto LABEL_152;
    }

LABEL_385:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v74 == -1)
  {
    goto LABEL_385;
  }

  v76 = v62;
  if (v62 >= v74)
  {
    v77 = v74;
  }

  else
  {
    v77 = v62;
  }

  if (memcmp(__s1, v73, v77))
  {
    goto LABEL_185;
  }

LABEL_152:
  if (v76 != v75)
  {
LABEL_185:
    v96 = __s1[1];
    if ((v62 & 0x80000000) == 0)
    {
      v96 = v62;
    }

    if (!v96)
    {
      std::map<std::string,xpc::dict>::insert_or_assign[abi:ne200100]<xpc::dict>(&buf, __p, &v187);
    }

    v72 = v182;
    goto LABEL_212;
  }

  std::map<std::string,xpc::dict>::insert_or_assign[abi:ne200100]<xpc::dict>(&buf, __p, &v187);
  v79 = xpc_int64_create(0);
  if (!v79)
  {
    v79 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "ReportProcessStatus", v79);
  v80 = xpc_null_create();
  xpc_release(v79);
  xpc_release(v80);
  HIBYTE(object[2]) = 9;
  strcpy(object, "EventInfo");
  v81 = *(&buf + 1);
  v82 = &buf + 1;
  if (!*(&buf + 1))
  {
    goto LABEL_206;
  }

  v83 = &buf + 8;
  while (2)
  {
    while (2)
    {
      v84 = v81[55];
      if (v84 >= 0)
      {
        v85 = v81 + 32;
      }

      else
      {
        v85 = *(v81 + 4);
      }

      if (v84 >= 0)
      {
        v86 = v81[55];
      }

      else
      {
        v86 = *(v81 + 5);
      }

      if (v86 >= 9)
      {
        v87 = 9;
      }

      else
      {
        v87 = v86;
      }

      v88 = memcmp(v85, object, v87);
      if (v88)
      {
        if ((v88 & 0x80000000) == 0)
        {
          break;
        }

        goto LABEL_157;
      }

      if (v86 < 9)
      {
LABEL_157:
        v81 = *(v81 + 1);
        if (!v81)
        {
          goto LABEL_172;
        }

        continue;
      }

      break;
    }

    v83 = v81;
    v81 = *v81;
    if (v81)
    {
      continue;
    }

    break;
  }

LABEL_172:
  v82 = &buf + 1;
  if (v83 == &buf + 8)
  {
    goto LABEL_206;
  }

  v89 = v83[55];
  if (v89 >= 0)
  {
    v90 = v83 + 32;
  }

  else
  {
    v90 = *(v83 + 4);
  }

  if (v89 >= 0)
  {
    v91 = v83[55];
  }

  else
  {
    v91 = *(v83 + 5);
  }

  if (v91 >= 9)
  {
    v92 = 9;
  }

  else
  {
    v92 = v91;
  }

  v93 = memcmp(object, v90, v92);
  if (v93)
  {
    if ((v93 & 0x80000000) == 0)
    {
      goto LABEL_184;
    }

LABEL_205:
    v82 = v83;
LABEL_206:
    v183.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
    *v200 = 0xAAAAAAAAAAAAAAAALL;
    v100 = std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::__find_equal<std::string>(&buf, v82, &v183, v200, object);
    if (*v100)
    {
      v94 = xdict;
      v72 = v182;
    }

    else
    {
      v101 = v100;
      v72 = v182;
      v102 = operator new(0x40uLL);
      v102[2] = *object;
      v103 = object[2];
      memset(object, 0, sizeof(object));
      *(v102 + 6) = v103;
      *(v102 + 7) = xdict;
      xdicta = xpc_null_create();
      v104 = v183.__r_.__value_.__r.__words[0];
      *v102 = 0;
      *(v102 + 1) = 0;
      *(v102 + 2) = v104;
      *v101 = v102;
      if (*buf)
      {
        *&buf = *buf;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(&buf + 1), v102);
      ++v202;
      v94 = xdicta;
    }
  }

  else
  {
    if (v91 > 9)
    {
      goto LABEL_205;
    }

LABEL_184:
    v94 = xpc_null_create();
    v95 = *(v83 + 7);
    *(v83 + 7) = xdict;
    xpc_release(v95);
    v72 = v182;
  }

  v39 = 0;
  xdict = v94;
LABEL_212:
  v105 = *(v72 + 32);
  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
  {
    v106 = &v189;
    if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v106 = v189.__r_.__value_.__r.__words[0];
    }

    v107 = __s1;
    if (__s1[2] < 0)
    {
      v107 = __s1[0];
    }

    LODWORD(object[0]) = 136315650;
    *(object + 4) = v106;
    WORD2(object[1]) = 2080;
    *(&object[1] + 6) = v107;
    HIWORD(object[2]) = 1024;
    LODWORD(v191) = v39;
    _os_log_impl(&dword_296FF7000, v105, OS_LOG_TYPE_DEFAULT, "#I Updating AnalyticsData for event[%s]: command=%s, status=%d", object, 0x1Cu);
  }

  if (v39 == 1)
  {
    v108 = std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::find<std::string>(v178, &v189.__r_.__value_.__l.__data_);
    if (v179 != v108)
    {
      v109 = v108;
      v110 = v108[1];
      if (v110)
      {
        v111 = v178;
        do
        {
          v112 = v110;
          v110 = *v110;
        }

        while (v110);
      }

      else
      {
        v132 = v108;
        v111 = v178;
        do
        {
          v112 = v132[2];
          v37 = *v112 == v132;
          v132 = v112;
        }

        while (!v37);
      }

      if (*v111 == v108)
      {
        *v111 = v112;
      }

      v133 = *(v182 + 48);
      --*(v182 + 56);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v133, v109);
      std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(v109[8]);
      if (*(v109 + 55) < 0)
      {
        operator delete(v109[4]);
      }

      operator delete(v109);
    }

    goto LABEL_340;
  }

  v113 = v202;
  if (!v202)
  {
    goto LABEL_340;
  }

  v114 = v179;
  v115 = *v179;
  if (!*v179)
  {
    if (*v178 == v179)
    {
      v134 = 0;
      v135 = v179;
      v114 = v179;
      goto LABEL_323;
    }

    goto LABEL_278;
  }

  if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v116 = &v189;
  }

  else
  {
    v116 = v189.__r_.__value_.__r.__words[0];
  }

  if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v117 = HIBYTE(v189.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v117 = v189.__r_.__value_.__l.__size_;
  }

  v118 = *v179;
  while (2)
  {
    while (1)
    {
      v119 = *(v118 + 55);
      v120 = v119 >= 0 ? (v118 + 32) : *(v118 + 32);
      v121 = v119 >= 0 ? *(v118 + 55) : *(v118 + 40);
      v122 = v117 >= v121 ? v121 : v117;
      v123 = memcmp(v120, v116, v122);
      if (!v123)
      {
        break;
      }

      if (v123 < 0)
      {
        goto LABEL_247;
      }

LABEL_233:
      v114 = v118;
      v118 = *v118;
      if (!v118)
      {
        goto LABEL_248;
      }
    }

    if (v121 >= v117)
    {
      goto LABEL_233;
    }

LABEL_247:
    v118 = *(v118 + 8);
    if (v118)
    {
      continue;
    }

    break;
  }

LABEL_248:
  if (v114 != v179)
  {
    v124 = *(v114 + 55);
    if (v124 >= 0)
    {
      v125 = v114 + 4;
    }

    else
    {
      v125 = v114[4];
    }

    if (v124 >= 0)
    {
      v126 = *(v114 + 55);
    }

    else
    {
      v126 = v114[5];
    }

    if (v126 >= v117)
    {
      v127 = v117;
    }

    else
    {
      v127 = v126;
    }

    v128 = memcmp(v116, v125, v127);
    if (v128)
    {
      if ((v128 & 0x80000000) == 0)
      {
LABEL_260:
        v129 = v114 + 8;
        std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(v114[8]);
        v130 = *(&buf + 1);
        v114[7] = buf;
        v114[8] = v130;
        v131 = v202;
        v114[9] = v202;
        if (v131)
        {
          *(v130 + 16) = v129;
          *&buf = &buf + 8;
          *(&buf + 1) = 0;
          v202 = 0;
        }

        else
        {
          v114[7] = v129;
        }

        goto LABEL_340;
      }
    }

    else if (v117 >= v126)
    {
      goto LABEL_260;
    }
  }

  v134 = *v114;
  if (*v178 == v114)
  {
    v135 = v114;
    goto LABEL_323;
  }

  if (!v134)
  {
LABEL_278:
    v135 = v114;
    do
    {
      v137 = v135;
      v135 = v135[2];
    }

    while (*v135 == v137);
    v134 = 0;
    goto LABEL_281;
  }

  v136 = *v114;
  do
  {
    v135 = v136;
    v136 = v136[1];
  }

  while (v136);
LABEL_281:
  v138 = *(v135 + 55);
  if (v138 >= 0)
  {
    v139 = v135 + 4;
  }

  else
  {
    v139 = v135[4];
  }

  if (v138 >= 0)
  {
    v140 = *(v135 + 55);
  }

  else
  {
    v140 = v135[5];
  }

  v141 = HIBYTE(v189.__r_.__value_.__r.__words[2]);
  if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v142 = &v189;
  }

  else
  {
    v142 = v189.__r_.__value_.__r.__words[0];
  }

  if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v143 = HIBYTE(v189.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v143 = v189.__r_.__value_.__l.__size_;
  }

  if (v143 >= v140)
  {
    v144 = v140;
  }

  else
  {
    v144 = v143;
  }

  v145 = memcmp(v139, v142, v144);
  if (!v145)
  {
    if (v140 < v143)
    {
      goto LABEL_323;
    }

    goto LABEL_300;
  }

  if ((v145 & 0x80000000) == 0)
  {
LABEL_300:
    if (!v115)
    {
      v146 = v179;
      goto LABEL_332;
    }

    while (1)
    {
      v146 = v115;
      v147 = *(v115 + 55);
      v148 = *(v115 + 40);
      if ((v147 & 0x80u) == 0)
      {
        v149 = (v115 + 32);
      }

      else
      {
        v149 = *(v115 + 32);
      }

      if ((v147 & 0x80u) == 0)
      {
        v150 = v147;
      }

      else
      {
        v150 = v148;
      }

      if (v150 >= v143)
      {
        v151 = v143;
      }

      else
      {
        v151 = v150;
      }

      v152 = memcmp(v142, v149, v151);
      if (v152)
      {
        if (v152 < 0)
        {
          goto LABEL_302;
        }

LABEL_316:
        v153 = memcmp(v149, v142, v151);
        if (v153)
        {
          if ((v153 & 0x80000000) == 0)
          {
            goto LABEL_340;
          }
        }

        else if (v150 >= v143)
        {
          goto LABEL_340;
        }

        v115 = v146[1];
        if (!v115)
        {
          v179 = v146 + 1;
          goto LABEL_332;
        }
      }

      else
      {
        if (v143 >= v150)
        {
          goto LABEL_316;
        }

LABEL_302:
        v115 = *v146;
        if (!*v146)
        {
          v179 = v146;
          goto LABEL_332;
        }
      }
    }
  }

LABEL_323:
  v154 = v135 + 1;
  if (!v134)
  {
    v154 = v114;
  }

  v179 = v154;
  if (!*v154)
  {
    if (v134)
    {
      v146 = v135;
    }

    else
    {
      v146 = v114;
    }

    v141 = HIBYTE(v189.__r_.__value_.__r.__words[2]);
LABEL_332:
    v155 = operator new(0x50uLL);
    v156 = v155;
    object[0] = v155;
    object[1] = v178;
    object[2] = 0;
    if (v141 < 0)
    {
      std::string::__init_copy_ctor_external((v155 + 32), v189.__r_.__value_.__l.__data_, v189.__r_.__value_.__l.__size_);
      v160 = v202;
      v157 = *(&buf + 1);
      v161 = buf;
      v156[8] = *(&buf + 1);
      v159 = v156 + 8;
      v156[7] = v161;
      v156[9] = v160;
      if (!v160)
      {
        goto LABEL_336;
      }

LABEL_334:
      *(v157 + 16) = v159;
      *&buf = &buf + 8;
      *(&buf + 1) = 0;
      v202 = 0;
    }

    else
    {
      *(v155 + 32) = v189;
      v157 = *(&buf + 1);
      v158 = buf;
      *(v155 + 8) = *(&buf + 1);
      v159 = (v155 + 64);
      *(v155 + 7) = v158;
      *(v155 + 9) = v113;
      if (v113)
      {
        goto LABEL_334;
      }

LABEL_336:
      v156[7] = v159;
    }

    *v156 = 0;
    v156[1] = 0;
    v156[2] = v146;
    *v179 = v156;
    v162 = **v178;
    if (v162)
    {
      *v178 = v162;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v182 + 48), v156);
    ++*(v182 + 56);
  }

LABEL_340:
  v163 = *(v182 + 32);
  if (!os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
  {
    if (SHIBYTE(__s1[2]) < 0)
    {
      goto LABEL_342;
    }

    goto LABEL_343;
  }

  AnalyticsHelper::describeAnalyticsCache(v182, object);
  if ((v198 & 0x10) != 0)
  {
    v168 = v197;
    if (v197 < v195)
    {
      v197 = v195;
      v168 = v195;
    }

    v169 = &v194;
  }

  else
  {
    if ((v198 & 8) == 0)
    {
      v166 = 0;
      v167 = 0;
      goto LABEL_361;
    }

    v169 = v193;
    v168 = v193[2];
  }

  v170 = *v169;
  v166 = v168 - v170;
  if (v166)
  {
    v171 = &v196;
    if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v171 = v196.__r_.__value_.__r.__words[0];
    }

    v167 = v170 - v171;
  }

  else
  {
    v167 = 0;
  }

LABEL_361:
  v183 = v196;
  memset(&v196, 0, sizeof(v196));
  v172 = v167 + v166;
  v173 = SHIBYTE(v183.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v183.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v173 = v183.__r_.__value_.__l.__size_;
    if (v183.__r_.__value_.__l.__size_ >= v172)
    {
      v174 = v183.__r_.__value_.__r.__words[0];
      v183.__r_.__value_.__l.__size_ = v172;
      goto LABEL_367;
    }

LABEL_365:
    std::string::append(&v183, v172 - v173, 0);
  }

  else
  {
    if (v172 > SHIBYTE(v183.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_365;
    }

    *(&v183.__r_.__value_.__s + 23) = v172;
    v174 = &v183;
LABEL_367:
    v174->__r_.__value_.__s.__data_[v172] = 0;
  }

  if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v167 == -1)
    {
      v183.__r_.__value_.__l.__size_ = 0;
      *v183.__r_.__value_.__l.__data_ = 0;
      goto LABEL_374;
    }

LABEL_373:
    std::string::__erase_external_with_move(&v183, 0, v167);
  }

  else
  {
    if (v167 != -1)
    {
      goto LABEL_373;
    }

    *(&v183.__r_.__value_.__s + 23) = 0;
    v183.__r_.__value_.__s.__data_[0] = 0;
  }

LABEL_374:
  std::stringbuf::__init_buf_ptrs[abi:ne200100](&v191);
  v175 = &v183;
  if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v175 = v183.__r_.__value_.__r.__words[0];
  }

  *v200 = 136315138;
  *&v200[4] = v175;
  _os_log_debug_impl(&dword_296FF7000, v163, OS_LOG_TYPE_DEBUG, "#D %s", v200, 0xCu);
  if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v183.__r_.__value_.__l.__data_);
  }

  object[0] = *MEMORY[0x29EDC9528];
  v176 = *(MEMORY[0x29EDC9528] + 72);
  *(object + *(object[0] - 3)) = *(MEMORY[0x29EDC9528] + 64);
  object[2] = v176;
  v191 = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v196.__r_.__value_.__l.__data_);
  }

  v191 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v192);
  std::iostream::~basic_iostream();
  MEMORY[0x29C26C030](&v199);
  if (SHIBYTE(__s1[2]) < 0)
  {
LABEL_342:
    operator delete(__s1[0]);
  }

LABEL_343:
  xpc_release(v187);
  std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(*(&buf + 1));
  xpc_release(xdict);
LABEL_344:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_348;
    }

LABEL_346:
    v164 = *MEMORY[0x29EDCA608];
  }

  else
  {
    if ((SHIBYTE(v189.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_346;
    }

LABEL_348:
    operator delete(v189.__r_.__value_.__l.__data_);
    v165 = *MEMORY[0x29EDCA608];
  }
}

void sub_2970DAD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, xpc_object_t object, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, xpc_object_t a48)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
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

void std::map<std::string,xpc::dict>::insert_or_assign[abi:ne200100]<xpc::dict>(void **a1, const std::string::value_type **a2, xpc_object_t *a3)
{
  v6 = (a1 + 1);
  v7 = a1[1];
  if (!v7)
  {
    goto LABEL_39;
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  v11 = (a1 + 1);
  do
  {
    while (1)
    {
      v12 = *(v7 + 55);
      v13 = v12 >= 0 ? v7 + 4 : v7[4];
      v14 = v12 >= 0 ? *(v7 + 55) : v7[5];
      v15 = v10 >= v14 ? v14 : v10;
      v16 = memcmp(v13, v9, v15);
      if (v16)
      {
        break;
      }

      if (v14 >= v10)
      {
        goto LABEL_23;
      }

LABEL_9:
      v7 = v7[1];
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    if (v16 < 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v11 = v7;
    v7 = *v7;
  }

  while (v7);
LABEL_24:
  if (v11 == v6)
  {
    goto LABEL_38;
  }

  v17 = *(v11 + 55);
  if (v17 >= 0)
  {
    v18 = v11 + 4;
  }

  else
  {
    v18 = v11[4];
  }

  if (v17 >= 0)
  {
    v19 = *(v11 + 55);
  }

  else
  {
    v19 = v11[5];
  }

  if (v19 >= v10)
  {
    v20 = v10;
  }

  else
  {
    v20 = v19;
  }

  v21 = memcmp(v9, v18, v20);
  if (v21)
  {
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_38:
    v6 = v11;
LABEL_39:
    v30 = 0xAAAAAAAAAAAAAAAALL;
    v31 = 0xAAAAAAAAAAAAAAAALL;
    v24 = std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::__find_equal<std::string>(a1, v6, &v31, &v30, a2);
    if (!*v24)
    {
      v25 = v24;
      v26 = operator new(0x40uLL);
      v27 = v26;
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((v26 + 32), *a2, a2[1]);
      }

      else
      {
        *(v26 + 2) = *a2;
        *(v26 + 6) = a2[2];
      }

      v27[7] = *a3;
      *a3 = xpc_null_create();
      v28 = v31;
      *v27 = 0;
      v27[1] = 0;
      v27[2] = v28;
      *v25 = v27;
      v29 = **a1;
      if (v29)
      {
        *a1 = v29;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v27);
      a1[2] = (a1[2] + 1);
    }
  }

  else
  {
    if (v10 < v19)
    {
      goto LABEL_38;
    }

LABEL_36:
    v22 = *a3;
    *a3 = xpc_null_create();
    v23 = v11[7];
    v11[7] = v22;
    xpc_release(v23);
  }
}

void sub_2970DB1B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,xpc::dict>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,xpc::dict>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AnalyticsHelper::submitEvent(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v44 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 8))
    {
      v9 = a3[2] == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
LABEL_12:
      object = 0xAAAAAAAAAAAAAAAALL;
      v10 = xpc_dictionary_create(0, 0, 0);
      v11 = v10;
      if (v10)
      {
        object = v10;
      }

      else
      {
        v11 = xpc_null_create();
        object = v11;
        if (!v11)
        {
          v12 = xpc_null_create();
          v11 = 0;
          goto LABEL_19;
        }
      }

      if (MEMORY[0x29C26CE60](v11) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v11);
        goto LABEL_20;
      }

      v12 = xpc_null_create();
LABEL_19:
      object = v12;
LABEL_20:
      xpc_release(v11);
      AnalyticsHelper::append(v13, &object, a3);
      v14 = *MEMORY[0x29EDBF370];
      v15 = strlen(*MEMORY[0x29EDBF370]);
      if (v15 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v16 = v15;
      if (v15 >= 0x17)
      {
        if ((v15 | 7) == 0x17)
        {
          v20 = 25;
        }

        else
        {
          v20 = (v15 | 7) + 1;
        }

        v17 = operator new(v20);
        *&__dst[8] = v16;
        *&__dst[16] = v20 | 0x8000000000000000;
        *__dst = v17;
      }

      else
      {
        __dst[23] = v15;
        v17 = __dst;
        if (!v15)
        {
          __dst[0] = 0;
          v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::find<std::string>(a1 + 40, __dst);
          if ((__dst[23] & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_32;
        }
      }

      memmove(v17, v14, v16);
      v17[v16] = 0;
      v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::find<std::string>(a1 + 40, __dst);
      if ((__dst[23] & 0x80000000) == 0)
      {
LABEL_24:
        if ((a1 + 48) == v18)
        {
          goto LABEL_25;
        }

LABEL_33:
        __p[1] = 0;
        __p[2] = 0;
        __p[0] = &__p[1];
        v22 = v18[7];
        v23 = v18 + 8;
        if (v22 == (v18 + 8))
        {
LABEL_47:
          AnalyticsHelper::append(v18, &object, __p);
          std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(__p[1]);
          v19 = *(a1 + 32);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_58;
          }

          goto LABEL_48;
        }

        while (1)
        {
          v41 = 0xAAAAAAAAAAAAAAAALL;
          v42 = 0xAAAAAAAAAAAAAAAALL;
          v18 = std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::__find_equal<std::string>(__p, &__p[1], &v42, &v41, v22 + 4);
          if (*v18)
          {
            v24 = v22[1];
            if (v24)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v25 = v18;
            memset(__dst, 170, 24);
            std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::__construct_node<std::pair<std::string const,xpc::dict> const&>(__dst, __p, (v22 + 4));
            v27 = v42;
            v26 = *__dst;
            **__dst = 0;
            v26[1] = 0;
            v26[2] = v27;
            *v25 = v26;
            if (*__p[0])
            {
              __p[0] = *__p[0];
            }

            v18 = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(__p[1], v26);
            ++__p[2];
            v24 = v22[1];
            if (v24)
            {
              do
              {
LABEL_42:
                v28 = v24;
                v24 = *v24;
              }

              while (v24);
              goto LABEL_35;
            }
          }

          do
          {
            v28 = v22[2];
            v8 = *v28 == v22;
            v22 = v28;
          }

          while (!v8);
LABEL_35:
          v22 = v28;
          if (v28 == v23)
          {
            goto LABEL_47;
          }
        }
      }

LABEL_32:
      v21 = v18;
      operator delete(*__dst);
      v18 = v21;
      if ((a1 + 48) == v21)
      {
LABEL_25:
        v19 = *(a1 + 32);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
LABEL_58:
          v30 = a2;
          if (*(a2 + 23) < 0)
          {
            v30 = *a2;
          }

          v31 = MEMORY[0x29C26CD90](object);
          memset(__p, 170, sizeof(__p));
          v32 = strlen(v31);
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
            __p[1] = v33;
            __p[2] = (v35 | 0x8000000000000000);
            __p[0] = v34;
          }

          else
          {
            HIBYTE(__p[2]) = v32;
            v34 = __p;
            if (!v32)
            {
              goto LABEL_69;
            }
          }

          memcpy(v34, v31, v33);
LABEL_69:
          *(v33 + v34) = 0;
          free(v31);
          v36 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v36 = __p[0];
          }

          *__dst = 136315650;
          *&__dst[4] = v30;
          *&__dst[12] = 1024;
          *&__dst[14] = a4;
          *&__dst[18] = 2080;
          *&__dst[20] = v36;
          _os_log_debug_impl(&dword_296FF7000, v19, OS_LOG_TYPE_DEBUG, "#D Submitting CoreAnalytics event[%s], hasRepeatedInt[%d] - %s", __dst, 0x1Cu);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }
        }

LABEL_48:
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v38, *a2, *(a2 + 8));
        }

        else
        {
          v38 = *a2;
        }

        v37 = object;
        if (object)
        {
          xpc_retain(object);
        }

        else
        {
          v37 = xpc_null_create();
        }

        metric::sendCoreAnalyticsEvent(&v38.__r_.__value_.__l.__data_, &v37, a4);
        xpc_release(v37);
        v37 = 0;
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }

        xpc_release(object);
        goto LABEL_57;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (*(a2 + 23))
    {
      v8 = a3[2] == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      goto LABEL_12;
    }
  }

LABEL_57:
  v29 = *MEMORY[0x29EDCA608];
}

void AnalyticsHelper::append(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3 + 1;
  v4 = *a3;
  if (*a3 != a3 + 1)
  {
    do
    {
      memset(&v11, 170, sizeof(v11));
      if (*(v4 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v11, v4[4], v4[5]);
        v6 = v4[7];
        if (v6)
        {
LABEL_6:
          xpc_retain(v6);
          goto LABEL_9;
        }
      }

      else
      {
        *&v11.__r_.__value_.__l.__data_ = *(v4 + 2);
        v6 = v4[7];
        v11.__r_.__value_.__r.__words[2] = v4[6];
        if (v6)
        {
          goto LABEL_6;
        }
      }

      v6 = xpc_null_create();
LABEL_9:
      applier[0] = MEMORY[0x29EDCA5F8];
      applier[1] = 0x40000000;
      applier[2] = ___ZN15AnalyticsHelper6appendERN3xpc4dictERNSt3__13mapINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES1_NS3_4lessISA_EENS8_INS3_4pairIKSA_S1_EEEEEE_block_invoke;
      applier[3] = &__block_descriptor_tmp_13_1;
      applier[4] = a2;
      xpc_dictionary_apply(v6, applier);
      xpc_release(v6);
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
        v7 = v4[1];
        if (v7)
        {
          do
          {
LABEL_13:
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
          goto LABEL_3;
        }
      }

      else
      {
        v7 = v4[1];
        if (v7)
        {
          goto LABEL_13;
        }
      }

      do
      {
        v8 = v4[2];
        v9 = *v8 == v4;
        v4 = v8;
      }

      while (!v9);
LABEL_3:
      v4 = v8;
    }

    while (v8 != v3);
  }
}

void sub_2970DB888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  xpc_release(v20);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN15AnalyticsHelper6appendERN3xpc4dictERNSt3__13mapINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES1_NS3_4lessISA_EENS8_INS3_4pairIKSA_S1_EEEEEE_block_invoke(uint64_t a1, char *__s, void *a3)
{
  memset(__dst, 170, sizeof(__dst));
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
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
    __dst[1] = v7;
    __dst[2] = (v9 | 0x8000000000000000);
    __dst[0] = v8;
    goto LABEL_9;
  }

  HIBYTE(__dst[2]) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_9:
    memcpy(v8, __s, v7);
  }

  *(v7 + v8) = 0;
  v10 = strlen(*MEMORY[0x29EDBF020]);
  v11 = v10;
  v12 = SHIBYTE(__dst[2]);
  if ((SHIBYTE(__dst[2]) & 0x8000000000000000) == 0)
  {
    if (v10 != -1)
    {
      v13 = __dst;
      v14 = SHIBYTE(__dst[2]);
      goto LABEL_15;
    }

LABEL_28:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v10 == -1)
  {
    goto LABEL_28;
  }

  v13 = __dst[0];
  v14 = __dst[1];
LABEL_15:
  if (v14 >= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  if (!memcmp(v13, *MEMORY[0x29EDBF020], v15) && v14 == v11)
  {
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 0x40000000;
    v18[2] = ___ZN15AnalyticsHelper6appendERN3xpc4dictERNSt3__13mapINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES1_NS3_4lessISA_EENS8_INS3_4pairIKSA_S1_EEEEEE_block_invoke_2;
    v18[3] = &__block_descriptor_tmp_5;
    v18[4] = *(a1 + 32);
    xpc_dictionary_apply(a3, v18);
  }

  if (v12 < 0)
  {
    operator delete(__dst[0]);
  }

  return 1;
}

void sub_2970DBA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN15AnalyticsHelper6appendERN3xpc4dictERNSt3__13mapINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES1_NS3_4lessISA_EENS8_INS3_4pairIKSA_S1_EEEEEE_block_invoke_2(uint64_t a1, const char *a2, xpc_object_t object)
{
  if (object)
  {
    v5 = object;
    xpc_retain(object);
  }

  else
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(**(a1 + 32), a2, v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  return 1;
}

void analytics::registerCallbackForTimedEventImpl(const char *a1, uint64_t *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  abm::AWDHelperGetConnection(&v17);
  if (!v17)
  {
    goto LABEL_21;
  }

  v4 = strlen(a1);
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

    p_dst = operator new(v7);
    __dst.__r_.__value_.__l.__size_ = v5;
    __dst.__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_10;
  }

  *(&__dst.__r_.__value_.__s + 23) = v4;
  p_dst = &__dst;
  if (v4)
  {
LABEL_10:
    memcpy(p_dst, a1, v5);
  }

  p_dst->__r_.__value_.__s.__data_[v5] = 0;
  v8 = std::string::insert(&__dst, 0, "com.apple.Telephony.", 0x14uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v16 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A18B7680 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v10 = qword_2A18B7680;
    if (os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_INFO))
    {
LABEL_16:
      v11 = __p;
      if (v16 < 0)
      {
        v11 = __p[0];
      }

      LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
      *(__dst.__r_.__value_.__r.__words + 4) = v11;
      _os_log_impl(&dword_296FF7000, v10, OS_LOG_TYPE_INFO, "Register for 24h timer: event[%s]", &__dst, 0xCu);
    }
  }

  else
  {
    dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_16);
    v10 = qword_2A18B7680;
    if (os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }
  }

  v12 = *a2;
  wis::WISServerConnection::RegisterCallbackForTimer();
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_21:
  v13 = v18;
  if (v18 && !atomic_fetch_add((v18 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_2970DBDB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a22);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void ___ZN9analytics33registerCallbackForTimedEventImplEPKcN8dispatch5queueEU13block_pointerFvNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  (*(v2 + 16))(v2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2970DBE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<AnalyticsHelper>::shared_ptr[abi:ne200100]<AnalyticsHelper,std::shared_ptr<AnalyticsHelper> ctu::SharedSynchronizable<AnalyticsHelper>::make_shared_ptr<AnalyticsHelper>(AnalyticsHelper*)::{lambda(AnalyticsHelper*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E29040;
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

void sub_2970DBFC4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<AnalyticsHelper> ctu::SharedSynchronizable<AnalyticsHelper>::make_shared_ptr<AnalyticsHelper>(AnalyticsHelper*)::{lambda(AnalyticsHelper*)#1}::operator() const(AnalyticsHelper*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AnalyticsHelper *,std::shared_ptr<AnalyticsHelper> ctu::SharedSynchronizable<AnalyticsHelper>::make_shared_ptr<AnalyticsHelper>(AnalyticsHelper*)::{lambda(AnalyticsHelper *)#1},std::allocator<AnalyticsHelper>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<AnalyticsHelper *,std::shared_ptr<AnalyticsHelper> ctu::SharedSynchronizable<AnalyticsHelper>::make_shared_ptr<AnalyticsHelper>(AnalyticsHelper*)::{lambda(AnalyticsHelper *)#1},std::allocator<AnalyticsHelper>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI15AnalyticsHelperE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI15AnalyticsHelperE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI15AnalyticsHelperE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI15AnalyticsHelperE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<AnalyticsHelper> ctu::SharedSynchronizable<AnalyticsHelper>::make_shared_ptr<AnalyticsHelper>(AnalyticsHelper*)::{lambda(AnalyticsHelper*)#1}::operator() const(AnalyticsHelper*)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,xpc::dict>>>>::destroy(*(a1 + 48));
    MEMORY[0x29C26B020](a1 + 32);
    v2 = *(a1 + 24);
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,xpc::dict>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,xpc::dict>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,xpc::dict>>>>::destroy(*(a1 + 1));
    std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(*(a1 + 8));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(*(a1 + 1));
    xpc_release(*(a1 + 7));
    *(a1 + 7) = 0;
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

xpc_object_t std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::__construct_node<std::pair<std::string const,xpc::dict> const&>(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = operator new(0x40uLL);
  v7 = v6;
  *a1 = v6;
  a1[1] = a2;
  a1[2] = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 32), *a3, *(a3 + 8));
  }

  else
  {
    *(v6 + 2) = *a3;
    *(v6 + 6) = *(a3 + 16);
  }

  v8 = *(a3 + 24);
  *(v7 + 7) = v8;
  if (v8)
  {
    result = xpc_retain(v8);
  }

  else
  {
    result = xpc_null_create();
    *(v7 + 7) = result;
  }

  *(a1 + 16) = 1;
  return result;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,xpc::dict>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,xpc::dict>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      xpc_release(*(v1 + 56));
      *(v1 + 56) = 0;
      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::__find_equal<std::string>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_23;
  }

  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a2 + 55);
  if (v13 >= 0)
  {
    v14 = a2 + 4;
  }

  else
  {
    v14 = a2[4];
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 55);
  }

  else
  {
    v15 = a2[5];
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v11, v14, v16);
  if (!v17)
  {
    if (v12 >= v15)
    {
      goto LABEL_19;
    }

LABEL_23:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
    }

    else
    {
      if (v19)
      {
        v20 = *a2;
        do
        {
          v21 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        v22 = a2;
        do
        {
          v21 = v22[2];
          v23 = *v21 == v22;
          v22 = v21;
        }

        while (v23);
      }

      v24 = *(v21 + 55);
      if (v24 >= 0)
      {
        v25 = v21 + 4;
      }

      else
      {
        v25 = v21[4];
      }

      if (v24 >= 0)
      {
        v26 = *(v21 + 55);
      }

      else
      {
        v26 = v21[5];
      }

      v27 = *(a5 + 23);
      if (v27 >= 0)
      {
        v28 = a5;
      }

      else
      {
        v28 = *a5;
      }

      if (v27 >= 0)
      {
        v29 = *(a5 + 23);
      }

      else
      {
        v29 = a5[1];
      }

      if (v29 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v29;
      }

      v31 = memcmp(v25, v28, v30);
      if (v31)
      {
        if ((v31 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v26 >= v29)
      {
LABEL_48:
        v32 = *v8;
        if (!*v8)
        {
          v33 = v8;
LABEL_69:
          *a3 = v33;
          return v8;
        }

        while (1)
        {
          v33 = v32;
          v36 = v32[4];
          v34 = v32 + 4;
          v35 = v36;
          v37 = *(v34 + 23);
          if (v37 >= 0)
          {
            v38 = v34;
          }

          else
          {
            v38 = v35;
          }

          if (v37 >= 0)
          {
            v39 = *(v34 + 23);
          }

          else
          {
            v39 = v34[1];
          }

          if (v39 >= v29)
          {
            v40 = v29;
          }

          else
          {
            v40 = v39;
          }

          v41 = memcmp(v28, v38, v40);
          if (v41)
          {
            if (v41 < 0)
            {
              goto LABEL_50;
            }

LABEL_64:
            v42 = memcmp(v38, v28, v40);
            if (v42)
            {
              if ((v42 & 0x80000000) == 0)
              {
                goto LABEL_69;
              }
            }

            else if (v39 >= v29)
            {
              goto LABEL_69;
            }

            v8 = v33 + 1;
            v32 = v33[1];
            if (!v32)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v29 >= v39)
            {
              goto LABEL_64;
            }

LABEL_50:
            v32 = *v33;
            v8 = v33;
            if (!*v33)
            {
              goto LABEL_69;
            }
          }
        }
      }
    }

    if (v19)
    {
      *a3 = v21;
      return v21 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (v17 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = memcmp(v14, v11, v16);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
LABEL_21:
      *a3 = a2;
      *a4 = a2;
      return a4;
    }
  }

  else if (v15 >= v12)
  {
    goto LABEL_21;
  }

  v43 = a2[1];
  if (v43)
  {
    v44 = a2[1];
    do
    {
      a4 = v44;
      v44 = *v44;
    }

    while (v44);
  }

  else
  {
    v45 = a2;
    do
    {
      a4 = v45[2];
      v23 = *a4 == v45;
      v45 = a4;
    }

    while (!v23);
  }

  if (a4 != v8)
  {
    v46 = *(a4 + 55);
    if (v46 >= 0)
    {
      v47 = (a4 + 4);
    }

    else
    {
      v47 = a4[4];
    }

    if (v46 >= 0)
    {
      v48 = *(a4 + 55);
    }

    else
    {
      v48 = a4[5];
    }

    if (v48 >= v12)
    {
      v49 = v12;
    }

    else
    {
      v49 = v48;
    }

    v50 = memcmp(v11, v47, v49);
    if (v50)
    {
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_95;
      }
    }

    else if (v12 >= v48)
    {
LABEL_95:
      v51 = *v8;
      if (!*v8)
      {
        v52 = v8;
LABEL_116:
        *a3 = v52;
        return v8;
      }

      while (1)
      {
        v52 = v51;
        v55 = v51[4];
        v53 = v51 + 4;
        v54 = v55;
        v56 = *(v53 + 23);
        if (v56 >= 0)
        {
          v57 = v53;
        }

        else
        {
          v57 = v54;
        }

        if (v56 >= 0)
        {
          v58 = *(v53 + 23);
        }

        else
        {
          v58 = v53[1];
        }

        if (v58 >= v12)
        {
          v59 = v12;
        }

        else
        {
          v59 = v58;
        }

        v60 = memcmp(v11, v57, v59);
        if (v60)
        {
          if (v60 < 0)
          {
            goto LABEL_97;
          }

LABEL_111:
          v61 = memcmp(v57, v11, v59);
          if (v61)
          {
            if ((v61 & 0x80000000) == 0)
            {
              goto LABEL_116;
            }
          }

          else if (v58 >= v12)
          {
            goto LABEL_116;
          }

          v8 = v52 + 1;
          v51 = v52[1];
          if (!v51)
          {
            goto LABEL_116;
          }
        }

        else
        {
          if (v12 >= v58)
          {
            goto LABEL_111;
          }

LABEL_97:
          v51 = *v52;
          v8 = v52;
          if (!*v52)
          {
            goto LABEL_116;
          }
        }
      }
    }
  }

  if (v43)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<std::string,xpc::dict>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<std::string,xpc::dict>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(*(v1 + 64));
      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void RadioModule::create(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x110uLL);
  v5 = a1[1];
  v19 = *a1;
  v20 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v7 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(&v21, v6);
    v8 = v21;
    v21 = 0uLL;
    v9 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *(&v21 + 1);
    if (*(&v21 + 1) && !atomic_fetch_add((*(&v21 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v7 = off_2A18B7390;
  }

  v11 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v7 + 24))(&object, v7);
  RadioModule::RadioModule(v4, &v19, &object);
  *a2 = v4;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v12 = operator new(0x20uLL);
  v12[1] = 0;
  v13 = v12 + 1;
  *v12 = &unk_2A1E29B90;
  v12[2] = 0;
  v12[3] = v4;
  a2[1] = v12;
  v14 = *(v4 + 10);
  if (!v14)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v12 + 2, 1uLL, memory_order_relaxed);
    *(v4 + 9) = v4;
    *(v4 + 10) = v12;
    if (atomic_fetch_add(v13, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v14->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v12 + 2, 1uLL, memory_order_relaxed);
    *(v4 + 9) = v4;
    *(v4 + 10) = v12;
    v15 = v12;
    std::__shared_weak_count::__release_weak(v14);
    v12 = v15;
    if (!atomic_fetch_add(v13, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_18:
      v16 = v12;
      (*(*v12 + 16))();
      std::__shared_weak_count::__release_weak(v16);
    }
  }

LABEL_19:
  if (object)
  {
    dispatch_release(object);
  }

  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  v17 = *a2;
  *&v21 = MEMORY[0x29EDCA5F8];
  *(&v21 + 1) = 0x40000000;
  v22 = ___ZN11RadioModule4initEv_block_invoke;
  v23 = &__block_descriptor_tmp_6;
  v24 = v17;
  ctu::SharedSynchronizable<RadioModule>::execute_wrapped((v17 + 72), &v21);
}

void sub_2970DCA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, dispatch_object_t object, uint64_t a13, std::__shared_weak_count *a14)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  operator delete(v14);
  _Unwind_Resume(a1);
}

void RadioModule::init(RadioModule *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN11RadioModule4initEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_6;
  v1[4] = this;
  ctu::SharedSynchronizable<RadioModule>::execute_wrapped(this + 9, v1);
}

uint64_t RadioModule::RadioModule(uint64_t a1, uint64_t *a2, NSObject **a3)
{
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E2E7E8;
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
    *a1 = &unk_2A1E23A28;
    std::__shared_weak_count::__release_weak(v6);
    v7 = &unk_2A1E29090;
    *a1 = &unk_2A1E29090;
    v8 = (a1 + 72);
    v9 = *a3;
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a1 + 56;
  *a1 = &unk_2A1E23A28;
  v7 = &unk_2A1E29090;
  *a1 = &unk_2A1E29090;
  v8 = (a1 + 72);
  v9 = *a3;
  if (*a3)
  {
LABEL_5:
    dispatch_retain(v9);
    v7 = *a1;
  }

LABEL_6:
  v10 = v7[2](a1);
  ctu::OsLogContext::OsLogContext(&v28, "com.apple.telephony.abm", v10);
  if (v9)
  {
    dispatch_retain(v9);
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v12 = dispatch_queue_create_with_target_V2("radio.mod", initially_inactive, v9);
  dispatch_set_qos_class_floor(v12, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v12);
  *v8 = 0;
  v8[1] = 0;
  *(a1 + 88) = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  *(a1 + 96) = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](a1 + 104, v27);
  MEMORY[0x29C26B020](v27);
  ctu::OsLogContext::~OsLogContext(&v28);
  if (v9)
  {
    dispatch_release(v9);
  }

  *a1 = &unk_2A1E29090;
  *(a1 + 135) = 768;
  *(a1 + 112) = 0;
  radio::RFCalibration_t::RFCalibration_t((a1 + 144));
  *(a1 + 192) = xpc_null_create();
  *(a1 + 200) = 1;
  *(a1 + 208) = 0;
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v13 = off_2A18B7340;
  if (!off_2A18B7340)
  {
    ABMServer::create_default_global(&v28);
    v14 = v28;
    v28 = 0uLL;
    v15 = *(&off_2A18B7340 + 1);
    off_2A18B7340 = v14;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v16 = *(&v28 + 1);
    if (*(&v28 + 1) && !atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v13 = off_2A18B7340;
  }

  v17 = *(&off_2A18B7340 + 1);
  v27[0] = v13;
  v27[1] = *(&off_2A18B7340 + 1);
  if (*(&off_2A18B7340 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7340 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  ctu::iokit::Controller::create(*(*v13 + 144), v18);
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  *(a1 + 232) = 0;
  *(a1 + 234) = 0;
  *(a1 + 240) = a1 + 240;
  *(a1 + 248) = a1 + 240;
  *(a1 + 200) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v19 = xpc_dictionary_create(0, 0, 0);
  if (v19 || (v19 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v19) == MEMORY[0x29EDCAA00])
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
  v21 = xpc_null_create();
  v22 = *(a1 + 192);
  *(a1 + 192) = v20;
  xpc_release(v22);
  xpc_release(v21);
  v23 = *MEMORY[0x29EDB8ED8];
  Controller = TelephonyBasebandCreateController();
  v25 = *(a1 + 264);
  *(a1 + 264) = Controller;
  if (v25)
  {
    CFRelease(v25);
  }

  return a1;
}

void sub_2970DD00C(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  xpc::dict::~dict((v1 + 192));
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  MEMORY[0x29C26B020](v1 + 104);
  ctu::SharedSynchronizable<StatsModule>::~SharedSynchronizable(v2);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

void RadioModule::~RadioModule(RadioModule *this)
{
  *this = &unk_2A1E29090;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v20, 2u);
  }

  v4 = *(this + 33);
  if (v4)
  {
    CFRelease(v4);
  }

  if (*(this + 32))
  {
    v5 = *(this + 31);
    v6 = *(*(this + 30) + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 32) = 0;
    if (v5 != (this + 240))
    {
      do
      {
        v8 = *(v5 + 1);
        v9 = *(v5 + 3);
        if (v9 && atomic_fetch_add(v9 + 3, 0xFFFFFFFF) == 1)
        {
          v10 = v5;
          (*(*v9 + 24))(v9);
          v5 = v10;
        }

        operator delete(v5);
        v5 = v8;
      }

      while (v8 != (this + 240));
    }
  }

  v11 = *(this + 28);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  xpc_release(*(this + 24));
  *(this + 24) = 0;
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  MEMORY[0x29C26B020](v2);
  v12 = *(this + 12);
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = *(this + 11);
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = *(this + 10);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  *this = &unk_2A1E2E7E8;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v15 = *(this + 3);
  if (v15)
  {
    v16 = *(this + 4);
    v17 = *(this + 3);
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = *(this + 3);
    }

    *(this + 4) = v15;
    operator delete(v17);
  }

  v19 = *(this + 2);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }
}

{
  RadioModule::~RadioModule(this);

  operator delete(v1);
}

void ___ZN11RadioModule4initEv_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_296FF7000, v1, OS_LOG_TYPE_DEFAULT, "#I Initializing", v2, 2u);
  }
}

_WORD *RadioModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *RadioModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  *v3 = 3;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void RadioModule::shutdownWithStage(uint64_t a1, char a2, NSObject **a3)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN11RadioModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
  v6[3] = &__block_descriptor_tmp_5_9;
  v5 = *a3;
  v6[4] = a1;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v8 = a2;
  ctu::SharedSynchronizable<RadioModule>::execute_wrapped((a1 + 72), v6);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void ___ZN11RadioModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1 + 30;
  v3 = v1[31];
  if (v3 != v1 + 30)
  {
    do
    {
      boost::signals2::connection::disconnect((v3 + 2));
      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (v1[32])
  {
    v4 = v1[31];
    v5 = *(v1[30] + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    v1[32] = 0;
    if (v4 != v2)
    {
      do
      {
        v7 = v4[1];
        v8 = v4[3];
        if (v8)
        {
          if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
          {
            v9 = v4;
            (*(*v8 + 24))(v8);
            v4 = v9;
          }
        }

        operator delete(v4);
        v4 = v7;
      }

      while (v7 != v2);
    }
  }
}

void RadioModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void RadioModule::registerCommandHandlers_sync(RadioModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_402:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_402;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_402;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBED20];
  v8 = strlen(*MEMORY[0x29EDBED20]);
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
    v245 = v9;
    v246 = v11 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v246) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_14:
    memmove(p_dst, v7, v9);
  }

  *(p_dst + v9) = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_13_4;
  aBlock[4] = this;
  aBlock[5] = v4;
  v242 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(aBlock);
  v243 = v12;
  Service::registerCommandHandler(this, &__dst, &v243);
  if (v12)
  {
    _Block_release(v12);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v13 = *MEMORY[0x29EDBF4B0];
  v14 = strlen(*MEMORY[0x29EDBF4B0]);
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
    v245 = v15;
    v246 = v17 | 0x8000000000000000;
    __dst = v16;
    goto LABEL_27;
  }

  HIBYTE(v246) = v14;
  v16 = &__dst;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  v238[0] = MEMORY[0x29EDCA5F8];
  v238[1] = 1174405120;
  v238[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_14;
  v238[3] = &__block_descriptor_tmp_24_3;
  v238[4] = this;
  v238[5] = v4;
  v239 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v18 = _Block_copy(v238);
  v240 = v18;
  Service::registerCommandHandler(this, &__dst, &v240);
  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v19 = *MEMORY[0x29EDBF5E8];
  v20 = strlen(*MEMORY[0x29EDBF5E8]);
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
    v245 = v21;
    v246 = v23 | 0x8000000000000000;
    __dst = v22;
    goto LABEL_40;
  }

  HIBYTE(v246) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  v235[0] = MEMORY[0x29EDCA5F8];
  v235[1] = 1174405120;
  v235[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_25;
  v235[3] = &__block_descriptor_tmp_35_1;
  v235[4] = this;
  v235[5] = v4;
  v236 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = _Block_copy(v235);
  v237 = v24;
  Service::registerCommandHandler(this, &__dst, &v237);
  if (v24)
  {
    _Block_release(v24);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v25 = *MEMORY[0x29EDBF5F8];
  v26 = strlen(*MEMORY[0x29EDBF5F8]);
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
    v245 = v27;
    v246 = v29 | 0x8000000000000000;
    __dst = v28;
    goto LABEL_53;
  }

  HIBYTE(v246) = v26;
  v28 = &__dst;
  if (v26)
  {
LABEL_53:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  v232[0] = MEMORY[0x29EDCA5F8];
  v232[1] = 1174405120;
  v232[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_36;
  v232[3] = &__block_descriptor_tmp_48_3;
  v232[4] = this;
  v232[5] = v4;
  v233 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v30 = _Block_copy(v232);
  v234 = v30;
  Service::registerCommandHandler(this, &__dst, &v234);
  if (v30)
  {
    _Block_release(v30);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v31 = *MEMORY[0x29EDBF5E0];
  v32 = strlen(*MEMORY[0x29EDBF5E0]);
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
    v245 = v33;
    v246 = v35 | 0x8000000000000000;
    __dst = v34;
    goto LABEL_66;
  }

  HIBYTE(v246) = v32;
  v34 = &__dst;
  if (v32)
  {
LABEL_66:
    memmove(v34, v31, v33);
  }

  *(v34 + v33) = 0;
  v229[0] = MEMORY[0x29EDCA5F8];
  v229[1] = 1174405120;
  v229[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_49;
  v229[3] = &__block_descriptor_tmp_60_3;
  v229[4] = this;
  v229[5] = v4;
  v230 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v36 = _Block_copy(v229);
  v231 = v36;
  Service::registerCommandHandler(this, &__dst, &v231);
  if (v36)
  {
    _Block_release(v36);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v37 = *MEMORY[0x29EDBF320];
  v38 = strlen(*MEMORY[0x29EDBF320]);
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
    v245 = v39;
    v246 = v41 | 0x8000000000000000;
    __dst = v40;
    goto LABEL_79;
  }

  HIBYTE(v246) = v38;
  v40 = &__dst;
  if (v38)
  {
LABEL_79:
    memmove(v40, v37, v39);
  }

  *(v40 + v39) = 0;
  v226[0] = MEMORY[0x29EDCA5F8];
  v226[1] = 1174405120;
  v226[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_61;
  v226[3] = &__block_descriptor_tmp_68_1;
  v226[4] = this;
  v226[5] = v4;
  v227 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v42 = _Block_copy(v226);
  v228 = v42;
  Service::registerCommandHandler(this, &__dst, &v228);
  if (v42)
  {
    _Block_release(v42);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v43 = *MEMORY[0x29EDBF330];
  v44 = strlen(*MEMORY[0x29EDBF330]);
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
    v245 = v45;
    v246 = v47 | 0x8000000000000000;
    __dst = v46;
    goto LABEL_92;
  }

  HIBYTE(v246) = v44;
  v46 = &__dst;
  if (v44)
  {
LABEL_92:
    memmove(v46, v43, v45);
  }

  *(v46 + v45) = 0;
  v223[0] = MEMORY[0x29EDCA5F8];
  v223[1] = 1174405120;
  v223[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_69;
  v223[3] = &__block_descriptor_tmp_80_1;
  v223[4] = this;
  v223[5] = v4;
  v224 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v48 = _Block_copy(v223);
  v225 = v48;
  Service::registerCommandHandler(this, &__dst, &v225);
  if (v48)
  {
    _Block_release(v48);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v49 = *MEMORY[0x29EDBE610];
  v50 = strlen(*MEMORY[0x29EDBE610]);
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
    v245 = v51;
    v246 = v53 | 0x8000000000000000;
    __dst = v52;
    goto LABEL_105;
  }

  HIBYTE(v246) = v50;
  v52 = &__dst;
  if (v50)
  {
LABEL_105:
    memmove(v52, v49, v51);
  }

  *(v52 + v51) = 0;
  v220[0] = MEMORY[0x29EDCA5F8];
  v220[1] = 1174405120;
  v220[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_81;
  v220[3] = &__block_descriptor_tmp_92_0;
  v220[4] = this;
  v220[5] = v4;
  v221 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v54 = _Block_copy(v220);
  v222 = v54;
  Service::registerCommandHandler(this, &__dst, &v222);
  if (v54)
  {
    _Block_release(v54);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v55 = *MEMORY[0x29EDBF770];
  v56 = strlen(*MEMORY[0x29EDBF770]);
  if (v56 > 0x7FFFFFFFFFFFFFF7)
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

    v58 = operator new(v59);
    v245 = v57;
    v246 = v59 | 0x8000000000000000;
    __dst = v58;
    goto LABEL_118;
  }

  HIBYTE(v246) = v56;
  v58 = &__dst;
  if (v56)
  {
LABEL_118:
    memmove(v58, v55, v57);
  }

  *(v58 + v57) = 0;
  v217[0] = MEMORY[0x29EDCA5F8];
  v217[1] = 1174405120;
  v217[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_93;
  v217[3] = &__block_descriptor_tmp_96_0;
  v217[4] = this;
  v217[5] = v4;
  v218 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v60 = _Block_copy(v217);
  v219 = v60;
  Service::registerCommandHandler(this, &__dst, &v219);
  if (v60)
  {
    _Block_release(v60);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v61 = *MEMORY[0x29EDBEA00];
  v62 = strlen(*MEMORY[0x29EDBEA00]);
  if (v62 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v63 = v62;
  if (v62 >= 0x17)
  {
    if ((v62 | 7) == 0x17)
    {
      v65 = 25;
    }

    else
    {
      v65 = (v62 | 7) + 1;
    }

    v64 = operator new(v65);
    v245 = v63;
    v246 = v65 | 0x8000000000000000;
    __dst = v64;
    goto LABEL_131;
  }

  HIBYTE(v246) = v62;
  v64 = &__dst;
  if (v62)
  {
LABEL_131:
    memmove(v64, v61, v63);
  }

  *(v64 + v63) = 0;
  v214[0] = MEMORY[0x29EDCA5F8];
  v214[1] = 1174405120;
  v214[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_97;
  v214[3] = &__block_descriptor_tmp_100_0;
  v214[4] = this;
  v214[5] = v4;
  v215 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v66 = _Block_copy(v214);
  v216 = v66;
  Service::registerCommandHandler(this, &__dst, &v216);
  if (v66)
  {
    _Block_release(v66);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v67 = *MEMORY[0x29EDBEF30];
  v68 = strlen(*MEMORY[0x29EDBEF30]);
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
    v245 = v69;
    v246 = v71 | 0x8000000000000000;
    __dst = v70;
    goto LABEL_144;
  }

  HIBYTE(v246) = v68;
  v70 = &__dst;
  if (v68)
  {
LABEL_144:
    memmove(v70, v67, v69);
  }

  *(v70 + v69) = 0;
  v211[0] = MEMORY[0x29EDCA5F8];
  v211[1] = 1174405120;
  v211[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_101;
  v211[3] = &__block_descriptor_tmp_104_0;
  v211[4] = this;
  v211[5] = v4;
  v212 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v72 = _Block_copy(v211);
  v213 = v72;
  Service::registerCommandHandler(this, &__dst, &v213);
  if (v72)
  {
    _Block_release(v72);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v73 = *MEMORY[0x29EDBF1E0];
  v74 = strlen(*MEMORY[0x29EDBF1E0]);
  if (v74 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v75 = v74;
  if (v74 >= 0x17)
  {
    if ((v74 | 7) == 0x17)
    {
      v77 = 25;
    }

    else
    {
      v77 = (v74 | 7) + 1;
    }

    v76 = operator new(v77);
    v245 = v75;
    v246 = v77 | 0x8000000000000000;
    __dst = v76;
    goto LABEL_157;
  }

  HIBYTE(v246) = v74;
  v76 = &__dst;
  if (v74)
  {
LABEL_157:
    memmove(v76, v73, v75);
  }

  *(v76 + v75) = 0;
  v208[0] = MEMORY[0x29EDCA5F8];
  v208[1] = 1174405120;
  v208[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_105;
  v208[3] = &__block_descriptor_tmp_108_2;
  v208[4] = this;
  v208[5] = v4;
  v209 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v78 = _Block_copy(v208);
  v210 = v78;
  Service::registerCommandHandler(this, &__dst, &v210);
  if (v78)
  {
    _Block_release(v78);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v79 = *MEMORY[0x29EDBF3D8];
  v80 = strlen(*MEMORY[0x29EDBF3D8]);
  if (v80 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v81 = v80;
  if (v80 >= 0x17)
  {
    if ((v80 | 7) == 0x17)
    {
      v83 = 25;
    }

    else
    {
      v83 = (v80 | 7) + 1;
    }

    v82 = operator new(v83);
    v245 = v81;
    v246 = v83 | 0x8000000000000000;
    __dst = v82;
    goto LABEL_170;
  }

  HIBYTE(v246) = v80;
  v82 = &__dst;
  if (v80)
  {
LABEL_170:
    memmove(v82, v79, v81);
  }

  *(v82 + v81) = 0;
  v205[0] = MEMORY[0x29EDCA5F8];
  v205[1] = 1174405120;
  v205[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_109;
  v205[3] = &__block_descriptor_tmp_112_0;
  v205[4] = this;
  v205[5] = v4;
  v206 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v84 = _Block_copy(v205);
  v207 = v84;
  Service::registerCommandHandler(this, &__dst, &v207);
  if (v84)
  {
    _Block_release(v84);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v85 = *MEMORY[0x29EDBEC70];
  v86 = strlen(*MEMORY[0x29EDBEC70]);
  if (v86 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v87 = v86;
  if (v86 >= 0x17)
  {
    if ((v86 | 7) == 0x17)
    {
      v89 = 25;
    }

    else
    {
      v89 = (v86 | 7) + 1;
    }

    v88 = operator new(v89);
    v245 = v87;
    v246 = v89 | 0x8000000000000000;
    __dst = v88;
    goto LABEL_183;
  }

  HIBYTE(v246) = v86;
  v88 = &__dst;
  if (v86)
  {
LABEL_183:
    memmove(v88, v85, v87);
  }

  *(v88 + v87) = 0;
  v202[0] = MEMORY[0x29EDCA5F8];
  v202[1] = 1174405120;
  v202[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_113;
  v202[3] = &__block_descriptor_tmp_116_1;
  v202[4] = this;
  v202[5] = v4;
  v203 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v90 = _Block_copy(v202);
  v204 = v90;
  Service::registerCommandHandler(this, &__dst, &v204);
  if (v90)
  {
    _Block_release(v90);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v91 = *MEMORY[0x29EDBF700];
  v92 = strlen(*MEMORY[0x29EDBF700]);
  if (v92 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v93 = v92;
  if (v92 >= 0x17)
  {
    if ((v92 | 7) == 0x17)
    {
      v95 = 25;
    }

    else
    {
      v95 = (v92 | 7) + 1;
    }

    v94 = operator new(v95);
    v245 = v93;
    v246 = v95 | 0x8000000000000000;
    __dst = v94;
    goto LABEL_196;
  }

  HIBYTE(v246) = v92;
  v94 = &__dst;
  if (v92)
  {
LABEL_196:
    memmove(v94, v91, v93);
  }

  *(v94 + v93) = 0;
  v199[0] = MEMORY[0x29EDCA5F8];
  v199[1] = 1174405120;
  v199[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_117;
  v199[3] = &__block_descriptor_tmp_120;
  v199[4] = this;
  v199[5] = v4;
  v200 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v96 = _Block_copy(v199);
  v201 = v96;
  Service::registerCommandHandler(this, &__dst, &v201);
  if (v96)
  {
    _Block_release(v96);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  if (capabilities::abs::supportsRFSelfTest(v97))
  {
    v98 = *MEMORY[0x29EDBF688];
    v99 = strlen(*MEMORY[0x29EDBF688]);
    if (v99 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v100 = v99;
    if (v99 >= 0x17)
    {
      if ((v99 | 7) == 0x17)
      {
        v103 = 25;
      }

      else
      {
        v103 = (v99 | 7) + 1;
      }

      v101 = operator new(v103);
      v245 = v100;
      v246 = v103 | 0x8000000000000000;
      __dst = v101;
    }

    else
    {
      HIBYTE(v246) = v99;
      v101 = &__dst;
      if (!v99)
      {
LABEL_213:
        *(v101 + v100) = 0;
        v196[0] = MEMORY[0x29EDCA5F8];
        v196[1] = 1174405120;
        v196[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_121;
        v196[3] = &__block_descriptor_tmp_124_0;
        v196[4] = this;
        v196[5] = v4;
        v197 = v6;
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v104 = _Block_copy(v196);
        v198 = v104;
        Service::registerCommandHandler(this, &__dst, &v198);
        if (v104)
        {
          _Block_release(v104);
        }

        if (SHIBYTE(v246) < 0)
        {
          operator delete(__dst);
        }

        v105 = *MEMORY[0x29EDBF690];
        v106 = strlen(*MEMORY[0x29EDBF690]);
        if (v106 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v107 = v106;
        if (v106 >= 0x17)
        {
          if ((v106 | 7) == 0x17)
          {
            v109 = 25;
          }

          else
          {
            v109 = (v106 | 7) + 1;
          }

          v108 = operator new(v109);
          v245 = v107;
          v246 = v109 | 0x8000000000000000;
          __dst = v108;
        }

        else
        {
          HIBYTE(v246) = v106;
          v108 = &__dst;
          if (!v106)
          {
LABEL_226:
            *(v108 + v107) = 0;
            v193[0] = MEMORY[0x29EDCA5F8];
            v193[1] = 1174405120;
            v193[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_125;
            v193[3] = &__block_descriptor_tmp_128;
            v193[4] = this;
            v193[5] = v4;
            v194 = v6;
            atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v110 = _Block_copy(v193);
            v195 = v110;
            Service::registerCommandHandler(this, &__dst, &v195);
            if (v110)
            {
              _Block_release(v110);
            }

            if (SHIBYTE(v246) < 0)
            {
              operator delete(__dst);
            }

            v111 = *MEMORY[0x29EDBF760];
            v112 = strlen(*MEMORY[0x29EDBF760]);
            if (v112 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v113 = v112;
            if (v112 >= 0x17)
            {
              if ((v112 | 7) == 0x17)
              {
                v115 = 25;
              }

              else
              {
                v115 = (v112 | 7) + 1;
              }

              v114 = operator new(v115);
              v245 = v113;
              v246 = v115 | 0x8000000000000000;
              __dst = v114;
            }

            else
            {
              HIBYTE(v246) = v112;
              v114 = &__dst;
              if (!v112)
              {
                goto LABEL_239;
              }
            }

            memmove(v114, v111, v113);
LABEL_239:
            *(v114 + v113) = 0;
            v190[0] = MEMORY[0x29EDCA5F8];
            v190[1] = 1174405120;
            v190[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_129;
            v190[3] = &__block_descriptor_tmp_132_1;
            v190[4] = this;
            v190[5] = v4;
            v191 = v6;
            atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v116 = _Block_copy(v190);
            v192 = v116;
            Service::registerCommandHandler(this, &__dst, &v192);
            if (v116)
            {
              _Block_release(v116);
            }

            if (SHIBYTE(v246) < 0)
            {
              operator delete(__dst);
            }

            if (v191)
            {
              std::__shared_weak_count::__release_weak(v191);
            }

            if (v194)
            {
              std::__shared_weak_count::__release_weak(v194);
            }

            if (v197)
            {
              std::__shared_weak_count::__release_weak(v197);
            }

            goto LABEL_249;
          }
        }

        memmove(v108, v105, v107);
        goto LABEL_226;
      }
    }

    memmove(v101, v98, v100);
    goto LABEL_213;
  }

  v102 = *(this + 13);
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__dst) = 0;
    _os_log_impl(&dword_296FF7000, v102, OS_LOG_TYPE_DEFAULT, "#I RF Self Test not supported", &__dst, 2u);
  }

LABEL_249:
  v117 = *MEMORY[0x29EDBEEA8];
  v118 = strlen(*MEMORY[0x29EDBEEA8]);
  if (v118 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v119 = v118;
  if (v118 >= 0x17)
  {
    if ((v118 | 7) == 0x17)
    {
      v121 = 25;
    }

    else
    {
      v121 = (v118 | 7) + 1;
    }

    v120 = operator new(v121);
    v245 = v119;
    v246 = v121 | 0x8000000000000000;
    __dst = v120;
    goto LABEL_257;
  }

  HIBYTE(v246) = v118;
  v120 = &__dst;
  if (v118)
  {
LABEL_257:
    memmove(v120, v117, v119);
  }

  *(v120 + v119) = 0;
  v187[0] = MEMORY[0x29EDCA5F8];
  v187[1] = 1174405120;
  v187[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_133;
  v187[3] = &__block_descriptor_tmp_136;
  v187[4] = this;
  v187[5] = v4;
  v188 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v122 = _Block_copy(v187);
  v189 = v122;
  Service::registerCommandHandler(this, &__dst, &v189);
  if (v122)
  {
    _Block_release(v122);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v123 = *MEMORY[0x29EDBEBC0];
  v124 = strlen(*MEMORY[0x29EDBEBC0]);
  if (v124 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v125 = v124;
  if (v124 >= 0x17)
  {
    if ((v124 | 7) == 0x17)
    {
      v127 = 25;
    }

    else
    {
      v127 = (v124 | 7) + 1;
    }

    v126 = operator new(v127);
    v245 = v125;
    v246 = v127 | 0x8000000000000000;
    __dst = v126;
    goto LABEL_270;
  }

  HIBYTE(v246) = v124;
  v126 = &__dst;
  if (v124)
  {
LABEL_270:
    memmove(v126, v123, v125);
  }

  *(v126 + v125) = 0;
  v184[0] = MEMORY[0x29EDCA5F8];
  v184[1] = 1174405120;
  v184[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_137;
  v184[3] = &__block_descriptor_tmp_140;
  v184[4] = this;
  v184[5] = v4;
  v185 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v128 = _Block_copy(v184);
  v186 = v128;
  Service::registerCommandHandler(this, &__dst, &v186);
  if (v128)
  {
    _Block_release(v128);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v129 = *MEMORY[0x29EDBEBD8];
  v130 = strlen(*MEMORY[0x29EDBEBD8]);
  if (v130 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v131 = v130;
  if (v130 >= 0x17)
  {
    if ((v130 | 7) == 0x17)
    {
      v133 = 25;
    }

    else
    {
      v133 = (v130 | 7) + 1;
    }

    v132 = operator new(v133);
    v245 = v131;
    v246 = v133 | 0x8000000000000000;
    __dst = v132;
    goto LABEL_283;
  }

  HIBYTE(v246) = v130;
  v132 = &__dst;
  if (v130)
  {
LABEL_283:
    memmove(v132, v129, v131);
  }

  *(v132 + v131) = 0;
  v181[0] = MEMORY[0x29EDCA5F8];
  v181[1] = 1174405120;
  v181[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_141;
  v181[3] = &__block_descriptor_tmp_144_0;
  v181[4] = this;
  v181[5] = v4;
  v182 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v134 = _Block_copy(v181);
  v183 = v134;
  Service::registerCommandHandler(this, &__dst, &v183);
  if (v134)
  {
    _Block_release(v134);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v135 = *MEMORY[0x29EDBE5B8];
  v136 = strlen(*MEMORY[0x29EDBE5B8]);
  if (v136 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v137 = v136;
  if (v136 >= 0x17)
  {
    if ((v136 | 7) == 0x17)
    {
      v139 = 25;
    }

    else
    {
      v139 = (v136 | 7) + 1;
    }

    v138 = operator new(v139);
    v245 = v137;
    v246 = v139 | 0x8000000000000000;
    __dst = v138;
    goto LABEL_296;
  }

  HIBYTE(v246) = v136;
  v138 = &__dst;
  if (v136)
  {
LABEL_296:
    memmove(v138, v135, v137);
  }

  *(v138 + v137) = 0;
  v178[0] = MEMORY[0x29EDCA5F8];
  v178[1] = 1174405120;
  v178[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_145;
  v178[3] = &__block_descriptor_tmp_148_1;
  v178[4] = this;
  v178[5] = v4;
  v179 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v140 = _Block_copy(v178);
  v180 = v140;
  Service::registerCommandHandler(this, &__dst, &v180);
  if (v140)
  {
    _Block_release(v140);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  if (capabilities::abs::supportsRFFEScanData(v141))
  {
    v142 = *MEMORY[0x29EDBF550];
    v143 = strlen(*MEMORY[0x29EDBF550]);
    if (v143 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v144 = v143;
    if (v143 >= 0x17)
    {
      if ((v143 | 7) == 0x17)
      {
        v146 = 25;
      }

      else
      {
        v146 = (v143 | 7) + 1;
      }

      v145 = operator new(v146);
      v245 = v144;
      v246 = v146 | 0x8000000000000000;
      __dst = v145;
    }

    else
    {
      HIBYTE(v246) = v143;
      v145 = &__dst;
      if (!v143)
      {
        goto LABEL_311;
      }
    }

    memmove(v145, v142, v144);
LABEL_311:
    *(v145 + v144) = 0;
    v175[0] = MEMORY[0x29EDCA5F8];
    v175[1] = 1174405120;
    v175[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_149;
    v175[3] = &__block_descriptor_tmp_152;
    v175[4] = this;
    v175[5] = v4;
    v176 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v147 = _Block_copy(v175);
    v177 = v147;
    Service::registerCommandHandler(this, &__dst, &v177);
    if (v147)
    {
      _Block_release(v147);
    }

    if (SHIBYTE(v246) < 0)
    {
      operator delete(__dst);
    }

    if (v176)
    {
      std::__shared_weak_count::__release_weak(v176);
    }
  }

  v148 = *MEMORY[0x29EDBF450];
  v149 = strlen(*MEMORY[0x29EDBF450]);
  if (v149 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v150 = v149;
  if (v149 >= 0x17)
  {
    if ((v149 | 7) == 0x17)
    {
      v152 = 25;
    }

    else
    {
      v152 = (v149 | 7) + 1;
    }

    v151 = operator new(v152);
    v245 = v150;
    v246 = v152 | 0x8000000000000000;
    __dst = v151;
    goto LABEL_325;
  }

  HIBYTE(v246) = v149;
  v151 = &__dst;
  if (v149)
  {
LABEL_325:
    memmove(v151, v148, v150);
  }

  *(v151 + v150) = 0;
  v172[0] = MEMORY[0x29EDCA5F8];
  v172[1] = 1174405120;
  v172[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_153;
  v172[3] = &__block_descriptor_tmp_154_0;
  v172[4] = v4;
  v173 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v153 = _Block_copy(v172);
  v174 = v153;
  Service::registerCommandHandler(this, &__dst, &v174);
  if (v153)
  {
    _Block_release(v153);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v154 = *MEMORY[0x29EDBF338];
  v155 = strlen(*MEMORY[0x29EDBF338]);
  if (v155 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v156 = v155;
  if (v155 >= 0x17)
  {
    if ((v155 | 7) == 0x17)
    {
      v158 = 25;
    }

    else
    {
      v158 = (v155 | 7) + 1;
    }

    v157 = operator new(v158);
    v245 = v156;
    v246 = v158 | 0x8000000000000000;
    __dst = v157;
    goto LABEL_338;
  }

  HIBYTE(v246) = v155;
  v157 = &__dst;
  if (v155)
  {
LABEL_338:
    memmove(v157, v154, v156);
  }

  *(v157 + v156) = 0;
  v169[0] = MEMORY[0x29EDCA5F8];
  v169[1] = 1174405120;
  v169[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_155;
  v169[3] = &__block_descriptor_tmp_158;
  v169[4] = v4;
  v170 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v159 = _Block_copy(v169);
  v171 = v159;
  Service::registerCommandHandler(this, &__dst, &v171);
  if (v159)
  {
    _Block_release(v159);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v160 = *MEMORY[0x29EDBF328];
  v161 = strlen(*MEMORY[0x29EDBF328]);
  if (v161 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v162 = v161;
  if (v161 >= 0x17)
  {
    if ((v161 | 7) == 0x17)
    {
      v164 = 25;
    }

    else
    {
      v164 = (v161 | 7) + 1;
    }

    v163 = operator new(v164);
    v245 = v162;
    v246 = v164 | 0x8000000000000000;
    __dst = v163;
    goto LABEL_351;
  }

  HIBYTE(v246) = v161;
  v163 = &__dst;
  if (v161)
  {
LABEL_351:
    memmove(v163, v160, v162);
  }

  *(v163 + v162) = 0;
  v166[0] = MEMORY[0x29EDCA5F8];
  v166[1] = 1174405120;
  v166[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_159;
  v166[3] = &__block_descriptor_tmp_162;
  v166[4] = v4;
  v167 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v165 = _Block_copy(v166);
  v168 = v165;
  Service::registerCommandHandler(this, &__dst, &v168);
  if (v165)
  {
    _Block_release(v165);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  if (v167)
  {
    std::__shared_weak_count::__release_weak(v167);
  }

  if (v170)
  {
    std::__shared_weak_count::__release_weak(v170);
  }

  if (v173)
  {
    std::__shared_weak_count::__release_weak(v173);
  }

  if (v179)
  {
    std::__shared_weak_count::__release_weak(v179);
  }

  if (v182)
  {
    std::__shared_weak_count::__release_weak(v182);
  }

  if (v185)
  {
    std::__shared_weak_count::__release_weak(v185);
  }

  if (v188)
  {
    std::__shared_weak_count::__release_weak(v188);
  }

  if (v200)
  {
    std::__shared_weak_count::__release_weak(v200);
  }

  if (v203)
  {
    std::__shared_weak_count::__release_weak(v203);
  }

  if (v206)
  {
    std::__shared_weak_count::__release_weak(v206);
  }

  if (v209)
  {
    std::__shared_weak_count::__release_weak(v209);
  }

  if (v212)
  {
    std::__shared_weak_count::__release_weak(v212);
  }

  if (v215)
  {
    std::__shared_weak_count::__release_weak(v215);
  }

  if (v218)
  {
    std::__shared_weak_count::__release_weak(v218);
  }

  if (v221)
  {
    std::__shared_weak_count::__release_weak(v221);
  }

  if (v224)
  {
    std::__shared_weak_count::__release_weak(v224);
  }

  if (v227)
  {
    std::__shared_weak_count::__release_weak(v227);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_weak(v230);
  }

  if (v233)
  {
    std::__shared_weak_count::__release_weak(v233);
  }

  if (v236)
  {
    std::__shared_weak_count::__release_weak(v236);
  }

  if (v239)
  {
    std::__shared_weak_count::__release_weak(v239);
  }

  if (v242)
  {
    std::__shared_weak_count::__release_weak(v242);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_2970DF5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, std::__shared_weak_count *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61, uint64_t a62, uint64_t a63)
{
  if (v70)
  {
    _Block_release(v70);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_weak(a37);
  }

  if (*(v71 - 105) < 0)
  {
    operator delete(*(v71 - 128));
  }

  if (a45)
  {
    std::__shared_weak_count::__release_weak(a45);
  }

  if (a53)
  {
    std::__shared_weak_count::__release_weak(a53);
  }

  if (a61)
  {
    std::__shared_weak_count::__release_weak(a61);
  }

  if (a69)
  {
    std::__shared_weak_count::__release_weak(a69);
  }

  if (STACK[0x2E0])
  {
    std::__shared_weak_count::__release_weak(STACK[0x2E0]);
  }

  if (STACK[0x320])
  {
    std::__shared_weak_count::__release_weak(STACK[0x320]);
  }

  if (STACK[0x360])
  {
    std::__shared_weak_count::__release_weak(STACK[0x360]);
  }

  if (STACK[0x3A0])
  {
    std::__shared_weak_count::__release_weak(STACK[0x3A0]);
  }

  if (STACK[0x3E0])
  {
    std::__shared_weak_count::__release_weak(STACK[0x3E0]);
  }

  if (STACK[0x420])
  {
    std::__shared_weak_count::__release_weak(STACK[0x420]);
  }

  if (STACK[0x460])
  {
    std::__shared_weak_count::__release_weak(STACK[0x460]);
  }

  if (STACK[0x4A0])
  {
    std::__shared_weak_count::__release_weak(STACK[0x4A0]);
  }

  if (STACK[0x4E0])
  {
    std::__shared_weak_count::__release_weak(STACK[0x4E0]);
  }

  if (STACK[0x520])
  {
    std::__shared_weak_count::__release_weak(STACK[0x520]);
  }

  if (STACK[0x560])
  {
    std::__shared_weak_count::__release_weak(STACK[0x560]);
  }

  if (STACK[0x5A0])
  {
    std::__shared_weak_count::__release_weak(STACK[0x5A0]);
  }

  if (STACK[0x5E0])
  {
    std::__shared_weak_count::__release_weak(STACK[0x5E0]);
  }

  v73 = *(v71 - 208);
  if (v73)
  {
    std::__shared_weak_count::__release_weak(v73);
  }

  v74 = *(v71 - 144);
  if (v74)
  {
    std::__shared_weak_count::__release_weak(v74);
  }

  std::__shared_weak_count::__release_weak(v69);
  _Unwind_Resume(a1);
}

void sub_2970DFDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (!a69)
  {
    JUMPOUT(0x2970DFD08);
  }

  JUMPOUT(0x2970DFD04);
}

void sub_2970DFDE4()
{
  if (!STACK[0x320])
  {
    JUMPOUT(0x2970DFD20);
  }

  JUMPOUT(0x2970DFD1CLL);
}

void sub_2970DFDFC()
{
  if (!STACK[0x3A0])
  {
    JUMPOUT(0x2970DFD38);
  }

  JUMPOUT(0x2970DFD34);
}

void sub_2970DFE14()
{
  if (!STACK[0x420])
  {
    JUMPOUT(0x2970DFD50);
  }

  JUMPOUT(0x2970DFD4CLL);
}

void sub_2970DFE2C()
{
  if (!STACK[0x4A0])
  {
    JUMPOUT(0x2970DFD68);
  }

  JUMPOUT(0x2970DFD64);
}

void sub_2970DFE44()
{
  if (!STACK[0x520])
  {
    JUMPOUT(0x2970DFD80);
  }

  JUMPOUT(0x2970DFD7CLL);
}

void sub_2970DFE5C()
{
  if (!STACK[0x5A0])
  {
    JUMPOUT(0x2970DFD98);
  }

  JUMPOUT(0x2970DFD94);
}

void sub_2970DFE74()
{
  if (!*(v0 - 208))
  {
    JUMPOUT(0x2970DFDB0);
  }

  JUMPOUT(0x2970DFDACLL);
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke(void *a1, uint64_t a2, void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[5];
      if (v9)
      {
        v12[0] = MEMORY[0x29EDCA5F8];
        v12[1] = 1174405120;
        v12[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_2;
        v12[3] = &__block_descriptor_tmp_11_2;
        v12[4] = v6;
        v10 = *a3;
        if (*a3)
        {
          v10 = _Block_copy(v10);
          v9 = a1[5];
        }

        aBlock = v10;
        v14 = v9;
        v11 = a1[6];
        v15 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        ctu::SharedSynchronizable<RadioModule>::execute_wrapped((v6 + 72), v12);
        if (v15)
        {
          std::__shared_weak_count::__release_weak(v15);
        }

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

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_2(void *a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  if ((*(*v2 + 96))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(__p, 170, 24);
    v4 = *MEMORY[0x29EDBED20];
    v5 = strlen(*MEMORY[0x29EDBED20]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v5 | 7) + 1;
      }

      p_dst = operator new(v22);
      *(&__dst + 1) = v6;
      v68 = v22 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v68) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_54:
        *(p_dst + v6) = 0;
        v23 = operator new(0x28uLL);
        v24 = v23;
        strcpy(v23, " rejected; ABM is shutting down ");
        v25 = SHIBYTE(v68);
        if ((SHIBYTE(v68) & 0x8000000000000000) != 0)
        {
          v25 = *(&__dst + 1);
          v28 = (v68 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v28 - *(&__dst + 1) < 0x20)
          {
            v26 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v68 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v28)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v27 = __dst;
            if (v28 > 0x3FFFFFFFFFFFFFF2)
            {
              v31 = 0;
LABEL_69:
              v32 = operator new(v3);
              v33 = v32;
              if (v25)
              {
                memmove(v32, v27, v25);
              }

              v34 = &v33[v25];
              v35 = v24[1];
              *v34 = *v24;
              *(v34 + 1) = v35;
              if (!v31)
              {
                operator delete(v27);
              }

              *(&__dst + 1) = v26;
              v68 = v3 | 0x8000000000000000;
              *&__dst = v33;
              v36 = &v33[v26];
LABEL_79:
              *v36 = 0;
              *__p = __dst;
              __p[2] = v68;
              v68 = 0;
              __dst = 0uLL;
              operator delete(v24);
              if (SHIBYTE(v68) < 0)
              {
                operator delete(__dst);
                v41 = v2[13];
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
LABEL_81:
                  v42 = __p;
                  if (SHIBYTE(__p[2]) < 0)
                  {
                    v42 = __p[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v42;
                  _os_log_impl(&dword_296FF7000, v41, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  v44 = a1[5];
                  v43 = a1 + 5;
                  if (!v44)
                  {
                    goto LABEL_104;
                  }

                  goto LABEL_87;
                }
              }

              else
              {
                v41 = v2[13];
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_81;
                }
              }

              v45 = a1[5];
              v43 = a1 + 5;
              if (!v45)
              {
LABEL_104:
                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_106;
              }

LABEL_87:
              *&__dst = 0xAAAAAAAAAAAAAAAALL;
              *&__dst = xpc_null_create();
              v46 = HIBYTE(__p[2]);
              if (SHIBYTE(__p[2]) < 0)
              {
                v46 = __p[1];
              }

              if (v46)
              {
                v47 = xpc_dictionary_create(0, 0, 0);
                if (v47 || (v47 = xpc_null_create()) != 0)
                {
                  if (MEMORY[0x29C26CE60](v47) == MEMORY[0x29EDCAA00])
                  {
                    xpc_retain(v47);
                    v48 = v47;
                  }

                  else
                  {
                    v48 = xpc_null_create();
                  }
                }

                else
                {
                  v48 = xpc_null_create();
                  v47 = 0;
                }

                xpc_release(v47);
                v49 = xpc_null_create();
                v50 = __dst;
                *&__dst = v48;
                xpc_release(v50);
                xpc_release(v49);
                if (SHIBYTE(__p[2]) >= 0)
                {
                  v51 = __p;
                }

                else
                {
                  v51 = __p[0];
                }

                v52 = xpc_string_create(v51);
                if (!v52)
                {
                  v52 = xpc_null_create();
                }

                xpc_dictionary_set_value(v48, *MEMORY[0x29EDBE648], v52);
                v53 = xpc_null_create();
                xpc_release(v52);
                xpc_release(v53);
              }

              LODWORD(v61) = -534716415;
              dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v43, &v61, &__dst);
              xpc_release(__dst);
              goto LABEL_104;
            }

LABEL_60:
            v29 = 2 * v28;
            if (v26 > 2 * v28)
            {
              v29 = v26;
            }

            if ((v29 | 7) == 0x17)
            {
              v30 = 25;
            }

            else
            {
              v30 = (v29 | 7) + 1;
            }

            if (v29 >= 0x17)
            {
              v3 = v30;
            }

            else
            {
              v3 = 23;
            }

            v31 = v28 == 22;
            goto LABEL_69;
          }

          v37 = __dst;
          v39 = (__dst + *(&__dst + 1));
          v40 = v23[1];
          *v39 = *v23;
          v39[1] = v40;
          v38 = v25 + 32;
          *(&__dst + 1) = v25 + 32;
        }

        else
        {
          if (SHIBYTE(v68) < 0x17)
          {
            v26 = SHIBYTE(v68) | 0x20;
            v27 = &__dst;
            v28 = 22;
            goto LABEL_60;
          }

          v37 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v68), " rejected; ABM is shutting down ", 32);
          v38 = v25 + 32;
          HIBYTE(v68) = (v25 + 32) & 0x7F;
        }

        v36 = v37 + v38;
        goto LABEL_79;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_54;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_7;
  aBlock[3] = &__block_descriptor_tmp_10_2;
  v9 = a1[6];
  v8 = a1[7];
  aBlock[4] = v2;
  aBlock[5] = v9;
  v64 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a1[5];
  if (v10)
  {
    v10 = _Block_copy(v10);
  }

  v65 = v10;
  v11 = _Block_copy(aBlock);
  v12 = v2[11];
  if (v12)
  {
    dispatch_retain(v12);
  }

  *&__dst = v11;
  *(&__dst + 1) = v12;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  v62 = 0xAAAAAAAAAAAAAAAALL;
  v13 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v14 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(__p, v13);
    v15 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v16 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v15;
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v17 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v14 = off_2A18B7390;
  }

  v18 = *(&off_2A18B7390 + 1);
  v57 = v14;
  v58 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v14 + 16))(&v59, v14);
  v61 = 0;
  v62 = 0;
  if (v60)
  {
    v62 = std::__shared_weak_count::lock(v60);
    if (v62)
    {
      v61 = v59;
    }

    if (v60)
    {
      std::__shared_weak_count::__release_weak(v60);
    }
  }

  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v19 = v61;
    if (v61)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v19 = v61;
    if (v61)
    {
LABEL_30:
      v20 = __dst;
      if (__dst)
      {
        v20 = _Block_copy(__dst);
      }

      v55 = v20;
      object = *(&__dst + 1);
      if (*(&__dst + 1))
      {
        dispatch_retain(*(&__dst + 1));
      }

      (*(*v19 + 48))(v19, &v55);
      if (object)
      {
        dispatch_release(object);
      }

      if (v55)
      {
        _Block_release(v55);
      }
    }
  }

  v21 = v62;
  if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if (*(&__dst + 1))
  {
    dispatch_release(*(&__dst + 1));
  }

  if (__dst)
  {
    _Block_release(__dst);
  }

  if (v65)
  {
    _Block_release(v65);
  }

  if (v64)
  {
    std::__shared_weak_count::__release_weak(v64);
  }

LABEL_106:
  v54 = *MEMORY[0x29EDCA608];
}

void sub_2970E0764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *aBlock, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *__copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11RadioModuleEE56c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void *__copy_helper_block_e8_40c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE48c36_ZTSNSt3__18weak_ptrI11RadioModuleEE(void *a1, void *a2)
{
  result = a2[5];
  if (result)
  {
    result = _Block_copy(result);
  }

  v6 = a2[6];
  v5 = a2[7];
  a1[5] = result;
  a1[6] = v6;
  a1[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE48c36_ZTSNSt3__18weak_ptrI11RadioModuleEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

uint64_t __copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11RadioModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11RadioModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_14(void *a1, uint64_t a2, void **a3)
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
        v10[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_2_15;
        v10[3] = &__block_descriptor_tmp_21_2;
        v10[4] = v6;
        v9 = *a3;
        if (*a3)
        {
          v9 = _Block_copy(v9);
        }

        aBlock = v9;
        ctu::SharedSynchronizable<RadioModule>::execute_wrapped((v6 + 72), v10);
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

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_2_15(uint64_t a1)
{
  v50 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if ((*(*v2 + 96))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(__p, 170, 24);
    v4 = *MEMORY[0x29EDBF4B0];
    v5 = strlen(*MEMORY[0x29EDBF4B0]);
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
      v49 = v10 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v49) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_17:
        *(p_dst + v6) = 0;
        v11 = operator new(0x28uLL);
        v12 = v11;
        strcpy(v11, " rejected; ABM is shutting down ");
        v13 = SHIBYTE(v49);
        if ((SHIBYTE(v49) & 0x8000000000000000) != 0)
        {
          v13 = *(&__dst + 1);
          v16 = (v49 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v16 - *(&__dst + 1) < 0x20)
          {
            v14 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v49 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v16)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v15 = __dst;
            if (v16 > 0x3FFFFFFFFFFFFFF2)
            {
              v19 = 0;
LABEL_32:
              v20 = operator new(v3);
              v21 = v20;
              if (v13)
              {
                memmove(v20, v15, v13);
              }

              v22 = &v21[v13];
              v23 = v12[1];
              *v22 = *v12;
              *(v22 + 1) = v23;
              if (!v19)
              {
                operator delete(v15);
              }

              *(&__dst + 1) = v14;
              v49 = v3 | 0x8000000000000000;
              *&__dst = v21;
              v24 = &v21[v14];
LABEL_40:
              *v24 = 0;
              *__p = __dst;
              __p[2] = v49;
              v49 = 0;
              __dst = 0uLL;
              operator delete(v12);
              if (SHIBYTE(v49) < 0)
              {
                operator delete(__dst);
                v29 = v2[13];
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
LABEL_42:
                  v30 = __p;
                  if (SHIBYTE(__p[2]) < 0)
                  {
                    v30 = __p[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v30;
                  _os_log_impl(&dword_296FF7000, v29, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  v32 = *(a1 + 40);
                  v31 = (a1 + 40);
                  if (!v32)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_48;
                }
              }

              else
              {
                v29 = v2[13];
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_42;
                }
              }

              v33 = *(a1 + 40);
              v31 = (a1 + 40);
              if (!v33)
              {
LABEL_65:
                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_67;
              }

LABEL_48:
              *&__dst = 0xAAAAAAAAAAAAAAAALL;
              *&__dst = xpc_null_create();
              v34 = HIBYTE(__p[2]);
              if (SHIBYTE(__p[2]) < 0)
              {
                v34 = __p[1];
              }

              if (v34)
              {
                v35 = xpc_dictionary_create(0, 0, 0);
                if (v35 || (v35 = xpc_null_create()) != 0)
                {
                  if (MEMORY[0x29C26CE60](v35) == MEMORY[0x29EDCAA00])
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
                v37 = xpc_null_create();
                v38 = __dst;
                *&__dst = v36;
                xpc_release(v38);
                xpc_release(v37);
                if (SHIBYTE(__p[2]) >= 0)
                {
                  v39 = __p;
                }

                else
                {
                  v39 = __p[0];
                }

                v40 = xpc_string_create(v39);
                if (!v40)
                {
                  v40 = xpc_null_create();
                }

                xpc_dictionary_set_value(v36, *MEMORY[0x29EDBE648], v40);
                v41 = xpc_null_create();
                xpc_release(v40);
                xpc_release(v41);
              }

              v46 = -534716415;
              dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v31, &v46, &__dst);
              xpc_release(__dst);
              goto LABEL_65;
            }

LABEL_23:
            v17 = 2 * v16;
            if (v14 > 2 * v16)
            {
              v17 = v14;
            }

            if ((v17 | 7) == 0x17)
            {
              v18 = 25;
            }

            else
            {
              v18 = (v17 | 7) + 1;
            }

            if (v17 >= 0x17)
            {
              v3 = v18;
            }

            else
            {
              v3 = 23;
            }

            v19 = v16 == 22;
            goto LABEL_32;
          }

          v25 = __dst;
          v27 = (__dst + *(&__dst + 1));
          v28 = v11[1];
          *v27 = *v11;
          v27[1] = v28;
          v26 = v13 + 32;
          *(&__dst + 1) = v13 + 32;
        }

        else
        {
          if (SHIBYTE(v49) < 0x17)
          {
            v14 = SHIBYTE(v49) | 0x20;
            v15 = &__dst;
            v16 = 22;
            goto LABEL_23;
          }

          v25 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v49), " rejected; ABM is shutting down ", 32);
          v26 = v13 + 32;
          HIBYTE(v49) = (v13 + 32) & 0x7F;
        }

        v24 = v25 + v26;
        goto LABEL_40;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_17;
  }

  v43[0] = MEMORY[0x29EDCA5F8];
  v43[1] = 1174405120;
  v43[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_16;
  v43[3] = &__block_descriptor_tmp_18_0;
  v43[4] = v2;
  v8 = *(a1 + 40);
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  aBlock = v8;
  v9 = _Block_copy(v43);
  v45 = v9;
  RadioModule::getVersion_sync(v2, &v45);
  if (v9)
  {
    _Block_release(v9);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

LABEL_67:
  v42 = *MEMORY[0x29EDCA608];
}

void sub_2970E0FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, xpc_object_t object, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void RadioModule::getVersion_sync(uint64_t a1, void (***a2)(void *, std::string *))
{
  v3 = *(a1 + 80);
  if (!v3 || (v5 = *(a1 + 72), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = *(a1 + 135);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
    v8 = *(a1 + 135);
    if ((v8 & 0x80000000) == 0)
    {
LABEL_5:
      if (v8)
      {
        v9 = *a2;
        v37 = *(a1 + 112);
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  v10 = *(a1 + 120);
  if (v10)
  {
    v11 = *a2;
    std::string::__init_copy_ctor_external(&v37, *(a1 + 112), v10);
    v9 = v11;
LABEL_10:
    v9[2](v9, &v37);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    goto LABEL_53;
  }

LABEL_12:
  v35 = 0xAAAAAAAAAAAAAAAALL;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11RadioModule15getVersion_syncEN8dispatch5blockIU13block_pointerFvNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_166;
  aBlock[4] = a1;
  aBlock[5] = v5;
  v33 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = *a2;
  if (*a2)
  {
    v12 = _Block_copy(v12);
  }

  v34 = v12;
  v13 = _Block_copy(aBlock);
  v14 = *(a1 + 88);
  if (v14)
  {
    dispatch_retain(v14);
  }

  v35 = v13;
  v36 = v14;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v15 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v16 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(&v37, v15);
    v17 = *&v37.__r_.__value_.__l.__data_;
    *&v37.__r_.__value_.__l.__data_ = 0uLL;
    v18 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v17;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    size = v37.__r_.__value_.__l.__size_;
    if (v37.__r_.__value_.__l.__size_ && !atomic_fetch_add((v37.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v16 = off_2A18B7390;
  }

  v20 = *(&off_2A18B7390 + 1);
  v26 = v16;
  v27 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v16 + 16))(&v28, v16);
  v30 = 0;
  v31 = 0;
  if (v29)
  {
    v31 = std::__shared_weak_count::lock(v29);
    if (v31)
    {
      v30 = v28;
    }

    if (v29)
    {
      std::__shared_weak_count::__release_weak(v29);
    }
  }

  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
    v21 = v30;
    if (v30)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v21 = v30;
    if (v30)
    {
LABEL_34:
      v22 = v35;
      if (v35)
      {
        v22 = _Block_copy(v35);
      }

      v24 = v22;
      object = v36;
      if (v36)
      {
        dispatch_retain(v36);
      }

      (*(*v21 + 64))(v21, &v24);
      if (object)
      {
        dispatch_release(object);
      }

      if (v24)
      {
        _Block_release(v24);
      }
    }
  }

  v23 = v31;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  if (v36)
  {
    dispatch_release(v36);
  }

  if (v35)
  {
    _Block_release(v35);
  }

  if (v34)
  {
    _Block_release(v34);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

LABEL_53:
  std::__shared_weak_count::__release_weak(v7);
}

void sub_2970E14A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *aBlock)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v25 - 80);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
    std::__shared_weak_count::__release_weak(v24);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_16(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  v80 = 0;
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

  if (MEMORY[0x29C26CE60](v6) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  xdict = v7;
LABEL_9:
  xpc_release(v6);
  if ((*(a2 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      goto LABEL_11;
    }

LABEL_32:
    v80 = -534716416;
    v21 = xpc_string_create("Unknown error");
    if (!v21)
    {
      v21 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE648], v21);
    v22 = xpc_null_create();
    xpc_release(v21);
    xpc_release(v22);
    goto LABEL_149;
  }

  if (!a2[1])
  {
    goto LABEL_32;
  }

LABEL_11:
  v8 = operator new(0x28uLL);
  strcpy(v8, "AppleBasebandServices_Manager-1397");
  v9 = xpc_string_create(v8);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF160], v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  operator delete(v8);
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v11 = xpc_string_create(a2);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE8F0], v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  cf = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v13 = off_2A18B75C0;
  if (!off_2A18B75C0)
  {
    SharedData::create_default_global(&__dst);
    v14 = __dst;
    __dst = 0uLL;
    v15 = *(&off_2A18B75C0 + 1);
    off_2A18B75C0 = v14;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v16 = *(&__dst + 1);
    if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v13 = off_2A18B75C0;
  }

  __p = v13;
  v72 = *(&off_2A18B75C0 + 1);
  if (*(&off_2A18B75C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v17 = *MEMORY[0x29EDBEA50];
  v18 = strlen(*MEMORY[0x29EDBEA50]);
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v18;
  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v18 | 7) + 1;
    }

    p_dst = operator new(v23);
    *(&__dst + 1) = v19;
    v77 = v23 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_39;
  }

  HIBYTE(v77) = v18;
  p_dst = &__dst;
  if (v18)
  {
LABEL_39:
    memmove(p_dst, v17, v19);
  }

  *(p_dst + v19) = 0;
  os_unfair_lock_lock(v13 + 10);
  Preferences::getPreference<__CFDictionary const*>(v13, &__dst, &cf);
  os_unfair_lock_unlock(v13 + 10);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__dst);
    v24 = v72;
    if (!v72)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v24 = v72;
    if (!v72)
    {
LABEL_45:
      v25 = cf;
      if (!cf)
      {
        goto LABEL_54;
      }

      goto LABEL_46;
    }
  }

  if (atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_45;
  }

  (v24->__on_zero_shared)(v24);
  std::__shared_weak_count::__release_weak(v24);
  v25 = cf;
  if (!cf)
  {
LABEL_54:
    v32 = *(v4 + 104);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__dst) = 0;
      _os_log_error_impl(&dword_296FF7000, v32, OS_LOG_TYPE_ERROR, "Failed to get ABM Shared Data", &__dst, 2u);
    }

    goto LABEL_149;
  }

LABEL_46:
  v26 = CFGetTypeID(v25);
  if (v26 != CFDictionaryGetTypeID())
  {
    goto LABEL_54;
  }

  v27 = cf;
  v75 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v74[0] = 0xAAAAAAAAAAAAAAAALL;
  v74[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v74, v27);
  v28 = *MEMORY[0x29EDBF8A8];
  v29 = strlen(*MEMORY[0x29EDBF8A8]);
  if (v29 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
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
    v72 = v30;
    v73 = v33 | 0x8000000000000000;
    __p = p_p;
    goto LABEL_60;
  }

  HIBYTE(v73) = v29;
  p_p = &__p;
  if (v29)
  {
LABEL_60:
    memmove(p_p, v28, v30);
  }

  v34 = *MEMORY[0x29EDBEAB8];
  *(p_p + v30) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v81, v34);
  ctu::cf::map_adapter::getString();
  MEMORY[0x29C26B130](&v81);
  if (v77 >= 0)
  {
    v35 = &__dst;
  }

  else
  {
    v35 = __dst;
  }

  v36 = xpc_string_create(v35);
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, v34, v36);
  v37 = xpc_null_create();
  xpc_release(v36);
  xpc_release(v37);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__dst);
    if ((SHIBYTE(v73) & 0x80000000) == 0)
    {
LABEL_68:
      v38 = strlen(v28);
      if (v38 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_69;
      }

LABEL_136:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(v73) & 0x80000000) == 0)
  {
    goto LABEL_68;
  }

  operator delete(__p);
  v38 = strlen(v28);
  if (v38 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_136;
  }

LABEL_69:
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
    v72 = v39;
    v73 = v41 | 0x8000000000000000;
    __p = v40;
    goto LABEL_76;
  }

  HIBYTE(v73) = v38;
  v40 = &__p;
  if (v38)
  {
LABEL_76:
    memmove(v40, v28, v39);
  }

  v42 = *MEMORY[0x29EDBE988];
  *(v40 + v39) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v81, v42);
  ctu::cf::map_adapter::getString();
  MEMORY[0x29C26B130](&v81);
  if (v77 >= 0)
  {
    v43 = &__dst;
  }

  else
  {
    v43 = __dst;
  }

  v44 = xpc_string_create(v43);
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, v42, v44);
  v45 = xpc_null_create();
  xpc_release(v44);
  xpc_release(v45);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__dst);
    if ((SHIBYTE(v73) & 0x80000000) == 0)
    {
LABEL_84:
      v46 = strlen(v28);
      if (v46 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_85;
      }

LABEL_139:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(v73) & 0x80000000) == 0)
  {
    goto LABEL_84;
  }

  operator delete(__p);
  v46 = strlen(v28);
  if (v46 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_139;
  }

LABEL_85:
  v47 = v46;
  if (v46 >= 0x17)
  {
    if ((v46 | 7) == 0x17)
    {
      v49 = 25;
    }

    else
    {
      v49 = (v46 | 7) + 1;
    }

    v48 = operator new(v49);
    v72 = v47;
    v73 = v49 | 0x8000000000000000;
    __p = v48;
    goto LABEL_92;
  }

  HIBYTE(v73) = v46;
  v48 = &__p;
  if (v46)
  {
LABEL_92:
    memmove(v48, v28, v47);
  }

  v50 = *MEMORY[0x29EDBEC08];
  *(v48 + v47) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v81, v50);
  ctu::cf::map_adapter::getString();
  MEMORY[0x29C26B130](&v81);
  if (v77 >= 0)
  {
    v51 = &__dst;
  }

  else
  {
    v51 = __dst;
  }

  v52 = xpc_string_create(v51);
  if (!v52)
  {
    v52 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, v50, v52);
  v53 = xpc_null_create();
  xpc_release(v52);
  xpc_release(v53);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__dst);
    if ((SHIBYTE(v73) & 0x80000000) == 0)
    {
LABEL_100:
      v54 = strlen(v28);
      if (v54 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_101;
      }

LABEL_142:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(v73) & 0x80000000) == 0)
  {
    goto LABEL_100;
  }

  operator delete(__p);
  v54 = strlen(v28);
  if (v54 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_142;
  }

LABEL_101:
  v55 = v54;
  if (v54 >= 0x17)
  {
    if ((v54 | 7) == 0x17)
    {
      v57 = 25;
    }

    else
    {
      v57 = (v54 | 7) + 1;
    }

    v56 = operator new(v57);
    v72 = v55;
    v73 = v57 | 0x8000000000000000;
    __p = v56;
    goto LABEL_108;
  }

  HIBYTE(v73) = v54;
  v56 = &__p;
  if (v54)
  {
LABEL_108:
    memmove(v56, v28, v55);
  }

  v58 = *MEMORY[0x29EDBE6A8];
  *(v56 + v55) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v81, v58);
  ctu::cf::map_adapter::getString();
  MEMORY[0x29C26B130](&v81);
  if (v77 >= 0)
  {
    v59 = &__dst;
  }

  else
  {
    v59 = __dst;
  }

  v60 = xpc_string_create(v59);
  if (!v60)
  {
    v60 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, v58, v60);
  v61 = xpc_null_create();
  xpc_release(v60);
  xpc_release(v61);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__dst);
    if ((SHIBYTE(v73) & 0x80000000) == 0)
    {
LABEL_116:
      v62 = strlen(v28);
      if (v62 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_117;
      }

LABEL_145:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(v73) & 0x80000000) == 0)
  {
    goto LABEL_116;
  }

  operator delete(__p);
  v62 = strlen(v28);
  if (v62 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_145;
  }

LABEL_117:
  v63 = v62;
  if (v62 >= 0x17)
  {
    if ((v62 | 7) == 0x17)
    {
      v65 = 25;
    }

    else
    {
      v65 = (v62 | 7) + 1;
    }

    v64 = operator new(v65);
    v72 = v63;
    v73 = v65 | 0x8000000000000000;
    __p = v64;
  }

  else
  {
    HIBYTE(v73) = v62;
    v64 = &__p;
    if (!v62)
    {
      goto LABEL_125;
    }
  }

  memmove(v64, v28, v63);
LABEL_125:
  v66 = *MEMORY[0x29EDBEC10];
  *(v64 + v63) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v81, v66);
  ctu::cf::map_adapter::getString();
  MEMORY[0x29C26B130](&v81);
  if (v77 >= 0)
  {
    v67 = &__dst;
  }

  else
  {
    v67 = __dst;
  }

  v68 = xpc_string_create(v67);
  if (!v68)
  {
    v68 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, v66, v68);
  v69 = xpc_null_create();
  xpc_release(v68);
  xpc_release(v69);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__dst);
    if ((SHIBYTE(v73) & 0x80000000) == 0)
    {
LABEL_132:
      MEMORY[0x29C26B180](v74);
      v70 = v75;
      if (!v75)
      {
        goto LABEL_149;
      }

      goto LABEL_148;
    }
  }

  else if ((SHIBYTE(v73) & 0x80000000) == 0)
  {
    goto LABEL_132;
  }

  operator delete(__p);
  MEMORY[0x29C26B180](v74);
  v70 = v75;
  if (v75)
  {
LABEL_148:
    CFRelease(v70);
  }

LABEL_149:
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int &,xpc::dict&>((a1 + 40), &v80, &xdict);
  xpc_release(xdict);
}

void sub_2970E2034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, const void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, xpc_object_t object)
{
  MEMORY[0x29C26B130](v23 - 72);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C26B180](&a15);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_25(void *a1, uint64_t a2, void **a3)
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
        v10[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_2_26;
        v10[3] = &__block_descriptor_tmp_32_2;
        v10[4] = v6;
        v9 = *a3;
        if (*a3)
        {
          v9 = _Block_copy(v9);
        }

        aBlock = v9;
        ctu::SharedSynchronizable<RadioModule>::execute_wrapped((v6 + 72), v10);
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

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_2_26(uint64_t a1)
{
  v50 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if ((*(*v2 + 96))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(__p, 170, 24);
    v4 = *MEMORY[0x29EDBF5E8];
    v5 = strlen(*MEMORY[0x29EDBF5E8]);
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
      v49 = v10 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v49) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_17:
        *(p_dst + v6) = 0;
        v11 = operator new(0x28uLL);
        v12 = v11;
        strcpy(v11, " rejected; ABM is shutting down ");
        v13 = SHIBYTE(v49);
        if ((SHIBYTE(v49) & 0x8000000000000000) != 0)
        {
          v13 = *(&__dst + 1);
          v16 = (v49 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v16 - *(&__dst + 1) < 0x20)
          {
            v14 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v49 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v16)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v15 = __dst;
            if (v16 > 0x3FFFFFFFFFFFFFF2)
            {
              v19 = 0;
LABEL_32:
              v20 = operator new(v3);
              v21 = v20;
              if (v13)
              {
                memmove(v20, v15, v13);
              }

              v22 = &v21[v13];
              v23 = v12[1];
              *v22 = *v12;
              *(v22 + 1) = v23;
              if (!v19)
              {
                operator delete(v15);
              }

              *(&__dst + 1) = v14;
              v49 = v3 | 0x8000000000000000;
              *&__dst = v21;
              v24 = &v21[v14];
LABEL_40:
              *v24 = 0;
              *__p = __dst;
              __p[2] = v49;
              v49 = 0;
              __dst = 0uLL;
              operator delete(v12);
              if (SHIBYTE(v49) < 0)
              {
                operator delete(__dst);
                v29 = v2[13];
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
LABEL_42:
                  v30 = __p;
                  if (SHIBYTE(__p[2]) < 0)
                  {
                    v30 = __p[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v30;
                  _os_log_impl(&dword_296FF7000, v29, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  v32 = *(a1 + 40);
                  v31 = (a1 + 40);
                  if (!v32)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_48;
                }
              }

              else
              {
                v29 = v2[13];
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_42;
                }
              }

              v33 = *(a1 + 40);
              v31 = (a1 + 40);
              if (!v33)
              {
LABEL_65:
                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_67;
              }

LABEL_48:
              *&__dst = 0xAAAAAAAAAAAAAAAALL;
              *&__dst = xpc_null_create();
              v34 = HIBYTE(__p[2]);
              if (SHIBYTE(__p[2]) < 0)
              {
                v34 = __p[1];
              }

              if (v34)
              {
                v35 = xpc_dictionary_create(0, 0, 0);
                if (v35 || (v35 = xpc_null_create()) != 0)
                {
                  if (MEMORY[0x29C26CE60](v35) == MEMORY[0x29EDCAA00])
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
                v37 = xpc_null_create();
                v38 = __dst;
                *&__dst = v36;
                xpc_release(v38);
                xpc_release(v37);
                if (SHIBYTE(__p[2]) >= 0)
                {
                  v39 = __p;
                }

                else
                {
                  v39 = __p[0];
                }

                v40 = xpc_string_create(v39);
                if (!v40)
                {
                  v40 = xpc_null_create();
                }

                xpc_dictionary_set_value(v36, *MEMORY[0x29EDBE648], v40);
                v41 = xpc_null_create();
                xpc_release(v40);
                xpc_release(v41);
              }

              v46 = -534716415;
              dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v31, &v46, &__dst);
              xpc_release(__dst);
              goto LABEL_65;
            }

LABEL_23:
            v17 = 2 * v16;
            if (v14 > 2 * v16)
            {
              v17 = v14;
            }

            if ((v17 | 7) == 0x17)
            {
              v18 = 25;
            }

            else
            {
              v18 = (v17 | 7) + 1;
            }

            if (v17 >= 0x17)
            {
              v3 = v18;
            }

            else
            {
              v3 = 23;
            }

            v19 = v16 == 22;
            goto LABEL_32;
          }

          v25 = __dst;
          v27 = (__dst + *(&__dst + 1));
          v28 = v11[1];
          *v27 = *v11;
          v27[1] = v28;
          v26 = v13 + 32;
          *(&__dst + 1) = v13 + 32;
        }

        else
        {
          if (SHIBYTE(v49) < 0x17)
          {
            v14 = SHIBYTE(v49) | 0x20;
            v15 = &__dst;
            v16 = 22;
            goto LABEL_23;
          }

          v25 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v49), " rejected; ABM is shutting down ", 32);
          v26 = v13 + 32;
          HIBYTE(v49) = (v13 + 32) & 0x7F;
        }

        v24 = v25 + v26;
        goto LABEL_40;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_17;
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_27;
  aBlock[3] = &__block_descriptor_tmp_29_1;
  v8 = *(a1 + 40);
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  v44 = v8;
  v9 = _Block_copy(aBlock);
  v45 = v9;
  RadioModule::getOperatingMode_sync(v2, &v45);
  if (v9)
  {
    _Block_release(v9);
  }

  if (v44)
  {
    _Block_release(v44);
  }

LABEL_67:
  v42 = *MEMORY[0x29EDCA608];
}

void sub_2970E27BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, xpc_object_t object, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void RadioModule::getOperatingMode_sync(uint64_t a1, void **a2)
{
  v3 = *(a1 + 80);
  if (!v3 || (v5 = *(a1 + 72), (v6 = std::__shared_weak_count::lock(v3)) == 0))
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

  v33 = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11RadioModule21getOperatingMode_syncEN8dispatch5blockIU13block_pointerFviEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_167;
  aBlock[4] = a1;
  aBlock[5] = v5;
  v31 = v7;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = *a2;
  if (*a2)
  {
    v9 = _Block_copy(v9);
  }

  v32 = v9;
  v10 = _Block_copy(aBlock);
  v11 = *(a1 + 88);
  if (v11)
  {
    dispatch_retain(*(a1 + 88));
  }

  v33 = v10;
  v34 = v11;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v12 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v13 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(buf, v12);
    v14 = *buf;
    memset(buf, 0, sizeof(buf));
    v15 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v14;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v16 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v13 = off_2A18B7390;
  }

  v17 = *(&off_2A18B7390 + 1);
  v24 = v13;
  v25 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v13 + 16))(&v26, v13);
  v28 = 0;
  v29 = 0;
  if (v27)
  {
    v29 = std::__shared_weak_count::lock(v27);
    if (v29)
    {
      v28 = v26;
    }

    if (v27)
    {
      std::__shared_weak_count::__release_weak(v27);
    }
  }

  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    v18 = v28;
    if (!v28)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v18 = v28;
    if (!v28)
    {
      goto LABEL_37;
    }
  }

  v19 = *(a1 + 104);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v19, OS_LOG_TYPE_DEFAULT, "#I Request to get operating mode", buf, 2u);
  }

  v20 = v33;
  if (v33)
  {
    v20 = _Block_copy(v33);
  }

  v22 = v20;
  object = v34;
  if (v34)
  {
    dispatch_retain(v34);
  }

  (*(*v18 + 112))(v18, &v22);
  if (object)
  {
    dispatch_release(object);
  }

  if (v22)
  {
    _Block_release(v22);
  }

LABEL_37:
  v21 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if (v34)
  {
    dispatch_release(v34);
  }

  if (v33)
  {
    _Block_release(v33);
  }

  if (v32)
  {
    _Block_release(v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  std::__shared_weak_count::__release_weak(v7);
}