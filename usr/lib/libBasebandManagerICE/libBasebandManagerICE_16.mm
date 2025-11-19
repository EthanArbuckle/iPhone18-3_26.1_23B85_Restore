void sub_2975447E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(v16);
  xpc::dict::~dict(v15);
  _Unwind_Resume(a1);
}

void antenna::Service::Internal::setTxPowerCappingIPhoneOverrideFreeSpace_sync(antenna::Service::Internal *this, const xpc::object *a2)
{
  v35 = *MEMORY[0x29EDCA608];
  if ((TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild() || *(this + 74) != 1)
  {
    goto LABEL_57;
  }

  v5 = __s1;
  memset(__s1, 170, sizeof(__s1));
  xpc::dyn_cast_or_default(__s1, a2, "", v4);
  v6 = HIBYTE(__s1[2]);
  if (__s1[2] >= 0)
  {
    v7 = (__s1 + HIBYTE(__s1[2]));
  }

  else
  {
    v7 = (__s1[0] + __s1[1]);
  }

  if (__s1[2] < 0)
  {
    v5 = __s1[0];
  }

  if (v5 != v7)
  {
    do
    {
      *v5 = __toupper(*v5);
      v5 = (v5 + 1);
    }

    while (v5 != v7);
    v6 = HIBYTE(__s1[2]);
  }

  v8 = *(this + 4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v30 = __s1;
    if ((v6 & 0x80u) != 0)
    {
      v30 = __s1[0];
    }

    *buf = 136315138;
    v34 = v30;
    _os_log_debug_impl(&dword_297476000, v8, OS_LOG_TYPE_DEBUG, "#D Overridding Free Space as %s", buf, 0xCu);
    v6 = HIBYTE(__s1[2]);
  }

  v9 = strlen(*MEMORY[0x29EDBF518]);
  v10 = v9;
  if ((v6 & 0x80) == 0)
  {
    if (v9 != -1)
    {
      v11 = v6;
      v12 = __s1;
      goto LABEL_18;
    }

LABEL_63:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v9 == -1)
  {
    goto LABEL_63;
  }

  v12 = __s1[0];
  v11 = __s1[1];
LABEL_18:
  if (v11 >= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  if (!memcmp(v12, *MEMORY[0x29EDBF518], v13) && v11 == v10)
  {
    v19 = 0;
LABEL_53:
    *(this + 31) = v19;
    goto LABEL_54;
  }

  v15 = strlen(*MEMORY[0x29EDBF6D0]);
  v16 = v15;
  if ((v6 & 0x80) == 0)
  {
    if (v15 != -1)
    {
      v17 = v6;
      v18 = __s1;
      goto LABEL_31;
    }

LABEL_64:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v15 == -1)
  {
    goto LABEL_64;
  }

  v18 = __s1[0];
  v17 = __s1[1];
LABEL_31:
  if (v17 >= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v17;
  }

  if (!memcmp(v18, *MEMORY[0x29EDBF6D0], v20) && v17 == v16)
  {
    v19 = 1;
    goto LABEL_53;
  }

  v22 = *MEMORY[0x29EDBF730];
  v23 = strlen(*MEMORY[0x29EDBF730]);
  v24 = v23;
  if ((v6 & 0x80) != 0)
  {
    if (v23 != -1)
    {
      v25 = __s1[1];
      if (__s1[1] >= v23)
      {
        v27 = v23;
      }

      else
      {
        v27 = __s1[1];
      }

      if (memcmp(__s1[0], v22, v27))
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

LABEL_65:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v23 == -1)
  {
    goto LABEL_65;
  }

  v25 = v6;
  if (v6 >= v23)
  {
    v26 = v23;
  }

  else
  {
    v26 = v6;
  }

  if (memcmp(__s1, v22, v26))
  {
    goto LABEL_54;
  }

LABEL_51:
  if (v25 == v24)
  {
    v19 = 255;
    goto LABEL_53;
  }

LABEL_54:
  v28 = *(this + 4);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v31 = *(this + 31);
    *buf = 67109120;
    LODWORD(v34) = v31;
    _os_log_debug_impl(&dword_297476000, v28, OS_LOG_TYPE_DEBUG, "#D Overridden Free Space as 0x%x", buf, 8u);
    if ((__s1[2] & 0x8000000000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if ((v6 & 0x80) != 0)
  {
LABEL_56:
    operator delete(__s1[0]);
  }

LABEL_57:
  v29 = *MEMORY[0x29EDCA608];
}

void sub_297544BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void antenna::Service::Internal::getTxPowerCappingIPhoneOverriddenFreeSpaceString_sync(antenna::Service::Internal *this@<X0>, std::string *a2@<X8>)
{
  v17 = *MEMORY[0x29EDCA608];
  memset(a2, 170, sizeof(std::string));
  v4 = *MEMORY[0x29EDBF730];
  v5 = strlen(*MEMORY[0x29EDBF730]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
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
    a2->__r_.__value_.__l.__size_ = v6;
    a2->__r_.__value_.__r.__words[2] = v8 | 0x8000000000000000;
    a2->__r_.__value_.__r.__words[0] = v7;
    goto LABEL_9;
  }

  *(&a2->__r_.__value_.__s + 23) = v5;
  v7 = a2;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v7 + v6) = 0;
  if ((TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild() || *(this + 74) != 1)
  {
    goto LABEL_19;
  }

  v9 = *(this + 31);
  if (v9)
  {
    if (v9 != 1)
    {
      goto LABEL_18;
    }

    v10 = MEMORY[0x29EDBF6D0];
  }

  else
  {
    v10 = MEMORY[0x29EDBF518];
  }

  std::string::__assign_external(a2, *v10);
LABEL_18:
  v11 = *(this + 4);
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
LABEL_19:
    v12 = *MEMORY[0x29EDCA608];
    return;
  }

  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = a2->__r_.__value_.__r.__words[0];
  }

  v15 = 136315138;
  v16 = v13;
  _os_log_debug_impl(&dword_297476000, v11, OS_LOG_TYPE_DEBUG, "#D Overridden Free Space as %s", &v15, 0xCu);
  v14 = *MEMORY[0x29EDCA608];
}

void sub_297544D8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void antenna::Service::Internal::setTxPowerAudioMode_sync(uint64_t **this, xpc_object_t *a2)
{
  object[1] = *MEMORY[0x29EDCA608];
  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF670]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__s1, object, "", v4);
  xpc_release(object[0]);
  if (__s1[2] >= 0)
  {
    v5 = (__s1 + HIBYTE(__s1[2]));
  }

  else
  {
    v5 = (__s1[0] + __s1[1]);
  }

  if (__s1[2] >= 0)
  {
    v6 = __s1;
  }

  else
  {
    v6 = __s1[0];
  }

  for (; v6 != v5; v6 = (v6 + 1))
  {
    *v6 = __toupper(*v6);
  }

  if ((TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild() || (v7 = *(this + 30), v7 == 4))
  {
    if ((antenna::Service::Internal::isAudioReceiverOutputOnlyActive(this) & 1) != 0 || antenna::Service::Internal::isAudioAnyOutputActive(this) && !*(this + 41) || *(this + 75) == 1 && (antenna::Service::Internal::isAudioAnyOutputActive(this) & 1) == 0 && !*(this + 41))
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  v8 = strlen(*MEMORY[0x29EDBF878]);
  v9 = v8;
  v10 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) == 0)
  {
    if (v8 != -1)
    {
      v11 = __s1;
      v12 = SHIBYTE(__s1[2]);
      goto LABEL_28;
    }

LABEL_350:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v8 == -1)
  {
    goto LABEL_350;
  }

  v11 = __s1[0];
  v12 = __s1[1];
LABEL_28:
  if (v12 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  if (!memcmp(v11, *MEMORY[0x29EDBF878], v13) && v12 == v9)
  {
    v21 = (this + 28);
    v20 = this[28];
    *(this + 60) = 0;
    v22 = (this + 28);
    v23 = (this + 28);
    if (v20)
    {
      while (1)
      {
        while (1)
        {
          v23 = v20;
          v24 = *(v20 + 7);
          if (v24 < 1)
          {
            break;
          }

          v20 = *v23;
          v22 = v23;
          if (!*v23)
          {
            goto LABEL_49;
          }
        }

        if ((v24 & 0x80000000) == 0)
        {
          break;
        }

        v20 = v23[1];
        if (!v20)
        {
          v22 = v23 + 1;
          goto LABEL_49;
        }
      }

      v27 = *(v23 + 32);
      v29 = this + 25;
      v28 = this[25];
      v30 = (this + 25);
      v31 = (this + 25);
      if (v28)
      {
        goto LABEL_104;
      }
    }

    else
    {
LABEL_49:
      v25 = operator new(0x28uLL);
      v25[7] = 0;
      *(v25 + 32) = 0;
      *v25 = 0;
      *(v25 + 1) = 0;
      *(v25 + 2) = v23;
      *v22 = v25;
      v26 = *this[27];
      if (v26)
      {
        this[27] = v26;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[28], v25);
      this[29] = (this[29] + 1);
      v27 = *(v25 + 32);
      v29 = this + 25;
      v28 = this[25];
      v30 = (this + 25);
      v31 = (this + 25);
      if (v28)
      {
        while (1)
        {
LABEL_104:
          while (1)
          {
            v31 = v28;
            v62 = *(v28 + 7);
            if (v62 < 1)
            {
              break;
            }

            v28 = *v31;
            v30 = v31;
            if (!*v31)
            {
              goto LABEL_108;
            }
          }

          if ((v62 & 0x80000000) == 0)
          {
            break;
          }

          v28 = v31[1];
          if (!v28)
          {
            v30 = v31 + 1;
            goto LABEL_108;
          }
        }

        *(v31 + 32) = v27;
        v65 = *v21;
        v66 = this + 28;
        v67 = (this + 28);
        if (*v21)
        {
          goto LABEL_115;
        }

        goto LABEL_119;
      }
    }

LABEL_108:
    v63 = operator new(0x28uLL);
    v63[7] = 0;
    *(v63 + 32) = 0;
    *v63 = 0;
    *(v63 + 1) = 0;
    *(v63 + 2) = v31;
    *v30 = v63;
    v64 = *this[24];
    if (v64)
    {
      this[24] = v64;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[25], v63);
    this[26] = (this[26] + 1);
    *(v63 + 32) = v27;
    v65 = *v21;
    v66 = this + 28;
    v67 = (this + 28);
    if (*v21)
    {
      while (1)
      {
LABEL_115:
        while (1)
        {
          v67 = v65;
          v68 = *(v65 + 7);
          if (v68 < 2)
          {
            break;
          }

          v65 = *v67;
          v66 = v67;
          if (!*v67)
          {
            goto LABEL_119;
          }
        }

        if (v68 == 1)
        {
          break;
        }

        v65 = *(v67 + 1);
        if (!v65)
        {
          v66 = v67 + 8;
          goto LABEL_119;
        }
      }

      v71 = v67[32];
      v72 = *v29;
      v73 = v29;
      v74 = v29;
      if (*v29)
      {
        goto LABEL_126;
      }

      goto LABEL_130;
    }

LABEL_119:
    v69 = operator new(0x28uLL);
    v69[7] = 1;
    *(v69 + 32) = 0;
    *v69 = 0;
    *(v69 + 1) = 0;
    *(v69 + 2) = v67;
    *v66 = v69;
    v70 = *this[27];
    if (v70)
    {
      this[27] = v70;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[28], v69);
    this[29] = (this[29] + 1);
    v71 = *(v69 + 32);
    v72 = *v29;
    v73 = v29;
    v74 = v29;
    if (*v29)
    {
      while (1)
      {
LABEL_126:
        while (1)
        {
          v74 = v72;
          v75 = *(v72 + 28);
          if (v75 < 2)
          {
            break;
          }

          v72 = *v74;
          v73 = v74;
          if (!*v74)
          {
            goto LABEL_130;
          }
        }

        if (v75 == 1)
        {
          break;
        }

        v72 = v74[1];
        if (!v72)
        {
          v73 = v74 + 1;
          goto LABEL_130;
        }
      }

      *(v74 + 32) = v71;
      v78 = *v21;
      v79 = (this + 28);
      if (*v21)
      {
        goto LABEL_137;
      }

      goto LABEL_141;
    }

LABEL_130:
    v76 = operator new(0x28uLL);
    v76[7] = 1;
    *(v76 + 32) = 0;
    *v76 = 0;
    *(v76 + 1) = 0;
    *(v76 + 2) = v74;
    *v73 = v76;
    v77 = *this[24];
    if (v77)
    {
      this[24] = v77;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[25], v76);
    this[26] = (this[26] + 1);
    *(v76 + 32) = v71;
    v78 = *v21;
    v79 = (this + 28);
    if (*v21)
    {
      while (1)
      {
LABEL_137:
        while (1)
        {
          v79 = v78;
          v80 = *(v78 + 7);
          if (v80 < 4)
          {
            break;
          }

          v78 = *v79;
          v21 = v79;
          if (!*v79)
          {
            goto LABEL_141;
          }
        }

        if (v80 == 3)
        {
          break;
        }

        v78 = v79[1];
        if (!v78)
        {
          v21 = v79 + 1;
          goto LABEL_141;
        }
      }

      v83 = *(v79 + 32);
      v84 = *v29;
      v85 = v29;
      if (*v29)
      {
        goto LABEL_148;
      }

      goto LABEL_152;
    }

LABEL_141:
    v81 = operator new(0x28uLL);
    *(v81 + 7) = 3;
    *(v81 + 32) = 0;
    *v81 = 0;
    *(v81 + 1) = 0;
    *(v81 + 2) = v79;
    *v21 = v81;
    v82 = *this[27];
    if (v82)
    {
      this[27] = v82;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[28], v81);
    this[29] = (this[29] + 1);
    v83 = *(v81 + 32);
    v84 = *v29;
    v85 = v29;
    if (*v29)
    {
      while (1)
      {
LABEL_148:
        while (1)
        {
          v85 = v84;
          v86 = *(v84 + 7);
          if (v86 < 4)
          {
            break;
          }

          v84 = *v85;
          v29 = v85;
          if (!*v85)
          {
            goto LABEL_152;
          }
        }

        if (v86 == 3)
        {
          goto LABEL_232;
        }

        v84 = *(v85 + 1);
        if (!v84)
        {
          v29 = v85 + 8;
          break;
        }
      }
    }

LABEL_152:
    v87 = operator new(0x28uLL);
    v87[7] = 3;
    *(v87 + 32) = 0;
    *v87 = 0;
    *(v87 + 1) = 0;
    *(v87 + 2) = v85;
    *v29 = v87;
    v88 = *this[24];
    if (!v88)
    {
      goto LABEL_231;
    }

    goto LABEL_208;
  }

  v15 = *MEMORY[0x29EDBEF90];
  v16 = strlen(*MEMORY[0x29EDBEF90]);
  v17 = v16;
  if ((v10 & 0x80000000) != 0)
  {
    if (v16 != -1)
    {
      v18 = __s1[1];
      if (__s1[1] >= v16)
      {
        v32 = v16;
      }

      else
      {
        v32 = __s1[1];
      }

      if (memcmp(__s1[0], v15, v32))
      {
        goto LABEL_70;
      }

      goto LABEL_58;
    }

LABEL_351:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v16 == -1)
  {
    goto LABEL_351;
  }

  v18 = v10;
  if (v10 >= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v10;
  }

  if (memcmp(__s1, v15, v19))
  {
    goto LABEL_70;
  }

LABEL_58:
  if (v18 == v17)
  {
    v34 = (this + 25);
    v33 = this[25];
    *(this + 60) = 1;
    v35 = this + 25;
    v36 = (this + 25);
    if (v33)
    {
      v37 = v33;
      do
      {
        while (1)
        {
          v36 = v37;
          v38 = *(v37 + 7);
          if (v38 < 1)
          {
            break;
          }

          v37 = *v36;
          v35 = v36;
          if (!*v36)
          {
            goto LABEL_66;
          }
        }

        if ((v38 & 0x80000000) == 0)
        {
          v36[32] = 1;
          goto LABEL_173;
        }

        v37 = *(v36 + 1);
      }

      while (v37);
      v35 = v36 + 8;
    }

LABEL_66:
    v39 = operator new(0x28uLL);
    v39[7] = 0;
    *(v39 + 32) = 0;
    *v39 = 0;
    *(v39 + 1) = 0;
    *(v39 + 2) = v36;
    *v35 = v39;
    v40 = *this[24];
    if (v40)
    {
      this[24] = v40;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[25], v39);
    v33 = this[25];
    this[26] = (this[26] + 1);
    *(v39 + 32) = 1;
    v41 = (this + 25);
    v42 = (this + 25);
    if (v33)
    {
      while (1)
      {
LABEL_173:
        while (1)
        {
          v42 = v33;
          v100 = *(v33 + 7);
          if (v100 < 2)
          {
            break;
          }

          v33 = *v42;
          v41 = v42;
          if (!*v42)
          {
            goto LABEL_177;
          }
        }

        if (v100 == 1)
        {
          break;
        }

        v33 = v42[1];
        if (!v33)
        {
          v41 = v42 + 1;
          goto LABEL_177;
        }
      }

      *(v42 + 32) = 0;
      v103 = *v34;
      v85 = (this + 25);
      if (*v34)
      {
        goto LABEL_184;
      }

      goto LABEL_206;
    }

LABEL_177:
    v101 = operator new(0x28uLL);
    v101[7] = 1;
    *(v101 + 32) = 0;
    *v101 = 0;
    *(v101 + 1) = 0;
    *(v101 + 2) = v42;
    *v41 = v101;
    v102 = *this[24];
    if (v102)
    {
      this[24] = v102;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[25], v101);
    this[26] = (this[26] + 1);
    *(v101 + 32) = 0;
    v103 = *v34;
    v85 = (this + 25);
    if (!*v34)
    {
      goto LABEL_206;
    }

    while (1)
    {
LABEL_184:
      while (1)
      {
        v85 = v103;
        v104 = *(v103 + 7);
        if (v104 < 4)
        {
          break;
        }

        v103 = *v85;
        v34 = v85;
        if (!*v85)
        {
          goto LABEL_206;
        }
      }

      if (v104 == 3)
      {
        goto LABEL_210;
      }

      v103 = *(v85 + 1);
      if (!v103)
      {
        v34 = (v85 + 8);
        goto LABEL_206;
      }
    }
  }

LABEL_70:
  v43 = *MEMORY[0x29EDBECB8];
  v44 = strlen(*MEMORY[0x29EDBECB8]);
  v45 = v44;
  if ((v10 & 0x80000000) == 0)
  {
    if (v44 != -1)
    {
      v46 = v10;
      if (v10 >= v44)
      {
        v47 = v44;
      }

      else
      {
        v47 = v10;
      }

      if (memcmp(__s1, v43, v47))
      {
        goto LABEL_94;
      }

      goto LABEL_82;
    }

LABEL_352:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v44 == -1)
  {
    goto LABEL_352;
  }

  v46 = __s1[1];
  if (__s1[1] >= v44)
  {
    v48 = v44;
  }

  else
  {
    v48 = __s1[1];
  }

  if (!memcmp(__s1[0], v43, v48))
  {
LABEL_82:
    if (v46 != v45)
    {
      goto LABEL_94;
    }

    v34 = (this + 25);
    v49 = this[25];
    *(this + 60) = 2;
    v50 = this + 25;
    v51 = (this + 25);
    if (v49)
    {
      v52 = v49;
      do
      {
        while (1)
        {
          v51 = v52;
          v53 = *(v52 + 7);
          if (v53 < 1)
          {
            break;
          }

          v52 = *v51;
          v50 = v51;
          if (!*v51)
          {
            goto LABEL_90;
          }
        }

        if ((v53 & 0x80000000) == 0)
        {
          v51[32] = 0;
          goto LABEL_191;
        }

        v52 = *(v51 + 1);
      }

      while (v52);
      v50 = v51 + 8;
    }

LABEL_90:
    v54 = operator new(0x28uLL);
    v54[7] = 0;
    *(v54 + 32) = 0;
    *v54 = 0;
    *(v54 + 1) = 0;
    *(v54 + 2) = v51;
    *v50 = v54;
    v55 = *this[24];
    if (v55)
    {
      this[24] = v55;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[25], v54);
    v49 = this[25];
    this[26] = (this[26] + 1);
    *(v54 + 32) = 0;
    v56 = (this + 25);
    v57 = (this + 25);
    if (v49)
    {
      while (1)
      {
LABEL_191:
        while (1)
        {
          v57 = v49;
          v105 = *(v49 + 7);
          if (v105 < 2)
          {
            break;
          }

          v49 = *v57;
          v56 = v57;
          if (!*v57)
          {
            goto LABEL_195;
          }
        }

        if (v105 == 1)
        {
          break;
        }

        v49 = v57[1];
        if (!v49)
        {
          v56 = v57 + 1;
          goto LABEL_195;
        }
      }

      *(v57 + 32) = 1;
      v108 = *v34;
      v85 = (this + 25);
      if (*v34)
      {
        goto LABEL_202;
      }

      goto LABEL_206;
    }

LABEL_195:
    v106 = operator new(0x28uLL);
    v106[7] = 1;
    *(v106 + 32) = 0;
    *v106 = 0;
    *(v106 + 1) = 0;
    *(v106 + 2) = v57;
    *v56 = v106;
    v107 = *this[24];
    if (v107)
    {
      this[24] = v107;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[25], v106);
    this[26] = (this[26] + 1);
    *(v106 + 32) = 1;
    v108 = *v34;
    v85 = (this + 25);
    if (!*v34)
    {
LABEL_206:
      v87 = operator new(0x28uLL);
      v87[7] = 3;
      *(v87 + 32) = 0;
      *v87 = 0;
      *(v87 + 1) = 0;
      *(v87 + 2) = v85;
      *v34 = v87;
      v88 = *this[24];
      if (!v88)
      {
        v83 = 0;
        goto LABEL_231;
      }

      v83 = 0;
LABEL_208:
      this[24] = v88;
LABEL_231:
      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[25], v87);
      this[26] = (this[26] + 1);
      v85 = v87;
      goto LABEL_232;
    }

    while (1)
    {
LABEL_202:
      while (1)
      {
        v85 = v108;
        v109 = *(v108 + 7);
        if (v109 < 4)
        {
          break;
        }

        v108 = *v85;
        v34 = v85;
        if (!*v85)
        {
          goto LABEL_206;
        }
      }

      if (v109 == 3)
      {
        break;
      }

      v108 = *(v85 + 1);
      if (!v108)
      {
        v34 = (v85 + 8);
        goto LABEL_206;
      }
    }

LABEL_210:
    v83 = 0;
LABEL_232:
    v85[32] = v83;
    goto LABEL_233;
  }

LABEL_94:
  v58 = *MEMORY[0x29EDBEA70];
  v59 = strlen(*MEMORY[0x29EDBEA70]);
  v60 = v59;
  if ((v10 & 0x80000000) == 0)
  {
    if (v59 != -1)
    {
      if (v10 >= v59)
      {
        v61 = v59;
      }

      else
      {
        v61 = v10;
      }

      if (memcmp(__s1, v58, v61))
      {
        goto LABEL_233;
      }

      goto LABEL_159;
    }

LABEL_353:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v59 == -1)
  {
    goto LABEL_353;
  }

  v10 = __s1[1];
  if (__s1[1] >= v59)
  {
    v89 = v59;
  }

  else
  {
    v89 = __s1[1];
  }

  if (!memcmp(__s1[0], v58, v89))
  {
LABEL_159:
    if (v10 != v60)
    {
      goto LABEL_233;
    }

    v91 = (this + 25);
    v90 = this[25];
    *(this + 60) = 3;
    v92 = this + 25;
    v93 = (this + 25);
    if (v90)
    {
      v94 = v90;
      do
      {
        while (1)
        {
          v93 = v94;
          v95 = *(v94 + 7);
          if (v95 < 1)
          {
            break;
          }

          v94 = *v93;
          v92 = v93;
          if (!*v93)
          {
            goto LABEL_167;
          }
        }

        if ((v95 & 0x80000000) == 0)
        {
          v93[32] = 0;
          goto LABEL_213;
        }

        v94 = *(v93 + 1);
      }

      while (v94);
      v92 = v93 + 8;
    }

LABEL_167:
    v96 = operator new(0x28uLL);
    v96[7] = 0;
    *(v96 + 32) = 0;
    *v96 = 0;
    *(v96 + 1) = 0;
    *(v96 + 2) = v93;
    *v92 = v96;
    v97 = *this[24];
    if (v97)
    {
      this[24] = v97;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[25], v96);
    v90 = this[25];
    this[26] = (this[26] + 1);
    *(v96 + 32) = 0;
    v98 = (this + 25);
    v99 = (this + 25);
    if (v90)
    {
      while (1)
      {
LABEL_213:
        while (1)
        {
          v99 = v90;
          v110 = *(v90 + 7);
          if (v110 < 2)
          {
            break;
          }

          v90 = *v99;
          v98 = v99;
          if (!*v99)
          {
            goto LABEL_217;
          }
        }

        if (v110 == 1)
        {
          break;
        }

        v90 = v99[1];
        if (!v90)
        {
          v98 = v99 + 1;
          goto LABEL_217;
        }
      }

      *(v99 + 32) = 0;
      v113 = *v91;
      v85 = (this + 25);
      if (*v91)
      {
        goto LABEL_224;
      }
    }

    else
    {
LABEL_217:
      v111 = operator new(0x28uLL);
      v111[7] = 1;
      *(v111 + 32) = 0;
      *v111 = 0;
      *(v111 + 1) = 0;
      *(v111 + 2) = v99;
      *v98 = v111;
      v112 = *this[24];
      if (v112)
      {
        this[24] = v112;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[25], v111);
      this[26] = (this[26] + 1);
      *(v111 + 32) = 0;
      v113 = *v91;
      v85 = (this + 25);
      if (*v91)
      {
        while (1)
        {
LABEL_224:
          while (1)
          {
            v85 = v113;
            v114 = *(v113 + 7);
            if (v114 < 4)
            {
              break;
            }

            v113 = *v85;
            v91 = v85;
            if (!*v85)
            {
              goto LABEL_228;
            }
          }

          if (v114 == 3)
          {
            break;
          }

          v113 = *(v85 + 1);
          if (!v113)
          {
            v91 = (v85 + 8);
            goto LABEL_228;
          }
        }

        v83 = 1;
        goto LABEL_232;
      }
    }

LABEL_228:
    v87 = operator new(0x28uLL);
    v87[7] = 3;
    *(v87 + 32) = 0;
    *v87 = 0;
    *(v87 + 1) = 0;
    *(v87 + 2) = v85;
    *v91 = v87;
    v115 = *this[24];
    if (v115)
    {
      this[24] = v115;
    }

    v83 = 1;
    goto LABEL_231;
  }

LABEL_233:
  v116 = this[4];
  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
  {
    v152 = (this + 25);
    v151 = this[25];
    if (v151)
    {
      while (1)
      {
        while (1)
        {
          v153 = v151;
          v154 = *(v151 + 7);
          if (v154 < 1)
          {
            break;
          }

          v151 = *v153;
          v152 = v153;
          if (!*v153)
          {
            goto LABEL_320;
          }
        }

        if ((v154 & 0x80000000) == 0)
        {
          break;
        }

        v151 = v153[1];
        if (!v151)
        {
          v152 = v153 + 1;
          goto LABEL_320;
        }
      }

      v155 = v153;
    }

    else
    {
      v153 = (this + 25);
LABEL_320:
      v155 = operator new(0x28uLL);
      v155[7] = 0;
      *(v155 + 32) = 0;
      *v155 = 0;
      *(v155 + 1) = 0;
      *(v155 + 2) = v153;
      *v152 = v155;
      v156 = *this[24];
      if (v156)
      {
        this[24] = v156;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[25], v155);
      this[26] = (this[26] + 1);
    }

    v157 = *(v155 + 32);
    LODWORD(object[0]) = 67109120;
    HIDWORD(object[0]) = v157;
    _os_log_debug_impl(&dword_297476000, v116, OS_LOG_TYPE_DEBUG, "#D Audio Receiver: %d", object, 8u);
    v116 = this[4];
    if (!os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
    {
LABEL_235:
      if (!os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_236;
      }

      goto LABEL_335;
    }
  }

  else if (!os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_235;
  }

  v159 = (this + 25);
  v158 = this[25];
  if (v158)
  {
    while (1)
    {
      while (1)
      {
        v160 = v158;
        v161 = *(v158 + 7);
        if (v161 < 2)
        {
          break;
        }

        v158 = *v160;
        v159 = v160;
        if (!*v160)
        {
          goto LABEL_331;
        }
      }

      if (v161 == 1)
      {
        break;
      }

      v158 = v160[1];
      if (!v158)
      {
        v159 = v160 + 1;
        goto LABEL_331;
      }
    }

    v162 = v160;
  }

  else
  {
    v160 = (this + 25);
LABEL_331:
    v162 = operator new(0x28uLL);
    v162[7] = 1;
    *(v162 + 32) = 0;
    *v162 = 0;
    *(v162 + 1) = 0;
    *(v162 + 2) = v160;
    *v159 = v162;
    v163 = *this[24];
    if (v163)
    {
      this[24] = v163;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[25], v162);
    this[26] = (this[26] + 1);
  }

  v164 = *(v162 + 32);
  LODWORD(object[0]) = 67109120;
  HIDWORD(object[0]) = v164;
  _os_log_debug_impl(&dword_297476000, v116, OS_LOG_TYPE_DEBUG, "#D Audio Other: %d", object, 8u);
  v116 = this[4];
  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
  {
LABEL_335:
    v166 = (this + 25);
    v165 = this[25];
    if (v165)
    {
      while (1)
      {
        while (1)
        {
          v167 = v165;
          v168 = *(v165 + 7);
          if (v168 < 4)
          {
            break;
          }

          v165 = *v167;
          v166 = v167;
          if (!*v167)
          {
            goto LABEL_342;
          }
        }

        if (v168 == 3)
        {
          break;
        }

        v165 = v167[1];
        if (!v165)
        {
          v166 = v167 + 1;
          goto LABEL_342;
        }
      }

      v169 = v167;
    }

    else
    {
      v167 = (this + 25);
LABEL_342:
      v169 = operator new(0x28uLL);
      v169[7] = 3;
      *(v169 + 32) = 0;
      *v169 = 0;
      *(v169 + 1) = 0;
      *(v169 + 2) = v167;
      *v166 = v169;
      v170 = *this[24];
      if (v170)
      {
        this[24] = v170;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[25], v169);
      this[26] = (this[26] + 1);
    }

    v171 = *(v169 + 32);
    LODWORD(object[0]) = 67109120;
    HIDWORD(object[0]) = v171;
    _os_log_debug_impl(&dword_297476000, v116, OS_LOG_TYPE_DEBUG, "#D Audio Speaker: %d", object, 8u);
  }

LABEL_236:
  v117 = xpc_dictionary_create(0, 0, 0);
  v118 = MEMORY[0x29EDCAA00];
  if (v117 || (v117 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v117) == v118)
    {
      xpc_retain(v117);
      v119 = v117;
    }

    else
    {
      v119 = xpc_null_create();
    }
  }

  else
  {
    v119 = xpc_null_create();
    v117 = 0;
  }

  xpc_release(v117);
  v120 = xpc_dictionary_create(0, 0, 0);
  if (v120 || (v120 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v120) == v118)
    {
      xpc_retain(v120);
      v121 = v120;
    }

    else
    {
      v121 = xpc_null_create();
    }
  }

  else
  {
    v121 = xpc_null_create();
    v120 = 0;
  }

  xpc_release(v120);
  v123 = (this + 25);
  v122 = this[25];
  v124 = (this + 25);
  v125 = (this + 25);
  if (v122)
  {
    while (1)
    {
      while (1)
      {
        v125 = v122;
        v126 = *(v122 + 7);
        if (v126 < 1)
        {
          break;
        }

        v122 = *v125;
        v124 = v125;
        if (!*v125)
        {
          goto LABEL_255;
        }
      }

      if ((v126 & 0x80000000) == 0)
      {
        break;
      }

      v122 = v125[1];
      if (!v122)
      {
        v124 = v125 + 1;
        goto LABEL_255;
      }
    }

    v127 = v125;
  }

  else
  {
LABEL_255:
    v127 = operator new(0x28uLL);
    *(v127 + 7) = 0;
    *(v127 + 32) = 0;
    *v127 = 0;
    *(v127 + 1) = 0;
    *(v127 + 2) = v125;
    *v124 = v127;
    v128 = *this[24];
    if (v128)
    {
      this[24] = v128;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[25], v127);
    this[26] = (this[26] + 1);
  }

  v129 = xpc_BOOL_create(*(v127 + 32));
  if (!v129)
  {
    v129 = xpc_null_create();
  }

  xpc_dictionary_set_value(v121, *MEMORY[0x29EDBEED0], v129);
  v130 = xpc_null_create();
  xpc_release(v129);
  xpc_release(v130);
  v131 = *v123;
  v132 = this + 25;
  v133 = this + 25;
  if (*v123)
  {
    while (1)
    {
      while (1)
      {
        v133 = v131;
        v134 = *(v131 + 28);
        if (v134 < 2)
        {
          break;
        }

        v131 = *v133;
        v132 = v133;
        if (!*v133)
        {
          goto LABEL_267;
        }
      }

      if (v134 == 1)
      {
        break;
      }

      v131 = v133[1];
      if (!v131)
      {
        v132 = v133 + 1;
        goto LABEL_267;
      }
    }

    v135 = v133;
  }

  else
  {
LABEL_267:
    v135 = operator new(0x28uLL);
    *(v135 + 7) = 1;
    *(v135 + 32) = 0;
    *v135 = 0;
    *(v135 + 1) = 0;
    *(v135 + 2) = v133;
    *v132 = v135;
    v136 = *this[24];
    if (v136)
    {
      this[24] = v136;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[25], v135);
    this[26] = (this[26] + 1);
  }

  v137 = xpc_BOOL_create(*(v135 + 32));
  if (!v137)
  {
    v137 = xpc_null_create();
  }

  xpc_dictionary_set_value(v121, *MEMORY[0x29EDBEAF0], v137);
  v138 = xpc_null_create();
  xpc_release(v137);
  xpc_release(v138);
  v139 = *v123;
  v140 = (this + 25);
  if (*v123)
  {
    while (1)
    {
      while (1)
      {
        v140 = v139;
        v141 = *(v139 + 28);
        if (v141 < 4)
        {
          break;
        }

        v139 = *v140;
        v123 = v140;
        if (!*v140)
        {
          goto LABEL_280;
        }
      }

      if (v141 == 3)
      {
        break;
      }

      v139 = v140[1];
      if (!v139)
      {
        v123 = v140 + 1;
        goto LABEL_280;
      }
    }

    v142 = v140;
  }

  else
  {
LABEL_280:
    v142 = operator new(0x28uLL);
    *(v142 + 7) = 3;
    *(v142 + 32) = 0;
    *v142 = 0;
    *(v142 + 1) = 0;
    *(v142 + 2) = v140;
    *v123 = v142;
    v143 = *this[24];
    if (v143)
    {
      this[24] = v143;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[25], v142);
    this[26] = (this[26] + 1);
  }

  v144 = xpc_BOOL_create(*(v142 + 32));
  if (!v144)
  {
    v144 = xpc_null_create();
  }

  xpc_dictionary_set_value(v121, *MEMORY[0x29EDBED70], v144);
  v145 = xpc_null_create();
  xpc_release(v144);
  xpc_release(v145);
  if (v121)
  {
    xpc_retain(v121);
    v146 = v121;
  }

  else
  {
    v146 = xpc_null_create();
  }

  xpc_dictionary_set_value(v119, *MEMORY[0x29EDBE6B0], v146);
  v147 = xpc_null_create();
  xpc_release(v146);
  xpc_release(v147);
  v172 = v119;
  if (v119)
  {
    xpc_retain(v119);
    v148 = v172;
  }

  else
  {
    v148 = xpc_null_create();
    v172 = v148;
  }

  antenna::Service::Internal::setAudioState(this, &v172);
  xpc_release(v148);
  v172 = 0;
  *(this + 245) = 0;
  if (*(this + 244) == 1)
  {
    if ((TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild() || (v149 = *(this + 30), v149 == 4))
    {
      if ((antenna::Service::Internal::isAudioReceiverOutputOnlyActive(this) & 1) != 0 || antenna::Service::Internal::isAudioAnyOutputActive(this) && !*(this + 41))
      {
        goto LABEL_297;
      }

      if (*(this + 75) == 1)
      {
        if ((antenna::Service::Internal::isAudioAnyOutputActive(this) & 1) != 0 || *(this + 41))
        {
          if (v7 == 3)
          {
            goto LABEL_310;
          }

LABEL_309:
          *(this + 245) = 1;
          goto LABEL_310;
        }

LABEL_297:
        if (v7 == 2)
        {
          goto LABEL_310;
        }

        goto LABEL_309;
      }

      v149 = 3;
    }

    if (v149 == v7)
    {
      goto LABEL_310;
    }

    goto LABEL_309;
  }

LABEL_310:
  xpc_release(v121);
  xpc_release(v119);
  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
  }

  v150 = *MEMORY[0x29EDCA608];
}

