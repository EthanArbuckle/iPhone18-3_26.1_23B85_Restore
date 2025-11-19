void sub_296F63928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  qmi::Client::SendProxy::~SendProxy(&a38);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(v39 + 56);
  v42 = *(v40 - 176);
  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  std::__shared_weak_count::__release_weak(v38);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&a10);
  qmi::MutableMessageBase::~MutableMessageBase(&a12);
  qmi::MutableMessageBase::~MutableMessageBase(&a33);
  _Unwind_Resume(a1);
}

void ___ZN7antenna16QMICommandDriver19txPowerCapping_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 32);
  value = xpc_dictionary_get_value(**(a1 + 40), *MEMORY[0x29EDC90D0]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v5 = xpc::dyn_cast_or_default();
  xpc_release(object);
  v7 = (v3 + 168);
  v6 = *(v3 + 168);
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 28);
        if (v9 <= v5)
        {
          break;
        }

        v6 = *v8;
        v7 = v8;
        if (!*v8)
        {
          goto LABEL_11;
        }
      }

      if (v9 >= v5)
      {
        break;
      }

      v6 = v8[1];
      if (!v6)
      {
        v7 = v8 + 1;
        goto LABEL_11;
      }
    }
  }

  else
  {
    v8 = (v3 + 168);
LABEL_11:
    v10 = v8;
    v8 = operator new(0x28uLL);
    *(v8 + 7) = v5;
    *(v8 + 8) = 0;
    *v8 = 0;
    v8[1] = 0;
    v8[2] = v10;
    *v7 = v8;
    v11 = **(v3 + 160);
    if (v11)
    {
      *(v3 + 160) = v11;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v3 + 168), v8);
    ++*(v3 + 176);
  }

  *a2 = *(v8 + 8);
}

void ___ZN7antenna16QMICommandDriver19txPowerCapping_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2(uint64_t a1, _BYTE *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC9100]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void antenna::QMICommandDriver::txPowerConfiguration_sync(void *a1, xpc_object_t *a2, uint64_t a3)
{
  v165 = *MEMORY[0x29EDCA608];
  v6 = *MEMORY[0x29EDC9060];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9060]))
  {
    value = xpc_dictionary_get_value(*a2, v6);
    block[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      block[0] = xpc_null_create();
    }

    v11 = xpc::dyn_cast_or_default();
    xpc_release(block[0]);
    v123 = a3;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v147 = v12;
    v148 = v12;
    qmi::MutableMessageBase::MutableMessageBase(&v147);
    v143[0] = MEMORY[0x29EDCA5F8];
    v143[1] = 0x40000000;
    v13 = ___ZN7antenna16QMICommandDriver25txPowerConfiguration_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v144 = ___ZN7antenna16QMICommandDriver25txPowerConfiguration_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v145 = &__block_descriptor_tmp_53_0;
    v146 = v11;
    v14 = *(&v147 + 1);
    v15 = v148;
    v16 = *(&v147 + 1);
    if (*(&v147 + 1) != v148)
    {
      v16 = *(&v147 + 1);
      while (*(*v16 + 8) != 1)
      {
        if (++v16 == v148)
        {
          goto LABEL_16;
        }
      }
    }

    if (v16 == v148)
    {
LABEL_16:
      v20 = operator new(0x10uLL);
      v20[8] = 1;
      *v20 = &unk_2A1E1B6F8;
      *(v20 + 5) = 0;
      v19 = v20 + 10;
      if (v15 >= *(&v148 + 1))
      {
        v22 = v15 - v14;
        v23 = (v15 - v14) >> 3;
        v24 = v23 + 1;
        if ((v23 + 1) >> 61)
        {
          goto LABEL_205;
        }

        v25 = *(&v148 + 1) - v14;
        if ((*(&v148 + 1) - v14) >> 2 > v24)
        {
          v24 = v25 >> 2;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFF8)
        {
          v26 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        v122 = v20 + 10;
        if (v26)
        {
          if (v26 >> 61)
          {
            goto LABEL_206;
          }

          v27 = v20;
          v28 = operator new(8 * v26);
          v20 = v27;
        }

        else
        {
          v28 = 0;
        }

        v31 = &v28[8 * v23];
        *v31 = v20;
        v21 = v31 + 8;
        memcpy(v28, v14, v22);
        *(&v147 + 1) = v28;
        *&v148 = v21;
        *(&v148 + 1) = &v28[8 * v26];
        if (v14)
        {
          operator delete(v14);
        }

        v19 = v122;
      }

      else
      {
        *v15 = v20;
        v21 = v15 + 8;
      }

      *&v148 = v21;
      v13 = v144;
    }

    else
    {
      v17 = ***v16;
      if (!v18)
      {
        goto LABEL_203;
      }

      v19 = v18 + 10;
    }

    v13(v143, v19);
    switch(v11)
    {
      case 1:
        if (!xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC90D8]))
        {
          goto LABEL_174;
        }

        v131[0] = MEMORY[0x29EDCA5F8];
        v131[1] = 0x40000000;
        v32 = ___ZN7antenna16QMICommandDriver25txPowerConfiguration_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_4;
        v132 = ___ZN7antenna16QMICommandDriver25txPowerConfiguration_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_4;
        v133 = &__block_descriptor_tmp_59_1;
        v134 = a2;
        v40 = *(&v147 + 1);
        v41 = v148;
        v42 = *(&v147 + 1);
        if (*(&v147 + 1) != v148)
        {
          v42 = *(&v147 + 1);
          while (*(*v42 + 8) != 16)
          {
            if (++v42 == v148)
            {
              goto LABEL_88;
            }
          }
        }

        if (v42 != v148)
        {
          v48 = ***v42;
          if (v49)
          {
            v50 = v49 + 10;
            v51 = v131;
LABEL_173:
            v32(v51, v50);
LABEL_174:
            qmi::MutableMessageBase::MutableMessageBase();
            v113 = *v123;
            if (*v123)
            {
              v113 = _Block_copy(v113);
            }

            v114 = *(v123 + 8);
            aBlock = v113;
            object = v114;
            if (v114)
            {
              dispatch_retain(v114);
            }

            v115 = a1[2];
            if (!v115 || (v116 = a1[1], (v117 = std::__shared_weak_count::lock(v115)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v118 = v117;
            p_shared_weak_owners = &v117->__shared_weak_owners_;
            atomic_fetch_add_explicit(&v117->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v117->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v117->__on_zero_shared)(v117);
              std::__shared_weak_count::__release_weak(v118);
            }

            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 1174405120;
            block[2] = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm13TxPwrConfigV37RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
            v155 = &__block_descriptor_tmp_135_1;
            v156 = a1;
            v157 = v116;
            v158 = v118;
            atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
            if (aBlock)
            {
              v120 = object;
              v159 = _Block_copy(aBlock);
              v160 = object;
              if (!object)
              {
LABEL_185:
                v149 = a1 + 16;
                v150 = QMIServiceMsg::create();
                v151 = 25000;
                v152 = 0;
                v153 = 0;
                *&buf = MEMORY[0x29EDCA5F8];
                *(&buf + 1) = 0x40000000;
                v162 = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
                v163 = &unk_29EE5F878;
                v164 = block;
                v153 = _Block_copy(&buf);
                qmi::Client::send();
                if (v153)
                {
                  _Block_release(v153);
                }

                if (v160)
                {
                  dispatch_release(v160);
                }

                if (v159)
                {
                  _Block_release(v159);
                }

                if (v158)
                {
                  std::__shared_weak_count::__release_weak(v158);
                }

                std::__shared_weak_count::__release_weak(v118);
                if (v120)
                {
                  dispatch_release(v120);
                }

                if (aBlock)
                {
                  _Block_release(aBlock);
                }

                qmi::MutableMessageBase::~MutableMessageBase(v126);
LABEL_198:
                qmi::MutableMessageBase::~MutableMessageBase(&v147);
                goto LABEL_199;
              }
            }

            else
            {
              v120 = object;
              v159 = 0;
              v160 = object;
              if (!object)
              {
                goto LABEL_185;
              }
            }

            dispatch_retain(v120);
            goto LABEL_185;
          }

LABEL_203:
          __cxa_bad_cast();
        }

LABEL_88:
        v58 = operator new(0x10uLL);
        v58[8] = 16;
        *v58 = &unk_2A1E1B7E8;
        *(v58 + 5) = 0;
        v59 = v58 + 10;
        if (v41 >= *(&v148 + 1))
        {
          v72 = v41 - v40;
          v73 = (v41 - v40) >> 3;
          v74 = v73 + 1;
          if ((v73 + 1) >> 61)
          {
            goto LABEL_205;
          }

          v75 = *(&v148 + 1) - v40;
          if ((*(&v148 + 1) - v40) >> 2 > v74)
          {
            v74 = v75 >> 2;
          }

          if (v75 >= 0x7FFFFFFFFFFFFFF8)
          {
            v76 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v76 = v74;
          }

          if (v76)
          {
            if (v76 >> 61)
            {
              goto LABEL_206;
            }

            v77 = v58;
            v78 = v58 + 10;
            v79 = operator new(8 * v76);
            v58 = v77;
          }

          else
          {
            v78 = v58 + 10;
            v79 = 0;
          }

          v110 = &v79[8 * v73];
          *v110 = v58;
          v60 = v110 + 8;
          memcpy(v79, v40, v72);
          *(&v147 + 1) = v79;
          *&v148 = v60;
          *(&v148 + 1) = &v79[8 * v76];
          if (v40)
          {
            operator delete(v40);
          }

          v59 = v78;
        }

        else
        {
          *v41 = v58;
          v60 = v41 + 8;
        }

        *&v148 = v60;
        v132(v131, v59);
        goto LABEL_174;
      case 2:
        if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC90E8]))
        {
          v139[0] = MEMORY[0x29EDCA5F8];
          v139[1] = 0x40000000;
          v36 = ___ZN7antenna16QMICommandDriver25txPowerConfiguration_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2;
          v140 = ___ZN7antenna16QMICommandDriver25txPowerConfiguration_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2;
          v141 = &__block_descriptor_tmp_55;
          v142 = a2;
          v37 = *(&v147 + 1);
          v38 = v148;
          v39 = *(&v147 + 1);
          if (*(&v147 + 1) != v148)
          {
            v39 = *(&v147 + 1);
            while (*(*v39 + 8) != 23)
            {
              if (++v39 == v148)
              {
                goto LABEL_86;
              }
            }
          }

          if (v39 == v148)
          {
LABEL_86:
            v56 = operator new(0x10uLL);
            v56[8] = 23;
            *v56 = &unk_2A1E1B748;
            *(v56 + 5) = 0;
            v47 = v56 + 10;
            if (v38 >= *(&v148 + 1))
            {
              v64 = v38 - v37;
              v65 = (v38 - v37) >> 3;
              v66 = v65 + 1;
              if ((v65 + 1) >> 61)
              {
                goto LABEL_205;
              }

              v67 = *(&v148 + 1) - v37;
              if ((*(&v148 + 1) - v37) >> 2 > v66)
              {
                v66 = v67 >> 2;
              }

              if (v67 >= 0x7FFFFFFFFFFFFFF8)
              {
                v68 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v68 = v66;
              }

              if (v68)
              {
                if (v68 >> 61)
                {
                  goto LABEL_206;
                }

                v69 = v56;
                v70 = v56 + 10;
                v71 = operator new(8 * v68);
                v56 = v69;
              }

              else
              {
                v70 = v56 + 10;
                v71 = 0;
              }

              v94 = &v71[8 * v65];
              *v94 = v56;
              v57 = v94 + 8;
              memcpy(v71, v37, v64);
              *(&v147 + 1) = v71;
              *&v148 = v57;
              *(&v148 + 1) = &v71[8 * v68];
              if (v37)
              {
                operator delete(v37);
              }

              v47 = v70;
            }

            else
            {
              *v38 = v56;
              v57 = v38 + 8;
            }

            *&v148 = v57;
            v36 = v140;
          }

          else
          {
            v45 = ***v39;
            if (!v46)
            {
              goto LABEL_203;
            }

            v47 = v46 + 10;
          }

          v36(v139, v47);
        }

        if (!xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC90E0]))
        {
          goto LABEL_174;
        }

        v135[0] = MEMORY[0x29EDCA5F8];
        v135[1] = 0x40000000;
        v32 = ___ZN7antenna16QMICommandDriver25txPowerConfiguration_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_3;
        v136 = ___ZN7antenna16QMICommandDriver25txPowerConfiguration_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_3;
        v137 = &__block_descriptor_tmp_57;
        v138 = a2;
        v95 = *(&v147 + 1);
        v96 = v148;
        v97 = *(&v147 + 1);
        if (*(&v147 + 1) != v148)
        {
          v97 = *(&v147 + 1);
          while (*(*v97 + 8) != 24)
          {
            if (++v97 == v148)
            {
              goto LABEL_147;
            }
          }
        }

        if (v97 != v148)
        {
          v98 = ***v97;
          if (v99)
          {
            v50 = v99 + 10;
            v51 = v135;
            goto LABEL_173;
          }

          goto LABEL_203;
        }

LABEL_147:
        v100 = operator new(0x10uLL);
        v100[8] = 24;
        *v100 = &unk_2A1E1B798;
        *(v100 + 5) = 0;
        v50 = v100 + 10;
        if (v96 >= *(&v148 + 1))
        {
          v102 = v96 - v95;
          v103 = (v96 - v95) >> 3;
          v104 = v103 + 1;
          if ((v103 + 1) >> 61)
          {
            goto LABEL_205;
          }

          v105 = *(&v148 + 1) - v95;
          if ((*(&v148 + 1) - v95) >> 2 > v104)
          {
            v104 = v105 >> 2;
          }

          if (v105 >= 0x7FFFFFFFFFFFFFF8)
          {
            v106 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v106 = v104;
          }

          if (v106)
          {
            if (v106 >> 61)
            {
              goto LABEL_206;
            }

            v107 = v100;
            v108 = v100 + 10;
            v109 = operator new(8 * v106);
            v100 = v107;
          }

          else
          {
            v108 = v100 + 10;
            v109 = 0;
          }

          v112 = &v109[8 * v103];
          *v112 = v100;
          v101 = v112 + 8;
          memcpy(v109, v95, v102);
          *(&v147 + 1) = v109;
          *&v148 = v101;
          *(&v148 + 1) = &v109[8 * v106];
          if (v95)
          {
            operator delete(v95);
          }

          v50 = v108;
        }

        else
        {
          *v96 = v100;
          v101 = v96 + 8;
        }

        *&v148 = v101;
        v51 = v135;
        v32 = v136;
        goto LABEL_173;
      case 3:
        if (!xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC90D8]))
        {
          goto LABEL_174;
        }

        v127[0] = MEMORY[0x29EDCA5F8];
        v127[1] = 0x40000000;
        v32 = ___ZN7antenna16QMICommandDriver25txPowerConfiguration_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_5;
        v128 = ___ZN7antenna16QMICommandDriver25txPowerConfiguration_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_5;
        v129 = &__block_descriptor_tmp_61_4;
        v130 = a2;
        v33 = *(&v147 + 1);
        v34 = v148;
        v35 = *(&v147 + 1);
        if (*(&v147 + 1) != v148)
        {
          v35 = *(&v147 + 1);
          while (*(*v35 + 8) != 25)
          {
            if (++v35 == v148)
            {
              goto LABEL_90;
            }
          }
        }

        if (v35 != v148)
        {
          v52 = ***v35;
          if (v53)
          {
            v50 = v53 + 10;
            v51 = v127;
            goto LABEL_173;
          }

          goto LABEL_203;
        }

