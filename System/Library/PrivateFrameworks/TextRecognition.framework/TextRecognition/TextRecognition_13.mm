void std::__allocate_at_least[abi:ne200100]<std::allocator<CRCHLatticePath>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x92492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<CRCHLatticePath>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 448;
    CRCHLatticePath::~CRCHLatticePath((i - 448));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *CoreRecognition::EspressoModelWrapper::EspressoModelWrapper(void *this)
{
  this[5] = 0;
  this[6] = 0;
  this[7] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

{
  this[5] = 0;
  this[6] = 0;
  this[7] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

void CoreRecognition::EspressoModelWrapper::~EspressoModelWrapper(void **this)
{
  if ((CoreRecognition::EspressoModelWrapper::resetEspressoState(this) & 1) == 0)
  {
    v2 = CROSLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1B40D2000, v2, OS_LOG_TYPE_FAULT, "EspressoModelWrapper::~EspressoModelWrapper Error destroying model", v3, 2u);
    }
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }
}

uint64_t CoreRecognition::EspressoModelWrapper::resetEspressoState(CoreRecognition::EspressoModelWrapper *this)
{
  if (*(this + 2))
  {
    if (espresso_plan_destroy())
    {
      v2 = CROSLogForCategory(0);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v7 = 0;
        v3 = "EspressoModelWrapper::resetEspressoState Error destroying plan";
        v4 = &v7;
LABEL_10:
        _os_log_impl(&dword_1B40D2000, v2, OS_LOG_TYPE_ERROR, v3, v4, 2u);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    *(this + 2) = 0;
  }

  if (*(this + 1))
  {
    if (espresso_context_destroy())
    {
      v2 = CROSLogForCategory(0);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v6 = 0;
        v3 = "EspressoModelWrapper::resetEspressoState Error destroying context";
        v4 = &v6;
        goto LABEL_10;
      }

LABEL_11:

      return 0;
    }

    *(this + 1) = 0;
  }

  return 1;
}

uint64_t CoreRecognition::EspressoModelWrapper::createContext(_DWORD *a1, void *a2)
{
  v3 = a2;
  if (v3 && *a1 == 5)
  {
    espresso_device_id_for_metal_device();
  }

  context = espresso_create_context();

  return context;
}

uint64_t CoreRecognition::EspressoModelWrapper::initialize(int *a1, uint64_t a2, int a3, void *a4)
{
  v6 = 65552;
  v7 = a4;
  *a1 = a3;
  if (a3 == 10007 || a3 == 5)
  {
LABEL_5:
    a1[1] = v6;
    Context = CoreRecognition::EspressoModelWrapper::createContext(a1, v7);
    *(a1 + 1) = Context;
    if (Context)
    {
      goto LABEL_6;
    }

    v13 = *a1;
    if (*a1 == 10007)
    {
      v14 = CROSLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B40D2000, v14, OS_LOG_TYPE_ERROR, "EspressoModelWrapper::initialize Cannot create ANE context, fallback to MPS", buf, 2u);
      }

      *a1 = 5;
      v15 = CoreRecognition::EspressoModelWrapper::createContext(a1, v7);
      *(a1 + 1) = v15;
      if (v15)
      {
        goto LABEL_6;
      }

      v13 = *a1;
    }

    if (v13 != 5)
    {
      goto LABEL_19;
    }

    v16 = CROSLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v28 = 0;
      _os_log_impl(&dword_1B40D2000, v16, OS_LOG_TYPE_ERROR, "EspressoModelWrapper::initialize Cannot create MPS context, fallback to CPU", v28, 2u);
    }

    *a1 = 0x1002000000000;
    v17 = CoreRecognition::EspressoModelWrapper::createContext(a1, v7);
    *(a1 + 1) = v17;
    if (!v17)
    {
LABEL_19:
      v18 = CROSLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v27 = 0;
        v19 = "EspressoModelWrapper::initialize Error creating context";
        v20 = &v27;
LABEL_23:
        _os_log_impl(&dword_1B40D2000, v18, OS_LOG_TYPE_ERROR, v19, v20, 2u);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

LABEL_6:
    plan = espresso_create_plan();
    *(a1 + 2) = plan;
    if (!plan)
    {
      v21 = CROSLogForCategory(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *v26 = 0;
        _os_log_impl(&dword_1B40D2000, v21, OS_LOG_TYPE_ERROR, "EspressoModelWrapper::initialize Error creating plan", v26, 2u);
      }

      CoreRecognition::EspressoModelWrapper::resetEspressoState(a1);
      goto LABEL_33;
    }

    if (espresso_plan_add_network())
    {
      v10 = CROSLogForCategory(0);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_32:

        CoreRecognition::EspressoModelWrapper::resetEspressoState(a1);
        goto LABEL_33;
      }

      v25 = 0;
      v11 = "EspressoModelWrapper::initialize Error loading model";
      v12 = &v25;
    }

    else
    {
      if (!espresso_plan_build())
      {
        MEMORY[0x1B8C73D60](a1 + 10, "");
        v22 = 1;
        goto LABEL_34;
      }

      v10 = CROSLogForCategory(0);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      v24 = 0;
      v11 = "EspressoModelWrapper::initialize Error building plan";
      v12 = &v24;
    }

    _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
    goto LABEL_32;
  }

  if (!a3)
  {
    v6 = 65568;
    goto LABEL_5;
  }

  v18 = CROSLogForCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *v30 = 0;
    v19 = "EspressoModelWrapper::initialize Unexpected computeEngine";
    v20 = v30;
    goto LABEL_23;
  }

LABEL_24:

LABEL_33:
  v22 = 0;
LABEL_34:

  return v22;
}

uint64_t CoreRecognition::EspressoModelWrapper::bindInput(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  if (espresso_buffer_pack_tensor_shape())
  {
    v3 = CROSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      v4 = "EspressoModelWrapper::setInput Error setting input buffer shape";
LABEL_7:
      _os_log_impl(&dword_1B40D2000, v3, OS_LOG_TYPE_ERROR, v4, v6, 2u);
    }
  }

  else
  {
    *&v7 = a2;
    LODWORD(v17) = 65568;
    if (!espresso_network_bind_buffer())
    {
      return 1;
    }

    v3 = CROSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      v4 = "EspressoModelWrapper::setInput Error binding input buffer";
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t CoreRecognition::EspressoModelWrapper::bindOutput(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v7 = 0;
    espresso_blob_is_dynamic();
  }

  if (!espresso_network_bind_buffer())
  {
    return 1;
  }

  v4 = CROSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B40D2000, v4, OS_LOG_TYPE_ERROR, "EspressoModelWrapper::bindOutput Error binding output buffer", v6, 2u);
  }

  return 0;
}

uint64_t CoreRecognition::EspressoModelWrapper::selectConfiguration(uint64_t a1, const std::string *a2)
{
  v2 = a2;
  v4 = (a1 + 40);
  v5 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v6 = *(a1 + 63);
  v7 = (a1 + 40);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
  }

  if (v5 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (v5 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (size >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = size;
  }

  v10 = memcmp(v7, a2, v9);
  if (size != v6 || v10 != 0)
  {
    if (espresso_plan_get_phase() == 1 && espresso_plan_build_clean())
    {
      v12 = CROSLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v18 = 0;
        v13 = "EspressoModelWrapper::selectConfiguration Error cleaning current plan";
        v14 = &v18;
LABEL_25:
        _os_log_impl(&dword_1B40D2000, v12, OS_LOG_TYPE_ERROR, v13, v14, 2u);
        goto LABEL_26;
      }

      goto LABEL_26;
    }

    if (espresso_network_select_configuration())
    {
      v12 = CROSLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = 0;
        v13 = "EspressoModelWrapper::selectConfiguration Error selecting configuration";
        v14 = &v17;
        goto LABEL_25;
      }

LABEL_26:

      return 0;
    }

    if (espresso_plan_build())
    {
      v12 = CROSLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = 0;
        v13 = "EspressoModelWrapper::selectConfiguration Error building Espresso plan";
        v14 = &v16;
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    std::string::operator=(v4, v2);
  }

  return 1;
}

BOOL CoreRecognition::EspressoModelWrapper::execute(CoreRecognition::EspressoModelWrapper *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = espresso_plan_execute_sync();
  if (v1)
  {
    error_info = espresso_plan_get_error_info();
    v4 = v3;
    v5 = CROSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = v4;
      v9 = 1024;
      v10 = HIDWORD(error_info);
      v11 = 1024;
      v12 = error_info;
      _os_log_impl(&dword_1B40D2000, v5, OS_LOG_TYPE_ERROR, "EspressoModelWrapper::execute Error executing model: %s (status=%d plan_status=%d)", &v7, 0x18u);
    }
  }

  return v1 == 0;
}

void sub_1B421D1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52)
{
  _Block_object_dispose(&a29, 8);

  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);

  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v55 - 240), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B421E72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double *std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(double *result, double *a2, double *a3)
{
  while (a3 != a2)
  {
    v3 = a3 - result;
    if (v3 < 2)
    {
      break;
    }

    if (v3 == 3)
    {
      v41 = result[1];
      v42 = *(a3 - 1);
      if (v41 < v42)
      {
        v43 = *(result + 1);
      }

      else
      {
        v43 = *(a3 - 1);
      }

      if (v41 < v42)
      {
        v41 = *(a3 - 1);
      }

      *(a3 - 1) = v41;
      *(result + 1) = v43;
      v44 = *(a3 - 1);
      if (v44 < *result)
      {
        v45 = *(a3 - 1);
      }

      else
      {
        v45 = *result;
      }

      if (v44 < *result)
      {
        v44 = *result;
      }

      *(a3 - 1) = v44;
      v46 = result[1];
      if (v45 < v46)
      {
        v45 = result[1];
      }

      else
      {
        *result = v46;
      }

      result[1] = v45;
      return result;
    }

    if (v3 == 2)
    {
      v47 = *(a3 - 1);
      v48 = *result;
      if (v47 < *result)
      {
        *result = v47;
        *(a3 - 1) = v48;
      }

      return result;
    }

    if (v3 <= 7)
    {
      while (result != a3 - 1)
      {
        v49 = result++;
        if (v49 != a3 && result != a3)
        {
          v50 = *v49;
          v51 = *v49;
          v52 = result;
          v53 = v49;
          v54 = result;
          do
          {
            v55 = *v54++;
            v56 = v55;
            if (v55 < v51)
            {
              v51 = v56;
              v53 = v52;
            }

            v52 = v54;
          }

          while (v54 != a3);
          if (v53 != v49)
          {
            *v49 = *v53;
            *v53 = v50;
          }
        }
      }

      return result;
    }

    v4 = &result[(a3 - result) >> 4];
    v5 = a3 - 1;
    v6 = *(a3 - 1);
    v7 = *v4;
    if (*v4 < v6)
    {
      v8 = *v4;
    }

    else
    {
      v8 = *(a3 - 1);
    }

    if (*v4 < v6)
    {
      v9 = *(a3 - 1);
    }

    else
    {
      v9 = *v4;
    }

    *v5 = v9;
    *v4 = v8;
    v10 = *v5;
    v11 = *result;
    if (*v5 < *result)
    {
      v12 = *v5;
    }

    else
    {
      v12 = *result;
    }

    if (*v5 < *result)
    {
      v13 = *result;
    }

    else
    {
      v13 = *v5;
    }

    *v5 = v13;
    v14 = *v4;
    v15 = *v4;
    if (v12 >= *v4)
    {
      *result = v14;
      v15 = v12;
    }

    v16 = v10 >= v11;
    if (v12 >= v14)
    {
      v16 = 1;
    }

    *v4 = v15;
    if (v7 >= v6)
    {
      v16 = 1;
    }

    v17 = *result;
    if (*result >= v15)
    {
      v18 = a3 - 1;
      while (--v18 != result)
      {
        if (*v18 < v15)
        {
          *result = *v18;
          *v18 = v17;
          if (v16)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          goto LABEL_33;
        }
      }

      v30 = result + 1;
      if (v17 >= *v5)
      {
        while (v30 != v5)
        {
          v31 = *v30;
          if (v17 < *v30)
          {
            *v30++ = *v5;
            *v5 = v31;
            goto LABEL_65;
          }

          ++v30;
        }

        return result;
      }

LABEL_65:
      if (v30 == v5)
      {
        return result;
      }

      while (1)
      {
        v35 = *result;
        do
        {
          v36 = *v30++;
          v37 = v36;
        }

        while (v35 >= v36);
        v38 = v30 - 1;
        do
        {
          v39 = *--v5;
          v40 = v39;
        }

        while (v35 < v39);
        if (v38 >= v5)
        {
          break;
        }

        *v38 = v40;
        *v5 = v37;
      }

      result = v30 - 1;
      if (v38 > a2)
      {
        return result;
      }
    }

    else
    {
      v18 = a3 - 1;
LABEL_33:
      v19 = result + 1;
      if (result + 1 >= v18)
      {
        v24 = result + 1;
      }

      else
      {
        v20 = result + 1;
        while (1)
        {
          v21 = *v4;
          do
          {
            v22 = *v20++;
            v23 = v22;
          }

          while (v22 < v21);
          v24 = v20 - 1;
          do
          {
            v25 = *--v18;
            v26 = v25;
          }

          while (v25 >= v21);
          if (v24 >= v18)
          {
            break;
          }

          *v24 = v26;
          *v18 = v23;
          ++v16;
          if (v24 == v4)
          {
            v4 = v18;
          }
        }
      }

      if (v24 != v4)
      {
        v27 = *v24;
        if (*v4 < *v24)
        {
          *v24 = *v4;
          *v4 = v27;
          ++v16;
        }
      }

      if (v24 == a2)
      {
        return result;
      }

      if (!v16)
      {
        if (v24 <= a2)
        {
          v32 = v24 + 1;
          while (v32 != a3)
          {
            v34 = *(v32 - 1);
            v33 = *v32++;
            if (v33 < v34)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v24)
          {
            v29 = *(v19 - 1);
            v28 = *v19++;
            if (v28 < v29)
            {
              goto LABEL_49;
            }
          }
        }

        return result;
      }

LABEL_49:
      if (v24 <= a2)
      {
        result = v24 + 1;
      }

      else
      {
        a3 = v24;
      }
    }
  }

  return result;
}

void sub_1B421FAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B422543C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B422C378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B422D208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t nms::PyramidNMS<unsigned short,double,unsigned char>::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 968) = *(a2 + 968);
  memcpy((a1 + 984), (a2 + 984), 0x148uLL);
  std::deque<std::valarray<unsigned char>>::__move_assign(a1 + 200, a2 + 200);
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::__move_assign(a1 + 248, a2 + 248);
  std::deque<std::valarray<unsigned char>>::__move_assign(a1 + 296, a2 + 296);
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::__move_assign(a1 + 344, a2 + 344);
  std::deque<std::valarray<unsigned char>>::__move_assign(a1 + 392, a2 + 392);
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::__move_assign(a1 + 440, a2 + 440);
  std::deque<std::valarray<unsigned char>>::__move_assign(a1 + 488, a2 + 488);
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::__move_assign(a1 + 536, a2 + 536);
  std::deque<std::valarray<unsigned char>>::__move_assign(a1 + 584, a2 + 584);
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::__move_assign(a1 + 632, a2 + 632);
  std::deque<std::valarray<unsigned char>>::__move_assign(a1 + 680, a2 + 680);
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::__move_assign(a1 + 728, a2 + 728);
  std::deque<std::valarray<unsigned char>>::__move_assign(a1 + 776, a2 + 776);
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::__move_assign(a1 + 824, a2 + 824);
  std::deque<std::valarray<unsigned char>>::__move_assign(a1 + 872, a2 + 872);
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::__move_assign(a1 + 920, a2 + 920);
  std::deque<std::valarray<BOOL>>::__move_assign(a1 + 56, a2 + 56);
  std::deque<std::valarray<BOOL>>::__move_assign(a1 + 104, a2 + 104);
  std::deque<std::valarray<BOOL>>::__move_assign(a1 + 152, a2 + 152);
  return a1;
}

__n128 std::deque<nms::RectForest<unsigned short,double>>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 20 * ((v5 - v4) >> 3) - 1;
  }

  v7 = a1[4];
  if (v6 == a1[5] + v7)
  {
    v8 = v7 >= 0x14;
    v9 = v7 - 20;
    if (!v8)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v5 - v4 < v11)
      {
        operator new();
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(v13);
    }

    a1[4] = v9;
    v20 = *v4;
    a1[1] = v4 + 8;
    std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(a1, &v20);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v15 = 0;
  }

  else
  {
    v14 = a1[5] + a1[4];
    v15 = *&v4[8 * (v14 / 0x14)] + 200 * (v14 % 0x14);
  }

  *(v15 + 64) = 0u;
  v16 = (v15 + 64);
  *v15 = &unk_1F2BAF6E8;
  *(v15 + 192) = 0;
  *(v15 + 184) = 0;
  *(v15 + 96) = 0u;
  *(v15 + 112) = 0u;
  *(v15 + 144) = 0u;
  *(v15 + 160) = 0u;
  *(v15 + 128) = 0u;
  *(v15 + 80) = 0u;
  *(v15 + 176) = v15 + 184;
  std::deque<std::valarray<double>>::__move_assign(v15 + 80, a2 + 80);
  std::deque<std::deque<std::pair<unsigned short,unsigned short>>>::__move_assign(v15 + 128, a2 + 128);
  *(v15 + 8) = *(a2 + 8);
  std::__tree<std::__value_type<nms::ForestLevelType,nms::RepresentationDimType>,std::__map_value_compare<nms::ForestLevelType,std::__value_type<nms::ForestLevelType,nms::RepresentationDimType>,std::less<nms::ForestLevelType>,true>,std::allocator<std::__value_type<nms::ForestLevelType,nms::RepresentationDimType>>>::__move_assign((v15 + 176), (a2 + 176));
  v17 = *(a2 + 32);
  *(v15 + 16) = *(a2 + 16);
  *(v15 + 32) = v17;
  *(v15 + 48) = *(a2 + 48);
  v18 = *(v15 + 64);
  if (v18)
  {
    if (*(v15 + 72) != v18)
    {
      *(v15 + 72) = v18;
    }

    operator delete(v18);
    v16->n128_u64[0] = 0;
    *(v15 + 72) = 0;
  }

  result = *(a2 + 64);
  *v16 = result;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  ++a1[5];
  return result;
}

void sub_1B422DC28(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t nms::RectForest<unsigned short,double>::RectForest(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = 0u;
  v109 = (a1 + 64);
  *(a1 + 80) = 0u;
  v111 = (a1 + 80);
  v112 = 0;
  *(a1 + 184) = 0;
  *(a1 + 176) = a1 + 184;
  v3 = a1 + 176;
  *(a1 + 128) = 0u;
  v4 = (a1 + 128);
  *(a1 + 192) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *a1 = &unk_1F2BAF6E8;
  *(a1 + 8) = 0;
  v113 = &v112;
  std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a1 + 176, 0)[5] = 5;
  v112 = 1;
  v113 = &v112;
  std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v3, 1uLL)[5] = 5;
  v112 = 2;
  v113 = &v112;
  std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v3, 2uLL)[5] = 9;
  v112 = 3;
  v113 = &v112;
  std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v3, 3uLL)[5] = 8;
  v112 = 4;
  v113 = &v112;
  std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v3, 4uLL)[5] = 8;
  v5 = *(a1 + 120);
  if (v5 > 4)
  {
    if (v5 != 5)
    {
      v23 = *(a1 + 112);
      v24 = *(a1 + 88);
      v25 = *(a1 + 96);
      v26 = (v24 + 8 * (v23 >> 8));
      v27 = v25 == v24 ? 0 : *v26 + 16 * v23;
      v28 = (v27 - *v26) >> 4;
      if (v28 < -4)
      {
        v29 = ~(-6 - v28);
        v30 = &v26[-8 * ((250 - v28) >> 8)];
      }

      else
      {
        v29 = v28 + 5;
        v30 = &v26[8 * ((v28 + 5) >> 8)];
      }

      v32 = *v30;
      v33 = *v30 + 16 * v29;
      v34 = v23 + v5;
      v35 = (v24 + 8 * ((v23 + v5) >> 8));
      v36 = v25 == v24 ? 0 : *v35 + 16 * v34;
      if (v36 != v33)
      {
        v37 = 32 * (v35 - v30) - ((v33 - v32) >> 4) + ((v36 - *v35) >> 4);
        if (v37 >= 1)
        {
          v38 = ((v33 - v32) >> 4) - v28 + 32 * (v30 - v26);
          if (v27 == v33)
          {
            v39 = 0;
          }

          else
          {
            v39 = v38;
          }

          v40 = std::__deque_iterator<std::valarray<double>,std::valarray<double>*,std::valarray<double>&,std::valarray<double>**,long,256l>::operator+[abi:ne200100](v26, v27, v39);
          if (v41 != v36)
          {
            v42 = v40;
            v43 = v41;
            do
            {
              std::allocator<std::valarray<double>>::destroy[abi:ne200100](v43);
              v43 += 16;
              if (v43 - *v42 == 4096)
              {
                v44 = v42[1];
                ++v42;
                v43 = v44;
              }
            }

            while (v43 != v36);
            v5 = *(a1 + 120);
          }

          *(a1 + 120) = v5 - v37;
            ;
          }
        }
      }
    }
  }

  else
  {
    v6 = *(a1 + 88);
    v7 = *(a1 + 96);
    v8 = v7 - v6;
    if (v7 == v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = 32 * (v7 - v6) - 1;
    }

    v10 = 5 - v5;
    v11 = *(a1 + 112);
    v12 = v11 + v5;
    v13 = v9 - (v11 + v5);
    v14 = 5 - v5 >= v13;
    v15 = 5 - v5 - v13;
    if (v15 != 0 && v14)
    {
      if (v7 == v6)
      {
        v16 = v15 + 1;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        v17 = (v16 >> 8) + 1;
      }

      else
      {
        v17 = v16 >> 8;
      }

      if (v17 >= v11 >> 8)
      {
        v18 = v11 >> 8;
      }

      else
      {
        v18 = v17;
      }

      if (v17 <= v11 >> 8)
      {
        for (*(a1 + 112) = v11 - (v18 << 8); v18; --v18)
        {
          v31 = *(a1 + 88);
          v113 = *v31;
          *(a1 + 88) = v31 + 1;
          std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(v111, &v113);
        }
      }

      else
      {
        v19 = v17 - v18;
        v20 = *(a1 + 104) - *(a1 + 80);
        if (v17 - v18 > (v20 >> 3) - (v8 >> 3))
        {
          v21 = v20 >> 2;
          if (v21 <= v19 + (v8 >> 3))
          {
            v22 = v19 + (v8 >> 3);
          }

          else
          {
            v22 = v21;
          }

          v116 = v111;
          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(v22);
          }

          v113 = 0;
          v114 = 8 * ((v8 >> 3) - v18);
          v115 = v114;
          operator new();
        }

        if (v19)
        {
          if (*(a1 + 104) != *(a1 + 96))
          {
            operator new();
          }

          operator new();
        }

        for (*(a1 + 112) = v11 - (v18 << 8); v18; --v18)
        {
          v45 = *(a1 + 88);
          v113 = *v45;
          *(a1 + 88) = v45 + 1;
          std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(v111, &v113);
        }
      }

      v5 = *(a1 + 120);
      v6 = *(a1 + 88);
      v7 = *(a1 + 96);
      v12 = *(a1 + 112) + v5;
    }

    v46 = (v6 + 8 * (v12 >> 8));
    if (v7 == v6)
    {
      v47 = 0;
    }

    else
    {
      v47 = (*v46 + 16 * v12);
    }

    v48 = std::__deque_iterator<std::valarray<double>,std::valarray<double>*,std::valarray<double>&,std::valarray<double>**,long,256l>::operator+[abi:ne200100](v46, v47, v10);
    if (v47 != v49)
    {
      v50 = v48;
      v51 = v49;
      do
      {
        if (v46 == v50)
        {
          v52 = v51;
        }

        else
        {
          v52 = *v46 + 4096;
        }

        if (v47 == v52)
        {
          v54 = v47;
        }

        else
        {
          v53 = (v52 - v47) & 0xFFFFFFFFFFFFFFF0;
          bzero(v47, v53);
          v54 = &v47[v53];
          v5 = *(a1 + 120);
        }

        v5 += (v54 - v47) >> 4;
        *(a1 + 120) = v5;
        if (v46 == v50)
        {
          break;
        }

        v55 = v46[1];
        ++v46;
        v47 = v55;
      }

      while (v55 != v51);
    }
  }

  v56 = *(a1 + 168);
  if (v56 > 5)
  {
    if (v56 != 6)
    {
      v71 = *(a1 + 160);
      v72 = *(a1 + 136);
      v73 = *(a1 + 144);
      v74 = (v72 + 8 * (v71 / 0x55));
      v75 = *v74;
      v76 = *v74 + 48 * (v71 % 0x55);
      if (v73 == v72)
      {
        v76 = 0;
      }

      v77 = v76 - v75;
      v78 = 0xAAAAAAAAAAAAAAABLL * ((v76 - v75) >> 4);
      if (v77 < -287)
      {
        v84 = 78 - v78;
        v80 = &v74[-(v84 / 0x55)];
        v81 = *v80;
        v82 = *v80 + 48 * (85 * (v84 / 0x55) - v84) + 4032;
      }

      else
      {
        v79 = v78 + 6;
        v80 = &v74[v79 / 0x55];
        v81 = *v80;
        v82 = *v80 + 48 * (v79 % 0x55);
      }

      v85 = (v72 + 8 * ((v71 + v56) / 0x55));
      if (v73 == v72)
      {
        v86 = 0;
      }

      else
      {
        v86 = *v85 + 48 * ((v71 + v56) % 0x55);
      }

      if (v86 != v82)
      {
        v87 = (v82 - v81) >> 4;
        v88 = 85 * (v85 - v80) + 0x5555555555555555 * v87 - 0x5555555555555555 * ((v86 - *v85) >> 4);
        if (v88 >= 1)
        {
          v89 = v75 + 48 * (v71 % 0x55);
          if (v73 == v72)
          {
            v90 = 0;
          }

          else
          {
            v90 = v89;
          }

          v91 = 85 * (v80 - v74) - 0x5555555555555555 * v87 + 0x5555555555555555 * ((v90 - v75) >> 4);
          if (v90 == v82)
          {
            v92 = 0;
          }

          else
          {
            v92 = v91;
          }

          v113 = v74;
          v114 = v90;
          std::__deque_iterator<std::deque<std::pair<unsigned short,unsigned short>>,std::deque<std::pair<unsigned short,unsigned short>>*,std::deque<std::pair<unsigned short,unsigned short>>&,std::deque<std::pair<unsigned short,unsigned short>>**,long,85l>::operator+=[abi:ne200100](&v113, v92);
          v93 = v114;
          if (v114 != v86)
          {
            v94 = v113;
            do
            {
              v93 = (std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](v93) + 48);
              if ((v93 - *v94) == 4080)
              {
                v95 = v94[1];
                ++v94;
                v93 = v95;
              }
            }

            while (v93 != v86);
            v56 = *(a1 + 168);
          }

          *(a1 + 168) = v56 - v88;
            ;
          }
        }
      }
    }
  }

  else
  {
    v58 = *(a1 + 136);
    v57 = *(a1 + 144);
    v59 = (v57 - v58) >> 3;
    if (v57 == v58)
    {
      v60 = 0;
    }

    else
    {
      v60 = 85 * v59 - 1;
    }

    v61 = 6 - v56;
    v62 = *(a1 + 160);
    v63 = v62 + v56;
    v64 = v60 - (v62 + v56);
    if (6 - v56 > v64)
    {
      v108 = 6 - v56;
      if (v57 == v58)
      {
        v65 = v61 - v64 + 1;
      }

      else
      {
        v65 = v61 - v64;
      }

      if (v65 % 0x55)
      {
        v66 = v65 / 0x55 + 1;
      }

      else
      {
        v66 = v65 / 0x55;
      }

      if (v66 >= v62 / 0x55)
      {
        v67 = v62 / 0x55;
      }

      else
      {
        v67 = v66;
      }

      if (v66 <= v62 / 0x55)
      {
        for (*(a1 + 160) = v62 - 85 * v67; v67; --v67)
        {
          v83 = *(a1 + 136);
          v113 = *v83;
          *(a1 + 136) = v83 + 1;
          std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(v4, &v113);
        }
      }

      else
      {
        v68 = v66 - v67;
        v69 = *(a1 + 152) - *(a1 + 128);
        if (v68 > (v69 >> 3) - v59)
        {
          if (v69 >> 2 <= v68 + v59)
          {
            v70 = v68 + v59;
          }

          else
          {
            v70 = v69 >> 2;
          }

          if (v70)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(v70);
          }

          operator new();
        }

        if (v68)
        {
          if (*(a1 + 152) != v57)
          {
            operator new();
          }

          operator new();
        }

        for (*(a1 + 160) = v62 - 85 * v67; v67; --v67)
        {
          v96 = *(a1 + 136);
          v113 = *v96;
          *(a1 + 136) = v96 + 1;
          std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(v4, &v113);
        }
      }

      v56 = *(a1 + 168);
      v58 = *(a1 + 136);
      v57 = *(a1 + 144);
      v63 = *(a1 + 160) + v56;
      v61 = v108;
    }

    v97 = (v58 + 8 * (v63 / 0x55));
    if (v57 == v58)
    {
      v98 = 0;
      v99 = 0;
    }

    else
    {
      v98 = (*v97 + 48 * (v63 % 0x55));
      v99 = v98;
    }

    v113 = (v58 + 8 * (v63 / 0x55));
    v114 = v99;
    std::__deque_iterator<std::deque<std::pair<unsigned short,unsigned short>>,std::deque<std::pair<unsigned short,unsigned short>>*,std::deque<std::pair<unsigned short,unsigned short>>&,std::deque<std::pair<unsigned short,unsigned short>>**,long,85l>::operator+=[abi:ne200100](&v113, v61);
    v100 = v114;
    if (v98 != v114)
    {
      v101 = v113;
      do
      {
        if (v97 == v101)
        {
          v102 = v100;
        }

        else
        {
          v102 = *v97 + 4080;
        }

        if (v98 == v102)
        {
          v104 = v98;
        }

        else
        {
          v103 = 48 * ((v102 - v98 - 48) / 0x30uLL) + 48;
          bzero(v98, v103);
          v104 = &v98[v103];
          v56 = *(a1 + 168);
        }

        v56 -= 0x5555555555555555 * ((v104 - v98) >> 4);
        *(a1 + 168) = v56;
        if (v97 == v101)
        {
          break;
        }

        v105 = v97[1];
        ++v97;
        v98 = v105;
      }

      while (v105 != v100);
    }
  }

  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  v106 = *(a1 + 64);
  if (v106)
  {
    if (*(a1 + 72) != v106)
    {
      *(a1 + 72) = v106;
    }

    operator delete(v106);
    *v109 = 0;
    v109[1] = 0;
  }

  nms::RectForest<unsigned short,double>::setDataRepresentationDims(a1, a2);
  return a1;
}

void sub_1B422EC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(*(v19 + 184));
  std::deque<std::deque<std::pair<unsigned short,unsigned short>>>::~deque[abi:ne200100](a11);
  std::deque<std::valarray<double>>::~deque[abi:ne200100](a15);
  nms::QuantizedScoreMap::~QuantizedScoreMap((v19 + 48));
  _Unwind_Resume(a1);
}

void sub_1B42309A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  nms::RectForest<unsigned short,double>::~RectForest(&a71);
  std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100]((v71 - 192));
  nms::RectForest<unsigned short,double>::~RectForest(&a40);
  std::deque<std::valarray<unsigned char>>::~deque[abi:ne200100](&a65);
  nms::RectForest<unsigned short,double>::~RectForest(&a15);

  _Unwind_Resume(a1);
}

void std::valarray<double>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = *(a1 + 8);
    if (v5 != v4)
    {
      *(a1 + 8) = &v5[(v4 - v5 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }
}

void sub_1B4231964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *nms::RectForest<unsigned short,double>::setDataRepresentationDims(void *result, uint64_t a2)
{
  if (!a2)
  {
    v7 = v2;
    v8 = v3;
    v4 = result;
    result[1] = 0;
    v5 = 0;
    v6 = &v5;
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((result + 22), a2)[5] = 5;
    v5 = 1;
    v6 = &v5;
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((v4 + 22), 1uLL)[5] = 5;
    v5 = 2;
    v6 = &v5;
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((v4 + 22), 2uLL)[5] = 9;
    v5 = 3;
    v6 = &v5;
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((v4 + 22), 3uLL)[5] = 8;
    v5 = 4;
    v6 = &v5;
    result = std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((v4 + 22), 4uLL);
    result[5] = 8;
  }

  return result;
}

void std::deque<std::pair<unsigned short,unsigned short>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[5];
  v4 = a2 - v3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      v12 = a1[4];
      v14 = a1[1];
      v13 = a1[2];
      v15 = (v14 + 8 * (v12 >> 10));
      if (v13 == v14)
      {
        v16 = std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>::operator+[abi:ne200100](v15, 0, a2);
        v19 = 0;
        v18 = (v14 + 8 * ((v12 + v3) >> 10));
      }

      else
      {
        v16 = std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>::operator+[abi:ne200100](v15, *v15 + 4 * (v12 & 0x3FF), a2);
        v18 = (v14 + 8 * ((v12 + v3) >> 10));
        v19 = *v18 + 4 * ((v12 + v3) & 0x3FF);
      }

      if (v19 != v17)
      {
        v28 = ((v19 - *v18) >> 2) + ((v18 - v16) << 7) - ((v17 - *v16) >> 2);
        if (v28 >= 1)
        {
          a1[5] = v3 - v28;
            ;
          }
        }
      }
    }
  }

  else
  {
    v5 = a1[1];
    v6 = a1[2];
    if (v6 == v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = ((v6 - v5) << 7) - 1;
    }

    v8 = a1[4] + v3;
    v9 = v7 - v8;
    if (v4 > v9)
    {
      std::deque<std::pair<unsigned short,unsigned short>>::__add_back_capacity(a1, v4 - v9);
      v3 = a1[5];
      v5 = a1[1];
      v6 = a1[2];
      v8 = a1[4] + v3;
    }

    v10 = (v5 + 8 * (v8 >> 10));
    if (v6 == v5)
    {
      v11 = 0;
    }

    else
    {
      v11 = (*v10 + 4 * (v8 & 0x3FF));
    }

    v20 = std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>::operator+[abi:ne200100](v10, v11, v4);
    if (v11 != v21)
    {
      v22 = v20;
      v23 = v21;
      do
      {
        if (v10 == v22)
        {
          v24 = v23;
        }

        else
        {
          v24 = *v10 + 4096;
        }

        if (v11 == v24)
        {
          v26 = v11;
        }

        else
        {
          v25 = (v24 - v11) & 0xFFFFFFFFFFFFFFFCLL;
          bzero(v11, v25);
          v26 = &v11[v25];
        }

        v3 += (v26 - v11) >> 2;
        if (v10 == v22)
        {
          break;
        }

        v27 = v10[1];
        ++v10;
        v11 = v27;
      }

      while (v27 != v23);
      a1[5] = v3;
    }
  }
}