void sub_297546184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, xpc_object_t object)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void antenna::Service::Internal::getTxPowerAudioModeString(antenna::Service::Internal *this@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = *(this + 60);
  if (v4 < 4)
  {
    std::string::__assign_external(a2, **(&unk_29EE6BAE0 + v4));
  }

  v5 = *(this + 4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2->__r_.__value_.__r.__words[0];
    }

    v9 = 136315138;
    v10 = v7;
    _os_log_debug_impl(&dword_297476000, v5, OS_LOG_TYPE_DEBUG, "#D Audio Selected Mode: %s", &v9, 0xCu);
    v8 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];
  }
}

void sub_2975463D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void antenna::Service::Internal::copyTxPowerAudioMode_sync(antenna::Service::Internal *this@<X0>, xpc_object_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  v6 = MEMORY[0x29EDCAA00];
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v7 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C272BA0](v5) == v6)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  *a2 = v7;
LABEL_9:
  xpc_release(v5);
  v8 = *a2;
  if (MEMORY[0x29C272BA0](*a2) == v6)
  {
    antenna::Service::Internal::getTxPowerAudioModeString(this, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v10 = xpc_string_create(p_p);
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, *MEMORY[0x29EDBF670], v10);
    v11 = xpc_null_create();
    xpc_release(v10);
    xpc_release(v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (((TelephonyUtilIsInternalBuild() & 1) != 0 || TelephonyUtilIsCarrierBuild()) && *(this + 72) == 1)
    {
      v12 = xpc_dictionary_create(0, 0, 0);
      if (v12 || (v12 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C272BA0](v12) == v6)
        {
          xpc_retain(v12);
          v13 = v12;
        }

        else
        {
          v13 = xpc_null_create();
        }
      }

      else
      {
        v13 = xpc_null_create();
        v12 = 0;
      }

      xpc_release(v12);
      if (MEMORY[0x29C272BA0](v13) == v6)
      {
        v14 = xpc_string_create(*MEMORY[0x29EDBF878]);
        if (!v14)
        {
          v14 = xpc_null_create();
        }

        xpc_dictionary_set_value(v13, *MEMORY[0x29EDBED10], v14);
        v15 = xpc_null_create();
        xpc_release(v14);
        xpc_release(v15);
        v16 = xpc_string_create(*MEMORY[0x29EDBEF90]);
        if (!v16)
        {
          v16 = xpc_null_create();
        }

        xpc_dictionary_set_value(v13, *MEMORY[0x29EDBF0F8], v16);
        v17 = xpc_null_create();
        xpc_release(v16);
        xpc_release(v17);
        v18 = xpc_string_create(*MEMORY[0x29EDBECB8]);
        if (!v18)
        {
          v18 = xpc_null_create();
        }

        xpc_dictionary_set_value(v13, *MEMORY[0x29EDBEE60], v18);
        v19 = xpc_null_create();
        xpc_release(v18);
        xpc_release(v19);
        v20 = xpc_string_create(*MEMORY[0x29EDBEA70]);
        if (!v20)
        {
          v20 = xpc_null_create();
        }

        xpc_dictionary_set_value(v13, *MEMORY[0x29EDBF100], v20);
        v21 = xpc_null_create();
        xpc_release(v20);
        xpc_release(v21);
        if (v13)
        {
          xpc_retain(v13);
          v22 = v13;
        }

        else
        {
          v22 = xpc_null_create();
        }

        xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF678], v22);
        v23 = xpc_null_create();
        xpc_release(v22);
        xpc_release(v23);
      }

      xpc_release(v13);
    }
  }
}

void sub_2975467CC(_Unwind_Exception *a1)
{
  xpc_release(v2);
  xpc::dict::~dict(v1);
  _Unwind_Resume(a1);
}

void antenna::Service::Internal::setTxPowerAudioAlert_sync(antenna::Service::Internal *this, xpc_object_t *a2)
{
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  if ((IsInternalBuild & 1) != 0 || (IsInternalBuild = TelephonyUtilIsCarrierBuild(), IsInternalBuild))
  {
    if (CMOnBodyDelegate::isSupported(IsInternalBuild))
    {
      memset(__p, 170, sizeof(__p));
      value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF6E8]);
      object = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        object = xpc_null_create();
      }

      xpc::dyn_cast_or_default(__p, &object, "", v6);
      xpc_release(object);
      v7 = HIBYTE(__p[2]);
      if (SHIBYTE(__p[2]) >= 0)
      {
        v8 = (__p + HIBYTE(__p[2]));
      }

      else
      {
        v8 = (__p[0] + __p[1]);
      }

      if (SHIBYTE(__p[2]) >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if (v9 != v8)
      {
        do
        {
          *v9 = __toupper(*v9);
          v9 = (v9 + 1);
        }

        while (v9 != v8);
        v7 = HIBYTE(__p[2]);
      }

      v10 = strlen(*MEMORY[0x29EDBEA68]);
      v11 = v10;
      if ((v7 & 0x80) != 0)
      {
        if (v10 != -1)
        {
          v13 = __p[0];
          v12 = __p[1];
          goto LABEL_21;
        }
      }

      else if (v10 != -1)
      {
        v12 = v7;
        v13 = __p;
LABEL_21:
        if (v12 >= v11)
        {
          v14 = v11;
        }

        else
        {
          v14 = v12;
        }

        v15 = memcmp(v13, *MEMORY[0x29EDBEA68], v14) == 0;
        if (v12 != v11)
        {
          v15 = 0;
        }

        *(this + 244) = v15;
        *(this + 245) = v15;
        if ((v7 & 0x80) != 0)
        {
          operator delete(__p[0]);
        }

        return;
      }

      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }
}