LABEL_90:
        v61 = operator new(0x10uLL);
        v61[8] = 25;
        *v61 = &unk_2A1E1B838;
        *(v61 + 5) = 0;
        v62 = v61 + 10;
        if (v34 < *(&v148 + 1))
        {
          *v34 = v61;
          v63 = v34 + 8;
LABEL_167:
          *&v148 = v63;
          v128(v127, v62);
          goto LABEL_174;
        }

        v80 = v34 - v33;
        v81 = (v34 - v33) >> 3;
        v82 = v81 + 1;
        if (!((v81 + 1) >> 61))
        {
          v83 = *(&v148 + 1) - v33;
          if ((*(&v148 + 1) - v33) >> 2 > v82)
          {
            v82 = v83 >> 2;
          }

          if (v83 >= 0x7FFFFFFFFFFFFFF8)
          {
            v84 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v84 = v82;
          }

          if (!v84)
          {
            v86 = v61 + 10;
            v87 = 0;
            goto LABEL_164;
          }

          if (!(v84 >> 61))
          {
            v85 = v61;
            v86 = v61 + 10;
            v87 = operator new(8 * v84);
            v61 = v85;
LABEL_164:
            v111 = &v87[8 * v81];
            *v111 = v61;
            v63 = v111 + 8;
            memcpy(v87, v33, v80);
            *(&v147 + 1) = v87;
            *&v148 = v63;
            *(&v148 + 1) = &v87[8 * v84];
            if (v33)
            {
              operator delete(v33);
            }

            v62 = v86;
            goto LABEL_167;
          }

LABEL_206:
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

LABEL_205:
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v43 = xpc_null_create();
    if (*v123)
    {
      v44 = _Block_copy(*v123);
    }

    else
    {
      v44 = 0;
    }

    v54 = *(v123 + 8);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
    v155 = &__block_descriptor_tmp_118;
    if (v44)
    {
      v55 = _Block_copy(v44);
      LOBYTE(v158) = 0;
      v156 = v55;
      v157 = v43;
      if (v43)
      {
LABEL_78:
        xpc_retain(v43);
LABEL_81:
        dispatch_async(v54, block);
        xpc_release(v157);
        v157 = 0;
        if (v156)
        {
          _Block_release(v156);
        }

        if (v44)
        {
          _Block_release(v44);
        }

        xpc_release(v43);
        goto LABEL_198;
      }
    }

    else
    {
      LOBYTE(v158) = 0;
      v156 = 0;
      v157 = v43;
      if (v43)
      {
        goto LABEL_78;
      }
    }

    v157 = xpc_null_create();
    goto LABEL_81;
  }

  v8 = a1[5];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v88 = MEMORY[0x29C269360](*a2);
    memset(block, 170, sizeof(block));
    v89 = strlen(v88);
    if (v89 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v90 = v89;
    if (v89 >= 0x17)
    {
      if ((v89 | 7) == 0x17)
      {
        v92 = 25;
      }

      else
      {
        v92 = (v89 | 7) + 1;
      }

      v91 = operator new(v92);
      block[1] = v90;
      block[2] = (v92 | 0x8000000000000000);
      block[0] = v91;
    }

    else
    {
      HIBYTE(block[2]) = v89;
      v91 = block;
      if (!v89)
      {
        goto LABEL_128;
      }
    }

    memcpy(v91, v88, v90);
LABEL_128:
    *(v90 + v91) = 0;
    free(v88);
    v93 = block;
    if (SHIBYTE(block[2]) < 0)
    {
      v93 = block[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v93;
    _os_log_error_impl(&dword_296ECF000, v8, OS_LOG_TYPE_ERROR, "Missing mandatory TLV. args: %s", &buf, 0xCu);
    if (SHIBYTE(block[2]) < 0)
    {
      operator delete(block[0]);
    }
  }

  v9 = xpc_null_create();
  if (*a3)
  {
    v10 = _Block_copy(*a3);
  }

  else
  {
    v10 = 0;
  }

  v29 = *(a3 + 8);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  v155 = &__block_descriptor_tmp_118;
  if (!v10)
  {
    LOBYTE(v158) = 0;
    v156 = 0;
    v157 = v9;
    if (v9)
    {
      goto LABEL_30;
    }

LABEL_32:
    v157 = xpc_null_create();
    goto LABEL_33;
  }

  v30 = _Block_copy(v10);
  LOBYTE(v158) = 0;
  v156 = v30;
  v157 = v9;
  if (!v9)
  {
    goto LABEL_32;
  }

LABEL_30:
  xpc_retain(v9);
LABEL_33:
  dispatch_async(v29, block);
  xpc_release(v157);
  v157 = 0;
  if (v156)
  {
    _Block_release(v156);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  xpc_release(v9);
LABEL_199:
  v121 = *MEMORY[0x29EDCA608];
}

void sub_296F64B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN7antenna16QMICommandDriver25txPowerConfiguration_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC90E8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void ___ZN7antenna16QMICommandDriver25txPowerConfiguration_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_3(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC90E0]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void ___ZN7antenna16QMICommandDriver25txPowerConfiguration_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_4(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC90D8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void ___ZN7antenna16QMICommandDriver25txPowerConfiguration_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_5(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC90D8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

uint64_t antenna::QMICommandDriver::getAccessoryType(antenna::QMICommandDriver *this, int a2)
{
  v46 = *MEMORY[0x29EDCA608];
  v4 = *(this + 5);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if ((a2 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    v9 = (this + 56);
    v8 = *(this + 7);
    if (v8)
    {
      while (1)
      {
        while (1)
        {
          v10 = v8;
          v11 = *(v8 + 7);
          if (v11 < 3)
          {
            break;
          }

          v8 = *v10;
          v9 = v10;
          if (!*v10)
          {
            goto LABEL_18;
          }
        }

        if (v11 == 2)
        {
          break;
        }

        v8 = v10[1];
        if (!v8)
        {
          v9 = v10 + 1;
          goto LABEL_18;
        }
      }

      v5 = *(v10 + 8);
      if ((a2 & 4) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v10 = (this + 56);
LABEL_18:
      v12 = operator new(0x28uLL);
      *(v12 + 28) = 2;
      *v12 = 0;
      v12[1] = 0;
      v12[2] = v10;
      *v9 = v12;
      v13 = **(this + 6);
      if (v13)
      {
        *(this + 6) = v13;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v12);
      ++*(this + 8);
      v5 = *(v12 + 8);
      if ((a2 & 4) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_4:
    if ((a2 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_35:
    v21 = (this + 56);
    v20 = *(this + 7);
    if (v20)
    {
      while (1)
      {
        while (1)
        {
          v22 = v20;
          v23 = *(v20 + 7);
          if (v23 < 9)
          {
            break;
          }

          v20 = *v22;
          v21 = v22;
          if (!*v22)
          {
            goto LABEL_42;
          }
        }

        if (v23 == 8)
        {
          break;
        }

        v20 = v22[1];
        if (!v20)
        {
          v21 = v22 + 1;
          goto LABEL_42;
        }
      }

      v5 = *(v22 + 8) | v5;
      if ((a2 & 0x10) != 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v22 = (this + 56);
LABEL_42:
      v24 = operator new(0x28uLL);
      *(v24 + 28) = 8;
      *v24 = 0;
      v24[1] = 0;
      v24[2] = v22;
      *v21 = v24;
      v25 = **(this + 6);
      if (v25)
      {
        *(this + 6) = v25;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v24);
      ++*(this + 8);
      v5 = *(v24 + 8) | v5;
      if ((a2 & 0x10) != 0)
      {
        goto LABEL_47;
      }
    }

LABEL_6:
    if ((a2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_59:
    v33 = (this + 56);
    v32 = *(this + 7);
    if (v32)
    {
      while (1)
      {
        while (1)
        {
          v34 = v32;
          v35 = *(v32 + 7);
          if (v35 < 0x21)
          {
            break;
          }

          v32 = *v34;
          v33 = v34;
          if (!*v34)
          {
            goto LABEL_66;
          }
        }

        if (v35 == 32)
        {
          break;
        }

        v32 = v34[1];
        if (!v32)
        {
          v33 = v34 + 1;
          goto LABEL_66;
        }
      }

      v5 = *(v34 + 8) | v5;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v34 = (this + 56);
LABEL_66:
      v36 = operator new(0x28uLL);
      *(v36 + 28) = 32;
      *v36 = 0;
      v36[1] = 0;
      v36[2] = v34;
      *v33 = v36;
      v37 = **(this + 6);
      if (v37)
      {
        *(this + 6) = v37;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v36);
      ++*(this + 8);
      v5 = *(v36 + 8) | v5;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_71;
  }

  v45[0] = 67109120;
  v45[1] = a2;
  _os_log_debug_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEBUG, "#D Telephony IOKIT value: 0x%x\n", v45, 8u);
  if ((a2 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  v5 = 0;
  if ((a2 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_23:
  v15 = (this + 56);
  v14 = *(this + 7);
  if (v14)
  {
    while (1)
    {
      while (1)
      {
        v16 = v14;
        v17 = *(v14 + 7);
        if (v17 < 5)
        {
          break;
        }

        v14 = *v16;
        v15 = v16;
        if (!*v16)
        {
          goto LABEL_30;
        }
      }

      if (v17 == 4)
      {
        break;
      }

      v14 = v16[1];
      if (!v14)
      {
        v15 = v16 + 1;
        goto LABEL_30;
      }
    }

    v5 = *(v16 + 8) | v5;
    if ((a2 & 8) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v16 = (this + 56);
LABEL_30:
    v18 = operator new(0x28uLL);
    *(v18 + 28) = 4;
    *v18 = 0;
    v18[1] = 0;
    v18[2] = v16;
    *v15 = v18;
    v19 = **(this + 6);
    if (v19)
    {
      *(this + 6) = v19;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v18);
    ++*(this + 8);
    v5 = *(v18 + 8) | v5;
    if ((a2 & 8) != 0)
    {
      goto LABEL_35;
    }
  }

LABEL_5:
  if ((a2 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_47:
  v27 = (this + 56);
  v26 = *(this + 7);
  if (v26)
  {
    while (1)
    {
      while (1)
      {
        v28 = v26;
        v29 = *(v26 + 7);
        if (v29 < 0x11)
        {
          break;
        }

        v26 = *v28;
        v27 = v28;
        if (!*v28)
        {
          goto LABEL_54;
        }
      }

      if (v29 == 16)
      {
        break;
      }

      v26 = v28[1];
      if (!v26)
      {
        v27 = v28 + 1;
        goto LABEL_54;
      }
    }

    v5 = *(v28 + 8) | v5;
    if ((a2 & 0x20) != 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v28 = (this + 56);
LABEL_54:
    v30 = operator new(0x28uLL);
    *(v30 + 28) = 16;
    *v30 = 0;
    v30[1] = 0;
    v30[2] = v28;
    *v27 = v30;
    v31 = **(this + 6);
    if (v31)
    {
      *(this + 6) = v31;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v30);
    ++*(this + 8);
    v5 = *(v30 + 8) | v5;
    if ((a2 & 0x20) != 0)
    {
      goto LABEL_59;
    }
  }

LABEL_7:
  if (v5)
  {
LABEL_8:
    v6 = *MEMORY[0x29EDCA608];
    return v5;
  }

LABEL_71:
  v39 = (this + 56);
  v38 = *(this + 7);
  if (v38)
  {
    while (1)
    {
      while (1)
      {
        v40 = v38;
        v41 = *(v38 + 7);
        if (v41 < 2)
        {
          break;
        }

        v38 = *v40;
        v39 = v40;
        if (!*v40)
        {
          goto LABEL_78;
        }
      }

      if (v41)
      {
        break;
      }

      v38 = v40[1];
      if (!v38)
      {
        v39 = v40 + 1;
        goto LABEL_78;
      }
    }

    v42 = v40;
  }

  else
  {
    v40 = (this + 56);
LABEL_78:
    v42 = operator new(0x28uLL);
    *(v42 + 28) = 1;
    *v42 = 0;
    v42[1] = 0;
    v42[2] = v40;
    *v39 = v42;
    v43 = **(this + 6);
    if (v43)
    {
      *(this + 6) = v43;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v42);
    ++*(this + 8);
  }

  v5 = *(v42 + 8);
  v44 = *MEMORY[0x29EDCA608];
  return v5;
}

void antenna::QMICommandDriver::e75AccessoryStatusRF_sync(antenna::QMICommandDriver *a1, xpc_object_t *a2, uint64_t a3)
{
  v88 = *MEMORY[0x29EDCA608];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v71 = v5;
  v72 = v5;
  qmi::MutableMessageBase::MutableMessageBase(&v71);
  v66[0] = MEMORY[0x29EDCA5F8];
  v66[1] = 0x40000000;
  v6 = ___ZN7antenna16QMICommandDriver25e75AccessoryStatusRF_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
  v67 = ___ZN7antenna16QMICommandDriver25e75AccessoryStatusRF_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
  v68 = &__block_descriptor_tmp_65;
  v69 = a1;
  v70 = a2;
  v7 = *(&v71 + 1);
  v8 = v72;
  v9 = *(&v71 + 1);
  if (*(&v71 + 1) != v72)
  {
    v9 = *(&v71 + 1);
    while (*(*v9 + 8) != 1)
    {
      if (++v9 == v72)
      {
        goto LABEL_9;
      }
    }
  }

  if (v9 == v72)
  {
LABEL_9:
    v13 = operator new(0x10uLL);
    v13[8] = 1;
    *v13 = &unk_2A1E1B8B8;
    *(v13 + 5) = 0;
    v12 = v13 + 10;
    if (v8 >= *(&v72 + 1))
    {
      v15 = v8 - v7;
      v16 = (v8 - v7) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v18 = *(&v72 + 1) - v7;
      if ((*(&v72 + 1) - v7) >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v20 = v13;
        v21 = v13 + 10;
        v22 = operator new(8 * v19);
        v13 = v20;
      }

      else
      {
        v21 = v13 + 10;
        v22 = 0;
      }

      v23 = &v22[8 * v16];
      *v23 = v13;
      v14 = v23 + 8;
      memcpy(v22, v7, v15);
      *(&v71 + 1) = v22;
      *&v72 = v14;
      *(&v72 + 1) = &v22[8 * v19];
      if (v7)
      {
        operator delete(v7);
      }

      v12 = v21;
    }

    else
    {
      *v8 = v13;
      v14 = v8 + 8;
    }

    *&v72 = v14;
    v6 = v67;
  }

  else
  {
    v10 = ***v9;
    if (!v11)
    {
      __cxa_bad_cast();
    }

    v12 = v11 + 10;
  }

  v6(v66, v12);
  v24 = *MEMORY[0x29EDC8FE8];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC8FE8]))
  {
    value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9020]);
    *buf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *buf = xpc_null_create();
    }

    v26 = xpc::dyn_cast_or_default();
    xpc_release(*buf);
    if (v26)
    {
      v27 = xpc_dictionary_get_value(*a2, v24);
      *buf = v27;
      if (v27)
      {
        xpc_retain(v27);
      }

      else
      {
        *buf = xpc_null_create();
      }

      v28 = xpc::dyn_cast_or_default();
      AccessoryType = antenna::QMICommandDriver::getAccessoryType(a1, v28);
      xpc_release(*buf);
      v30 = *(a1 + 5);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *&buf[4] = AccessoryType;
        LOWORD(v80) = 1024;
        *(&v80 + 2) = AccessoryType;
        _os_log_debug_impl(&dword_296ECF000, v30, OS_LOG_TYPE_DEBUG, "#D accessoryType for RF: 0x%08x(%d)\n", buf, 0xEu);
      }

      v62[0] = MEMORY[0x29EDCA5F8];
      v62[1] = 0x40000000;
      v31 = ___ZN7antenna16QMICommandDriver25e75AccessoryStatusRF_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_66;
      v63 = ___ZN7antenna16QMICommandDriver25e75AccessoryStatusRF_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_66;
      v64 = &__block_descriptor_tmp_68_1;
      v65 = AccessoryType;
      v32 = *(&v71 + 1);
      v33 = v72;
      v34 = *(&v71 + 1);
      if (*(&v71 + 1) != v72)
      {
        v34 = *(&v71 + 1);
        while (*(*v34 + 8) != 16)
        {
          if (++v34 == v72)
          {
            goto LABEL_43;
          }
        }
      }

      if (v34 == v72)
      {
LABEL_43:
        v38 = operator new(0x10uLL);
        v38[8] = 16;
        *v38 = &unk_2A1E1B908;
        *(v38 + 3) = 0;
        v37 = v38 + 12;
        if (v33 >= *(&v72 + 1))
        {
          v40 = v33 - v32;
          v41 = (v33 - v32) >> 3;
          v42 = v41 + 1;
          if ((v41 + 1) >> 61)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v43 = *(&v72 + 1) - v32;
          if ((*(&v72 + 1) - v32) >> 2 > v42)
          {
            v42 = v43 >> 2;
          }

          if (v43 >= 0x7FFFFFFFFFFFFFF8)
          {
            v44 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v44 = v42;
          }

          if (v44)
          {
            if (v44 >> 61)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v45 = v38;
            v46 = v38 + 12;
            v47 = operator new(8 * v44);
            v38 = v45;
          }

          else
          {
            v46 = v38 + 12;
            v47 = 0;
          }

          v48 = &v47[8 * v41];
          *v48 = v38;
          v39 = v48 + 8;
          memcpy(v47, v32, v40);
          *(&v71 + 1) = v47;
          *&v72 = v39;
          *(&v72 + 1) = &v47[8 * v44];
          if (v32)
          {
            operator delete(v32);
          }

          v37 = v46;
        }

        else
        {
          *v33 = v38;
          v39 = v33 + 8;
        }

        *&v72 = v39;
        v31 = v63;
      }

      else
      {
        v35 = ***v34;
        if (!v36)
        {
          __cxa_bad_cast();
        }

        v37 = v36 + 12;
      }

      v31(v62, v37);
    }
  }

  qmi::MutableMessageBase::MutableMessageBase();
  v49 = *a3;
  if (*a3)
  {
    v49 = _Block_copy(v49);
  }

  v50 = *(a3 + 8);
  aBlock = v49;
  object = v50;
  if (v50)
  {
    dispatch_retain(v50);
  }

  v51 = *(a1 + 2);
  if (!v51 || (v52 = *(a1 + 1), (v53 = std::__shared_weak_count::lock(v51)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v54 = v53;
  p_shared_weak_owners = &v53->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v53->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v53->__on_zero_shared)(v53);
    std::__shared_weak_count::__release_weak(v54);
  }

  *buf = MEMORY[0x29EDCA5F8];
  v80 = 1174405120;
  v81 = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm19AccessoryAttachment7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
  v82 = &__block_descriptor_tmp_139;
  v83 = a1;
  v84 = v52;
  v85 = v54;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (aBlock)
  {
    v56 = object;
    v86 = _Block_copy(aBlock);
    v87 = object;
    if (!object)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  v56 = object;
  v86 = 0;
  v87 = object;
  if (object)
  {
LABEL_70:
    dispatch_retain(v56);
  }

LABEL_71:
  v73 = (a1 + 128);
  v74 = QMIServiceMsg::create();
  v75 = 25000;
  v76 = 0;
  v77 = 0;
  v78[0] = MEMORY[0x29EDCA5F8];
  v78[1] = 0x40000000;
  v78[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
  v78[3] = &unk_29EE5F878;
  v78[4] = buf;
  v77 = _Block_copy(v78);
  qmi::Client::send();
  if (v77)
  {
    _Block_release(v77);
  }

  if (v87)
  {
    dispatch_release(v87);
  }

  if (v86)
  {
    _Block_release(v86);
  }

  if (v85)
  {
    std::__shared_weak_count::__release_weak(v85);
  }

  std::__shared_weak_count::__release_weak(v54);
  if (v56)
  {
    dispatch_release(v56);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v61);
  qmi::MutableMessageBase::~MutableMessageBase(&v71);
  v57 = *MEMORY[0x29EDCA608];
}

void sub_296F65B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN7antenna16QMICommandDriver25e75AccessoryStatusRF_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke(uint64_t a1, _WORD *a2)
{
  object[3] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x29EDC9020];
  value = xpc_dictionary_get_value(**(a1 + 40), *MEMORY[0x29EDC9020]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object[0]);
  v7 = *(v4 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = xpc_dictionary_get_value(**(a1 + 40), v5);
    v12 = v9;
    if (v9)
    {
      xpc_retain(v9);
    }

    else
    {
      v12 = xpc_null_create();
    }

    v10 = xpc::dyn_cast_or_default();
    v11 = "detached";
    if (v10)
    {
      v11 = "attached";
    }

    LODWORD(object[0]) = 136315138;
    *(object + 4) = v11;
    _os_log_debug_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEBUG, "#D accessory for RF: %s", object, 0xCu);
    xpc_release(v12);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_296F65D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void antenna::QMICommandDriver::e75AccessoryStatusARTD_sync(antenna::QMICommandDriver *a1, xpc_object_t *a2, uint64_t a3)
{
  v88 = *MEMORY[0x29EDCA608];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v71 = v5;
  v72 = v5;
  qmi::MutableMessageBase::MutableMessageBase(&v71);
  v66[0] = MEMORY[0x29EDCA5F8];
  v66[1] = 0x40000000;
  v6 = ___ZN7antenna16QMICommandDriver27e75AccessoryStatusARTD_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
  v67 = ___ZN7antenna16QMICommandDriver27e75AccessoryStatusARTD_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
  v68 = &__block_descriptor_tmp_70;
  v69 = a1;
  v70 = a2;
  v7 = *(&v71 + 1);
  v8 = v72;
  v9 = *(&v71 + 1);
  if (*(&v71 + 1) != v72)
  {
    v9 = *(&v71 + 1);
    while (*(*v9 + 8) != 1)
    {
      if (++v9 == v72)
      {
        goto LABEL_9;
      }
    }
  }

  if (v9 == v72)
  {
LABEL_9:
    v13 = operator new(0x10uLL);
    v13[8] = 1;
    *v13 = &unk_2A1E1B988;
    *(v13 + 5) = 0;
    v12 = v13 + 10;
    if (v8 >= *(&v72 + 1))
    {
      v15 = v8 - v7;
      v16 = (v8 - v7) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v18 = *(&v72 + 1) - v7;
      if ((*(&v72 + 1) - v7) >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v20 = v13;
        v21 = v13 + 10;
        v22 = operator new(8 * v19);
        v13 = v20;
      }

      else
      {
        v21 = v13 + 10;
        v22 = 0;
      }

      v23 = &v22[8 * v16];
      *v23 = v13;
      v14 = v23 + 8;
      memcpy(v22, v7, v15);
      *(&v71 + 1) = v22;
      *&v72 = v14;
      *(&v72 + 1) = &v22[8 * v19];
      if (v7)
      {
        operator delete(v7);
      }

      v12 = v21;
    }

    else
    {
      *v8 = v13;
      v14 = v8 + 8;
    }

    *&v72 = v14;
    v6 = v67;
  }

  else
  {
    v10 = ***v9;
    if (!v11)
    {
      __cxa_bad_cast();
    }

    v12 = v11 + 10;
  }

  v6(v66, v12);
  v24 = *MEMORY[0x29EDC8FE8];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC8FE8]))
  {
    value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9020]);
    *buf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *buf = xpc_null_create();
    }

    v26 = xpc::dyn_cast_or_default();
    xpc_release(*buf);
    if (v26)
    {
      v27 = xpc_dictionary_get_value(*a2, v24);
      *buf = v27;
      if (v27)
      {
        xpc_retain(v27);
      }

      else
      {
        *buf = xpc_null_create();
      }

      v28 = xpc::dyn_cast_or_default();
      AccessoryType = antenna::QMICommandDriver::getAccessoryType(a1, v28);
      xpc_release(*buf);
      v30 = *(a1 + 5);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *&buf[4] = AccessoryType;
        LOWORD(v80) = 1024;
        *(&v80 + 2) = AccessoryType;
        _os_log_debug_impl(&dword_296ECF000, v30, OS_LOG_TYPE_DEBUG, "#D accessoryType for ARTD: 0x%08x(%d)\n", buf, 0xEu);
      }

      v62[0] = MEMORY[0x29EDCA5F8];
      v62[1] = 0x40000000;
      v31 = ___ZN7antenna16QMICommandDriver27e75AccessoryStatusARTD_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_71;
      v63 = ___ZN7antenna16QMICommandDriver27e75AccessoryStatusARTD_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_71;
      v64 = &__block_descriptor_tmp_73_1;
      v65 = AccessoryType;
      v32 = *(&v71 + 1);
      v33 = v72;
      v34 = *(&v71 + 1);
      if (*(&v71 + 1) != v72)
      {
        v34 = *(&v71 + 1);
        while (*(*v34 + 8) != 16)
        {
          if (++v34 == v72)
          {
            goto LABEL_43;
          }
        }
      }

      if (v34 == v72)
      {
LABEL_43:
        v38 = operator new(0x10uLL);
        v38[8] = 16;
        *v38 = &unk_2A1E1B9D8;
        *(v38 + 3) = 0;
        v37 = v38 + 12;
        if (v33 >= *(&v72 + 1))
        {
          v40 = v33 - v32;
          v41 = (v33 - v32) >> 3;
          v42 = v41 + 1;
          if ((v41 + 1) >> 61)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v43 = *(&v72 + 1) - v32;
          if ((*(&v72 + 1) - v32) >> 2 > v42)
          {
            v42 = v43 >> 2;
          }

          if (v43 >= 0x7FFFFFFFFFFFFFF8)
          {
            v44 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v44 = v42;
          }

          if (v44)
          {
            if (v44 >> 61)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v45 = v38;
            v46 = v38 + 12;
            v47 = operator new(8 * v44);
            v38 = v45;
          }

          else
          {
            v46 = v38 + 12;
            v47 = 0;
          }

          v48 = &v47[8 * v41];
          *v48 = v38;
          v39 = v48 + 8;
          memcpy(v47, v32, v40);
          *(&v71 + 1) = v47;
          *&v72 = v39;
          *(&v72 + 1) = &v47[8 * v44];
          if (v32)
          {
            operator delete(v32);
          }

          v37 = v46;
        }

        else
        {
          *v33 = v38;
          v39 = v33 + 8;
        }

        *&v72 = v39;
        v31 = v63;
      }

      else
      {
        v35 = ***v34;
        if (!v36)
        {
          __cxa_bad_cast();
        }

        v37 = v36 + 12;
      }

      v31(v62, v37);
    }
  }

  qmi::MutableMessageBase::MutableMessageBase();
  v49 = *a3;
  if (*a3)
  {
    v49 = _Block_copy(v49);
  }

  v50 = *(a3 + 8);
  aBlock = v49;
  object = v50;
  if (v50)
  {
    dispatch_retain(v50);
  }

  v51 = *(a1 + 2);
  if (!v51 || (v52 = *(a1 + 1), (v53 = std::__shared_weak_count::lock(v51)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v54 = v53;
  p_shared_weak_owners = &v53->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v53->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v53->__on_zero_shared)(v53);
    std::__shared_weak_count::__release_weak(v54);
  }

  *buf = MEMORY[0x29EDCA5F8];
  v80 = 1174405120;
  v81 = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm23AccessoryAttachmentARTD7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
  v82 = &__block_descriptor_tmp_143_1;
  v83 = a1;
  v84 = v52;
  v85 = v54;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (aBlock)
  {
    v56 = object;
    v86 = _Block_copy(aBlock);
    v87 = object;
    if (!object)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  v56 = object;
  v86 = 0;
  v87 = object;
  if (object)
  {
LABEL_70:
    dispatch_retain(v56);
  }

LABEL_71:
  v73 = (a1 + 128);
  v74 = QMIServiceMsg::create();
  v75 = 25000;
  v76 = 0;
  v77 = 0;
  v78[0] = MEMORY[0x29EDCA5F8];
  v78[1] = 0x40000000;
  v78[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
  v78[3] = &unk_29EE5F878;
  v78[4] = buf;
  v77 = _Block_copy(v78);
  qmi::Client::send();
  if (v77)
  {
    _Block_release(v77);
  }

  if (v87)
  {
    dispatch_release(v87);
  }

  if (v86)
  {
    _Block_release(v86);
  }

  if (v85)
  {
    std::__shared_weak_count::__release_weak(v85);
  }

  std::__shared_weak_count::__release_weak(v54);
  if (v56)
  {
    dispatch_release(v56);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v61);
  qmi::MutableMessageBase::~MutableMessageBase(&v71);
  v57 = *MEMORY[0x29EDCA608];
}

void sub_296F66538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN7antenna16QMICommandDriver27e75AccessoryStatusARTD_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke(uint64_t a1, _WORD *a2)
{
  object[3] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x29EDC9020];
  value = xpc_dictionary_get_value(**(a1 + 40), *MEMORY[0x29EDC9020]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object[0]);
  v7 = *(v4 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = xpc_dictionary_get_value(**(a1 + 40), v5);
    v12 = v9;
    if (v9)
    {
      xpc_retain(v9);
    }

    else
    {
      v12 = xpc_null_create();
    }

    v10 = xpc::dyn_cast_or_default();
    v11 = "detached";
    if (v10)
    {
      v11 = "attached";
    }

    LODWORD(object[0]) = 136315138;
    *(object + 4) = v11;
    _os_log_debug_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEBUG, "#D accessory for ARTD: %s", object, 0xCu);
    xpc_release(v12);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_296F667A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void antenna::QMICommandDriver::antennaSwitch_sync(uint64_t a1, xpc_object_t *a2, uint64_t a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v64 = v6;
  v65 = v6;
  qmi::MutableMessageBase::MutableMessageBase(&v64);
  v7 = "St3__111__lookaheadIcNS_12regex_traitsIcEEEE";
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9038]))
  {
    v60[0] = MEMORY[0x29EDCA5F8];
    v60[1] = 0x40000000;
    v8 = ___ZN7antenna16QMICommandDriver18antennaSwitch_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v61 = ___ZN7antenna16QMICommandDriver18antennaSwitch_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v62 = &__block_descriptor_tmp_75;
    v63 = a2;
    v9 = *(&v64 + 1);
    v10 = v65;
    v11 = *(&v64 + 1);
    if (*(&v64 + 1) != v65)
    {
      v11 = *(&v64 + 1);
      while (*(*v11 + 8) != 16)
      {
        if (++v11 == v65)
        {
          goto LABEL_10;
        }
      }
    }

    if (v11 == v65)
    {
LABEL_10:
      v15 = operator new(0x10uLL);
      v15[8] = 16;
      *v15 = &unk_2A1E1BA58;
      *(v15 + 5) = 0;
      v14 = v15 + 10;
      if (v10 >= *(&v65 + 1))
      {
        v17 = v10 - v9;
        v18 = (v10 - v9) >> 3;
        v19 = v18 + 1;
        if ((v18 + 1) >> 61)
        {
          goto LABEL_81;
        }

        v20 = *(&v65 + 1) - v9;
        if ((*(&v65 + 1) - v9) >> 2 > v19)
        {
          v19 = v20 >> 2;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        v51 = v15 + 10;
        if (v21)
        {
          if (v21 >> 61)
          {
            goto LABEL_82;
          }

          v22 = v15;
          v23 = operator new(8 * v21);
          v15 = v22;
          v7 = "NSt3__111__lookaheadIcNS_12regex_traitsIcEEEE" + 1;
        }

        else
        {
          v23 = 0;
        }

        v24 = &v23[8 * v18];
        *v24 = v15;
        v16 = v24 + 8;
        memcpy(v23, v9, v17);
        *(&v64 + 1) = v23;
        *&v65 = v16;
        *(&v65 + 1) = &v23[8 * v21];
        if (v9)
        {
          operator delete(v9);
        }

        v14 = v51;
      }

      else
      {
        *v10 = v15;
        v16 = v10 + 8;
      }

      *&v65 = v16;
      v8 = v61;
    }

    else
    {
      v12 = ***v11;
      if (!v13)
      {
        goto LABEL_80;
      }

      v14 = v13 + 10;
    }

    v8(v60, v14);
  }

  if (!xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9070]))
  {
    goto LABEL_53;
  }

  v56[0] = MEMORY[0x29EDCA5F8];
  v56[1] = *(v7 + 85);
  v25 = ___ZN7antenna16QMICommandDriver18antennaSwitch_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2;
  v57 = ___ZN7antenna16QMICommandDriver18antennaSwitch_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2;
  v58 = &__block_descriptor_tmp_77_0;
  v59 = a2;
  v26 = *(&v64 + 1);
  v27 = v65;
  v28 = *(&v64 + 1);
  if (*(&v64 + 1) != v65)
  {
    v28 = *(&v64 + 1);
    while (*(*v28 + 8) != 17)
    {
      if (++v28 == v65)
      {
        goto LABEL_36;
      }
    }
  }

  if (v28 == v65)
  {
LABEL_36:
    v32 = operator new(0x10uLL);
    v32[8] = 17;
    *v32 = &unk_2A1E1BAA8;
    *(v32 + 5) = 0;
    v31 = v32 + 10;
    if (v27 < *(&v65 + 1))
    {
      *v27 = v32;
      v33 = v27 + 8;
LABEL_51:
      *&v65 = v33;
      v25 = v57;
      goto LABEL_52;
    }

    v34 = v27 - v26;
    v35 = (v27 - v26) >> 3;
    v36 = v35 + 1;
    if (!((v35 + 1) >> 61))
    {
      v37 = *(&v65 + 1) - v26;
      if ((*(&v65 + 1) - v26) >> 2 > v36)
      {
        v36 = v37 >> 2;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v36;
      }

      v52 = v32 + 10;
      if (!v38)
      {
        v41 = 0;
        goto LABEL_48;
      }

      if (!(v38 >> 61))
      {
        v39 = v7;
        v40 = v32;
        v41 = operator new(8 * v38);
        v32 = v40;
        v7 = v39;
LABEL_48:
        v42 = &v41[8 * v35];
        *v42 = v32;
        v33 = v42 + 8;
        memcpy(v41, v26, v34);
        *(&v64 + 1) = v41;
        *&v65 = v33;
        *(&v65 + 1) = &v41[8 * v38];
        if (v26)
        {
          operator delete(v26);
        }

        v31 = v52;
        goto LABEL_51;
      }

LABEL_82:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

LABEL_81:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v29 = ***v28;
  if (!v30)
  {
LABEL_80:
    __cxa_bad_cast();
  }

  v31 = v30 + 10;
LABEL_52:
  v25(v56, v31);
LABEL_53:
  qmi::MutableMessageBase::MutableMessageBase();
  v43 = *a3;
  if (*a3)
  {
    v43 = _Block_copy(v43);
  }

  v44 = *(a3 + 8);
  aBlock = v43;
  object = v44;
  if (v44)
  {
    dispatch_retain(v44);
  }

  v45 = *(a1 + 16);
  if (!v45 || (v46 = *(a1 + 8), (v47 = std::__shared_weak_count::lock(v45)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v48 = v47;
  p_shared_weak_owners = &v47->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v47->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v48);
  }

  v71[0] = MEMORY[0x29EDCA5F8];
  v71[1] = 1174405120;
  v71[2] = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm13AntennaConfig7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
  v71[3] = &__block_descriptor_tmp_147_0;
  v71[4] = a1;
  v71[5] = v46;
  v72 = v48;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (aBlock)
  {
    v50 = object;
    v73 = _Block_copy(aBlock);
    v74 = object;
    if (!object)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v50 = object;
  v73 = 0;
  v74 = object;
  if (object)
  {
LABEL_63:
    dispatch_retain(v50);
  }

LABEL_64:
  v66 = a1 + 128;
  v67 = QMIServiceMsg::create();
  v68 = 25000;
  v69 = 0;
  v70 = 0;
  v75[0] = MEMORY[0x29EDCA5F8];
  v75[1] = *(v7 + 85);
  v75[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
  v75[3] = &unk_29EE5F878;
  v75[4] = v71;
  v70 = _Block_copy(v75);
  qmi::Client::send();
  if (v70)
  {
    _Block_release(v70);
  }

  if (v74)
  {
    dispatch_release(v74);
  }

  if (v73)
  {
    _Block_release(v73);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_weak(v72);
  }

  std::__shared_weak_count::__release_weak(v48);
  if (v50)
  {
    dispatch_release(v50);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v55);
  qmi::MutableMessageBase::~MutableMessageBase(&v64);
}

void sub_296F66E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  qmi::Client::SendProxy::~SendProxy(&a31);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(v32 + 56);
  v35 = *(v33 - 152);
  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  std::__shared_weak_count::__release_weak(v31);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&a11);
  qmi::MutableMessageBase::~MutableMessageBase(&a13);
  qmi::MutableMessageBase::~MutableMessageBase(&a27);
  _Unwind_Resume(a1);
}

void ___ZN7antenna16QMICommandDriver18antennaSwitch_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC9038]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void ___ZN7antenna16QMICommandDriver18antennaSwitch_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC9070]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void antenna::QMICommandDriver::wiredPortNotification_sync(void *a1, xpc_object_t *a2, uint64_t a3)
{
  v69 = *MEMORY[0x29EDCA608];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC8FC8]))
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v51 = v6;
    v52 = v6;
    qmi::MutableMessageBase::MutableMessageBase(&v51);
    v47[0] = MEMORY[0x29EDCA5F8];
    v47[1] = 0x40000000;
    v7 = ___ZN7antenna16QMICommandDriver26wiredPortNotification_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v48 = ___ZN7antenna16QMICommandDriver26wiredPortNotification_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v49 = &__block_descriptor_tmp_79_0;
    v50 = a2;
    v8 = *(&v51 + 1);
    v9 = v52;
    v10 = *(&v51 + 1);
    if (*(&v51 + 1) != v52)
    {
      v10 = *(&v51 + 1);
      while (*(*v10 + 8) != 1)
      {
        if (++v10 == v52)
        {
          goto LABEL_13;
        }
      }
    }

    if (v10 == v52)
    {
LABEL_13:
      v17 = operator new(0x10uLL);
      v18 = v17;
      v17[4] = 1;
      *v17 = &unk_2A1E1BB28;
      if (v9 >= *(&v52 + 1))
      {
        v20 = v9 - v8;
        v21 = (v9 - v8) >> 3;
        v22 = v21 + 1;
        if ((v21 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v23 = *(&v52 + 1) - v8;
        if ((*(&v52 + 1) - v8) >> 2 > v22)
        {
          v22 = v23 >> 2;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          if (v24 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v25 = operator new(8 * v24);
        }

        else
        {
          v25 = 0;
        }

        v28 = &v25[8 * v21];
        *v28 = v18;
        v19 = v28 + 8;
        memcpy(v25, v8, v20);
        *(&v51 + 1) = v25;
        *&v52 = v19;
        *(&v52 + 1) = &v25[8 * v24];
        if (v8)
        {
          operator delete(v8);
        }
      }

      else
      {
        *v9 = v17;
        v19 = v9 + 8;
      }

      v13 = v18 + 9;
      *&v52 = v19;
      v7 = v48;
    }

    else
    {
      v11 = ***v10;
      if (!v12)
      {
        __cxa_bad_cast();
      }

      v13 = v12 + 9;
    }

    v7(v47, v13);
    qmi::MutableMessageBase::MutableMessageBase();
    v29 = *a3;
    if (*a3)
    {
      v29 = _Block_copy(v29);
    }

    v30 = *(a3 + 8);
    v44 = v29;
    v45 = v30;
    if (v30)
    {
      dispatch_retain(v30);
    }

    v31 = a1[2];
    if (!v31 || (v32 = a1[1], (v33 = std::__shared_weak_count::lock(v31)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v34 = v33;
    p_shared_weak_owners = &v33->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v34);
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm21WiredPortNotification7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
    v59 = &__block_descriptor_tmp_151;
    aBlock = a1;
    object = v32;
    v62 = v34;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    if (v44)
    {
      v36 = v45;
      v63 = _Block_copy(v44);
      v64 = v45;
      if (!v45)
      {
LABEL_50:
        v53 = a1 + 16;
        v54 = QMIServiceMsg::create();
        v55 = 25000;
        v56 = 0;
        v57 = 0;
        *&buf = MEMORY[0x29EDCA5F8];
        *(&buf + 1) = 0x40000000;
        v66 = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
        v67 = &unk_29EE5F878;
        v68 = block;
        v57 = _Block_copy(&buf);
        qmi::Client::send();
        if (v57)
        {
          _Block_release(v57);
        }

        if (v64)
        {
          dispatch_release(v64);
        }

        if (v63)
        {
          _Block_release(v63);
        }

        if (v62)
        {
          std::__shared_weak_count::__release_weak(v62);
        }

        std::__shared_weak_count::__release_weak(v34);
        if (v36)
        {
          dispatch_release(v36);
        }

        if (v44)
        {
          _Block_release(v44);
        }

        qmi::MutableMessageBase::~MutableMessageBase(v46);
        qmi::MutableMessageBase::~MutableMessageBase(&v51);
        goto LABEL_63;
      }
    }

    else
    {
      v36 = v45;
      v63 = 0;
      v64 = v45;
      if (!v45)
      {
        goto LABEL_50;
      }
    }

    dispatch_retain(v36);
    goto LABEL_50;
  }

  v14 = a1[5];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v38 = MEMORY[0x29C269360](*a2);
    memset(block, 170, sizeof(block));
    v39 = strlen(v38);
    if (v39 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v40 = v39;
    if (v39 >= 0x17)
    {
      if ((v39 | 7) == 0x17)
      {
        v42 = 25;
      }

      else
      {
        v42 = (v39 | 7) + 1;
      }

      v41 = operator new(v42);
      block[1] = v40;
      block[2] = (v42 | 0x8000000000000000);
      block[0] = v41;
    }

    else
    {
      HIBYTE(block[2]) = v39;
      v41 = block;
      if (!v39)
      {
        goto LABEL_75;
      }
    }

    memcpy(v41, v38, v40);
LABEL_75:
    *(v40 + v41) = 0;
    free(v38);
    v43 = block;
    if (SHIBYTE(block[2]) < 0)
    {
      v43 = block[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v43;
    _os_log_error_impl(&dword_296ECF000, v14, OS_LOG_TYPE_ERROR, "Missing mandatory TLV. args: %s", &buf, 0xCu);
    if (SHIBYTE(block[2]) < 0)
    {
      operator delete(block[0]);
    }
  }

  v15 = xpc_null_create();
  if (*a3)
  {
    v16 = _Block_copy(*a3);
  }

  else
  {
    v16 = 0;
  }

  v26 = *(a3 + 8);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  v59 = &__block_descriptor_tmp_118;
  if (!v16)
  {
    LOBYTE(v62) = 0;
    aBlock = 0;
    object = v15;
    if (v15)
    {
      goto LABEL_27;
    }

LABEL_29:
    object = xpc_null_create();
    goto LABEL_30;
  }

  v27 = _Block_copy(v16);
  LOBYTE(v62) = 0;
  aBlock = v27;
  object = v15;
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_27:
  xpc_retain(v15);
LABEL_30:
  dispatch_async(v26, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  xpc_release(v15);
LABEL_63:
  v37 = *MEMORY[0x29EDCA608];
}

void sub_296F6766C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F67710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN7antenna16QMICommandDriver26wiredPortNotification_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke(uint64_t a1, _BYTE *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC8FC8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void antenna::QMICommandDriver::speakerState_sync(void *a1, xpc_object_t *a2, uint64_t a3)
{
  v70 = *MEMORY[0x29EDCA608];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC8FD0]))
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v52 = v6;
    v53 = v6;
    qmi::MutableMessageBase::MutableMessageBase(&v52);
    v48[0] = MEMORY[0x29EDCA5F8];
    v48[1] = 0x40000000;
    v7 = ___ZN7antenna16QMICommandDriver17speakerState_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v49 = ___ZN7antenna16QMICommandDriver17speakerState_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v50 = &__block_descriptor_tmp_81;
    v51 = a2;
    v8 = *(&v52 + 1);
    v9 = v53;
    v10 = *(&v52 + 1);
    if (*(&v52 + 1) != v53)
    {
      v10 = *(&v52 + 1);
      while (*(*v10 + 8) != 1)
      {
        if (++v10 == v53)
        {
          goto LABEL_13;
        }
      }
    }

    if (v10 == v53)
    {
LABEL_13:
      v17 = operator new(0x10uLL);
      v17[8] = 1;
      *v17 = &unk_2A1E1BBA8;
      *(v17 + 5) = 0;
      v13 = v17 + 10;
      if (v9 >= *(&v53 + 1))
      {
        v19 = v9 - v8;
        v20 = (v9 - v8) >> 3;
        v21 = v20 + 1;
        if ((v20 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v22 = *(&v53 + 1) - v8;
        if ((*(&v53 + 1) - v8) >> 2 > v21)
        {
          v21 = v22 >> 2;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          if (v23 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v24 = v17;
          v25 = v17 + 10;
          v26 = operator new(8 * v23);
          v17 = v24;
        }

        else
        {
          v25 = v17 + 10;
          v26 = 0;
        }

        v29 = &v26[8 * v20];
        *v29 = v17;
        v18 = v29 + 8;
        memcpy(v26, v8, v19);
        *(&v52 + 1) = v26;
        *&v53 = v18;
        *(&v53 + 1) = &v26[8 * v23];
        if (v8)
        {
          operator delete(v8);
        }

        v13 = v25;
      }

      else
      {
        *v9 = v17;
        v18 = v9 + 8;
      }

      *&v53 = v18;
      v7 = v49;
    }

    else
    {
      v11 = ***v10;
      if (!v12)
      {
        __cxa_bad_cast();
      }

      v13 = v12 + 10;
    }

    v7(v48, v13);
    qmi::MutableMessageBase::MutableMessageBase();
    v30 = *a3;
    if (*a3)
    {
      v30 = _Block_copy(v30);
    }

    v31 = *(a3 + 8);
    v45 = v30;
    v46 = v31;
    if (v31)
    {
      dispatch_retain(v31);
    }

    v32 = a1[2];
    if (!v32 || (v33 = a1[1], (v34 = std::__shared_weak_count::lock(v32)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v35 = v34;
    p_shared_weak_owners = &v34->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v34->__on_zero_shared)(v34);
      std::__shared_weak_count::__release_weak(v35);
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm12TxPwrSpeaker7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
    v60 = &__block_descriptor_tmp_155;
    aBlock = a1;
    object = v33;
    v63 = v35;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    if (v45)
    {
      v37 = v46;
      v64 = _Block_copy(v45);
      v65 = v46;
      if (!v46)
      {
LABEL_51:
        v54 = a1 + 16;
        v55 = QMIServiceMsg::create();
        v56 = 25000;
        v57 = 0;
        v58 = 0;
        *&buf = MEMORY[0x29EDCA5F8];
        *(&buf + 1) = 0x40000000;
        v67 = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
        v68 = &unk_29EE5F878;
        v69 = block;
        v58 = _Block_copy(&buf);
        qmi::Client::send();
        if (v58)
        {
          _Block_release(v58);
        }

        if (v65)
        {
          dispatch_release(v65);
        }

        if (v64)
        {
          _Block_release(v64);
        }

        if (v63)
        {
          std::__shared_weak_count::__release_weak(v63);
        }

        std::__shared_weak_count::__release_weak(v35);
        if (v37)
        {
          dispatch_release(v37);
        }

        if (v45)
        {
          _Block_release(v45);
        }

        qmi::MutableMessageBase::~MutableMessageBase(v47);
        qmi::MutableMessageBase::~MutableMessageBase(&v52);
        goto LABEL_64;
      }
    }

    else
    {
      v37 = v46;
      v64 = 0;
      v65 = v46;
      if (!v46)
      {
        goto LABEL_51;
      }
    }

    dispatch_retain(v37);
    goto LABEL_51;
  }

  v14 = a1[5];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v39 = MEMORY[0x29C269360](*a2);
    memset(block, 170, sizeof(block));
    v40 = strlen(v39);
    if (v40 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v41 = v40;
    if (v40 >= 0x17)
    {
      if ((v40 | 7) == 0x17)
      {
        v43 = 25;
      }

      else
      {
        v43 = (v40 | 7) + 1;
      }

      v42 = operator new(v43);
      block[1] = v41;
      block[2] = (v43 | 0x8000000000000000);
      block[0] = v42;
    }

    else
    {
      HIBYTE(block[2]) = v40;
      v42 = block;
      if (!v40)
      {
        goto LABEL_76;
      }
    }

    memcpy(v42, v39, v41);
LABEL_76:
    *(v41 + v42) = 0;
    free(v39);
    v44 = block;
    if (SHIBYTE(block[2]) < 0)
    {
      v44 = block[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v44;
    _os_log_error_impl(&dword_296ECF000, v14, OS_LOG_TYPE_ERROR, "Missing mandatory TLV. args: %s", &buf, 0xCu);
    if (SHIBYTE(block[2]) < 0)
    {
      operator delete(block[0]);
    }
  }

  v15 = xpc_null_create();
  if (*a3)
  {
    v16 = _Block_copy(*a3);
  }

  else
  {
    v16 = 0;
  }

  v27 = *(a3 + 8);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  v60 = &__block_descriptor_tmp_118;
  if (!v16)
  {
    LOBYTE(v63) = 0;
    aBlock = 0;
    object = v15;
    if (v15)
    {
      goto LABEL_27;
    }

LABEL_29:
    object = xpc_null_create();
    goto LABEL_30;
  }

  v28 = _Block_copy(v16);
  LOBYTE(v63) = 0;
  aBlock = v28;
  object = v15;
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_27:
  xpc_retain(v15);
LABEL_30:
  dispatch_async(v27, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  xpc_release(v15);
LABEL_64:
  v38 = *MEMORY[0x29EDCA608];
}

void sub_296F67E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F67ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN7antenna16QMICommandDriver17speakerState_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC8FD0]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void antenna::QMICommandDriver::handDetectionState_sync(void *a1, xpc_object_t *a2, uint64_t a3)
{
  v69 = *MEMORY[0x29EDCA608];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9028]))
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v51 = v6;
    v52 = v6;
    qmi::MutableMessageBase::MutableMessageBase(&v51);
    v47[0] = MEMORY[0x29EDCA5F8];
    v47[1] = 0x40000000;
    v7 = ___ZN7antenna16QMICommandDriver23handDetectionState_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v48 = ___ZN7antenna16QMICommandDriver23handDetectionState_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v49 = &__block_descriptor_tmp_83;
    v50 = a2;
    v8 = *(&v51 + 1);
    v9 = v52;
    v10 = *(&v51 + 1);
    if (*(&v51 + 1) != v52)
    {
      v10 = *(&v51 + 1);
      while (*(*v10 + 8) != 1)
      {
        if (++v10 == v52)
        {
          goto LABEL_13;
        }
      }
    }

    if (v10 == v52)
    {
LABEL_13:
      v17 = operator new(0x10uLL);
      v18 = v17;
      v17[4] = 1;
      *v17 = &unk_2A1E1BC28;
      if (v9 >= *(&v52 + 1))
      {
        v20 = v9 - v8;
        v21 = (v9 - v8) >> 3;
        v22 = v21 + 1;
        if ((v21 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v23 = *(&v52 + 1) - v8;
        if ((*(&v52 + 1) - v8) >> 2 > v22)
        {
          v22 = v23 >> 2;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          if (v24 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v25 = operator new(8 * v24);
        }

        else
        {
          v25 = 0;
        }

        v28 = &v25[8 * v21];
        *v28 = v18;
        v19 = v28 + 8;
        memcpy(v25, v8, v20);
        *(&v51 + 1) = v25;
        *&v52 = v19;
        *(&v52 + 1) = &v25[8 * v24];
        if (v8)
        {
          operator delete(v8);
        }
      }

      else
      {
        *v9 = v17;
        v19 = v9 + 8;
      }

      v13 = v18 + 9;
      *&v52 = v19;
      v7 = v48;
    }

    else
    {
      v11 = ***v10;
      if (!v12)
      {
        __cxa_bad_cast();
      }

      v13 = v12 + 9;
    }

    v7(v47, v13);
    qmi::MutableMessageBase::MutableMessageBase();
    v29 = *a3;
    if (*a3)
    {
      v29 = _Block_copy(v29);
    }

    v30 = *(a3 + 8);
    v44 = v29;
    v45 = v30;
    if (v30)
    {
      dispatch_retain(v30);
    }

    v31 = a1[2];
    if (!v31 || (v32 = a1[1], (v33 = std::__shared_weak_count::lock(v31)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v34 = v33;
    p_shared_weak_owners = &v33->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v34);
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm18TxPwrHandDetection7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
    v59 = &__block_descriptor_tmp_159;
    aBlock = a1;
    object = v32;
    v62 = v34;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    if (v44)
    {
      v36 = v45;
      v63 = _Block_copy(v44);
      v64 = v45;
      if (!v45)
      {
LABEL_50:
        v53 = a1 + 16;
        v54 = QMIServiceMsg::create();
        v55 = 25000;
        v56 = 0;
        v57 = 0;
        *&buf = MEMORY[0x29EDCA5F8];
        *(&buf + 1) = 0x40000000;
        v66 = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
        v67 = &unk_29EE5F878;
        v68 = block;
        v57 = _Block_copy(&buf);
        qmi::Client::send();
        if (v57)
        {
          _Block_release(v57);
        }

        if (v64)
        {
          dispatch_release(v64);
        }

        if (v63)
        {
          _Block_release(v63);
        }

        if (v62)
        {
          std::__shared_weak_count::__release_weak(v62);
        }

        std::__shared_weak_count::__release_weak(v34);
        if (v36)
        {
          dispatch_release(v36);
        }

        if (v44)
        {
          _Block_release(v44);
        }

        qmi::MutableMessageBase::~MutableMessageBase(v46);
        qmi::MutableMessageBase::~MutableMessageBase(&v51);
        goto LABEL_63;
      }
    }

    else
    {
      v36 = v45;
      v63 = 0;
      v64 = v45;
      if (!v45)
      {
        goto LABEL_50;
      }
    }

    dispatch_retain(v36);
    goto LABEL_50;
  }

  v14 = a1[5];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v38 = MEMORY[0x29C269360](*a2);
    memset(block, 170, sizeof(block));
    v39 = strlen(v38);
    if (v39 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v40 = v39;
    if (v39 >= 0x17)
    {
      if ((v39 | 7) == 0x17)
      {
        v42 = 25;
      }

      else
      {
        v42 = (v39 | 7) + 1;
      }

      v41 = operator new(v42);
      block[1] = v40;
      block[2] = (v42 | 0x8000000000000000);
      block[0] = v41;
    }

    else
    {
      HIBYTE(block[2]) = v39;
      v41 = block;
      if (!v39)
      {
        goto LABEL_75;
      }
    }

    memcpy(v41, v38, v40);
LABEL_75:
    *(v40 + v41) = 0;
    free(v38);
    v43 = block;
    if (SHIBYTE(block[2]) < 0)
    {
      v43 = block[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v43;
    _os_log_error_impl(&dword_296ECF000, v14, OS_LOG_TYPE_ERROR, "Missing mandatory TLV. args: %s", &buf, 0xCu);
    if (SHIBYTE(block[2]) < 0)
    {
      operator delete(block[0]);
    }
  }

  v15 = xpc_null_create();
  if (*a3)
  {
    v16 = _Block_copy(*a3);
  }

  else
  {
    v16 = 0;
  }

  v26 = *(a3 + 8);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  v59 = &__block_descriptor_tmp_118;
  if (!v16)
  {
    LOBYTE(v62) = 0;
    aBlock = 0;
    object = v15;
    if (v15)
    {
      goto LABEL_27;
    }

LABEL_29:
    object = xpc_null_create();
    goto LABEL_30;
  }

  v27 = _Block_copy(v16);
  LOBYTE(v62) = 0;
  aBlock = v27;
  object = v15;
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_27:
  xpc_retain(v15);
LABEL_30:
  dispatch_async(v26, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  xpc_release(v15);
LABEL_63:
  v37 = *MEMORY[0x29EDCA608];
}

void sub_296F685D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F6867C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN7antenna16QMICommandDriver23handDetectionState_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke(uint64_t a1, _BYTE *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC9028]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void antenna::QMICommandDriver::powerSourceState_sync(void *a1, xpc_object_t *a2, uint64_t a3)
{
  v70 = *MEMORY[0x29EDCA608];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC8FF0]))
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v52 = v6;
    v53 = v6;
    qmi::MutableMessageBase::MutableMessageBase(&v52);
    v48[0] = MEMORY[0x29EDCA5F8];
    v48[1] = 0x40000000;
    v7 = ___ZN7antenna16QMICommandDriver21powerSourceState_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v49 = ___ZN7antenna16QMICommandDriver21powerSourceState_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v50 = &__block_descriptor_tmp_85;
    v51 = a2;
    v8 = *(&v52 + 1);
    v9 = v53;
    v10 = *(&v52 + 1);
    if (*(&v52 + 1) != v53)
    {
      v10 = *(&v52 + 1);
      while (*(*v10 + 8) != 1)
      {
        if (++v10 == v53)
        {
          goto LABEL_13;
        }
      }
    }

    if (v10 == v53)
    {
LABEL_13:
      v17 = operator new(0x10uLL);
      v17[8] = 1;
      *v17 = &unk_2A1E1BCA8;
      *(v17 + 3) = 0;
      v13 = v17 + 12;
      if (v9 >= *(&v53 + 1))
      {
        v19 = v9 - v8;
        v20 = (v9 - v8) >> 3;
        v21 = v20 + 1;
        if ((v20 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v22 = *(&v53 + 1) - v8;
        if ((*(&v53 + 1) - v8) >> 2 > v21)
        {
          v21 = v22 >> 2;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          if (v23 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v24 = v17;
          v25 = v17 + 12;
          v26 = operator new(8 * v23);
          v17 = v24;
        }

        else
        {
          v25 = v17 + 12;
          v26 = 0;
        }

        v29 = &v26[8 * v20];
        *v29 = v17;
        v18 = v29 + 8;
        memcpy(v26, v8, v19);
        *(&v52 + 1) = v26;
        *&v53 = v18;
        *(&v53 + 1) = &v26[8 * v23];
        if (v8)
        {
          operator delete(v8);
        }

        v13 = v25;
      }

      else
      {
        *v9 = v17;
        v18 = v9 + 8;
      }

      *&v53 = v18;
      v7 = v49;
    }

    else
    {
      v11 = ***v10;
      if (!v12)
      {
        __cxa_bad_cast();
      }

      v13 = v12 + 12;
    }

    v7(v48, v13);
    qmi::MutableMessageBase::MutableMessageBase();
    v30 = *a3;
    if (*a3)
    {
      v30 = _Block_copy(v30);
    }

    v31 = *(a3 + 8);
    v45 = v30;
    v46 = v31;
    if (v31)
    {
      dispatch_retain(v31);
    }

    v32 = a1[2];
    if (!v32 || (v33 = a1[1], (v34 = std::__shared_weak_count::lock(v32)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v35 = v34;
    p_shared_weak_owners = &v34->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v34->__on_zero_shared)(v34);
      std::__shared_weak_count::__release_weak(v35);
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm16PowerSourceState7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
    v60 = &__block_descriptor_tmp_163_1;
    aBlock = a1;
    object = v33;
    v63 = v35;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    if (v45)
    {
      v37 = v46;
      v64 = _Block_copy(v45);
      v65 = v46;
      if (!v46)
      {
LABEL_51:
        v54 = a1 + 16;
        v55 = QMIServiceMsg::create();
        v56 = 25000;
        v57 = 0;
        v58 = 0;
        *&buf = MEMORY[0x29EDCA5F8];
        *(&buf + 1) = 0x40000000;
        v67 = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
        v68 = &unk_29EE5F878;
        v69 = block;
        v58 = _Block_copy(&buf);
        qmi::Client::send();
        if (v58)
        {
          _Block_release(v58);
        }

        if (v65)
        {
          dispatch_release(v65);
        }

        if (v64)
        {
          _Block_release(v64);
        }

        if (v63)
        {
          std::__shared_weak_count::__release_weak(v63);
        }

        std::__shared_weak_count::__release_weak(v35);
        if (v37)
        {
          dispatch_release(v37);
        }

        if (v45)
        {
          _Block_release(v45);
        }

        qmi::MutableMessageBase::~MutableMessageBase(v47);
        qmi::MutableMessageBase::~MutableMessageBase(&v52);
        goto LABEL_64;
      }
    }

    else
    {
      v37 = v46;
      v64 = 0;
      v65 = v46;
      if (!v46)
      {
        goto LABEL_51;
      }
    }

    dispatch_retain(v37);
    goto LABEL_51;
  }

  v14 = a1[5];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v39 = MEMORY[0x29C269360](*a2);
    memset(block, 170, sizeof(block));
    v40 = strlen(v39);
    if (v40 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v41 = v40;
    if (v40 >= 0x17)
    {
      if ((v40 | 7) == 0x17)
      {
        v43 = 25;
      }

      else
      {
        v43 = (v40 | 7) + 1;
      }

      v42 = operator new(v43);
      block[1] = v41;
      block[2] = (v43 | 0x8000000000000000);
      block[0] = v42;
    }

    else
    {
      HIBYTE(block[2]) = v40;
      v42 = block;
      if (!v40)
      {
        goto LABEL_76;
      }
    }

    memcpy(v42, v39, v41);
LABEL_76:
    *(v41 + v42) = 0;
    free(v39);
    v44 = block;
    if (SHIBYTE(block[2]) < 0)
    {
      v44 = block[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v44;
    _os_log_error_impl(&dword_296ECF000, v14, OS_LOG_TYPE_ERROR, "Missing mandatory TLV. args: %s", &buf, 0xCu);
    if (SHIBYTE(block[2]) < 0)
    {
      operator delete(block[0]);
    }
  }

  v15 = xpc_null_create();
  if (*a3)
  {
    v16 = _Block_copy(*a3);
  }

  else
  {
    v16 = 0;
  }

  v27 = *(a3 + 8);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  v60 = &__block_descriptor_tmp_118;
  if (!v16)
  {
    LOBYTE(v63) = 0;
    aBlock = 0;
    object = v15;
    if (v15)
    {
      goto LABEL_27;
    }

LABEL_29:
    object = xpc_null_create();
    goto LABEL_30;
  }

  v28 = _Block_copy(v16);
  LOBYTE(v63) = 0;
  aBlock = v28;
  object = v15;
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_27:
  xpc_retain(v15);
LABEL_30:
  dispatch_async(v27, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  xpc_release(v15);
LABEL_64:
  v38 = *MEMORY[0x29EDCA608];
}

void sub_296F68D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F68E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN7antenna16QMICommandDriver21powerSourceState_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke(uint64_t a1, _DWORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC8FF0]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void antenna::QMICommandDriver::deviceMaterial_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v107 = v6;
  v108 = v6;
  qmi::MutableMessageBase::MutableMessageBase(&v107);
  v103[0] = MEMORY[0x29EDCA5F8];
  v103[1] = 0x40000000;
  v7 = ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
  v104 = ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
  v105 = &__block_descriptor_tmp_87;
  v106 = a2;
  v8 = *(&v107 + 1);
  v9 = v108;
  v10 = *(&v107 + 1);
  v87 = a3;
  if (*(&v107 + 1) != v108)
  {
    v10 = *(&v107 + 1);
    while (*(*v10 + 8) != 16)
    {
      if (++v10 == v108)
      {
        goto LABEL_9;
      }
    }
  }

  if (v10 == v108)
  {
LABEL_9:
    v14 = operator new(0x10uLL);
    v14[8] = 16;
    *v14 = &unk_2A1E1BD28;
    *(v14 + 5) = 0;
    v13 = v14 + 10;
    if (v9 >= *(&v108 + 1))
    {
      v16 = v9 - v8;
      v17 = (v9 - v8) >> 3;
      v18 = v17 + 1;
      if ((v17 + 1) >> 61)
      {
        goto LABEL_125;
      }

      v19 = *(&v108 + 1) - v8;
      if ((*(&v108 + 1) - v8) >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (v20 >> 61)
        {
          goto LABEL_126;
        }

        v21 = v14;
        v22 = v14 + 10;
        v23 = operator new(8 * v20);
        v14 = v21;
      }

      else
      {
        v22 = v14 + 10;
        v23 = 0;
      }

      v24 = &v23[8 * v17];
      *v24 = v14;
      v15 = v24 + 8;
      memcpy(v23, v8, v16);
      *(&v107 + 1) = v23;
      *&v108 = v15;
      *(&v108 + 1) = &v23[8 * v20];
      if (v8)
      {
        operator delete(v8);
      }

      v13 = v22;
    }

    else
    {
      *v9 = v14;
      v15 = v9 + 8;
    }

    *&v108 = v15;
    v7 = v104;
  }

  else
  {
    v11 = ***v10;
    if (!v12)
    {
      goto LABEL_124;
    }

    v13 = v12 + 10;
  }

  v7(v103, v13);
  v99[0] = MEMORY[0x29EDCA5F8];
  v99[1] = 0x40000000;
  v25 = ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2;
  v100 = ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2;
  v101 = &__block_descriptor_tmp_89;
  v102 = a2;
  v26 = *(&v107 + 1);
  v27 = v108;
  v28 = *(&v107 + 1);
  if (*(&v107 + 1) != v108)
  {
    v28 = *(&v107 + 1);
    while (*(*v28 + 8) != 17)
    {
      if (++v28 == v108)
      {
        goto LABEL_33;
      }
    }
  }

  if (v28 == v108)
  {
LABEL_33:
    v32 = operator new(0x10uLL);
    v32[8] = 17;
    *v32 = &unk_2A1E1BD78;
    *(v32 + 5) = 0;
    v31 = v32 + 10;
    if (v27 >= *(&v108 + 1))
    {
      v34 = v27 - v26;
      v35 = (v27 - v26) >> 3;
      v36 = v35 + 1;
      if ((v35 + 1) >> 61)
      {
        goto LABEL_125;
      }

      v37 = *(&v108 + 1) - v26;
      if ((*(&v108 + 1) - v26) >> 2 > v36)
      {
        v36 = v37 >> 2;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        if (v38 >> 61)
        {
          goto LABEL_126;
        }

        v39 = v32;
        v40 = v32 + 10;
        v41 = operator new(8 * v38);
        v32 = v39;
      }

      else
      {
        v40 = v32 + 10;
        v41 = 0;
      }

      v42 = &v41[8 * v35];
      *v42 = v32;
      v33 = v42 + 8;
      memcpy(v41, v26, v34);
      *(&v107 + 1) = v41;
      *&v108 = v33;
      *(&v108 + 1) = &v41[8 * v38];
      if (v26)
      {
        operator delete(v26);
      }

      v31 = v40;
    }

    else
    {
      *v27 = v32;
      v33 = v27 + 8;
    }

    *&v108 = v33;
    v25 = v100;
  }

  else
  {
    v29 = ***v28;
    if (!v30)
    {
      goto LABEL_124;
    }

    v31 = v30 + 10;
  }

  v25(v99, v31);
  v95[0] = MEMORY[0x29EDCA5F8];
  v95[1] = 0x40000000;
  v43 = ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_3;
  v96 = ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_3;
  v97 = &__block_descriptor_tmp_91_0;
  v98 = a2;
  v44 = *(&v107 + 1);
  v45 = v108;
  v46 = *(&v107 + 1);
  if (*(&v107 + 1) != v108)
  {
    v46 = *(&v107 + 1);
    while (*(*v46 + 8) != 18)
    {
      if (++v46 == v108)
      {
        goto LABEL_57;
      }
    }
  }

  if (v46 == v108)
  {
LABEL_57:
    v50 = operator new(0x10uLL);
    v50[8] = 18;
    *v50 = &unk_2A1E1BDC8;
    *(v50 + 5) = 0;
    v49 = v50 + 10;
    if (v45 >= *(&v108 + 1))
    {
      v52 = v45 - v44;
      v53 = (v45 - v44) >> 3;
      v54 = v53 + 1;
      if ((v53 + 1) >> 61)
      {
        goto LABEL_125;
      }

      v55 = *(&v108 + 1) - v44;
      if ((*(&v108 + 1) - v44) >> 2 > v54)
      {
        v54 = v55 >> 2;
      }

      if (v55 >= 0x7FFFFFFFFFFFFFF8)
      {
        v56 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v56 = v54;
      }

      if (v56)
      {
        if (v56 >> 61)
        {
          goto LABEL_126;
        }

        v57 = v50;
        v58 = v50 + 10;
        v59 = operator new(8 * v56);
        v50 = v57;
      }

      else
      {
        v58 = v50 + 10;
        v59 = 0;
      }

      v60 = &v59[8 * v53];
      *v60 = v50;
      v51 = v60 + 8;
      memcpy(v59, v44, v52);
      *(&v107 + 1) = v59;
      *&v108 = v51;
      *(&v108 + 1) = &v59[8 * v56];
      if (v44)
      {
        operator delete(v44);
      }

      v49 = v58;
    }

    else
    {
      *v45 = v50;
      v51 = v45 + 8;
    }

    *&v108 = v51;
    v43 = v96;
  }

  else
  {
    v47 = ***v46;
    if (!v48)
    {
      goto LABEL_124;
    }

    v49 = v48 + 10;
  }

  v43(v95, v49);
  v91[0] = MEMORY[0x29EDCA5F8];
  v91[1] = 0x40000000;
  v61 = ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_4;
  v92 = ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_4;
  v93 = &__block_descriptor_tmp_93_1;
  v94 = a2;
  v62 = *(&v107 + 1);
  v63 = v108;
  v64 = *(&v107 + 1);
  if (*(&v107 + 1) != v108)
  {
    v64 = *(&v107 + 1);
    while (*(*v64 + 8) != 19)
    {
      if (++v64 == v108)
      {
        goto LABEL_81;
      }
    }
  }

  if (v64 != v108)
  {
    v65 = ***v64;
    if (v66)
    {
      v67 = v66 + 10;
      goto LABEL_97;
    }

LABEL_124:
    __cxa_bad_cast();
  }

LABEL_81:
  v68 = operator new(0x10uLL);
  v68[8] = 19;
  *v68 = &unk_2A1E1BE18;
  *(v68 + 5) = 0;
  v67 = v68 + 10;
  if (v63 >= *(&v108 + 1))
  {
    v70 = v63 - v62;
    v71 = (v63 - v62) >> 3;
    v72 = v71 + 1;
    if (!((v71 + 1) >> 61))
    {
      v73 = *(&v108 + 1) - v62;
      if ((*(&v108 + 1) - v62) >> 2 > v72)
      {
        v72 = v73 >> 2;
      }

      if (v73 >= 0x7FFFFFFFFFFFFFF8)
      {
        v74 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v74 = v72;
      }

      if (!v74)
      {
        v76 = v68 + 10;
        v77 = 0;
        goto LABEL_93;
      }

      if (!(v74 >> 61))
      {
        v75 = v68;
        v76 = v68 + 10;
        v77 = operator new(8 * v74);
        v68 = v75;
LABEL_93:
        v78 = &v77[8 * v71];
        *v78 = v68;
        v69 = v78 + 8;
        memcpy(v77, v62, v70);
        *(&v107 + 1) = v77;
        *&v108 = v69;
        *(&v108 + 1) = &v77[8 * v74];
        if (v62)
        {
          operator delete(v62);
        }

        v67 = v76;
        goto LABEL_96;
      }

LABEL_126:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

LABEL_125:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  *v63 = v68;
  v69 = v63 + 8;
LABEL_96:
  *&v108 = v69;
  v61 = v92;
LABEL_97:
  v61(v91, v67);
  qmi::MutableMessageBase::MutableMessageBase();
  v79 = *v87;
  if (*v87)
  {
    v79 = _Block_copy(v79);
  }

  v80 = *(v87 + 8);
  aBlock = v79;
  object = v80;
  if (v80)
  {
    dispatch_retain(v80);
  }

  v81 = *(a1 + 16);
  if (!v81 || (v82 = *(a1 + 8), (v83 = std::__shared_weak_count::lock(v81)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v84 = v83;
  p_shared_weak_owners = &v83->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v83->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v83->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v83->__on_zero_shared)(v83);
    std::__shared_weak_count::__release_weak(v84);
  }

  v114[0] = MEMORY[0x29EDCA5F8];
  v114[1] = 1174405120;
  v114[2] = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm14DeviceMaterial7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
  v114[3] = &__block_descriptor_tmp_167_0;
  v114[4] = a1;
  v114[5] = v82;
  v115 = v84;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (aBlock)
  {
    v86 = object;
    v116 = _Block_copy(aBlock);
    v117 = object;
    if (!object)
    {
      goto LABEL_108;
    }

    goto LABEL_107;
  }

  v86 = object;
  v116 = 0;
  v117 = object;
  if (object)
  {
LABEL_107:
    dispatch_retain(v86);
  }

LABEL_108:
  v109 = a1 + 128;
  v110 = QMIServiceMsg::create();
  v111 = 25000;
  v112 = 0;
  v113 = 0;
  v118[0] = MEMORY[0x29EDCA5F8];
  v118[1] = 0x40000000;
  v118[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
  v118[3] = &unk_29EE5F878;
  v118[4] = v114;
  v113 = _Block_copy(v118);
  qmi::Client::send();
  if (v113)
  {
    _Block_release(v113);
  }

  if (v117)
  {
    dispatch_release(v117);
  }

  if (v116)
  {
    _Block_release(v116);
  }

  if (v115)
  {
    std::__shared_weak_count::__release_weak(v115);
  }

  std::__shared_weak_count::__release_weak(v84);
  if (v86)
  {
    dispatch_release(v86);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v90);
  qmi::MutableMessageBase::~MutableMessageBase(&v107);
}

void sub_296F69888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  qmi::Client::SendProxy::~SendProxy(&a41);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(v42 + 56);
  v45 = *(v43 - 168);
  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  std::__shared_weak_count::__release_weak(v41);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&a11);
  qmi::MutableMessageBase::~MutableMessageBase(&a13);
  qmi::MutableMessageBase::~MutableMessageBase(&a37);
  _Unwind_Resume(a1);
}

void ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC9000]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC8FD8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_3(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC8FC0]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_4(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC8FB8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void antenna::QMICommandDriver::sendSensorID(uint64_t a1, int a2, uint64_t a3)
{
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN7antenna16QMICommandDriver12sendSensorIDEjN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_96_0;
  v7[4] = a1;
  v10 = a2;
  v5 = *a3;
  if (*a3)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a3 + 8);
  aBlock = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped((a1 + 8), v7);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN7antenna16QMICommandDriver12sendSensorIDEjN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37 = v3;
  v38 = v3;
  qmi::MutableMessageBase::MutableMessageBase(&v37);
  v33[0] = MEMORY[0x29EDCA5F8];
  v33[1] = 0x40000000;
  v4 = ___ZN7antenna16QMICommandDriver12sendSensorIDEjN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE_block_invoke_2;
  v34 = ___ZN7antenna16QMICommandDriver12sendSensorIDEjN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE_block_invoke_2;
  v35 = &__block_descriptor_tmp_95;
  v36 = *(a1 + 56);
  v5 = *(&v37 + 1);
  v6 = v38;
  v7 = *(&v37 + 1);
  if (*(&v37 + 1) != v38)
  {
    v7 = *(&v37 + 1);
    while (*(*v7 + 8) != 16)
    {
      if (++v7 == v38)
      {
        goto LABEL_9;
      }
    }
  }

  if (v7 == v38)
  {
LABEL_9:
    v11 = operator new(0x10uLL);
    v11[8] = 16;
    *v11 = &unk_2A1E1BE98;
    *(v11 + 3) = 0;
    v10 = v11 + 12;
    if (v6 >= *(&v38 + 1))
    {
      v13 = v6 - v5;
      v14 = (v6 - v5) >> 3;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v16 = *(&v38 + 1) - v5;
      if ((*(&v38 + 1) - v5) >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = v11;
        v19 = v11 + 12;
        v20 = operator new(8 * v17);
        v11 = v18;
      }

      else
      {
        v19 = v11 + 12;
        v20 = 0;
      }

      v21 = &v20[8 * v14];
      *v21 = v11;
      v12 = v21 + 8;
      memcpy(v20, v5, v13);
      *(&v37 + 1) = v20;
      *&v38 = v12;
      *(&v38 + 1) = &v20[8 * v17];
      if (v5)
      {
        operator delete(v5);
      }

      v10 = v19;
    }

    else
    {
      *v6 = v11;
      v12 = v6 + 8;
    }

    *&v38 = v12;
    v4 = v34;
  }

  else
  {
    v8 = ***v7;
    if (!v9)
    {
      __cxa_bad_cast();
    }

    v10 = v9 + 12;
  }

  v4(v33, v10);
  qmi::MutableMessageBase::MutableMessageBase();
  v22 = *(a1 + 40);
  if (v22)
  {
    v22 = _Block_copy(v22);
  }

  v23 = *(a1 + 48);
  aBlock = v22;
  object = v23;
  if (v23)
  {
    dispatch_retain(v23);
  }

  v24 = *(v2 + 16);
  if (!v24 || (v25 = *(v2 + 8), (v26 = std::__shared_weak_count::lock(v24)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v27 = v26;
  p_shared_weak_owners = &v26->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v27);
  }

  v44[0] = MEMORY[0x29EDCA5F8];
  v44[1] = 1174405120;
  v44[2] = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm10SensorInfo7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
  v44[3] = &__block_descriptor_tmp_171_0;
  v44[4] = v2;
  v44[5] = v25;
  v45 = v27;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (aBlock)
  {
    v29 = object;
    v46 = _Block_copy(aBlock);
    v47 = object;
    if (!object)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v29 = object;
  v46 = 0;
  v47 = object;
  if (object)
  {
LABEL_35:
    dispatch_retain(v29);
  }

LABEL_36:
  v39 = v2 + 128;
  v40 = QMIServiceMsg::create();
  v41 = 25000;
  v42 = 0;
  v43 = 0;
  v48[0] = MEMORY[0x29EDCA5F8];
  v48[1] = 0x40000000;
  v48[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
  v48[3] = &unk_29EE5F878;
  v48[4] = v44;
  v43 = _Block_copy(v48);
  qmi::Client::send();
  if (v43)
  {
    _Block_release(v43);
  }

  if (v47)
  {
    dispatch_release(v47);
  }

  if (v46)
  {
    _Block_release(v46);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  std::__shared_weak_count::__release_weak(v27);
  if (v29)
  {
    dispatch_release(v29);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v32);
  qmi::MutableMessageBase::~MutableMessageBase(&v37);
}

void sub_296F6A058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  qmi::Client::SendProxy::~SendProxy(&a25);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(v37 + 56);
  if (a36)
  {
    std::__shared_weak_count::__release_weak(a36);
  }

  std::__shared_weak_count::__release_weak(v36);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&a10);
  qmi::MutableMessageBase::~MutableMessageBase(&a12);
  qmi::MutableMessageBase::~MutableMessageBase(&a21);
  _Unwind_Resume(a1);
}

void sub_296F6A0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c59_ZTSN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c59_ZTSN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void antenna::QMICommandDriver::stewieSARWaitTime(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_296ECF000, v1, OS_LOG_TYPE_ERROR, "Not implemented stewie SAR wait time in this product", v2, 2u);
  }
}

void antenna::QMICommandDriver::getNVItems(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v9[0]) = 0;
    _os_log_error_impl(&dword_296ECF000, v3, OS_LOG_TYPE_ERROR, "Not supported", v9, 2u);
    v4 = *a2;
    if (!*a2)
    {
      return;
    }
  }

  else
  {
    v4 = *a2;
    if (!*a2)
    {
      return;
    }
  }

  if (*(a2 + 8))
  {
    v5 = _Block_copy(v4);
    v6 = v5;
    v7 = *(a2 + 8);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN7antenna7NVItemsEEEclIJbS2_EEEvDpT__block_invoke;
    v9[3] = &__block_descriptor_tmp_172_1;
    if (v5)
    {
      v8 = _Block_copy(v5);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v12 = 1;
    v11 = 0;
    dispatch_async(v7, v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }
}

atomic_ullong *std::shared_ptr<antenna::QMICommandDriver>::shared_ptr[abi:ne200100]<antenna::QMICommandDriver,std::shared_ptr<antenna::QMICommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::QMICommandDriver>(antenna::QMICommandDriver*)::{lambda(antenna::QMICommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E1B388;
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

void sub_296F6A428(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<antenna::QMICommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::QMICommandDriver>(antenna::QMICommandDriver*)::{lambda(antenna::QMICommandDriver*)#1}::operator() const(antenna::QMICommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<antenna::QMICommandDriver *,std::shared_ptr<antenna::QMICommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::QMICommandDriver>(antenna::QMICommandDriver*)::{lambda(antenna::QMICommandDriver *)#1},std::allocator<antenna::QMICommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<antenna::QMICommandDriver *,std::shared_ptr<antenna::QMICommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::QMICommandDriver>(antenna::QMICommandDriver*)::{lambda(antenna::QMICommandDriver *)#1},std::allocator<antenna::QMICommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<antenna::QMICommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::QMICommandDriver>(antenna::QMICommandDriver*)::{lambda(antenna::QMICommandDriver*)#1}::operator() const(antenna::QMICommandDriver*)::{lambda(void *)#1}::__invoke(antenna::QMICommandDriver *a1)
{
  if (a1)
  {
    antenna::QMICommandDriver::~QMICommandDriver(a1);

    operator delete(v1);
  }
}

void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E1B3D0;
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

uint64_t __copy_helper_block_e8_40c52_ZTSNSt3__110shared_ptrIKN7antenna13CommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c52_ZTSNSt3__110shared_ptrIKN7antenna13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<antenna::QMICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0>(antenna::QMICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::QMICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0,dispatch_queue_s::default_delete<antenna::QMICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  memset(&__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(*v2, *MEMORY[0x29EDC8FA8]);
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
  v5 = strlen(*MEMORY[0x29EDC9078]);
  v6 = v5;
  v7 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v5 != -1)
    {
      p_s1 = &__s1;
      size = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
      goto LABEL_9;
    }

LABEL_192:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v5 == -1)
  {
    goto LABEL_192;
  }

  size = __s1.__r_.__value_.__l.__size_;
  p_s1 = __s1.__r_.__value_.__r.__words[0];
LABEL_9:
  if (size >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = size;
  }

  if (!memcmp(p_s1, *MEMORY[0x29EDC9078], v10) && size == v6)
  {
    v17 = *(v2 + 16);
    if (v17)
    {
      v18 = _Block_copy(v17);
      v19 = *(v2 + 24);
      object = v18;
      v74 = v19;
      if (!v19)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v18 = 0;
      v19 = *(v2 + 24);
      object = 0;
      v74 = v19;
      if (!v19)
      {
LABEL_26:
        antenna::QMICommandDriver::txPowerCappingEnable_sync(v3, v2, &object);
        if (v19)
        {
          dispatch_release(v19);
        }

        if (v18)
        {
          goto LABEL_164;
        }

        goto LABEL_182;
      }
    }

    dispatch_retain(v19);
    goto LABEL_26;
  }

  v12 = *MEMORY[0x29EDC90F0];
  v13 = strlen(*MEMORY[0x29EDC90F0]);
  v14 = v13;
  if ((v7 & 0x80000000) == 0)
  {
    if (v13 != -1)
    {
      v15 = v7;
      if (v7 >= v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = v7;
      }

      if (memcmp(&__s1, v12, v16))
      {
        goto LABEL_43;
      }

LABEL_35:
      if (v15 != v14)
      {
        goto LABEL_43;
      }

      v21 = *(v2 + 16);
      if (v21)
      {
        v18 = _Block_copy(v21);
        v22 = *(v2 + 24);
        object = v18;
        v74 = v22;
        if (!v22)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v18 = 0;
        v22 = *(v2 + 24);
        object = 0;
        v74 = v22;
        if (!v22)
        {
LABEL_39:
          antenna::QMICommandDriver::transmitIndicationRegister_sync(v3, &object);
          if (v22)
          {
            dispatch_release(v22);
          }

          if (v18)
          {
            goto LABEL_164;
          }

          goto LABEL_182;
        }
      }

      dispatch_retain(v22);
      goto LABEL_39;
    }

LABEL_193:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v13 == -1)
  {
    goto LABEL_193;
  }

  v15 = __s1.__r_.__value_.__l.__size_;
  if (__s1.__r_.__value_.__l.__size_ >= v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = __s1.__r_.__value_.__l.__size_;
  }

  if (!memcmp(__s1.__r_.__value_.__l.__data_, v12, v20))
  {
    goto LABEL_35;
  }

LABEL_43:
  v23 = *MEMORY[0x29EDC90C0];
  v24 = strlen(*MEMORY[0x29EDC90C0]);
  v25 = v24;
  if ((v7 & 0x80000000) == 0)
  {
    if (v24 != -1)
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

      if (memcmp(&__s1, v23, v27))
      {
        goto LABEL_65;
      }

LABEL_57:
      if (v26 != v25)
      {
        goto LABEL_65;
      }

      v29 = *(v2 + 16);
      if (v29)
      {
        v18 = _Block_copy(v29);
        v30 = *(v2 + 24);
        object = v18;
        v74 = v30;
        if (!v30)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v18 = 0;
        v30 = *(v2 + 24);
        object = 0;
        v74 = v30;
        if (!v30)
        {
LABEL_61:
          antenna::QMICommandDriver::transmitIndicationEnable_sync(v3, v2, &object);
          if (v30)
          {
            dispatch_release(v30);
          }

          if (v18)
          {
            goto LABEL_164;
          }

          goto LABEL_182;
        }
      }

      dispatch_retain(v30);
      goto LABEL_61;
    }

LABEL_194:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v24 == -1)
  {
    goto LABEL_194;
  }

  v26 = __s1.__r_.__value_.__l.__size_;
  if (__s1.__r_.__value_.__l.__size_ >= v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = __s1.__r_.__value_.__l.__size_;
  }

  if (!memcmp(__s1.__r_.__value_.__l.__data_, v23, v28))
  {
    goto LABEL_57;
  }

LABEL_65:
  v31 = *MEMORY[0x29EDC9018];
  v32 = strlen(*MEMORY[0x29EDC9018]);
  v33 = v32;
  if ((v7 & 0x80000000) == 0)
  {
    if (v32 != -1)
    {
      v34 = v7;
      if (v7 >= v32)
      {
        v35 = v32;
      }

      else
      {
        v35 = v7;
      }

      if (memcmp(&__s1, v31, v35))
      {
        goto LABEL_87;
      }

LABEL_79:
      if (v34 != v33)
      {
        goto LABEL_87;
      }

      v37 = *(v2 + 16);
      if (v37)
      {
        v18 = _Block_copy(v37);
        v38 = *(v2 + 24);
        object = v18;
        v74 = v38;
        if (!v38)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v18 = 0;
        v38 = *(v2 + 24);
        object = 0;
        v74 = v38;
        if (!v38)
        {
LABEL_83:
          antenna::QMICommandDriver::txPowerCapping_sync(v3, v2, &object);
          if (v38)
          {
            dispatch_release(v38);
          }

          if (v18)
          {
            goto LABEL_164;
          }

          goto LABEL_182;
        }
      }

      dispatch_retain(v38);
      goto LABEL_83;
    }

LABEL_195:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v32 == -1)
  {
    goto LABEL_195;
  }

  v34 = __s1.__r_.__value_.__l.__size_;
  if (__s1.__r_.__value_.__l.__size_ >= v32)
  {
    v36 = v32;
  }

  else
  {
    v36 = __s1.__r_.__value_.__l.__size_;
  }

  if (!memcmp(__s1.__r_.__value_.__l.__data_, v31, v36))
  {
    goto LABEL_79;
  }

LABEL_87:
  v39 = *MEMORY[0x29EDC9080];
  v40 = strlen(*MEMORY[0x29EDC9080]);
  v41 = v40;
  if ((v7 & 0x80000000) != 0)
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
        goto LABEL_104;
      }

      goto LABEL_101;
    }

LABEL_196:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v40 == -1)
  {
    goto LABEL_196;
  }

  v42 = v7;
  if (v7 >= v40)
  {
    v43 = v40;
  }

  else
  {
    v43 = v7;
  }

  if (memcmp(&__s1, v39, v43))
  {
    goto LABEL_104;
  }

LABEL_101:
  if (v42 == v41)
  {
    v45 = *(v2 + 16);
    if (v45)
    {
      v18 = _Block_copy(v45);
    }

    else
    {
      v18 = 0;
    }

    v56 = *(v2 + 24);
    object = v18;
    v74 = v56;
    if (v56)
    {
      dispatch_retain(v56);
    }

    antenna::QMICommandDriver::txPowerConfiguration_sync(v3, v2, &object);
    if (v56)
    {
      dispatch_release(v56);
    }

    if (v18)
    {
      goto LABEL_164;
    }

    goto LABEL_182;
  }

LABEL_104:
  v46 = strlen(*MEMORY[0x29EDC90B8]);
  v47 = v46;
  if ((v7 & 0x80000000) == 0)
  {
    if (v46 != -1)
    {
      v48 = &__s1;
      v49 = v7;
      goto LABEL_111;
    }

LABEL_197:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v46 == -1)
  {
    goto LABEL_197;
  }

  v49 = __s1.__r_.__value_.__l.__size_;
  v48 = __s1.__r_.__value_.__r.__words[0];
LABEL_111:
  if (v49 >= v47)
  {
    v50 = v47;
  }

  else
  {
    v50 = v49;
  }

  if (memcmp(v48, *MEMORY[0x29EDC90B8], v50) || v49 != v47)
  {
    v52 = strlen(*MEMORY[0x29EDC90C8]);
    v53 = v52;
    if ((v7 & 0x80000000) != 0)
    {
      if (v52 != -1)
      {
        v55 = __s1.__r_.__value_.__l.__size_;
        v54 = __s1.__r_.__value_.__r.__words[0];
LABEL_130:
        if (v55 >= v53)
        {
          v57 = v53;
        }

        else
        {
          v57 = v55;
        }

        if (!memcmp(v54, *MEMORY[0x29EDC90C8], v57) && v55 == v53)
        {
          v58 = *(v2 + 16);
          if (v58)
          {
            v18 = _Block_copy(v58);
          }

          else
          {
            v18 = 0;
          }

          v68 = *(v2 + 24);
          object = v18;
          v74 = v68;
          if (v68)
          {
            dispatch_retain(v68);
          }

          antenna::QMICommandDriver::e75AccessoryStatusARTD_sync(v3, v2, &object);
          if (v68)
          {
            dispatch_release(v68);
          }

          if (v18)
          {
            goto LABEL_164;
          }

          goto LABEL_182;
        }

        v59 = strlen(*MEMORY[0x29EDC8FF8]);
        v60 = v59;
        if ((v7 & 0x80000000) != 0)
        {
          if (v59 != -1)
          {
            v62 = __s1.__r_.__value_.__l.__size_;
            v61 = __s1.__r_.__value_.__r.__words[0];
LABEL_149:
            if (v62 >= v60)
            {
              v64 = v60;
            }

            else
            {
              v64 = v62;
            }

            if (!memcmp(v61, *MEMORY[0x29EDC8FF8], v64) && v62 == v60)
            {
              dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(&object, v2 + 16);
              antenna::QMICommandDriver::antennaSwitch_sync(v3, v2, &object);
LABEL_181:
              dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&object);
              goto LABEL_182;
            }

            v65 = strlen(*MEMORY[0x29EDC9098]);
            v66 = v65;
            if ((v7 & 0x80000000) != 0)
            {
              if (v65 != -1)
              {
                v7 = __s1.__r_.__value_.__l.__size_;
                v67 = __s1.__r_.__value_.__r.__words[0];
LABEL_167:
                if (v7 >= v66)
                {
                  v69 = v66;
                }

                else
                {
                  v69 = v7;
                }

                if (!memcmp(v67, *MEMORY[0x29EDC9098], v69) && v7 == v66)
                {
                  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(&object, v2 + 16);
                  antenna::QMICommandDriver::wiredPortNotification_sync(v3, v2, &object);
                }

                else if (!std::string::compare(&__s1, *MEMORY[0x29EDC8FE0]))
                {
                  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(&object, v2 + 16);
                  antenna::QMICommandDriver::speakerState_sync(v3, v2, &object);
                }

                else if (!std::string::compare(&__s1, *MEMORY[0x29EDC9068]))
                {
                  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(&object, v2 + 16);
                  antenna::QMICommandDriver::handDetectionState_sync(v3, v2, &object);
                }

                else if (!std::string::compare(&__s1, *MEMORY[0x29EDC9048]))
                {
                  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(&object, v2 + 16);
                  antenna::QMICommandDriver::powerSourceState_sync(v3, v2, &object);
                }

                else
                {
                  if (std::string::compare(&__s1, *MEMORY[0x29EDC9010]))
                  {
                    goto LABEL_182;
                  }

                  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(&object, v2 + 16);
                  antenna::QMICommandDriver::deviceMaterial_sync(v3, v2, &object);
                }

                goto LABEL_181;
              }
            }

            else if (v65 != -1)
            {
              v67 = &__s1;
              goto LABEL_167;
            }

            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else if (v59 != -1)
        {
          v61 = &__s1;
          v62 = v7;
          goto LABEL_149;
        }

        std::string::__throw_out_of_range[abi:ne200100]();
      }
    }

    else if (v52 != -1)
    {
      v54 = &__s1;
      v55 = v7;
      goto LABEL_130;
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v51 = *(v2 + 16);
  if (v51)
  {
    v18 = _Block_copy(v51);
  }

  else
  {
    v18 = 0;
  }

  v63 = *(v2 + 24);
  object = v18;
  v74 = v63;
  if (v63)
  {
    dispatch_retain(v63);
  }

  antenna::QMICommandDriver::e75AccessoryStatusRF_sync(v3, v2, &object);
  if (v63)
  {
    dispatch_release(v63);
  }

  if (v18)
  {
LABEL_164:
    _Block_release(v18);
  }

LABEL_182:
  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

  v70 = *(v2 + 24);
  if (v70)
  {
    dispatch_release(v70);
  }

  v71 = *(v2 + 16);
  if (v71)
  {
    _Block_release(v71);
  }

  xpc_release(*v2);
  operator delete(v2);
  v72 = a1[2];
  if (v72 && !atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v72->__on_zero_shared)(v72);
    std::__shared_weak_count::__release_weak(v72);
  }

  operator delete(a1);
}

void sub_296F6AFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&object);
  if (a19 < 0)
  {
    operator delete(__p);
    std::unique_ptr<antenna::QMICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0,std::default_delete<dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&>>::~unique_ptr[abi:ne200100](&a11);
    std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<antenna::QMICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0,std::default_delete<dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<antenna::QMICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0,std::default_delete<dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      _Block_release(v4);
    }

    xpc_release(*v2);
    operator delete(v2);
  }

  return a1;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::LimitEnable>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::LimitEnable>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1B428;
  return result;
}

char *qmi::MutableMessageBase::createTLV<bsp::tlv::abm::SvcType>(void *a1)
{
  v2 = operator new(0x10uLL);
  v3 = v2;
  v2[4] = 16;
  *v2 = &unk_2A1E1B478;
  v5 = a1[2];
  v4 = a1[3];
  if (v5 >= v4)
  {
    v7 = a1[1];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = operator new(8 * v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[8 * v9];
    *v14 = v3;
    v6 = v14 + 8;
    memcpy(v13, v7, v8);
    a1[1] = v13;
    a1[2] = v6;
    a1[3] = &v13[8 * v12];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v2;
    v6 = v5 + 8;
  }

  a1[2] = v6;
  return v3 + 9;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::SvcType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::SvcType>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1B478;
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm18TxPwr_Limit_Enable7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v21 = 0;
  v4 = a1[6];
  if (v4)
  {
    v21 = std::__shared_weak_count::lock(v4);
    if (!v21)
    {
      goto LABEL_24;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v23 = v8, v24 = 2080, v25 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm18TxPwr_Limit_Enable7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_24:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_296F6B5DC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void __copy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrIN7antenna13CommandDriverEEE56c59_ZTSN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[7];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a2[8];
  a1[7] = v5;
  a1[8] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrIN7antenna13CommandDriverEEE56c59_ZTSN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm18TxPwr_Limit_Enable7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
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

void ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  cast_message_type<qmi::ResponseBase const&>::cast(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_296F6B8EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZNK3qmi6Client13setIndHandlerIRKN3bsp3abm20TxPwrLimitIndication10IndicationEEEvtU13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::MessageBase::MessageBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F6B9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNK3qmi6Client13setIndHandlerIRKN3bsp3abm16TransmitStateInd10IndicationEEEvtU13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::MessageBase::MessageBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F6BAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, v1, &object);
  xpc_release(object);
}

xpc_object_t __copy_helper_block_e8_32c56_ZTSN8dispatch5blockIU13block_pointerFvbN3xpc6objectEEEE40c17_ZTSN3xpc6objectE(uint64_t a1, uint64_t a2)
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

void __destroy_helper_block_e8_32c56_ZTSN8dispatch5blockIU13block_pointerFvbN3xpc6objectEEEE40c17_ZTSN3xpc6objectE(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::NotificationEnable>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::NotificationEnable>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1B528;
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm25TxPwr_Notification_Enable7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v21 = 0;
  v4 = a1[6];
  if (v4)
  {
    v21 = std::__shared_weak_count::lock(v4);
    if (!v21)
    {
      goto LABEL_24;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v23 = v8, v24 = 2080, v25 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm25TxPwr_Notification_Enable7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_24:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_296F6BF7C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm25TxPwr_Notification_Enable7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
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

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TransmitEnable>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TransmitEnable>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1B5A8;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm22TransmitStateIndConfig8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F6C2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm14TxPwr_Stop_Cap7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v21 = 0;
  v4 = a1[6];
  if (v4)
  {
    v21 = std::__shared_weak_count::lock(v4);
    if (!v21)
    {
      goto LABEL_24;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v23 = v8, v24 = 2080, v25 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm14TxPwr_Stop_Cap7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_24:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_296F6C590(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm14TxPwr_Stop_Cap7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
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

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::PhoneBackoffLevel>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::PhoneBackoffLevel>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1B628;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AntennaFreeSpaceConfigLevel>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AntennaFreeSpaceConfigLevel>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1B678;
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm15TxPwr_Start_Cap7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v21 = 0;
  v4 = a1[6];
  if (v4)
  {
    v21 = std::__shared_weak_count::lock(v4);
    if (!v21)
    {
      goto LABEL_24;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v23 = v8, v24 = 2080, v25 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm15TxPwr_Start_Cap7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_24:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_296F6CB0C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm15TxPwr_Start_Cap7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
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

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TechType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TechType>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1B6F8;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::CLTMPercentile>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::CLTMPercentile>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1B748;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::CLTMDutyCycle>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::CLTMDutyCycle>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1B798;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::LimitTimeout>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::LimitTimeout>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1B7E8;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::LimitTimeoutPhone>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::LimitTimeoutPhone>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1B838;
  *(result + 5) = *(a1 + 10);
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm13TxPwrConfigV37RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v21 = 0;
  v4 = a1[6];
  if (v4)
  {
    v21 = std::__shared_weak_count::lock(v4);
    if (!v21)
    {
      goto LABEL_24;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v23 = v8, v24 = 2080, v25 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm13TxPwrConfigV37RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_24:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_296F6D23C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm13TxPwrConfigV37RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
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

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryStatus>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryStatus>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1B8B8;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryType>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1B908;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm19AccessoryAttachment7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v21 = 0;
  v4 = a1[6];
  if (v4)
  {
    v21 = std::__shared_weak_count::lock(v4);
    if (!v21)
    {
      goto LABEL_24;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v23 = v8, v24 = 2080, v25 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm19AccessoryAttachment7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_24:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_296F6D7C8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm19AccessoryAttachment7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
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

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryStatusARTD>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryStatusARTD>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1B988;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryTypeARTD>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryTypeARTD>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1B9D8;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm23AccessoryAttachmentARTD7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v21 = 0;
  v4 = a1[6];
  if (v4)
  {
    v21 = std::__shared_weak_count::lock(v4);
    if (!v21)
    {
      goto LABEL_24;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v23 = v8, v24 = 2080, v25 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm23AccessoryAttachmentARTD7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_24:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_296F6DD54(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm23AccessoryAttachmentARTD7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
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

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TxAntennaConfigInfo>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TxAntennaConfigInfo>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1BA58;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::ARTDConfigInfo>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::ARTDConfigInfo>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1BAA8;
  *(result + 5) = *(a1 + 10);
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm13AntennaConfig7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v21 = 0;
  v4 = a1[6];
  if (v4)
  {
    v21 = std::__shared_weak_count::lock(v4);
    if (!v21)
    {
      goto LABEL_24;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v23 = v8, v24 = 2080, v25 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm13AntennaConfig7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_24:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_296F6E2E0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm13AntennaConfig7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
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

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::WiredPortStatus>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::WiredPortStatus>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1BB28;
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm21WiredPortNotification7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v21 = 0;
  v4 = a1[6];
  if (v4)
  {
    v21 = std::__shared_weak_count::lock(v4);
    if (!v21)
    {
      goto LABEL_24;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v23 = v8, v24 = 2080, v25 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm21WiredPortNotification7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_24:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_296F6E7D8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm21WiredPortNotification7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
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

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::SpeakerState>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::SpeakerState>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1BBA8;
  *(result + 5) = *(a1 + 10);
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm12TxPwrSpeaker7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v21 = 0;
  v4 = a1[6];
  if (v4)
  {
    v21 = std::__shared_weak_count::lock(v4);
    if (!v21)
    {
      goto LABEL_24;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v23 = v8, v24 = 2080, v25 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm12TxPwrSpeaker7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_24:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_296F6ECD8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm12TxPwrSpeaker7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
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

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::HandState>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::HandState>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1BC28;
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm18TxPwrHandDetection7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v21 = 0;
  v4 = a1[6];
  if (v4)
  {
    v21 = std::__shared_weak_count::lock(v4);
    if (!v21)
    {
      goto LABEL_24;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v23 = v8, v24 = 2080, v25 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm18TxPwrHandDetection7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_24:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_296F6F1D0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm18TxPwrHandDetection7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
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

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::PowerSourceState>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::PowerSourceState>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1BCA8;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm16PowerSourceState7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v21 = 0;
  v4 = a1[6];
  if (v4)
  {
    v21 = std::__shared_weak_count::lock(v4);
    if (!v21)
    {
      goto LABEL_24;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v23 = v8, v24 = 2080, v25 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm16PowerSourceState7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_24:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_296F6F6D0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm16PowerSourceState7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
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

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::BottomEnclosure>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::BottomEnclosure>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1BD28;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TopEnclosure>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TopEnclosure>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1BD78;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::FCMType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::FCMType>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1BDC8;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::BCMType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::BCMType>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1BE18;
  *(result + 5) = *(a1 + 10);
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm14DeviceMaterial7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v21 = 0;
  v4 = a1[6];
  if (v4)
  {
    v21 = std::__shared_weak_count::lock(v4);
    if (!v21)
    {
      goto LABEL_24;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v23 = v8, v24 = 2080, v25 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm14DeviceMaterial7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_24:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_296F6FD74(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm14DeviceMaterial7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
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