void *std::map<nms::ForestLevelType,nms::RepresentationDimType>::at(void *a1, unint64_t a2)
{
  if (!a1)
  {
LABEL_7:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = a1[4];
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_7;
      }
    }

    if (v2 >= a2)
    {
      return a1 + 5;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::valarray<double>::~valarray(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3 != v2)
    {
      *(a1 + 8) = &v3[(v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

void sub_1B4232D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B4232EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B4233098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *nms::PyramidNMS<unsigned short,double,unsigned char>::~PyramidNMS(void *a1)
{
  *a1 = &unk_1F2BAF708;
  v2 = a1[26];
  v3 = a1[27];
  if (v3 == v2)
  {
    v4 = a1 + 30;
    v3 = a1[26];
  }

  else
  {
    v4 = a1 + 30;
    v5 = a1[29];
    v6 = &v2[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v2 + (((a1[30] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 240) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *v8;
        if (*v8)
        {
          if (*(v8 + 8) != v10)
          {
            *(v8 + 8) = v10;
          }

          operator delete(v10);
          *v8 = 0;
          *(v8 + 8) = 0;
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[26];
      v3 = a1[27];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v13 = a1[27];
      v2 = (a1[26] + 8);
      a1[26] = v2;
      v12 = (v13 - v2) >> 3;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v14 = 128;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v14 = 256;
  }

  a1[29] = v14;
LABEL_19:
  v15 = a1[32];
  v16 = a1[33];
  if (v16 == v15)
  {
    v20 = a1 + 36;
    v16 = a1[32];
  }

  else
  {
    v17 = a1[35];
    v18 = &v15[v17 / 0x55];
    v19 = *v18 + 48 * (v17 % 0x55);
    v20 = a1 + 36;
    v21 = v15[(a1[36] + v17) / 0x55] + 48 * ((a1[36] + v17) % 0x55);
    if (v19 != v21)
    {
      do
      {
        v19 = std::deque<std::deque<std::deque<unsigned short>>>::~deque[abi:ne200100](v19) + 48;
        if (v19 - *v18 == 4080)
        {
          v22 = v18[1];
          ++v18;
          v19 = v22;
        }
      }

      while (v19 != v21);
      v15 = a1[32];
      v16 = a1[33];
    }
  }

  *v20 = 0;
  v23 = v16 - v15;
  if (v23 >= 3)
  {
    do
    {
      operator delete(*v15);
      v24 = a1[33];
      v15 = (a1[32] + 8);
      a1[32] = v15;
      v23 = (v24 - v15) >> 3;
    }

    while (v23 > 2);
  }

  if (v23 == 1)
  {
    v25 = 42;
  }

  else
  {
    if (v23 != 2)
    {
      goto LABEL_33;
    }

    v25 = 85;
  }

  a1[35] = v25;
LABEL_33:
  v26 = a1[38];
  v27 = a1[39];
  if (v27 == v26)
  {
    v32 = a1 + 42;
    v27 = a1[38];
  }

  else
  {
    v28 = a1[41];
    v29 = &v26[v28 >> 8];
    v30 = *v29;
    v31 = *v29 + 16 * v28;
    v32 = a1 + 42;
    v33 = *(v26 + (((a1[42] + v28) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 336) + v28);
    if (v31 != v33)
    {
      do
      {
        v34 = *v31;
        if (*v31)
        {
          if (*(v31 + 8) != v34)
          {
            *(v31 + 8) = v34;
          }

          operator delete(v34);
          *v31 = 0;
          *(v31 + 8) = 0;
          v30 = *v29;
        }

        v31 += 16;
        if (v31 - v30 == 4096)
        {
          v35 = v29[1];
          ++v29;
          v30 = v35;
          v31 = v35;
        }
      }

      while (v31 != v33);
      v26 = a1[38];
      v27 = a1[39];
    }
  }

  *v32 = 0;
  v36 = v27 - v26;
  if (v36 >= 3)
  {
    do
    {
      operator delete(*v26);
      v37 = a1[39];
      v26 = (a1[38] + 8);
      a1[38] = v26;
      v36 = (v37 - v26) >> 3;
    }

    while (v36 > 2);
  }

  if (v36 == 1)
  {
    v38 = 128;
  }

  else
  {
    if (v36 != 2)
    {
      goto LABEL_51;
    }

    v38 = 256;
  }

  a1[41] = v38;
LABEL_51:
  v39 = a1[44];
  v40 = a1[45];
  if (v40 == v39)
  {
    v44 = a1 + 48;
    v40 = a1[44];
  }

  else
  {
    v41 = a1[47];
    v42 = &v39[v41 / 0x55];
    v43 = *v42 + 48 * (v41 % 0x55);
    v44 = a1 + 48;
    v45 = v39[(a1[48] + v41) / 0x55] + 48 * ((a1[48] + v41) % 0x55);
    if (v43 != v45)
    {
      do
      {
        v43 = std::deque<std::deque<std::deque<unsigned short>>>::~deque[abi:ne200100](v43) + 48;
        if (v43 - *v42 == 4080)
        {
          v46 = v42[1];
          ++v42;
          v43 = v46;
        }
      }

      while (v43 != v45);
      v39 = a1[44];
      v40 = a1[45];
    }
  }

  *v44 = 0;
  v47 = v40 - v39;
  if (v47 >= 3)
  {
    do
    {
      operator delete(*v39);
      v48 = a1[45];
      v39 = (a1[44] + 8);
      a1[44] = v39;
      v47 = (v48 - v39) >> 3;
    }

    while (v47 > 2);
  }

  if (v47 == 1)
  {
    v49 = 42;
  }

  else
  {
    if (v47 != 2)
    {
      goto LABEL_65;
    }

    v49 = 85;
  }

  a1[47] = v49;
LABEL_65:
  v50 = a1[50];
  v51 = a1[51];
  if (v51 == v50)
  {
    v56 = a1 + 54;
    v51 = a1[50];
  }

  else
  {
    v52 = a1[53];
    v53 = &v50[v52 >> 8];
    v54 = *v53;
    v55 = *v53 + 16 * v52;
    v56 = a1 + 54;
    v57 = *(v50 + (((a1[54] + v52) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 432) + v52);
    if (v55 != v57)
    {
      do
      {
        v58 = *v55;
        if (*v55)
        {
          if (*(v55 + 8) != v58)
          {
            *(v55 + 8) = v58;
          }

          operator delete(v58);
          *v55 = 0;
          *(v55 + 8) = 0;
          v54 = *v53;
        }

        v55 += 16;
        if (v55 - v54 == 4096)
        {
          v59 = v53[1];
          ++v53;
          v54 = v59;
          v55 = v59;
        }
      }

      while (v55 != v57);
      v50 = a1[50];
      v51 = a1[51];
    }
  }

  *v56 = 0;
  v60 = v51 - v50;
  if (v60 >= 3)
  {
    do
    {
      operator delete(*v50);
      v61 = a1[51];
      v50 = (a1[50] + 8);
      a1[50] = v50;
      v60 = (v61 - v50) >> 3;
    }

    while (v60 > 2);
  }

  if (v60 == 1)
  {
    v62 = 128;
  }

  else
  {
    if (v60 != 2)
    {
      goto LABEL_83;
    }

    v62 = 256;
  }

  a1[53] = v62;
LABEL_83:
  v63 = a1[56];
  v64 = a1[57];
  if (v64 == v63)
  {
    v68 = a1 + 60;
    v64 = a1[56];
  }

  else
  {
    v65 = a1[59];
    v66 = &v63[v65 / 0x55];
    v67 = *v66 + 48 * (v65 % 0x55);
    v68 = a1 + 60;
    v69 = v63[(a1[60] + v65) / 0x55] + 48 * ((a1[60] + v65) % 0x55);
    if (v67 != v69)
    {
      do
      {
        v67 = std::deque<std::deque<std::deque<unsigned short>>>::~deque[abi:ne200100](v67) + 48;
        if (v67 - *v66 == 4080)
        {
          v70 = v66[1];
          ++v66;
          v67 = v70;
        }
      }

      while (v67 != v69);
      v63 = a1[56];
      v64 = a1[57];
    }
  }

  *v68 = 0;
  v71 = v64 - v63;
  if (v71 >= 3)
  {
    do
    {
      operator delete(*v63);
      v72 = a1[57];
      v63 = (a1[56] + 8);
      a1[56] = v63;
      v71 = (v72 - v63) >> 3;
    }

    while (v71 > 2);
  }

  if (v71 == 1)
  {
    v73 = 42;
  }

  else
  {
    if (v71 != 2)
    {
      goto LABEL_97;
    }

    v73 = 85;
  }

  a1[59] = v73;
LABEL_97:
  v74 = a1[62];
  v75 = a1[63];
  if (v75 == v74)
  {
    v80 = a1 + 66;
    v75 = a1[62];
  }

  else
  {
    v76 = a1[65];
    v77 = &v74[v76 >> 8];
    v78 = *v77;
    v79 = *v77 + 16 * v76;
    v80 = a1 + 66;
    v81 = *(v74 + (((a1[66] + v76) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 528) + v76);
    if (v79 != v81)
    {
      do
      {
        v82 = *v79;
        if (*v79)
        {
          if (*(v79 + 8) != v82)
          {
            *(v79 + 8) = v82;
          }

          operator delete(v82);
          *v79 = 0;
          *(v79 + 8) = 0;
          v78 = *v77;
        }

        v79 += 16;
        if (v79 - v78 == 4096)
        {
          v83 = v77[1];
          ++v77;
          v78 = v83;
          v79 = v83;
        }
      }

      while (v79 != v81);
      v74 = a1[62];
      v75 = a1[63];
    }
  }

  *v80 = 0;
  v84 = v75 - v74;
  if (v84 >= 3)
  {
    do
    {
      operator delete(*v74);
      v85 = a1[63];
      v74 = (a1[62] + 8);
      a1[62] = v74;
      v84 = (v85 - v74) >> 3;
    }

    while (v84 > 2);
  }

  if (v84 == 1)
  {
    v86 = 128;
  }

  else
  {
    if (v84 != 2)
    {
      goto LABEL_115;
    }

    v86 = 256;
  }

  a1[65] = v86;
LABEL_115:
  v87 = a1[68];
  v88 = a1[69];
  if (v88 == v87)
  {
    v92 = a1 + 72;
    v88 = a1[68];
  }

  else
  {
    v89 = a1[71];
    v90 = &v87[v89 / 0x55];
    v91 = *v90 + 48 * (v89 % 0x55);
    v92 = a1 + 72;
    v93 = v87[(a1[72] + v89) / 0x55] + 48 * ((a1[72] + v89) % 0x55);
    if (v91 != v93)
    {
      do
      {
        v91 = std::deque<std::deque<std::deque<unsigned short>>>::~deque[abi:ne200100](v91) + 48;
        if (v91 - *v90 == 4080)
        {
          v94 = v90[1];
          ++v90;
          v91 = v94;
        }
      }

      while (v91 != v93);
      v88 = a1[69];
      v87 = a1[68];
    }
  }

  *v92 = 0;
  v95 = v88 - v87;
  if (v95 >= 3)
  {
    do
    {
      operator delete(*v87);
      v87 = (a1[68] + 8);
      a1[68] = v87;
      v95 = (a1[69] - v87) >> 3;
    }

    while (v95 > 2);
  }

  if (v95 == 1)
  {
    v96 = 42;
  }

  else
  {
    if (v95 != 2)
    {
      goto LABEL_129;
    }

    v96 = 85;
  }

  a1[71] = v96;
LABEL_129:
  v97 = a1[74];
  v98 = a1[75];
  if (v98 == v97)
  {
    v103 = a1 + 78;
    v98 = a1[74];
  }

  else
  {
    v99 = a1[77];
    v100 = &v97[v99 >> 8];
    v101 = *v100;
    v102 = *v100 + 16 * v99;
    v103 = a1 + 78;
    v104 = *(v97 + (((a1[78] + v99) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 624) + v99);
    if (v102 != v104)
    {
      do
      {
        v105 = *v102;
        if (*v102)
        {
          if (*(v102 + 8) != v105)
          {
            *(v102 + 8) = v105;
          }

          operator delete(v105);
          *v102 = 0;
          *(v102 + 8) = 0;
          v101 = *v100;
        }

        v102 += 16;
        if (v102 - v101 == 4096)
        {
          v106 = v100[1];
          ++v100;
          v101 = v106;
          v102 = v106;
        }
      }

      while (v102 != v104);
      v98 = a1[75];
      v97 = a1[74];
    }
  }

  *v103 = 0;
  v107 = v98 - v97;
  if (v107 >= 3)
  {
    do
    {
      operator delete(*v97);
      v97 = (a1[74] + 8);
      a1[74] = v97;
      v107 = (a1[75] - v97) >> 3;
    }

    while (v107 > 2);
  }

  if (v107 == 1)
  {
    v108 = 128;
  }

  else
  {
    if (v107 != 2)
    {
      goto LABEL_147;
    }

    v108 = 256;
  }

  a1[77] = v108;
LABEL_147:
  v109 = a1[80];
  v110 = a1[81];
  if (v110 == v109)
  {
    v114 = a1 + 84;
    v110 = a1[80];
  }

  else
  {
    v111 = a1[83];
    v112 = &v109[v111 / 0x55];
    v113 = *v112 + 48 * (v111 % 0x55);
    v114 = a1 + 84;
    v115 = v109[(a1[84] + v111) / 0x55] + 48 * ((a1[84] + v111) % 0x55);
    if (v113 != v115)
    {
      do
      {
        v113 = std::deque<std::deque<std::deque<unsigned short>>>::~deque[abi:ne200100](v113) + 48;
        if (v113 - *v112 == 4080)
        {
          v116 = v112[1];
          ++v112;
          v113 = v116;
        }
      }

      while (v113 != v115);
      v110 = a1[81];
      v109 = a1[80];
    }
  }

  *v114 = 0;
  v117 = v110 - v109;
  if (v117 >= 3)
  {
    do
    {
      operator delete(*v109);
      v109 = (a1[80] + 8);
      a1[80] = v109;
      v117 = (a1[81] - v109) >> 3;
    }

    while (v117 > 2);
  }

  if (v117 == 1)
  {
    v118 = 42;
  }

  else
  {
    if (v117 != 2)
    {
      goto LABEL_161;
    }

    v118 = 85;
  }

  a1[83] = v118;
LABEL_161:
  v119 = a1[86];
  v120 = a1[87];
  if (v120 == v119)
  {
    v125 = a1 + 90;
    v120 = a1[86];
  }

  else
  {
    v121 = a1[89];
    v122 = &v119[v121 >> 8];
    v123 = *v122;
    v124 = *v122 + 16 * v121;
    v125 = a1 + 90;
    v126 = *(v119 + (((a1[90] + v121) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 720) + v121);
    if (v124 != v126)
    {
      do
      {
        v127 = *v124;
        if (*v124)
        {
          if (*(v124 + 8) != v127)
          {
            *(v124 + 8) = v127;
          }

          operator delete(v127);
          *v124 = 0;
          *(v124 + 8) = 0;
          v123 = *v122;
        }

        v124 += 16;
        if (v124 - v123 == 4096)
        {
          v128 = v122[1];
          ++v122;
          v123 = v128;
          v124 = v128;
        }
      }

      while (v124 != v126);
      v120 = a1[87];
      v119 = a1[86];
    }
  }

  *v125 = 0;
  v129 = v120 - v119;
  if (v129 >= 3)
  {
    do
    {
      operator delete(*v119);
      v119 = (a1[86] + 8);
      a1[86] = v119;
      v129 = (a1[87] - v119) >> 3;
    }

    while (v129 > 2);
  }

  if (v129 == 1)
  {
    v130 = 128;
  }

  else
  {
    if (v129 != 2)
    {
      goto LABEL_179;
    }

    v130 = 256;
  }

  a1[89] = v130;
LABEL_179:
  v131 = a1[92];
  v132 = a1[93];
  if (v132 == v131)
  {
    v136 = a1 + 96;
    v132 = a1[92];
  }

  else
  {
    v133 = a1[95];
    v134 = &v131[v133 / 0x55];
    v135 = *v134 + 48 * (v133 % 0x55);
    v136 = a1 + 96;
    v137 = v131[(a1[96] + v133) / 0x55] + 48 * ((a1[96] + v133) % 0x55);
    if (v135 != v137)
    {
      do
      {
        v135 = std::deque<std::deque<std::deque<unsigned short>>>::~deque[abi:ne200100](v135) + 48;
        if (v135 - *v134 == 4080)
        {
          v138 = v134[1];
          ++v134;
          v135 = v138;
        }
      }

      while (v135 != v137);
      v132 = a1[93];
      v131 = a1[92];
    }
  }

  *v136 = 0;
  v139 = v132 - v131;
  if (v139 >= 3)
  {
    do
    {
      operator delete(*v131);
      v131 = (a1[92] + 8);
      a1[92] = v131;
      v139 = (a1[93] - v131) >> 3;
    }

    while (v139 > 2);
  }

  if (v139 == 1)
  {
    v140 = 42;
  }

  else
  {
    if (v139 != 2)
    {
      goto LABEL_193;
    }

    v140 = 85;
  }

  a1[95] = v140;
LABEL_193:
  v141 = a1[98];
  v142 = a1[99];
  if (v142 == v141)
  {
    v147 = a1 + 102;
    v142 = a1[98];
  }

  else
  {
    v143 = a1[101];
    v144 = &v141[v143 >> 8];
    v145 = *v144;
    v146 = *v144 + 16 * v143;
    v147 = a1 + 102;
    v148 = *(v141 + (((a1[102] + v143) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 816) + v143);
    if (v146 != v148)
    {
      do
      {
        v149 = *v146;
        if (*v146)
        {
          if (*(v146 + 8) != v149)
          {
            *(v146 + 8) = v149;
          }

          operator delete(v149);
          *v146 = 0;
          *(v146 + 8) = 0;
          v145 = *v144;
        }

        v146 += 16;
        if (v146 - v145 == 4096)
        {
          v150 = v144[1];
          ++v144;
          v145 = v150;
          v146 = v150;
        }
      }

      while (v146 != v148);
      v142 = a1[99];
      v141 = a1[98];
    }
  }

  *v147 = 0;
  v151 = v142 - v141;
  if (v151 >= 3)
  {
    do
    {
      operator delete(*v141);
      v141 = (a1[98] + 8);
      a1[98] = v141;
      v151 = (a1[99] - v141) >> 3;
    }

    while (v151 > 2);
  }

  if (v151 == 1)
  {
    v152 = 128;
  }

  else
  {
    if (v151 != 2)
    {
      goto LABEL_211;
    }

    v152 = 256;
  }

  a1[101] = v152;
LABEL_211:
  v153 = a1[104];
  v154 = a1[105];
  if (v154 == v153)
  {
    v158 = a1 + 108;
    v154 = a1[104];
  }

  else
  {
    v155 = a1[107];
    v156 = &v153[v155 / 0x55];
    v157 = *v156 + 48 * (v155 % 0x55);
    v158 = a1 + 108;
    v159 = v153[(a1[108] + v155) / 0x55] + 48 * ((a1[108] + v155) % 0x55);
    if (v157 != v159)
    {
      do
      {
        v157 = std::deque<std::deque<std::deque<unsigned short>>>::~deque[abi:ne200100](v157) + 48;
        if (v157 - *v156 == 4080)
        {
          v160 = v156[1];
          ++v156;
          v157 = v160;
        }
      }

      while (v157 != v159);
      v154 = a1[105];
      v153 = a1[104];
    }
  }

  *v158 = 0;
  v161 = v154 - v153;
  if (v161 >= 3)
  {
    do
    {
      operator delete(*v153);
      v153 = (a1[104] + 8);
      a1[104] = v153;
      v161 = (a1[105] - v153) >> 3;
    }

    while (v161 > 2);
  }

  if (v161 == 1)
  {
    v162 = 42;
  }

  else
  {
    if (v161 != 2)
    {
      goto LABEL_225;
    }

    v162 = 85;
  }

  a1[107] = v162;
LABEL_225:
  v163 = a1[110];
  v164 = a1[111];
  if (v164 == v163)
  {
    v169 = a1 + 114;
    v164 = a1[110];
  }

  else
  {
    v165 = a1[113];
    v166 = &v163[v165 >> 8];
    v167 = *v166;
    v168 = *v166 + 16 * v165;
    v169 = a1 + 114;
    v170 = *(v163 + (((a1[114] + v165) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 912) + v165);
    if (v168 != v170)
    {
      do
      {
        v171 = *v168;
        if (*v168)
        {
          if (*(v168 + 8) != v171)
          {
            *(v168 + 8) = v171;
          }

          operator delete(v171);
          *v168 = 0;
          *(v168 + 8) = 0;
          v167 = *v166;
        }

        v168 += 16;
        if (v168 - v167 == 4096)
        {
          v172 = v166[1];
          ++v166;
          v167 = v172;
          v168 = v172;
        }
      }

      while (v168 != v170);
      v164 = a1[111];
      v163 = a1[110];
    }
  }

  *v169 = 0;
  v173 = v164 - v163;
  if (v173 >= 3)
  {
    do
    {
      operator delete(*v163);
      v163 = (a1[110] + 8);
      a1[110] = v163;
      v173 = (a1[111] - v163) >> 3;
    }

    while (v173 > 2);
  }

  if (v173 == 1)
  {
    v174 = 128;
  }

  else
  {
    if (v173 != 2)
    {
      goto LABEL_243;
    }

    v174 = 256;
  }

  a1[113] = v174;
LABEL_243:
  v175 = a1[116];
  v176 = a1[117];
  if (v176 == v175)
  {
    v180 = a1 + 120;
    v176 = a1[116];
  }

  else
  {
    v177 = a1[119];
    v178 = &v175[v177 / 0x55];
    v179 = *v178 + 48 * (v177 % 0x55);
    v180 = a1 + 120;
    v181 = v175[(a1[120] + v177) / 0x55] + 48 * ((a1[120] + v177) % 0x55);
    if (v179 != v181)
    {
      do
      {
        v179 = std::deque<std::deque<std::deque<unsigned short>>>::~deque[abi:ne200100](v179) + 48;
        if (v179 - *v178 == 4080)
        {
          v182 = v178[1];
          ++v178;
          v179 = v182;
        }
      }

      while (v179 != v181);
      v176 = a1[117];
      v175 = a1[116];
    }
  }

  *v180 = 0;
  v183 = v176 - v175;
  if (v183 >= 3)
  {
    do
    {
      operator delete(*v175);
      v175 = (a1[116] + 8);
      a1[116] = v175;
      v183 = (a1[117] - v175) >> 3;
    }

    while (v183 > 2);
  }

  if (v183 == 1)
  {
    v184 = 42;
  }

  else
  {
    if (v183 != 2)
    {
      goto LABEL_257;
    }

    v184 = 85;
  }

  a1[119] = v184;
LABEL_257:
  v185 = a1[8];
  v186 = a1[9];
  if (v186 == v185)
  {
    v187 = a1 + 12;
    v186 = a1[8];
  }

  else
  {
    v187 = a1 + 12;
    v188 = a1[11];
    v189 = &v185[v188 >> 8];
    v190 = *v189;
    v191 = *v189 + 16 * v188;
    v192 = *(v185 + (((a1[12] + v188) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 96) + v188);
    if (v191 != v192)
    {
      do
      {
        v193 = *v191;
        if (*v191)
        {
          if (*(v191 + 8) != v193)
          {
            *(v191 + 8) = v193;
          }

          operator delete(v193);
          *v191 = 0;
          *(v191 + 8) = 0;
          v190 = *v189;
        }

        v191 += 16;
        if (v191 - v190 == 4096)
        {
          v194 = v189[1];
          ++v189;
          v190 = v194;
          v191 = v194;
        }
      }

      while (v191 != v192);
      v185 = a1[8];
      v186 = a1[9];
    }
  }

  *v187 = 0;
  v195 = v186 - v185;
  if (v195 >= 3)
  {
    do
    {
      operator delete(*v185);
      v196 = a1[9];
      v185 = (a1[8] + 8);
      a1[8] = v185;
      v195 = (v196 - v185) >> 3;
    }

    while (v195 > 2);
  }

  if (v195 == 1)
  {
    v197 = 128;
  }

  else
  {
    if (v195 != 2)
    {
      goto LABEL_275;
    }

    v197 = 256;
  }

  a1[11] = v197;
LABEL_275:
  v198 = a1[14];
  v199 = a1[15];
  if (v199 == v198)
  {
    v200 = a1 + 18;
    v199 = a1[14];
  }

  else
  {
    v200 = a1 + 18;
    v201 = a1[17];
    v202 = &v198[v201 >> 8];
    v203 = *v202;
    v204 = *v202 + 16 * v201;
    v205 = *(v198 + (((a1[18] + v201) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 144) + v201);
    if (v204 != v205)
    {
      do
      {
        v206 = *v204;
        if (*v204)
        {
          if (*(v204 + 8) != v206)
          {
            *(v204 + 8) = v206;
          }

          operator delete(v206);
          *v204 = 0;
          *(v204 + 8) = 0;
          v203 = *v202;
        }

        v204 += 16;
        if (v204 - v203 == 4096)
        {
          v207 = v202[1];
          ++v202;
          v203 = v207;
          v204 = v207;
        }
      }

      while (v204 != v205);
      v198 = a1[14];
      v199 = a1[15];
    }
  }

  *v200 = 0;
  v208 = v199 - v198;
  if (v208 >= 3)
  {
    do
    {
      operator delete(*v198);
      v209 = a1[15];
      v198 = (a1[14] + 8);
      a1[14] = v198;
      v208 = (v209 - v198) >> 3;
    }

    while (v208 > 2);
  }

  if (v208 == 1)
  {
    v210 = 128;
  }

  else
  {
    if (v208 != 2)
    {
      goto LABEL_293;
    }

    v210 = 256;
  }

  a1[17] = v210;
LABEL_293:
  v211 = a1[20];
  v212 = a1[21];
  if (v212 == v211)
  {
    v213 = a1 + 24;
    v212 = a1[20];
  }

  else
  {
    v213 = a1 + 24;
    v214 = a1[23];
    v215 = &v211[v214 >> 8];
    v216 = *v215;
    v217 = *v215 + 16 * v214;
    v218 = *(v211 + (((a1[24] + v214) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 192) + v214);
    if (v217 != v218)
    {
      do
      {
        v219 = *v217;
        if (*v217)
        {
          if (*(v217 + 8) != v219)
          {
            *(v217 + 8) = v219;
          }

          operator delete(v219);
          *v217 = 0;
          *(v217 + 8) = 0;
          v216 = *v215;
        }

        v217 += 16;
        if (v217 - v216 == 4096)
        {
          v220 = v215[1];
          ++v215;
          v216 = v220;
          v217 = v220;
        }
      }

      while (v217 != v218);
      v211 = a1[20];
      v212 = a1[21];
    }
  }

  *v213 = 0;
  v221 = v212 - v211;
  if (v221 >= 3)
  {
    do
    {
      operator delete(*v211);
      v222 = a1[21];
      v211 = (a1[20] + 8);
      a1[20] = v211;
      v221 = (v222 - v211) >> 3;
    }

    while (v221 > 2);
  }

  if (v221 == 1)
  {
    v223 = 128;
  }

  else
  {
    if (v221 != 2)
    {
      goto LABEL_311;
    }

    v223 = 256;
  }

  a1[23] = v223;
LABEL_311:
  std::deque<std::valarray<unsigned char>>::shrink_to_fit((a1 + 25));
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::shrink_to_fit((a1 + 31));
  std::deque<std::valarray<unsigned char>>::shrink_to_fit((a1 + 37));
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::shrink_to_fit((a1 + 43));
  std::deque<std::valarray<unsigned char>>::shrink_to_fit((a1 + 49));
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::shrink_to_fit((a1 + 55));
  std::deque<std::valarray<unsigned char>>::shrink_to_fit((a1 + 61));
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::shrink_to_fit((a1 + 67));
  std::deque<std::valarray<unsigned char>>::shrink_to_fit((a1 + 73));
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::shrink_to_fit((a1 + 79));
  std::deque<std::valarray<unsigned char>>::shrink_to_fit((a1 + 85));
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::shrink_to_fit((a1 + 91));
  std::deque<std::valarray<unsigned char>>::shrink_to_fit((a1 + 97));
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::shrink_to_fit((a1 + 103));
  std::deque<std::valarray<unsigned char>>::shrink_to_fit((a1 + 109));
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::shrink_to_fit((a1 + 115));
  std::deque<std::valarray<BOOL>>::shrink_to_fit((a1 + 7));
  std::deque<std::valarray<BOOL>>::shrink_to_fit((a1 + 13));
  std::deque<std::valarray<BOOL>>::shrink_to_fit((a1 + 19));
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::~deque[abi:ne200100]((a1 + 115));
  std::deque<std::valarray<unsigned char>>::~deque[abi:ne200100]((a1 + 109));
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::~deque[abi:ne200100]((a1 + 103));
  std::deque<std::valarray<unsigned char>>::~deque[abi:ne200100]((a1 + 97));
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::~deque[abi:ne200100]((a1 + 91));
  std::deque<std::valarray<unsigned char>>::~deque[abi:ne200100]((a1 + 85));
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::~deque[abi:ne200100]((a1 + 79));
  std::deque<std::valarray<unsigned char>>::~deque[abi:ne200100]((a1 + 73));
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::~deque[abi:ne200100]((a1 + 67));
  std::deque<std::valarray<unsigned char>>::~deque[abi:ne200100]((a1 + 61));
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::~deque[abi:ne200100]((a1 + 55));
  std::deque<std::valarray<unsigned char>>::~deque[abi:ne200100]((a1 + 49));
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::~deque[abi:ne200100]((a1 + 43));
  std::deque<std::valarray<unsigned char>>::~deque[abi:ne200100]((a1 + 37));
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::~deque[abi:ne200100]((a1 + 31));
  std::deque<std::valarray<unsigned char>>::~deque[abi:ne200100]((a1 + 25));
  std::deque<std::valarray<unsigned char>>::~deque[abi:ne200100]((a1 + 19));
  std::deque<std::valarray<unsigned char>>::~deque[abi:ne200100]((a1 + 13));
  std::deque<std::valarray<unsigned char>>::~deque[abi:ne200100]((a1 + 7));
  v224 = a1[2];
  v225 = a1[3];
  a1[6] = 0;
  v226 = v225 - v224;
  if (v226 >= 3)
  {
    do
    {
      operator delete(*v224);
      v225 = a1[3];
      v224 = (a1[2] + 8);
      a1[2] = v224;
      v226 = v225 - v224;
    }

    while (v226 > 2);
  }

  if (v226 == 1)
  {
    v227 = 2048;
    goto LABEL_317;
  }

  if (v226 == 2)
  {
    v227 = 4096;
LABEL_317:
    a1[5] = v227;
  }

  if (v224 != v225)
  {
    do
    {
      v228 = *v224++;
      operator delete(v228);
    }

    while (v224 != v225);
    v230 = a1[2];
    v229 = a1[3];
    if (v229 != v230)
    {
      a1[3] = v229 + ((v230 - v229 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v231 = a1[1];
  if (v231)
  {
    operator delete(v231);
  }

  return a1;
}

void nms::PyramidNMS<unsigned short,double,unsigned char>::~PyramidNMS(void *a1)
{
  nms::PyramidNMS<unsigned short,double,unsigned char>::~PyramidNMS(a1);

  JUMPOUT(0x1B8C73EF0);
}

void std::deque<std::valarray<unsigned char>>::shrink_to_fit(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (*(a1 + 32) >= 0x100uLL)
    {
      operator delete(**(a1 + 8));
      *(a1 + 8) += 8;
      *(a1 + 32) -= 256;
    }

    std::deque<std::valarray<unsigned char>>::__maybe_remove_back_spare[abi:ne200100](a1, 0);
  }

  else
  {
    v3 = *(a1 + 8);
    for (i = *(a1 + 16); i != v3; *(a1 + 16) = i)
    {
      operator delete(*(i - 8));
      v3 = *(a1 + 8);
      i = *(a1 + 16) - 8;
    }

    *(a1 + 32) = 0;
  }

  std::__split_buffer<std::valarray<unsigned char> *,std::allocator<std::valarray<unsigned char> *>>::shrink_to_fit(a1);
}

void std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::shrink_to_fit(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (*(a1 + 32) >= 0x55uLL)
    {
      operator delete(**(a1 + 8));
      *(a1 + 8) += 8;
      *(a1 + 32) -= 85;
    }

    std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::__maybe_remove_back_spare[abi:ne200100](a1, 0);
  }

  else
  {
    v3 = *(a1 + 8);
    for (i = *(a1 + 16); i != v3; *(a1 + 16) = i)
    {
      operator delete(*(i - 8));
      v3 = *(a1 + 8);
      i = *(a1 + 16) - 8;
    }

    *(a1 + 32) = 0;
  }

  std::__split_buffer<std::deque<std::deque<std::deque<unsigned short>>> *,std::allocator<std::deque<std::deque<std::deque<unsigned short>>> *>>::shrink_to_fit(a1);
}

void std::deque<std::valarray<BOOL>>::shrink_to_fit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 8);
    if (v3 >= 0x100)
    {
      operator delete(*v4);
      v4 = (*(a1 + 8) + 8);
      *(a1 + 8) = v4;
      v2 = *(a1 + 40);
      v3 = *(a1 + 32) - 256;
      *(a1 + 32) = v3;
    }

    v5 = *(a1 + 16);
    if (v5 == v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = 32 * (v5 - v4) - 1;
    }

    if (v6 - (v2 + v3) >= 0x100)
    {
      operator delete(*(v5 - 1));
      *(a1 + 16) -= 8;
    }
  }

  else
  {
    v8 = *(a1 + 8);
    for (i = *(a1 + 16); i != v8; *(a1 + 16) = i)
    {
      operator delete(*(i - 8));
      v8 = *(a1 + 8);
      i = *(a1 + 16) - 8;
    }

    *(a1 + 32) = 0;
  }

  std::__split_buffer<std::valarray<BOOL> *,std::allocator<std::valarray<BOOL> *>>::shrink_to_fit(a1);
}

uint64_t std::deque<std::deque<std::deque<unsigned short>>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x55];
    v7 = *v6 + 48 * (v5 % 0x55);
    v8 = v3[(*(a1 + 40) + v5) / 0x55] + 48 * ((*(a1 + 40) + v5) % 0x55);
    if (v7 != v8)
    {
      do
      {
        v7 = std::deque<std::deque<unsigned short>>::~deque[abi:ne200100](v7) + 48;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 42;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 85;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::deque<std::deque<unsigned short>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x55];
    v7 = *v6 + 48 * (v5 % 0x55);
    v8 = v3[(*(a1 + 40) + v5) / 0x55] + 48 * ((*(a1 + 40) + v5) % 0x55);
    if (v7 != v8)
    {
      do
      {
        v7 = (std::deque<unsigned short>::~deque[abi:ne200100](v7) + 48);
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 42;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 85;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::deque<unsigned short>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 1024;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 2048;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::~__split_buffer(a1);
}

uint64_t std::valarray<BOOL>::~valarray[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != v2)
    {
      *(a1 + 8) = v2;
    }

    operator delete(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t std::deque<std::valarray<unsigned char>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x100)
  {
    a2 = 1;
  }

  if (v5 < 0x200)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void std::__split_buffer<std::valarray<unsigned char> *,std::allocator<std::valarray<unsigned char> *>>::shrink_to_fit(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>((v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 85 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x55)
  {
    a2 = 1;
  }

  if (v5 < 0xAA)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void std::__split_buffer<std::deque<std::deque<std::deque<unsigned short>>> *,std::allocator<std::deque<std::deque<std::deque<unsigned short>>> *>>::shrink_to_fit(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>((v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void std::__split_buffer<std::valarray<BOOL> *,std::allocator<std::valarray<BOOL> *>>::shrink_to_fit(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>((v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x55];
    v7 = *v6 + 48 * (v5 % 0x55);
    v8 = v3[(*(a1 + 40) + v5) / 0x55] + 48 * ((*(a1 + 40) + v5) % 0x55);
    if (v7 != v8)
    {
      do
      {
        v7 = std::deque<std::deque<std::deque<unsigned short>>>::~deque[abi:ne200100](v7) + 48;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 42;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 85;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::deque<std::valarray<unsigned char>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v12 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v3 + (((*(a1 + 40) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *v8;
        if (*v8)
        {
          if (*(v8 + 8) != v10)
          {
            *(v8 + 8) = v10;
          }

          operator delete(v10);
          *v8 = 0;
          *(v8 + 8) = 0;
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v12 = v2;
  }

  *v4 = 0;
  v13 = v12 - v3;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v13 = v2 - v3;
    }

    while (v13 > 2);
    v12 = v2;
  }

  if (v13 == 1)
  {
    v14 = 128;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_21;
    }

    v14 = 256;
  }

  *(a1 + 32) = v14;
LABEL_21:
  if (v3 != v12)
  {
    do
    {
      v15 = *v3++;
      operator delete(v15);
    }

    while (v3 != v12);
    v12 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v12)
  {
    *(a1 + 16) = v2 + ((v12 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double std::deque<std::valarray<unsigned char>>::__move_assign(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 == v4)
  {
    v6 = (a1 + 40);
    v5 = *(a1 + 8);
  }

  else
  {
    v6 = (a1 + 40);
    v7 = *(a1 + 32);
    v8 = &v4[v7 >> 8];
    v9 = *v8;
    v10 = *v8 + 16 * v7;
    v11 = *(v4 + (((*(a1 + 40) + v7) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v7);
    if (v10 != v11)
    {
      do
      {
        v12 = *v10;
        if (*v10)
        {
          if (*(v10 + 8) != v12)
          {
            *(v10 + 8) = v12;
          }

          operator delete(v12);
          *v10 = 0;
          *(v10 + 8) = 0;
          v9 = *v8;
        }

        v10 += 16;
        if (v10 - v9 == 4096)
        {
          v13 = v8[1];
          ++v8;
          v9 = v13;
          v10 = v13;
        }
      }

      while (v10 != v11);
      v4 = *(a1 + 8);
      v5 = *(a1 + 16);
    }
  }

  *v6 = 0;
  v14 = v5 - v4;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v4);
      v15 = *(a1 + 16);
      v4 = (*(a1 + 8) + 8);
      *(a1 + 8) = v4;
      v14 = (v15 - v4) >> 3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v16 = 128;
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_19;
    }

    v16 = 256;
  }

  *(a1 + 32) = v16;
LABEL_19:
  std::deque<std::valarray<unsigned char>>::shrink_to_fit(a1);
  v18 = *(a1 + 8);
  v17 = *(a1 + 16);
  if (v17 != v18)
  {
    *(a1 + 16) = v17 + ((v18 - v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  std::__split_buffer<std::valarray<unsigned char> *,std::allocator<std::valarray<unsigned char> *>>::shrink_to_fit(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

double std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::__move_assign(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 == v4)
  {
    v6 = (a1 + 40);
    v5 = *(a1 + 8);
  }

  else
  {
    v6 = (a1 + 40);
    v7 = *(a1 + 32);
    v8 = &v4[v7 / 0x55];
    v9 = *v8 + 48 * (v7 % 0x55);
    v10 = v4[(*(a1 + 40) + v7) / 0x55] + 48 * ((*(a1 + 40) + v7) % 0x55);
    if (v9 != v10)
    {
      do
      {
        v9 = std::deque<std::deque<std::deque<unsigned short>>>::~deque[abi:ne200100](v9) + 48;
        if (v9 - *v8 == 4080)
        {
          v11 = v8[1];
          ++v8;
          v9 = v11;
        }
      }

      while (v9 != v10);
      v4 = *(a1 + 8);
      v5 = *(a1 + 16);
    }
  }

  *v6 = 0;
  v12 = v5 - v4;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v4);
      v13 = *(a1 + 16);
      v4 = (*(a1 + 8) + 8);
      *(a1 + 8) = v4;
      v12 = (v13 - v4) >> 3;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v14 = 42;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_15;
    }

    v14 = 85;
  }

  *(a1 + 32) = v14;
LABEL_15:
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::shrink_to_fit(a1);
  v16 = *(a1 + 8);
  v15 = *(a1 + 16);
  if (v15 != v16)
  {
    *(a1 + 16) = v15 + ((v16 - v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  std::__split_buffer<std::deque<std::deque<std::deque<unsigned short>>> *,std::allocator<std::deque<std::deque<std::deque<unsigned short>>> *>>::shrink_to_fit(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

double std::deque<std::valarray<BOOL>>::__move_assign(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 == v4)
  {
    v6 = (a1 + 40);
    v5 = *(a1 + 8);
  }

  else
  {
    v6 = (a1 + 40);
    v7 = *(a1 + 32);
    v8 = &v4[v7 >> 8];
    v9 = *v8;
    v10 = *v8 + 16 * v7;
    v11 = *(v4 + (((*(a1 + 40) + v7) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v7);
    if (v10 != v11)
    {
      do
      {
        v12 = *v10;
        if (*v10)
        {
          if (*(v10 + 8) != v12)
          {
            *(v10 + 8) = v12;
          }

          operator delete(v12);
          *v10 = 0;
          *(v10 + 8) = 0;
          v9 = *v8;
        }

        v10 += 16;
        if (v10 - v9 == 4096)
        {
          v13 = v8[1];
          ++v8;
          v9 = v13;
          v10 = v13;
        }
      }

      while (v10 != v11);
      v4 = *(a1 + 8);
      v5 = *(a1 + 16);
    }
  }

  *v6 = 0;
  v14 = v5 - v4;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v4);
      v15 = *(a1 + 16);
      v4 = (*(a1 + 8) + 8);
      *(a1 + 8) = v4;
      v14 = (v15 - v4) >> 3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v16 = 128;
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_19;
    }

    v16 = 256;
  }

  *(a1 + 32) = v16;
LABEL_19:
  std::deque<std::valarray<BOOL>>::shrink_to_fit(a1);
  v18 = *(a1 + 8);
  v17 = *(a1 + 16);
  if (v17 != v18)
  {
    *(a1 + 16) = v17 + ((v18 - v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  std::__split_buffer<std::valarray<BOOL> *,std::allocator<std::valarray<BOOL> *>>::shrink_to_fit(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void nms::QuantizedScoreMap::~QuantizedScoreMap(nms::QuantizedScoreMap *this)
{
  v3 = (this + 16);
  v2 = *(this + 2);
  if (v2)
  {
    if (v3[1] != v2)
    {
      *(this + 3) = v2;
    }

    operator delete(v2);
    *v3 = 0;
    v3[1] = 0;
  }
}

void nms::RectForest<unsigned short,double>::~RectForest(uint64_t a1)
{
  nms::RectForest<unsigned short,double>::~RectForest(a1);

  JUMPOUT(0x1B8C73EF0);
}

void *std::__deque_iterator<std::valarray<double>,std::valarray<double>*,std::valarray<double>&,std::valarray<double>**,long,256l>::operator+[abi:ne200100](void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 + ((a2 - *result) >> 4);
    if (v3 < 1)
    {
      result -= (255 - v3) >> 8;
    }

    else
    {
      result += v3 >> 8;
    }
  }

  return result;
}

void *std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_front<std::valarray<double> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::allocator<std::valarray<double>>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3 != v2)
    {
      *(a1 + 8) = &v3[(v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

uint64_t std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::~__split_buffer(a1);
}

void *std::__deque_iterator<std::deque<std::pair<unsigned short,unsigned short>>,std::deque<std::pair<unsigned short,unsigned short>>*,std::deque<std::pair<unsigned short,unsigned short>>&,std::deque<std::pair<unsigned short,unsigned short>>**,long,85l>::operator+=[abi:ne200100](void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x5555555555555555 * ((result[1] - **result) >> 4);
    if (v3 < 1)
    {
      v5 = 84 - v3;
      v6 = &v2[-(v5 / 0x55)];
      *result = v6;
      v4 = *v6 + 48 * (85 * (v5 / 0x55) - v5) + 4032;
    }

    else
    {
      *result = &v2[v3 / 0x55];
      v4 = v2[v3 / 0x55] + 48 * (v3 % 0x55);
    }

    result[1] = v4;
  }

  return result;
}

uint64_t std::deque<std::deque<std::pair<unsigned short,unsigned short>>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x55];
    v7 = *v6 + 48 * (v5 % 0x55);
    v8 = v3[(*(a1 + 40) + v5) / 0x55] + 48 * ((*(a1 + 40) + v5) % 0x55);
    if (v7 != v8)
    {
      do
      {
        v7 = (std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](v7) + 48);
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 42;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 85;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::deque<std::valarray<double>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 8];
    v7 = *v6 + 16 * v5;
    v8 = *(v3 + (((*(a1 + 40) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v7 != v8)
    {
      do
      {
        std::allocator<std::valarray<double>>::destroy[abi:ne200100](v7);
        v7 += 16;
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 128;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 256;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t nms::RectForest<unsigned short,double>::~RectForest(uint64_t a1)
{
  *a1 = &unk_1F2BAF6E8;
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  if (v3 == v2)
  {
    v4 = (a1 + 120);
    v3 = *(a1 + 88);
  }

  else
  {
    v4 = (a1 + 120);
    v5 = *(a1 + 112);
    v6 = &v2[v5 >> 8];
    v7 = *v6 + 16 * v5;
    v8 = *(v2 + (((*(a1 + 120) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 120) + v5);
    if (v7 != v8)
    {
      do
      {
        std::allocator<std::valarray<double>>::destroy[abi:ne200100](v7);
        v7 += 16;
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 88);
      v3 = *(a1 + 96);
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v11 = *(a1 + 96);
      v2 = (*(a1 + 88) + 8);
      *(a1 + 88) = v2;
      v10 = (v11 - v2) >> 3;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v12 = 128;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_15;
    }

    v12 = 256;
  }

  *(a1 + 112) = v12;
LABEL_15:
  std::deque<std::valarray<double>>::shrink_to_fit(a1 + 80);
  v13 = *(a1 + 136);
  v14 = *(a1 + 144);
  if (v14 == v13)
  {
    v15 = (a1 + 168);
    v14 = *(a1 + 136);
  }

  else
  {
    v15 = (a1 + 168);
    v16 = *(a1 + 160);
    v17 = &v13[v16 / 0x55];
    v18 = *v17 + 48 * (v16 % 0x55);
    v19 = v13[(*(a1 + 168) + v16) / 0x55] + 48 * ((*(a1 + 168) + v16) % 0x55);
    if (v18 != v19)
    {
      do
      {
        v18 = (std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](v18) + 48);
        if (v18 - *v17 == 4080)
        {
          v20 = v17[1];
          ++v17;
          v18 = v20;
        }
      }

      while (v18 != v19);
      v13 = *(a1 + 136);
      v14 = *(a1 + 144);
    }
  }

  *v15 = 0;
  v21 = v14 - v13;
  if (v21 >= 3)
  {
    do
    {
      operator delete(*v13);
      v22 = *(a1 + 144);
      v13 = (*(a1 + 136) + 8);
      *(a1 + 136) = v13;
      v21 = (v22 - v13) >> 3;
    }

    while (v21 > 2);
  }

  if (v21 == 1)
  {
    v23 = 42;
  }

  else
  {
    if (v21 != 2)
    {
      goto LABEL_29;
    }

    v23 = 85;
  }

  *(a1 + 160) = v23;
LABEL_29:
  std::deque<std::deque<std::pair<unsigned short,unsigned short>>>::shrink_to_fit(a1 + 128);
  v24 = *(a1 + 16);
  if (v24)
  {
    free(v24);
    *(a1 + 16) = 0;
  }

  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(*(a1 + 184));
  std::deque<std::deque<std::pair<unsigned short,unsigned short>>>::~deque[abi:ne200100](a1 + 128);
  std::deque<std::valarray<double>>::~deque[abi:ne200100](a1 + 80);
  v25 = *(a1 + 64);
  if (v25)
  {
    if (*(a1 + 72) != v25)
    {
      *(a1 + 72) = v25;
    }

    operator delete(v25);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  return a1;
}

void std::deque<std::valarray<double>>::shrink_to_fit(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (*(a1 + 32) >= 0x100uLL)
    {
      operator delete(**(a1 + 8));
      *(a1 + 8) += 8;
      *(a1 + 32) -= 256;
    }

    std::deque<std::valarray<unsigned char>>::__maybe_remove_back_spare[abi:ne200100](a1, 0);
  }

  else
  {
    v3 = *(a1 + 8);
    for (i = *(a1 + 16); i != v3; *(a1 + 16) = i)
    {
      operator delete(*(i - 8));
      v3 = *(a1 + 8);
      i = *(a1 + 16) - 8;
    }

    *(a1 + 32) = 0;
  }

  std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::shrink_to_fit(a1);
}

void std::deque<std::deque<std::pair<unsigned short,unsigned short>>>::shrink_to_fit(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (*(a1 + 32) >= 0x55uLL)
    {
      operator delete(**(a1 + 8));
      *(a1 + 8) += 8;
      *(a1 + 32) -= 85;
    }

    std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::__maybe_remove_back_spare[abi:ne200100](a1, 0);
  }

  else
  {
    v3 = *(a1 + 8);
    for (i = *(a1 + 16); i != v3; *(a1 + 16) = i)
    {
      operator delete(*(i - 8));
      v3 = *(a1 + 8);
      i = *(a1 + 16) - 8;
    }

    *(a1 + 32) = 0;
  }

  std::__split_buffer<std::deque<std::pair<unsigned short,unsigned short>> *,std::allocator<std::deque<std::pair<unsigned short,unsigned short>> *>>::shrink_to_fit(a1);
}

void std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::shrink_to_fit(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>((v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void std::__split_buffer<std::deque<std::pair<unsigned short,unsigned short>> *,std::allocator<std::deque<std::pair<unsigned short,unsigned short>> *>>::shrink_to_fit(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>((v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

double std::deque<std::valarray<double>>::__move_assign(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 == v4)
  {
    v6 = (a1 + 40);
    v5 = *(a1 + 8);
  }

  else
  {
    v6 = (a1 + 40);
    v7 = *(a1 + 32);
    v8 = &v4[v7 >> 8];
    v9 = *v8 + 16 * v7;
    v10 = *(v4 + (((*(a1 + 40) + v7) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v7);
    if (v9 != v10)
    {
      do
      {
        std::allocator<std::valarray<double>>::destroy[abi:ne200100](v9);
        v9 += 16;
        if (v9 - *v8 == 4096)
        {
          v11 = v8[1];
          ++v8;
          v9 = v11;
        }
      }

      while (v9 != v10);
      v4 = *(a1 + 8);
      v5 = *(a1 + 16);
    }
  }

  *v6 = 0;
  v12 = v5 - v4;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v4);
      v13 = *(a1 + 16);
      v4 = (*(a1 + 8) + 8);
      *(a1 + 8) = v4;
      v12 = (v13 - v4) >> 3;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v14 = 128;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_15;
    }

    v14 = 256;
  }

  *(a1 + 32) = v14;
LABEL_15:
  std::deque<std::valarray<double>>::shrink_to_fit(a1);
  v16 = *(a1 + 8);
  v15 = *(a1 + 16);
  if (v15 != v16)
  {
    *(a1 + 16) = v15 + ((v16 - v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::shrink_to_fit(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

double std::deque<std::deque<std::pair<unsigned short,unsigned short>>>::__move_assign(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 == v4)
  {
    v6 = (a1 + 40);
    v5 = *(a1 + 8);
  }

  else
  {
    v6 = (a1 + 40);
    v7 = *(a1 + 32);
    v8 = &v4[v7 / 0x55];
    v9 = *v8 + 48 * (v7 % 0x55);
    v10 = v4[(*(a1 + 40) + v7) / 0x55] + 48 * ((*(a1 + 40) + v7) % 0x55);
    if (v9 != v10)
    {
      do
      {
        v9 = (std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](v9) + 48);
        if (v9 - *v8 == 4080)
        {
          v11 = v8[1];
          ++v8;
          v9 = v11;
        }
      }

      while (v9 != v10);
      v4 = *(a1 + 8);
      v5 = *(a1 + 16);
    }
  }

  *v6 = 0;
  v12 = v5 - v4;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v4);
      v13 = *(a1 + 16);
      v4 = (*(a1 + 8) + 8);
      *(a1 + 8) = v4;
      v12 = (v13 - v4) >> 3;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v14 = 42;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_15;
    }

    v14 = 85;
  }

  *(a1 + 32) = v14;
LABEL_15:
  std::deque<std::deque<std::pair<unsigned short,unsigned short>>>::shrink_to_fit(a1);
  v16 = *(a1 + 8);
  v15 = *(a1 + 16);
  if (v15 != v16)
  {
    *(a1 + 16) = v15 + ((v16 - v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  std::__split_buffer<std::deque<std::pair<unsigned short,unsigned short>> *,std::allocator<std::deque<std::pair<unsigned short,unsigned short>> *>>::shrink_to_fit(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void std::__tree<std::__value_type<nms::ForestLevelType,nms::RepresentationDimType>,std::__map_value_compare<nms::ForestLevelType,std::__value_type<nms::ForestLevelType,nms::RepresentationDimType>,std::less<nms::ForestLevelType>,true>,std::allocator<std::__value_type<nms::ForestLevelType,nms::RepresentationDimType>>>::__move_assign(void *a1, void *a2)
{
  v4 = a1 + 1;
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(a1[1]);
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  a1[2] = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void std::valarray<unsigned char>::resize(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    if (*(a1 + 8) != v4)
    {
      *(a1 + 8) = v4;
    }

    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (a2)
  {
    operator new();
  }
}

void *std::__val_expr<std::_BinaryOp<std::less<unsigned char>,std::valarray<unsigned char>,std::__scalar_expr<unsigned char>>>::operator std::valarray<BOOL>(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  if (*(*(a2 + 8) + 8) != **(a2 + 8))
  {
    operator new();
  }

  return result;
}

void *std::mask_array<unsigned char>::mask_array[abi:ne200100](void *result, unsigned __int8 **a2, uint64_t a3)
{
  *result = a3;
  v3 = result + 1;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    *v3 = 0;
    result[2] = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4++;
      v6 += v7;
    }

    while (v4 != v5);
    *v3 = 0;
    result[2] = 0;
    if (v6)
    {
      if (!(v6 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }
  }

  v8 = *a2;
  v9 = a2[1];
  v10 = v9 - *a2;
  if (v9 != *a2)
  {
    v11 = 0;
    v12 = 0;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    do
    {
      if (v8[v11] == 1)
      {
        *(8 * v12++) = v11;
      }

      ++v11;
    }

    while (v10 != v11);
  }

  return result;
}

uint64_t std::deque<unsigned char>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 4096;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::~__split_buffer(a1);
}

uint64_t nms::PyramidNMS<unsigned short,double,unsigned char>::computeRectRelationships(uint64_t a1, void *a2, int a3)
{
  v3 = a1;
  v575 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 968);
  v5 = v4[4];
  v6 = v4[5];
  v7 = v4[1];
  v8 = *(v7 + 8 * ((v6 + v5 - 1) / 0x14)) + 200 * ((v6 + v5 - 1) % 0x14);
  v11 = *(v8 + 184);
  v9 = v8 + 184;
  v10 = v11;
  if (!v11)
  {
    v15 = 0;
    v517 = 9;
    goto LABEL_14;
  }

  v12 = v10;
  do
  {
    v13 = v12;
    v12 = *v12;
  }

  while (v12);
  if (v13 == v9 || v13[4])
  {
    v14 = 9;
  }

  else
  {
    v14 = v13[5];
  }

  v517 = v14;
  do
  {
    v16 = v10;
    v10 = *v10;
  }

  while (v10);
  if (v16 == v9 || v16[4])
  {
    v15 = 0;
    goto LABEL_14;
  }

  v15 = 0;
  v491 = v16[5];
  if (v491 > 3)
  {
    if (v491 > 5)
    {
      switch(v491)
      {
        case 6:
          v15 = 9;
          break;
        case 7:
          v15 = 3;
          break;
        case 8:
          v15 = 14;
          break;
      }

      goto LABEL_14;
    }

    if (v491 != 4)
    {
      v15 = 5;
      goto LABEL_14;
    }

LABEL_748:
    v15 = 2;
    goto LABEL_14;
  }

  if (v491 > 1)
  {
    if (v491 == 2)
    {
      v15 = 8;
      goto LABEL_14;
    }

    goto LABEL_748;
  }

  if (v491 <= 1)
  {
    v15 = 4;
  }

LABEL_14:
  v17 = *(a1 + 1232);
  v18 = *(a1 + 1240);
  v19 = *(a1 + 1248);
  v20 = *(a1 + 1256);
  v508 = *(a1 + 1264);
  v501 = *(a1 + 1272);
  v21 = *(a1 + 1280);
  v22 = *(a1 + 1288);
  v23 = *(a1 + 1296);
  v24 = *(a1 + 1304);
  v515 = v4[5];
  if (v4)
  {
    v25 = v4[5];
  }

  else
  {
    v25 = 0;
  }

  v545 = 0u;
  v543 = 0u;
  memset(v544, 0, sizeof(v544));
  *__p = 0u;
  v542 = 0u;
  v539 = 0u;
  v540 = 0u;
  *v538 = 0u;
  v511 = v25;
  if (v4[2] != v7)
  {
    v26 = *(v7 + 8 * (v5 / 0x14)) + 200 * (v5 % 0x14);
    v522 = *(v7 + 8 * ((v6 + v5) / 0x14)) + 200 * ((v6 + v5) % 0x14);
    if (v26 != v522)
    {
      v27 = (v7 + 8 * (v5 / 0x14));
      if (v517 == 5)
      {
        v28 = 5;
      }

      else
      {
        v28 = 0;
      }

      if (!v517)
      {
        v28 = 4;
      }

      v520 = v28;
      do
      {
        v524 = v27;
        v29 = __p[1];
        v30 = *(v26 + 112);
        v527 = *(*(v26 + 88) + ((v30 >> 5) & 0x7FFFFFFFFFFFFF8));
        if (v542 == __p[1])
        {
          v31 = 0;
        }

        else
        {
          v31 = ((v542 - __p[1]) << 6) - 1;
        }

        v32 = *(&v543 + 1) + v543;
        if (v31 == *(&v543 + 1) + v543)
        {
          if (v543 < 0x200)
          {
            if (v542 - __p[1] < *(&v542 + 1) - __p[0])
            {
              operator new();
            }

            if (*(&v542 + 1) == __p[0])
            {
              v33 = 1;
            }

            else
            {
              v33 = (*(&v542 + 1) - __p[0]) >> 2;
            }

            std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(v33);
          }

          *&v543 = v543 - 512;
          *&v569 = *__p[1];
          __p[1] = __p[1] + 8;
          std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(__p, &v569);
          v29 = __p[1];
          v32 = *(&v543 + 1) + v543;
        }

        *(*&v29[(v32 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v32 & 0x1FF)) = v527 + 16 * v30;
        v34 = (*(&v543 + 1))++;
        if (v520)
        {
          v35 = ((*(*(*(__p[1] + (((v543 + v34) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v543 + v34) & 0x1FF)) + 8) - **(*(__p[1] + (((v543 + v34) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v543 + v34) & 0x1FF))) >> 3) / v520;
        }

        else
        {
          v35 = 0;
        }

        v3 = a1;
        v25 = v511;
        *&v569 = v35;
        std::deque<unsigned long>::push_back(v544, &v569);
        v36 = *(*(*(&v544[0] + 1) + (((*(&v545 + 1) + v545 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v545 + 1) + v545 - 1) & 0x1FF));
        *(&v569 + 1) = *(*(__p[1] + (((*(&v543 + 1) + v543 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v543 + 1) + v543 - 1) & 0x1FF));
        *&v570 = 2;
        *(&v570 + 1) = v36;
        *&v571 = v15;
        *(&v571 + 1) = *(&v569 + 1);
        v572 = 3;
        v573 = v36;
        v574 = v15;
        std::__val_expr<std::_BinaryOp<std::multiplies<double>,std::__val_expr<std::__slice_expr<std::valarray<double> const&>>,std::__val_expr<std::__slice_expr<std::valarray<double> const&>>>>::operator std::valarray<double>(v564, &v569);
        v37 = v538[1];
        if (v539 == v538[1])
        {
          v38 = 0;
        }

        else
        {
          v38 = 32 * (v539 - v538[1]) - 1;
        }

        v39 = *(&v540 + 1);
        v40 = *(&v540 + 1) + v540;
        if (v38 == *(&v540 + 1) + v540)
        {
          if (v540 < 0x100)
          {
            if (v539 - v538[1] < *(&v539 + 1) - v538[0])
            {
              if (*(&v539 + 1) != v539)
              {
                operator new();
              }

              operator new();
            }

            if (*(&v539 + 1) == v538[0])
            {
              v41 = 1;
            }

            else
            {
              v41 = (*(&v539 + 1) - v538[0]) >> 2;
            }

            v567 = v538;
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(v41);
          }

          *&v540 = v540 - 256;
          v565[0] = *v538[1];
          v538[1] = v538[1] + 8;
          std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(v538, v565);
          v37 = v538[1];
          v39 = *(&v540 + 1);
          v40 = *(&v540 + 1) + v540;
        }

        *(*&v37[(v40 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v40) = *v564;
        *(&v540 + 1) = v39 + 1;
        v26 += 200;
        v27 = v524;
        if (v26 - *v524 == 4000)
        {
          v27 = v524 + 1;
          v26 = v524[1];
        }
      }

      while (v26 != v522);
    }
  }

  if (a2[5] == v25)
  {
    v42 = 0;
    if (v25)
    {
      while (1)
      {
        v43 = a2[4];
        if (*(*(a2[1] + (((v43 + v42) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v43 + v42) + 8) - *(*(a2[1] + (((v43 + v42) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v43 + v42)) != *(*(*(&v544[0] + 1) + (((v545 + v42) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v545 + v42) & 0x1FF)))
        {
          break;
        }

        if (v25 == ++v42)
        {
          v42 = v515;
          break;
        }
      }
    }

    v500 = v42 == v25;
  }

  else
  {
    v500 = 0;
  }

  std::deque<std::valarray<unsigned char>>::resize((v3 + 584), v25);
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::resize((v3 + 632), v25);
  if (v25)
  {
    v44 = 0;
    do
    {
      v45 = *(*(*(&v544[0] + 1) + (((v545 + v44) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v545 + v44) & 0x1FF));
      std::valarray<unsigned char>::resize(*(*(a1 + 592) + (((*(a1 + 616) + v44) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 616) + v44), v45);
      std::deque<std::deque<std::deque<unsigned short>>>::resize((*(*(a1 + 640) + 8 * ((*(a1 + 664) + v44) / 0x55uLL)) + 48 * ((*(a1 + 664) + v44) % 0x55uLL)), v511);
      v46 = 0;
      do
      {
        v47 = *(*(a1 + 640) + 8 * ((*(a1 + 664) + v44) / 0x55uLL)) + 48 * ((*(a1 + 664) + v44) % 0x55uLL);
        std::deque<std::deque<unsigned short>>::resize((*(*(v47 + 8) + 8 * ((v46 + *(v47 + 32)) / 0x55uLL)) + 48 * ((v46 + *(v47 + 32)) % 0x55uLL)), v45);
        ++v46;
      }

      while (v511 != v46);
      ++v44;
    }

    while (v44 != v511);
  }

  std::deque<std::valarray<unsigned char>>::resize((a1 + 680), v511);
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::resize((a1 + 728), v511);
  if (v511)
  {
    for (i = 0; i != v511; ++i)
    {
      v49 = *(*(*(&v544[0] + 1) + (((v545 + i) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v545 + i) & 0x1FF));
      std::valarray<unsigned char>::resize(*(*(a1 + 688) + (((*(a1 + 712) + i) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 712) + i), v49);
      std::deque<std::deque<std::deque<unsigned short>>>::resize((*(*(a1 + 736) + 8 * ((*(a1 + 760) + i) / 0x55uLL)) + 48 * ((*(a1 + 760) + i) % 0x55uLL)), v511);
      for (j = 0; j != v511; ++j)
      {
        v51 = *(*(a1 + 736) + 8 * ((*(a1 + 760) + i) / 0x55uLL)) + 48 * ((*(a1 + 760) + i) % 0x55uLL);
        std::deque<std::deque<unsigned short>>::resize((*(*(v51 + 8) + 8 * ((j + *(v51 + 32)) / 0x55uLL)) + 48 * ((j + *(v51 + 32)) % 0x55uLL)), v49);
      }
    }
  }

  std::deque<std::valarray<unsigned char>>::resize((a1 + 776), v511);
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::resize((a1 + 824), v511);
  if (v511)
  {
    for (k = 0; k != v511; ++k)
    {
      v53 = *(*(*(&v544[0] + 1) + (((v545 + k) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v545 + k) & 0x1FF));
      std::valarray<unsigned char>::resize(*(*(a1 + 784) + (((*(a1 + 808) + k) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 808) + k), v53);
      std::deque<std::deque<std::deque<unsigned short>>>::resize((*(*(a1 + 832) + 8 * ((*(a1 + 856) + k) / 0x55uLL)) + 48 * ((*(a1 + 856) + k) % 0x55uLL)), v511);
      for (m = 0; m != v511; ++m)
      {
        v55 = *(*(a1 + 832) + 8 * ((*(a1 + 856) + k) / 0x55uLL)) + 48 * ((*(a1 + 856) + k) % 0x55uLL);
        std::deque<std::deque<unsigned short>>::resize((*(*(v55 + 8) + 8 * ((m + *(v55 + 32)) / 0x55uLL)) + 48 * ((m + *(v55 + 32)) % 0x55uLL)), v53);
      }
    }
  }

  v56 = v511;
  std::deque<std::valarray<unsigned char>>::resize((a1 + 872), v511);
  std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::resize((a1 + 920), v511);
  if (v511)
  {
    for (n = 0; n != v511; ++n)
    {
      v58 = *(*(*(&v544[0] + 1) + (((v545 + n) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v545 + n) & 0x1FF));
      std::valarray<unsigned char>::resize(*(*(a1 + 880) + (((*(a1 + 904) + n) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 904) + n), v58);
      std::deque<std::deque<std::deque<unsigned short>>>::resize((*(*(a1 + 928) + 8 * ((*(a1 + 952) + n) / 0x55uLL)) + 48 * ((*(a1 + 952) + n) % 0x55uLL)), v511);
      for (ii = 0; ii != v511; ++ii)
      {
        v60 = *(*(a1 + 928) + 8 * ((*(a1 + 952) + n) / 0x55uLL)) + 48 * ((*(a1 + 952) + n) % 0x55uLL);
        std::deque<std::deque<unsigned short>>::resize((*(*(v60 + 8) + 8 * ((ii + *(v60 + 32)) / 0x55uLL)) + 48 * ((ii + *(v60 + 32)) % 0x55uLL)), v58);
      }
    }

    v496 = 0;
    v61 = 0;
    v62 = 0;
    v493 = a3 ^ 1u;
    *&v536 = 0.0;
    v537 = 0.0;
    if (v517 == 5)
    {
      v63 = 5;
    }

    else
    {
      v63 = 0;
    }

    v534 = 0;
    v535 = 0;
    if (!v517)
    {
      v63 = 4;
    }

    v507 = v63;
    v532 = 0;
    v533 = 0;
    v64 = a1;
    do
    {
      if (*(*(*(v64 + 16) + (((*(v64 + 40) + v62) >> 9) & 0x7FFFFFFFFFFFF8)) + ((*(v64 + 40) + v62) & 0xFFF)) == 1 && v62 + v493 < v511)
      {
        v65 = v62 + v493;
        v495 = *(*(*(&v544[0] + 1) + (((v545 + v62) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v545 + v62) & 0x1FF));
        v509 = v62;
        v516 = v62;
        do
        {
          v518 = v65;
          if (*(*(*(v64 + 16) + (((*(v64 + 40) + v65) >> 9) & 0x7FFFFFFFFFFFF8)) + ((*(v64 + 40) + v65) & 0xFFF)) != 1 || !v495)
          {
            goto LABEL_628;
          }

          v66 = 0;
          v497 = *(*(*(&v544[0] + 1) + (((v545 + v65) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v545 + v65) & 0x1FF));
          v523 = v65;
          do
          {
            if (v500 && *(*(*(a2[1] + (((a2[4] + v62) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a2 + 32) + v62)) + v66) != 1)
            {
              goto LABEL_529;
            }

            if (v507)
            {
              *&v569 = *(*(__p[1] + (((v543 + v62) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v543 + v62) & 0x1FF));
              *(&v569 + 1) = v66 * v507;
              *&v570 = v507;
              *(&v570 + 1) = 1;
              std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(v565, &v569);
            }

            else
            {
              v565[1] = 0;
              v565[0] = 0;
            }

            v525 = v66;
            if (v61)
            {
              operator delete(v61);
            }

            v61 = v565[0];
            v67 = *(*(__p[1] + (((v543 + v518) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v543 + v518) & 0x1FF));
            v531[0] = 0;
            v531[1] = 0;
            v498 = v565[0];
            if (v507)
            {
              v68 = v67[1] - *v67;
              if (v507 <= v68 >> 3 && ((v565[1] - v565[0]) >> 3) / v507 == 1)
              {
                v69 = *(v565[0] + 1);
                v555 = *v565[0];
                v70 = *(v565[0] + 2);
                v71 = *(v565[0] + 3);
                v546 = 0.0;
                v547 = 0.0;
                v553 = v555 + v70;
                v554 = v69;
                v552 = v69 + v71;
                v569 = v67;
                v72 = (v68 >> 3) / v507;
                *&v570 = v72;
                *(&v570 + 1) = v507;
                std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(v564, &v569);
                *&v569 = v67;
                *(&v569 + 1) = 1;
                *&v570 = v72;
                *(&v570 + 1) = v507;
                std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v562, &v569);
                *&v569 = v67;
                *(&v569 + 1) = 2;
                *&v570 = v72;
                *(&v570 + 1) = v507;
                std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v558, &v569);
                v565[1] = v564;
                *&v566.f64[0] = &v558;
                std::__val_expr<std::_BinaryOp<std::plus<double>,std::valarray<double>,std::valarray<double>>>::operator std::valarray<double>(&v560, v565);
                if (v558)
                {
                  if (v559 != v558)
                  {
                    v559 += (v558 - v559 + 7) & 0xFFFFFFFFFFFFFFF8;
                  }

                  operator delete(v558);
                }

                *&v569 = v67;
                *(&v569 + 1) = 3;
                *&v570 = v72;
                *(&v570 + 1) = v507;
                std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v556, &v569);
                v565[1] = &v562;
                *&v566.f64[0] = &v556;
                std::__val_expr<std::_BinaryOp<std::plus<double>,std::valarray<double>,std::valarray<double>>>::operator std::valarray<double>(&v558, v565);
                if (v556)
                {
                  if (v557 != v556)
                  {
                    v557 += (v556 - v557 + 7) & 0xFFFFFFFFFFFFFFF8;
                  }

                  operator delete(v556);
                }

                *(&v569 + 1) = &v555;
                *&v570 = (v561 - v560) >> 3;
                *(&v570 + 1) = &v560;
                std::__val_expr<std::_BinaryOp<std::less<double>,std::__scalar_expr<double>,std::valarray<double>>>::operator std::valarray<BOOL>(v565, &v569);
                *(&v569 + 1) = &v554;
                *&v570 = (v559 - v558) >> 3;
                *(&v570 + 1) = &v558;
                std::__val_expr<std::_BinaryOp<std::less<double>,std::__scalar_expr<double>,std::valarray<double>>>::operator std::valarray<BOOL>(&v556, &v569);
                *(&v569 + 1) = &v553;
                *&v570 = (v564[1] - v564[0]) >> 3;
                *(&v570 + 1) = v564;
                std::__val_expr<std::_BinaryOp<std::greater<double>,std::__scalar_expr<double>,std::valarray<double>>>::operator std::valarray<BOOL>(&v550, &v569);
                *(&v569 + 1) = &v552;
                *&v570 = (v563 - v562) >> 3;
                *(&v570 + 1) = &v562;
                std::__val_expr<std::_BinaryOp<std::greater<double>,std::__scalar_expr<double>,std::valarray<double>>>::operator std::valarray<BOOL>(&v548, &v569);
                v73 = v565[1] - v565[0];
                if (v565[1] == v565[0])
                {
                  v76 = 0.0;
                  v75 = v548;
                  if (v548)
                  {
                    goto LABEL_532;
                  }
                }

                else
                {
                  std::valarray<BOOL>::resize(&v546, v565[1] - v565[0]);
                  v74 = 0;
                  v75 = v548;
                  v76 = v546;
                  v77 = v565[0];
                  v78 = v556;
                  v79 = v550;
                  do
                  {
                    *(*&v76 + v74) = v78[v74] & v77[v74] & v79[v74] & v75[v74];
                    ++v74;
                  }

                  while (v73 != v74);
LABEL_532:
                  if (v549 != v75)
                  {
                    v549 = v75;
                  }

                  operator delete(v75);
                }

                if (v550)
                {
                  if (v551 != v550)
                  {
                    v551 = v550;
                  }

                  operator delete(v550);
                }

                if (v556)
                {
                  if (v557 != v556)
                  {
                    v557 = v556;
                  }

                  operator delete(v556);
                }

                if (v565[0])
                {
                  if (v565[1] != v565[0])
                  {
                    v565[1] = v565[0];
                  }

                  operator delete(v565[0]);
                }

                if (v558)
                {
                  if (v559 != v558)
                  {
                    v559 += (v558 - v559 + 7) & 0xFFFFFFFFFFFFFFF8;
                  }

                  operator delete(v558);
                }

                if (v560)
                {
                  if (v561 != v560)
                  {
                    v561 += (v560 - v561 + 7) & 0xFFFFFFFFFFFFFFF8;
                  }

                  operator delete(v560);
                }

                if (v562)
                {
                  if (v563 != v562)
                  {
                    v563 += (v562 - v563 + 7) & 0xFFFFFFFFFFFFFFF8;
                  }

                  operator delete(v562);
                }

                if (v564[0])
                {
                  if (v564[1] != v564[0])
                  {
                    v564[1] = v564[1] + ((v564[0] - v564[1] + 7) & 0xFFFFFFFFFFFFFFF8);
                  }

                  operator delete(v564[0]);
                }

                if (*&v536 != 0.0)
                {
                  if (*&v537 != v536)
                  {
                    v537 = *&v536;
                  }

                  operator delete(v536);
                }

                v365 = v547;
                *&v536 = v76;
                v537 = v547;
                v366 = ((v67[1] - *v67) >> 3) / v507;
                if (v366 == *&v547 - *&v76)
                {
                  if (v366 * v507)
                  {
                    operator new();
                  }

                  v367 = 0;
                  if (v366 <= 1)
                  {
                    v368 = 1;
                  }

                  else
                  {
                    v368 = ((v67[1] - *v67) >> 3) / v507;
                  }

                  v62 = v516;
                  do
                  {
                    if (*&v365 != *&v76)
                    {
                      v369 = v367;
                      v370 = v76;
                      v371 = v368;
                      do
                      {
                        v372 = **&v370;
                        ++*&v370;
                        *v369 = v372;
                        v369 += v507;
                        --v371;
                      }

                      while (v371);
                    }

                    ++v367;
                  }

                  while (v367 != v507);
                  v64 = a1;
                }

                else
                {
                  v64 = a1;
                  v62 = v516;
                }

                v373 = v61[1];
                v546 = *v61;
                v374 = v61[2];
                v375 = v61[3];
                v555 = v373;
                v553 = v373 + v375;
                v554 = v546 + v374;
                *&v569 = 0;
                *(&v569 + 1) = 0 / v507;
                *&v570 = v507;
                std::valarray<double>::valarray(v564, &v569);
                *&v569 = 8;
                *(&v569 + 1) = 0 / v507;
                *&v570 = v507;
                std::valarray<double>::valarray(&v562, &v569);
                v565[0] = 16;
                v565[1] = (0 / v507);
                *&v566.f64[0] = v507;
                std::valarray<double>::valarray(&v558, v565);
                *(&v569 + 1) = v564;
                *&v570 = &v558;
                std::__val_expr<std::_BinaryOp<std::plus<double>,std::valarray<double>,std::valarray<double>>>::operator std::valarray<double>(&v560, &v569);
                if (v558)
                {
                  if (v559 != v558)
                  {
                    v559 += (v558 - v559 + 7) & 0xFFFFFFFFFFFFFFF8;
                  }

                  operator delete(v558);
                }

                v565[0] = 24;
                v565[1] = (0 / v507);
                *&v566.f64[0] = v507;
                std::valarray<double>::valarray(&v556, v565);
                *(&v569 + 1) = &v562;
                *&v570 = &v556;
                std::__val_expr<std::_BinaryOp<std::plus<double>,std::valarray<double>,std::valarray<double>>>::operator std::valarray<double>(&v558, &v569);
                if (v556)
                {
                  if (v557 != v556)
                  {
                    v557 += (v556 - v557 + 7) & 0xFFFFFFFFFFFFFFF8;
                  }

                  operator delete(v556);
                }

                nms::max<double>(v565, &v546, v564);
                nms::max<double>(&v556, &v555, &v562);
                nms::min<double>(&v550, &v554, &v560);
                nms::min<double>(&v548, &v553, &v558);
                std::valarray<double>::resize(v531, v72);
                std::mask_array<unsigned char>::mask_array[abi:ne200100](&v569, &v536, v531[0]);
                v376 = *(&v569 + 1);
                v377 = v570;
                if (v570 == *(&v569 + 1))
                {
                  if (v570)
                  {
                    goto LABEL_595;
                  }
                }

                else
                {
                  v378 = (v570 - *(&v569 + 1)) >> 3;
                  v379 = v550;
                  v380 = v565[0];
                  v381 = v548;
                  v382 = v556;
                  v383 = v569;
                  if (v378 <= 1)
                  {
                    v378 = 1;
                  }

                  v384 = *(&v569 + 1);
                  do
                  {
                    v385 = *v379++;
                    v386 = v385;
                    v387 = *v380++;
                    v388 = v386 - v387;
                    v389 = *v381++;
                    v390 = v389;
                    v391 = *v382++;
                    v392 = v388 * (v390 - v391);
                    v393 = *v384++;
                    *(v383 + 8 * v393) = v392;
                    --v378;
                  }

                  while (v378);
                  *&v570 = v377 + ((v376 - v377 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_595:
                  operator delete(v376);
                }

                if (v548)
                {
                  if (v549 != v548)
                  {
                    v549 += (v548 - v549 + 7) & 0xFFFFFFFFFFFFFFF8;
                  }

                  operator delete(v548);
                }

                if (v550)
                {
                  if (v551 != v550)
                  {
                    v551 += (v550 - v551 + 7) & 0xFFFFFFFFFFFFFFF8;
                  }

                  operator delete(v550);
                }

                if (v556)
                {
                  if (v557 != v556)
                  {
                    v557 += (v556 - v557 + 7) & 0xFFFFFFFFFFFFFFF8;
                  }

                  operator delete(v556);
                }

                if (v565[0])
                {
                  if (v565[1] != v565[0])
                  {
                    v565[1] = v565[1] + ((v565[0] - v565[1] + 7) & 0xFFFFFFFFFFFFFFF8);
                  }

                  operator delete(v565[0]);
                }

                if (v558)
                {
                  if (v559 != v558)
                  {
                    v559 += (v558 - v559 + 7) & 0xFFFFFFFFFFFFFFF8;
                  }

                  operator delete(v558);
                }

                if (v560)
                {
                  if (v561 != v560)
                  {
                    v561 += (v560 - v561 + 7) & 0xFFFFFFFFFFFFFFF8;
                  }

                  operator delete(v560);
                }

                if (v562)
                {
                  if (v563 != v562)
                  {
                    v563 += (v562 - v563 + 7) & 0xFFFFFFFFFFFFFFF8;
                  }

                  operator delete(v562);
                }

                if (v564[0])
                {
                  if (v564[1] != v564[0])
                  {
                    v564[1] = v564[1] + ((v564[0] - v564[1] + 7) & 0xFFFFFFFFFFFFFFF8);
                  }

                  operator delete(v564[0]);
                }

                goto LABEL_120;
              }
            }

            if (*&v536 != 0.0)
            {
              operator delete(v536);
              *&v536 = 0.0;
              v537 = 0.0;
            }

LABEL_120:
            if (v496)
            {
              operator delete(v496);
            }

            v80 = v531[0];
            v496 = v531[0];
            std::valarray<double>::resize(&v534, v497);
            std::mask_array<unsigned char>::mask_array[abi:ne200100](&v569, &v536, v80);
            std::valarray<double>::valarray(&v550, &v569);
            if (*(&v569 + 1))
            {
              if (v570 != *(&v569 + 1))
              {
                *&v570 = v570 + ((*(&v569 + 1) - v570 + 7) & 0xFFFFFFFFFFFFFFF8);
              }

              operator delete(*(&v569 + 1));
            }

            std::mask_array<unsigned char>::mask_array[abi:ne200100](&v569, &v536, *(*(v538[1] + (((v540 + v518) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v540 + v518)));
            std::valarray<double>::valarray(&v548, &v569);
            if (*(&v569 + 1))
            {
              if (v570 != *(&v569 + 1))
              {
                *&v570 = v570 + ((*(&v569 + 1) - v570 + 7) & 0xFFFFFFFFFFFFFFF8);
              }

              operator delete(*(&v569 + 1));
            }

            v81 = *(*(v538[1] + (((v540 + v62) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v540 + v62));
            std::mask_array<unsigned char>::mask_array[abi:ne200100](&v569, &v536, v534);
            v82 = *(&v569 + 1);
            v83 = v570;
            if (v570 == *(&v569 + 1))
            {
              if (!v570)
              {
                goto LABEL_138;
              }
            }

            else
            {
              v84 = (v570 - *(&v569 + 1)) >> 3;
              v85 = v550;
              v86 = v548;
              v87 = v569;
              if (v84 <= 1)
              {
                v84 = 1;
              }

              v88 = *(&v569 + 1);
              do
              {
                v89 = *v86++;
                v90 = *(v81 + 8 * v525) + v89;
                v91 = *v85++;
                v92 = v91 / (v90 - v91);
                v93 = *v88++;
                *(v87 + 8 * v93) = v92;
                --v84;
              }

              while (v84);
              *&v570 = v83 + ((v82 - v83 + 7) & 0xFFFFFFFFFFFFFFF8);
            }

            operator delete(v82);
LABEL_138:
            std::valarray<double>::resize(&v532, v497);
            v66 = v525;
            nms::min<double>(v565, (*(*(v538[1] + (((v540 + v62) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v540 + v62)) + 8 * v525), &v548);
            std::mask_array<unsigned char>::mask_array[abi:ne200100](&v569, &v536, v532);
            v94 = *(&v569 + 1);
            v95 = v570;
            if (v570 == *(&v569 + 1))
            {
              if (!v570)
              {
                goto LABEL_146;
              }
            }

            else
            {
              v96 = (v570 - *(&v569 + 1)) >> 3;
              v97 = v550;
              v98 = v565[0];
              v99 = v569;
              if (v96 <= 1)
              {
                v96 = 1;
              }

              v100 = *(&v569 + 1);
              do
              {
                v101 = *v97++;
                v102 = v101;
                v103 = *v98++;
                v104 = v102 / v103;
                v105 = *v100++;
                *(v99 + 8 * v105) = v104;
                --v96;
              }

              while (v96);
              *&v570 = v95 + ((v94 - v95 + 7) & 0xFFFFFFFFFFFFFFF8);
            }

            operator delete(v94);
LABEL_146:
            if (v565[0])
            {
              if (v565[1] != v565[0])
              {
                v565[1] = v565[1] + ((v565[0] - v565[1] + 7) & 0xFFFFFFFFFFFFFFF8);
              }

              operator delete(v565[0]);
            }

            v106 = v536;
            v107 = v537;
            v108 = v500;
            if (v536 == *&v537)
            {
              v108 = 0;
            }

            if (v108)
            {
              v109 = *(*(a2[1] + (((a2[4] + v518) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a2 + 32) + v518));
              v110 = v536;
              do
              {
                v111 = *v109++;
                *v110++ &= v111;
              }

              while (v110 != *&v107);
            }

            v570 = 0u;
            v571 = 0u;
            v569 = 0u;
            v564[1] = 0;
            v564[0] = 0;
            if (*&v107 != v106)
            {
              operator new();
            }

            nms::BOOLeanMaskToIndices<unsigned short>(v565, v564);
            v112 = v567;
            v113 = v565[1];
            v114 = v566.f64[0];
            if (v62 == v518)
            {
              v115 = v565[1] + 8 * (v567 >> 11);
              if (*&v566.f64[0] == v565[1])
              {
                v116 = 0;
              }

              else
              {
                v116 = *v115 + 2 * (v567 & 0x7FF);
              }

LABEL_161:
              v117 = v116;
              while (1)
              {
                v118 = *&v114 == v113 ? 0 : v113[(v568 + v567) >> 11] + 2 * ((v568 + v567) & 0x7FF);
                if (v117 == v118)
                {
                  break;
                }

                if (v525 >= *v117)
                {
                  v115 = std::deque<unsigned short>::erase(v565, v115, v116);
                  v116 = v120;
                  v113 = v565[1];
                  v114 = v566.f64[0];
                  goto LABEL_161;
                }

                ++v117;
                v116 += 2;
                if (*v115 + 4096 == v116)
                {
                  v119 = *(v115 + 1);
                  v115 += 8;
                  v116 = v119;
                  goto LABEL_161;
                }
              }

              v112 = v567;
            }

            v121 = &v113[v112 >> 11];
            if (*&v114 == v113)
            {
              v122 = 0;
              v124 = 0;
              v123 = &v113[(v568 + v112) >> 11];
            }

            else
            {
              v122 = (*v121 + 2 * (v112 & 0x7FF));
              v123 = &v113[(v568 + v112) >> 11];
              v124 = &(*v123)[(v568 + v112) & 0x7FF];
            }

            v562 = &v569;
            std::__for_each_segment[abi:ne200100]<std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,std::back_insert_iterator<std::deque<unsigned short>>>>(v121, v122, v123, v124, &v562);
            v125 = v565[1];
            v568 = 0;
            v126 = (*&v566.f64[0] - v565[1]) >> 3;
            if (v126 >= 3)
            {
              do
              {
                operator delete(*v125);
                v125 = (v565[1] + 8);
                v565[1] = v125;
                v126 = (*&v566.f64[0] - v125) >> 3;
              }

              while (v126 > 2);
            }

            if (v126 == 1)
            {
              v127 = 1024;
            }

            else
            {
              if (v126 != 2)
              {
                goto LABEL_181;
              }

              v127 = 2048;
            }

            v567 = v127;
LABEL_181:
            std::deque<unsigned short>::~deque[abi:ne200100](v565);
            v564[1] = 0;
            v564[0] = 0;
            if (*&v107 != v106)
            {
              operator new();
            }

            nms::BOOLeanMaskToIndices<unsigned short>(v565, v564);
            v128 = v567;
            v129 = v565[1];
            v130 = v566.f64[0];
            if (v62 == v518)
            {
              v131 = v565[1] + 8 * (v567 >> 11);
              if (*&v566.f64[0] == v565[1])
              {
                v132 = 0;
              }

              else
              {
                v132 = *v131 + 2 * (v567 & 0x7FF);
              }

LABEL_187:
              v133 = v132;
              while (1)
              {
                v134 = *&v130 == v129 ? 0 : v129[(v568 + v567) >> 11] + 2 * ((v568 + v567) & 0x7FF);
                if (v133 == v134)
                {
                  break;
                }

                if (v525 >= *v133)
                {
                  v131 = std::deque<unsigned short>::erase(v565, v131, v132);
                  v132 = v136;
                  v129 = v565[1];
                  v130 = v566.f64[0];
                  goto LABEL_187;
                }

                ++v133;
                v132 += 2;
                if (*v131 + 4096 == v132)
                {
                  v135 = *(v131 + 1);
                  v131 += 8;
                  v132 = v135;
                  goto LABEL_187;
                }
              }

              v128 = v567;
            }

            v137 = &v129[v128 >> 11];
            if (*&v130 == v129)
            {
              v138 = 0;
              v140 = 0;
              v139 = &v129[(v568 + v128) >> 11];
            }

            else
            {
              v138 = (*v137 + 2 * (v128 & 0x7FF));
              v139 = &v129[(v568 + v128) >> 11];
              v140 = &(*v139)[(v568 + v128) & 0x7FF];
            }

            v562 = &v569;
            std::__for_each_segment[abi:ne200100]<std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,std::back_insert_iterator<std::deque<unsigned short>>>>(v137, v138, v139, v140, &v562);
            v141 = v565[1];
            v568 = 0;
            v142 = (*&v566.f64[0] - v565[1]) >> 3;
            if (v142 >= 3)
            {
              do
              {
                operator delete(*v141);
                v141 = (v565[1] + 8);
                v565[1] = v141;
                v142 = (*&v566.f64[0] - v141) >> 3;
              }

              while (v142 > 2);
            }

            if (v142 == 1)
            {
              v143 = 1024;
            }

            else
            {
              if (v142 != 2)
              {
                goto LABEL_207;
              }

              v143 = 2048;
            }

            v567 = v143;
LABEL_207:
            std::deque<unsigned short>::~deque[abi:ne200100](v565);
            v564[1] = 0;
            v564[0] = 0;
            if (*&v107 != v106)
            {
              operator new();
            }

            nms::BOOLeanMaskToIndices<unsigned short>(v565, v564);
            v144 = v567;
            v145 = v565[1];
            v146 = v566.f64[0];
            if (v62 == v518)
            {
              v147 = v565[1] + 8 * (v567 >> 11);
              if (*&v566.f64[0] == v565[1])
              {
                v148 = 0;
              }

              else
              {
                v148 = *v147 + 2 * (v567 & 0x7FF);
              }

LABEL_213:
              v149 = v148;
              while (1)
              {
                v150 = *&v146 == v145 ? 0 : v145[(v568 + v567) >> 11] + 2 * ((v568 + v567) & 0x7FF);
                if (v149 == v150)
                {
                  break;
                }

                if (v525 >= *v149)
                {
                  v147 = std::deque<unsigned short>::erase(v565, v147, v148);
                  v148 = v152;
                  v145 = v565[1];
                  v146 = v566.f64[0];
                  goto LABEL_213;
                }

                ++v149;
                v148 += 2;
                if (*v147 + 4096 == v148)
                {
                  v151 = *(v147 + 1);
                  v147 += 8;
                  v148 = v151;
                  goto LABEL_213;
                }
              }

              v144 = v567;
            }

            v153 = &v145[v144 >> 11];
            if (*&v146 == v145)
            {
              v154 = 0;
              v156 = 0;
              v155 = &v145[(v568 + v144) >> 11];
            }

            else
            {
              v154 = (*v153 + 2 * (v144 & 0x7FF));
              v155 = &v145[(v568 + v144) >> 11];
              v156 = &(*v155)[(v568 + v144) & 0x7FF];
            }

            v562 = &v569;
            std::__for_each_segment[abi:ne200100]<std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,std::back_insert_iterator<std::deque<unsigned short>>>>(v153, v154, v155, v156, &v562);
            v157 = v565[1];
            v568 = 0;
            v158 = (*&v566.f64[0] - v565[1]) >> 3;
            if (v158 >= 3)
            {
              do
              {
                operator delete(*v157);
                v157 = (v565[1] + 8);
                v565[1] = v157;
                v158 = (*&v566.f64[0] - v157) >> 3;
              }

              while (v158 > 2);
            }

            if (v158 == 1)
            {
              v159 = 1024;
            }

            else
            {
              if (v158 != 2)
              {
                goto LABEL_233;
              }

              v159 = 2048;
            }

            v567 = v159;
LABEL_233:
            std::deque<unsigned short>::~deque[abi:ne200100](v565);
            if (!*(&v571 + 1))
            {
              goto LABEL_521;
            }

            v546 = 0.0;
            v547 = 0.0;
            if (v570 == *(&v569 + 1))
            {
              goto LABEL_521;
            }

            v160 = (*(&v569 + 1) + 8 * (v571 >> 11));
            v510 = *(*(&v569 + 1) + (((v571 + *(&v571 + 1)) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v571 + *(&v571 + 1)) & 0x7FF);
            if (*v160 + 2 * (v571 & 0x7FF) == v510)
            {
              goto LABEL_521;
            }

            v161 = (*v160 + 2 * (v571 & 0x7FF));
            v162 = 0;
            v528 = 0;
            do
            {
              v521 = v161;
              v163 = *v161;
              LOWORD(v531[0]) = *v161;
              if (v162)
              {
                operator delete(v162);
                v528 = 0;
                v163 = LOWORD(v531[0]);
              }

              std::valarray<double>::resize(&v546, 5uLL);
              v164 = *(a1 + 968);
              v165 = v164[5];
              if (v165 <= v509 || v165 <= v523)
              {
                std::__throw_out_of_range[abi:ne200100]("deque");
              }

              v166 = v164[4];
              v167 = v164[1];
              v168 = (*(v167 + 8 * ((v166 + v509) / 0x14)) + 200 * ((v166 + v509) % 0x14));
              v170 = v168 + 23;
              v169 = v168[23];
              v171 = v168 + 23;
              v172 = v169;
              if (v169)
              {
                do
                {
                  if (v172[4])
                  {
                    v171 = v172;
                  }

                  v172 = v172[v172[4] == 0];
                }

                while (v172);
                if (v171 == v170 || v171[4] > 1)
                {
                  v173 = 9;
                }

                else
                {
                  v173 = v171[5];
                }

                do
                {
                  v174 = v169;
                  v169 = *v169;
                }

                while (v169);
                if (v174 == v170 || v174[4])
                {
                  v169 = 0;
                }

                else
                {
                  v175 = v174[5];
                  v176 = 14;
                  if (v175 != 8)
                  {
                    v176 = 0;
                  }

                  if (v175 == 7)
                  {
                    v176 = 3;
                  }

                  if (v175 == 6)
                  {
                    v176 = 9;
                  }

                  v177 = 5;
                  if (v175 != 5)
                  {
                    v177 = 0;
                  }

                  if (v175 == 4)
                  {
                    v177 = 2;
                  }

                  if (v175 <= 5)
                  {
                    v176 = v177;
                  }

                  if (v175 == 3)
                  {
                    v178 = 2;
                  }

                  else
                  {
                    v178 = 0;
                  }

                  if (v175 == 2)
                  {
                    v178 = 8;
                  }

                  if (v175 == 1)
                  {
                    v179 = 4;
                  }

                  else
                  {
                    v179 = 0;
                  }

                  if (!v175)
                  {
                    v179 = 4;
                  }

                  if (v175 <= 1)
                  {
                    v178 = v179;
                  }

                  if (v175 <= 3)
                  {
                    v169 = v178;
                  }

                  else
                  {
                    v169 = v176;
                  }
                }
              }

              else
              {
                v173 = 9;
              }

              v180 = v166 + v523;
              v181 = (v166 + v523) / 0x14;
              v182 = *(v167 + 8 * v181);
              v565[0] = (*(v168[11] + ((v168[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v168[14]);
              v565[1] = (v169 * v525);
              *&v566.f64[0] = v169;
              *&v566.f64[1] = 1;
              std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(v564, v565);
              v519 = v160;
              v183 = (v182 + 200 * (v180 - 20 * v181));
              v185 = v183 + 23;
              v184 = v183[23];
              if (v184)
              {
                do
                {
                  v186 = v184;
                  v184 = *v184;
                }

                while (v184);
                v187 = a1;
                if (v186 == v185 || v186[4] || (v188 = v186[5], v188 > 8))
                {
                  v189 = 0.0;
                }

                else
                {
                  v189 = dbl_1B42AFA98[v188];
                }
              }

              else
              {
                v189 = 0.0;
                v187 = a1;
              }

              v565[0] = (*(v183[11] + ((v183[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v183[14]);
              v565[1] = (*&v189 * v163);
              v566.f64[0] = v189;
              *&v566.f64[1] = 1;
              std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v562, v565);
              v190 = v528;
              if (v528 == 32)
              {
                v162 = 0;
              }

              else
              {
                v191 = vaddq_f64(*v564[0], *(v564[0] + 1));
                v192 = vaddq_f64(*v562, *(v562 + 1));
                *v565 = vbslq_s8(vcgtq_f64(*v564[0], *v562), *v562, *v564[0]);
                v566 = vsubq_f64(vbslq_s8(vcgtq_f64(v192, v191), v192, v191), *v565);
                std::valarray<double>::valarray(&v560, v565, 4uLL);
                v162 = v560;
                v190 = v561;
              }

              v528 = v190;
              v193 = *v170;
              if (!*v170)
              {
                goto LABEL_300;
              }

              v194 = v168 + 23;
              v195 = *v170;
              do
              {
                v196 = v195[4];
                v197 = v196 >= 4;
                v198 = v196 < 4;
                if (v197)
                {
                  v194 = v195;
                }

                v195 = v195[v198];
              }

              while (v195);
              if (v194 == v170 || v194[4] > 4 || ((v252 = v194[5], v327 = v252 > 8, v253 = (1 << v252) & 0x144, !v327) ? (v254 = v253 == 0) : (v254 = 1), v254))
              {
LABEL_300:
                v199 = 0;
                LODWORD(v200) = 1;
LABEL_301:
                v201 = 6;
                goto LABEL_302;
              }

              v200 = *v185;
              if (!*v185)
              {
                v199 = 0;
                goto LABEL_301;
              }

              v255 = v183 + 23;
              do
              {
                v256 = v200[4];
                v197 = v256 >= 4;
                v257 = v256 < 4;
                if (v197)
                {
                  v255 = v200;
                }

                v200 = v200[v257];
              }

              while (v200);
              if (v255 == v185 || v255[4] > 4 || ((v258 = v255[5], v327 = v258 > 8, v259 = (1 << v258) & 0x144, !v327) ? (v260 = v259 == 0) : (v260 = 1), v260 || v168[9] == v168[8]))
              {
                v199 = 0;
                LODWORD(v200) = 0;
                goto LABEL_301;
              }

              LODWORD(v200) = 0;
              v262 = v183[8];
              v261 = v183[9];
              v254 = v261 == v262;
              v199 = v261 != v262;
              v201 = 5;
              if (v254)
              {
                v201 = 6;
              }

LABEL_302:
              if (v173 == 5 || !v173)
              {
                if (v200)
                {
                  if (v193)
                  {
                    v202 = v168 + 23;
                    do
                    {
                      if (v193[4])
                      {
                        v202 = v193;
                      }

                      v193 = v193[v193[4] == 0];
                    }

                    while (v193);
                    if (v202 == v170 || v202[4] > 1 || (v203 = v202[5], v203 > 8))
                    {
                      v193 = 0;
                    }

                    else
                    {
                      v193 = *&dbl_1B42AFA98[v203];
                    }
                  }

                  v263 = *(v168[17] + 8 * (v168[20] / 0x55)) + 48 * (v168[20] % 0x55);
                  v264 = (*(*(v263 + 8) + (((*(v263 + 32) + v525) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v263 + 32) + v525) & 0x3FFLL));
                  v265 = *(v183[17] + 8 * (v183[20] / 0x55)) + 48 * (v183[20] % 0x55);
                  v266 = *(v265 + 32) + v163;
                  v267 = *(*(v265 + 8) + ((v266 >> 7) & 0x1FFFFFFFFFFFFF8));
                  v268 = *v264;
                  v269 = v264[1] - v268 + 1;
                  v565[0] = (*(v168[11] + (((v168[14] + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v168 + 112) + 1));
                  v565[1] = (v193 * v268);
                  *&v566.f64[0] = v193 * v269;
                  *&v566.f64[1] = 1;
                  std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v560, v565);
                  v270 = *v185;
                  if (!*v185)
                  {
                    goto LABEL_406;
                  }

                  v271 = v183 + 23;
                  do
                  {
                    if (v270[4])
                    {
                      v271 = v270;
                    }

                    v270 = v270[v270[4] == 0];
                  }

                  while (v270);
                  if (v271 == v185 || v271[4] > 1 || (v272 = v271[5], v272 > 8))
                  {
LABEL_406:
                    v273 = 0.0;
                  }

                  else
                  {
                    v273 = dbl_1B42AFA98[v272];
                  }

                  v274 = (v267 + 4 * (v266 & 0x3FF));
                  v275 = *v274;
                  v276 = v274[1] - v275 + 1;
                  v565[0] = (*(v183[11] + (((v183[14] + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v183 + 112) + 1));
                  v565[1] = (*&v273 * v275);
                  *&v566.f64[0] = *&v273 * v276;
                  *&v566.f64[1] = 1;
                  std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v558, v565);
                  v277 = *(v187 + 1072);
                  v565[1] = 0;
                  v565[0] = 0;
                  if (v277 * v277)
                  {
                    if (!((v277 * v277) >> 61))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  nms::rasterizeRects<double>(&v560, v162, v565, v277, 1, v173);
                  nms::rasterizeRects<double>(&v558, v162, v565, v277, 2, v173);
                  v278 = *&v546;
                  **&v546 = 0 / 0;
                  v278[1] = 0 / 0;
                  v278[2] = 0 / 0;
                  v278[3] = 0 / 0;
                  if (v558)
                  {
                    if (v559 != v558)
                    {
                      v559 += (v558 - v559 + 7) & 0xFFFFFFFFFFFFFFF8;
                    }

                    operator delete(v558);
                  }

                  if (v560)
                  {
                    if (v561 != v560)
                    {
                      v561 += (v560 - v561 + 7) & 0xFFFFFFFFFFFFFFF8;
                    }

                    operator delete(v560);
                  }
                }

                else if (v199)
                {
                  v506 = v162;
                  v204 = v168[20];
                  v205 = v168[17];
                  v206 = *(v205 + 8 * (v204 / 0x55)) + 48 * (v204 % 0x55);
                  v207 = *(v206 + 32) + v525;
                  v208 = *(*(v206 + 8) + ((v207 >> 7) & 0x1FFFFFFFFFFFFF8));
                  v209 = v183[20];
                  v210 = v183[17];
                  v211 = *(v210 + 8 * (v209 / 0x55)) + 48 * (v209 % 0x55);
                  v512 = *(v211 + 32) + v163;
                  v212 = v204 + v201;
                  v213 = (v204 + v201) / 0x55;
                  v214 = *(v205 + 8 * v213);
                  v504 = v209 + v201;
                  v505 = *(*(v211 + 8) + ((v512 >> 7) & 0x1FFFFFFFFFFFFF8));
                  v503 = (v209 + v201) / 0x55;
                  v502 = *(v210 + 8 * v503);
                  if (v201 == 5)
                  {
                    v215 = 4;
                  }

                  else
                  {
                    v215 = 5;
                  }

                  v216 = v168[7] * v168[6];
                  v561 = 0;
                  v560 = 0;
                  std::valarray<unsigned char>::resize(&v560, v216);
                  v217 = (v208 + 4 * (v207 & 0x3FF));
                  v218 = v214 + 48 * (v212 - 85 * v213);
                  v219 = *v217;
                  v514 = v217;
                  v220 = v217[1];
                  if (v219 <= v220)
                  {
                    do
                    {
                      v221 = (*(*(v218 + 8) + (((*(v218 + 32) + v219) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v218 + 32) + v219) & 0x3FF));
                      v222 = *v221;
                      if (v222 <= v221[1])
                      {
                        do
                        {
                          v223 = *v170;
                          if (!*v170)
                          {
                            goto LABEL_330;
                          }

                          v224 = v168 + 23;
                          do
                          {
                            v225 = v223[4];
                            v197 = v225 >= v215;
                            v226 = v225 < v215;
                            if (v197)
                            {
                              v224 = v223;
                            }

                            v223 = v223[v226];
                          }

                          while (v223);
                          if (v224 == v170 || v224[4] > v215 || (v227 = v224[5], v227 > 8))
                          {
LABEL_330:
                            v228 = 0.0;
                          }

                          else
                          {
                            v228 = dbl_1B42AFA98[v227];
                          }

                          v565[0] = (*(v168[11] + (((v168[14] + v215) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v168 + 112) + v215));
                          v565[1] = (*&v228 * v222);
                          v566.f64[0] = v228;
                          *&v566.f64[1] = 1;
                          std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v558, v565);
                          nms::rasterizeQuadByQuantizedScoreMap<double>(&v558, &v560, (v168 + 8), v168[6], v168[7], 1u, 0);
                          if (v558)
                          {
                            if (v559 != v558)
                            {
                              v559 += (v558 - v559 + 7) & 0xFFFFFFFFFFFFFFF8;
                            }

                            operator delete(v558);
                          }

                          v197 = v222++ >= v221[1];
                        }

                        while (!v197);
                        LOWORD(v220) = v514[1];
                      }

                      v197 = v219++ >= v220;
                    }

                    while (!v197);
                  }

                  v229 = (v505 + 4 * (v512 & 0x3FF));
                  v230 = v502 + 48 * (v504 - 85 * v503);
                  v231 = *v229;
                  v513 = v229;
                  v232 = v229[1];
                  if (v231 <= v232)
                  {
                    do
                    {
                      v233 = (*(*(v230 + 8) + (((*(v230 + 32) + v231) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v230 + 32) + v231) & 0x3FF));
                      v234 = *v233;
                      if (v234 <= v233[1])
                      {
                        do
                        {
                          v235 = *v185;
                          if (!*v185)
                          {
                            goto LABEL_352;
                          }

                          v236 = v183 + 23;
                          do
                          {
                            v237 = v235[4];
                            v197 = v237 >= v215;
                            v238 = v237 < v215;
                            if (v197)
                            {
                              v236 = v235;
                            }

                            v235 = v235[v238];
                          }

                          while (v235);
                          if (v236 == v185 || v236[4] > v215 || (v239 = v236[5], v239 > 8))
                          {
LABEL_352:
                            v240 = 0.0;
                          }

                          else
                          {
                            v240 = dbl_1B42AFA98[v239];
                          }

                          v565[0] = (*(v183[11] + (((v183[14] + v215) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v183 + 112) + v215));
                          v565[1] = (*&v240 * v234);
                          v566.f64[0] = v240;
                          *&v566.f64[1] = 1;
                          std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v558, v565);
                          nms::rasterizeQuadByQuantizedScoreMap<double>(&v558, &v560, (v183 + 8), v183[6], v183[7], 2u, 0);
                          if (v558)
                          {
                            if (v559 != v558)
                            {
                              v559 += (v558 - v559 + 7) & 0xFFFFFFFFFFFFFFF8;
                            }

                            operator delete(v558);
                          }

                          v197 = v234++ >= v233[1];
                        }

                        while (!v197);
                        LOWORD(v232) = v513[1];
                      }

                      v197 = v231++ >= v232;
                    }

                    while (!v197);
                  }

                  v241 = v560;
                  v242 = v561;
                  if (v560 == v561)
                  {
                    v246 = 0;
                    v243 = 0;
                    v249 = 0;
                    v187 = a1;
                    v162 = v506;
                  }

                  else
                  {
                    v243 = 0;
                    v244 = v560;
                    v187 = a1;
                    v162 = v506;
                    do
                    {
                      v245 = *v244++;
                      if (v245 == 1)
                      {
                        ++v243;
                      }
                    }

                    while (v244 != v561);
                    v246 = 0;
                    v247 = v560;
                    do
                    {
                      v248 = *v247++;
                      if (v248 == 2)
                      {
                        ++v246;
                      }
                    }

                    while (v247 != v561);
                    v249 = 0;
                    v250 = v560;
                    do
                    {
                      v251 = *v250++;
                      if (v251 == 3)
                      {
                        ++v249;
                      }
                    }

                    while (v250 != v561);
                  }

                  v279 = v249;
                  v280 = v249 + v246;
                  v281 = v249 / (v280 + v243);
                  v282 = *&v546;
                  v283 = v249 + v243;
                  if (v280 >= v283)
                  {
                    v284 = v283;
                  }

                  else
                  {
                    v284 = v280;
                  }

                  **&v546 = v281;
                  v282[1] = v279 / v284;
                  v285 = v242 - v241;
                  v282[2] = v283 / v285;
                  v282[3] = v280 / v285;
                  if (*(v187 + 1056) > 0.0)
                  {
                    v286 = *v170;
                    if (!*v170)
                    {
                      goto LABEL_434;
                    }

                    v287 = v168 + 23;
                    do
                    {
                      v288 = v286[4];
                      v197 = v288 >= v215;
                      v289 = v288 < v215;
                      if (v197)
                      {
                        v287 = v286;
                      }

                      v286 = v286[v289];
                    }

                    while (v286);
                    if (v287 == v170 || v287[4] > v215 || (v290 = v287[5], v290 > 8))
                    {
LABEL_434:
                      v291 = v282;
                      v292 = 0.0;
                    }

                    else
                    {
                      v291 = v282;
                      v292 = dbl_1B42AFA98[v290];
                    }

                    v293 = *(v218 + 32) + *v514;
                    v294 = (*&v292 * *(*(*(v218 + 8) + ((v293 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v293 & 0x3FF)));
                    v565[0] = (*(v168[11] + (((v168[14] + v215) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v168 + 112) + v215));
                    v565[1] = v294;
                    v566.f64[0] = v292;
                    *&v566.f64[1] = 1;
                    std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v558, v565);
                    v295 = *v185;
                    if (!*v185)
                    {
                      goto LABEL_445;
                    }

                    v296 = v183 + 23;
                    do
                    {
                      v297 = v295[4];
                      v197 = v297 >= v215;
                      v298 = v297 < v215;
                      if (v197)
                      {
                        v296 = v295;
                      }

                      v295 = v295[v298];
                    }

                    while (v295);
                    if (v296 == v185 || v296[4] > v215 || (v299 = v296[5], v299 > 8))
                    {
LABEL_445:
                      v300 = 0.0;
                    }

                    else
                    {
                      v300 = dbl_1B42AFA98[v299];
                    }

                    v301 = *(v230 + 32) + *v513;
                    v302 = (*&v300 * *(*(*(v230 + 8) + ((v301 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v301 & 0x3FF)));
                    v565[0] = (*(v183[11] + (((v183[14] + v215) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v183 + 112) + v215));
                    v565[1] = v302;
                    v566.f64[0] = v300;
                    *&v566.f64[1] = 1;
                    std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v556, v565);
                    v303 = vsubq_f64(*v558, *(v558 + 3));
                    v304 = v556;
                    v305 = v557;
                    v306 = vsubq_f64(*v556, *(v556 + 3));
                    v307 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v303, v303), vmulq_f64(v306, v306)));
                    if (v307.f64[1] >= v307.f64[0])
                    {
                      v308 = v307.f64[0];
                    }

                    else
                    {
                      v308 = v307.f64[1];
                    }

                    if (v307.f64[0] < v307.f64[1])
                    {
                      v307.f64[0] = v307.f64[1];
                    }

                    v291[4] = v308 / v307.f64[0];
                    if (v305 != v304)
                    {
                      v557 = &v305[(v304 - v305 + 7) & 0xFFFFFFFFFFFFFFF8];
                    }

                    operator delete(v304);
                    if (v558)
                    {
                      if (v559 != v558)
                      {
                        v559 += (v558 - v559 + 7) & 0xFFFFFFFFFFFFFFF8;
                      }

                      operator delete(v558);
                    }
                  }

                  if (v241)
                  {
                    operator delete(v241);
                  }

                  v61 = v498;
                }
              }

              v160 = v519;
              if (v562)
              {
                if (v563 != v562)
                {
                  v563 += (v562 - v563 + 7) & 0xFFFFFFFFFFFFFFF8;
                }

                operator delete(v562);
              }

              if (v564[0])
              {
                if (v564[1] != v564[0])
                {
                  v564[1] = v564[1] + ((v564[0] - v564[1] + 7) & 0xFFFFFFFFFFFFFFF8);
                }

                operator delete(v564[0]);
              }

              v309 = *&v546;
              v310 = **&v546;
              if (**&v546 <= v17 || *(*&v546 + 8) <= v18)
              {
                if (v310 <= v19 && *(*&v546 + 8) > v20 && (v319 = *(*&v546 + 24), *(*&v546 + 16) >= v319))
                {
                  if (v310 < *(v187 + 1080) && v319 < *(v187 + 1088))
                  {
                    v338 = *(v187 + 968);
                    if (v338[5] <= v516)
                    {
LABEL_754:
                      std::__throw_out_of_range[abi:ne200100]("deque");
                    }

                    v339 = (*(v338[1] + 8 * ((v338[4] + v516) / 0x14)) + 200 * ((v338[4] + v516) % 0x14));
                    v340 = v339[23];
                    if (!v340)
                    {
                      goto LABEL_505;
                    }

                    do
                    {
                      v341 = v340;
                      v340 = *v340;
                    }

                    while (v340);
                    if (v341 == v339 + 23 || v341[4] || (v342 = v341[5], v342 > 8))
                    {
LABEL_505:
                      v343 = 0.0;
                    }

                    else
                    {
                      v343 = dbl_1B42AFA98[v342];
                    }

                    v344 = (*(v339[11] + ((v339[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v339[14]);
                    v345 = *&v343 * v525 + 4;
                    if (v345 < (v344[1] - *v344) >> 3)
                    {
                      *(*v344 + 8 * v345) = 0;
                    }
                  }

                  v346 = *(v187 + 1056);
                  if (v346 <= 0.0 || v309[4] <= v346)
                  {
                    v347 = *(*(*(v187 + 688) + (((*(v187 + 712) + v516) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v187 + 712) + v516));
                    ++*(v347 + v525);
                    v348 = *(*(v187 + 736) + 8 * ((*(v187 + 760) + v516) / 0x55)) + 48 * ((*(v187 + 760) + v516) % 0x55);
                    v349 = *(*(v348 + 8) + 8 * ((*(v348 + 32) + v518) / 0x55uLL)) + 48 * ((*(v348 + 32) + v518) % 0x55uLL);
                    std::deque<unsigned short>::push_back((*(*(v349 + 8) + 8 * ((*(v349 + 32) + v525) / 0x55)) + 48 * ((*(v349 + 32) + v525) % 0x55)), v531);
                    v350 = LOWORD(v531[0]);
                    v351 = *(*(*(a1 + 784) + (((*(a1 + 808) + v518) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 808) + v518));
                    ++*(v351 + LOWORD(v531[0]));
                    v352 = *(*(a1 + 832) + 8 * ((*(a1 + 856) + v518) / 0x55uLL)) + 48 * ((*(a1 + 856) + v518) % 0x55uLL);
                    v353 = *(*(v352 + 8) + 8 * ((*(v352 + 32) + v516) / 0x55)) + 48 * ((*(v352 + 32) + v516) % 0x55);
                    v354 = (*(*(v353 + 8) + 8 * ((*(v353 + 32) + v350) / 0x55uLL)) + 48 * ((*(v353 + 32) + v350) % 0x55uLL));
                    LOWORD(v565[0]) = v525;
                    std::deque<unsigned short>::push_back(v354, v565);
                  }
                }

                else if (v310 > v508 || *(*&v546 + 8) <= v501 || (v320 = *(*&v546 + 16), v320 >= *(*&v546 + 24)))
                {
                  v327 = v310 <= v21 || v310 > v22;
                  if (!v327)
                  {
                    v328 = *(*&v546 + 8);
                    if (v328 > v23 && v328 <= v24)
                    {
                      v330 = *(*(*(v187 + 880) + (((*(v187 + 904) + v516) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v187 + 904) + v516));
                      ++*(v330 + v525);
                      v331 = *(*(v187 + 928) + 8 * ((*(v187 + 952) + v516) / 0x55)) + 48 * ((*(v187 + 952) + v516) % 0x55);
                      v332 = *(*(v331 + 8) + 8 * ((*(v331 + 32) + v518) / 0x55uLL)) + 48 * ((*(v331 + 32) + v518) % 0x55uLL);
                      std::deque<unsigned short>::push_back((*(*(v332 + 8) + 8 * ((*(v332 + 32) + v525) / 0x55)) + 48 * ((*(v332 + 32) + v525) % 0x55)), v531);
                      v333 = LOWORD(v531[0]);
                      v334 = *(*(*(a1 + 880) + (((*(a1 + 904) + v518) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 904) + v518));
                      ++*(v334 + LOWORD(v531[0]));
                      v335 = *(*(a1 + 928) + 8 * ((*(a1 + 952) + v518) / 0x55uLL)) + 48 * ((*(a1 + 952) + v518) % 0x55uLL);
                      v336 = *(*(v335 + 8) + 8 * ((*(v335 + 32) + v516) / 0x55)) + 48 * ((*(v335 + 32) + v516) % 0x55);
                      v337 = (*(*(v336 + 8) + 8 * ((*(v336 + 32) + v333) / 0x55uLL)) + 48 * ((*(v336 + 32) + v333) % 0x55uLL));
                      LOWORD(v565[0]) = v525;
                      std::deque<unsigned short>::push_back(v337, v565);
                    }
                  }
                }

                else
                {
                  if (v310 < *(v187 + 1080) && v320 < *(v187 + 1088))
                  {
                    v321 = *(v187 + 968);
                    if (v321[5] <= v516)
                    {
                      goto LABEL_754;
                    }

                    v322 = (*(v321[1] + 8 * ((v321[4] + v516) / 0x14)) + 200 * ((v321[4] + v516) % 0x14));
                    v323 = v322[23];
                    if (!v323)
                    {
                      goto LABEL_511;
                    }

                    do
                    {
                      v324 = v323;
                      v323 = *v323;
                    }

                    while (v323);
                    if (v324 == v322 + 23 || v324[4] || (v325 = v324[5], v325 > 8))
                    {
LABEL_511:
                      v326 = 0.0;
                    }

                    else
                    {
                      v326 = dbl_1B42AFA98[v325];
                    }

                    v355 = (*(v322[11] + ((v322[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v322[14]);
                    v356 = *&v326 * v525 + 4;
                    if (v356 < (v355[1] - *v355) >> 3)
                    {
                      *(*v355 + 8 * v356) = 0;
                    }
                  }

                  v357 = *(*(*(v187 + 784) + (((*(v187 + 808) + v516) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v187 + 808) + v516));
                  ++*(v357 + v525);
                  v358 = *(*(v187 + 832) + 8 * ((*(v187 + 856) + v516) / 0x55)) + 48 * ((*(v187 + 856) + v516) % 0x55);
                  v359 = *(*(v358 + 8) + 8 * ((*(v358 + 32) + v518) / 0x55uLL)) + 48 * ((*(v358 + 32) + v518) % 0x55uLL);
                  std::deque<unsigned short>::push_back((*(*(v359 + 8) + 8 * ((*(v359 + 32) + v525) / 0x55)) + 48 * ((*(v359 + 32) + v525) % 0x55)), v531);
                  v360 = LOWORD(v531[0]);
                  v361 = *(*(*(a1 + 688) + (((*(a1 + 712) + v518) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 712) + v518));
                  ++*(v361 + LOWORD(v531[0]));
                  v362 = *(*(a1 + 736) + 8 * ((*(a1 + 760) + v518) / 0x55uLL)) + 48 * ((*(a1 + 760) + v518) % 0x55uLL);
                  v363 = *(*(v362 + 8) + 8 * ((*(v362 + 32) + v516) / 0x55)) + 48 * ((*(v362 + 32) + v516) % 0x55);
                  v364 = (*(*(v363 + 8) + 8 * ((*(v363 + 32) + v360) / 0x55uLL)) + 48 * ((*(v363 + 32) + v360) % 0x55uLL));
                  LOWORD(v565[0]) = v525;
                  std::deque<unsigned short>::push_back(v364, v565);
                }
              }

              else
              {
                v311 = *(*(*(v187 + 592) + (((*(v187 + 616) + v516) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v187 + 616) + v516));
                ++*(v311 + v525);
                v312 = *(*(v187 + 640) + 8 * ((*(v187 + 664) + v516) / 0x55)) + 48 * ((*(v187 + 664) + v516) % 0x55);
                v313 = *(*(v312 + 8) + 8 * ((*(v312 + 32) + v518) / 0x55uLL)) + 48 * ((*(v312 + 32) + v518) % 0x55uLL);
                std::deque<unsigned short>::push_back((*(*(v313 + 8) + 8 * ((*(v313 + 32) + v525) / 0x55)) + 48 * ((*(v313 + 32) + v525) % 0x55)), v531);
                v314 = LOWORD(v531[0]);
                v315 = *(*(*(a1 + 592) + (((*(a1 + 616) + v518) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 616) + v518));
                ++*(v315 + LOWORD(v531[0]));
                v316 = *(*(a1 + 640) + 8 * ((*(a1 + 664) + v518) / 0x55uLL)) + 48 * ((*(a1 + 664) + v518) % 0x55uLL);
                v317 = *(*(v316 + 8) + 8 * ((*(v316 + 32) + v516) / 0x55)) + 48 * ((*(v316 + 32) + v516) % 0x55);
                v318 = (*(*(v317 + 8) + 8 * ((*(v317 + 32) + v314) / 0x55uLL)) + 48 * ((*(v317 + 32) + v314) % 0x55uLL));
                LOWORD(v565[0]) = v525;
                std::deque<unsigned short>::push_back(v318, v565);
              }

              v161 = v521 + 1;
              if ((v521 - *v519 + 2) == 4096)
              {
                v160 = v519 + 1;
                v161 = v519[1];
              }

              v66 = v525;
            }

            while (v161 != v510);
            if (v162)
            {
              operator delete(v162);
            }

            operator delete(v309);
            v64 = a1;
            v62 = v516;
LABEL_521:
            std::deque<unsigned short>::~deque[abi:ne200100](&v569);
            if (v548)
            {
              if (v549 != v548)
              {
                v549 += (v548 - v549 + 7) & 0xFFFFFFFFFFFFFFF8;
              }

              operator delete(v548);
            }

            if (v550)
            {
              if (v551 != v550)
              {
                v551 += (v550 - v551 + 7) & 0xFFFFFFFFFFFFFFF8;
              }

              operator delete(v550);
            }

LABEL_529:
            ++v66;
          }

          while (v66 != v495);
LABEL_628:
          v65 = v518 + 1;
        }

        while (v518 + 1 < v511);
      }

      ++v62;
    }

    while (v62 != v511);
    v499 = v61;
    if (v511 != 1 && (a3 & 1) == 0)
    {
      for (jj = 1; jj != v511; ++jj)
      {
        v395 = 0;
        v526 = *(*(*(&v544[0] + 1) + (((v545 + jj) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v545 + jj) & 0x1FF));
        do
        {
          if (v526)
          {
            v396 = 0;
            while (2)
            {
              v397 = *(*(a1 + 640) + 8 * ((*(a1 + 664) + jj) / 0x55uLL)) + 48 * ((*(a1 + 664) + jj) % 0x55uLL);
              v398 = *(*(v397 + 8) + 8 * ((*(v397 + 32) + v395) / 0x55uLL)) + 48 * ((*(v397 + 32) + v395) % 0x55uLL);
              v399 = *(*(v398 + 8) + 8 * ((*(v398 + 32) + v396) / 0x55uLL)) + 48 * ((*(v398 + 32) + v396) % 0x55uLL);
              v401 = *(v399 + 40);
              v400 = (v399 + 40);
              if (!v401)
              {
                goto LABEL_717;
              }

              v402 = *(*(a1 + 736) + 8 * ((*(a1 + 760) + jj) / 0x55uLL)) + 48 * ((*(a1 + 760) + jj) % 0x55uLL);
              v403 = *(*(v402 + 8) + 8 * ((*(v402 + 32) + v395) / 0x55uLL)) + 48 * ((*(v402 + 32) + v395) % 0x55uLL);
              v404 = (*(*(v403 + 8) + 8 * ((*(v403 + 32) + v396) / 0x55uLL)) + 48 * ((*(v403 + 32) + v396) % 0x55uLL));
              v405 = v404[5];
              v529 = v400;
              if (v405)
              {
                v406 = v404[1];
                if (v404[2] != v406)
                {
                  v407 = v404[4];
                  v408 = (v406 + 8 * (v407 >> 11));
                  v409 = (*v408 + 2 * (v407 & 0x7FF));
                  v410 = *(v406 + (((v407 + v405) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v407 + v405) & 0x7FF);
                  if (v409 != v410)
                  {
                    do
                    {
                      v411 = *v409;
                      v412 = *(*(*(a1 + 784) + (((*(a1 + 808) + v395) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 808) + v395));
                      --*(v412 + v411);
                      v413 = *(*(a1 + 832) + 8 * ((*(a1 + 856) + v395) / 0x55uLL)) + 48 * ((*(a1 + 856) + v395) % 0x55uLL);
                      v414 = *(*(v413 + 8) + 8 * ((*(v413 + 32) + jj) / 0x55uLL)) + 48 * ((*(v413 + 32) + jj) % 0x55uLL);
                      v415 = (*(*(v414 + 8) + 8 * ((*(v414 + 32) + v411) / 0x55uLL)) + 48 * ((*(v414 + 32) + v411) % 0x55uLL));
                      v416 = v415[2].u64[0];
                      v417 = v415->i64[1];
                      v418 = v415[1].i64[0];
                      v419 = v417 + 8 * (v416 >> 11);
                      if (v418 == v417)
                      {
                        v420 = 0;
                      }

                      else
                      {
                        v420 = *v419 + 2 * (v415[2].i64[0] & 0x7FF);
                      }

LABEL_643:
                      v421 = v420;
                      while (1)
                      {
                        v422 = v418 == v417 ? 0 : *(v417 + (((v415[2].i64[1] + v416) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v415[2].i64[1] + v416) & 0x7FF);
                        if (v421 == v422)
                        {
                          break;
                        }

                        if (v396 == *v421)
                        {
                          std::deque<unsigned short>::erase(v415, v419, v420);
                          break;
                        }

                        ++v421;
                        v420 += 2;
                        if (*v419 + 4096 == v420)
                        {
                          v423 = *(v419 + 8);
                          v419 += 8;
                          v420 = v423;
                          goto LABEL_643;
                        }
                      }

                      if ((++v409 - *v408) == 4096)
                      {
                        v424 = v408[1];
                        ++v408;
                        v409 = v424;
                      }
                    }

                    while (v409 != v410);
                    v405 = v404[5];
                  }
                }

                v425 = *(*(*(a1 + 688) + (((*(a1 + 712) + jj) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 712) + jj));
                *(v425 + v396) -= v405;
                v426 = v404[1];
                v427 = v404[2];
                v404[5] = 0;
                v428 = (v427 - v426) >> 3;
                if (v428 >= 3)
                {
                  do
                  {
                    operator delete(*v426);
                    v429 = v404[2];
                    v426 = (v404[1] + 8);
                    v404[1] = v426;
                    v428 = (v429 - v426) >> 3;
                  }

                  while (v428 > 2);
                }

                if (v428 == 1)
                {
                  v430 = 1024;
                  v400 = v529;
LABEL_662:
                  v404[4] = v430;
                }

                else
                {
                  v400 = v529;
                  if (v428 == 2)
                  {
                    v430 = 2048;
                    goto LABEL_662;
                  }
                }
              }

              if (!*v400)
              {
                goto LABEL_717;
              }

              v431 = *(*(a1 + 832) + 8 * ((*(a1 + 856) + jj) / 0x55uLL)) + 48 * ((*(a1 + 856) + jj) % 0x55uLL);
              v432 = *(*(v431 + 8) + 8 * ((*(v431 + 32) + v395) / 0x55uLL)) + 48 * ((*(v431 + 32) + v395) % 0x55uLL);
              v433 = (*(*(v432 + 8) + 8 * ((*(v432 + 32) + v396) / 0x55uLL)) + 48 * ((*(v432 + 32) + v396) % 0x55uLL));
              v434 = v433[5];
              if (v434)
              {
                v435 = v433[1];
                if (v433[2] != v435)
                {
                  v436 = v433[4];
                  v437 = (v435 + 8 * (v436 >> 11));
                  v438 = (*v437 + 2 * (v436 & 0x7FF));
                  v439 = *(v435 + (((v436 + v434) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v436 + v434) & 0x7FF);
                  if (v438 != v439)
                  {
                    do
                    {
                      v440 = *v438;
                      v441 = *(*(*(a1 + 688) + (((*(a1 + 712) + v395) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 712) + v395));
                      --*(v441 + v440);
                      v442 = *(*(a1 + 736) + 8 * ((*(a1 + 760) + v395) / 0x55uLL)) + 48 * ((*(a1 + 760) + v395) % 0x55uLL);
                      v443 = *(*(v442 + 8) + 8 * ((*(v442 + 32) + jj) / 0x55uLL)) + 48 * ((*(v442 + 32) + jj) % 0x55uLL);
                      v444 = (*(*(v443 + 8) + 8 * ((*(v443 + 32) + v440) / 0x55uLL)) + 48 * ((*(v443 + 32) + v440) % 0x55uLL));
                      v445 = v444[2].u64[0];
                      v446 = v444->i64[1];
                      v447 = v444[1].i64[0];
                      v448 = v446 + 8 * (v445 >> 11);
                      if (v447 == v446)
                      {
                        v449 = 0;
                      }

                      else
                      {
                        v449 = *v448 + 2 * (v444[2].i64[0] & 0x7FF);
                      }

LABEL_670:
                      v450 = v449;
                      while (1)
                      {
                        v451 = v447 == v446 ? 0 : *(v446 + (((v444[2].i64[1] + v445) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v444[2].i64[1] + v445) & 0x7FF);
                        if (v450 == v451)
                        {
                          break;
                        }

                        if (v396 == *v450)
                        {
                          std::deque<unsigned short>::erase(v444, v448, v449);
                          break;
                        }

                        ++v450;
                        v449 += 2;
                        if (*v448 + 4096 == v449)
                        {
                          v452 = *(v448 + 8);
                          v448 += 8;
                          v449 = v452;
                          goto LABEL_670;
                        }
                      }

                      if ((++v438 - *v437) == 4096)
                      {
                        v453 = v437[1];
                        ++v437;
                        v438 = v453;
                      }
                    }

                    while (v438 != v439);
                    v434 = v433[5];
                  }
                }

                v454 = *(*(*(a1 + 784) + (((*(a1 + 808) + jj) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 808) + jj));
                *(v454 + v396) -= v434;
                v455 = v433[1];
                v456 = v433[2];
                v433[5] = 0;
                v457 = (v456 - v455) >> 3;
                if (v457 >= 3)
                {
                  do
                  {
                    operator delete(*v455);
                    v458 = v433[2];
                    v455 = (v433[1] + 8);
                    v433[1] = v455;
                    v457 = (v458 - v455) >> 3;
                  }

                  while (v457 > 2);
                }

                if (v457 == 1)
                {
                  v459 = 1024;
                  v400 = v529;
LABEL_689:
                  v433[4] = v459;
                }

                else
                {
                  v400 = v529;
                  if (v457 == 2)
                  {
                    v459 = 2048;
                    goto LABEL_689;
                  }
                }
              }

              if (!*v400)
              {
                goto LABEL_717;
              }

              v460 = *(*(a1 + 928) + 8 * ((*(a1 + 952) + jj) / 0x55uLL)) + 48 * ((*(a1 + 952) + jj) % 0x55uLL);
              v461 = *(*(v460 + 8) + 8 * ((*(v460 + 32) + v395) / 0x55uLL)) + 48 * ((*(v460 + 32) + v395) % 0x55uLL);
              v462 = (*(*(v461 + 8) + 8 * ((*(v461 + 32) + v396) / 0x55uLL)) + 48 * ((*(v461 + 32) + v396) % 0x55uLL));
              v463 = v462[5];
              if (!v463)
              {
                goto LABEL_717;
              }

              v464 = v462[1];
              if (v462[2] != v464)
              {
                v465 = v462[4];
                v466 = (v464 + 8 * (v465 >> 11));
                v467 = (*v466 + 2 * (v465 & 0x7FF));
                v468 = *(v464 + (((v465 + v463) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v465 + v463) & 0x7FF);
                if (v467 != v468)
                {
                  do
                  {
                    v469 = *v467;
                    v470 = *(*(*(a1 + 688) + (((*(a1 + 712) + v395) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 712) + v395));
                    --*(v470 + v469);
                    v471 = *(*(a1 + 928) + 8 * ((*(a1 + 952) + v395) / 0x55uLL)) + 48 * ((*(a1 + 952) + v395) % 0x55uLL);
                    v472 = *(*(v471 + 8) + 8 * ((*(v471 + 32) + jj) / 0x55uLL)) + 48 * ((*(v471 + 32) + jj) % 0x55uLL);
                    v473 = (*(*(v472 + 8) + 8 * ((*(v472 + 32) + v469) / 0x55uLL)) + 48 * ((*(v472 + 32) + v469) % 0x55uLL));
                    v474 = v473[2].u64[0];
                    v475 = v473->i64[1];
                    v476 = v473[1].i64[0];
                    v477 = v475 + 8 * (v474 >> 11);
                    if (v476 == v475)
                    {
                      v478 = 0;
                    }

                    else
                    {
                      v478 = *v477 + 2 * (v473[2].i64[0] & 0x7FF);
                    }

LABEL_697:
                    v479 = v478;
                    while (1)
                    {
                      v480 = v476 == v475 ? 0 : *(v475 + (((v473[2].i64[1] + v474) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v473[2].i64[1] + v474) & 0x7FF);
                      if (v479 == v480)
                      {
                        break;
                      }

                      if (v396 == *v479)
                      {
                        std::deque<unsigned short>::erase(v473, v477, v478);
                        break;
                      }

                      ++v479;
                      v478 += 2;
                      if (*v477 + 4096 == v478)
                      {
                        v481 = *(v477 + 8);
                        v477 += 8;
                        v478 = v481;
                        goto LABEL_697;
                      }
                    }

                    if ((++v467 - *v466) == 4096)
                    {
                      v482 = v466[1];
                      ++v466;
                      v467 = v482;
                    }
                  }

                  while (v467 != v468);
                  v463 = v462[5];
                }
              }

              v483 = *(*(*(a1 + 880) + (((*(a1 + 904) + jj) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 904) + jj));
              *(v483 + v396) -= v463;
              v484 = v462[1];
              v485 = v462[2];
              v462[5] = 0;
              v486 = (v485 - v484) >> 3;
              if (v486 >= 3)
              {
                do
                {
                  operator delete(*v484);
                  v487 = v462[2];
                  v484 = (v462[1] + 8);
                  v462[1] = v484;
                  v486 = (v487 - v484) >> 3;
                }

                while (v486 > 2);
              }

              if (v486 == 1)
              {
                v488 = 1024;
                goto LABEL_716;
              }

              if (v486 == 2)
              {
                v488 = 2048;
LABEL_716:
                v462[4] = v488;
              }

LABEL_717:
              if (++v396 == v526)
              {
                break;
              }

              continue;
            }
          }

          ++v395;
        }

        while (v395 != jj);
      }
    }

    v489 = v499;
    v56 = v496;
    if (v532)
    {
      if (v533 != v532)
      {
        v533 += (v532 - v533 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      operator delete(v532);
    }

    if (v534)
    {
      operator delete(v534);
    }
  }

  else
  {
    v489 = 0;
    *&v536 = 0.0;
    v537 = 0.0;
    v534 = 0;
    v535 = 0;
  }

  if (v56)
  {
    operator delete(v56);
  }

  if (*&v536 != 0.0)
  {
    operator delete(v536);
  }

  if (v489)
  {
    operator delete(v489);
  }

  std::deque<std::valarray<double>>::~deque[abi:ne200100](v538);
  std::deque<std::reference_wrapper<std::valarray<double> const>>::~deque[abi:ne200100](__p);
  return std::deque<std::pair<int,int>>::~deque[abi:ne200100](v544);
}

void sub_1B423AE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, void *a41, uint64_t a42, void *a43, uint64_t a44, void *a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  operator delete(v60);
  if (v59)
  {
    operator delete(v59);
  }

  std::deque<std::valarray<double>>::~deque[abi:ne200100](&a47);
  std::deque<std::reference_wrapper<std::valarray<double> const>>::~deque[abi:ne200100](&a53);
  std::deque<std::pair<int,int>>::~deque[abi:ne200100](&a59);
  _Unwind_Resume(a1);
}

void nms::PyramidNMS<unsigned short,double,unsigned char>::performNMSAtOneLevel(void *a1)
{
  v1 = a1;
  v896 = *MEMORY[0x1E69E9840];
  v2 = a1[8];
  v3 = a1[9];
  if (v3 == v2)
  {
    v4 = a1 + 12;
    v3 = a1[8];
  }

  else
  {
    v4 = a1 + 12;
    v5 = a1[11];
    v6 = &v2[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v2 + (((a1[12] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 96) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *v8;
        if (*v8)
        {
          if (*(v8 + 8) != v10)
          {
            *(v8 + 8) = v10;
          }

          operator delete(v10);
          *v8 = 0;
          *(v8 + 8) = 0;
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = *(v1 + 64);
      v3 = *(v1 + 72);
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v13 = *(v1 + 72);
      v2 = (*(v1 + 64) + 8);
      *(v1 + 64) = v2;
      v12 = (v13 - v2) >> 3;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v14 = 128;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v14 = 256;
  }

  *(v1 + 88) = v14;
LABEL_19:
  std::deque<std::valarray<BOOL>>::shrink_to_fit(v1 + 56);
  v15 = *(v1 + 112);
  v16 = *(v1 + 120);
  if (v16 == v15)
  {
    v17 = (v1 + 144);
    v16 = *(v1 + 112);
  }

  else
  {
    v17 = (v1 + 144);
    v18 = *(v1 + 136);
    v19 = &v15[v18 >> 8];
    v20 = *v19;
    v21 = *v19 + 16 * v18;
    v22 = *(v15 + (((*(v1 + 144) + v18) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 144) + v18);
    if (v21 != v22)
    {
      do
      {
        v23 = *v21;
        if (*v21)
        {
          if (*(v21 + 8) != v23)
          {
            *(v21 + 8) = v23;
          }

          operator delete(v23);
          *v21 = 0;
          *(v21 + 8) = 0;
          v20 = *v19;
        }

        v21 += 16;
        if (v21 - v20 == 4096)
        {
          v24 = v19[1];
          ++v19;
          v20 = v24;
          v21 = v24;
        }
      }

      while (v21 != v22);
      v15 = *(v1 + 112);
      v16 = *(v1 + 120);
    }
  }

  *v17 = 0;
  v25 = v16 - v15;
  if (v25 >= 3)
  {
    do
    {
      operator delete(*v15);
      v26 = *(v1 + 120);
      v15 = (*(v1 + 112) + 8);
      *(v1 + 112) = v15;
      v25 = (v26 - v15) >> 3;
    }

    while (v25 > 2);
  }

  if (v25 == 1)
  {
    v27 = 128;
  }

  else
  {
    if (v25 != 2)
    {
      goto LABEL_37;
    }

    v27 = 256;
  }

  *(v1 + 136) = v27;
LABEL_37:
  std::deque<std::valarray<BOOL>>::shrink_to_fit(v1 + 104);
  v28 = *(v1 + 160);
  v29 = *(v1 + 168);
  if (v29 == v28)
  {
    v30 = (v1 + 192);
    v29 = *(v1 + 160);
  }

  else
  {
    v30 = (v1 + 192);
    v31 = *(v1 + 184);
    v32 = &v28[v31 >> 8];
    v33 = *v32;
    v34 = *v32 + 16 * v31;
    v35 = *(v28 + (((*(v1 + 192) + v31) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 192) + v31);
    if (v34 != v35)
    {
      do
      {
        v36 = *v34;
        if (*v34)
        {
          if (*(v34 + 8) != v36)
          {
            *(v34 + 8) = v36;
          }

          operator delete(v36);
          *v34 = 0;
          *(v34 + 8) = 0;
          v33 = *v32;
        }

        v34 += 16;
        if (v34 - v33 == 4096)
        {
          v37 = v32[1];
          ++v32;
          v33 = v37;
          v34 = v37;
        }
      }

      while (v34 != v35);
      v28 = *(v1 + 160);
      v29 = *(v1 + 168);
    }
  }

  *v30 = 0;
  v38 = v29 - v28;
  if (v38 >= 3)
  {
    do
    {
      operator delete(*v28);
      v39 = *(v1 + 168);
      v28 = (*(v1 + 160) + 8);
      *(v1 + 160) = v28;
      v38 = (v39 - v28) >> 3;
    }

    while (v38 > 2);
  }

  if (v38 == 1)
  {
    v40 = 128;
  }

  else
  {
    if (v38 != 2)
    {
      goto LABEL_55;
    }

    v40 = 256;
  }

  *(v1 + 184) = v40;
LABEL_55:
  std::deque<std::valarray<BOOL>>::shrink_to_fit(v1 + 152);
  v41 = *(v1 + 968);
  v862 = v1;
  if (v41)
  {
    v42 = *(v41 + 40);
    if (v42)
    {
      v43 = 0;
      v44 = v1;
      do
      {
        v45 = *(v44 + 968);
        if (v45[5] <= v43)
        {
          std::__throw_out_of_range[abi:ne200100]("deque");
        }

        v46 = *(v45[1] + 8 * ((v45[4] + v43) / 0x14)) + 200 * ((v45[4] + v43) % 0x14);
        if (*(v46 + 120))
        {
          v49 = *(v46 + 184);
          v47 = v46 + 184;
          v48 = v49;
          v50 = *(v47 - 72);
          v51 = (*(*(*(v47 - 96) + ((v50 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v50 + 8) - *(*(*(v47 - 96) + ((v50 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v50)) >> 3;
          if (!v49)
          {
            goto LABEL_66;
          }

          do
          {
            v52 = v48;
            v48 = *v48;
          }

          while (v48);
          if (v52 == v47 || v52[4] || (v53 = v52[5], v53 >= 9) || (v54 = dbl_1B42AFA98[v53], __p[0] = 0, __p[1] = 0, *&v54 <= v51))
          {
LABEL_66:
            operator new();
          }
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
        }

        std::deque<std::valarray<BOOL>>::push_back((v1 + 56), __p);
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        __p[0] = 0;
        __p[1] = 0;
        std::deque<std::valarray<BOOL>>::push_back((v1 + 104), __p);
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        __p[0] = 0;
        __p[1] = 0;
        v44 = v1;
        std::deque<std::valarray<BOOL>>::push_back((v1 + 152), __p);
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        ++v43;
      }

      while (v43 != v42);
      if (v42 == 2 && (*(v1 + 1048) & 1) != 0)
      {
        v55 = (*(*(v1 + 592) + (((*(v1 + 616) + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 616) + 1));
        v57 = *v55;
        v56 = v55[1];
        v58 = *(v1 + 712) + 1;
        v59 = *(*(v1 + 688) + ((v58 >> 5) & 0x7FFFFFFFFFFFFF8));
        v60 = *(v1 + 808) + 1;
        v61 = *(*(v862 + 784) + ((v60 >> 5) & 0x7FFFFFFFFFFFFF8));
        v62 = *(v862 + 904) + 1;
        v63 = *(*(v862 + 880) + ((v62 >> 5) & 0x7FFFFFFFFFFFFF8));
        v64 = (*(*(v862 + 112) + (((*(v862 + 136) + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 136) + 1));
        v65 = v56 - *v55;
        v66 = *v64;
        if (v64[1] - *v64 != v65)
        {
          v857 = *(*(v862 + 880) + ((v62 >> 5) & 0x7FFFFFFFFFFFFF8));
          std::valarray<BOOL>::resize(*(*(v862 + 112) + (((*(v862 + 136) + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 136) + 1), v56 - *v55);
          v63 = v857;
          v66 = *v64;
        }

        if (v56 != v57)
        {
          v67 = *v55;
          v68 = *(v59 + 16 * v58);
          v69 = *(v61 + 16 * v60);
          v70 = *(v63 + 16 * v62);
          do
          {
            v72 = *v67++;
            v71 = v72;
            v73 = *v68++;
            v74 = v73 | v71;
            v76 = *v69++;
            v75 = v76;
            v77 = *v70++;
            *v66++ = (v74 | v75 | v77) == 0;
            --v65;
          }

          while (v65);
        }
      }
    }

    v1 = v862;
    v41 = *(v862 + 968);
  }

  if (*(v1 + 1097) == 1)
  {
    if (!v41)
    {
      v277 = v1 + 1098;
      goto LABEL_596;
    }

    v817 = *(v41 + 40);
    if (v817)
    {
      v78 = 0;
      while (1)
      {
        v79 = *(v862 + 968);
        if (v79[5] <= v78)
        {
          std::__throw_out_of_range[abi:ne200100]("deque");
        }

        v822 = (*(v79[1] + 8 * ((v79[4] + v78) / 0x14)) + 200 * ((v79[4] + v78) % 0x14));
        v80 = v822[23];
        v828 = v822 + 23;
        if (!v80)
        {
          goto LABEL_92;
        }

        do
        {
          v81 = v80;
          v80 = *v80;
        }

        while (v80);
        if (v81 == v828 || v81[4])
        {
          goto LABEL_92;
        }

        v276 = v81[5];
        if (v276 == 5)
        {
          v830 = 1;
          v82 = 4;
          goto LABEL_93;
        }

        if (v276 == 8 || v276 == 6)
        {
          v830 = 1;
          v82 = 8;
        }

        else
        {
LABEL_92:
          v830 = 0;
          v82 = -1;
        }

LABEL_93:
        v820 = v82;
        v83 = (*(*(v862 + 112) + (((*(v862 + 136) + v78) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 136) + v78));
        __p[0] = 0;
        __p[1] = 0;
        if (v83[1] != *v83)
        {
          operator new();
        }

        nms::BOOLeanMaskToIndices<unsigned short>(&v893, __p);
        if (v894 != *(&v893 + 1))
        {
          v84 = (*(&v893 + 1) + 8 * (v895 >> 11));
          v85 = (*v84 + 2 * (v895 & 0x7FF));
          v848 = *(*(&v893 + 1) + (((*(&v895 + 1) + v895) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((*(&v895 + 1) + v895) & 0x7FF);
          if (v85 != v848)
          {
            v86 = v78;
            v87 = v78;
            v823 = v78;
            v836 = v78;
            while (1)
            {
              v88 = *v85;
              if (v78 == 1)
              {
                v89 = *(v862 + 968);
                if (v89[5] <= 1uLL)
                {
                  std::__throw_out_of_range[abi:ne200100]("deque");
                }

                v90 = (*(v89[1] + 8 * ((v89[4] + 1) / 0x14uLL)) + 200 * ((v89[4] + 1) % 0x14uLL));
                v91 = v90[23];
                if (!v91)
                {
                  goto LABEL_110;
                }

                v92 = v90 + 23;
                do
                {
                  v93 = v91[4];
                  v94 = v93 >= 3;
                  v95 = v93 < 3;
                  if (v94)
                  {
                    v92 = v91;
                  }

                  v91 = v91[v95];
                }

                while (v91);
                if (v92 == v90 + 23 || v92[4] > 3uLL || (v96 = v92[5], v96 > 8))
                {
LABEL_110:
                  v97 = 0.0;
                }

                else
                {
                  v97 = dbl_1B42AFA98[v96];
                }

                v98 = *(v90[17] + 8 * ((v90[20] + 4) / 0x55uLL)) + 48 * ((v90[20] + 4) % 0x55uLL);
                v99 = (*&v97 * *(*(*(v98 + 8) + (((*(v98 + 32) + v88) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v98 + 32) + v88) & 0x3FF)));
                __p[0] = (*(v90[11] + (((v90[14] + 3) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v90 + 112) + 3));
                __p[1] = v99;
                *&v885 = v97;
                *(&v885 + 1) = 1;
                std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v890, __p);
                v100 = *v890;
                if (*(&v890 + 1) != v890)
                {
                  *(&v890 + 1) += (v890 - *(&v890 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
                }

                v101 = *(v862 + 1120);
                v102 = vsubq_f64(v100, *(v890 + 48));
                v103 = sqrt(vaddvq_f64(vmulq_f64(v102, v102)));
                operator delete(v890);
                if (v103 <= v101)
                {
                  v122 = v862;
                  v123 = *(*(*(v862 + 112) + (((*(v862 + 136) + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 136) + 1));
                  if (*(v123 + v88) != 1 || (v124 = *(*(*(v862 + 64) + (((*(v862 + 88) + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 88) + 1)), *(v124 + v88) == 1))
                  {
                    nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v862, 1u, v88);
                    v122 = v862;
                    v124 = *(*(*(v862 + 64) + (((*(v862 + 88) + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 88) + 1));
                    v123 = *(*(*(v862 + 112) + (((*(v862 + 136) + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 136) + 1));
                  }

                  *(v124 + v88) = 0;
                  *(v123 + v88) = 1;
                  v125 = *(v122 + 184) + 1;
                  goto LABEL_438;
                }
              }

              v104 = *(v862 + 992);
              v858 = v88;
              if (v104 == 1)
              {
                v838 = v84;
                v844 = v85;
                v875[0] = 0;
                v875[1] = 0;
                std::valarray<double>::resize(v875, 5uLL);
                v113 = *(v862 + 968);
                if (v113[5] <= v86)
                {
                  std::__throw_out_of_range[abi:ne200100]("deque");
                }

                v114 = (*(v113[1] + 8 * ((v113[4] + v86) / 0x14)) + 200 * ((v113[4] + v86) % 0x14));
                v116 = v114 + 23;
                v115 = v114[23];
                if (!v115)
                {
                  goto LABEL_137;
                }

                v117 = v114[23];
                do
                {
                  v118 = v117;
                  v117 = *v117;
                }

                while (v117);
                if (v118 == v116 || v118[4] || (v119 = v118[5] - 5, v119 > 3))
                {
LABEL_137:
                  v120 = -1;
                  if (v115)
                  {
                    goto LABEL_138;
                  }
                }

                else
                {
                  v120 = qword_1B42AFA78[v119];
LABEL_138:
                  v126 = v114[23];
                  do
                  {
                    v127 = v126;
                    v126 = *v126;
                  }

                  while (v126);
                  if (v127 != v116 && !v127[4])
                  {
                    v128 = v127[5];
                    if (v128 <= 8)
                    {
                      v129 = dbl_1B42AFA98[v128];
                      goto LABEL_145;
                    }
                  }
                }

                v129 = 0.0;
LABEL_145:
                v130 = v875[0];
                v131 = (*(v114[11] + ((v114[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v114[14]);
                v132 = v120 + *&v129 * v88;
                if (v132 < (v131[1] - *v131) >> 3)
                {
                  *v875[0] = *(*v131 + 8 * v132);
                }

                v133 = *(v114[17] + 8 * (v114[20] / 0x55)) + 48 * (v114[20] % 0x55);
                v134 = *(v133 + 32) + v88;
                v135 = *(*(v133 + 8) + ((v134 >> 7) & 0x1FFFFFFFFFFFFF8));
                if (!v115)
                {
                  goto LABEL_154;
                }

                v136 = v114 + 23;
                do
                {
                  if (*(v115 + 32))
                  {
                    v136 = v115;
                  }

                  v115 = *(v115 + 8 * (*(v115 + 32) == 0));
                }

                while (v115);
                if (v136 != v116 && v136[4] <= 1)
                {
                  v137 = v136[5];
                }

                else
                {
LABEL_154:
                  v137 = 9;
                }

                v138 = (v135 + 4 * (v134 & 0x3FF));
                v139 = *v138;
                v140 = v138[1];
                v141 = *v116;
                if (!*v116)
                {
                  goto LABEL_164;
                }

                v142 = v114 + 23;
                do
                {
                  if (v141[4])
                  {
                    v142 = v141;
                  }

                  v141 = v141[v141[4] == 0];
                }

                while (v141);
                if (v142 == v116 || v142[4] > 1 || (v143 = v142[5], v143 > 8))
                {
LABEL_164:
                  v144 = 0.0;
                }

                else
                {
                  v144 = dbl_1B42AFA98[v143];
                }

                __p[0] = (*(v114[11] + (((v114[14] + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v114 + 112) + 1));
                __p[1] = (*&v144 * v139);
                *&v885 = *&v144 * (v140 - v139 + 1);
                *(&v885 + 1) = 1;
                std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v890, __p);
                if (v137 == 5)
                {
                  v146 = 5;
                }

                else
                {
                  v146 = 0;
                }

                if (!v137)
                {
                  v146 = 4;
                }

                if (v146)
                {
                  v147 = (((*(&v890 + 1) - v890) >> 3) / v146);
                }

                else
                {
                  v147 = 0.0;
                }

                v150 = *v116;
                if (!*v116)
                {
                  goto LABEL_182;
                }

                v151 = v114 + 23;
                do
                {
                  v152 = v150[4];
                  v94 = v152 >= 4;
                  v153 = v152 < 4;
                  if (v94)
                  {
                    v151 = v150;
                  }

                  v150 = v150[v153];
                }

                while (v150);
                if (v151 == v116 || v151[4] > 4 || ((v188 = v151[5], v217 = v188 > 8, v189 = (1 << v188) & 0x144, !v217) ? (v190 = v189 == 0) : (v190 = 1), v190))
                {
LABEL_182:
                  v154 = 0;
                  v155 = 6;
                }

                else
                {
                  v154 = 1;
                  v155 = 5;
                }

                if ((v137 == 5 || !v137) && v154)
                {
                  v853 = v130;
                  v156 = v114[20] + v155;
                  v157 = *(v114[17] + 8 * (v156 / 0x55));
                  v158 = v114[7] * v114[6];
                  v881[0] = 0;
                  v881[1] = 0;
                  std::valarray<unsigned char>::resize(v881, v158);
                  v159 = *v138;
                  v160 = v138[1];
                  if (v159 <= v160)
                  {
                    v161 = 0;
                    v191 = v157 + 48 * (v156 % 0x55);
                    v162 = 0.0;
                    do
                    {
                      v192 = (*(*(v191 + 8) + (((*(v191 + 32) + v159) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v191 + 32) + v159) & 0x3FF));
                      v193 = *v192;
                      if (v193 <= v192[1])
                      {
                        do
                        {
                          v194 = *v116;
                          if (!*v116)
                          {
                            goto LABEL_254;
                          }

                          v195 = v114 + 23;
                          do
                          {
                            v196 = v194[4];
                            v94 = v196 >= 4;
                            v197 = v196 < 4;
                            if (v94)
                            {
                              v195 = v194;
                            }

                            v194 = v194[v197];
                          }

                          while (v194);
                          if (v195 == v116 || v195[4] > 4 || (v198 = v195[5], v198 > 8))
                          {
LABEL_254:
                            v199 = 0.0;
                          }

                          else
                          {
                            v199 = dbl_1B42AFA98[v198];
                          }

                          __p[0] = (*(v114[11] + (((v114[14] + 4) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v114 + 112) + 4));
                          __p[1] = (*&v199 * v193);
                          *&v885 = v199;
                          *(&v885 + 1) = 1;
                          std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(v878, __p);
                          *&v200 = COERCE_DOUBLE(nms::rasterizeQuadByQuantizedScoreMap<double>(v878, v881, (v114 + 8), v114[6], v114[7], 0, *(v862 + 1008)));
                          v161 = v201;
                          if (v878[0])
                          {
                            if (v878[1] != v878[0])
                            {
                              v878[1] = v878[1] + ((v878[0] - v878[1] + 7) & 0xFFFFFFFFFFFFFFF8);
                            }

                            operator delete(v878[0]);
                          }

                          v94 = v193++ >= v192[1];
                        }

                        while (!v94);
                        v162 = *&v200;
                        LOWORD(v160) = v138[1];
                      }

                      v94 = v159++ >= v160;
                    }

                    while (!v94);
                  }

                  else
                  {
                    v161 = 0;
                    v162 = 0.0;
                  }

                  if (v881[0])
                  {
                    operator delete(v881[0]);
                  }

                  v130 = v853;
                  v88 = v858;
                  v163 = *v853;
                  v853[1] = *v853;
                  v164 = v853 + 1;
                  v78 = v823;
                  v84 = v838;
                  v85 = v844;
                  v86 = v836;
                  if (v161)
                  {
                    v166 = v162 / v161 / 255.0 * v163;
                    *v164 = v166;
                    v165 = v862;
                    goto LABEL_268;
                  }
                }

                else
                {
                  v163 = *v130;
                  v130[1] = *v130;
                  v164 = v130 + 1;
                  v78 = v823;
                  v84 = v838;
                  v85 = v844;
                }

                v161 = 0;
                v165 = v862;
                LOBYTE(v145) = *(v862 + 1008);
                v166 = v163 * (v145 / 255.0);
                *v164 = v166;
LABEL_268:
                v130[2] = v166;
                if (*(v165 + 1024) == 1)
                {
                  v202 = *(v165 + 1040);
                  if (v202)
                  {
                    v203 = v202;
                    if (v147 > v202)
                    {
                      v203 = v147;
                    }

                    v166 = v166 * v203;
                  }

                  else
                  {
                    v166 = v147 * v166;
                  }

                  v130[2] = v166;
                }

                v130[3] = v166;
                if (*(v862 + 1009) == 1)
                {
                  v204 = *(v862 + 968);
                  if (v204)
                  {
                    v205 = *(v204 + 40);
                  }

                  else
                  {
                    v205 = 0.0;
                  }

                  v166 = v166 * (1.0 - v87 / v205);
                  v130[3] = v166;
                }

                v130[4] = v166;
                if (*(v862 + 1010) == 1 && v161)
                {
                  v130[4] = v166 * v161;
                }

                if (v890)
                {
                  if (*(&v890 + 1) != v890)
                  {
                    *(&v890 + 1) += (v890 - *(&v890 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
                  }

                  operator delete(v890);
                }

                v121 = *(v875[1] - 1);
                operator delete(v130);
                goto LABEL_426;
              }

              if (!v104)
              {
                break;
              }

              v121 = 2.22507386e-308;
LABEL_426:
              v122 = v862;
              if (v121 > *(v862 + 1000))
              {
                if (v830)
                {
                  v266 = *v828;
                  if (!*v828)
                  {
                    goto LABEL_443;
                  }

                  do
                  {
                    v267 = v266;
                    v266 = *v266;
                  }

                  while (v266);
                  if (v267 == v828 || v267[4] || (v268 = v267[5], v268 > 8))
                  {
LABEL_443:
                    v269 = 0.0;
                  }

                  else
                  {
                    v269 = dbl_1B42AFA98[v268];
                  }

                  v273 = v820 + *&v269 * v88;
                  v275 = (*(v822[11] + ((v822[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v822[14]);
                  v274 = *v275;
                  if (v273 < (v275[1] - *v275) >> 3)
                  {
                    *(v274 + 8 * v273) = v121;
                  }
                }

                goto LABEL_439;
              }

              v270 = *(*(*(v862 + 112) + (((*(v862 + 136) + v86) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 136) + v86));
              if (*(v270 + v88) != 1 || (v271 = *(*(*(v862 + 64) + (((*(v862 + 88) + v86) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 88) + v86)), *(v271 + v88) == 1))
              {
                nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v862, v78, v88);
                v122 = v862;
                v271 = *(*(*(v862 + 64) + (((*(v862 + 88) + v86) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 88) + v86));
                v270 = *(*(*(v862 + 112) + (((*(v862 + 136) + v86) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 136) + v86));
              }

              *(v271 + v88) = 0;
              *(v270 + v88) = 1;
              v125 = *(v122 + 184) + v86;
LABEL_438:
              *(*(*(*(v122 + 160) + ((v125 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v125) + v88) = 0;
LABEL_439:
              if ((++v85 - *v84) == 4096)
              {
                v272 = v84[1];
                ++v84;
                v85 = v272;
              }

              if (v85 == v848)
              {
                goto LABEL_452;
              }
            }

            v863 = 0;
            v864 = 0;
            v105 = *(v862 + 968);
            if (v105[5] <= v86)
            {
              std::__throw_out_of_range[abi:ne200100]("deque");
            }

            v106 = (*(v105[1] + 8 * ((v105[4] + v86) / 0x14)) + 200 * ((v105[4] + v86) % 0x14));
            v107 = *(v106[17] + 8 * (v106[20] / 0x55uLL)) + 48 * (v106[20] % 0x55uLL);
            v108 = (*(*(v107 + 8) + (((*(v107 + 32) + v88) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v107 + 32) + v88) & 0x3FF));
            v833 = v106;
            v109 = v106 + 23;
            v110 = v106[23];
            v852 = v106 + 23;
            v111 = v110;
            v843 = v85;
            if (!v110)
            {
              v148 = *v108;
              v149 = v108[1] - v148;
              v112 = 9;
              goto LABEL_198;
            }

            do
            {
              if (*(v111 + 32))
              {
                v109 = v111;
              }

              v111 = *(v111 + 8 * (*(v111 + 32) == 0));
            }

            while (v111);
            if (v109 == v852 || v109[4] > 1uLL)
            {
              v112 = 9;
            }

            else
            {
              v112 = v109[5];
            }

            v148 = *v108;
            v167 = v108[1];
            v168 = v106 + 23;
            do
            {
              if (*(v110 + 32))
              {
                v168 = v110;
              }

              v110 = *(v110 + 8 * (*(v110 + 32) == 0));
            }

            while (v110);
            v149 = v167 - v148;
            if (v168 == v852 || v168[4] > 1uLL)
            {
              v111 = 0;
              goto LABEL_198;
            }

            v111 = 0;
            v187 = v168[5];
            if (v187 > 3)
            {
              if (v187 > 5)
              {
                switch(v187)
                {
                  case 6:
                    v111 = 9;
                    break;
                  case 7:
                    v111 = 3;
                    break;
                  case 8:
                    v111 = 14;
                    break;
                }

                goto LABEL_198;
              }

              if (v187 != 4)
              {
                v111 = 5;
                goto LABEL_198;
              }

LABEL_295:
              v111 = 2;
              goto LABEL_198;
            }

            if (v187 > 1)
            {
              if (v187 == 2)
              {
                v111 = 8;
                goto LABEL_198;
              }

              goto LABEL_295;
            }

            if (v187 <= 1)
            {
              v111 = 4;
            }

LABEL_198:
            __p[0] = (*(v106[11] + (((v106[14] + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v106 + 112) + 1));
            __p[1] = (v111 * v148);
            *&v885 = v111 + v111 * v149;
            *(&v885 + 1) = 1;
            std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(v875, __p);
            v839 = v84;
            if (v112)
            {
              if (v112 == 5)
              {
                v169 = 5;
                goto LABEL_202;
              }

              v169 = 0;
              v171 = 0;
              v170 = v875[0];
            }

            else
            {
              v169 = 4;
LABEL_202:
              v170 = v875[0];
              v171 = ((v875[1] - v875[0]) >> 3) / v169;
            }

            v872[0] = 0;
            v872[1] = 0;
            if (v112 == 5)
            {
              v172 = 5;
            }

            else
            {
              v172 = 0;
            }

            if (v112)
            {
              v173 = v172;
            }

            else
            {
              v173 = 4;
            }

            if (v173)
            {
              v174 = ((v875[1] - v170) >> 3) / v173;
              if (v174 >= 2)
              {
                if (!((v174 - 1) >> 61))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }
            }

            __p[0] = v170 + 16;
            __p[1] = v171;
            v826 = v171;
            *&v885 = v169;
            std::valarray<double>::valarray(v869, __p);
            if (v869[1] != v869[0])
            {
              operator new();
            }

            std::valarray<double>::resize(&v863, 4uLL);
            v175 = *v852;
            if (!*v852)
            {
              goto LABEL_222;
            }

            do
            {
              v176 = v175;
              v175 = *v175;
            }

            while (v175);
            if (v176 == v852 || v176[4] || (v177 = v176[5], v177 > 8))
            {
LABEL_222:
              v178 = 0.0;
            }

            else
            {
              v178 = dbl_1B42AFA98[v177];
            }

            __p[0] = (*(v833[11] + ((v833[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v833[14]);
            __p[1] = (*&v178 * v88);
            *&v885 = v178;
            *(&v885 + 1) = 1;
            std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v865, __p);
            v179 = v865;
            v180 = v866;
            if (((v866 - v865) & 0xFFFFFFFFFFFFFFF0) == 0x20)
            {
              v181 = *(v862 + 1072);
              std::valarray<double>::valarray(v878, &v865);
              v182 = v878[0];
              v183 = v878[1];
              if (((v878[1] - v878[0]) & 0xFFFFFFFFFFFFFFF0) != 0x20)
              {
                v890 = 0uLL;
                if (v173)
                {
                  v184 = ((v875[1] - v875[0]) >> 3) / v173;
                  if (v184)
                  {
                    v185 = v184 - 1;
                    if (v184 == 1)
                    {
                      std::valarray<double>::__assign_range(&v890, v875[0], v875[1]);
                    }

                    else
                    {
                      v206 = *v875[0];
                      v207 = 8 * v173;
                      v208 = (v875[0] + 8 * v173);
                      do
                      {
                        if (*v208 < v206)
                        {
                          v206 = *v208;
                        }

                        v208 = (v208 + v207);
                        --v185;
                      }

                      while (v185);
                      v209 = *(v875[0] + 1);
                      v210 = v184 - 1;
                      v211 = (v875[0] + v207 + 8);
                      do
                      {
                        if (*v211 < v209)
                        {
                          v209 = *v211;
                        }

                        v211 = (v211 + v207);
                        --v210;
                      }

                      while (v210);
                      __p[1] = v875;
                      *&v885 = 0;
                      *(&v885 + 1) = ((v875[1] - v875[0]) >> 3) / v173;
                      *&v886 = v173;
                      *(&v886 + 1) = v875;
                      v887 = 2;
                      v888 = *(&v885 + 1);
                      v889 = v173;
                      v212 = std::__val_expr<std::_BinaryOp<std::plus<double>,std::__val_expr<std::__slice_expr<std::valarray<double> const&>>,std::__val_expr<std::__slice_expr<std::valarray<double> const&>>>>::max[abi:ne200100](__p);
                      __p[1] = v875;
                      *&v885 = 1;
                      *(&v885 + 1) = v184;
                      *&v886 = v173;
                      *(&v886 + 1) = v875;
                      v887 = 3;
                      v888 = v184;
                      v889 = v173;
                      v213 = std::__val_expr<std::_BinaryOp<std::plus<double>,std::__val_expr<std::__slice_expr<std::valarray<double> const&>>,std::__val_expr<std::__slice_expr<std::valarray<double> const&>>>>::max[abi:ne200100](__p);
                      __p[0] = *&v206;
                      __p[1] = *&v209;
                      *&v885 = v212 - v206;
                      *(&v885 + 1) = v213 - v209;
                      std::valarray<double>::__assign_range(&v890, __p, &v886);
                    }
                  }
                }

                if (v878[0])
                {
                  if (v878[1] != v878[0])
                  {
                    v878[1] = v878[1] + ((v878[0] - v878[1] + 7) & 0xFFFFFFFFFFFFFFF8);
                  }

                  operator delete(v878[0]);
                }

                v183 = *(&v890 + 1);
                v182 = v890;
                *v878 = v890;
              }

              v215 = v182[2];
              v214 = v182[3];
              v216 = fabs(v214);
              v217 = fabs(v215) > 2.22044605e-16 && v216 > 2.22044605e-16;
              if (!v217)
              {
                v186 = 2.22507386e-308;
                v84 = v839;
                goto LABEL_383;
              }

              v219 = *v182;
              v218 = v182[1];
              if (v173)
              {
                v220 = ((v875[1] - v875[0]) >> 3) / v173;
              }

              else
              {
                v220 = 0;
              }

              v890 = 0uLL;
              if (v875[1] != v875[0])
              {
                if (((v875[1] - v875[0]) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              if (v220)
              {
                v221 = v875[0];
                v222 = 8 * v173;
                v223 = v875[0];
                v224 = v220;
                v225 = 0;
                do
                {
                  *v225 = (*v223 - v219) / v215;
                  v225 += 4;
                  v223 = (v223 + v222);
                  --v224;
                }

                while (v224);
                v226 = 8;
                v227 = (v221 + 8);
                v228 = v220;
                do
                {
                  *v226 = (*v227 - v218) / v214;
                  v226 += 32;
                  v227 = (v227 + v222);
                  --v228;
                }

                while (v228);
              }

              __p[0] = 0;
              __p[1] = v220;
              *&v885 = 4;
              std::valarray<double>::valarray(v881, __p);
              v229 = v881[0];
              if (v220)
              {
                v230 = (v890 + 16);
                v231 = (v875[0] + 16);
                v232 = v881[0];
                v233 = v220;
                do
                {
                  v234 = *v232++;
                  *v230 = v234 + *v231 / v215;
                  v230 += 4;
                  v231 += v173;
                  --v233;
                }

                while (v233);
LABEL_331:
                if (v881[1] != v229)
                {
                  v881[1] = v881[1] + ((v229 - v881[1] + 7) & 0xFFFFFFFFFFFFFFF8);
                }

                operator delete(v229);
              }

              else if (v881[0])
              {
                goto LABEL_331;
              }

              __p[0] = (v890 + 8);
              __p[1] = v220;
              *&v885 = 4;
              std::valarray<double>::valarray(v881, __p);
              v235 = v881[0];
              if (v220)
              {
                v236 = (v890 + 24);
                v237 = (v875[0] + 24);
                v238 = v881[0];
                v239 = v220;
                do
                {
                  v240 = *v238++;
                  *v236 = v240 + *v237 / v214;
                  v236 += 4;
                  v237 += v173;
                  --v239;
                }

                while (v239);
LABEL_339:
                if (v881[1] != v235)
                {
                  v881[1] = v881[1] + ((v235 - v881[1] + 7) & 0xFFFFFFFFFFFFFFF8);
                }

                operator delete(v235);
              }

              else if (v881[0])
              {
                goto LABEL_339;
              }

              v242 = *(&v890 + 1);
              for (i = v890; i != v242; ++i)
              {
                *i = *i * v181;
              }

              std::valarray<double>::apply(__p, &v890);
              if (v890)
              {
                operator delete(v890);
              }

              v890 = *__p;
              v868 = 0;
              nms::max<double>(v881, &v868, &v890);
              v867 = v181;
              nms::min<double>(__p, &v867, v881);
              if (v890)
              {
                operator delete(v890);
              }

              v890 = *__p;
              __p[0] = 0;
              __p[1] = 0;
              if (v881[0])
              {
                if (v881[1] != v881[0])
                {
                  v881[1] = v881[1] + ((v881[0] - v881[1] + 7) & 0xFFFFFFFFFFFFFFF8);
                }

                operator delete(v881[0]);
              }

              if (v181 * v181)
              {
                if (!((v181 * v181) >> 61))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              if (v220)
              {
                v243 = 0;
                v244 = 0;
                while (1)
                {
                  __p[0] = &v890;
                  __p[1] = (4 * v243);
                  v885 = xmmword_1B42AF990;
                  std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(v881, __p);
                  if (v244)
                  {
                    operator delete(v244);
                  }

                  v244 = v881[0];
                  v245 = *(v881[0] + 1);
                  v246 = *(v881[0] + 3);
                  if (v245 < v246)
                  {
                    break;
                  }

LABEL_372:
                  ++v243;
                  v86 = v836;
                  v88 = v858;
                  if (v243 == v220)
                  {
                    goto LABEL_446;
                  }
                }

                while (2)
                {
                  v247 = *v244;
                  v248 = v244[2] - *v244;
                  if (v248 >= v181)
                  {
                    v249 = v181;
                  }

                  else
                  {
                    v249 = v248;
                  }

                  __p[0] = 0;
                  __p[1] = 0;
                  std::valarray<unsigned long>::resize();
                  v250 = __p[0];
                  if (v249)
                  {
                    v251 = (8 * (v247 + (v245 * v181)));
                    v252 = __p[0];
                    do
                    {
                      v253 = *v252++;
                      *v251++ += v253;
                      --v249;
                    }

                    while (v249);
LABEL_368:
                    if (__p[1] != v250)
                    {
                      __p[1] = __p[1] + ((v250 - __p[1] + 7) & 0xFFFFFFFFFFFFFFF8);
                    }

                    operator delete(v250);
                  }

                  else if (__p[0])
                  {
                    goto LABEL_368;
                  }

                  if (++v245 == v246)
                  {
                    goto LABEL_372;
                  }

                  continue;
                }
              }

              v244 = 0;
LABEL_446:
              v78 = v823;
              if (v244)
              {
                operator delete(v244);
              }

              if (v890)
              {
                if (*(&v890 + 1) != v890)
                {
                  *(&v890 + 1) += (v890 - *(&v890 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
                }

                operator delete(v890);
              }

              v186 = 0.0 / 0;
              v182 = v878[0];
              if (v878[0])
              {
                v183 = v878[1];
                v84 = v839;
LABEL_383:
                if (v183 != v182)
                {
                  v878[1] = v183 + ((v182 - v183 + 7) & 0xFFFFFFFFFFFFFFF8);
                }

                operator delete(v182);
              }

              else
              {
                v84 = v839;
              }

              v179 = v865;
              v180 = v866;
            }

            else
            {
              v186 = 2.22507386e-308;
              v84 = v839;
            }

            v254 = v863;
            *v863 = v186;
            if (v179)
            {
              if (v180 != v179)
              {
                v866 = &v180[(v179 - v180 + 7) & 0xFFFFFFFFFFFFFFF8];
              }

              operator delete(v179);
            }

            v255 = *v254;
            v256 = *(v862 + 1024);
            v254[1] = *v254;
            if (v256)
            {
              v257 = *(v862 + 1032);
              if (v257)
              {
                v258 = v257;
                if (v826 < v257)
                {
                  v258 = v826;
                }
              }

              else
              {
                v258 = v826;
              }

              v255 = v255 * v258;
              v254[1] = v255;
            }

            v254[2] = v255;
            if (*(v862 + 1009) == 1)
            {
              v259 = *(v862 + 968);
              if (v259)
              {
                v260 = *(v259 + 40);
              }

              else
              {
                v260 = 0.0;
              }

              v255 = v255 * (1.0 - v87 / v260);
              v254[2] = v255;
            }

            v254[3] = v255;
            if (*(v862 + 1010) == 1)
            {
              v261 = *v852;
              if (!*v852)
              {
                goto LABEL_411;
              }

              do
              {
                v262 = v261;
                v261 = *v261;
              }

              while (v261);
              if (v262 == v852 || v262[4] || (v263 = v262[5], v263 > 8))
              {
LABEL_411:
                v264 = 0.0;
              }

              else
              {
                v264 = dbl_1B42AFA98[v263];
              }

              __p[0] = (*(v833[11] + ((v833[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v833[14]);
              __p[1] = (*&v264 * v88);
              *&v885 = v264;
              *(&v885 + 1) = 1;
              std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v890, __p);
              v265 = v890;
              v254[3] = v254[3] * (*(v890 + 16) * *(v890 + 24));
            }

            else
            {
              v265 = 0;
            }

            if (v869[0])
            {
              if (v869[1] != v869[0])
              {
                v869[1] = v869[1] + ((v869[0] - v869[1] + 7) & 0xFFFFFFFFFFFFFFF8);
              }

              operator delete(v869[0]);
            }

            if (v872[0])
            {
              operator delete(v872[0]);
            }

            if (v875[0])
            {
              if (v875[1] != v875[0])
              {
                v875[1] = v875[1] + ((v875[0] - v875[1] + 7) & 0xFFFFFFFFFFFFFFF8);
              }

              operator delete(v875[0]);
            }

            v121 = *(v864 - 8);
            operator delete(v863);
            v85 = v843;
            if (v265)
            {
              operator delete(v265);
            }

            v88 = v858;
            goto LABEL_426;
          }
        }

LABEL_452:
        std::deque<unsigned short>::~deque[abi:ne200100](&v893);
        if (++v78 == v817)
        {
          v1 = v862;
          v41 = *(v862 + 968);
          break;
        }
      }
    }
  }

  v277 = v1 + 1098;
  if (*(v1 + 1098))
  {
    if (v41)
    {
      v829 = *(v41 + 40);
      if (v829)
      {
        v824 = v1 + 1098;
        v278 = 0;
        v818 = 0;
        while (1)
        {
          v279 = *(v1 + 968);
          if (v279[5] <= v278)
          {
            std::__throw_out_of_range[abi:ne200100]("deque");
          }

          v827 = v278;
          v280 = (*(v279[1] + 8 * ((v279[4] + v278) / 0x14)) + 200 * ((v279[4] + v278) % 0x14));
          v281 = v280[23];
          v832 = v280 + 23;
          if (v281)
          {
            do
            {
              v282 = v281;
              v281 = *v281;
            }

            while (v281);
            if (v282 == v832 || v282[4] || (v283 = v282[5] - 5, v283 > 3))
            {
              v284 = -1;
            }

            else
            {
              v284 = qword_1B42AFA78[v283];
            }

            v831 = v284;
          }

          else
          {
            v831 = -1;
          }

          v285 = v278;
          v286 = (*(*(v1 + 592) + (((*(v1 + 616) + v278) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 616) + v278));
          LOBYTE(v875[0]) = 0;
          v287 = v286[1] - *v286;
          *(&v890 + 1) = v286;
          *&v891 = v875;
          *(&v891 + 1) = v287;
          std::__val_expr<std::_BinaryOp<std::greater<unsigned char>,std::valarray<unsigned char>,std::__scalar_expr<unsigned char>>>::operator std::valarray<BOOL>(v878, &v890);
          v1 = v862;
          *(&v894 + 1) = *(*(v862 + 112) + (((*(v862 + 136) + v285) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 136) + v285);
          *(&v893 + 1) = v878;
          std::__val_expr<std::_BinaryOp<std::bit_and<BOOL>,std::valarray<BOOL>,std::__val_expr<std::_UnaryOp<std::logical_not<BOOL>,std::valarray<BOOL> const&>>>>::operator std::valarray<BOOL>(v881, &v893);
          nms::BOOLeanMaskToIndices<unsigned short>(__p, v881);
          if (v881[0])
          {
            if (v881[1] != v881[0])
            {
              v881[1] = v881[0];
            }

            operator delete(v881[0]);
            v881[0] = 0;
            v881[1] = 0;
          }

          if (v878[0])
          {
            if (v878[1] != v878[0])
            {
              v878[1] = v878[0];
            }

            operator delete(v878[0]);
          }

          v894 = 0u;
          v895 = 0u;
          v893 = 0u;
          LODWORD(v890) = 0;
          if (v885 != __p[1])
          {
            v288 = __p[1] + 8 * (v886 >> 11);
            v289 = (*v288 + 2 * (v886 & 0x7FF));
            v816 = *(__p[1] + (((*(&v886 + 1) + v886) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((*(&v886 + 1) + v886) & 0x7FF);
            if (v289 != v816)
            {
              break;
            }
          }

LABEL_593:
          std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](&v893);
          std::deque<unsigned short>::~deque[abi:ne200100](__p);
          v278 = ++v818;
          if (v829 <= v818)
          {
            v41 = *(v1 + 968);
            v277 = v824;
            goto LABEL_596;
          }
        }

        v290 = 0.0;
        v291 = 0.0;
        while (1)
        {
          v834 = *v289;
          v292 = *(&v893 + 1);
          v293 = v894;
          *(&v895 + 1) = 0;
          v294 = (v894 - *(&v893 + 1)) >> 3;
          if (v294 >= 3)
          {
            do
            {
              operator delete(*v292);
              v293 = v894;
              v292 = (*(&v893 + 1) + 8);
              *(&v893 + 1) = v292;
              v294 = (v894 - v292) >> 3;
            }

            while (v294 > 2);
          }

          if (v294 == 1)
          {
            break;
          }

          if (v294 == 2)
          {
            v295 = 1024;
LABEL_490:
            *&v895 = v295;
          }

          v296 = *v832;
          if (!*v832)
          {
            goto LABEL_497;
          }

          do
          {
            v297 = v296;
            v296 = *v296;
          }

          while (v296);
          if (v297 == v832 || v297[4] || (v298 = v297[5], v298 > 8))
          {
LABEL_497:
            v299 = 0.0;
          }

          else
          {
            v299 = dbl_1B42AFA98[v298];
          }

          v819 = v288;
          v821 = v289;
          v300 = v831 + *&v299 * v834;
          v301 = *(*(v280[11] + ((v280[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v280[14]);
          if (v300 < (*(*(v280[11] + ((v280[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v280[14] + 8) - v301) >> 3)
          {
            v290 = *(v301 + 8 * v300);
          }

          LOWORD(v890) = v818;
          v849 = v834;
          v302 = v818;
          v840 = v818;
          v303 = v818;
          WORD1(v890) = v834;
          v859 = v818;
          LOWORD(v881[0]) = v818;
          v854 = v834;
          v304 = v818;
          if (v829 > v818)
          {
            while (1)
            {
              v305 = *(v1 + 968);
              if (v305[5] <= v304)
              {
                std::__throw_out_of_range[abi:ne200100]("deque");
              }

              v306 = (*(v305[1] + 8 * ((v305[4] + v304) / 0x14)) + 200 * ((v305[4] + v304) % 0x14));
              v308 = (v306 + 23);
              v307 = v306[23];
              if (!v307)
              {
                goto LABEL_508;
              }

              do
              {
                v309 = v307;
                v307 = *v307;
              }

              while (v307);
              if (v309 == v308 || v309[4] || (v310 = v309[5] - 5, v310 > 3))
              {
LABEL_508:
                v311 = -1;
              }

              else
              {
                v311 = qword_1B42AFA78[v310];
              }

              v845 = v311;
              v312 = *(*(v1 + 640) + 8 * ((*(v1 + 664) + v827) / 0x55)) + 48 * ((*(v1 + 664) + v827) % 0x55);
              v313 = (*(*(v312 + 8) + 8 * ((*(v312 + 32) + v304) / 0x55)) + 48 * ((*(v312 + 32) + v304) % 0x55));
              if (v313[5])
              {
                v314 = (*(v313[1] + 8 * ((v313[4] + v834) / 0x55uLL)) + 48 * ((v313[4] + v834) % 0x55uLL));
                v315 = v314[1];
                if (v314[2] != v315)
                {
                  v316 = v314[4];
                  v317 = (v315 + 8 * (v316 >> 11));
                  v318 = (*v317 + 2 * (v316 & 0x7FF));
                  v319 = *(v315 + (((v314[5] + v316) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v314[5] + v316) & 0x7FF);
                  if (v318 != v319)
                  {
                    break;
                  }
                }
              }

LABEL_574:
              LOWORD(v881[0]) = ++v303;
              v304 = v303;
              v1 = v862;
              if (v829 <= v303)
              {
                v292 = *(&v893 + 1);
                v293 = v894;
                v302 = v840;
                goto LABEL_576;
              }
            }

            v320 = v854;
            while (2)
            {
              v321 = *v318;
              LOWORD(v878[0]) = *v318;
              v322 = *(v862 + 1104);
              if (v322 >= 2 && ((v323 = *(v280[17] + 8 * (v280[20] / 0x55uLL)) + 48 * (v280[20] % 0x55uLL), v324 = *(v306[17] + 8 * (v306[20] / 0x55uLL)) + 48 * (v306[20] % 0x55uLL), v325 = (*(*(v323 + 8) + (((*(v323 + 32) + v320) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v323 + 32) + v320) & 0x3FFLL)), v326 = v325[1] - *v325 + 1, v327 = (*(*(v324 + 8) + (((*(v324 + 32) + v321) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v324 + 32) + v321) & 0x3FF)), v328 = v327[1] - *v327, v329 = v328 + 1, v326 <= v328 + 1) ? (v330 = v328 + 1) : (v330 = v326), v330 <= v322))
              {
                if (v326 >= v329)
                {
                  if (v326 <= v329)
                  {
                    goto LABEL_518;
                  }

                  std::deque<std::pair<unsigned short,unsigned short>>::emplace_back<std::pair<unsigned short,unsigned short>&>(&v893, &v890);
                  if (v290 < v291)
                  {
                    v290 = v291;
                  }

                  v344 = *v308;
                  if (!*v308)
                  {
                    goto LABEL_562;
                  }

                  do
                  {
                    v345 = v344;
                    v344 = *v344;
                  }

                  while (v344);
                  if (v345 == v308 || v345[4] || (v346 = v345[5], v346 > 8))
                  {
LABEL_562:
                    v347 = 0.0;
                  }

                  else
                  {
                    v347 = dbl_1B42AFA98[v346];
                  }

                  v354 = v831 + *&v347 * v321;
                  v356 = (*(v306[11] + ((v306[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v306[14]);
                  v355 = *v356;
                  if (v354 < (v356[1] - *v356) >> 3)
                  {
                    *(v355 + 8 * v354) = v290;
                  }

                  v849 = v321;
                  LOWORD(v890) = v303;
                  WORD1(v890) = v321;
                  v840 = v303;
                  v859 = v303;
                  v854 = v321;
                  v320 = v321;
                }

                else
                {
                  std::deque<std::pair<unsigned short,unsigned short>>::emplace_back<unsigned short &,unsigned short &>(&v893, v881, v878);
                  if (v290 < v291)
                  {
                    v290 = v291;
                  }

                  v340 = *v832;
                  if (!*v832)
                  {
                    goto LABEL_552;
                  }

                  do
                  {
                    v341 = v340;
                    v340 = *v340;
                  }

                  while (v340);
                  if (v341 == v832 || v341[4] || (v342 = v341[5], v342 > 8))
                  {
LABEL_552:
                    v343 = 0.0;
                  }

                  else
                  {
                    v343 = dbl_1B42AFA98[v342];
                  }

                  v348 = v831 + *&v343 * v834;
                  v349 = *(*(v280[11] + ((v280[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v280[14]);
                  if (v348 < (*(*(v280[11] + ((v280[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v280[14] + 8) - v349) >> 3)
                  {
                    *(v349 + 8 * v348) = v290;
                  }
                }
              }

              else
              {
LABEL_518:
                v331 = 0.0;
                if ((*(v862 + 1113) & 1) == 0)
                {
                  if (*(v862 + 1112) == 1 && (v314[5] == 1 ? (v332 = v818 + v303 == 1) : (v332 = 0), v332))
                  {
                    if (!nms::PyramidNMS<unsigned short,double,unsigned char>::isQuadSizeEqualOrLarger(*(v862 + 968), v859, v320, v303, v321))
                    {
                      v350 = *v308;
                      if (!*v308)
                      {
                        goto LABEL_566;
                      }

                      do
                      {
                        v351 = v350;
                        v350 = *v350;
                      }

                      while (v350);
                      if (v351 == v308 || v351[4] || (v352 = v351[5], v352 > 8))
                      {
LABEL_566:
                        v353 = 0.0;
                      }

                      else
                      {
                        v353 = dbl_1B42AFA98[v352];
                      }

                      v337 = v845 + *&v353 * v321;
                      v357 = (*(v306[11] + ((v306[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v306[14]);
                      v338 = *v357;
                      v290 = 0.0;
                      v331 = v291;
                      if (v337 < (v357[1] - *v357) >> 3)
                      {
LABEL_532:
                        v331 = *(v338 + 8 * v337);
                      }
                    }
                  }

                  else
                  {
                    v333 = *v308;
                    if (!*v308)
                    {
                      goto LABEL_530;
                    }

                    do
                    {
                      v334 = v333;
                      v333 = *v333;
                    }

                    while (v333);
                    if (v334 == v308 || v334[4] || (v335 = v334[5], v335 > 8))
                    {
LABEL_530:
                      v336 = 0.0;
                    }

                    else
                    {
                      v336 = dbl_1B42AFA98[v335];
                    }

                    v337 = v845 + *&v336 * v321;
                    v339 = (*(v306[11] + ((v306[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v306[14]);
                    v338 = *v339;
                    if (v337 < (v339[1] - *v339) >> 3)
                    {
                      goto LABEL_532;
                    }

                    v331 = v291;
                  }
                }

                if (v331 <= v290)
                {
                  std::deque<std::pair<unsigned short,unsigned short>>::emplace_back<unsigned short &,unsigned short &>(&v893, v881, v878);
                  v291 = v331;
                }

                else
                {
                  std::deque<std::pair<unsigned short,unsigned short>>::emplace_back<std::pair<unsigned short,unsigned short>&>(&v893, &v890);
                  LOWORD(v890) = v303;
                  v849 = v321;
                  v840 = v303;
                  v859 = v303;
                  WORD1(v890) = v321;
                  v854 = v321;
                  v320 = v321;
                  v291 = v331;
                  v290 = v331;
                }
              }

              if ((++v318 - *v317) == 4096)
              {
                v358 = v317[1];
                ++v317;
                v318 = v358;
              }

              if (v318 == v319)
              {
                goto LABEL_574;
              }

              continue;
            }
          }

LABEL_576:
          if (v293 == v292)
          {
            v363 = *(v1 + 136);
            v364 = *(v1 + 112);
            v365 = v821;
          }

          else
          {
            v359 = &v292[v895 >> 10];
            v360 = *v359;
            v361 = (*v359 + 4 * (v895 & 0x3FF));
            v362 = *(v292 + (((*(&v895 + 1) + v895) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(&v895 + 1) + v895) & 0x3FF);
            v363 = *(v1 + 136);
            v364 = *(v1 + 112);
            v365 = v821;
            while (v361 != v362)
            {
              v366 = *v361;
              v367 = v361[1];
              v368 = *(*(v364 + (((v363 + v366) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v363 + v366));
              if (*(v368 + v367) != 1 || (v369 = *(*(*(v1 + 64) + (((*(v1 + 88) + v366) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 88) + v366)), *(v369 + v367) == 1))
              {
                nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v1, *v361, v361[1]);
                v363 = *(v1 + 136);
                v364 = *(v1 + 112);
                v369 = *(*(*(v1 + 64) + (((*(v1 + 88) + v366) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 88) + v366));
                v368 = *(*(v364 + (((v363 + v366) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v363 + v366));
                v360 = *v359;
              }

              *(v369 + v367) = 0;
              *(v368 + v367) = 1;
              *(*(*(*(v1 + 160) + (((*(v1 + 184) + v366) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 184) + v366)) + v367) = 0;
              v361 += 2;
              if (v361 - v360 == 4096)
              {
                v370 = v359[1];
                ++v359;
                v360 = v370;
                v361 = v370;
              }
            }
          }

          if (!*(*(*(*(v1 + 880) + (((*(v1 + 904) + v302) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 904) + v302)) + v849) && !*(*(*(*(v1 + 784) + (((*(v1 + 808) + v302) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 808) + v302)) + v849))
          {
            v371 = *(*(v364 + (((v363 + v302) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v363 + v302));
            if (!(*(*(*(*(v1 + 688) + (((*(v1 + 712) + v302) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 712) + v302)) + v849) | *(v371 + v849)))
            {
              *(*(*(*(v1 + 64) + (((*(v1 + 88) + v302) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 88) + v302)) + v849) = 1;
              *(v371 + v849) = 0;
              *(*(*(*(v1 + 160) + (((*(v1 + 184) + v302) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 184) + v302)) + v849) = 0;
            }
          }

          v289 = v365 + 1;
          v288 = v819;
          if ((v289 - *v819) == 4096)
          {
            v288 = v819 + 1;
            v289 = v819[1];
          }

          if (v289 == v816)
          {
            goto LABEL_593;
          }
        }

        v295 = 512;
        goto LABEL_490;
      }
    }
  }

LABEL_596:
  v825 = v277;
  if (*(v1 + 1099) == 1)
  {
    v885 = 0u;
    v886 = 0u;
    *__p = 0u;
    if (v41)
    {
      v372 = *(v41 + 40);
      LOWORD(v875[0]) = 0;
      if (v372)
      {
        v373 = 0;
        v374 = 0;
        do
        {
          v375 = (*(*(v1 + 688) + (((*(v1 + 712) + v374) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 712) + v374));
          LOBYTE(v872[0]) = 0;
          v376 = v375[1] - *v375;
          *(&v890 + 1) = v375;
          *&v891 = v872;
          *(&v891 + 1) = v376;
          std::__val_expr<std::_BinaryOp<std::greater<unsigned char>,std::valarray<unsigned char>,std::__scalar_expr<unsigned char>>>::operator std::valarray<BOOL>(v878, &v890);
          v377 = (*(*(v1 + 784) + (((*(v1 + 808) + v373) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 808) + v373));
          if (v377[1] != *v377)
          {
            operator new();
          }

          v881[0] = 0;
          v881[1] = 0;
          if (v878[1] != v878[0])
          {
            operator new();
          }

          nms::BOOLeanMaskToIndices<unsigned short>(&v893, v881);
          if (v878[0])
          {
            if (v878[1] != v878[0])
            {
              v878[1] = v878[0];
            }

            operator delete(v878[0]);
          }

          if (v894 != *(&v893 + 1))
          {
            v378 = (*(&v893 + 1) + 8 * (v895 >> 11));
            v379 = (*v378 + 2 * (v895 & 0x7FF));
            v380 = *(*(&v893 + 1) + (((*(&v895 + 1) + v895) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((*(&v895 + 1) + v895) & 0x7FF);
            while (v379 != v380)
            {
              LOWORD(v890) = *v379;
              std::deque<std::pair<unsigned short,unsigned short>>::emplace_back<unsigned short &,unsigned short &>(__p, v875, &v890);
              if ((++v379 - *v378) == 4096)
              {
                v381 = v378[1];
                ++v378;
                v379 = v381;
              }
            }
          }

          std::deque<unsigned short>::~deque[abi:ne200100](&v893);
          LOWORD(v875[0]) = ++v373;
          v374 = v373;
        }

        while (v372 > v373);
        v382 = *(&v886 + 1);
        if (*(&v886 + 1))
        {
          while (1)
          {
            v383 = (*(__p[1] + ((v886 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v886 & 0x3FF));
            v384 = *v383;
            v385 = v383[1];
            *&v886 = v886 + 1;
            *(&v886 + 1) = v382 - 1;
            if (v886 >= 0x800)
            {
              operator delete(*__p[1]);
              __p[1] = __p[1] + 8;
              *&v886 = v886 - 1024;
            }

            if ((*(*(*(*(v1 + 112) + (((*(v1 + 136) + v384) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 136) + v384)) + v385) & 1) == 0)
            {
              break;
            }

LABEL_707:
            v382 = *(&v886 + 1);
            if (!*(&v886 + 1))
            {
              goto LABEL_708;
            }
          }

          v894 = 0u;
          v895 = 0u;
          v893 = 0u;
          nms::PyramidNMS<unsigned short,double,unsigned char>::getContainedDatums(v1, v384, v385, &v893);
          v386 = (v895 >> 7) & 0x1FFFFFFFFFFFFF8;
          v387 = (*(&v893 + 1) + v386);
          if (v894 != *(&v893 + 1))
          {
            v388 = (*v387 + 4 * (v895 & 0x3FF));
            v389 = ((*(&v895 + 1) + v895) >> 7) & 0x1FFFFFFFFFFFFF8;
            v390 = *(*(&v893 + 1) + v389) + 4 * ((WORD4(v895) + v895) & 0x3FF);
            v890 = 0u;
            v891 = 0u;
            v892 = 0u;
            if (v390 == v388)
            {
              v395 = 0;
              v394 = 0;
              v393 = 0;
            }

            else
            {
              v391 = ((v390 - *(*(&v893 + 1) + v389)) >> 2) + ((v389 - v386) << 7);
              v392 = v388 - *(*(&v893 + 1) + v386);
              v393 = v391 - (v392 >> 2);
              if (v391 == v392 >> 2)
              {
                v395 = 0;
                v394 = 0;
              }

              else
              {
                std::deque<std::pair<unsigned short,unsigned short>>::__add_back_capacity(&v890, v391 - (v392 >> 2));
                v394 = *(&v892 + 1);
                v395 = (*(&v890 + 1) + 8 * ((v892 + *(&v892 + 1)) >> 10));
                if (v891 != *(&v890 + 1))
                {
                  v396 = *v395 + 4 * ((v892 + WORD4(v892)) & 0x3FF);
LABEL_627:
                  v397 = std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>::operator+[abi:ne200100](v395, v396, v393);
                  while (v396 != v398)
                  {
                    v399 = (v395 == v397 ? v398 : *v395 + 4096);
                    if (v396 == v399)
                    {
                      v399 = v396;
                    }

                    else
                    {
                      v400 = v396;
                      do
                      {
                        v401 = *v388++;
                        *v400++ = v401;
                        if ((v388 - *v387) == 4096)
                        {
                          v402 = v387[1];
                          ++v387;
                          v388 = v402;
                        }
                      }

                      while (v400 != v399);
                      v394 = *(&v892 + 1);
                    }

                    v394 += (v399 - v396) >> 2;
                    *(&v892 + 1) = v394;
                    if (v395 == v397)
                    {
                      break;
                    }

                    v403 = v395[1];
                    ++v395;
                    v396 = v403;
                  }

                  v882 = 0u;
                  v883 = 0u;
                  v880 = 0u;
                  *v881 = 0u;
                  *v878 = 0u;
                  v879 = 0u;
                  nms::PyramidNMS<unsigned short,double,unsigned char>::processContainmentOfOneDatum(v1, v384, v385, &v890, v878, v881);
                  v404 = *(v1 + 136);
                  v405 = *(v1 + 112);
                  v406 = *(*(v405 + (((v404 + v384) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v404 + v384));
                  v407 = *(v406 + v385);
                  v408 = *(v1 + 184);
                  v409 = *(v1 + 160);
                  if ((v407 & 1) != 0 || (*(*(*(v409 + (((v408 + v384) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v408 + v384)) + v385) & 1) != 0 || *(v1 + 1128) != 1)
                  {
                    goto LABEL_679;
                  }

                  v876 = 0u;
                  v877 = 0u;
                  *v875 = 0u;
                  if (!nms::PyramidNMS<unsigned short,double,unsigned char>::getOverlappingDatums(v1, v384, v385, v875))
                  {
LABEL_678:
                    std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](v875);
                    v404 = *(v1 + 136);
                    v405 = *(v1 + 112);
                    v408 = *(v1 + 184);
                    v409 = *(v1 + 160);
                    v406 = *(*(v405 + (((v404 + v384) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v404 + v384));
                    v407 = *(v406 + v385);
LABEL_679:
                    v434 = *(*(v409 + (((v408 + v384) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v408 + v384));
                    v435 = *(v434 + v385) | v407;
                    v436 = *(v1 + 88);
                    v437 = *(v1 + 64);
                    v438 = *(*(v437 + (((v436 + v384) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v436 + v384));
                    *(v438 + v385) = v435 ^ 1;
                    if (v435)
                    {
                      if (*(v406 + v385) == 1 && v894 != *(&v893 + 1))
                      {
                        v439 = (*(&v893 + 1) + 8 * (v895 >> 10));
                        v440 = (*v439 + 4 * (v895 & 0x3FF));
                        v441 = *(*(&v893 + 1) + (((*(&v895 + 1) + v895) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(&v895 + 1) + v895) & 0x3FF);
                        while (v440 != v441)
                        {
                          nms::PyramidNMS<unsigned short,double,unsigned char>::computeConstitutedIndices(v875, v1, *v440, v440[1], (v1 + 104));
                          if (!*(&v877 + 1))
                          {
                            std::deque<std::pair<unsigned short,unsigned short>>::emplace_back<std::pair<unsigned short,unsigned short>&>(__p, v440);
                          }

                          std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](v875);
                          v440 += 2;
                          if ((v440 - *v439) == 4096)
                          {
                            v442 = v439[1];
                            ++v439;
                            v440 = v442;
                          }
                        }
                      }
                    }

                    else
                    {
                      *(v438 + v385) = 1;
                      *(v406 + v385) = 0;
                      *(v434 + v385) = 0;
                      if (v894 != *(&v893 + 1))
                      {
                        v443 = (*(&v893 + 1) + 8 * (v895 >> 10));
                        v444 = *v443;
                        v445 = &(*v443)[2 * (v895 & 0x3FF)];
                        v446 = *(*(&v893 + 1) + (((*(&v895 + 1) + v895) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(&v895 + 1) + v895) & 0x3FF);
                        while (v445 != v446)
                        {
                          v447 = *v445;
                          v448 = v445[1];
                          if (v882 == v881[1])
                          {
                            goto LABEL_700;
                          }

                          v449 = (v881[1] + 8 * (v883 >> 10));
                          v450 = *v449;
                          v451 = &(*v449)[2 * (v883 & 0x3FF)];
                          v452 = *(v881[1] + (((*(&v883 + 1) + v883) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(&v883 + 1) + v883) & 0x3FF);
                          if (v451 != v452)
                          {
                            while (__PAIR64__(v451[1], *v451) != __PAIR64__(v448, v447))
                            {
                              v451 += 2;
                              if (v451 - v450 == 4096)
                              {
                                v453 = v449[1];
                                ++v449;
                                v450 = v453;
                                v451 = v453;
                              }

                              if (v451 == v452)
                              {
                                goto LABEL_700;
                              }
                            }
                          }

                          if (v451 == v452)
                          {
LABEL_700:
                            v456 = *(*(v405 + (((v404 + v447) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v404 + v447));
                            if (*(v456 + v448) != 1 || (v457 = *(*(v437 + (((v436 + v447) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v436 + v447)), *(v457 + v448) == 1))
                            {
                              nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v1, *v445, v445[1]);
                              v436 = *(v1 + 88);
                              v437 = *(v1 + 64);
                              v404 = *(v1 + 136);
                              v405 = *(v1 + 112);
                              v457 = *(*(v437 + (((v436 + v447) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v436 + v447));
                              v456 = *(*(v405 + (((v404 + v447) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v404 + v447));
                              v408 = *(v1 + 184);
                              v409 = *(v1 + 160);
                              v444 = *v443;
                            }

                            v455 = 0;
                            *(v457 + v448) = 0;
                            *(v456 + v448) = 1;
                            v454 = v408 + v447;
                          }

                          else
                          {
                            *(*(*(v437 + (((v436 + v447) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v436 + v447)) + v448) = 0;
                            *(*(*(v405 + (((v404 + v447) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v404 + v447)) + v448) = 0;
                            v454 = v408 + v447;
                            v455 = 1;
                          }

                          *(*(*(v409 + ((v454 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v454) + v448) = v455;
                          v445 += 2;
                          if (v445 - v444 == 4096)
                          {
                            v458 = v443[1];
                            ++v443;
                            v444 = v458;
                            v445 = v458;
                          }
                        }
                      }
                    }

                    std::deque<std::pair<int,int>>::~deque[abi:ne200100](v878);
                    std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](v881);
                    std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](&v890);
                    std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](&v893);
                    goto LABEL_707;
                  }

                  v410 = v878[1];
                  *(&v880 + 1) = 0;
                  v411 = (v879 - v878[1]) >> 3;
                  if (v411 >= 3)
                  {
                    do
                    {
                      operator delete(*v410);
                      v410 = (v878[1] + 8);
                      v878[1] = v410;
                      v411 = (v879 - v410) >> 3;
                    }

                    while (v411 > 2);
                  }

                  if (v411 == 1)
                  {
                    v412 = 256;
                  }

                  else
                  {
                    if (v411 != 2)
                    {
                      goto LABEL_652;
                    }

                    v412 = 512;
                  }

                  *&v880 = v412;
LABEL_652:
                  if (v876 != v875[1])
                  {
                    v413 = v875[1] + 8 * (v877 >> 10);
                    v414 = (*v413 + 4 * (v877 & 0x3FF));
                    v415 = *(v875[1] + (((*(&v877 + 1) + v877) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(&v877 + 1) + v877) & 0x3FF);
                    while (v414 != v415)
                    {
                      v872[0] = (*v414 ^ (16 * v414[1]));
                      std::deque<unsigned long>::push_back(v878, v872);
                      v414 += 2;
                      if ((v414 - *v413) == 4096)
                      {
                        v416 = v413[1];
                        ++v413;
                        v414 = v416;
                      }
                    }
                  }

                  v417 = *(&v890 + 1);
                  v418 = v891;
                  *(&v892 + 1) = 0;
                  v419 = (v891 - *(&v890 + 1)) >> 3;
                  if (v419 >= 3)
                  {
                    do
                    {
                      operator delete(*v417);
                      v418 = v891;
                      v417 = (*(&v890 + 1) + 8);
                      *(&v890 + 1) = v417;
                      v419 = (v891 - v417) >> 3;
                    }

                    while (v419 > 2);
                  }

                  if (v419 == 1)
                  {
                    v420 = 512;
                  }

                  else
                  {
                    if (v419 != 2)
                    {
                      v420 = v892;
                      goto LABEL_665;
                    }

                    v420 = 1024;
                  }

                  *&v892 = v420;
LABEL_665:
                  v421 = *(&v892 + 1) + v420;
                  v422 = &v417[v421 >> 10];
                  if (v418 == v417)
                  {
                    v423 = 0;
                  }

                  else
                  {
                    v423 = *v422 + 4 * (v421 & 0x3FF);
                  }

                  v424 = (*(&v893 + 1) + 8 * (v895 >> 10));
                  if (v894 == *(&v893 + 1))
                  {
                    v425 = 0;
                    v427 = 0;
                    v426 = (*(&v893 + 1) + 8 * ((*(&v895 + 1) + v895) >> 10));
                  }

                  else
                  {
                    v425 = (*v424 + 4 * (v895 & 0x3FF));
                    v426 = (*(&v893 + 1) + 8 * ((*(&v895 + 1) + v895) >> 10));
                    v427 = &(*v426)[(*(&v895 + 1) + v895) & 0x3FF];
                  }

                  std::deque<std::pair<unsigned short,unsigned short>>::insert<std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>,0>(&v890, v422, v423, v424, v425, v426, v427);
                  v428 = (*(&v890 + 1) + 8 * ((v892 + *(&v892 + 1)) >> 10));
                  if (v891 == *(&v890 + 1))
                  {
                    v429 = 0;
                  }

                  else
                  {
                    v429 = *v428 + 4 * ((v892 + WORD4(v892)) & 0x3FF);
                  }

                  v430 = (v875[1] + 8 * (v877 >> 10));
                  if (v876 == v875[1])
                  {
                    v431 = 0;
                    v433 = 0;
                    v432 = (v875[1] + 8 * ((*(&v877 + 1) + v877) >> 10));
                  }

                  else
                  {
                    v431 = (*v430 + 4 * (v877 & 0x3FF));
                    v432 = (v875[1] + 8 * ((*(&v877 + 1) + v877) >> 10));
                    v433 = &(*v432)[(*(&v877 + 1) + v877) & 0x3FF];
                  }

                  std::deque<std::pair<unsigned short,unsigned short>>::insert<std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>,0>(&v890, v428, v429, v430, v431, v432, v433);
                  nms::PyramidNMS<unsigned short,double,unsigned char>::processContainmentOfOneDatum(v1, v384, v385, &v890, v878, v881);
                  goto LABEL_678;
                }
              }
            }

            v396 = 0;
            goto LABEL_627;
          }

          v388 = 0;
          v395 = 0;
          v394 = 0;
          v393 = 0;
          v396 = 0;
          v891 = 0u;
          v892 = 0u;
          v890 = 0u;
          goto LABEL_627;
        }
      }
    }

LABEL_708:
    std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](__p);
    v41 = *(v1 + 968);
  }

  if (*(v1 + 1100) != 1)
  {
    goto LABEL_909;
  }

  if (v41)
  {
    v41 = *(v41 + 40);
    v885 = 0u;
    v886 = 0u;
    *__p = 0u;
    LOWORD(v881[0]) = 0;
    v860 = v41;
    if (v41)
    {
      v459 = 0;
      v460 = 0;
      do
      {
        v461 = (*(*(v1 + 880) + (((*(v1 + 904) + v460) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 904) + v460));
        v463 = *v461;
        v462 = v461[1];
        v890 = 0uLL;
        if (v462 != v463)
        {
          operator new();
        }

        nms::BOOLeanMaskToIndices<unsigned short>(&v893, &v890);
        if (v894 != *(&v893 + 1))
        {
          v464 = (*(&v893 + 1) + 8 * (v895 >> 11));
          v465 = (*v464 + 2 * (v895 & 0x7FF));
          v466 = *(*(&v893 + 1) + (((*(&v895 + 1) + v895) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((*(&v895 + 1) + v895) & 0x7FF);
          while (v465 != v466)
          {
            LOWORD(v890) = *v465;
            std::deque<std::pair<unsigned short,unsigned short>>::emplace_back<unsigned short &,unsigned short &>(__p, v881, &v890);
            if ((++v465 - *v464) == 4096)
            {
              v467 = v464[1];
              ++v464;
              v465 = v467;
            }
          }
        }

        std::deque<unsigned short>::~deque[abi:ne200100](&v893);
        LOWORD(v881[0]) = ++v459;
        v460 = v459;
      }

      while (v860 > v459);
      v850 = 0;
      v41 = v886;
      v468 = __p[1];
      v469 = v885;
      goto LABEL_725;
    }

    v860 = 0;
    v469 = 0;
    v468 = 0;
  }

  else
  {
    v860 = 0;
    v469 = 0;
    v468 = 0;
    v885 = 0u;
    v886 = 0u;
    *__p = 0u;
  }

  v850 = 1;
LABEL_725:
  v894 = 0u;
  v895 = 0u;
  v892 = 0u;
  v893 = 0u;
  v890 = 0u;
  v891 = 0u;
  v882 = 0u;
  v883 = 0u;
  v880 = 0u;
  *v881 = 0u;
  v470 = v41 >> 10;
  *v878 = 0u;
  v879 = 0u;
  if (v469 != v468)
  {
    v471 = &v468[8 * v470];
    v472 = (*v471 + 4 * (v41 & 0x3FF));
    v473 = *&v468[((*(&v886 + 1) + v41) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((*(&v886 + 1) + v41) & 0x3FF);
    if (v472 != v473)
    {
      while (1)
      {
        v474 = *v472;
        v475 = v472[1];
        if (*(*(*(*(v862 + 160) + (((*(v862 + 184) + v474) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 184) + v474)) + v475) == 1)
        {
          break;
        }

LABEL_794:
        v472 += 2;
        if ((v472 - *v471) == 4096)
        {
          v527 = *(v471 + 1);
          v471 += 8;
          v472 = v527;
        }

        if (v472 == v473)
        {
          v41 = v886;
          v468 = __p[1];
          v469 = v885;
          v470 = v886 >> 10;
          v1 = v862;
          goto LABEL_798;
        }
      }

      v476 = *(v862 + 968);
      if (v476[5] <= v474)
      {
        std::__throw_out_of_range[abi:ne200100]("deque");
      }

      v477 = (*(v476[1] + 8 * ((v476[4] + v474) / 0x14)) + 200 * ((v476[4] + v474) % 0x14));
      v478 = v477 + 23;
      v479 = v477[23];
      if (!v479)
      {
        goto LABEL_736;
      }

      v480 = v477[23];
      do
      {
        v481 = v480;
        v480 = *v480;
      }

      while (v480);
      if (v481 == v478 || v481[4] || (v482 = v481[5] - 5, v482 > 3))
      {
LABEL_736:
        v483 = -1;
        if (!v479)
        {
          goto LABEL_742;
        }
      }

      else
      {
        v483 = qword_1B42AFA78[v482];
      }

      do
      {
        v484 = v479;
        v479 = *v479;
      }

      while (v479);
      if (v484 != v478 && !v484[4])
      {
        v485 = v484[5];
        if (v485 <= 8)
        {
          v486 = dbl_1B42AFA98[v485];
          goto LABEL_743;
        }
      }

LABEL_742:
      v486 = 0.0;
LABEL_743:
      v487 = (*(v477[11] + ((v477[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v477[14]);
      v488 = v483 + *&v486 * v475;
      v489 = 0.0;
      if (v488 < (v487[1] - *v487) >> 3)
      {
        v489 = *(*v487 + 8 * v488);
      }

      v490 = *(&v890 + 1);
      *(&v892 + 1) = 0;
      v491 = (v891 - *(&v890 + 1)) >> 3;
      if (v491 >= 3)
      {
        do
        {
          operator delete(*v490);
          v490 = (*(&v890 + 1) + 8);
          *(&v890 + 1) = v490;
          v491 = (v891 - v490) >> 3;
        }

        while (v491 > 2);
      }

      if (v491 == 1)
      {
        v492 = 512;
      }

      else
      {
        if (v491 != 2)
        {
          goto LABEL_752;
        }

        v492 = 1024;
      }

      *&v892 = v492;
LABEL_752:
      v493 = v881[1];
      *(&v883 + 1) = 0;
      v494 = (v882 - v881[1]) >> 3;
      if (v494 >= 3)
      {
        do
        {
          operator delete(*v493);
          v493 = (v881[1] + 8);
          v881[1] = v493;
          v494 = (v882 - v493) >> 3;
        }

        while (v494 > 2);
      }

      if (v494 == 1)
      {
        v495 = 512;
      }

      else
      {
        if (v494 != 2)
        {
          goto LABEL_759;
        }

        v495 = 1024;
      }

      *&v883 = v495;
LABEL_759:
      v496 = v878[1];
      *(&v880 + 1) = 0;
      v497 = (v879 - v878[1]) >> 3;
      if (v497 >= 3)
      {
        do
        {
          operator delete(*v496);
          v496 = (v878[1] + 8);
          v878[1] = v496;
          v497 = (v879 - v496) >> 3;
        }

        while (v497 > 2);
      }

      if (v497 == 1)
      {
        v498 = 512;
      }

      else
      {
        if (v497 != 2)
        {
          goto LABEL_766;
        }

        v498 = 1024;
      }

      *&v880 = v498;
LABEL_766:
      ContainedDatums = nms::PyramidNMS<unsigned short,double,unsigned char>::getContainedDatums(v862, v474, v475, v881);
      if (ContainedDatums | nms::PyramidNMS<unsigned short,double,unsigned char>::getOverlappingDatums(v862, v474, v475, v878))
      {
        v500 = (*(&v890 + 1) + 8 * ((v892 + *(&v892 + 1)) >> 10));
        if (v891 == *(&v890 + 1))
        {
          v501 = 0;
        }

        else
        {
          v501 = *v500 + 4 * ((v892 + WORD4(v892)) & 0x3FF);
        }

        v502 = (v881[1] + 8 * (v883 >> 10));
        if (v882 == v881[1])
        {
          v503 = 0;
          v505 = 0;
          v504 = (v881[1] + 8 * ((*(&v883 + 1) + v883) >> 10));
        }

        else
        {
          v503 = (*v502 + 4 * (v883 & 0x3FF));
          v504 = (v881[1] + 8 * ((*(&v883 + 1) + v883) >> 10));
          v505 = &(*v504)[(*(&v883 + 1) + v883) & 0x3FF];
        }

        std::deque<std::pair<unsigned short,unsigned short>>::insert<std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>,0>(&v890, v500, v501, v502, v503, v504, v505);
        v506 = (*(&v890 + 1) + 8 * ((v892 + *(&v892 + 1)) >> 10));
        if (v891 == *(&v890 + 1))
        {
          v507 = 0;
        }

        else
        {
          v507 = *v506 + 4 * ((v892 + WORD4(v892)) & 0x3FF);
        }

        v508 = (v878[1] + 8 * (v880 >> 10));
        if (v879 == v878[1])
        {
          v509 = 0;
          v511 = 0;
          v510 = (v878[1] + 8 * ((*(&v880 + 1) + v880) >> 10));
        }

        else
        {
          v509 = (*v508 + 4 * (v880 & 0x3FF));
          v510 = (v878[1] + 8 * ((*(&v880 + 1) + v880) >> 10));
          v511 = &(*v510)[(*(&v880 + 1) + v880) & 0x3FF];
        }

        std::deque<std::pair<unsigned short,unsigned short>>::insert<std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>,0>(&v890, v506, v507, v508, v509, v510, v511);
        if (nms::PyramidNMS<unsigned short,double,unsigned char>::computeAggregatedScore(v862, &v890) <= v489)
        {
          if (v891 != *(&v890 + 1))
          {
            v515 = (*(&v890 + 1) + 8 * (v892 >> 10));
            v516 = *v515;
            v517 = &(*v515)[2 * (v892 & 0x3FF)];
            v518 = *(*(&v890 + 1) + (((*(&v892 + 1) + v892) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(&v892 + 1) + v892) & 0x3FF);
            if (v517 != v518)
            {
              v519 = *(v862 + 136);
              v520 = *(v862 + 112);
              do
              {
                v521 = *v517;
                v522 = v517[1];
                v523 = *(*(v520 + (((v519 + v521) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v519 + v521));
                if (*(v523 + v522) == 1 && (v524 = *(*(*(v862 + 64) + (((*(v862 + 88) + v521) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 88) + v521)), *(v524 + v522) != 1))
                {
                  v525 = v862;
                }

                else
                {
                  v525 = v862;
                  nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v862, *v517, v517[1]);
                  v519 = *(v862 + 136);
                  v520 = *(v862 + 112);
                  v524 = *(*(v525[8] + (((v525[11] + v521) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v525 + 88) + v521));
                  v523 = *(*(v520 + (((v519 + v521) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v519 + v521));
                  v516 = *v515;
                }

                *(v524 + v522) = 0;
                *(v523 + v522) = 1;
                *(*(*(v525[20] + (((v525[23] + v521) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v525 + 184) + v521)) + v522) = 0;
                v517 += 2;
                if (v517 - v516 == 4096)
                {
                  v526 = v515[1];
                  ++v515;
                  v516 = v526;
                  v517 = v526;
                }
              }

              while (v517 != v518);
            }
          }
        }

        else
        {
          v512 = v862;
          v513 = *(*(*(v862 + 112) + (((*(v862 + 136) + v474) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 136) + v474));
          if (*(v513 + v475) != 1 || (v514 = *(*(*(v862 + 64) + (((*(v862 + 88) + v474) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 88) + v474)), *(v514 + v475) == 1))
          {
            nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v862, v474, v475);
            v512 = v862;
            v514 = *(*(*(v862 + 64) + (((*(v862 + 88) + v474) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 88) + v474));
            v513 = *(*(*(v862 + 112) + (((*(v862 + 136) + v474) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 136) + v474));
          }

          *(v514 + v475) = 0;
          *(v513 + v475) = 1;
          *(*(*(*(v512 + 160) + (((*(v512 + 184) + v474) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v512 + 184) + v474)) + v475) = 0;
        }
      }

      goto LABEL_794;
    }
  }

LABEL_798:
  v876 = 0u;
  v877 = 0u;
  v874 = 0u;
  *v875 = 0u;
  *v872 = 0u;
  v873 = 0u;
  if (v469 == v468)
  {
    goto LABEL_908;
  }

  v528 = &v468[8 * v470];
  v529 = *v528;
  v530 = (*v528 + 4 * (v41 & 0x3FF));
  v531 = *(&v886 + 1) + v41;
  v532 = *&v468[(v531 >> 7) & 0x1FFFFFFFFFFFFF8];
  v533 = v531 & 0x3FF;
  v534 = (v532 + 4 * v533);
  if (v530 == v534)
  {
    goto LABEL_908;
  }

  v846 = (v532 + 4 * v533);
  do
  {
    v535 = *v530;
    v536 = v530[1];
    if (*(*(*(*(v1 + 64) + (((*(v1 + 88) + v535) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 88) + v535)) + v536))
    {
      goto LABEL_899;
    }

    v537 = *(v1 + 136);
    v538 = *(v1 + 112);
    if (*(*(*(v538 + (((v537 + v535) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v537 + v535)) + v536))
    {
      goto LABEL_899;
    }

    v539 = *(v1 + 968);
    if (v539[5] <= v535)
    {
      std::__throw_out_of_range[abi:ne200100]("deque");
    }

    v540 = (*(v539[1] + 8 * ((v539[4] + v535) / 0x14)) + 200 * ((v539[4] + v535) % 0x14));
    v541 = v540 + 23;
    v542 = v540[23];
    if (!v542)
    {
      goto LABEL_811;
    }

    v543 = v540[23];
    do
    {
      v544 = v543;
      v543 = *v543;
    }

    while (v543);
    if (v544 == v541 || v544[4] || (v545 = v544[5] - 5, v545 > 3))
    {
LABEL_811:
      v546 = -1;
    }

    else
    {
      v546 = qword_1B42AFA78[v545];
    }

    v855 = v546;
    if (!v542)
    {
      goto LABEL_818;
    }

    do
    {
      v547 = v542;
      v542 = *v542;
    }

    while (v542);
    if (v547 == v541 || v547[4] || (v548 = v547[5], v548 > 8))
    {
LABEL_818:
      v549 = 0.0;
    }

    else
    {
      v549 = dbl_1B42AFA98[v548];
    }

    v550 = (*(v540[11] + ((v540[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v540[14]);
    v551 = v855 + *&v549 * v536;
    v552 = 0.0;
    if (v551 < (v550[1] - *v550) >> 3)
    {
      v552 = *(*v550 + 8 * v551);
    }

    v870 = 0u;
    v871 = 0u;
    *v869 = 0u;
    LOWORD(v865) = 0;
    if (v850)
    {
      v553 = 0;
      goto LABEL_868;
    }

    v554 = 0;
    v555 = 0;
    v553 = 0;
    while (1)
    {
      v556 = *(*(v1 + 928) + 8 * ((*(v1 + 952) + v535) / 0x55)) + 48 * ((*(v1 + 952) + v535) % 0x55);
      v557 = *(*(v556 + 8) + 8 * ((*(v556 + 32) + v555) / 0x55uLL)) + 48 * ((*(v556 + 32) + v555) % 0x55uLL);
      v558 = (*(*(v557 + 8) + 8 * ((*(v557 + 32) + v536) / 0x55uLL)) + 48 * ((*(v557 + 32) + v536) % 0x55uLL));
      if (*(v1 + 1224) == 0.0)
      {
        goto LABEL_836;
      }

      if (!v535 && v554 == 1)
      {
        break;
      }

      if (v535 != 1 || v554 || v558[5] != 1)
      {
        goto LABEL_836;
      }

      v559 = *(*(v558[1] + ((v558[4] >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * (v558[4] & 0x7FFLL));
      v560 = *(*(*(v1 + 112) + ((*(v1 + 136) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(v1 + 136));
      if (*(v560 + v559) != 1 || (v561 = *(*(*(v1 + 64) + ((*(v1 + 88) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(v1 + 88)), *(v561 + v559) == 1))
      {
        nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v1, 0, v559);
        v561 = *(*(*(v1 + 64) + ((*(v1 + 88) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(v1 + 88));
        v560 = *(*(*(v1 + 112) + ((*(v1 + 136) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(v1 + 136));
      }

      *(v561 + v559) = 0;
      *(v560 + v559) = 1;
      *(*(*(*(v1 + 160) + ((*(v1 + 184) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(v1 + 184)) + v559) = 0;
LABEL_865:
      LOWORD(v865) = ++v554;
      v555 = v554;
      v1 = v862;
      if (v860 <= v554)
      {
        v537 = *(v862 + 136);
        v538 = *(v862 + 112);
LABEL_867:
        v534 = v846;
        goto LABEL_868;
      }
    }

    if (v558[5] != 1)
    {
LABEL_836:
      v562 = v558[1];
      if (v558[2] != v562)
      {
        v563 = v558[4];
        v564 = (v562 + 8 * (v563 >> 11));
        v565 = *v564;
        v566 = &(*v564)[v563 & 0x7FF];
        v567 = *(v562 + (((v558[5] + v563) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v558[5] + v563) & 0x7FF);
        if (v566 != v567)
        {
          v568 = *(v1 + 88);
          v569 = *(v1 + 64);
          while (*(*(*(v569 + (((v568 + v554) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v568 + v554)) + *v566) != 1)
          {
            if (++v566 - v565 == 4096)
            {
              v570 = v564[1];
              ++v564;
              v565 = v570;
              v566 = v570;
            }

            if (v566 == v567)
            {
              goto LABEL_848;
            }
          }

          v571 = *(*(*(v1 + 112) + (((*(v1 + 136) + v535) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 136) + v535));
          if (*(v571 + v536) != 1 || (v572 = *(*(v569 + (((v568 + v535) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v568 + v535)), *(v572 + v536) == 1))
          {
            nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v1, v535, v536);
            v572 = *(*(*(v1 + 64) + (((*(v1 + 88) + v535) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 88) + v535));
            v571 = *(*(*(v1 + 112) + (((*(v1 + 136) + v535) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 136) + v535));
          }

          *(v572 + v536) = 0;
          *(v571 + v536) = 1;
          *(*(*(*(v1 + 160) + (((*(v1 + 184) + v535) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 184) + v535)) + v536) = 0;
        }
      }

LABEL_848:
      v537 = *(v1 + 136);
      v538 = *(v1 + 112);
      if (*(*(*(v538 + (((v537 + v535) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v537 + v535)) + v536))
      {
        goto LABEL_867;
      }

      v573 = v558[1];
      if (v558[2] != v573)
      {
        v574 = v558[4];
        v575 = v558[5];
        v576 = (v573 + 8 * (v574 >> 11));
        v577 = *v576;
        v578 = &(*v576)[2 * (v574 & 0x7FF)];
        v579 = *(v573 + (((v575 + v574) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v575 + v574) & 0x7FF);
        while (v578 != v579)
        {
          v580 = *v578;
          LOWORD(v863) = *v578;
          if (v885 == __p[1])
          {
            goto LABEL_862;
          }

          v581 = (__p[1] + 8 * (v886 >> 10));
          v582 = *v581;
          v583 = &(*v581)[2 * (v886 & 0x3FF)];
          v584 = *(__p[1] + (((*(&v886 + 1) + v886) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(&v886 + 1) + v886) & 0x3FF);
          if (v583 != v584)
          {
            while (*v583 != v554 || v583[1] != v580)
            {
              v583 += 2;
              if (v583 - v582 == 4096)
              {
                v585 = v581[1];
                ++v581;
                v582 = v585;
                v583 = v585;
              }

              if (v583 == v584)
              {
                goto LABEL_862;
              }
            }
          }

          if (v583 == v584)
          {
LABEL_862:
            ++v553;
          }

          else
          {
            std::deque<std::pair<unsigned short,unsigned short>>::emplace_back<unsigned short &,unsigned short &>(v869, &v865, &v863);
            v577 = *v576;
          }

          v578 += 2;
          if (v578 - v577 == 4096)
          {
            v586 = v576[1];
            ++v576;
            v577 = v586;
            v578 = v586;
          }
        }
      }

      goto LABEL_865;
    }

    v537 = *(v1 + 136);
    v538 = *(v1 + 112);
    v617 = *(*(v538 + ((v537 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v537);
    if (*(v617 + v536) == 1 && (v618 = *(*(*(v1 + 64) + ((*(v1 + 88) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(v1 + 88)), *(v618 + v536) != 1))
    {
      v534 = v846;
    }

    else
    {
      nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v1, 0, v536);
      v534 = v846;
      v537 = *(v1 + 136);
      v538 = *(v1 + 112);
      v618 = *(*(*(v1 + 64) + ((*(v1 + 88) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(v1 + 88));
      v617 = *(*(v538 + ((v537 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v537);
    }

    *(v618 + v536) = 0;
    *(v617 + v536) = 1;
    *(*(*(*(v1 + 160) + ((*(v1 + 184) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(v1 + 184)) + v536) = 0;
LABEL_868:
    v587 = *(*(v538 + (((v537 + v535) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v537 + v535));
    if ((*(v587 + v536) & 1) == 0 && !v553)
    {
      v841 = v528;
      if (v870 == v869[1] || (v588 = v869[1] + 8 * (v871 >> 10), v589 = (*v588 + 4 * (v871 & 0x3FF)), v590 = *(v869[1] + (((*(&v871 + 1) + v871) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(&v871 + 1) + v871) & 0x3FF), v589 == v590))
      {
        v605 = *(v1 + 88);
        v606 = *(v1 + 64);
        v613 = *(v1 + 184);
        v614 = *(v1 + 160);
      }

      else
      {
        v591 = v535;
        v592 = v536;
        do
        {
          v593 = *v589;
          v594 = *(v862 + 968);
          if (v594[5] <= v593)
          {
            std::__throw_out_of_range[abi:ne200100]("deque");
          }

          v595 = (*(v594[1] + 8 * ((v594[4] + v593) / 0x14)) + 200 * ((v594[4] + v593) % 0x14));
          v596 = v595[23];
          if (!v596)
          {
            goto LABEL_880;
          }

          do
          {
            v597 = v596;
            v596 = *v596;
          }

          while (v596);
          if (v597 == v595 + 23 || v597[4] || (v598 = v597[5], v598 > 8))
          {
LABEL_880:
            v599 = 0.0;
          }

          else
          {
            v599 = dbl_1B42AFA98[v598];
          }

          v600 = v589[1];
          v601 = (*(v595[11] + ((v595[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v595[14]);
          v602 = v855 + *&v599 * v600;
          v603 = 0.0;
          if (v602 < (v601[1] - *v601) >> 3)
          {
            v603 = *(*v601 + 8 * v602);
          }

          if (v603 >= v552)
          {
            v609 = v591;
            v610 = v592;
            v611 = *(*(v538 + (((v537 + v591) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v537 + v591));
            if (*(v611 + v592) != 1 || (v605 = *(v862 + 88), v606 = *(v862 + 64), v612 = *(*(v606 + (((v605 + v591) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v605 + v591)), *(v612 + v592) == 1))
            {
              nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v862, v591, v592);
              v605 = *(v862 + 88);
              v606 = *(v862 + 64);
              v537 = *(v862 + 136);
              v538 = *(v862 + 112);
              v612 = *(*(v606 + (((v605 + v591) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v605 + v591));
              v611 = *(*(v538 + (((v537 + v591) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v537 + v591));
              LOWORD(v593) = *v589;
              LOWORD(v600) = v589[1];
            }

            v591 = v593;
            v592 = v600;
            *(v612 + v610) = 0;
            v608 = (v611 + v610);
            v593 = v609;
            v600 = v610;
            v552 = v603;
          }

          else
          {
            v604 = *(*(v538 + (((v537 + v593) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v537 + v593));
            if (*(v604 + v600) != 1 || (v605 = *(v862 + 88), v606 = *(v862 + 64), v607 = *(*(v606 + (((v605 + v593) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v605 + v593)), *(v607 + v600) == 1))
            {
              nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v862, *v589, v589[1]);
              v605 = *(v862 + 88);
              v606 = *(v862 + 64);
              v537 = *(v862 + 136);
              v538 = *(v862 + 112);
              v607 = *(*(v606 + (((v605 + v593) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v605 + v593));
              v604 = *(*(v538 + (((v537 + v593) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v537 + v593));
            }

            *(v607 + v600) = 0;
            v608 = (v604 + v600);
          }

          *v608 = 1;
          v613 = *(v862 + 184);
          v614 = *(v862 + 160);
          *(*(*(v614 + (((v613 + v593) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v613 + v593)) + v600) = 0;
          v589 += 2;
          if ((v589 - *v588) == 4096)
          {
            v615 = v588[1];
            ++v588;
            v589 = v615;
          }
        }

        while (v589 != v590);
        v535 = v591;
        v536 = v592;
        v587 = *(*(v538 + (((v537 + v591) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v537 + v591));
        v1 = v862;
      }

      *(*(*(v606 + (((v605 + v535) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v605 + v535)) + v536) = 1;
      *(v587 + v536) = 0;
      *(*(*(v614 + (((v613 + v535) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v613 + v535)) + v536) = 0;
      v528 = v841;
      v534 = v846;
    }

    std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](v869);
    v529 = *v528;
LABEL_899:
    v530 += 2;
    if (v530 - v529 == 4096)
    {
      v616 = *(v528 + 1);
      v528 += 8;
      v529 = v616;
      v530 = v616;
    }
  }

  while (v530 != v534);
LABEL_908:
  std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](v872);
  std::deque<std::pair<int,int>>::~deque[abi:ne200100](v875);
  std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](v878);
  std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](v881);
  std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](&v890);
  std::deque<std::pair<int,int>>::~deque[abi:ne200100](&v893);
  std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](__p);
  v41 = *(v1 + 968);
LABEL_909:
  if (*(v1 + 1101) == 1)
  {
    if (v41)
    {
      v619 = *(v41 + 40);
      if (v619)
      {
        v620 = 0;
        v847 = 0;
        v851 = *(v41 + 40);
        do
        {
          v621 = *(v1 + 968);
          if (v621[5] <= v620)
          {
            std::__throw_out_of_range[abi:ne200100]("deque");
          }

          v856 = (*(v621[1] + 8 * ((v621[4] + v620) / 0x14)) + 200 * ((v621[4] + v620) % 0x14));
          v622 = v856[23];
          v861 = v856 + 23;
          if (!v622)
          {
            goto LABEL_920;
          }

          do
          {
            v623 = v622;
            v622 = *v622;
          }

          while (v622);
          if (v623 == v861 || v623[4] || (v624 = v623[5] - 5, v624 > 3))
          {
LABEL_920:
            v625 = -1;
          }

          else
          {
            v625 = qword_1B42AFA78[v624];
          }

          v626 = *(*(v862 + 160) + (((*(v862 + 184) + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 184) + v620);
          *(&v894 + 1) = *(*(v862 + 64) + (((*(v862 + 88) + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 88) + v620);
          *(&v893 + 1) = v626;
          std::__val_expr<std::_BinaryOp<std::bit_and<BOOL>,std::valarray<BOOL>,std::__val_expr<std::_UnaryOp<std::logical_not<BOOL>,std::valarray<BOOL> const&>>>>::operator std::valarray<BOOL>(&v890, &v893);
          nms::BOOLeanMaskToIndices<unsigned short>(__p, &v890);
          v627 = v825;
          if (v890)
          {
            if (*(&v890 + 1) != v890)
            {
              *(&v890 + 1) = v890;
            }

            operator delete(v890);
          }

          if (v885 != __p[1])
          {
            v628 = __p[1] + 8 * (v886 >> 11);
            v629 = (*v628 + 2 * (v886 & 0x7FF));
            v630 = *(__p[1] + (((*(&v886 + 1) + v886) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((*(&v886 + 1) + v886) & 0x7FF);
            v835 = v630;
            while (v629 != v630)
            {
              v631 = *v861;
              v842 = v628;
              if (!*v861)
              {
                goto LABEL_934;
              }

              do
              {
                v632 = v631;
                v631 = *v631;
              }

              while (v631);
              if (v632 == v861 || v632[4] || (v633 = v632[5], v633 > 8))
              {
LABEL_934:
                v634 = 0.0;
              }

              else
              {
                v634 = dbl_1B42AFA98[v633];
              }

              v837 = v629;
              v635 = *v629;
              v636 = v625 + *&v634 * v635;
              v638 = (*(v856[11] + ((v856[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v856[14]);
              v637 = *v638;
              v639 = 0.0;
              if (v636 < (v638[1] - *v638) >> 3)
              {
                v639 = *(v637 + 8 * v636);
              }

              v640 = 0;
              v641 = 0;
              while (1)
              {
                if (*v627 == 1 && *(v862 + 672))
                {
                  v642 = v862;
                  v643 = *(*(v862 + 640) + 8 * ((*(v862 + 664) + v620) / 0x55)) + 48 * ((*(v862 + 664) + v620) % 0x55);
                  v644 = *(*(v643 + 8) + 8 * ((*(v643 + 32) + v640) / 0x55)) + 48 * ((*(v643 + 32) + v640) % 0x55);
                  v645 = (*(*(v644 + 8) + 8 * ((*(v644 + 32) + v635) / 0x55uLL)) + 48 * ((*(v644 + 32) + v635) % 0x55uLL));
                  v646 = v645[1];
                  if (v645[2] == v646)
                  {
                    v652 = *(v862 + 136);
                    v653 = *(v862 + 112);
                  }

                  else
                  {
                    v647 = v645[4];
                    v648 = (v646 + 8 * (v647 >> 11));
                    v649 = *v648;
                    v650 = &(*v648)[v647 & 0x7FF];
                    v651 = *(v646 + (((v645[5] + v647) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v645[5] + v647) & 0x7FF);
                    v652 = *(v862 + 136);
                    v653 = *(v862 + 112);
                    if (v650 != v651)
                    {
                      v654 = *(v862 + 88);
                      v655 = *(v862 + 64);
                      while (1)
                      {
                        v656 = *v650;
                        if (*(*(*(v655 + (((v654 + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v654 + v640)) + v656) == 1)
                        {
                          v668 = *(*(v653 + (((v652 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v652 + v620));
                          if (*(v668 + v635) != 1)
                          {
                            goto LABEL_966;
                          }

                          v669 = *(*(v655 + (((v654 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v654 + v620));
                          if (*(v669 + v635) == 1)
                          {
                            goto LABEL_966;
                          }

                          goto LABEL_967;
                        }

                        if ((*(*(*(v653 + 8 * ((v652 + v640) >> 8)) + 16 * (v652 + v640)) + v656) & 1) == 0)
                        {
                          v657 = *(v862 + 968);
                          if (v657[5] <= v640)
                          {
                            std::__throw_out_of_range[abi:ne200100]("deque");
                          }

                          v658 = (*(v657[1] + 8 * ((v657[4] + v640) / 0x14)) + 200 * ((v657[4] + v640) % 0x14));
                          v659 = v658[23];
                          if (!v659)
                          {
                            goto LABEL_952;
                          }

                          do
                          {
                            v660 = v659;
                            v659 = *v659;
                          }

                          while (v659);
                          if (v660 == v658 + 23 || v660[4] || (v661 = v660[5], v661 > 8))
                          {
LABEL_952:
                            v662 = 0.0;
                          }

                          else
                          {
                            v662 = dbl_1B42AFA98[v661];
                          }

                          v663 = v625 + *&v662 * v656;
                          v665 = (*(v658[11] + ((v658[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v658[14]);
                          v664 = *v665;
                          v666 = 0.0;
                          if (v663 < (v665[1] - *v665) >> 3)
                          {
                            v666 = *(v664 + 8 * v663);
                          }

                          if (v666 >= v639)
                          {
                            break;
                          }
                        }

                        if (++v650 - v649 == 4096)
                        {
                          v667 = v648[1];
                          ++v648;
                          v649 = v667;
                          v650 = v667;
                        }

                        if (v650 == v651)
                        {
                          v642 = v862;
                          goto LABEL_969;
                        }
                      }

                      v668 = *(*(v653 + (((v652 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v652 + v620));
                      if (*(v668 + v635) != 1 || (v669 = *(*(v655 + (((v654 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v654 + v620)), *(v669 + v635) == 1))
                      {
LABEL_966:
                        v642 = v862;
                        nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v862, v847, v635);
                        v652 = *(v862 + 136);
                        v653 = *(v862 + 112);
                        v669 = *(*(*(v862 + 64) + (((*(v862 + 88) + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 88) + v620));
                        v668 = *(*(v653 + (((v652 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v652 + v620));
                        goto LABEL_968;
                      }

LABEL_967:
                      v642 = v862;
LABEL_968:
                      *(v669 + v635) = 0;
                      *(v668 + v635) = 1;
                      *(*(*(*(v642 + 160) + (((*(v642 + 184) + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v642 + 184) + v620)) + v635) = 0;
                    }
                  }

LABEL_969:
                  if (*(v642 + 1096) == 1 && (*(*(*(v653 + (((v652 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v652 + v620)) + v635) & 1) == 0)
                  {
                    std::deque<unsigned short>::deque(&v893, v645);
                    if (v894 != *(&v893 + 1))
                    {
                      v670 = (*(&v893 + 1) + 8 * (v895 >> 11));
                      v671 = *v670;
                      v672 = &(*v670)[v895 & 0x7FF];
                      v673 = *(*(&v893 + 1) + (((*(&v895 + 1) + v895) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((*(&v895 + 1) + v895) & 0x7FF);
                      if (v672 != v673)
                      {
                        v674 = *(v862 + 136);
                        v675 = *(v862 + 112);
                        do
                        {
                          v676 = *v672;
                          v677 = *(*(v675 + (((v674 + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v674 + v640));
                          if (*(v677 + v676) == 1 && (v678 = *(*(*(v862 + 64) + (((*(v862 + 88) + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 88) + v640)), *(v678 + v676) != 1))
                          {
                            v679 = v862;
                          }

                          else
                          {
                            v679 = v862;
                            nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v862, v641, *v672);
                            v674 = *(v862 + 136);
                            v675 = *(v862 + 112);
                            v678 = *(*(v679[8] + (((v679[11] + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v679 + 88) + v640));
                            v677 = *(*(v675 + (((v674 + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v674 + v640));
                            v671 = *v670;
                          }

                          *(v678 + v676) = 0;
                          *(v677 + v676) = 1;
                          *(*(*(v679[20] + (((v679[23] + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v679 + 184) + v640)) + v676) = 0;
                          if (++v672 - v671 == 4096)
                          {
                            v680 = v670[1];
                            ++v670;
                            v671 = v680;
                            v672 = v680;
                          }
                        }

                        while (v672 != v673);
                      }
                    }

                    std::deque<unsigned short>::~deque[abi:ne200100](&v893);
                    v652 = *(v862 + 136);
                    v653 = *(v862 + 112);
                    v627 = v825;
                    v619 = v851;
                  }

                  if (*(*(*(v653 + (((v652 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v652 + v620)) + v635))
                  {
                    break;
                  }
                }

                if (*(v862 + 1099) == 1)
                {
                  if (!*(v862 + 768))
                  {
                    goto LABEL_1072;
                  }

                  v681 = v862;
                  v682 = *(*(v862 + 736) + 8 * ((*(v862 + 760) + v620) / 0x55)) + 48 * ((*(v862 + 760) + v620) % 0x55);
                  v683 = *(*(v682 + 8) + 8 * ((*(v682 + 32) + v640) / 0x55)) + 48 * ((*(v682 + 32) + v640) % 0x55);
                  v684 = (*(*(v683 + 8) + 8 * ((*(v683 + 32) + v635) / 0x55uLL)) + 48 * ((*(v683 + 32) + v635) % 0x55uLL));
                  v685 = v684[1];
                  if (v684[2] == v685)
                  {
                    v652 = *(v862 + 136);
                    v653 = *(v862 + 112);
                  }

                  else
                  {
                    v686 = v684[4];
                    v687 = (v685 + 8 * (v686 >> 11));
                    v688 = *v687;
                    v689 = &(*v687)[v686 & 0x7FF];
                    v690 = *(v685 + (((v684[5] + v686) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v684[5] + v686) & 0x7FF);
                    v652 = *(v862 + 136);
                    v653 = *(v862 + 112);
                    if (v689 != v690)
                    {
                      v691 = *(v862 + 88);
                      v692 = *(v862 + 64);
                      while (1)
                      {
                        v693 = *v689;
                        if (*(*(*(v692 + (((v691 + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v691 + v640)) + v693) == 1)
                        {
                          v705 = *(*(v653 + (((v652 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v652 + v620));
                          if (*(v705 + v635) != 1)
                          {
                            goto LABEL_1011;
                          }

                          v706 = *(*(v692 + (((v691 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v691 + v620));
                          if (*(v706 + v635) == 1)
                          {
                            goto LABEL_1011;
                          }

                          goto LABEL_1012;
                        }

                        if ((*(*(*(v653 + 8 * ((v652 + v640) >> 8)) + 16 * (v652 + v640)) + v693) & 1) == 0)
                        {
                          v694 = *(v862 + 968);
                          if (v694[5] <= v640)
                          {
                            std::__throw_out_of_range[abi:ne200100]("deque");
                          }

                          v695 = (*(v694[1] + 8 * ((v694[4] + v640) / 0x14)) + 200 * ((v694[4] + v640) % 0x14));
                          v696 = v695[23];
                          if (!v696)
                          {
                            goto LABEL_997;
                          }

                          do
                          {
                            v697 = v696;
                            v696 = *v696;
                          }

                          while (v696);
                          if (v697 == v695 + 23 || v697[4] || (v698 = v697[5], v698 > 8))
                          {
LABEL_997:
                            v699 = 0.0;
                          }

                          else
                          {
                            v699 = dbl_1B42AFA98[v698];
                          }

                          v700 = v625 + *&v699 * v693;
                          v702 = (*(v695[11] + ((v695[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v695[14]);
                          v701 = *v702;
                          v703 = 0.0;
                          if (v700 < (v702[1] - *v702) >> 3)
                          {
                            v703 = *(v701 + 8 * v700);
                          }

                          if (v703 >= v639)
                          {
                            break;
                          }
                        }

                        if (++v689 - v688 == 4096)
                        {
                          v704 = v687[1];
                          ++v687;
                          v688 = v704;
                          v689 = v704;
                        }

                        if (v689 == v690)
                        {
                          v681 = v862;
                          goto LABEL_1014;
                        }
                      }

                      v705 = *(*(v653 + (((v652 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v652 + v620));
                      if (*(v705 + v635) != 1 || (v706 = *(*(v692 + (((v691 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v691 + v620)), *(v706 + v635) == 1))
                      {
LABEL_1011:
                        v681 = v862;
                        nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v862, v847, v635);
                        v652 = *(v862 + 136);
                        v653 = *(v862 + 112);
                        v706 = *(*(*(v862 + 64) + (((*(v862 + 88) + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 88) + v620));
                        v705 = *(*(v653 + (((v652 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v652 + v620));
                        goto LABEL_1013;
                      }

LABEL_1012:
                      v681 = v862;
LABEL_1013:
                      *(v706 + v635) = 0;
                      *(v705 + v635) = 1;
                      *(*(*(*(v681 + 160) + (((*(v681 + 184) + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v681 + 184) + v620)) + v635) = 0;
                    }
                  }

LABEL_1014:
                  if (*(v681 + 1096) == 1 && (*(*(*(v653 + (((v652 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v652 + v620)) + v635) & 1) == 0)
                  {
                    std::deque<unsigned short>::deque(&v893, v684);
                    if (v894 != *(&v893 + 1))
                    {
                      v707 = (*(&v893 + 1) + 8 * (v895 >> 11));
                      v708 = *v707;
                      v709 = &(*v707)[v895 & 0x7FF];
                      v710 = *(*(&v893 + 1) + (((*(&v895 + 1) + v895) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((*(&v895 + 1) + v895) & 0x7FF);
                      if (v709 != v710)
                      {
                        v711 = *(v862 + 136);
                        v712 = *(v862 + 112);
                        do
                        {
                          v713 = *v709;
                          v714 = *(*(v712 + (((v711 + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v711 + v640));
                          if (*(v714 + v713) == 1 && (v715 = *(*(*(v862 + 64) + (((*(v862 + 88) + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 88) + v640)), *(v715 + v713) != 1))
                          {
                            v716 = v862;
                          }

                          else
                          {
                            v716 = v862;
                            nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v862, v641, *v709);
                            v711 = *(v862 + 136);
                            v712 = *(v862 + 112);
                            v715 = *(*(v716[8] + (((v716[11] + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v716 + 88) + v640));
                            v714 = *(*(v712 + (((v711 + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v711 + v640));
                            v708 = *v707;
                          }

                          *(v715 + v713) = 0;
                          *(v714 + v713) = 1;
                          *(*(*(v716[20] + (((v716[23] + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v716 + 184) + v640)) + v713) = 0;
                          if (++v709 - v708 == 4096)
                          {
                            v717 = v707[1];
                            ++v707;
                            v708 = v717;
                            v709 = v717;
                          }
                        }

                        while (v709 != v710);
                      }
                    }

                    std::deque<unsigned short>::~deque[abi:ne200100](&v893);
                    v652 = *(v862 + 136);
                    v653 = *(v862 + 112);
                    v627 = v825;
                    v619 = v851;
                  }

                  if (*(*(*(v653 + (((v652 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v652 + v620)) + v635))
                  {
                    break;
                  }

                  if (*(v862 + 1099))
                  {
LABEL_1072:
                    if (*(v862 + 864))
                    {
                      v718 = v862;
                      v719 = *(*(v862 + 832) + 8 * ((*(v862 + 856) + v620) / 0x55)) + 48 * ((*(v862 + 856) + v620) % 0x55);
                      v720 = *(*(v719 + 8) + 8 * ((*(v719 + 32) + v640) / 0x55)) + 48 * ((*(v719 + 32) + v640) % 0x55);
                      v721 = (*(*(v720 + 8) + 8 * ((*(v720 + 32) + v635) / 0x55uLL)) + 48 * ((*(v720 + 32) + v635) % 0x55uLL));
                      v722 = v721[1];
                      if (v721[2] == v722)
                      {
                        v652 = *(v862 + 136);
                        v653 = *(v862 + 112);
                      }

                      else
                      {
                        v723 = v721[4];
                        v724 = (v722 + 8 * (v723 >> 11));
                        v725 = *v724;
                        v726 = &(*v724)[v723 & 0x7FF];
                        v727 = *(v722 + (((v721[5] + v723) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v721[5] + v723) & 0x7FF);
                        v652 = *(v862 + 136);
                        v653 = *(v862 + 112);
                        if (v726 != v727)
                        {
                          v728 = *(v862 + 88);
                          v729 = *(v862 + 64);
                          while (1)
                          {
                            v730 = *v726;
                            if (*(*(*(v729 + (((v728 + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v728 + v640)) + v730) == 1)
                            {
                              v742 = *(*(v653 + (((v652 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v652 + v620));
                              if (*(v742 + v635) != 1)
                              {
                                goto LABEL_1056;
                              }

                              v743 = *(*(v729 + (((v728 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v728 + v620));
                              if (*(v743 + v635) == 1)
                              {
                                goto LABEL_1056;
                              }

                              goto LABEL_1057;
                            }

                            if ((*(*(*(v653 + 8 * ((v652 + v640) >> 8)) + 16 * (v652 + v640)) + v730) & 1) == 0)
                            {
                              v731 = *(v862 + 968);
                              if (v731[5] <= v640)
                              {
                                std::__throw_out_of_range[abi:ne200100]("deque");
                              }

                              v732 = (*(v731[1] + 8 * ((v731[4] + v640) / 0x14)) + 200 * ((v731[4] + v640) % 0x14));
                              v733 = v732[23];
                              if (!v733)
                              {
                                goto LABEL_1042;
                              }

                              do
                              {
                                v734 = v733;
                                v733 = *v733;
                              }

                              while (v733);
                              if (v734 == v732 + 23 || v734[4] || (v735 = v734[5], v735 > 8))
                              {
LABEL_1042:
                                v736 = 0.0;
                              }

                              else
                              {
                                v736 = dbl_1B42AFA98[v735];
                              }

                              v737 = v625 + *&v736 * v730;
                              v739 = (*(v732[11] + ((v732[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v732[14]);
                              v738 = *v739;
                              v740 = 0.0;
                              if (v737 < (v739[1] - *v739) >> 3)
                              {
                                v740 = *(v738 + 8 * v737);
                              }

                              if (v740 >= v639)
                              {
                                break;
                              }
                            }

                            if (++v726 - v725 == 4096)
                            {
                              v741 = v724[1];
                              ++v724;
                              v725 = v741;
                              v726 = v741;
                            }

                            if (v726 == v727)
                            {
                              v718 = v862;
                              goto LABEL_1059;
                            }
                          }

                          v742 = *(*(v653 + (((v652 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v652 + v620));
                          if (*(v742 + v635) != 1 || (v743 = *(*(v729 + (((v728 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v728 + v620)), *(v743 + v635) == 1))
                          {
LABEL_1056:
                            v718 = v862;
                            nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v862, v847, v635);
                            v652 = *(v862 + 136);
                            v653 = *(v862 + 112);
                            v743 = *(*(*(v862 + 64) + (((*(v862 + 88) + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 88) + v620));
                            v742 = *(*(v653 + (((v652 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v652 + v620));
                            goto LABEL_1058;
                          }

LABEL_1057:
                          v718 = v862;
LABEL_1058:
                          *(v743 + v635) = 0;
                          *(v742 + v635) = 1;
                          *(*(*(*(v718 + 160) + (((*(v718 + 184) + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v718 + 184) + v620)) + v635) = 0;
                        }
                      }

LABEL_1059:
                      if (*(v718 + 1096) == 1 && (*(*(*(v653 + (((v652 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v652 + v620)) + v635) & 1) == 0)
                      {
                        std::deque<unsigned short>::deque(&v893, v721);
                        if (v894 != *(&v893 + 1))
                        {
                          v744 = (*(&v893 + 1) + 8 * (v895 >> 11));
                          v745 = *v744;
                          v746 = &(*v744)[v895 & 0x7FF];
                          v747 = *(*(&v893 + 1) + (((*(&v895 + 1) + v895) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((*(&v895 + 1) + v895) & 0x7FF);
                          if (v746 != v747)
                          {
                            v748 = *(v862 + 136);
                            v749 = *(v862 + 112);
                            do
                            {
                              v750 = *v746;
                              v751 = *(*(v749 + (((v748 + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v748 + v640));
                              if (*(v751 + v750) == 1 && (v752 = *(*(*(v862 + 64) + (((*(v862 + 88) + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 88) + v640)), *(v752 + v750) != 1))
                              {
                                v753 = v862;
                              }

                              else
                              {
                                v753 = v862;
                                nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v862, v641, *v746);
                                v748 = *(v862 + 136);
                                v749 = *(v862 + 112);
                                v752 = *(*(v753[8] + (((v753[11] + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v753 + 88) + v640));
                                v751 = *(*(v749 + (((v748 + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v748 + v640));
                                v745 = *v744;
                              }

                              *(v752 + v750) = 0;
                              *(v751 + v750) = 1;
                              *(*(*(v753[20] + (((v753[23] + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v753 + 184) + v640)) + v750) = 0;
                              if (++v746 - v745 == 4096)
                              {
                                v754 = v744[1];
                                ++v744;
                                v745 = v754;
                                v746 = v754;
                              }
                            }

                            while (v746 != v747);
                          }
                        }

                        std::deque<unsigned short>::~deque[abi:ne200100](&v893);
                        v652 = *(v862 + 136);
                        v653 = *(v862 + 112);
                        v627 = v825;
                        v619 = v851;
                      }

                      if (*(*(*(v653 + (((v652 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v652 + v620)) + v635))
                      {
                        break;
                      }
                    }
                  }
                }

                if (*(v862 + 1100) == 1 && *(v862 + 960))
                {
                  v755 = *(*(v862 + 928) + 8 * ((*(v862 + 952) + v620) / 0x55)) + 48 * ((*(v862 + 952) + v620) % 0x55);
                  v756 = *(*(v755 + 8) + 8 * ((*(v755 + 32) + v640) / 0x55)) + 48 * ((*(v755 + 32) + v640) % 0x55);
                  v757 = (*(*(v756 + 8) + 8 * ((*(v756 + 32) + v635) / 0x55uLL)) + 48 * ((*(v756 + 32) + v635) % 0x55uLL));
                  v758 = v757[1];
                  if (v757[2] != v758)
                  {
                    v759 = v757[4];
                    v760 = (v758 + 8 * (v759 >> 11));
                    v761 = *v760;
                    v762 = &(*v760)[v759 & 0x7FF];
                    v763 = *(v758 + (((v757[5] + v759) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v757[5] + v759) & 0x7FF);
                    if (v762 != v763)
                    {
                      v764 = *(v862 + 88);
                      v765 = *(v862 + 64);
                      v766 = *(v862 + 136);
                      v767 = *(v862 + 112);
                      while (1)
                      {
                        v768 = *v762;
                        if (*(*(*(v765 + (((v764 + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v764 + v640)) + v768) == 1)
                        {
                          v788 = *(*(v767 + (((v766 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v766 + v620));
                          if (*(v788 + v635) != 1)
                          {
                            goto LABEL_1111;
                          }

                          v789 = *(*(v765 + (((v764 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v764 + v620));
                          if (*(v789 + v635) == 1)
                          {
                            goto LABEL_1111;
                          }

                          goto LABEL_1112;
                        }

                        if ((*(*(*(v767 + 8 * ((v766 + v640) >> 8)) + 16 * (v766 + v640)) + v768) & 1) == 0)
                        {
                          v769 = *(v862 + 968);
                          if (v769[5] <= v640)
                          {
                            std::__throw_out_of_range[abi:ne200100]("deque");
                          }

                          v770 = *v861;
                          if (!*v861)
                          {
                            goto LABEL_1087;
                          }

                          do
                          {
                            v771 = v770;
                            v770 = *v770;
                          }

                          while (v770);
                          if (v771 == v861 || v771[4] || (v772 = v771[5], v772 > 8))
                          {
LABEL_1087:
                            v773 = 0.0;
                          }

                          else
                          {
                            v773 = dbl_1B42AFA98[v772];
                          }

                          v774 = v625 + *&v773 * v635;
                          v776 = (*(v856[11] + ((v856[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v856[14]);
                          v775 = *v776;
                          v777 = 0.0;
                          if (v774 < (v776[1] - *v776) >> 3)
                          {
                            v777 = *(v775 + 8 * v774);
                          }

                          v778 = (*(v769[1] + 8 * ((v769[4] + v640) / 0x14)) + 200 * ((v769[4] + v640) % 0x14));
                          v779 = v778[23];
                          if (!v779)
                          {
                            goto LABEL_1096;
                          }

                          do
                          {
                            v780 = v779;
                            v779 = *v779;
                          }

                          while (v779);
                          if (v780 == v778 + 23 || v780[4] || (v781 = v780[5], v781 > 8))
                          {
LABEL_1096:
                            v782 = 0.0;
                          }

                          else
                          {
                            v782 = dbl_1B42AFA98[v781];
                          }

                          v783 = v625 + *&v782 * v768;
                          v785 = (*(v778[11] + ((v778[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v778[14]);
                          v784 = *v785;
                          v786 = 0.0;
                          if (v783 < (v785[1] - *v785) >> 3)
                          {
                            v786 = *(v784 + 8 * v783);
                          }

                          if (v786 >= v777)
                          {
                            break;
                          }
                        }

                        if (++v762 - v761 == 4096)
                        {
                          v787 = v760[1];
                          ++v760;
                          v761 = v787;
                          v762 = v787;
                        }

                        if (v762 == v763)
                        {
                          goto LABEL_1114;
                        }
                      }

                      v788 = *(*(v767 + (((v766 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v766 + v620));
                      if (*(v788 + v635) != 1 || (v789 = *(*(v765 + (((v764 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v764 + v620)), *(v789 + v635) == 1))
                      {
LABEL_1111:
                        v790 = v862;
                        nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v862, v847, v635);
                        v789 = *(*(*(v862 + 64) + (((*(v862 + 88) + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 88) + v620));
                        v788 = *(*(*(v862 + 112) + (((*(v862 + 136) + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 136) + v620));
                        goto LABEL_1113;
                      }

LABEL_1112:
                      v790 = v862;
LABEL_1113:
                      *(v789 + v635) = 0;
                      *(v788 + v635) = 1;
                      *(*(*(*(v790 + 160) + (((*(v790 + 184) + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v790 + 184) + v620)) + v635) = 0;
                    }
                  }

LABEL_1114:
                  v652 = *(v862 + 136);
                  v653 = *(v862 + 112);
                  if (*(v862 + 1096) == 1 && (*(*(*(v653 + (((v652 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v652 + v620)) + v635) & 1) == 0)
                  {
                    std::deque<unsigned short>::deque(&v893, v757);
                    if (v894 != *(&v893 + 1))
                    {
                      v791 = (*(&v893 + 1) + 8 * (v895 >> 11));
                      v792 = *v791;
                      v793 = &(*v791)[v895 & 0x7FF];
                      v794 = *(*(&v893 + 1) + (((*(&v895 + 1) + v895) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((*(&v895 + 1) + v895) & 0x7FF);
                      if (v793 != v794)
                      {
                        v795 = *(v862 + 136);
                        v796 = *(v862 + 112);
                        do
                        {
                          v797 = *v793;
                          v798 = *(*(v796 + (((v795 + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v795 + v640));
                          if (*(v798 + v797) == 1 && (v799 = *(*(*(v862 + 64) + (((*(v862 + 88) + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 88) + v640)), *(v799 + v797) != 1))
                          {
                            v800 = v862;
                          }

                          else
                          {
                            v800 = v862;
                            nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v862, v641, *v793);
                            v795 = *(v862 + 136);
                            v796 = *(v862 + 112);
                            v799 = *(*(v800[8] + (((v800[11] + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v800 + 88) + v640));
                            v798 = *(*(v796 + (((v795 + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v795 + v640));
                            v792 = *v791;
                          }

                          *(v799 + v797) = 0;
                          *(v798 + v797) = 1;
                          *(*(*(v800[20] + (((v800[23] + v640) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v800 + 184) + v640)) + v797) = 0;
                          if (++v793 - v792 == 4096)
                          {
                            v801 = v791[1];
                            ++v791;
                            v792 = v801;
                            v793 = v801;
                          }
                        }

                        while (v793 != v794);
                      }
                    }

                    std::deque<unsigned short>::~deque[abi:ne200100](&v893);
                    v652 = *(v862 + 136);
                    v653 = *(v862 + 112);
                    v627 = v825;
                    v619 = v851;
                  }

                  if (*(*(*(v653 + (((v652 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v652 + v620)) + v635))
                  {
                    break;
                  }

                  v640 = ++v641;
                  if (v619 <= v641)
                  {
                    break;
                  }
                }

                else
                {
                  v640 = ++v641;
                  if (v619 <= v641)
                  {
                    v652 = *(v862 + 136);
                    v653 = *(v862 + 112);
                    break;
                  }
                }
              }

              v802 = *(*(v653 + (((v652 + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v652 + v620));
              if ((*(v802 + v635) & 1) == 0)
              {
                *(*(*(*(v862 + 64) + (((*(v862 + 88) + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 88) + v620)) + v635) = 1;
                *(v802 + v635) = 0;
                *(*(*(*(v862 + 160) + (((*(v862 + 184) + v620) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 184) + v620)) + v635) = 0;
              }

              v628 = v842;
              v629 = v837 + 1;
              if ((v837 - *v842 + 2) == 4096)
              {
                v628 = v842 + 1;
                v629 = v842[1];
              }

              v630 = v835;
            }
          }

          std::deque<unsigned short>::~deque[abi:ne200100](__p);
          v620 = ++v847;
          v1 = v862;
        }

        while (v619 > v847);
        v41 = *(v862 + 968);
        goto LABEL_1136;
      }

LABEL_1137:
      v803 = *(v41 + 40);
      if (v803)
      {
        v804 = 0;
        v805 = 0;
        do
        {
          v806 = (*(*(v1 + 64) + (((*(v1 + 88) + v804) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v1 + 88) + v804));
          v893 = 0uLL;
          if (v806[1] != *v806)
          {
            operator new();
          }

          v1 = v862;
          nms::BOOLeanMaskToIndices<unsigned short>(__p, &v893);
          if (v885 != __p[1])
          {
            v807 = (__p[1] + 8 * (v886 >> 11));
            v808 = *v807;
            v809 = &(*v807)[v886 & 0x7FF];
            v810 = *(__p[1] + (((*(&v886 + 1) + v886) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((*(&v886 + 1) + v886) & 0x7FF);
            if (v809 != v810)
            {
              v811 = *(*(*(v862 + 64) + (((*(v862 + 88) + v804) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 88) + v804));
              v812 = *(*(*(v862 + 112) + (((*(v862 + 136) + v804) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 136) + v804));
              v813 = *(*(*(v862 + 160) + (((*(v862 + 184) + v804) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v862 + 184) + v804));
              do
              {
                v814 = *v809++;
                *(v811 + v814) = 1;
                *(v812 + v814) = 0;
                *(v813 + v814) = 0;
                if (v809 - v808 == 4096)
                {
                  v815 = v807[1];
                  ++v807;
                  v808 = v815;
                  v809 = v815;
                }
              }

              while (v809 != v810);
            }
          }

          std::deque<unsigned short>::~deque[abi:ne200100](__p);
          v804 = ++v805;
        }

        while (v803 > v805);
      }
    }
  }

  else
  {
LABEL_1136:
    if (v41)
    {
      goto LABEL_1137;
    }
  }
}