void antenna::Service::Internal::copyTxPowerAudioAlert_sync(antenna::Service::Internal *this@<X0>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  v6 = MEMORY[0x29EDCAA00];
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v7 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C272BA0](v5) == v6)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  *a2 = v7;
LABEL_9:
  xpc_release(v5);
  v8 = *a2;
  if (MEMORY[0x29C272BA0](*a2) == v6)
  {
    if (((TelephonyUtilIsInternalBuild() & 1) != 0 || TelephonyUtilIsCarrierBuild()) && *(this + 72) == 1)
    {
      if (*(this + 244) == 1)
      {
        v9 = xpc_string_create(*MEMORY[0x29EDBEA68]);
        if (!v9)
        {
          v9 = xpc_null_create();
        }
      }

      else
      {
        v9 = xpc_string_create(*MEMORY[0x29EDBEB48]);
        if (!v9)
        {
          v9 = xpc_null_create();
        }
      }
    }

    else
    {
      v9 = xpc_string_create(*MEMORY[0x29EDBEB48]);
      if (!v9)
      {
        v9 = xpc_null_create();
      }
    }

    xpc_dictionary_set_value(v8, *MEMORY[0x29EDBF6E8], v9);
    v10 = xpc_null_create();
    xpc_release(v9);
    xpc_release(v10);
  }
}

void antenna::Service::Internal::setTxPowerMotionMode_sync(antenna::Service::Internal *this, xpc_object_t *a2)
{
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  if ((IsInternalBuild & 1) != 0 || (IsInternalBuild = TelephonyUtilIsCarrierBuild(), IsInternalBuild))
  {
    if (CMOnBodyDelegate::isSupported(IsInternalBuild))
    {
      memset(__s1, 170, sizeof(__s1));
      value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF818]);
      object = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        object = xpc_null_create();
      }

      xpc::dyn_cast_or_default(__s1, &object, "", v6);
      xpc_release(object);
      v7 = HIBYTE(__s1[2]);
      if (__s1[2] >= 0)
      {
        v8 = (__s1 + HIBYTE(__s1[2]));
      }

      else
      {
        v8 = (__s1[0] + __s1[1]);
      }

      if (__s1[2] >= 0)
      {
        v9 = __s1;
      }

      else
      {
        v9 = __s1[0];
      }

      if (v9 != v8)
      {
        do
        {
          *v9 = __toupper(*v9);
          v9 = (v9 + 1);
        }

        while (v9 != v8);
        v7 = HIBYTE(__s1[2]);
      }

      v10 = strlen(*MEMORY[0x29EDBF878]);
      v11 = v10;
      if ((v7 & 0x80) != 0)
      {
        if (v10 != -1)
        {
          v13 = __s1[0];
          v12 = __s1[1];
LABEL_21:
          if (v12 >= v11)
          {
            v14 = v11;
          }

          else
          {
            v14 = v12;
          }

          if (!memcmp(v13, *MEMORY[0x29EDBF878], v14) && v12 == v11)
          {
            v20 = 0;
            goto LABEL_56;
          }

          v16 = strlen(*MEMORY[0x29EDBEFA8]);
          v17 = v16;
          if ((v7 & 0x80) != 0)
          {
            if (v16 != -1)
            {
              v19 = __s1[0];
              v18 = __s1[1];
LABEL_34:
              if (v18 >= v17)
              {
                v21 = v17;
              }

              else
              {
                v21 = v18;
              }

              if (!memcmp(v19, *MEMORY[0x29EDBEFA8], v21) && v18 == v17)
              {
                v20 = 1;
                goto LABEL_56;
              }

              v23 = *MEMORY[0x29EDBEFA0];
              v24 = strlen(*MEMORY[0x29EDBEFA0]);
              v25 = v24;
              if ((v7 & 0x80) != 0)
              {
                if (v24 != -1)
                {
                  v26 = __s1[1];
                  if (__s1[1] >= v24)
                  {
                    v28 = v24;
                  }

                  else
                  {
                    v28 = __s1[1];
                  }

                  if (memcmp(__s1[0], v23, v28))
                  {
                    goto LABEL_57;
                  }

LABEL_54:
                  if (v26 != v25)
                  {
                    goto LABEL_57;
                  }

                  v20 = 2;
LABEL_56:
                  *(this + 46) = v20;
LABEL_57:
                  if ((v7 & 0x80) != 0)
                  {
                    operator delete(__s1[0]);
                  }

                  return;
                }
              }

              else if (v24 != -1)
              {
                v26 = v7;
                if (v7 >= v24)
                {
                  v27 = v24;
                }

                else
                {
                  v27 = v7;
                }

                if (memcmp(__s1, v23, v27))
                {
                  goto LABEL_57;
                }

                goto LABEL_54;
              }

              std::string::__throw_out_of_range[abi:ne200100]();
            }
          }

          else if (v16 != -1)
          {
            v18 = v7;
            v19 = __s1;
            goto LABEL_34;
          }

          std::string::__throw_out_of_range[abi:ne200100]();
        }
      }

      else if (v10 != -1)
      {
        v12 = v7;
        v13 = __s1;
        goto LABEL_21;
      }

      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }
}

std::string *antenna::Service::Internal::getTxPowerMotionModeString@<X0>(std::string *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = LODWORD(this[7].__r_.__value_.__r.__words[2]);
  if (v3 < 3)
  {
    return std::string::__assign_external(a2, **(&unk_29EE6BB20 + v3));
  }

  return this;
}

void sub_297546F04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void antenna::Service::Internal::copyTxPowerMotionMode_sync(antenna::Service::Internal *this@<X0>, xpc_object_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  v6 = MEMORY[0x29EDCAA00];
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v7 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C272BA0](v5) == v6)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  *a2 = v7;
LABEL_9:
  xpc_release(v5);
  v8 = *a2;
  if (MEMORY[0x29C272BA0](*a2) == v6)
  {
    memset(&v24, 0, sizeof(v24));
    v9 = *(this + 46);
    if (v9 < 3)
    {
      std::string::__assign_external(&v24, **(&unk_29EE6BB20 + v9));
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v24;
    }

    else
    {
      v10 = v24.__r_.__value_.__r.__words[0];
    }

    v11 = xpc_string_create(v10);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, *MEMORY[0x29EDBF818], v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    IsInternalBuild = TelephonyUtilIsInternalBuild();
    if ((IsInternalBuild & 1) != 0 || (IsInternalBuild = TelephonyUtilIsCarrierBuild(), IsInternalBuild))
    {
      if (CMOnBodyDelegate::isSupported(IsInternalBuild))
      {
        v14 = xpc_dictionary_create(0, 0, 0);
        if (v14 || (v14 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v14) == v6)
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
        if (MEMORY[0x29C272BA0](v15) == v6)
        {
          v16 = xpc_string_create(*MEMORY[0x29EDBF878]);
          if (!v16)
          {
            v16 = xpc_null_create();
          }

          xpc_dictionary_set_value(v15, *MEMORY[0x29EDBF6F0], v16);
          v17 = xpc_null_create();
          xpc_release(v16);
          xpc_release(v17);
          v18 = xpc_string_create(*MEMORY[0x29EDBEFA8]);
          if (!v18)
          {
            v18 = xpc_null_create();
          }

          xpc_dictionary_set_value(v15, *MEMORY[0x29EDBF788], v18);
          v19 = xpc_null_create();
          xpc_release(v18);
          xpc_release(v19);
          v20 = xpc_string_create(*MEMORY[0x29EDBEFA0]);
          if (!v20)
          {
            v20 = xpc_null_create();
          }

          xpc_dictionary_set_value(v15, *MEMORY[0x29EDBF780], v20);
          v21 = xpc_null_create();
          xpc_release(v20);
          xpc_release(v21);
          if (v15)
          {
            xpc_retain(v15);
            v22 = v15;
          }

          else
          {
            v22 = xpc_null_create();
          }

          xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF7F8], v22);
          v23 = xpc_null_create();
          xpc_release(v22);
          xpc_release(v23);
        }

        xpc_release(v15);
      }
    }
  }
}

void sub_2975472AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(v16);
  xpc::dict::~dict(v15);
  _Unwind_Resume(a1);
}

void antenna::Service::Internal::setTxPowerMotionHandDetection_sync(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v19 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 23);
  v5 = a2;
  if (v4 < 0)
  {
    v5 = *a2;
  }

  v6 = *MEMORY[0x29EDBF878];
  v7 = strlen(*MEMORY[0x29EDBF878]);
  if (!strncasecmp(v5, *MEMORY[0x29EDBF878], v7))
  {
    std::string::__assign_external((a1 + 440), v6);
    v13 = *(a1 + 432);
    v14 = *(a1 + 32);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = v2;
    if (v4 < 0)
    {
      v8 = *v2;
    }

    v9 = *MEMORY[0x29EDBF5B8];
    v10 = strlen(*MEMORY[0x29EDBF5B8]);
    if (!strncasecmp(v8, *MEMORY[0x29EDBF5B8], v10))
    {
      std::string::__assign_external((a1 + 440), v9);
      v13 = 1;
      v14 = *(a1 + 32);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v4 < 0)
      {
        v2 = *v2;
      }

      v11 = *MEMORY[0x29EDBF650];
      v12 = strlen(*MEMORY[0x29EDBF650]);
      if (!strncasecmp(v2, *MEMORY[0x29EDBF650], v12))
      {
        std::string::__assign_external((a1 + 440), v11);
        v13 = 2;
        v14 = *(a1 + 32);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v13 = 0;
        v14 = *(a1 + 32);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_20;
        }
      }
    }
  }

  v15 = (a1 + 440);
  if (*(a1 + 463) < 0)
  {
    v15 = *v15;
  }

  v17 = 136315138;
  v18 = v15;
  _os_log_debug_impl(&dword_297476000, v14, OS_LOG_TYPE_DEBUG, "#D Hand Detection Overriding: %s", &v17, 0xCu);
LABEL_20:
  antenna::Service::Internal::sendMotionHandDetectionState_sync(a1, v13);
  v16 = *MEMORY[0x29EDCA608];
}

void antenna::Service::Internal::antennaSetProperty(antenna::Service::Internal *this, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v4 = *(this + 1);
    if (!v4)
    {
LABEL_12:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = xpc_null_create();
    v4 = *(this + 1);
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  v5 = *this;
  v6 = std::__shared_weak_count::lock(v4);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = this;
  v8[1] = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v8[1] = xpc_null_create();
  }

  v9 = *(this + 2);
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::antennaSetProperty(xpc::dict const&)::$_0>(antenna::Service::Internal::antennaSetProperty(xpc::dict const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::antennaSetProperty(xpc::dict const&)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::antennaSetProperty(xpc::dict const&)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  xpc_release(v3);
}

void antenna::Service::Internal::antennaGetProperty(NSObject **this@<X0>, void **a2@<X1>, xpc_object_t *a3@<X8>)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  v8 = MEMORY[0x29EDCAA00];
  if (v6)
  {
    v18 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v18 = v7;
    if (!v7)
    {
      v9 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C272BA0](v7) == v8)
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v9 = xpc_null_create();
LABEL_8:
  v18 = v9;
LABEL_9:
  xpc_release(v7);
  v10 = v18;
  if (MEMORY[0x29C272BA0](v18) == v8)
  {
    v12 = *a2;
    v15 = &v18;
    object = v12;
    if (v12)
    {
      xpc_retain(v12);
      v17 = this;
      if (this[3])
      {
LABEL_15:
        if (dispatch_workloop_is_current())
        {
          antenna::Service::Internal::antennaGetProperty(xpc::dict const&)::$_0::operator()(&v15);
LABEL_23:
          xpc_release(object);
          *a3 = v18;
          v10 = xpc_null_create();
          v18 = v10;
          goto LABEL_24;
        }

        v13 = this[3] == 0;
LABEL_20:
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 0x40000000;
        block[2] = ___ZNK3ctu20SharedSynchronizableIN7antenna7Service8InternalEE20execute_wrapped_syncIZNS3_18antennaGetPropertyERKN3xpc4dictEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSB__block_invoke;
        block[3] = &__block_descriptor_tmp_101;
        block[4] = this;
        block[5] = &v15;
        v14 = this[2];
        if (v13)
        {
          dispatch_sync(v14, block);
        }

        else
        {
          dispatch_async_and_wait(v14, block);
        }

        goto LABEL_23;
      }
    }

    else
    {
      object = xpc_null_create();
      v17 = this;
      if (this[3])
      {
        goto LABEL_15;
      }
    }

    v13 = 1;
    goto LABEL_20;
  }

  v11 = this[4];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    LOWORD(block[0]) = 0;
    _os_log_error_impl(&dword_297476000, v11, OS_LOG_TYPE_ERROR, "Failed to create a xpc dictionary!", block, 2u);
  }

  *a3 = xpc_null_create();
LABEL_24:
  xpc_release(v10);
}

void antenna::Service::Internal::sendTxPowerCappingIPadMode_sync(antenna::Service::Internal *this)
{
  v2 = *(this + 46);
  if (v2 != 2)
  {
    if (v2)
    {
      v2 = 0;
    }

    else if (*(this + 41))
    {
      v2 = 2;
    }

    else
    {
      v2 = 2 * (*(this + 529) == 1);
    }
  }

  *(this + 66) = v2;
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
  v5 = xpc_string_create(*MEMORY[0x29EDC9018]);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDC8FA8], v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  if (*(this + 66))
  {
    v7 = xpc_BOOL_create(1);
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, *MEMORY[0x29EDC9040], v7);
    v8 = xpc_null_create();
    xpc_release(v7);
    xpc_release(v8);
    v9 = *(this + 4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v10 = "#D iPad Tx Power Capping Start";
LABEL_42:
      _os_log_debug_impl(&dword_297476000, v9, OS_LOG_TYPE_DEBUG, v10, buf, 2u);
    }
  }

  else
  {
    v11 = xpc_BOOL_create(1);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, *MEMORY[0x29EDC9030], v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
    v9 = *(this + 4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v10 = "#D iPad Tx Power Capping Stop";
      goto LABEL_42;
    }
  }

  v13 = xpc_int64_create(*(this + 63));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDC8FB0], v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = *(this + 1);
  if (!v15 || (v16 = *this, (v17 = std::__shared_weak_count::lock(v15)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v18 = v17;
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v19 = *(this + 7);
    v26 = v4;
    if (v4)
    {
LABEL_29:
      xpc_retain(v4);
      goto LABEL_32;
    }
  }

  else
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v18);
    v19 = *(this + 7);
    v26 = v4;
    if (v4)
    {
      goto LABEL_29;
    }
  }

  v26 = xpc_null_create();
LABEL_32:
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN7antenna7Service8Internal31sendTxPowerCappingIPadMode_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_11_2;
  aBlock[4] = this;
  aBlock[5] = v16;
  v23 = v18;
  atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v20 = _Block_copy(aBlock);
  v21 = *(this + 2);
  if (v21)
  {
    dispatch_retain(v21);
  }

  *buf = v20;
  object = v21;
  (**v19)(v19, &v26, buf);
  if (object)
  {
    dispatch_release(object);
  }

  if (*buf)
  {
    _Block_release(*buf);
  }

  xpc_release(v26);
  v26 = 0;
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  std::__shared_weak_count::__release_weak(v18);
  xpc_release(v4);
}

void sub_297547CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17)
{
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&a17);
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  xpc_release(*(v19 - 56));
  *(v19 - 56) = 0;
  std::__shared_weak_count::__release_weak(v18);
  xpc_release(v17);
  _Unwind_Resume(a1);
}

uint64_t antenna::Service::Internal::getTxPowerIPadWithMotionCappingMode_sync(antenna::Service::Internal *this)
{
  v1 = *(this + 46);
  if (v1 == 2)
  {
    return 2;
  }

  if (v1)
  {
    return 0;
  }

  if (*(this + 41))
  {
    return 2;
  }

  return 2 * (*(this + 529) == 1);
}

void ___ZN7antenna7Service8Internal31sendTxPowerCappingIPadMode_syncEv_block_invoke(void *a1, char a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = a1[5];
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7 && (a2 & 1) == 0)
      {
        v9 = *(v5 + 32);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v13 = *MEMORY[0x29EDC9018];
          v14 = 136315138;
          v15 = v13;
          _os_log_error_impl(&dword_297476000, v9, OS_LOG_TYPE_ERROR, "Failed to run command driver: %s", &v14, 0xCu);
          if (*(v5 + 73) != 1)
          {
            goto LABEL_13;
          }
        }

        else if (*(v5 + 73) != 1)
        {
          goto LABEL_13;
        }

        antenna::Service::Internal::stopMotionDetection_sync(v5);
        v10 = *(v5 + 272);
        if (v10)
        {
          dispatch_source_cancel(v10);
          v11 = *(v5 + 272);
          *(v5 + 272) = 0;
          if (v11)
          {
            dispatch_release(v11);
          }
        }

        *(v5 + 264) = 255;
      }
    }
  }

LABEL_13:
  v12 = *MEMORY[0x29EDCA608];
}

void antenna::Service::Internal::stopTxPowerCappingIPadWithMotionTimer_sync(antenna::Service::Internal *this)
{
  v2 = *(this + 34);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 34);
    *(this + 34) = 0;
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void antenna::Service::Internal::startTxPowerCappingIPadWithMotionTimer_sync(dispatch_queue_t *this)
{
  v2 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, this[2]);
  v3 = this[34];
  this[34] = v2;
  if (v3)
  {
    dispatch_release(v3);
    v2 = this[34];
  }

  v4 = dispatch_time(0, 2000000000);
  dispatch_source_set_timer(v2, v4, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
  v5 = this[1];
  if (!v5 || (v6 = *this, (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  p_shared_weak_owners = &v7->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  v10 = this[34];
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 1174405120;
  handler[2] = ___ZN7antenna7Service8Internal43startTxPowerCappingIPadWithMotionTimer_syncEv_block_invoke;
  handler[3] = &__block_descriptor_tmp_14_2;
  handler[4] = this;
  handler[5] = v6;
  v12 = v8;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  dispatch_source_set_event_handler(v10, handler);
  dispatch_activate(this[34]);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  std::__shared_weak_count::__release_weak(v8);
}

void ___ZN7antenna7Service8Internal43startTxPowerCappingIPadWithMotionTimer_syncEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5] && *(v3 + 128) == 1)
      {
        if ((*(v3 + 160) & 1) == 0)
        {
          antenna::Service::Internal::startMotionDetection_sync(v3);
        }

        v6 = *(v3 + 272);
        if (v6)
        {
          dispatch_source_cancel(v6);
          v7 = *(v3 + 272);
          *(v3 + 272) = 0;
          if (v7)
          {
            dispatch_release(v7);
          }
        }

        antenna::Service::Internal::sendTxPowerCappingIPadMode_sync(v3);
        antenna::Service::Internal::startTxPowerCappingIPadWithMotionTimer_sync(v3);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);

        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void antenna::Service::Internal::handleTxPowerCappingIPadWithMotionTimerExpiry_sync(NSObject **this)
{
  if (*(this + 128) == 1)
  {
    if ((this[20] & 1) == 0)
    {
      antenna::Service::Internal::startMotionDetection_sync(this);
    }

    v3 = this[34];
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = this[34];
      this[34] = 0;
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    antenna::Service::Internal::sendTxPowerCappingIPadMode_sync(this);

    antenna::Service::Internal::startTxPowerCappingIPadWithMotionTimer_sync(this);
  }
}

uint64_t antenna::Service::Internal::getAccessoryState_sync(antenna::Service::Internal *this)
{
  v2 = this + 304;
  v3 = this + 304;
  if (*(this + 327) < 0)
  {
    v3 = *v2;
  }

  v4 = strlen(*MEMORY[0x29EDBF878]);
  if (!strncasecmp(v3, *MEMORY[0x29EDBF878], v4) || (TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild())
  {
    v34 = *(this + 44);
    v35 = (this + 360);
    if (v34 == (this + 360))
    {
LABEL_101:
      v13 = 0;
      goto LABEL_102;
    }

    v36 = *(this + 44);
    while (1)
    {
      if (v36[4])
      {
        v37 = *(v36 + 9);
        if ((v37 & 0x1000) != 0)
        {
          break;
        }
      }

      v38 = v36[1];
      if (v38)
      {
        do
        {
          v39 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v39 = v36[2];
          v40 = *v39 == v36;
          v36 = v39;
        }

        while (!v40);
      }

      v36 = v39;
      if (v39 == v35)
      {
        v13 = 0;
        v42 = 1;
        goto LABEL_107;
      }
    }

    v42 = 0;
    v43 = v37 & 0xFFFFEFFF;
    if (*(this + 465))
    {
      v13 = 4096;
    }

    else
    {
      v13 = v43;
    }

LABEL_107:
    v41 = 1;
    while (1)
    {
      if (v42)
      {
        if ((v34[4] & 2) != 0)
        {
          v44 = *(v34 + 7);
          if (v44 == ctu::iokit::Controller::getAccessoryPrimaryPortNumber(*(*(this + 36) + 8)))
          {
            break;
          }
        }
      }

      if (v34[4])
      {
        v45 = *(v34 + 9);
        if ((v45 & 0x1000) != 0)
        {
          v45 = 0;
        }

        v13 = v45 | v13;
      }

      v46 = v34[1];
      if (v46)
      {
        do
        {
          v47 = v46;
          v46 = *v46;
        }

        while (v46);
      }

      else
      {
        do
        {
          v47 = v34[2];
          v40 = *v47 == v34;
          v34 = v47;
        }

        while (!v40);
      }

      v34 = v47;
      if (v47 == v35)
      {
        return v41 | (v13 << 32);
      }
    }

    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(*(this + 45));
    *(this + 45) = 0;
    *(this + 46) = 0;
    *(this + 44) = v35;
    AccessoryPrimaryPortNumber = ctu::iokit::Controller::getAccessoryPrimaryPortNumber(*(*(this + 36) + 8));
    v49 = AccessoryPrimaryPortNumber;
    v50 = *(this + 45);
    v51 = this + 360;
    if (v50)
    {
      while (1)
      {
        while (1)
        {
          v51 = v50;
          v52 = *(v50 + 28);
          if (AccessoryPrimaryPortNumber >= v52)
          {
            break;
          }

          v50 = *v51;
          v35 = v51;
          if (!*v51)
          {
            goto LABEL_131;
          }
        }

        if (v52 >= AccessoryPrimaryPortNumber)
        {
          break;
        }

        v50 = *(v51 + 1);
        if (!v50)
        {
          v35 = v51 + 8;
          goto LABEL_131;
        }
      }
    }

    else
    {
LABEL_131:
      v53 = v51;
      v51 = operator new(0x28uLL);
      *(v51 + 4) = 0;
      *(v51 + 7) = v49;
      *v51 = 0;
      *(v51 + 1) = 0;
      *(v51 + 2) = v53;
      *v35 = v51;
      v54 = **(this + 44);
      if (v54)
      {
        *(this + 44) = v54;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 45), v51);
      ++*(this + 46);
    }

    *(v51 + 4) = 0x100000002;
LABEL_135:
    v13 = 1;
    v41 = 2;
    return v41 | (v13 << 32);
  }

  v5 = *(this + 327);
  v6 = v2;
  if (v5 < 0)
  {
    v6 = *v2;
  }

  v7 = strlen(*MEMORY[0x29EDBE740]);
  if (!strncasecmp(v6, *MEMORY[0x29EDBE740], v7))
  {
    goto LABEL_135;
  }

  if (v5 < 0)
  {
    v2 = *v2;
  }

  v8 = strlen(*MEMORY[0x29EDBE738]);
  if (strncasecmp(v2, *MEMORY[0x29EDBE738], v8))
  {
    goto LABEL_101;
  }

  memset(v72, 170, sizeof(v72));
  v9 = *(this + 351);
  if (v9 < 0)
  {
    v10 = *(this + 41);
  }

  if (v9 >= 0)
  {
    v11 = *(this + 351);
  }

  else
  {
    v11 = *(this + 42);
  }

  ctu::split_any_copy();
  v12 = v72[0];
  v70 = v72[1];
  if (v72[0] != v72[1])
  {
    LODWORD(v13) = 0;
    v69 = *MEMORY[0x29EDBE500];
    v68 = *MEMORY[0x29EDBE510];
    v67 = *MEMORY[0x29EDBE450];
    v66 = *MEMORY[0x29EDBE470];
    v65 = *MEMORY[0x29EDBE508];
    v64 = *MEMORY[0x29EDBE478];
    v63 = *MEMORY[0x29EDBE480];
    v62 = *MEMORY[0x29EDBE488];
    v61 = *MEMORY[0x29EDBE490];
    v60 = *MEMORY[0x29EDBE498];
    v59 = *MEMORY[0x29EDBE4A0];
    v14 = *MEMORY[0x29EDBE6A0];
    v15 = MEMORY[0x29EDCA600];
    do
    {
      memset(&v71, 170, sizeof(v71));
      if (*(v12 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v71, *v12, *(v12 + 1));
      }

      else
      {
        v16 = *v12;
        v71.__r_.__value_.__r.__words[2] = *(v12 + 2);
        *&v71.__r_.__value_.__l.__data_ = v16;
      }

      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v71;
      }

      else
      {
        v17 = v71.__r_.__value_.__r.__words[0];
      }

      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v71.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v71.__r_.__value_.__l.__size_;
      }

      v19 = (v17 + size);
      if (size)
      {
        while (1)
        {
          v20 = v17->__r_.__value_.__s.__data_[0];
          if ((v20 & 0x80000000) != 0 ? __maskrune(v20, 0x4000uLL) : *(v15 + 4 * v20 + 60) & 0x4000)
          {
            break;
          }

          v17 = (v17 + 1);
          if (!--size)
          {
            goto LABEL_45;
          }
        }

        if (size == 1)
        {
          v19 = v17;
        }

        else
        {
          v22 = 1;
          v19 = v17;
          do
          {
            v23 = v17->__r_.__value_.__s.__data_[v22];
            if ((v23 & 0x80000000) != 0)
            {
              v24 = __maskrune(v23, 0x4000uLL);
            }

            else
            {
              v24 = *(v15 + 4 * v23 + 60) & 0x4000;
            }

            if (!v24)
            {
              v19->__r_.__value_.__s.__data_[0] = v17->__r_.__value_.__s.__data_[v22];
              v19 = (v19 + 1);
            }

            ++v22;
          }

          while (size != v22);
        }
      }

LABEL_45:
      v25 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
      v26 = v71.__r_.__value_.__r.__words[0];
      v27 = (v71.__r_.__value_.__r.__words[0] + v71.__r_.__value_.__l.__size_);
      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v28 = v71.__r_.__value_.__r.__words[0];
      }

      else
      {
        v27 = &v71 + HIBYTE(v71.__r_.__value_.__r.__words[2]);
        v28 = &v71;
      }

      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v25 = v71.__r_.__value_.__l.__size_;
      }

      v29 = v19 - v28;
      if (v25 < v19 - v28)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (v27 - v19 == -1)
      {
        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          v71.__r_.__value_.__l.__size_ = v19 - v28;
        }

        else
        {
          *(&v71.__r_.__value_.__s + 23) = v29 & 0x7F;
          v26 = &v71;
        }

        v26->__r_.__value_.__s.__data_[v29] = 0;
      }

      else
      {
        std::string::__erase_external_with_move(&v71, v29, v27 - v19);
      }

      v30 = SHIBYTE(v71.__r_.__value_.__r.__words[2]);
      v31 = v71.__r_.__value_.__r.__words[0];
      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v71;
      }

      else
      {
        v32 = v71.__r_.__value_.__r.__words[0];
      }

      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = SHIBYTE(v71.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v33 = v71.__r_.__value_.__l.__size_;
      }

      if (!strncasecmp(v32, v69, v33))
      {
        LODWORD(v13) = v13 | 2;
      }

      if (!strncasecmp(v32, v68, v33))
      {
        LODWORD(v13) = v13 | 4;
      }

      if (!strncasecmp(v32, v67, v33))
      {
        LODWORD(v13) = v13 | 8;
      }

      if (!strncasecmp(v32, v66, v33))
      {
        LODWORD(v13) = v13 | 0x10;
      }

      if (!strncasecmp(v32, v65, v33))
      {
        LODWORD(v13) = v13 | 0x20;
      }

      if (!strncasecmp(v32, v64, v33))
      {
        LODWORD(v13) = v13 | 0x40;
      }

      if (!strncasecmp(v32, v63, v33))
      {
        LODWORD(v13) = v13 | 0x80;
      }

      if (!strncasecmp(v32, v62, v33))
      {
        LODWORD(v13) = v13 | 0x100;
      }

      if (!strncasecmp(v32, v61, v33))
      {
        LODWORD(v13) = v13 | 0x200;
      }

      if (!strncasecmp(v32, v60, v33))
      {
        LODWORD(v13) = v13 | 0x400;
      }

      if (!strncasecmp(v32, v59, v33))
      {
        LODWORD(v13) = v13 | 0x800;
      }

      if (!strncasecmp(v32, v14, v33))
      {
        v13 = v13 | 0x1000;
      }

      else
      {
        v13 = v13;
      }

      if (v30 < 0)
      {
        operator delete(v31);
      }

      v12 = (v12 + 24);
    }

    while (v12 != v70);
    v12 = v72[0];
    if (!v72[0])
    {
      goto LABEL_102;
    }

    goto LABEL_138;
  }

  v13 = 0;
  if (v72[0])
  {
LABEL_138:
    v56 = v72[1];
    v57 = v12;
    if (v72[1] != v12)
    {
      do
      {
        v58 = *(v56 - 1);
        v56 -= 3;
        if (v58 < 0)
        {
          operator delete(*v56);
        }
      }

      while (v56 != v12);
      v57 = v72[0];
    }

    v72[1] = v12;
    operator delete(v57);
  }

LABEL_102:
  v41 = 1;
  return v41 | (v13 << 32);
}

void sub_297548948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::~vector[abi:ne200100]((v26 - 104));
  _Unwind_Resume(a1);
}

BOOL antenna::Service::Internal::isAccessoryOverridden(antenna::Service::Internal *this)
{
  v1 = this + 304;
  if (*(this + 327) < 0)
  {
    v1 = *v1;
  }

  v2 = strlen(*MEMORY[0x29EDBF878]);
  if (!strncasecmp(v1, *MEMORY[0x29EDBF878], v2))
  {
    return 0;
  }

  if (TelephonyUtilIsInternalBuild())
  {
    return 1;
  }

  return (TelephonyUtilIsCarrierBuild() & 1) != 0;
}

void antenna::Service::Internal::accessoryNotification_sync(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 32);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = a3;
    _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Accessory Port Number: %u", __p, 8u);
    v6 = *(a1 + 32);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    ctu::iokit::asString();
    if (v21 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315138;
    v23 = v7;
    _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Accessory Status: %s", buf, 0xCu);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = *(a1 + 32);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    ctu::iokit::asString();
    v8 = v21 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v23 = v8;
    _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Accessory Type: %s", buf, 0xCu);
    if (v21 < 0)
    {
      operator delete(__p[0]);
      v9 = (a1 + 304);
      if ((*(a1 + 327) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  v9 = (a1 + 304);
  if (*(a1 + 327) < 0)
  {
LABEL_16:
    v9 = *v9;
  }

LABEL_17:
  v10 = strlen(*MEMORY[0x29EDBF878]);
  if (!strncasecmp(v9, *MEMORY[0x29EDBF878], v10) || (TelephonyUtilIsInternalBuild() & 1) == 0 && (TelephonyUtilIsCarrierBuild() & 1) == 0)
  {
    AccessoryState_sync = antenna::Service::Internal::getAccessoryState_sync(a1);
    v12 = *(a1 + 360);
    if (v12)
    {
      while (1)
      {
        while (1)
        {
          v14 = v12;
          v15 = *(v12 + 28);
          if (v15 <= a3)
          {
            break;
          }

          v12 = *v14;
          v13 = v14;
          if (!*v14)
          {
            goto LABEL_27;
          }
        }

        if (v15 >= a3)
        {
          break;
        }

        v12 = v14[1];
        if (!v12)
        {
          v13 = v14 + 1;
          goto LABEL_27;
        }
      }

      v16 = v14;
    }

    else
    {
      v13 = (a1 + 360);
      v14 = (a1 + 360);
LABEL_27:
      v16 = operator new(0x28uLL);
      v16[4] = 0;
      *(v16 + 7) = a3;
      *v16 = 0;
      v16[1] = 0;
      v16[2] = v14;
      *v13 = v16;
      v17 = **(a1 + 352);
      if (v17)
      {
        *(a1 + 352) = v17;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 360), v16);
      ++*(a1 + 368);
    }

    v16[4] = a2;
    if (AccessoryState_sync == antenna::Service::Internal::getAccessoryState_sync(a1))
    {
      v18 = *(a1 + 32);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p[0]) = 0;
        _os_log_debug_impl(&dword_297476000, v18, OS_LOG_TYPE_DEBUG, "#D Skip sending accessory since previous and current states are same", __p, 2u);
      }
    }

    else
    {
      antenna::Service::Internal::sendAccessoryStatus_sync(a1);
    }
  }

  v19 = *MEMORY[0x29EDCA608];
}

void antenna::Service::Internal::videoNotification_sync(antenna::Service::Internal *a1, unsigned int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Display evnet: 0x%x\n", v6, 8u);
  }

  antenna::Service::Internal::sendVideoAccessory_sync(a1, (a2 >> 2) & 1);
  v5 = *MEMORY[0x29EDCA608];
}

void antenna::Service::Internal::powerSourceNotification_sync(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a1 + 468) != a2)
  {
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      ctu::iokit::asString();
      if (v8 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136315138;
      v10 = p_p;
      _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Power Source: %s", buf, 0xCu);
      if (v8 < 0)
      {
        operator delete(__p);
      }
    }

    *(a1 + 468) = a2;
    antenna::Service::Internal::sendPowerSource_sync(a1);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void antenna::Service::Internal::sendSensorID_sync(antenna::Service::Internal *this)
{
  v19 = *MEMORY[0x29EDCA608];
  if (*(this + 22) == 1)
  {
    v2 = *MEMORY[0x29EDCA608];

    antenna::Service::Internal::sendTxPowerCappingIPadMode_sync(this);
  }

  else
  {
    v3 = *(this + 1);
    if (!v3 || (v4 = *this, (v5 = std::__shared_weak_count::lock(v3)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v6 = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = *(this + 529) & 7 | (8 * (*(this + 530) & 7u));
    v8 = *(this + 4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = v7;
      _os_log_impl(&dword_297476000, v8, OS_LOG_TYPE_DEFAULT, "#I Sending sensor-state to BB: 0x%x", buf, 8u);
    }

    v9 = *(this + 7);
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN7antenna7Service8Internal17sendSensorID_syncEv_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_18_1;
    aBlock[4] = this;
    aBlock[5] = v4;
    v14 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10 = _Block_copy(aBlock);
    v11 = *(this + 2);
    if (v11)
    {
      dispatch_retain(v11);
    }

    v15 = v10;
    object = v11;
    (*(*v9 + 8))(v9, v7, &v15);
    if (object)
    {
      dispatch_release(object);
    }

    if (v15)
    {
      _Block_release(v15);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    std::__shared_weak_count::__release_weak(v6);
    v12 = *MEMORY[0x29EDCA608];
  }
}

void sub_2975490F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN7antenna7Service8Internal17sendSensorID_syncEv_block_invoke(void *a1, char a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = a1[5];
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7 && (a2 & 1) == 0)
      {
        v9 = *(v5 + 32);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *v10 = 0;
          _os_log_error_impl(&dword_297476000, v9, OS_LOG_TYPE_ERROR, "Failed to send sensor ID to BB", v10, 2u);
        }
      }
    }
  }
}

void antenna::Service::Internal::reportAccessory_sync(uint64_t a1, unint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = MEMORY[0x29EDCAA00];
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v4) == v5)
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
  v7 = xpc_int64_create(HIDWORD(a2));
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBE998], v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  v9 = xpc_int64_create(a2);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBEAC0], v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  v11 = xpc_dictionary_create(0, 0, 0);
  if (v11 || (v11 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v11) == v5)
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
  v13 = xpc_string_create(*MEMORY[0x29EDBF880]);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v12, *MEMORY[0x29EDBE588], v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = xpc_int64_create(524584);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v12, *MEMORY[0x29EDBE660], v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  if (v6)
  {
    xpc_retain(v6);
    v17 = v6;
  }

  else
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v12, *MEMORY[0x29EDBE580], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v19 = xpc_dictionary_create(0, 0, 0);
  if (v19 || (v19 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v19) == v5)
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
  v21 = xpc_string_create(*MEMORY[0x29EDBE728]);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(v20, *MEMORY[0x29EDBEC68], v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  if (v12)
  {
    xpc_retain(v12);
    v23 = v12;
  }

  else
  {
    v23 = xpc_null_create();
  }

  xpc_dictionary_set_value(v20, *MEMORY[0x29EDBE750], v23);
  v24 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v24);
  if (v20)
  {
    xpc_retain(v20);
    v25 = v20;
    v26 = *(a1 + 40);
    if (v26)
    {
LABEL_37:
      v27 = _Block_copy(v26);
      goto LABEL_40;
    }
  }

  else
  {
    v25 = xpc_null_create();
    v26 = *(a1 + 40);
    if (v26)
    {
      goto LABEL_37;
    }
  }

  v27 = 0;
LABEL_40:
  v28 = *(a1 + 48);
  v29[0] = MEMORY[0x29EDCA5F8];
  v29[1] = 1174405120;
  v29[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc4dictEEEclIJS2_EEEvDpT__block_invoke;
  v29[3] = &__block_descriptor_tmp_97;
  if (v27)
  {
    aBlock = _Block_copy(v27);
    object = v25;
    if (v25)
    {
LABEL_42:
      xpc_retain(v25);
      goto LABEL_45;
    }
  }

  else
  {
    aBlock = 0;
    object = v25;
    if (v25)
    {
      goto LABEL_42;
    }
  }

  object = xpc_null_create();
LABEL_45:
  dispatch_async(v28, v29);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v27)
  {
    _Block_release(v27);
  }

  xpc_release(v25);
  xpc_release(v20);
  xpc_release(v12);
  xpc_release(v6);
}

BOOL antenna::Service::Internal::isPowerSourceOverridden_sync(antenna::Service::Internal *this)
{
  if (*(this + 118) == -1)
  {
    return 0;
  }

  if (TelephonyUtilIsInternalBuild())
  {
    return 1;
  }

  return (TelephonyUtilIsCarrierBuild() & 1) != 0;
}

uint64_t antenna::Service::Internal::getPowerSourceState_sync(antenna::Service::Internal *this)
{
  if (*(this + 118) == -1 || (v2 = this + 472, (TelephonyUtilIsInternalBuild() & 1) == 0) && (TelephonyUtilIsCarrierBuild() & 1) == 0)
  {
    v2 = this + 468;
  }

  return *v2;
}

uint64_t *std::map<unsigned int,unsigned int>::operator[](uint64_t **a1, unsigned int a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    while (1)
    {
      while (1)
      {
        v6 = v4;
        v7 = *(v4 + 28);
        if (v7 <= a2)
        {
          break;
        }

        v4 = *v6;
        v5 = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      if (v7 >= a2)
      {
        break;
      }

      v4 = v6[1];
      if (!v4)
      {
        v5 = v6 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v6 = (a1 + 1);
LABEL_8:
    v8 = v6;
    v6 = operator new(0x28uLL);
    *(v6 + 7) = a2;
    *(v6 + 8) = 0;
    *v6 = 0;
    v6[1] = 0;
    v6[2] = v8;
    *v5 = v6;
    v9 = **a1;
    if (v9)
    {
      *a1 = v9;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v6);
    a1[2] = (a1[2] + 1);
  }

  return v6 + 4;
}

void antenna::Service::Internal::handleDumpState_sync(antenna::Service::Internal *this)
{
  v117 = *MEMORY[0x29EDCA608];
  v2 = *(this + 4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I --------------- ABM Antenna state ---------------", &__p, 2u);
    v2 = *(this + 4);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
LABEL_3:
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_4;
      }

LABEL_19:
      xpc::object::to_string(&__p, (this + 136));
      if (v114[0] >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136315138;
      v116 = p_p;
      _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Transmit state: %s", buf, 0xCu);
      if (SHIBYTE(v114[0]) < 0)
      {
        operator delete(__p);
        v2 = *(this + 4);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v2 = *(this + 4);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }
      }

LABEL_5:
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }
  }

  else if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_3;
  }

  v3 = *(this + 128);
  LODWORD(__p) = 67109120;
  DWORD1(__p) = v3;
  _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I fTransmitting=%u", &__p, 8u);
  v2 = *(this + 4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_19;
  }

LABEL_4:
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_5;
  }

LABEL_26:
  if (*(this + 388))
  {
    v5 = MEMORY[0x29EDBE4E8];
  }

  else
  {
    v5 = MEMORY[0x29EDBF878];
  }

  v6 = *v5;
  LODWORD(__p) = 136315138;
  *(&__p + 4) = v6;
  _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I CLTM/PPM Overriding State: %s", &__p, 0xCu);
  v2 = *(this + 4);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
LABEL_6:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  LOWORD(__p) = 0;
  _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I CLTM/PPM power/duty cycle (0.1%% units):", &__p, 2u);
  v2 = *(this + 4);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
LABEL_7:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v7 = *(this + 94);
  LODWORD(__p) = 67109120;
  DWORD1(__p) = v7;
  _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I CLTM/PPM power backoff : %d", &__p, 8u);
  v2 = *(this + 4);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
LABEL_8:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v8 = *(this + 95);
  LODWORD(__p) = 67109120;
  DWORD1(__p) = v8;
  _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I CLTM/PPM duty cycle: %d", &__p, 8u);
  v2 = *(this + 4);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
LABEL_9:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  LOWORD(__p) = 0;
  _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I CLTM/PPM Radio Max Power Unit: mW:", &__p, 2u);
  v2 = *(this + 4);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
LABEL_10:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v9 = *(this + 96);
  LODWORD(__p) = 67109120;
  DWORD1(__p) = v9;
  _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I CLTM/PPM Radio Max Power: %d", &__p, 8u);
  v2 = *(this + 4);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
LABEL_11:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v10 = *(this + 76);
  LODWORD(__p) = 67109120;
  DWORD1(__p) = v10;
  _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Accessory support for RF: %d", &__p, 8u);
  v2 = *(this + 4);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
LABEL_12:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v11 = *(this + 78);
  LODWORD(__p) = 67109120;
  DWORD1(__p) = v11;
  _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Accessory support for ARTD: %d", &__p, 8u);
  v2 = *(this + 4);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
LABEL_13:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v12 = *(this + 77);
  LODWORD(__p) = 67109120;
  DWORD1(__p) = v12;
  _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Accessory type support for RF: %d", &__p, 8u);
  v2 = *(this + 4);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
LABEL_14:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v13 = *(this + 79);
  LODWORD(__p) = 67109120;
  DWORD1(__p) = v13;
  _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Accessory type support for ARTD: %d", &__p, 8u);
  v2 = *(this + 4);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
LABEL_15:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

LABEL_39:
  v14 = (this + 304);
  if (*(this + 327) < 0)
  {
    v14 = *v14;
  }

  LODWORD(__p) = 136315138;
  *(&__p + 4) = v14;
  _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Accessory overridden state: %s", &__p, 0xCu);
  v2 = *(this + 4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
LABEL_42:
    v15 = (this + 328);
    if (*(this + 351) < 0)
    {
      v15 = *v15;
    }

    LODWORD(__p) = 136315138;
    *(&__p + 4) = v15;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Accessory overridden type: %s", &__p, 0xCu);
  }

LABEL_45:
  antenna::Service::Internal::getAccessoryState_sync(this);
  v16 = *(this + 4);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    ctu::iokit::asString();
    if (v114[0] >= 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = __p;
    }

    *buf = 136315138;
    v116 = v17;
    _os_log_impl(&dword_297476000, v16, OS_LOG_TYPE_DEFAULT, "#I Accessory connected: %s", buf, 0xCu);
    if (SHIBYTE(v114[0]) < 0)
    {
      operator delete(__p);
    }

    v16 = *(this + 4);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    ctu::iokit::asString();
    if (v114[0] >= 0)
    {
      v18 = &__p;
    }

    else
    {
      v18 = __p;
    }

    *buf = 136315138;
    v116 = v18;
    _os_log_impl(&dword_297476000, v16, OS_LOG_TYPE_DEFAULT, "#I Accessory type: %s", buf, 0xCu);
    if (SHIBYTE(v114[0]) < 0)
    {
      operator delete(__p);
    }

    v16 = *(this + 4);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(this + 80);
    LODWORD(__p) = 67109120;
    DWORD1(__p) = v19;
    _os_log_impl(&dword_297476000, v16, OS_LOG_TYPE_DEFAULT, "#I Antenna Switching support: %d", &__p, 8u);
    v16 = *(this + 4);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
LABEL_61:
      if (*(this + 72) != 1)
      {
        goto LABEL_139;
      }

      goto LABEL_65;
    }
  }

  else if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_61;
  }

  v20 = *(this + 81);
  LODWORD(__p) = 67109120;
  DWORD1(__p) = v20;
  _os_log_impl(&dword_297476000, v16, OS_LOG_TYPE_DEFAULT, "#I Antenna switched: %d", &__p, 8u);
  if (*(this + 72) != 1)
  {
    goto LABEL_139;
  }

LABEL_65:
  v21 = *(this + 4);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    __p = 0uLL;
    v114[0] = 0;
    v22 = *(this + 30) - 1;
    if (v22 < 4)
    {
      std::string::__assign_external(&__p, **(&unk_29EE6BB00 + v22));
    }

    v23 = &__p;
    if (v114[0] < 0)
    {
      v23 = __p;
    }

    *buf = 136315138;
    v116 = v23;
    _os_log_impl(&dword_297476000, v21, OS_LOG_TYPE_DEFAULT, "#I Tx Power Enhanced Detection Mode: %s", buf, 0xCu);
    if (SHIBYTE(v114[0]) < 0)
    {
      operator delete(__p);
    }

    v21 = *(this + 4);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    antenna::Service::Internal::getTxPowerAudioModeString(this, &__p);
    if (v114[0] >= 0)
    {
      v24 = &__p;
    }

    else
    {
      v24 = __p;
    }

    *buf = 136315138;
    v116 = v24;
    _os_log_impl(&dword_297476000, v21, OS_LOG_TYPE_DEFAULT, "#I Tx Power Audio Mode: %s", buf, 0xCu);
    if (SHIBYTE(v114[0]) < 0)
    {
      operator delete(__p);
    }

    v21 = *(this + 4);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 245))
    {
      v25 = "ON";
    }

    else
    {
      v25 = "OFF";
    }

    LODWORD(__p) = 136315138;
    *(&__p + 4) = v25;
    _os_log_impl(&dword_297476000, v21, OS_LOG_TYPE_DEFAULT, "#I Tx Power Audio Alert: %s", &__p, 0xCu);
    v21 = *(this + 4);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v27 = (this + 200);
    v26 = *(this + 25);
    if (v26)
    {
      while (1)
      {
        while (1)
        {
          v28 = v26;
          v29 = *(v26 + 28);
          if (v29 < 1)
          {
            break;
          }

          v26 = *v28;
          v27 = v28;
          if (!*v28)
          {
            goto LABEL_93;
          }
        }

        if ((v29 & 0x80000000) == 0)
        {
          break;
        }

        v26 = v28[1];
        if (!v26)
        {
          v27 = v28 + 1;
          goto LABEL_93;
        }
      }

      v30 = v28;
    }

    else
    {
      v28 = (this + 200);
LABEL_93:
      v30 = operator new(0x28uLL);
      v30[7] = 0;
      *(v30 + 32) = 0;
      *v30 = 0;
      *(v30 + 1) = 0;
      *(v30 + 2) = v28;
      *v27 = v30;
      v31 = **(this + 24);
      if (v31)
      {
        *(this + 24) = v31;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v30);
      ++*(this + 26);
    }

    if (*(v30 + 32))
    {
      v32 = "ON";
    }

    else
    {
      v32 = "OFF";
    }

    LODWORD(__p) = 136315138;
    *(&__p + 4) = v32;
    _os_log_impl(&dword_297476000, v21, OS_LOG_TYPE_DEFAULT, "#I Tx Power Receiver Audio State: %s", &__p, 0xCu);
    v21 = *(this + 4);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v34 = (this + 200);
    v33 = *(this + 25);
    if (v33)
    {
      while (1)
      {
        while (1)
        {
          v35 = v33;
          v36 = *(v33 + 28);
          if (v36 < 2)
          {
            break;
          }

          v33 = *v35;
          v34 = v35;
          if (!*v35)
          {
            goto LABEL_108;
          }
        }

        if (v36 == 1)
        {
          break;
        }

        v33 = v35[1];
        if (!v33)
        {
          v34 = v35 + 1;
          goto LABEL_108;
        }
      }

      v37 = v35;
    }

    else
    {
      v35 = (this + 200);
LABEL_108:
      v37 = operator new(0x28uLL);
      v37[7] = 1;
      *(v37 + 32) = 0;
      *v37 = 0;
      *(v37 + 1) = 0;
      *(v37 + 2) = v35;
      *v34 = v37;
      v38 = **(this + 24);
      if (v38)
      {
        *(this + 24) = v38;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v37);
      ++*(this + 26);
    }

    if (*(v37 + 32))
    {
      v39 = "ON";
    }

    else
    {
      v39 = "OFF";
    }

    LODWORD(__p) = 136315138;
    *(&__p + 4) = v39;
    _os_log_impl(&dword_297476000, v21, OS_LOG_TYPE_DEFAULT, "#I Tx Power Other Audio State: %s", &__p, 0xCu);
    v21 = *(this + 4);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v41 = (this + 200);
    v40 = *(this + 25);
    if (v40)
    {
      while (1)
      {
        while (1)
        {
          v42 = v40;
          v43 = *(v40 + 28);
          if (v43 < 4)
          {
            break;
          }

          v40 = *v42;
          v41 = v42;
          if (!*v42)
          {
            goto LABEL_124;
          }
        }

        if (v43 == 3)
        {
          break;
        }

        v40 = v42[1];
        if (!v40)
        {
          v41 = v42 + 1;
          goto LABEL_124;
        }
      }

      v44 = v42;
    }

    else
    {
      v42 = (this + 200);
LABEL_124:
      v44 = operator new(0x28uLL);
      v44[7] = 3;
      *(v44 + 32) = 0;
      *v44 = 0;
      *(v44 + 1) = 0;
      *(v44 + 2) = v42;
      *v41 = v44;
      v45 = **(this + 24);
      if (v45)
      {
        *(this + 24) = v45;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 25), v44);
      ++*(this + 26);
    }

    if (*(v44 + 32))
    {
      v46 = "ON";
    }

    else
    {
      v46 = "OFF";
    }

    LODWORD(__p) = 136315138;
    *(&__p + 4) = v46;
    _os_log_impl(&dword_297476000, v21, OS_LOG_TYPE_DEFAULT, "#I Tx Power Speaker Audio State: %s", &__p, 0xCu);
    v21 = *(this + 4);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 41))
    {
      v47 = "On-Body";
    }

    else
    {
      v47 = "Off-Body";
    }

    LODWORD(__p) = 136315138;
    *(&__p + 4) = v47;
    _os_log_impl(&dword_297476000, v21, OS_LOG_TYPE_DEFAULT, "#I Tx Power Motion State: %s", &__p, 0xCu);
    v21 = *(this + 4);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v48 = *(this + 22);
    LODWORD(__p) = 134217984;
    *(&__p + 4) = v48;
    _os_log_impl(&dword_297476000, v21, OS_LOG_TYPE_DEFAULT, "#I Tx Power Enhanced Motion fail counter: %lld", &__p, 0xCu);
  }

LABEL_139:
  if (*(this + 73) == 1)
  {
    v49 = *(this + 4);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p) = 136315138;
      *(&__p + 4) = "ON";
      _os_log_impl(&dword_297476000, v49, OS_LOG_TYPE_DEFAULT, "#I Tx Power Capping for iPad based on Motion support: %s", &__p, 0xCu);
      v49 = *(this + 4);
    }

    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      __p = 0uLL;
      v114[0] = 0;
      v50 = *(this + 46);
      if (v50 < 3)
      {
        std::string::__assign_external(&__p, **(&unk_29EE6BB20 + v50));
      }

      v51 = &__p;
      if (v114[0] < 0)
      {
        v51 = __p;
      }

      *buf = 136315138;
      v116 = v51;
      _os_log_impl(&dword_297476000, v49, OS_LOG_TYPE_DEFAULT, "#I Tx Power Capping for iPad Motion Mode: %s", buf, 0xCu);
      if (SHIBYTE(v114[0]) < 0)
      {
        operator delete(__p);
      }

      v49 = *(this + 4);
    }

    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 41))
      {
        v52 = "On-Body";
      }

      else
      {
        v52 = "Off-Body";
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v52;
      _os_log_impl(&dword_297476000, v49, OS_LOG_TYPE_DEFAULT, "#I Tx Power Capping for iPad Motion State: %s", &__p, 0xCu);
      v49 = *(this + 4);
    }

    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 160))
      {
        v53 = "RUNNING";
      }

      else
      {
        v53 = "OFF";
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v53;
      _os_log_impl(&dword_297476000, v49, OS_LOG_TYPE_DEFAULT, "#I Tx Power Capping for iPad Motion Algorithm: %s", &__p, 0xCu);
    }
  }

  if (*(this + 75) == 1)
  {
    v54 = *(this + 4);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *&__p = 0x104000100;
      _os_log_impl(&dword_297476000, v54, OS_LOG_TYPE_DEFAULT, "#I Tx Power Capping for iPhone with Motion Always Supported: %d", &__p, 8u);
      v54 = *(this + 4);
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
LABEL_163:
        if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_168;
        }

        goto LABEL_164;
      }
    }

    else if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_163;
    }

    if (*(this + 41))
    {
      v59 = "On-Body";
    }

    else
    {
      v59 = "Off-Body";
    }

    LODWORD(__p) = 136315138;
    *(&__p + 4) = v59;
    _os_log_impl(&dword_297476000, v54, OS_LOG_TYPE_DEFAULT, "#I Tx Power Capping for iPhone with Motion State: %s", &__p, 0xCu);
    v54 = *(this + 4);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
LABEL_164:
      if (*(this + 160))
      {
        v55 = "RUNNING";
      }

      else
      {
        v55 = "OFF";
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v55;
      _os_log_impl(&dword_297476000, v54, OS_LOG_TYPE_DEFAULT, "#I Tx Power Capping for iPhone with Motion Algorithm: %s", &__p, 0xCu);
    }
  }

LABEL_168:
  if (*(this + 74) != 1)
  {
    goto LABEL_194;
  }

  v56 = *(this + 4);
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    *&__p = 0x104000100;
    _os_log_impl(&dword_297476000, v56, OS_LOG_TYPE_DEFAULT, "#I Tx Power Antenna Free Space Configuration Support: %d", &__p, 8u);
    v56 = *(this + 4);
  }

  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    if ((TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild() || (v57 = *(this + 31), v57 == 255))
    {
      if (antenna::Service::Internal::isAudioReceiverOutputOnlyActive(this))
      {
        v58 = "Not Free Space";
LABEL_187:
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v58;
        _os_log_impl(&dword_297476000, v56, OS_LOG_TYPE_DEFAULT, "#I Tx Power Antenna Free Space Config: %s", &__p, 0xCu);
        v56 = *(this + 4);
        goto LABEL_188;
      }

      v57 = *(this + 41) != 0;
    }

    if (v57)
    {
      v58 = "Not Free Space";
    }

    else
    {
      v58 = "Free Space";
    }

    goto LABEL_187;
  }

LABEL_188:
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    antenna::Service::Internal::getTxPowerCappingIPhoneOverriddenFreeSpaceString_sync(this, &__p);
    v60 = v114[0] >= 0 ? &__p : __p;
    *buf = 136315138;
    v116 = v60;
    _os_log_impl(&dword_297476000, v56, OS_LOG_TYPE_DEFAULT, "#I Tx Power Overridden Free Space: %s", buf, 0xCu);
    if (SHIBYTE(v114[0]) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_194:
  pthread_mutex_lock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  v61 = unk_2A18CAF68;
  if (!unk_2A18CAF68)
  {
    v62 = operator new(1uLL);
    v63 = operator new(0x20uLL);
    *v63 = &unk_2A1E4FD98;
    v63[1] = 0;
    v63[2] = 0;
    v63[3] = v62;
    v64 = off_2A18CAF70;
    unk_2A18CAF68 = v62;
    off_2A18CAF70 = v63;
    if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v64->__on_zero_shared)(v64);
      std::__shared_weak_count::__release_weak(v64);
    }

    v61 = unk_2A18CAF68;
  }

  v65 = off_2A18CAF70;
  *&__p = v61;
  *(&__p + 1) = off_2A18CAF70;
  if (off_2A18CAF70)
  {
    atomic_fetch_add_explicit(off_2A18CAF70 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  isCMHandDetectionSupported = Capabilities::isCMHandDetectionSupported(v61);
  if (v65 && !atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v70 = isCMHandDetectionSupported;
    (v65->__on_zero_shared)(v65);
    std::__shared_weak_count::__release_weak(v65);
    if (!v70)
    {
      goto LABEL_211;
    }
  }

  else if (!isCMHandDetectionSupported)
  {
    goto LABEL_211;
  }

  v67 = *(this + 4);
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    v68 = (this + 440);
    if (*(this + 463) < 0)
    {
      v68 = *v68;
    }

    LODWORD(__p) = 136315138;
    *(&__p + 4) = v68;
    _os_log_impl(&dword_297476000, v67, OS_LOG_TYPE_DEFAULT, "#I Motion Hand Detection Overriding: %s", &__p, 0xCu);
    v67 = *(this + 4);
  }

  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    v69 = *(this + 108);
    LODWORD(__p) = 67109120;
    DWORD1(__p) = v69;
    _os_log_impl(&dword_297476000, v67, OS_LOG_TYPE_DEFAULT, "#I Motion Hand Detection State: %d", &__p, 8u);
  }

LABEL_211:
  if (*(this + 84) == 1)
  {
    v71 = *(this + 4);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      v72 = *(this + 117);
      ctu::iokit::asString();
      if (v114[0] >= 0)
      {
        v73 = &__p;
      }

      else
      {
        v73 = __p;
      }

      *buf = 136315138;
      v116 = v73;
      _os_log_impl(&dword_297476000, v71, OS_LOG_TYPE_DEFAULT, "#I Current Power Source: %s", buf, 0xCu);
      if (SHIBYTE(v114[0]) < 0)
      {
        operator delete(__p);
      }

      v71 = *(this + 4);
    }

    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 118) == -1 || (TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild())
      {
        *buf = 136315138;
        v116 = "AUTO";
        _os_log_impl(&dword_297476000, v71, OS_LOG_TYPE_DEFAULT, "#I Current Power Source Overridden Value: %s", buf, 0xCu);
        if (*(this + 85) != 1)
        {
          goto LABEL_280;
        }

        goto LABEL_229;
      }

      v74 = *(this + 118);
      ctu::iokit::asString();
      if (v114[0] >= 0)
      {
        v75 = &__p;
      }

      else
      {
        v75 = __p;
      }

      *buf = 136315138;
      v116 = v75;
      _os_log_impl(&dword_297476000, v71, OS_LOG_TYPE_DEFAULT, "#I Current Power Source Overridden Value: %s", buf, 0xCu);
      if (SHIBYTE(v114[0]) < 0)
      {
        operator delete(__p);
      }
    }
  }

  if (*(this + 85) != 1)
  {
    goto LABEL_280;
  }

LABEL_229:
  v76 = *(this + 4);
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    v77 = (this + 504);
    if (*(this + 527) < 0)
    {
      v77 = *v77;
    }

    LODWORD(__p) = 136315138;
    *(&__p + 4) = v77;
    _os_log_impl(&dword_297476000, v76, OS_LOG_TYPE_DEFAULT, "#I Device Material Overridden State: %s", &__p, 0xCu);
    v76 = *(this + 4);
  }

  if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_280;
  }

  v78 = (this + 488);
  v79 = *(this + 61);
  v80 = (this + 488);
  v81 = this + 488;
  if (v79)
  {
    v82 = *(this + 61);
    while (1)
    {
      while (1)
      {
        v81 = v82;
        v83 = *(v82 + 7);
        if (v83 < 2)
        {
          break;
        }

        v82 = *v81;
        v80 = v81;
        if (!*v81)
        {
          goto LABEL_241;
        }
      }

      if (v83)
      {
        break;
      }

      v82 = *(v81 + 1);
      if (!v82)
      {
        v80 = (v81 + 8);
        goto LABEL_241;
      }
    }

    v86 = *(v81 + 8);
    goto LABEL_248;
  }

LABEL_241:
  v84 = operator new(0x28uLL);
  *(v84 + 28) = 1;
  *v84 = 0;
  v84[1] = 0;
  v84[2] = v81;
  *v80 = v84;
  v85 = **(this + 60);
  if (v85)
  {
    *(this + 60) = v85;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 61), v84);
  v79 = *(this + 61);
  ++*(this + 62);
  v86 = *(v84 + 8);
  v87 = (this + 488);
  v88 = (this + 488);
  if (v79)
  {
LABEL_248:
    v89 = v79;
    while (1)
    {
      while (1)
      {
        v88 = v89;
        v90 = *(v89 + 7);
        if (v90 < 3)
        {
          break;
        }

        v89 = *v88;
        v87 = v88;
        if (!*v88)
        {
          goto LABEL_254;
        }
      }

      if (v90 == 2)
      {
        break;
      }

      v89 = v88[1];
      if (!v89)
      {
        v87 = v88 + 1;
        goto LABEL_254;
      }
    }

    v93 = *(v88 + 8);
    goto LABEL_259;
  }

LABEL_254:
  v91 = operator new(0x28uLL);
  *(v91 + 28) = 2;
  *v91 = 0;
  v91[1] = 0;
  v91[2] = v88;
  *v87 = v91;
  v92 = **(this + 60);
  if (v92)
  {
    *(this + 60) = v92;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 61), v91);
  v79 = *(this + 61);
  ++*(this + 62);
  v93 = *(v91 + 8);
  v94 = (this + 488);
  v95 = (this + 488);
  if (v79)
  {
LABEL_259:
    v96 = v79;
    do
    {
      while (1)
      {
        v95 = v96;
        v97 = *(v96 + 7);
        if (v97 < 4)
        {
          break;
        }

        v96 = *v95;
        v94 = v95;
        if (!*v95)
        {
          goto LABEL_265;
        }
      }

      if (v97 == 3)
      {
        v100 = *(v95 + 8);
        goto LABEL_271;
      }

      v96 = v95[1];
    }

    while (v96);
    v94 = v95 + 1;
  }

LABEL_265:
  v98 = operator new(0x28uLL);
  *(v98 + 28) = 3;
  *v98 = 0;
  v98[1] = 0;
  v98[2] = v95;
  *v94 = v98;
  v99 = **(this + 60);
  if (v99)
  {
    *(this + 60) = v99;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 61), v98);
  v79 = *(this + 61);
  ++*(this + 62);
  v100 = *(v98 + 8);
  v101 = (this + 488);
  if (v79)
  {
    while (1)
    {
LABEL_271:
      while (1)
      {
        v101 = v79;
        v102 = *(v79 + 7);
        if (v102 < 5)
        {
          break;
        }

        v79 = *v101;
        v78 = v101;
        if (!*v101)
        {
          goto LABEL_275;
        }
      }

      if (v102 == 4)
      {
        break;
      }

      v79 = v101[1];
      if (!v79)
      {
        v78 = v101 + 1;
        goto LABEL_275;
      }
    }

    v103 = v101;
  }

  else
  {
LABEL_275:
    v103 = operator new(0x28uLL);
    *(v103 + 28) = 4;
    *v103 = 0;
    v103[1] = 0;
    v103[2] = v101;
    *v78 = v103;
    v104 = **(this + 60);
    if (v104)
    {
      *(this + 60) = v104;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 61), v103);
    ++*(this + 62);
  }

  v105 = *(v103 + 8);
  *&__p = __PAIR64__(v86, 67109888);
  WORD4(__p) = 1024;
  *(&__p + 10) = v93;
  HIWORD(__p) = 1024;
  LODWORD(v114[0]) = v100;
  WORD2(v114[0]) = 1024;
  *(v114 + 6) = v105;
  _os_log_impl(&dword_297476000, v76, OS_LOG_TYPE_DEFAULT, "#I Current Device Material Values are as Bottom Enclosure: %d, Top Enclosure: %d, FCM Type: %d, BCM Type: %d", &__p, 0x1Au);
LABEL_280:
  if (*(this + 104) == 1)
  {
    v106 = *(this + 4);
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 465))
      {
        v107 = "CLOSED";
      }

      else
      {
        v107 = "OPENED";
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v107;
      _os_log_impl(&dword_297476000, v106, OS_LOG_TYPE_DEFAULT, "#I Smart Keyboard Cover: %s", &__p, 0xCu);
    }
  }

  if (*(this + 22))
  {
    v108 = *(this + 4);
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      v109 = *(this + 529);
      LODWORD(__p) = 67109120;
      DWORD1(__p) = v109;
      _os_log_impl(&dword_297476000, v108, OS_LOG_TYPE_DEFAULT, "#I Face ID Support Version: %d", &__p, 8u);
    }
  }

  if (*(this + 92) == 1)
  {
    v110 = *(this + 4);
    if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 530))
      {
        v111 = "ON";
      }

      else
      {
        v111 = "OFF";
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v111;
      _os_log_impl(&dword_297476000, v110, OS_LOG_TYPE_DEFAULT, "#I Front Camera: %s", &__p, 0xCu);
    }
  }

  v112 = *MEMORY[0x29EDCA608];
}

void sub_29754B1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void antenna::Service::Internal::dumpState(antenna::Service::Internal *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 2);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::dumpState(void)::$_0>(antenna::Service::Internal::dumpState(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::dumpState(void)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::dumpState(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void *antenna::Service::Service(void *a1, uint64_t a2, NSObject **a3)
{
  *a1 = 0;
  a1[1] = 0;
  v6 = *a2;
  if (*a2)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a2 + 8);
  aBlock = v6;
  v15 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a3;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  antenna::Service::Internal::create(&aBlock, &object, &v16);
  v9 = v16;
  v16 = 0uLL;
  v10 = a1[1];
  *a1 = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(&v16 + 1);
  if (*(&v16 + 1) && !atomic_fetch_add((*(&v16 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v15)
  {
    dispatch_release(v15);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return a1;
}

void sub_29754B4AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v12)
  {
    dispatch_release(v12);
  }

  dispatch::callback<void({block_pointer})(xpc::dict)>::~callback(&a11);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

void antenna::Service::~Service(antenna::Service *this)
{
  v1 = *(this + 1);
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
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

void antenna::Service::startService(antenna::Service::Internal **this)
{
  v1 = *this;
  if (v1)
  {
    antenna::Service::Internal::startService(v1);
  }
}

void antenna::Service::stopService(antenna::Service::Internal **this)
{
  v1 = *this;
  if (v1)
  {
    antenna::Service::Internal::stopService(v1);
  }
}

void antenna::Service::exitLowPower(antenna::Service::Internal **this)
{
  v1 = *this;
  if (v1)
  {
    antenna::Service::Internal::exitLowPower(v1);
  }
}

void antenna::Service::enterLowPower(antenna::Service::Internal **this)
{
  v1 = *this;
  if (v1)
  {
    antenna::Service::Internal::enterLowPower(v1);
  }
}

void antenna::Service::setMotionThresholds(CMOnBodyDelegate ***a1, ctu **a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *a2;
    v4 = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v3 = xpc_null_create();
      v4 = v3;
    }

    antenna::Service::Internal::setMotionThresholds(v2, &v4);
    xpc_release(v3);
  }
}

void antenna::Service::setAudioState(uint64_t **a1, xpc_object_t *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *a2;
    v4 = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v3 = xpc_null_create();
      v4 = v3;
    }

    antenna::Service::Internal::setAudioState(v2, &v4);
    xpc_release(v3);
  }
}

void antenna::Service::callActive(antenna::Service *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = *(v1 + 32);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Call Active!", v3, 2u);
    }

    *(v1 + 82) = 1;
  }
}

void antenna::Service::callInactive(antenna::Service *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = *(v1 + 32);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Call Inactive!", v3, 2u);
    }

    *(v1 + 82) = 0;
  }
}

void antenna::Service::antennaSetProperty(antenna::Service::Internal **this, xpc_object_t *a2)
{
  v2 = *this;
  if (v2)
  {
    antenna::Service::Internal::antennaSetProperty(v2, a2);
  }
}

void antenna::Service::antennaGetProperty(NSObject ***this@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v6 = xpc_null_create();
  *a3 = v6;
  if (*this)
  {
    antenna::Service::Internal::antennaGetProperty(*this, a2, &v9);
    v7 = v9;
    v8 = xpc_null_create();
    *a3 = v7;
    xpc_release(v6);
    xpc_release(v8);
  }
}

void antenna::Service::dumpState(antenna::Service::Internal **this)
{
  v1 = *this;
  if (v1)
  {
    antenna::Service::Internal::dumpState(v1);
  }
}

void antenna::Service::shutdown(antenna::Service::Internal **this)
{
  v1 = *this;
  if (v1)
  {
    antenna::Service::Internal::shutdown(v1);
  }
}

void ___ZN7antenna7Service8Internal25performCommandDriver_syncEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvNS2_6objectEEEE_block_invoke(uint64_t a1, char a2, xpc_object_t *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 48);
  if (v4)
  {
    v7 = *(a1 + 32);
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = *(a1 + 40);
      if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v9)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v10 = v8;
        (v8->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v10);
        if (!v9)
        {
          goto LABEL_27;
        }
      }

      if ((a2 & 1) == 0)
      {
        v11 = *MEMORY[0x29EDC8FA8];
        if (xpc_dictionary_get_value(*(a1 + 56), *MEMORY[0x29EDC8FA8]))
        {
          v12 = *(v7 + 32);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v20[0] = a1 + 56;
            v20[1] = v11;
            xpc::dict::object_proxy::operator xpc::object(v20, &v21);
            xpc::dyn_cast_or_default(block, &v21, "None", v18);
            if (SHIBYTE(v23) >= 0)
            {
              v19 = block;
            }

            else
            {
              v19 = block[0];
            }

            *buf = 136315138;
            v28 = v19;
            _os_log_error_impl(&dword_297476000, v12, OS_LOG_TYPE_ERROR, "Failed to run command driver: %s", buf, 0xCu);
            if (SHIBYTE(v23) < 0)
            {
              operator delete(block[0]);
            }

            xpc_release(v21);
          }
        }
      }

      if (*(a1 + 64) && *(a1 + 72))
      {
        v13 = *a3;
        if (v13)
        {
          xpc_retain(v13);
          v14 = *(a1 + 64);
          if (v14)
          {
LABEL_14:
            v15 = _Block_copy(v14);
            goto LABEL_17;
          }
        }

        else
        {
          v13 = xpc_null_create();
          v14 = *(a1 + 64);
          if (v14)
          {
            goto LABEL_14;
          }
        }

        v15 = 0;
LABEL_17:
        v16 = *(a1 + 72);
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 1174405120;
        v23 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectEEEclIJS2_EEEvDpT__block_invoke;
        v24 = &__block_descriptor_tmp_37_1;
        if (v15)
        {
          aBlock = _Block_copy(v15);
          object = v13;
          if (v13)
          {
LABEL_19:
            xpc_retain(v13);
LABEL_22:
            dispatch_async(v16, block);
            xpc_release(object);
            object = 0;
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v15)
            {
              _Block_release(v15);
            }

            xpc_release(v13);
            goto LABEL_27;
          }
        }

        else
        {
          aBlock = 0;
          object = v13;
          if (v13)
          {
            goto LABEL_19;
          }
        }

        object = xpc_null_create();
        goto LABEL_22;
      }
    }
  }

LABEL_27:
  v17 = *MEMORY[0x29EDCA608];
}

void sub_29754BB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void __copy_helper_block_e8_40c50_ZTSNSt3__18weak_ptrIN7antenna7Service8InternalEEE56c16_ZTSKN3xpc4dictE64c58_ZTSN8dispatch8callbackIU13block_pointerFvN3xpc6objectEEEE(void *a1, void *a2)
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
  if (!v5)
  {
    a1[7] = xpc_null_create();
    v6 = a2[8];
    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  xpc_retain(v5);
  v6 = a2[8];
  if (v6)
  {
LABEL_7:
    v6 = _Block_copy(v6);
  }

LABEL_8:
  v7 = a2[9];
  a1[8] = v6;
  a1[9] = v7;
  if (v7)
  {

    dispatch_retain(v7);
  }
}

void __destroy_helper_block_e8_40c50_ZTSNSt3__18weak_ptrIN7antenna7Service8InternalEEE56c16_ZTSKN3xpc4dictE64c58_ZTSN8dispatch8callbackIU13block_pointerFvN3xpc6objectEEEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    _Block_release(v3);
  }

  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  v4 = *(a1 + 48);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectEEEclIJS2_EEEvDpT__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  object = v1;
  if (v1)
  {
    xpc_retain(v1);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v2 + 16))(v2, &object);
  xpc_release(object);
}

xpc_object_t __copy_helper_block_e8_32c55_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectEEEE40c17_ZTSN3xpc6objectE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = *(a2 + 40);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c55_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectEEEE40c17_ZTSN3xpc6objectE(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

xpc::dict *xpc::dict::dict(xpc::dict *this, void **a2)
{
  v3 = *a2;
  *this = *a2;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    *this = xpc_null_create();
  }

  return this;
}

void std::string::__erase_external_with_move(std::string *this, std::string::size_type __pos, std::string::size_type __n)
{
  if (__n)
  {
    v3 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    size = v3;
    v5 = this;
    if ((v3 & 0x8000000000000000) != 0)
    {
      v5 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
      v6 = size - __pos;
      if (size - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = size - __pos;
      }

      if (size - __pos <= __n)
      {
LABEL_7:
        v8 = size - v7;
        if ((v3 & 0x80) == 0)
        {
LABEL_8:
          *(&this->__r_.__value_.__s + 23) = v8 & 0x7F;
LABEL_15:
          v5->__r_.__value_.__s.__data_[v8] = 0;
          return;
        }

LABEL_14:
        this->__r_.__value_.__l.__size_ = v8;
        goto LABEL_15;
      }
    }

    else
    {
      v6 = v3 - __pos;
      if (v3 - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = v3 - __pos;
      }

      if (v3 - __pos <= __n)
      {
        goto LABEL_7;
      }
    }

    v9 = this;
    memmove(v5 + __pos, v5 + __pos + v7, v6 - v7);
    this = v9;
    v8 = size - v7;
    if ((*(&v9->__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }
}

void std::__shared_ptr_pointer<antenna::Service::Internal *,std::shared_ptr<antenna::Service::Internal> ctu::SharedSynchronizable<antenna::Service::Internal>::make_shared_ptr<antenna::Service::Internal>(antenna::Service::Internal*)::{lambda(antenna::Service::Internal *)#1},std::allocator<antenna::Service::Internal>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<antenna::Service::Internal *,std::shared_ptr<antenna::Service::Internal> ctu::SharedSynchronizable<antenna::Service::Internal>::make_shared_ptr<antenna::Service::Internal>(antenna::Service::Internal*)::{lambda(antenna::Service::Internal *)#1},std::allocator<antenna::Service::Internal>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN7antenna7Service8InternalEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN7antenna7Service8InternalEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN7antenna7Service8InternalEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN7antenna7Service8InternalEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<antenna::Service::Internal> ctu::SharedSynchronizable<antenna::Service::Internal>::make_shared_ptr<antenna::Service::Internal>(antenna::Service::Internal*)::{lambda(antenna::Service::Internal*)#1}::operator() const(antenna::Service::Internal*)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  antenna::Service::Internal::stopTxPowerCapping_sync(a1);
  if ((*(a1 + 527) & 0x80000000) == 0)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(*(a1 + 488));
    if ((*(a1 + 463) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    operator delete(*(a1 + 440));
    v2 = *(a1 + 424);
    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  operator delete(*(a1 + 504));
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(*(a1 + 488));
  if (*(a1 + 463) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v2 = *(a1 + 424);
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

LABEL_11:
  v3 = *(a1 + 408);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(*(a1 + 360));
    if ((*(a1 + 351) & 0x80000000) == 0)
    {
LABEL_14:
      if ((*(a1 + 327) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  else
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(*(a1 + 360));
    if ((*(a1 + 351) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  operator delete(*(a1 + 328));
  if ((*(a1 + 327) & 0x80000000) == 0)
  {
LABEL_15:
    v4 = *(a1 + 296);
    if (!v4)
    {
      goto LABEL_22;
    }

LABEL_20:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    goto LABEL_22;
  }

LABEL_19:
  operator delete(*(a1 + 304));
  v4 = *(a1 + 296);
  if (v4)
  {
    goto LABEL_20;
  }

LABEL_22:
  v5 = *(a1 + 272);
  if (v5)
  {
    dispatch_release(v5);
  }

  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(*(a1 + 224));
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(*(a1 + 200));
  v6 = *(a1 + 168);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 152);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  xpc_release(*(a1 + 136));
  *(a1 + 136) = 0;
  v8 = *(a1 + 112);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(a1 + 64);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    _Block_release(v12);
  }

  MEMORY[0x29C270D60](a1 + 32);
  v13 = *(a1 + 24);
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = *(a1 + 16);
  if (v14)
  {
    dispatch_release(v14);
  }

  v15 = *(a1 + 8);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  operator delete(a1);
}

uint64_t ctu::PthreadMutexGuardPolicy<Capabilities>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::init(void)::$_0>(antenna::Service::Internal::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::init(void)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::init(void)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v157 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = (*a1)->__vftable;
  antenna::Service::Internal::configuration_sync(v2);
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
  v5 = xpc_null_create();
  on_zero_shared = v2[3].__on_zero_shared;
  v2[3].__on_zero_shared = v4;
  xpc_release(on_zero_shared);
  xpc_release(v5);
  v7 = xpc_string_create(*MEMORY[0x29EDBF308]);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(v2[3].__on_zero_shared, *MEMORY[0x29EDBF2A0], v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  v9 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v10 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(buf, v9);
    v11 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v12 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v11;
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v13 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v10 = off_2A18CADD8;
  }

  v154[1] = v10;
  v155 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  get_deleter = v2->__get_deleter;
  v154[0] = get_deleter;
  if (get_deleter)
  {
    dispatch_retain(get_deleter);
  }

  (*(v10->isa + 7))(v156, v10, v154);
  v16 = *v156;
  *v156 = 0;
  *&v156[8] = 0;
  v17 = v2[1].__get_deleter;
  *&v2[1].__on_zero_shared = v16;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *&v156[8];
  if (*&v156[8] && !atomic_fetch_add((*&v156[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  if (v154[0])
  {
    dispatch_release(v154[0]);
  }

  v19 = v155;
  if (v155 && !atomic_fetch_add(&v155->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    if (v2[1].__on_zero_shared)
    {
      goto LABEL_35;
    }
  }

  else if (v2[1].__on_zero_shared)
  {
    goto LABEL_35;
  }

  on_zero_shared_weak = v2->__on_zero_shared_weak;
  if (os_log_type_enabled(on_zero_shared_weak, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297476000, on_zero_shared_weak, OS_LOG_TYPE_ERROR, "Failed to create command driver", buf, 2u);
  }

LABEL_35:
  if ((v2[1].__on_zero_shared_weak & 1) == 0 && BYTE1(v2[1].__on_zero_shared_weak) != 1)
  {
    goto LABEL_69;
  }

  v21 = v2->__on_zero_shared;
  v153 = v21;
  if (v21)
  {
    dispatch_retain(v21);
  }

  CMOnBodyDelegate::create(&v153, v15, buf);
  v22 = *buf;
  *buf = 0;
  *&buf[8] = 0;
  v23 = v2[3].__on_zero_shared_weak;
  *&v2[3].__get_deleter = v22;
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

  if (v153)
  {
    dispatch_release(v153);
  }

  if (v2[3].__get_deleter)
  {
    v25 = v2->~__shared_weak_count_0;
    if (!v25 || (v26 = v2->~__shared_weak_count, (v27 = std::__shared_weak_count::lock(v25)) == 0))
    {
LABEL_291:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v28 = v27;
    p_shared_weak_owners = &v27->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v28);
    }

    v30 = v2[3].__get_deleter;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZZN7antenna7Service8Internal4initEvENK3__0clEv_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_46_0;
    aBlock[4] = v2;
    aBlock[5] = v26;
    v150 = v28;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v31 = _Block_copy(aBlock);
    v32 = v2->__on_zero_shared;
    if (v32)
    {
      dispatch_retain(v2->__on_zero_shared);
    }

    v151 = v31;
    v152 = v32;
    v33 = v30[5];
    if (v33 >= v30[6])
    {
      v35 = std::vector<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)> const&>(v30 + 4, &v151);
      goto LABEL_62;
    }

    if (v31)
    {
      v34 = _Block_copy(v31);
      v32 = v152;
      *v33 = v34;
      v33[1] = v32;
      if (!v32)
      {
LABEL_58:
        v35 = (v33 + 2);
LABEL_62:
        v30[5] = v35;
        if (v152)
        {
          dispatch_release(v152);
        }

        if (v151)
        {
          _Block_release(v151);
        }

        if (v150)
        {
          std::__shared_weak_count::__release_weak(v150);
        }

        std::__shared_weak_count::__release_weak(v28);
        goto LABEL_69;
      }
    }

    else
    {
      *v33 = 0;
      v33[1] = v32;
      if (!v32)
      {
        goto LABEL_58;
      }
    }

    dispatch_retain(v32);
    goto LABEL_58;
  }

  v36 = v2->__on_zero_shared_weak;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297476000, v36, OS_LOG_TYPE_ERROR, "Failed to create on-body handler", buf, 2u);
  }

LABEL_69:
  v37 = v2->~__shared_weak_count_0;
  if (!v37)
  {
    goto LABEL_291;
  }

  v38 = v2->~__shared_weak_count;
  v39 = std::__shared_weak_count::lock(v37);
  if (!v39)
  {
    goto LABEL_291;
  }

  v40 = v39;
  atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (BYTE4(v2[1].__on_zero_shared_weak))
    {
      goto LABEL_80;
    }
  }

  else
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v40);
    if (BYTE4(v2[1].__on_zero_shared_weak))
    {
      goto LABEL_80;
    }
  }

  if ((BYTE6(v2[1].__on_zero_shared_weak) & 1) != 0 || (v2[2].~__shared_weak_count & 1) != 0 || (BYTE4(v2[2].~__shared_weak_count) & 1) != 0 || LODWORD(v2[2].~__shared_weak_count_0) || BYTE4(v2[2].~__shared_weak_count_0) == 1)
  {
LABEL_80:
    pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
    v41 = off_2A18CAD88;
    if (!off_2A18CAD88)
    {
      ABMServer::create_default_global(buf);
      v42 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v43 = *(&off_2A18CAD88 + 1);
      off_2A18CAD88 = v42;
      if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v43->__on_zero_shared)(v43);
        std::__shared_weak_count::__release_weak(v43);
      }

      v44 = *&buf[8];
      if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v44->__on_zero_shared)(v44);
        std::__shared_weak_count::__release_weak(v44);
      }

      v41 = off_2A18CAD88;
    }

    *v156 = v41;
    *&v156[8] = *(&off_2A18CAD88 + 1);
    if (*(&off_2A18CAD88 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A18CAD88 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
    v45 = *(*v41 + 144);
    v46 = operator new(0x88uLL);
    v46[1] = 0;
    v46[2] = 0;
    *v46 = &unk_2A1E43628;
    ctu::OsLogLogger::OsLogLogger((v46 + 3), "com.apple.telephony", "iokit.event");
    ctu::iokit::Controller::create(v45, v47);
    *(v46 + 6) = 0u;
    *(v46 + 7) = 0u;
    *(v46 + 4) = 0u;
    *(v46 + 5) = 0u;
    *(v46 + 3) = 0u;
    v46[16] = v45;
    v48 = v2[7].__on_zero_shared;
    v2[7].~__shared_weak_count_0 = (v46 + 3);
    v2[7].__on_zero_shared = v46;
    if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v48->__on_zero_shared)(v48);
      std::__shared_weak_count::__release_weak(v48);
      v49 = *&v156[8];
      if (!*&v156[8])
      {
        goto LABEL_94;
      }
    }

    else
    {
      v49 = *&v156[8];
      if (!*&v156[8])
      {
        goto LABEL_94;
      }
    }

    if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v49->__on_zero_shared)(v49);
      std::__shared_weak_count::__release_weak(v49);
      if (BYTE4(v2[1].__on_zero_shared_weak))
      {
        goto LABEL_100;
      }

      goto LABEL_95;
    }

LABEL_94:
    if (BYTE4(v2[1].__on_zero_shared_weak))
    {
      goto LABEL_100;
    }

LABEL_95:
    if (BYTE6(v2[1].__on_zero_shared_weak) != 1)
    {
      goto LABEL_117;
    }

LABEL_100:
    v50 = v2[7].~__shared_weak_count_0;
    v147[0] = MEMORY[0x29EDCA5F8];
    v147[1] = 1174405120;
    v147[2] = ___ZZN7antenna7Service8Internal4initEvENK3__0clEv_block_invoke_47;
    v147[3] = &__block_descriptor_tmp_51_0;
    v147[4] = v2;
    v147[5] = v38;
    v148 = v40;
    atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v51 = _Block_copy(v147);
    v52 = v2->__on_zero_shared;
    if (v52)
    {
      dispatch_retain(v2->__on_zero_shared);
    }

    if (v51)
    {
      v53 = _Block_copy(v51);
      v54 = *(v50 + 3);
      *(v50 + 3) = v53;
      if (!v54)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v54 = *(v50 + 3);
      *(v50 + 3) = 0;
      if (!v54)
      {
LABEL_107:
        if (v52)
        {
          dispatch_retain(v52);
        }

        v55 = *(v50 + 4);
        *(v50 + 4) = v52;
        if (v55)
        {
          dispatch_release(v55);
        }

        if (v52)
        {
          dispatch_release(v52);
        }

        if (v51)
        {
          _Block_release(v51);
        }

        if (v148)
        {
          std::__shared_weak_count::__release_weak(v148);
        }

LABEL_117:
        if (LOBYTE(v2[2].~__shared_weak_count) != 1)
        {
          goto LABEL_135;
        }

        v56 = v2[7].~__shared_weak_count_0;
        v145[0] = MEMORY[0x29EDCA5F8];
        v145[1] = 1174405120;
        v145[2] = ___ZZN7antenna7Service8Internal4initEvENK3__0clEv_block_invoke_52;
        v145[3] = &__block_descriptor_tmp_56_1;
        v145[4] = v2;
        v145[5] = v38;
        v146 = v40;
        atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v57 = _Block_copy(v145);
        v58 = v2->__on_zero_shared;
        if (v58)
        {
          dispatch_retain(v2->__on_zero_shared);
        }

        if (v57)
        {
          v59 = _Block_copy(v57);
          v60 = *(v56 + 5);
          *(v56 + 5) = v59;
          if (!v60)
          {
            goto LABEL_125;
          }
        }

        else
        {
          v60 = *(v56 + 5);
          *(v56 + 5) = 0;
          if (!v60)
          {
LABEL_125:
            if (v58)
            {
              dispatch_retain(v58);
            }

            v61 = *(v56 + 6);
            *(v56 + 6) = v58;
            if (v61)
            {
              dispatch_release(v61);
            }

            if (v58)
            {
              dispatch_release(v58);
            }

            if (v57)
            {
              _Block_release(v57);
            }

            if (v146)
            {
              std::__shared_weak_count::__release_weak(v146);
            }

LABEL_135:
            if (BYTE4(v2[2].~__shared_weak_count) != 1)
            {
              goto LABEL_162;
            }

            v62 = v2[7].~__shared_weak_count_0;
            v143[0] = MEMORY[0x29EDCA5F8];
            v143[1] = 1174405120;
            v143[2] = ___ZZN7antenna7Service8Internal4initEvENK3__0clEv_block_invoke_57;
            v143[3] = &__block_descriptor_tmp_60_1;
            v143[4] = v2;
            v143[5] = v38;
            v144 = v40;
            atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v63 = _Block_copy(v143);
            v64 = v2->__on_zero_shared;
            if (v64)
            {
              dispatch_retain(v2->__on_zero_shared);
            }

            if (v63)
            {
              v65 = _Block_copy(v63);
              v66 = *(v62 + 7);
              *(v62 + 7) = v65;
              if (!v66)
              {
LABEL_143:
                if (v64)
                {
                  dispatch_retain(v64);
                }

                v67 = *(v62 + 8);
                *(v62 + 8) = v64;
                if (v67)
                {
                  dispatch_release(v67);
                }

                if (v64)
                {
                  dispatch_release(v64);
                }

                if (v63)
                {
                  _Block_release(v63);
                }

                v68 = *(v2[7].~__shared_weak_count_0 + 1);
                if (v68)
                {
                  HIDWORD(v2[11].__get_deleter) = ctu::iokit::Controller::queryPowerSource(v68);
                  v69 = v2->__on_zero_shared_weak;
                  if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_160:
                    if (v144)
                    {
                      std::__shared_weak_count::__release_weak(v144);
                    }

LABEL_162:
                    if (!LODWORD(v2[2].~__shared_weak_count_0))
                    {
                      goto LABEL_180;
                    }

                    BYTE1(v2[13].~__shared_weak_count_0) = 0;
                    v71 = v2[7].~__shared_weak_count_0;
                    v139[0] = MEMORY[0x29EDCA5F8];
                    v139[1] = 1174405120;
                    v139[2] = ___ZZN7antenna7Service8Internal4initEvENK3__0clEv_block_invoke_61;
                    v139[3] = &__block_descriptor_tmp_65_1;
                    v139[4] = v2;
                    v139[5] = v38;
                    v140 = v40;
                    atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    v72 = _Block_copy(v139);
                    v73 = v2->__on_zero_shared;
                    if (v73)
                    {
                      dispatch_retain(v2->__on_zero_shared);
                    }

                    if (v72)
                    {
                      v74 = _Block_copy(v72);
                      v75 = *(v71 + 9);
                      *(v71 + 9) = v74;
                      if (!v75)
                      {
                        goto LABEL_170;
                      }
                    }

                    else
                    {
                      v75 = *(v71 + 9);
                      *(v71 + 9) = 0;
                      if (!v75)
                      {
LABEL_170:
                        if (v73)
                        {
                          dispatch_retain(v73);
                        }

                        v76 = *(v71 + 10);
                        *(v71 + 10) = v73;
                        if (v76)
                        {
                          dispatch_release(v76);
                        }

                        if (v73)
                        {
                          dispatch_release(v73);
                        }

                        if (v72)
                        {
                          _Block_release(v72);
                        }

                        if (v140)
                        {
                          std::__shared_weak_count::__release_weak(v140);
                        }

LABEL_180:
                        if (BYTE4(v2[2].~__shared_weak_count_0) != 1)
                        {
LABEL_198:
                          IOKitEventNotifier::start(v2[7].~__shared_weak_count_0);
                          goto LABEL_199;
                        }

                        BYTE2(v2[13].~__shared_weak_count_0) = 0;
                        v77 = v2[7].~__shared_weak_count_0;
                        v137[0] = MEMORY[0x29EDCA5F8];
                        v137[1] = 1174405120;
                        v137[2] = ___ZZN7antenna7Service8Internal4initEvENK3__0clEv_block_invoke_66;
                        v137[3] = &__block_descriptor_tmp_69;
                        v137[4] = v2;
                        v137[5] = v38;
                        v138 = v40;
                        atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                        v78 = _Block_copy(v137);
                        v79 = v2->__on_zero_shared;
                        if (v79)
                        {
                          dispatch_retain(v2->__on_zero_shared);
                        }

                        if (v78)
                        {
                          v80 = _Block_copy(v78);
                          v81 = *(v77 + 11);
                          *(v77 + 11) = v80;
                          if (!v81)
                          {
                            goto LABEL_188;
                          }
                        }

                        else
                        {
                          v81 = *(v77 + 11);
                          *(v77 + 11) = 0;
                          if (!v81)
                          {
LABEL_188:
                            if (v79)
                            {
                              dispatch_retain(v79);
                            }

                            v82 = *(v77 + 12);
                            *(v77 + 12) = v79;
                            if (v82)
                            {
                              dispatch_release(v82);
                            }

                            if (v79)
                            {
                              dispatch_release(v79);
                            }

                            if (v78)
                            {
                              _Block_release(v78);
                            }

                            if (v138)
                            {
                              std::__shared_weak_count::__release_weak(v138);
                            }

                            goto LABEL_198;
                          }
                        }

                        _Block_release(v81);
                        goto LABEL_188;
                      }
                    }

                    _Block_release(v75);
                    goto LABEL_170;
                  }
                }

                else
                {
                  HIDWORD(v2[11].__get_deleter) = 1;
                  v69 = v2->__on_zero_shared_weak;
                  if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_160;
                  }
                }

                ctu::iokit::asString();
                if (v142 >= 0)
                {
                  v70 = buf;
                }

                else
                {
                  v70 = *buf;
                }

                *v156 = 136315138;
                *&v156[4] = v70;
                _os_log_impl(&dword_297476000, v69, OS_LOG_TYPE_DEFAULT, "#I Initial Power Source: %s", v156, 0xCu);
                if (v142 < 0)
                {
                  operator delete(*buf);
                }

                goto LABEL_160;
              }
            }

            else
            {
              v66 = *(v62 + 7);
              *(v62 + 7) = 0;
              if (!v66)
              {
                goto LABEL_143;
              }
            }

            _Block_release(v66);
            goto LABEL_143;
          }
        }

        _Block_release(v60);
        goto LABEL_125;
      }
    }

    _Block_release(v54);
    goto LABEL_107;
  }

LABEL_199:
  pthread_mutex_lock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  v83 = unk_2A18CAF68;
  if (!unk_2A18CAF68)
  {
    v84 = operator new(1uLL);
    v85 = operator new(0x20uLL);
    *v85 = &unk_2A1E4FD98;
    v85[1] = 0;
    v85[2] = 0;
    v85[3] = v84;
    v86 = off_2A18CAF70;
    unk_2A18CAF68 = v84;
    off_2A18CAF70 = v85;
    if (v86 && !atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v86->__on_zero_shared)(v86);
      std::__shared_weak_count::__release_weak(v86);
    }

    v83 = unk_2A18CAF68;
  }

  v87 = off_2A18CAF70;
  *buf = v83;
  *&buf[8] = off_2A18CAF70;
  if (off_2A18CAF70)
  {
    atomic_fetch_add_explicit(off_2A18CAF70 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  isCMHandDetectionSupported = Capabilities::isCMHandDetectionSupported(v83);
  if (v87 && !atomic_fetch_add(&v87->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v99 = isCMHandDetectionSupported;
    (v87->__on_zero_shared)(v87);
    std::__shared_weak_count::__release_weak(v87);
    if (!v99)
    {
      goto LABEL_244;
    }
  }

  else if (!isCMHandDetectionSupported)
  {
    goto LABEL_244;
  }

  v89 = v2->__on_zero_shared;
  v136 = v89;
  if (v89)
  {
    dispatch_retain(v89);
  }

  v90 = v2->__get_deleter;
  object = v90;
  if (v90)
  {
    dispatch_retain(v90);
  }

  CMHandDetectionDelegate::create(&v136, &object, buf);
  v91 = *buf;
  *buf = 0;
  *&buf[8] = 0;
  v92 = v2[10].__get_deleter;
  *&v2[10].__on_zero_shared = v91;
  if (v92 && !atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v92->__on_zero_shared)(v92);
    std::__shared_weak_count::__release_weak(v92);
  }

  v93 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v93->__on_zero_shared)(v93);
    std::__shared_weak_count::__release_weak(v93);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v136)
  {
    dispatch_release(v136);
  }

  if (v2[10].~__shared_weak_count)
  {
    goto LABEL_239;
  }

  v94 = v2->__on_zero_shared;
  v134 = v94;
  if (v94)
  {
    dispatch_retain(v94);
  }

  v95 = v2->__get_deleter;
  v133 = v95;
  if (v95)
  {
    dispatch_retain(v95);
  }

  ctu::iokit::IOHIDController::create();
  v96 = *buf;
  *buf = 0;
  *&buf[8] = 0;
  v97 = v2[10].~__shared_weak_count_0;
  *&v2[10].~__shared_weak_count = v96;
  if (v97 && !atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v97->__on_zero_shared)(v97);
    std::__shared_weak_count::__release_weak(v97);
  }

  v98 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v98->__on_zero_shared)(v98);
    std::__shared_weak_count::__release_weak(v98);
  }

  if (v133)
  {
    dispatch_release(v133);
  }

  if (v134)
  {
    dispatch_release(v134);
  }

  if (v2[10].~__shared_weak_count)
  {
LABEL_239:
    v130[0] = MEMORY[0x29EDCA5F8];
    v130[1] = 1174405120;
    v130[2] = ___ZZN7antenna7Service8Internal4initEvENK3__0clEv_block_invoke_70;
    v130[3] = &__block_descriptor_tmp_73;
    v130[4] = v2;
    v130[5] = v38;
    v131 = v40;
    atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v132 = _Block_copy(v130);
    ctu::iokit::IOHIDController::registerProxCallback();
    if (v132)
    {
      _Block_release(v132);
    }

    if (v131)
    {
      std::__shared_weak_count::__release_weak(v131);
    }
  }

LABEL_244:
  v100 = v2[10].__on_zero_shared;
  if (v100)
  {
    v127[0] = MEMORY[0x29EDCA5F8];
    v127[1] = 1174405120;
    v127[2] = ___ZZN7antenna7Service8Internal4initEvENK3__0clEv_block_invoke_74;
    v127[3] = &__block_descriptor_tmp_78_0;
    v127[4] = v2;
    v127[5] = v38;
    v128 = v40;
    atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v101 = _Block_copy(v127);
    v129 = v101;
    CMHandDetectionDelegate::registerCallback(v100, &v129);
    if (v101)
    {
      _Block_release(v101);
    }

    if (v128)
    {
      std::__shared_weak_count::__release_weak(v128);
    }
  }

  if (LOBYTE(v2[2].__get_deleter) == 1)
  {
    if (v2[10].~__shared_weak_count)
    {
      goto LABEL_266;
    }

    v102 = v2->__on_zero_shared;
    v126 = v102;
    if (v102)
    {
      dispatch_retain(v102);
    }

    v103 = v2->__get_deleter;
    v125 = v103;
    if (v103)
    {
      dispatch_retain(v103);
    }

    ctu::iokit::IOHIDController::create();
    v104 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v105 = v2[10].~__shared_weak_count_0;
    *&v2[10].~__shared_weak_count = v104;
    if (v105 && !atomic_fetch_add(&v105->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v105->__on_zero_shared)(v105);
      std::__shared_weak_count::__release_weak(v105);
    }

    v106 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v106->__on_zero_shared)(v106);
      std::__shared_weak_count::__release_weak(v106);
    }

    if (v125)
    {
      dispatch_release(v125);
    }

    if (v126)
    {
      dispatch_release(v126);
    }

    if (v2[10].~__shared_weak_count)
    {
LABEL_266:
      v122[0] = MEMORY[0x29EDCA5F8];
      v122[1] = 1174405120;
      v122[2] = ___ZZN7antenna7Service8Internal4initEvENK3__0clEv_block_invoke_79;
      v122[3] = &__block_descriptor_tmp_83;
      v122[4] = v2;
      v122[5] = v38;
      v123 = v40;
      atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v124 = _Block_copy(v122);
      ctu::iokit::IOHIDController::registerKeyboardCallback();
      if (v124)
      {
        _Block_release(v124);
      }

      if (v123)
      {
        std::__shared_weak_count::__release_weak(v123);
      }
    }
  }

  v107 = v2[10].~__shared_weak_count;
  if (v107)
  {
    ctu::iokit::IOHIDController::start(v107);
  }

  memset(buf, 170, 16);
  v109 = v2->~__shared_weak_count;
  v108 = v2->~__shared_weak_count_0;
  if (!v108 || (v110 = std::__shared_weak_count::lock(v108)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v111 = v110;
  v112 = operator new(0x30uLL);
  v112->__shared_owners_ = 0;
  v112->__shared_weak_owners_ = 0;
  v112->__vftable = &unk_2A1E47298;
  v113 = &v112[1].__vftable;
  v112[1].__vftable = &unk_2A1E47340;
  v112[1].__shared_owners_ = v109;
  v112[1].__shared_weak_owners_ = v111;
  atomic_fetch_add_explicit(&v111->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v112[1].__vftable = &unk_2A1E472E8;
    *buf = v112 + 1;
    *&buf[8] = v112;
  }

  else
  {
    v114 = v112;
    (v111->__on_zero_shared)(v111);
    std::__shared_weak_count::__release_weak(v111);
    v112 = v114;
    v114[1].__vftable = &unk_2A1E472E8;
    *buf = v113;
    *&buf[8] = v114;
  }

  v115 = v2[1].__on_zero_shared;
  v121 = v112;
  atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
  antenna::CommandDriver::registerHandler();
  if (v121 && !atomic_fetch_add(&v121->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v121->__on_zero_shared)(v121);
    std::__shared_weak_count::__release_weak(v121);
  }

  v116 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v116->__on_zero_shared)(v116);
    std::__shared_weak_count::__release_weak(v116);
  }

  std::__shared_weak_count::__release_weak(v40);
  operator delete(v1);
  v117 = a1;
  if (a1)
  {
    v118 = a1[2];
    if (v118 && !atomic_fetch_add(&v118->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v118->__on_zero_shared)(v118);
      std::__shared_weak_count::__release_weak(v118);
      v117 = a1;
    }

    operator delete(v117);
  }

  v119 = *MEMORY[0x29EDCA608];
}

void sub_29754D9CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZZN7antenna7Service8Internal4initEvENK3__0clEv_block_invoke(void *a1, int a2)
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

      antenna::Service::Internal::motionDetectCallback_sync(v5, a2);
    }
  }
}

void ___ZZN7antenna7Service8Internal4initEvENK3__0clEv_block_invoke_47(void *a1, uint64_t a2, unsigned int a3)
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

      antenna::Service::Internal::accessoryNotification_sync(v7, a2, a3);
    }
  }
}

void ___ZZN7antenna7Service8Internal4initEvENK3__0clEv_block_invoke_52(void *a1, unsigned int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = a1[5];
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7)
      {
        v9 = *(v5 + 4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11[0] = 67109120;
          v11[1] = a2;
          _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Display evnet: 0x%x\n", v11, 8u);
        }

        antenna::Service::Internal::sendVideoAccessory_sync(v5, (a2 >> 2) & 1);
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

void ___ZZN7antenna7Service8Internal4initEvENK3__0clEv_block_invoke_57(void *a1, int a2)
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

      antenna::Service::Internal::powerSourceNotification_sync(v5, a2);
    }
  }
}

void ___ZZN7antenna7Service8Internal4initEvENK3__0clEv_block_invoke_61(void *a1, int a2)
{
  v30 = *MEMORY[0x29EDCA608];
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
          goto LABEL_17;
        }
      }

      else
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
        if (!v7)
        {
          goto LABEL_17;
        }
      }

      v9 = v5[4];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(v5 + 529);
        if (v5[12])
        {
          v13 = "on";
        }

        else
        {
          v13 = "off";
        }

        LODWORD(v23) = 67109634;
        HIDWORD(v23) = v12;
        LOWORD(v24) = 1024;
        *(&v24 + 2) = a2;
        HIWORD(v24) = 2080;
        v25 = v13;
        _os_log_debug_impl(&dword_297476000, v9, OS_LOG_TYPE_DEBUG, "#D Cached State: %d, event: %d, Camera-Off-Timer: %s", &v23, 0x18u);
        v10 = *(v5 + 529);
        v11 = v5[12];
        if (v10 == a2)
        {
LABEL_9:
          if (!v11)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }

      else
      {
        v10 = *(v5 + 529);
        v11 = v5[12];
        if (v10 == a2)
        {
          goto LABEL_9;
        }
      }

      if (v11)
      {
LABEL_16:
        *(v5 + 529) = a2;
        goto LABEL_17;
      }

      if (a2 || v10 != 1)
      {
        *(v5 + 529) = a2;
        antenna::Service::Internal::sendSensorID_sync(v5);
      }

      else
      {
        *(v5 + 529) = 0;
        v15 = v5[1];
        if (!v15 || (v16 = *v5, (v17 = std::__shared_weak_count::lock(v15)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v18 = v17;
        atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v18);
        }

        v19 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, v5[2]);
        v20 = v5[12];
        v5[12] = v19;
        if (v20)
        {
          dispatch_release(v20);
          v19 = v5[12];
        }

        v21 = dispatch_time(0, 300000000);
        dispatch_source_set_timer(v19, v21, 0xFFFFFFFFFFFFFFFFLL, 0x1312D00uLL);
        v22 = v5[12];
        v23 = MEMORY[0x29EDCA5F8];
        v24 = 1174405120;
        v25 = ___ZN7antenna7Service8Internal31cameraStateCallBackHandler_syncIN3ctu5iokit25TelephonyIOKitFaceIDStateEEEvRT_S6__block_invoke;
        v26 = &__block_descriptor_tmp_88_0;
        v27 = v5;
        v28 = v16;
        v29 = v18;
        atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        dispatch_source_set_event_handler(v22, &v23);
        dispatch_activate(v5[12]);
        if (v29)
        {
          std::__shared_weak_count::__release_weak(v29);
        }

        std::__shared_weak_count::__release_weak(v18);
      }
    }
  }

LABEL_17:
  v14 = *MEMORY[0x29EDCA608];
}

void ___ZZN7antenna7Service8Internal4initEvENK3__0clEv_block_invoke_66(void *a1, int a2)
{
  v30 = *MEMORY[0x29EDCA608];
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
          goto LABEL_17;
        }
      }

      else
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
        if (!v7)
        {
          goto LABEL_17;
        }
      }

      v9 = v5[4];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(v5 + 530);
        if (v5[12])
        {
          v13 = "on";
        }

        else
        {
          v13 = "off";
        }

        LODWORD(v23) = 67109634;
        HIDWORD(v23) = v12;
        LOWORD(v24) = 1024;
        *(&v24 + 2) = a2;
        HIWORD(v24) = 2080;
        v25 = v13;
        _os_log_debug_impl(&dword_297476000, v9, OS_LOG_TYPE_DEBUG, "#D Cached State: %d, event: %d, Camera-Off-Timer: %s", &v23, 0x18u);
        v10 = *(v5 + 530);
        v11 = v5[12];
        if (v10 == a2)
        {
LABEL_9:
          if (!v11)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }

      else
      {
        v10 = *(v5 + 530);
        v11 = v5[12];
        if (v10 == a2)
        {
          goto LABEL_9;
        }
      }

      if (v11)
      {
LABEL_16:
        *(v5 + 530) = a2;
        goto LABEL_17;
      }

      if (a2 || v10 != 1)
      {
        *(v5 + 530) = a2;
        antenna::Service::Internal::sendSensorID_sync(v5);
      }

      else
      {
        *(v5 + 530) = 0;
        v15 = v5[1];
        if (!v15 || (v16 = *v5, (v17 = std::__shared_weak_count::lock(v15)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v18 = v17;
        atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v18);
        }

        v19 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, v5[2]);
        v20 = v5[12];
        v5[12] = v19;
        if (v20)
        {
          dispatch_release(v20);
          v19 = v5[12];
        }

        v21 = dispatch_time(0, 300000000);
        dispatch_source_set_timer(v19, v21, 0xFFFFFFFFFFFFFFFFLL, 0x1312D00uLL);
        v22 = v5[12];
        v23 = MEMORY[0x29EDCA5F8];
        v24 = 1174405120;
        v25 = ___ZN7antenna7Service8Internal31cameraStateCallBackHandler_syncIN3ctu5iokit30TelephonyIOKitFrontCameraStateEEEvRT_S6__block_invoke;
        v26 = &__block_descriptor_tmp_93;
        v27 = v5;
        v28 = v16;
        v29 = v18;
        atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        dispatch_source_set_event_handler(v22, &v23);
        dispatch_activate(v5[12]);
        if (v29)
        {
          std::__shared_weak_count::__release_weak(v29);
        }

        std::__shared_weak_count::__release_weak(v18);
      }
    }
  }

LABEL_17:
  v14 = *MEMORY[0x29EDCA608];
}

void ___ZZN7antenna7Service8Internal4initEvENK3__0clEv_block_invoke_70(void *a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = a1[5];
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7)
      {
        isProxCovered = ctu::iokit::IOHIDController::isProxCovered(*(v5 + 400));
        if (*(v5 + 464) != isProxCovered)
        {
          v10 = isProxCovered;
          v11 = *(v5 + 32);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v13[0] = 67109376;
            v13[1] = v10;
            v14 = 1024;
            v15 = a2;
            _os_log_impl(&dword_297476000, v11, OS_LOG_TYPE_DEFAULT, "#I Prox Covered State: %d mask value: 0x%x", v13, 0xEu);
          }

          *(v5 + 464) = v10;
          antenna::Service::Internal::checkStartHandDetection_sync(v5);
        }
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

void ___ZZN7antenna7Service8Internal4initEvENK3__0clEv_block_invoke_74(void *a1, int a2)
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

      antenna::Service::Internal::handDetectCallback(v5, a2);
    }
  }
}

void ___ZZN7antenna7Service8Internal4initEvENK3__0clEv_block_invoke_79(void *a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = a1[5];
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7 && *(v5 + 465) != a2)
      {
        v9 = *(v5 + 32);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = "OPENED";
          if (a2)
          {
            v10 = "CLOSED";
          }

          v12 = 136315138;
          v13 = v10;
          _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Smart Keyboard Cover: %s", &v12, 0xCu);
        }

        *(v5 + 465) = a2;
        antenna::Service::Internal::sendAccessoryStatus_sync(v5);
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void ___ZN7antenna7Service8Internal31cameraStateCallBackHandler_syncIN3ctu5iokit25TelephonyIOKitFaceIDStateEEEvRT_S6__block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = a1[5];
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v6);
      }

      if (v5)
      {
        v7 = v3[4];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *v9 = 0;
          _os_log_debug_impl(&dword_297476000, v7, OS_LOG_TYPE_DEBUG, "#D Camera state debounce timer is expired, sending last state to baseband", v9, 2u);
        }

        antenna::Service::Internal::sendSensorID_sync(v3);
        dispatch_source_cancel(v3[12]);
        v8 = v3[12];
        v3[12] = 0;
        if (v8)
        {
          dispatch_release(v8);
        }
      }
    }
  }
}

void ___ZN7antenna7Service8Internal31cameraStateCallBackHandler_syncIN3ctu5iokit30TelephonyIOKitFrontCameraStateEEEvRT_S6__block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = a1[5];
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v6);
      }

      if (v5)
      {
        v7 = v3[4];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *v9 = 0;
          _os_log_debug_impl(&dword_297476000, v7, OS_LOG_TYPE_DEBUG, "#D Camera state debounce timer is expired, sending last state to baseband", v9, 2u);
        }

        antenna::Service::Internal::sendSensorID_sync(v3);
        dispatch_source_cancel(v3[12]);
        v8 = v3[12];
        v3[12] = 0;
        if (v8)
        {
          dispatch_release(v8);
        }
      }
    }
  }
}

void std::__shared_ptr_emplace<antenna::AntennaCommandDriverDelegate<antenna::Service::Internal>::create(std::shared_ptr<antenna::Service::Internal>)::MakeSharedEnabler,std::allocator<antenna::AntennaCommandDriverDelegate<antenna::Service::Internal>::create(std::shared_ptr<antenna::Service::Internal>)::MakeSharedEnabler>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E47298;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void antenna::AntennaCommandDriverDelegate<antenna::Service::Internal>::create(std::shared_ptr<antenna::Service::Internal>)::MakeSharedEnabler::~MakeSharedEnabler(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E47340;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  antenna::AntennaCommandDriverDelegateInterface::~AntennaCommandDriverDelegateInterface(a1);
}

void antenna::AntennaCommandDriverDelegate<antenna::Service::Internal>::create(std::shared_ptr<antenna::Service::Internal>)::MakeSharedEnabler::~MakeSharedEnabler(antenna::AntennaCommandDriverDelegateInterface *this)
{
  *this = &unk_2A1E47340;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  antenna::AntennaCommandDriverDelegateInterface::~AntennaCommandDriverDelegateInterface(this);

  operator delete(v3);
}

void antenna::AntennaCommandDriverDelegate<antenna::Service::Internal>::signalTransmitState(uint64_t a1, int a2, int a3)
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
        antenna::Service::Internal::transmitStateHandler(v9, a2, a3);
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);

        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void antenna::AntennaCommandDriverDelegate<antenna::Service::Internal>::~AntennaCommandDriverDelegate(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E47340;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  antenna::AntennaCommandDriverDelegateInterface::~AntennaCommandDriverDelegateInterface(a1);
}

void antenna::AntennaCommandDriverDelegate<antenna::Service::Internal>::~AntennaCommandDriverDelegate(antenna::AntennaCommandDriverDelegateInterface *this)
{
  *this = &unk_2A1E47340;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  antenna::AntennaCommandDriverDelegateInterface::~AntennaCommandDriverDelegateInterface(this);

  operator delete(v3);
}

void std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned int>,std::__tree_node<std::__value_type<unsigned int,unsigned int>,void *> *,long>>(void **a1, void *a2, void *a3)
{
  if (!a1[2])
  {
    goto LABEL_17;
  }

  v6 = *a1;
  v8 = a1 + 1;
  v7 = a1[1];
  *a1 = a1 + 1;
  v7[2] = 0;
  a1[2] = 0;
  a1[1] = 0;
  v9 = v6[1] ? v6[1] : v6;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v33 = v10[1];
        if (!v33)
        {
          break;
        }

        do
        {
          v10 = v33;
          v33 = *v33;
        }

        while (v33);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v24 = a2;
    while (1)
    {
      v12 = v10;
      v25 = *(v24 + 7);
      *(v9 + 7) = v25;
      *(v9 + 8) = *(v24 + 8);
      v26 = *v8;
      v27 = a1 + 1;
      v28 = a1 + 1;
      if (*v8)
      {
        break;
      }

LABEL_38:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v27;
      *v28 = v9;
      v29 = **a1;
      if (v29)
      {
        goto LABEL_39;
      }

LABEL_40:
      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v9);
      a1[2] = (a1[2] + 1);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v31 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v32 = v10[1];
              if (!v32)
              {
                break;
              }

              do
              {
                v10 = v32;
                v32 = *v32;
              }

              while (v32);
            }
          }

          else
          {
            for (v10[1] = 0; v31; v31 = v10[1])
            {
              do
              {
                v10 = v31;
                v31 = *v31;
              }

              while (v31);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v30 = v24[1];
      if (v30)
      {
        do
        {
          a2 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          a2 = v24[2];
          v23 = *a2 == v24;
          v24 = a2;
        }

        while (!v23);
      }

      if (v12)
      {
        v24 = a2;
        v9 = v12;
        if (a2 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v27 = v26;
        if (v25 >= *(v26 + 7))
        {
          break;
        }

        v26 = *v26;
        v28 = v27;
        if (!*v27)
        {
          goto LABEL_38;
        }
      }

      v26 = v26[1];
    }

    while (v26);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v27;
    v27[1] = v9;
    v29 = **a1;
    if (!v29)
    {
      goto LABEL_40;
    }

LABEL_39:
    *a1 = v29;
    goto LABEL_40;
  }

  v12 = v9;
LABEL_13:
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v10);
  }

LABEL_17:
  if (a2 != a3)
  {
    v14 = (a1 + 1);
    while (1)
    {
      v15 = operator new(0x28uLL);
      v16 = *(a2 + 28);
      *(v15 + 28) = v16;
      v17 = *v14;
      v18 = a1 + 1;
      v19 = a1 + 1;
      if (*v14)
      {
        break;
      }

LABEL_21:
      *v15 = 0;
      v15[1] = 0;
      v15[2] = v18;
      *v19 = v15;
      v20 = **a1;
      if (v20)
      {
        goto LABEL_22;
      }

LABEL_23:
      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v15);
      a1[2] = (a1[2] + 1);
      v21 = a2[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = a2[2];
          v23 = *v22 == a2;
          a2 = v22;
        }

        while (!v23);
      }

      a2 = v22;
      if (v22 == a3)
      {
        return;
      }
    }

    do
    {
      while (1)
      {
        v18 = v17;
        if (*(v17 + 7) <= v16)
        {
          break;
        }

        v17 = *v17;
        v19 = v18;
        if (!*v18)
        {
          goto LABEL_21;
        }
      }

      v17 = v17[1];
    }

    while (v17);
    *v15 = 0;
    v15[1] = 0;
    v15[2] = v18;
    v18[1] = v15;
    v20 = **a1;
    if (!v20)
    {
      goto LABEL_23;
    }

LABEL_22:
    *a1 = v20;
    goto LABEL_23;
  }
}

void dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::stopService(void)::$_0>(antenna::Service::Internal::stopService(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::stopService(void)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::stopService(void)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  antenna::Service::Internal::enableTxPowerCappingNotification_sync(v3, 0);
  antenna::Service::Internal::stopTxPowerCapping_sync(v3);
  operator delete(v2);
  v4 = *(a1 + 2);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void sub_29754F108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::startService(void)::$_0>(antenna::Service::Internal::startService(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::startService(void)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::startService(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  antenna::Service::Internal::setupTxPower_sync(**a1);
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

void sub_29754F1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::enterLowPower(void)::$_0>(antenna::Service::Internal::enterLowPower(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::enterLowPower(void)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::enterLowPower(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_297476000, v4, OS_LOG_TYPE_DEBUG, "#D Enter Low Power ! ", buf, 2u);
  }

  *(v3 + 83) = 1;
  antenna::Service::Internal::enableTxPowerCappingNotification_sync(v3, 0);
  antenna::Service::Internal::stopTxPowerCapping_sync(v3);
  operator delete(v2);
  v5 = a1[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_29754F2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::exitLowPower(void)::$_0>(antenna::Service::Internal::exitLowPower(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::exitLowPower(void)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::exitLowPower(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_297476000, v4, OS_LOG_TYPE_DEBUG, "#D EXIT Low Power ! ", buf, 2u);
  }

  *(v3 + 83) = 0;
  antenna::Service::Internal::enableTxPowerCappingNotification_sync(v3, 1);
  antenna::Service::Internal::sendAccessoryStatus_sync(v3);
  operator delete(v2);
  v5 = a1[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_29754F404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void dispatch::block<void({block_pointer})(xpc::dict)>::operator()<xpc::dict const&>(uint64_t *a1, void **a2)
{
  v2 = *a1;
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

  (*(v2 + 16))(v2, &object);
  xpc_release(object);
}

xpc_object_t __copy_helper_block_e8_32c53_ZTSN8dispatch5blockIU13block_pointerFvN3xpc4dictEEEE40c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = *(a2 + 40);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c53_ZTSN8dispatch5blockIU13block_pointerFvN3xpc4dictEEEE40c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<antenna::Service::Internal>::execute_wrapped<antenna::Service::Internal::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0>(antenna::Service::Internal::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::Service::Internal::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0,dispatch_queue_s *::default_delete<antenna::Service::Internal::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0>>)::{lambda(void *)#1}::__invoke(int **a1)
{
  v57 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  v54 = 0xAAAAAAAAAAAAAAAALL;
  antenna::Service::Internal::createTransmitStateDict_sync(v1[2], v1[3], &v54);
  v3 = v54;
  if (MEMORY[0x29C272BA0](v54) == MEMORY[0x29EDCAA00])
  {
    if (v3)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }

    v5 = *(v2 + 17);
    *(v2 + 17) = v4;
    xpc_release(v5);
    if (v3)
    {
      xpc_retain(v3);
      v6 = v3;
      v7 = *(v2 + 5);
      if (v7)
      {
LABEL_7:
        v8 = _Block_copy(v7);
        goto LABEL_10;
      }
    }

    else
    {
      v6 = xpc_null_create();
      v7 = *(v2 + 5);
      if (v7)
      {
        goto LABEL_7;
      }
    }

    v8 = 0;
LABEL_10:
    v9 = *(v2 + 6);
    *&block = MEMORY[0x29EDCA5F8];
    *(&block + 1) = 1174405120;
    *&v44 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc4dictEEEclIJS2_EEEvDpT__block_invoke;
    *(&v44 + 1) = &__block_descriptor_tmp_97;
    if (v8)
    {
      object[0] = _Block_copy(v8);
      object[1] = v6;
      if (v6)
      {
LABEL_12:
        xpc_retain(v6);
        goto LABEL_15;
      }
    }

    else
    {
      object[0] = 0;
      object[1] = v6;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    object[1] = xpc_null_create();
LABEL_15:
    dispatch_async(v9, &block);
    xpc_release(object[1]);
    object[1] = 0;
    if (object[0])
    {
      _Block_release(object[0]);
    }

    if (v8)
    {
      _Block_release(v8);
    }

    xpc_release(v6);
    memset(__s1, 170, sizeof(__s1));
    value = xpc_dictionary_get_value(v3, *MEMORY[0x29EDBF2A0]);
    *&block = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *&block = xpc_null_create();
    }

    xpc::dyn_cast_or_default(__s1, &block, "", v11);
    xpc_release(block);
    memset(v52, 170, sizeof(v52));
    v12 = xpc_dictionary_get_value(v3, *MEMORY[0x29EDBF488]);
    *&block = v12;
    if (v12)
    {
      xpc_retain(v12);
    }

    else
    {
      *&block = xpc_null_create();
    }

    xpc::dyn_cast_or_default(v52, &block, "", v13);
    xpc_release(block);
    v14 = *MEMORY[0x29EDBF668];
    v15 = strlen(*MEMORY[0x29EDBF668]);
    v16 = SHIBYTE(__s1[2]);
    if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
    {
      if (v15 == __s1[1])
      {
        if (v15 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(__s1[0], v14, v15))
        {
          goto LABEL_42;
        }
      }
    }

    else if (v15 == SHIBYTE(__s1[2]) && !memcmp(__s1, v14, v15))
    {
LABEL_42:
      v20 = *(v2 + 4);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(block) = 0;
        _os_log_debug_impl(&dword_297476000, v20, OS_LOG_TYPE_DEBUG, "#D Tx Started", &block, 2u);
      }

      antenna::Service::Internal::startTxPowerCapping_sync(v2);
      goto LABEL_45;
    }

    v17 = *MEMORY[0x29EDBF308];
    v18 = strlen(*MEMORY[0x29EDBF308]);
    if ((v16 & 0x80000000) != 0)
    {
      if (v18 != __s1[1])
      {
        goto LABEL_45;
      }

      if (v18 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(__s1[0], v17, v18))
      {
LABEL_45:
        v51 = 0xAAAAAAAAAAAAAAAALL;
        *&v21 = 0xAAAAAAAAAAAAAAAALL;
        *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v50[7] = v21;
        v50[8] = v21;
        v50[5] = v21;
        v50[6] = v21;
        v50[3] = v21;
        v50[4] = v21;
        v50[1] = v21;
        v50[2] = v21;
        v49 = v21;
        v50[0] = v21;
        *__p = v21;
        v48 = v21;
        *object = v21;
        v46 = v21;
        block = v21;
        v44 = v21;
        std::ostringstream::basic_ostringstream[abi:ne200100](&block);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&block, "Transmit State: ", 16);
        if (__s1[2] >= 0)
        {
          v23 = __s1;
        }

        else
        {
          v23 = __s1[0];
        }

        if (__s1[2] >= 0)
        {
          v24 = HIBYTE(__s1[2]);
        }

        else
        {
          v24 = __s1[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
        v25 = HIBYTE(v52[2]);
        if (v52[2] < 0)
        {
          v25 = v52[1];
        }

        if (v25)
        {
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&block, " (", 2);
          if (v52[2] >= 0)
          {
            v27 = v52;
          }

          else
          {
            v27 = v52[0];
          }

          if (v52[2] >= 0)
          {
            v28 = HIBYTE(v52[2]);
          }

          else
          {
            v28 = v52[1];
          }

          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ")", 1);
        }

        v30 = *(v2 + 4);
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
LABEL_80:
          *&block = *MEMORY[0x29EDC9538];
          *(&block + *(block - 24)) = *(MEMORY[0x29EDC9538] + 24);
          *(&block + 1) = MEMORY[0x29EDC9570] + 16;
          if (SHIBYTE(v48) < 0)
          {
            operator delete(__p[1]);
          }

          *(&block + 1) = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(&v44);
          std::ostream::~ostream();
          MEMORY[0x29C271DA0](v50);
          if (SHIBYTE(v52[2]) < 0)
          {
            operator delete(v52[0]);
            if ((SHIBYTE(__s1[2]) & 0x80000000) == 0)
            {
              goto LABEL_84;
            }
          }

          else if ((SHIBYTE(__s1[2]) & 0x80000000) == 0)
          {
LABEL_84:
            v3 = v54;
            goto LABEL_85;
          }

          operator delete(__s1[0]);
          goto LABEL_84;
        }

        if ((BYTE8(v49) & 0x10) != 0)
        {
          v33 = v49;
          if (v49 < *(&v46 + 1))
          {
            *&v49 = *(&v46 + 1);
            v33 = *(&v46 + 1);
          }

          v34 = v46;
          v31 = v33 - v46;
          if ((v33 - v46) >= 0x7FFFFFFFFFFFFFF8)
          {
            goto LABEL_94;
          }
        }

        else
        {
          if ((BYTE8(v49) & 8) == 0)
          {
            v31 = 0;
            HIBYTE(v42) = 0;
            v32 = __dst;
            goto LABEL_76;
          }

          v34 = *(&v44 + 1);
          v31 = object[1] - *(&v44 + 1);
          if (object[1] - *(&v44 + 1) >= 0x7FFFFFFFFFFFFFF8)
          {
LABEL_94:
            std::string::__throw_length_error[abi:ne200100]();
          }
        }

        if (v31 >= 0x17)
        {
          if ((v31 | 7) == 0x17)
          {
            v35 = 25;
          }

          else
          {
            v35 = (v31 | 7) + 1;
          }

          v32 = operator new(v35);
          __dst[1] = v31;
          v42 = v35 | 0x8000000000000000;
          __dst[0] = v32;
        }

        else
        {
          HIBYTE(v42) = v31;
          v32 = __dst;
          if (!v31)
          {
            goto LABEL_76;
          }
        }

        memmove(v32, v34, v31);
LABEL_76:
        *(v32 + v31) = 0;
        v36 = __dst;
        if (v42 < 0)
        {
          v36 = __dst[0];
        }

        *buf = 136315138;
        v56 = v36;
        _os_log_impl(&dword_297476000, v30, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(__dst[0]);
        }

        goto LABEL_80;
      }
    }

    else if (v18 != v16 || memcmp(__s1, v17, v18))
    {
      goto LABEL_45;
    }

    v19 = *(v2 + 4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(block) = 0;
      _os_log_debug_impl(&dword_297476000, v19, OS_LOG_TYPE_DEBUG, "#D Tx Stopped", &block, 2u);
    }

    antenna::Service::Internal::stopTxPowerCapping_sync(v2);
    goto LABEL_45;
  }

LABEL_85:
  xpc_release(v3);
  operator delete(v1);
  v37 = a1;
  if (a1)
  {
    v38 = a1[2];
    if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v38->__on_zero_shared)(v38);
      std::__shared_weak_count::__release_weak(v38);
      v37 = a1;
    }

    operator delete(v37);
  }

  v39 = *MEMORY[0x29EDCA608];
}