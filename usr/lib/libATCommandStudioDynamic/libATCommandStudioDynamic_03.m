void sub_296304048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__exception_guard_exceptions<std::vector<std::shared_ptr<qmi::ServerAccepter>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void QMIServerConnection::shutdown(QMIServerConnection *this)
{
  v3 = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18BBServerConnectionE20execute_wrapped_syncIZN19QMIServerConnection8shutdownEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
  block[3] = &__block_descriptor_tmp;
  block[4] = this + 8;
  block[5] = &v3;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void QMIServerConnection::loadMappings_sync(capabilities::ipc *a1@<X0>, void *a2@<X1>, __CFDictionary **a3@<X8>)
{
  *(&v126 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v127 = 0x5AAAAAAAAAAAAAALL;
  *&v126 = 0xAAAA003278756D71;
  memset(&v125[4], 170, 7);
  v5 = capabilities::ipc::supportsPCI(a1);
  if ((v5 & 1) != 0 || config::hw::watch(v5))
  {
    v6 = 0xAAAA003178756D71;
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
LABEL_4:
      HIBYTE(v127) = 12;
      v7 = &v126;
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0xAAAA003278756D71;
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  *(&v126 + 1) = 12;
  v7 = v126;
LABEL_7:
  strcpy(v7, "qmux_control");
  v9 = a2 + 1;
  v8 = a2[1];
  memset(v125, 170, 24);
  if (v8)
  {
    do
    {
      v10 = v8;
      v8 = v8[1];
    }

    while (v8);
  }

  else
  {
    v11 = a2 + 1;
    do
    {
      v10 = v11[2];
      v17 = *v10 == v11;
      v11 = v10;
    }

    while (v17);
  }

  v100 = a3;
  QMux::getName((v10 + 4), v125);
  if (v9 != *a2)
  {
    v12 = a2 + 1;
    do
    {
      v13 = *v12;
      v14 = v12;
      if (*v12)
      {
        do
        {
          v15 = v13;
          v13 = v13[1];
        }

        while (v13);
      }

      else
      {
        do
        {
          v15 = v14[2];
          v17 = *v15 == v14;
          v14 = v15;
        }

        while (v17);
      }

      QMux::getName((v15 + 4), v107);
      if (SHIBYTE(v125[2]) < 0)
      {
        operator delete(v125[0]);
        v125[2] = *&v107[16];
        *v125 = *v107;
        v16 = v107[23];
        if ((v107[23] & 0x80000000) == 0)
        {
LABEL_21:
          if (v16 != 12)
          {
            break;
          }

          v17 = v125[0] == 0x6E6F635F78756D71 && LODWORD(v125[1]) == 1819243124;
          if (!v17)
          {
            break;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v125[2] = *&v107[16];
        *v125 = *v107;
        v16 = v107[23];
        if ((v107[23] & 0x80000000) == 0)
        {
          goto LABEL_21;
        }
      }

      if (v125[1] != 12)
      {
        break;
      }

      if (*v125[0] != 0x6E6F635F78756D71 || *(v125[0] + 8) != 1819243124)
      {
        break;
      }

LABEL_34:
      v19 = *v12;
      if (*v12)
      {
        do
        {
          v20 = v19;
          v19 = v19[1];
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v12[2];
          v17 = *v20 == v12;
          v12 = v20;
        }

        while (v17);
      }

      v12 = v20;
    }

    while (v20 != *a2);
  }

  v124 = 0;
  v21 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v24 = Mutable;
  if (Mutable)
  {
    v124 = Mutable;
  }

  if (SHIBYTE(v127) < 0)
  {
    std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
  }

  else
  {
    *v107 = v126;
    *&v107[16] = v127;
  }

  ctu::cf::insert<char const*,std::string>(v24, "cellmonitor", v107, v21, v23);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_46:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_49;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_49:
  ctu::cf::insert<char const*,std::string>(v24, "radio", v107, v21, v25);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_51:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_54;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_54:
  ctu::cf::insert<char const*,std::string>(v24, "audio", v107, v21, v26);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_56;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_56:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_59;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_59:
  ctu::cf::insert<char const*,std::string>(v24, "voice", v107, v21, v27);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v125[2]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }
  }

  else if ((SHIBYTE(v125[2]) & 0x80000000) == 0)
  {
LABEL_61:
    *v107 = *v125;
    *&v107[16] = v125[2];
    goto LABEL_64;
  }

  std::string::__init_copy_ctor_external(v107, v125[0], v125[1]);
LABEL_64:
  ctu::cf::insert<char const*,std::string>(v24, "sms", v107, v21, v28);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_66:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_69;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_69:
  ctu::cf::insert<char const*,std::string>(v24, "location", v107, v21, v29);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_71:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_74;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_74:
  ctu::cf::insert<char const*,std::string>(v24, "sim", v107, v21, v30);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_76;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_76:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_79;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_79:
  ctu::cf::insert<char const*,std::string>(v24, "ims", v107, v21, v31);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_81;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_81:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_84;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_84:
  ctu::cf::insert<char const*,std::string>(v24, "coex", v107, v21, v32);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_86;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_86:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_89;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_89:
  ctu::cf::insert<char const*,std::string>(v24, "phonebook", v107, v21, v33);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_91;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_91:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_94;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_94:
  ctu::cf::insert<char const*,std::string>(v24, "vinyl", v107, v21, v34);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_96;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_96:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_99;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_99:
  ctu::cf::insert<char const*,std::string>(v24, "eos", v107, v21, v35);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_101;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_101:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_104;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_104:
  ctu::cf::insert<char const*,std::string>(v24, "diag", v107, v21, v36);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_106;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_106:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_109;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_109:
  ctu::cf::insert<char const*,std::string>(v24, "bsp", v107, v21, v37);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_111;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_111:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_114;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_114:
  ctu::cf::insert<char const*,std::string>(v24, "dms", v107, v21, v38);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_116;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_116:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_119;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_119:
  ctu::cf::insert<char const*,std::string>(v24, "awd", v107, v21, v39);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_121;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_121:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_124;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_124:
  ctu::cf::insert<char const*,std::string>(v24, "cat", v107, v21, v40);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_126;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_126:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_129;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_129:
  ctu::cf::insert<char const*,std::string>(v24, "elqm", v107, v21, v41);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_131;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_131:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_134;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_134:
  ctu::cf::insert<char const*,std::string>(v24, "pdc", v107, v21, v42);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_136;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_136:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_139;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_139:
  ctu::cf::insert<char const*,std::string>(v24, "dsd", v107, v21, v43);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_141;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_141:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_144;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_144:
  ctu::cf::insert<char const*,std::string>(v24, "antenna", v107, v21, v44);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_146;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_146:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_149;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_149:
  ctu::cf::insert<char const*,std::string>(v24, "p2p", v107, v21, v45);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_151;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_151:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_154;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_154:
  ctu::cf::insert<char const*,std::string>(v24, "at", v107, v21, v46);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_156;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_156:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_159;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_159:
  ctu::cf::insert<char const*,std::string>(v24, "media", v107, v21, v47);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_161;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_161:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_164;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_164:
  ctu::cf::insert<char const*,std::string>(v24, "wda", v107, v21, v48);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_166;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_166:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_169;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_169:
  ctu::cf::insert<char const*,std::string>(v24, "dfs", v107, v21, v49);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_171;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_171:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_174;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_174:
  ctu::cf::insert<char const*,std::string>(v24, "ssctl", v107, v21, v50);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_176;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
LABEL_176:
    *v107 = v126;
    *&v107[16] = v127;
    goto LABEL_179;
  }

  std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
LABEL_179:
  ctu::cf::insert<char const*,std::string>(v24, "stw", v107, v21, v51);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
  }

  *v107 = v6;
  *&v107[8] = 0xAAAAAAAAAAAAAAAALL;
  *&v107[16] = v125[4];
  *&v107[19] = *(&v125[4] + 3);
  v107[23] = 5;
  ctu::cf::insert<char const*,std::string>(v24, "registration", v107, v21, v52);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
  }

  *v107 = v6;
  *&v107[8] = 0xAAAAAAAAAAAAAAAALL;
  *&v107[16] = v125[4];
  *&v107[19] = *(&v125[4] + 3);
  v107[23] = 5;
  ctu::cf::insert<char const*,std::string>(v24, "ussd", v107, v21, v53);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
  }

  *v107 = v6;
  *&v107[8] = 0xAAAAAAAAAAAAAAAALL;
  *&v107[16] = v125[4];
  *&v107[19] = *(&v125[4] + 3);
  v107[23] = 5;
  ctu::cf::insert<char const*,std::string>(v24, "supp", v107, v21, v54);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
  }

  *v107 = v6;
  *&v107[8] = 0xAAAAAAAAAAAAAAAALL;
  *&v107[16] = v125[4];
  *&v107[19] = *(&v125[4] + 3);
  v107[23] = 5;
  ctu::cf::insert<char const*,std::string>(v24, "settings", v107, v21, v55);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
  }

  *v107 = v6;
  *&v107[8] = 0xAAAAAAAAAAAAAAAALL;
  *&v107[16] = v125[4];
  *&v107[19] = *(&v125[4] + 3);
  v107[23] = 5;
  ctu::cf::insert<char const*,std::string>(v24, "desense", v107, v21, v56);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
  }

  ctu::cf::insert<char const*,char const*>(v24, "logchan", v21, v57, v58);
  ctu::cf::insert<char const*,char const*>(v24, "dormancy", v21, v59, v60);
  ctu::cf::insert<char const*,char const*>(v24, "aqm", v21, v61, v62);
  ctu::cf::insert<char const*,char const*>(v24, "subscriber", v21, v63, v64);
  if (!capabilities::ipc::supportsPCI(v65))
  {
    goto LABEL_196;
  }

  if (SHIBYTE(v127) < 0)
  {
    std::string::__init_copy_ctor_external(v107, v126, *(&v126 + 1));
  }

  else
  {
    *v107 = v126;
    *&v107[16] = v127;
  }

  ctu::cf::insert<char const*,std::string>(v24, "debug_ipc", v107, v21, v66);
  if ((v107[23] & 0x80000000) != 0)
  {
    operator delete(*v107);
    v67 = *a2;
    if (*a2 != v9)
    {
      goto LABEL_197;
    }
  }

  else
  {
LABEL_196:
    v67 = *a2;
    if (*a2 != v9)
    {
LABEL_197:
      LODWORD(v68) = 0;
      v69 = *(MEMORY[0x29EDC9528] + 64);
      v103 = v69;
      v104 = *MEMORY[0x29EDC9528];
      v101 = v9;
      v102 = *(MEMORY[0x29EDC9528] + 72);
      while (1)
      {
        v123 = 0xAAAAAAAAAAAAAAAALL;
        *&v70 = 0xAAAAAAAAAAAAAAAALL;
        *(&v70 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v121 = v70;
        v122 = v70;
        v119 = v70;
        v120 = v70;
        v117 = v70;
        v118 = v70;
        v115 = v70;
        v116 = v70;
        v113 = v70;
        v114 = v70;
        *__p = v70;
        v112 = v70;
        v109 = v70;
        v110 = v70;
        *&v107[16] = v70;
        v108 = v70;
        *v107 = v70;
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v107);
        v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v107[16], "coredump_", 9);
        v68 = (v68 + 1);
        MEMORY[0x29C259270](v71, v68);
        if ((BYTE8(v113) & 0x10) != 0)
        {
          v74 = v113;
          v75 = &v110;
          if (v113 < *(&v110 + 1))
          {
            *&v113 = *(&v110 + 1);
            v74 = *(&v110 + 1);
            v75 = &v110;
          }
        }

        else
        {
          if ((BYTE8(v113) & 8) == 0)
          {
            v72 = 0;
            *(&__dst.__r_.__value_.__s + 23) = 0;
            p_dst = &__dst;
            goto LABEL_214;
          }

          v74 = *(&v109 + 1);
          v75 = &v108 + 1;
        }

        v76 = *v75;
        v72 = v74 - *v75;
        if (v72 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v72 >= 0x17)
        {
          break;
        }

        *(&__dst.__r_.__value_.__s + 23) = v74 - *v75;
        p_dst = &__dst;
        if (v72)
        {
          goto LABEL_213;
        }

LABEL_214:
        p_dst->__r_.__value_.__s.__data_[v72] = 0;
        QMux::getName((v67 + 4), &v105);
        v78 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v129, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        }

        else
        {
          v129 = __dst;
        }

        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v128, v105.__r_.__value_.__l.__data_, v105.__r_.__value_.__l.__size_);
        }

        else
        {
          v128 = v105;
        }

        ctu::cf::insert<std::string,std::string>();
        if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v128.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_222:
            if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_233;
            }

            goto LABEL_223;
          }
        }

        else if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_222;
        }

        operator delete(v129.__r_.__value_.__l.__data_);
        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_233:
          operator delete(v105.__r_.__value_.__l.__data_);
          if ((v78 & 0x80000000) == 0)
          {
            goto LABEL_224;
          }

          goto LABEL_234;
        }

LABEL_223:
        if ((v78 & 0x80000000) == 0)
        {
          goto LABEL_224;
        }

LABEL_234:
        operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_224:
        *v107 = v104;
        *&v107[*(v104 - 24)] = v103;
        *&v107[16] = v102;
        *&v107[24] = MEMORY[0x29EDC9570] + 16;
        if (SHIBYTE(v112) < 0)
        {
          operator delete(__p[1]);
        }

        *&v107[24] = MEMORY[0x29EDC9568] + 16;
        std::locale::~locale(&v108);
        std::iostream::~basic_iostream();
        MEMORY[0x29C259330](&v114);
        v123 = 0xAAAAAAAAAAAAAAAALL;
        *&v79 = 0xAAAAAAAAAAAAAAAALL;
        *(&v79 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v121 = v79;
        v122 = v79;
        v119 = v79;
        v120 = v79;
        v117 = v79;
        v118 = v79;
        v115 = v79;
        v116 = v79;
        v113 = v79;
        v114 = v79;
        *__p = v79;
        v112 = v79;
        v109 = v79;
        v110 = v79;
        *&v107[16] = v79;
        v108 = v79;
        *v107 = v79;
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v107);
        v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v107[16], "data_", 5);
        MEMORY[0x29C259270](v80, v68);
        if ((BYTE8(v113) & 0x10) != 0)
        {
          v83 = v113;
          v84 = &v110;
          if (v113 < *(&v110 + 1))
          {
            *&v113 = *(&v110 + 1);
            v83 = *(&v110 + 1);
            v84 = &v110;
          }
        }

        else
        {
          if ((BYTE8(v113) & 8) == 0)
          {
            v81 = 0;
            *(&__dst.__r_.__value_.__s + 23) = 0;
            v82 = &__dst;
            goto LABEL_245;
          }

          v83 = *(&v109 + 1);
          v84 = &v108 + 1;
        }

        v85 = *v84;
        v81 = v83 - *v84;
        if (v81 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v81 >= 0x17)
        {
          if ((v81 | 7) == 0x17)
          {
            v86 = 25;
          }

          else
          {
            v86 = (v81 | 7) + 1;
          }

          v82 = operator new(v86);
          __dst.__r_.__value_.__l.__size_ = v81;
          __dst.__r_.__value_.__r.__words[2] = v86 | 0x8000000000000000;
          __dst.__r_.__value_.__r.__words[0] = v82;
LABEL_244:
          memmove(v82, v85, v81);
          goto LABEL_245;
        }

        *(&__dst.__r_.__value_.__s + 23) = v83 - *v84;
        v82 = &__dst;
        if (v81)
        {
          goto LABEL_244;
        }

LABEL_245:
        v82->__r_.__value_.__s.__data_[v81] = 0;
        QMux::getName((v67 + 4), &v105);
        v87 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v129, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        }

        else
        {
          v129 = __dst;
        }

        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v128, v105.__r_.__value_.__l.__data_, v105.__r_.__value_.__l.__size_);
        }

        else
        {
          v128 = v105;
        }

        ctu::cf::insert<std::string,std::string>();
        if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v128.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_253:
            if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_264;
            }

            goto LABEL_254;
          }
        }

        else if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_253;
        }

        operator delete(v129.__r_.__value_.__l.__data_);
        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_264:
          operator delete(v105.__r_.__value_.__l.__data_);
          if ((v87 & 0x80000000) == 0)
          {
            goto LABEL_255;
          }

          goto LABEL_265;
        }

LABEL_254:
        if ((v87 & 0x80000000) == 0)
        {
          goto LABEL_255;
        }

LABEL_265:
        operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_255:
        *v107 = v104;
        *&v107[*(v104 - 24)] = v103;
        *&v107[16] = v102;
        *&v107[24] = MEMORY[0x29EDC9570] + 16;
        if (SHIBYTE(v112) < 0)
        {
          operator delete(__p[1]);
        }

        *&v107[24] = MEMORY[0x29EDC9568] + 16;
        std::locale::~locale(&v108);
        std::iostream::~basic_iostream();
        MEMORY[0x29C259330](&v114);
        v123 = 0xAAAAAAAAAAAAAAAALL;
        *&v88 = 0xAAAAAAAAAAAAAAAALL;
        *(&v88 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v121 = v88;
        v122 = v88;
        v119 = v88;
        v120 = v88;
        v117 = v88;
        v118 = v88;
        v115 = v88;
        v116 = v88;
        v113 = v88;
        v114 = v88;
        *__p = v88;
        v112 = v88;
        v109 = v88;
        v110 = v88;
        *&v107[16] = v88;
        v108 = v88;
        *v107 = v88;
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v107);
        v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v107[16], "qos_", 4);
        MEMORY[0x29C259270](v89, v68);
        if ((BYTE8(v113) & 0x10) != 0)
        {
          v92 = v113;
          v93 = &v110;
          if (v113 < *(&v110 + 1))
          {
            *&v113 = *(&v110 + 1);
            v92 = *(&v110 + 1);
            v93 = &v110;
          }
        }

        else
        {
          if ((BYTE8(v113) & 8) == 0)
          {
            v90 = 0;
            *(&__dst.__r_.__value_.__s + 23) = 0;
            v91 = &__dst;
            goto LABEL_276;
          }

          v92 = *(&v109 + 1);
          v93 = &v108 + 1;
        }

        v94 = *v93;
        v90 = v92 - *v93;
        if (v90 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v90 >= 0x17)
        {
          if ((v90 | 7) == 0x17)
          {
            v95 = 25;
          }

          else
          {
            v95 = (v90 | 7) + 1;
          }

          v91 = operator new(v95);
          __dst.__r_.__value_.__l.__size_ = v90;
          __dst.__r_.__value_.__r.__words[2] = v95 | 0x8000000000000000;
          __dst.__r_.__value_.__r.__words[0] = v91;
LABEL_275:
          memmove(v91, v94, v90);
          goto LABEL_276;
        }

        *(&__dst.__r_.__value_.__s + 23) = v92 - *v93;
        v91 = &__dst;
        if (v90)
        {
          goto LABEL_275;
        }

LABEL_276:
        v91->__r_.__value_.__s.__data_[v90] = 0;
        QMux::getName((v67 + 4), &v105);
        v24 = v124;
        v96 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v129, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        }

        else
        {
          v129 = __dst;
        }

        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v128, v105.__r_.__value_.__l.__data_, v105.__r_.__value_.__l.__size_);
        }

        else
        {
          v128 = v105;
        }

        ctu::cf::insert<std::string,std::string>();
        if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v128.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_284:
            if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_285;
            }

            goto LABEL_296;
          }
        }

        else if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_284;
        }

        operator delete(v129.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_285:
          if (v96 < 0)
          {
            goto LABEL_297;
          }

          goto LABEL_286;
        }

LABEL_296:
        operator delete(v105.__r_.__value_.__l.__data_);
        if (v96 < 0)
        {
LABEL_297:
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

LABEL_286:
        *v107 = v104;
        *&v107[*(v104 - 24)] = v103;
        *&v107[16] = v102;
        *&v107[24] = MEMORY[0x29EDC9570] + 16;
        if (SHIBYTE(v112) < 0)
        {
          operator delete(__p[1]);
        }

        *&v107[24] = MEMORY[0x29EDC9568] + 16;
        std::locale::~locale(&v108);
        std::iostream::~basic_iostream();
        MEMORY[0x29C259330](&v114);
        v97 = v67[1];
        if (v97)
        {
          do
          {
            v98 = v97;
            v97 = *v97;
          }

          while (v97);
        }

        else
        {
          do
          {
            v98 = v67[2];
            v17 = *v98 == v67;
            v67 = v98;
          }

          while (!v17);
        }

        v67 = v98;
        if (v98 == v101)
        {
          goto LABEL_299;
        }
      }

      if ((v72 | 7) == 0x17)
      {
        v77 = 25;
      }

      else
      {
        v77 = (v72 | 7) + 1;
      }

      p_dst = operator new(v77);
      __dst.__r_.__value_.__l.__size_ = v72;
      __dst.__r_.__value_.__r.__words[2] = v77 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = p_dst;
LABEL_213:
      memmove(p_dst, v76, v72);
      goto LABEL_214;
    }
  }

LABEL_299:
  if (v24)
  {
    v99 = CFGetTypeID(v24);
    if (v99 == CFDictionaryGetTypeID())
    {
      *v100 = v24;
      CFRetain(v24);
    }

    else
    {
      *v100 = 0;
    }

    CFRelease(v24);
  }

  else
  {
    *v100 = 0;
  }

  if ((SHIBYTE(v125[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      return;
    }

LABEL_309:
    operator delete(v126);
    return;
  }

  operator delete(v125[0]);
  if (SHIBYTE(v127) < 0)
  {
    goto LABEL_309;
  }
}

void sub_2963058B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v38 - 232));
  if (*(v38 - 201) < 0)
  {
    operator delete(*(v38 - 224));
    if ((*(v38 - 161) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((*(v38 - 161) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

  operator delete(*(v38 - 184));
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  *(a1 + 128) = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x29EDC9590] + 64;
  *(a1 + 16) = MEMORY[0x29EDC9590] + 64;
  v5 = a1 + 24;
  v6 = MEMORY[0x29EDC9528];
  v7 = *(MEMORY[0x29EDC9528] + 24);
  v8 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v10 = MEMORY[0x29EDC9590] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v6[5];
  v12 = v6[4];
  *(a1 + 16) = v12;
  *(v3 + *(v12 - 24)) = v11;
  v13 = v6[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v6[6];
  *a1 = v10;
  *(a1 + 128) = v2;
  v14 = MEMORY[0x29EDC9568] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  MEMORY[0x29C2592E0](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v5);
  return a1;
}

void sub_296305DEC(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C259330](v1);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C259330](a1 + 128);
  return a1;
}

{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void ***std::__exception_guard_exceptions<std::vector<std::shared_ptr<qmi::ServerAccepter>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void dispatch::async<void ctu::SharedSynchronizable<BBServerConnection>::execute_wrapped<QMIServerConnection::init(std::vector<std::shared_ptr<qmi::ServerAccepter>> const&,xpc::connection const&)::$_0>(QMIServerConnection::init(std::vector<std::shared_ptr<qmi::ServerAccepter>> const&,xpc::connection const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMIServerConnection::init(std::vector<std::shared_ptr<qmi::ServerAccepter>> const&,xpc::connection const&)::$_0,std::default_delete<QMIServerConnection::init(std::vector<std::shared_ptr<qmi::ServerAccepter>> const&,xpc::connection const&)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  v42 = &v1->__vftable;
  v2 = v1->__vftable;
  v3 = &v1->__vftable[1].~__shared_weak_count_0;
  if (v3 != &v1->__shared_owners_)
  {
    shared_owners = v1->__shared_owners_;
    shared_weak_owners = v1->__shared_weak_owners_;
    v6 = shared_weak_owners - shared_owners;
    get_deleter = v2[1].__get_deleter;
    v8 = v2[1].~__shared_weak_count_0;
    if (get_deleter - v8 < (shared_weak_owners - shared_owners))
    {
      v9 = v6 >> 4;
      if (v8)
      {
        on_zero_shared = v2[1].__on_zero_shared;
        v11 = v2[1].~__shared_weak_count_0;
        if (on_zero_shared != v8)
        {
          do
          {
            v12 = *(on_zero_shared - 1);
            if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v12->__on_zero_shared)(v12);
              std::__shared_weak_count::__release_weak(v12);
            }

            on_zero_shared -= 16;
          }

          while (on_zero_shared != v8);
          v11 = *v3;
        }

        v2[1].__on_zero_shared = v8;
        operator delete(v11);
        get_deleter = 0;
        *v3 = 0;
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
      }

      if (v9 >> 60)
      {
        goto LABEL_81;
      }

      v21 = get_deleter >> 3;
      if (get_deleter >> 3 <= v9)
      {
        v21 = v9;
      }

      v22 = get_deleter >= 0x7FFFFFFFFFFFFFF0 ? 0xFFFFFFFFFFFFFFFLL : v21;
      if (v22 >> 60)
      {
LABEL_81:
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v23 = operator new(16 * v22);
      v2[1].~__shared_weak_count_0 = v23;
      v2[1].__on_zero_shared = v23;
      for (v2[1].__get_deleter = (v23 + 16 * v22); shared_owners != shared_weak_owners; v23 = (v23 + 16))
      {
        *v23 = *shared_owners;
        v24 = *(shared_owners + 1);
        *(v23 + 1) = v24;
        if (v24)
        {
          atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
        }

        shared_owners += 16;
      }

      v2[1].__on_zero_shared = v23;
      v25 = v1[1].__shared_owners_;
      if (!v25)
      {
        goto LABEL_60;
      }

LABEL_51:
      xpc_retain(v25);
      goto LABEL_61;
    }

    v13 = v2[1].__on_zero_shared;
    if (v13 - v8 >= v6)
    {
      if (shared_owners != shared_weak_owners)
      {
        do
        {
          v19 = *shared_owners;
          v18 = *(shared_owners + 1);
          if (v18)
          {
            atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
          }

          v20 = *(v8 + 1);
          *v8 = v19;
          *(v8 + 1) = v18;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
          }

          shared_owners += 16;
          v8 += 16;
        }

        while (shared_owners != shared_weak_owners);
        v13 = v2[1].__on_zero_shared;
      }

      for (; v13 != v8; v13 -= 16)
      {
        v29 = *(v13 - 1);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }
      }

      v2[1].__on_zero_shared = v8;
      v25 = v1[1].__shared_owners_;
      if (!v25)
      {
        goto LABEL_60;
      }

      goto LABEL_51;
    }

    v14 = &shared_owners[v13 - v8];
    if (v13 != v8)
    {
      do
      {
        v16 = *shared_owners;
        v15 = *(shared_owners + 1);
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v17 = *(v8 + 1);
        *v8 = v16;
        *(v8 + 1) = v15;
        if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
        }

        shared_owners += 16;
        v8 += 16;
      }

      while (shared_owners != v14);
      v13 = v2[1].__on_zero_shared;
    }

    v26 = v13;
    if (v14 != shared_weak_owners)
    {
      v26 = v13;
      v27 = v13;
      do
      {
        *v27 = *v14;
        v28 = *(v14 + 1);
        *(v27 + 1) = v28;
        if (v28)
        {
          atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
        }

        v14 += 16;
        v27 += 16;
        v26 += 16;
      }

      while (v14 != shared_weak_owners);
    }

    v2[1].__on_zero_shared = v26;
  }

  v25 = v1[1].__shared_owners_;
  if (v25)
  {
    goto LABEL_51;
  }

LABEL_60:
  v25 = xpc_null_create();
LABEL_61:
  v30 = v2[2].~__shared_weak_count_0;
  v2[2].~__shared_weak_count_0 = v25;
  xpc_release(v30);
  xpc_connection_suspend(v2[2].~__shared_weak_count_0);
  v31 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2962DD000, v31, OS_LOG_TYPE_DEFAULT, "#I XPC Listener: creating qmi::Server", buf, 2u);
  }

  memset(buf, 170, sizeof(buf));
  v32 = operator new(0x48uLL);
  qmi::Server::State::State(v32);
  memset(buf, 170, sizeof(buf));
  std::shared_ptr<qmi::Server::State>::shared_ptr[abi:ne200100]<qmi::Server::State,std::shared_ptr<qmi::Server::State> ctu::SharedSynchronizable<qmi::Server::State>::make_shared_ptr<qmi::Server::State>(qmi::Server::State*)::{lambda(qmi::Server::State*)#1},0>(buf, v32);
  qmi::Server::State::init_sync(*buf, &v2[2].~__shared_weak_count_0);
  v33 = v2[2].__get_deleter;
  *&v2[2].__on_zero_shared = *buf;
  memset(buf, 0, sizeof(buf));
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  v34 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  v35 = v2[1].~__shared_weak_count_0;
  for (i = v2[1].__on_zero_shared; v35 != i; v35 = (v35 + 16))
  {
    (*(**v35 + 16))(*v35, &v2[2].__on_zero_shared);
  }

  v37 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2962DD000, v37, OS_LOG_TYPE_DEFAULT, "#I XPC Listener: go!", buf, 2u);
  }

  xpc_connection_resume(v2[2].~__shared_weak_count_0);
  v38 = v2[2].~__shared_weak_count;
  v2[2].~__shared_weak_count = 0;
  if (v38)
  {
    dispatch_group_leave(v38);
    dispatch_release(v38);
  }

  LOBYTE(v2[2].__on_zero_shared_weak) = 1;
  std::unique_ptr<QMIServerConnection::init(std::vector<std::shared_ptr<qmi::ServerAccepter>> const&,xpc::connection const&)::$_0,std::default_delete<QMIServerConnection::init(std::vector<std::shared_ptr<qmi::ServerAccepter>> const&,xpc::connection const&)::$_0>>::~unique_ptr[abi:ne200100](&v42);
  v39 = a1;
  if (a1)
  {
    v40 = a1[2];
    if (v40)
    {
      if (!atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v40->__on_zero_shared)(v40);
        std::__shared_weak_count::__release_weak(v40);
        v39 = a1;
      }
    }

    operator delete(v39);
  }
}

void sub_296306668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, char a11)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a11);
  std::unique_ptr<QMIServerConnection::init(std::vector<std::shared_ptr<qmi::ServerAccepter>> const&,xpc::connection const&)::$_0,std::default_delete<QMIServerConnection::init(std::vector<std::shared_ptr<qmi::ServerAccepter>> const&,xpc::connection const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_29630668C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v10);
  std::unique_ptr<QMIServerConnection::init(std::vector<std::shared_ptr<qmi::ServerAccepter>> const&,xpc::connection const&)::$_0,std::default_delete<QMIServerConnection::init(std::vector<std::shared_ptr<qmi::ServerAccepter>> const&,xpc::connection const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_2963066B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  std::unique_ptr<QMIServerConnection::init(std::vector<std::shared_ptr<qmi::ServerAccepter>> const&,xpc::connection const&)::$_0,std::default_delete<QMIServerConnection::init(std::vector<std::shared_ptr<qmi::ServerAccepter>> const&,xpc::connection const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<QMIServerConnection::init(std::vector<std::shared_ptr<qmi::ServerAccepter>> const&,xpc::connection const&)::$_0,std::default_delete<QMIServerConnection::init(std::vector<std::shared_ptr<qmi::ServerAccepter>> const&,xpc::connection const&)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      v4 = *(v1 + 16);
      v5 = *(v1 + 8);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v6->__on_zero_shared)(v6);
              std::__shared_weak_count::__release_weak(v6);
            }
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = *(v1 + 8);
      }

      *(v1 + 16) = v3;
      operator delete(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZNK3ctu20SharedSynchronizableI18BBServerConnectionE20execute_wrapped_syncIZN19QMIServerConnection8shutdownEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke(uint64_t a1)
{
  v1 = **(a1 + 40);
  *(v1 + 112) = 0;
  if (MEMORY[0x29C259C10](*(v1 + 88)) == MEMORY[0x29EDCA9F0])
  {
    xpc_connection_cancel(*(v1 + 88));
    v2 = xpc_null_create();
    v3 = xpc_null_create();
    v4 = *(v1 + 88);
    *(v1 + 88) = v2;
    xpc_release(v4);
    xpc_release(v3);
    v5 = *(v1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_2962DD000, v5, OS_LOG_TYPE_DEFAULT, "#I XPC Listener: shutdown!", v9, 2u);
    }
  }

  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  while (v6 != v7)
  {
    v8 = *v6;
    v6 += 2;
    (*(*v8 + 32))(v8);
  }
}

void ctu::cf::insert<char const*,std::string>(__CFDictionary *a1, const __CFString **a2, uint64_t a3, uint64_t a4, const __CFAllocator *a5)
{
  value = 0;
  ctu::cf::convert_copy(&value, a2, 0x8000100, a4, a5);
  v6 = value;
  value = 0;
  ctu::cf::convert_copy();
  v7 = value;
  if (v6)
  {
    v8 = value == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (!value)
    {
      goto LABEL_8;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, v6, value);
  }

  CFRelease(v7);
LABEL_8:
  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_296306960(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296306984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void ctu::cf::insert<char const*,char const*>(__CFDictionary *a1, const __CFString **a2, uint64_t a3, uint64_t a4, const __CFAllocator *a5)
{
  value = 0;
  ctu::cf::convert_copy(&value, a2, 0x8000100, a3, a5);
  v7 = value;
  value = 0;
  ctu::cf::convert_copy(&value, "qmux1", 0x8000100, a3, v8);
  v9 = value;
  if (v7)
  {
    v10 = value == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (!value)
    {
      goto LABEL_8;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, v7, value);
  }

  CFRelease(v9);
LABEL_8:
  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_296306A7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296306AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void sub_296306B60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296306B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t ATCSThreadStartStub(void (**a1)(void))
{
  pthread_setspecific(threadInfoKey, a1);
  (*a1)(a1[1]);
  operator delete(a1);
  return 0;
}

pthread_t ATCSThreadSpawn(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((initialized & 1) == 0)
  {
    pthread_key_create(&threadInfoKey, 0);
    initialized = 1;
  }

  v7 = operator new(0x10uLL);
  *v7 = a2;
  v7[1] = a3;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v13.__opaque[24] = v8;
  *&v13.__opaque[40] = v8;
  *&v13.__sig = v8;
  *&v13.__opaque[8] = v8;
  pthread_attr_init(&v13);
  if (a4)
  {
    pthread_attr_setdetachstate(&v13, 2);
  }

  v9 = pthread_create(&v12, &v13, ATCSThreadStartStub, v7);
  pthread_attr_destroy(&v13);
  if (v9)
  {
    fprintf(*MEMORY[0x29EDCA610], "pthread_create() failed, error = %d\n", v9);
    result = 0;
  }

  else
  {
    result = v12;
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void ATCSMutex::ATCSMutex(ATCSMutex *this, const char *a2)
{
  *this = 0;
  v3 = operator new(0x48uLL);
  v3[1].__sig = 0;
  if ((initialized & 1) == 0)
  {
    pthread_key_create(&threadInfoKey, 0);
    initialized = 1;
  }

  pthread_mutex_init(v3, 0);
  *this = v3;
}

{
  *this = 0;
  v3 = operator new(0x48uLL);
  v3[1].__sig = 0;
  if ((initialized & 1) == 0)
  {
    pthread_key_create(&threadInfoKey, 0);
    initialized = 1;
  }

  pthread_mutex_init(v3, 0);
  *this = v3;
}

void ATCSMutex::~ATCSMutex(pthread_mutex_t **this)
{
  v1 = *this;
  pthread_mutex_destroy(*this);
  if (v1)
  {
    operator delete(v1);
  }
}

{
  v1 = *this;
  pthread_mutex_destroy(*this);
  if (v1)
  {
    operator delete(v1);
  }
}

BOOL ATCSMutex::isLocked(ATCSMutex *this)
{
  v1 = *this;
  v2 = pthread_self();
  return pthread_equal(v2, *(v1 + 64)) != 0;
}

void ATCSCondition::ATCSCondition(ATCSCondition *this, const char *a2)
{
  v3 = malloc(0x30uLL);
  *this = v3;
  pthread_cond_init(v3, 0);
}

{
  v3 = malloc(0x30uLL);
  *this = v3;
  pthread_cond_init(v3, 0);
}

void ATCSCondition::~ATCSCondition(pthread_cond_t **this)
{
  pthread_cond_destroy(*this);
  free(*this);
}

{
  pthread_cond_destroy(*this);
  free(*this);
}

uint64_t ATCSCondition::wait(pthread_cond_t **this, pthread_mutex_t **a2, unsigned int a3)
{
  v5 = *a2;
  v6 = pthread_self();
  v5[1].__sig = 0;
  if ((a3 & 0x80000000) != 0)
  {
    v7 = pthread_cond_wait(*this, v5);
  }

  else
  {
    v10.tv_sec = a3 / 0x3E8uLL;
    v10.tv_nsec = 1000000 * (a3 % 0x3E8);
    v7 = pthread_cond_timedwait_relative_np(*this, v5, &v10);
  }

  v5[1].__sig = v6;
  if (v7 == 60)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

_BYTE *ATCSIPCDriver::bootstrap(_BYTE *this)
{
  if ((this[8] & 1) == 0)
  {
    return (*(*this + 16))();
  }

  return this;
}

void Tlv::Tlv(Tlv *this, char a2, size_t __sz)
{
  *this = a2;
  *(this + 1) = __sz;
  v4 = __sz;
  v5 = operator new[](__sz);
  *(this + 1) = v5;
  *(this + 8) = 0;
  bzero(v5, v4);
}

{
  *this = a2;
  *(this + 1) = __sz;
  v4 = __sz;
  v5 = operator new[](__sz);
  *(this + 1) = v5;
  *(this + 8) = 0;
  bzero(v5, v4);
}

void Tlv::Tlv(Tlv *this, char a2, size_t __sz, const void *a4)
{
  *this = a2;
  *(this + 1) = __sz;
  v6 = __sz;
  v7 = operator new[](__sz);
  *(this + 1) = v7;
  *(this + 8) = 0;
  if (a4)
  {
    v8 = 0;
  }

  else
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x1F, "src", "!=", "NULL", 0, 0);
    v7 = *(this + 1);
    v8 = *(this + 8);
    v6 = *(this + 1);
  }

  memcpy(&v7[v8], a4, v6);
}

{
  *this = a2;
  *(this + 1) = __sz;
  v6 = __sz;
  v7 = operator new[](__sz);
  *(this + 1) = v7;
  *(this + 8) = 0;
  if (a4)
  {
    v8 = 0;
  }

  else
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x1F, "src", "!=", "NULL", 0, 0);
    v7 = *(this + 1);
    v8 = *(this + 8);
    v6 = *(this + 1);
  }

  memcpy(&v7[v8], a4, v6);
}

void Tlv::Tlv(Tlv *this, const void **a2)
{
  *this = *a2;
  v4 = *(a2 + 1);
  *(this + 1) = v4;
  v5 = operator new[](v4);
  *(this + 1) = v5;
  *(this + 8) = 0;
  memcpy(v5, a2[1], v4);
}

{
  *this = *a2;
  v4 = *(a2 + 1);
  *(this + 1) = v4;
  v5 = operator new[](v4);
  *(this + 1) = v5;
  *(this + 8) = 0;
  memcpy(v5, a2[1], v4);
}

void Tlv::~Tlv(void **this)
{
  if (this[1])
  {
    operator delete[](this[1]);
  }
}

{
  if (this[1])
  {
    operator delete[](this[1]);
  }
}

_WORD *Tlv::create(Tlv *this, unsigned int a2)
{
  v3 = this;
  v4 = operator new(0x18uLL);
  *v4 = v3;
  v4[1] = a2;
  v5 = operator new[](a2);
  *(v4 + 1) = v5;
  v4[8] = 0;
  bzero(v5, a2);
  return v4;
}

_WORD *Tlv::create(Tlv *this, unsigned int a2, const void *a3, const void *a4)
{
  v6 = this;
  v7 = operator new(0x18uLL);
  *v7 = v6;
  v7[1] = a2;
  v8 = operator new[](a2);
  *(v7 + 1) = v8;
  v7[8] = 0;
  if (!a3)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x1F, "src", "!=", "NULL", 0, 0);
  }

  memcpy(v8, a3, a2);
  return v7;
}

_WORD *Tlv::create(const void **this, const Tlv *a2)
{
  v3 = operator new(0x18uLL);
  *v3 = *this;
  v4 = *(this + 1);
  v3[1] = v4;
  v5 = operator new[](v4);
  *(v3 + 1) = v5;
  v3[8] = 0;
  memcpy(v5, this[1], v4);
  return v3;
}

void Tlv::putByte(Tlv *this, char a2)
{
  v4 = *(this + 8);
  v5 = *(this + 1);
  if (v4 >= v5)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x59, "(fIndex+1)", "<=", "fLength", (v4 + 1), v5);
    LODWORD(v4) = *(this + 8);
  }

  v6 = *(this + 1);
  *(this + 8) = v4 + 1;
  *(v6 + v4) = a2;
}

void Tlv::putWord(Tlv *this, __int16 a2)
{
  v4 = *(this + 8);
  v5 = (v4 + 2);
  v6 = *(this + 1);
  if (v4 + 2 > v6)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x6B, "(fIndex+2)", "<=", "fLength", v5, v6);
    LODWORD(v4) = *(this + 8);
    LODWORD(v6) = *(this + 1);
    LODWORD(v5) = v4 + 2;
  }

  if (v5 > v6)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0xB3, "(index+2)", "<=", "fLength", v5, v6);
  }

  *(*(this + 1) + v4) = a2;
  *(*(this + 1) + (v4 + 1)) = HIBYTE(a2);
  *(this + 8) = v4 + 2;
}

uint64_t Tlv::putWordAt(Tlv *this, __int16 a2, unsigned int a3)
{
  v6 = (a3 + 2);
  v7 = *(this + 1);
  if (v6 > v7)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0xB3, "(index+2)", "<=", "fLength", v6, v7);
  }

  *(*(this + 1) + a3) = a2;
  *(*(this + 1) + (a3 + 1)) = HIBYTE(a2);
  return v6;
}

void Tlv::putDWord(Tlv *this, int a2)
{
  v4 = *(this + 8);
  v5 = (v4 + 4);
  v6 = *(this + 1);
  if (v4 + 4 > v6)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x7C, "(fIndex+4)", "<=", "fLength", v5, v6);
    LODWORD(v4) = *(this + 8);
    LODWORD(v6) = *(this + 1);
    LODWORD(v5) = v4 + 4;
  }

  if (v5 > v6)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0xCA, "(index+4)", "<=", "fLength", v5, v6);
  }

  *(*(this + 1) + v4) = a2;
  *(*(this + 1) + (v4 + 1)) = BYTE1(a2);
  *(*(this + 1) + (v4 + 2)) = BYTE2(a2);
  *(*(this + 1) + (v4 + 3)) = HIBYTE(a2);
  *(this + 8) = v4 + 4;
}

uint64_t Tlv::putDWordAt(Tlv *this, int a2, unsigned int a3)
{
  v6 = (a3 + 4);
  v7 = *(this + 1);
  if (v6 > v7)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0xCA, "(index+4)", "<=", "fLength", v6, v7);
  }

  *(*(this + 1) + a3) = a2;
  *(*(this + 1) + (a3 + 1)) = BYTE1(a2);
  *(*(this + 1) + (a3 + 2)) = BYTE2(a2);
  *(*(this + 1) + (a3 + 3)) = HIBYTE(a2);
  return v6;
}

uint64_t Tlv::putQWord(Tlv *this, const unint64_t *a2)
{
  v3 = *(this + 8);
  v4 = *(this + 1);
  if (v3 + 8 > v4)
  {
    v5 = a2;
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x8D, "(fIndex+8)", "<=", "fLength", (v3 + 8), v4);
    a2 = v5;
    LODWORD(v3) = *(this + 8);
  }

  result = Tlv::putQWordAt(this, a2, v3);
  *(this + 8) = result;
  return result;
}

uint64_t Tlv::putQWordAt(Tlv *this, const unint64_t *a2, unsigned int a3)
{
  v6 = (a3 + 8);
  v7 = *(this + 1);
  if (v6 > v7)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0xE4, "(index+8)", "<=", "fLength", v6, v7);
    LODWORD(v7) = *(this + 1);
  }

  v8 = *a2;
  if (a3 + 4 > v7)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0xCA, "(index+4)", "<=", "fLength", (a3 + 4), v7);
  }

  *(*(this + 1) + a3) = v8;
  *(*(this + 1) + (a3 + 1)) = BYTE1(v8);
  *(*(this + 1) + (a3 + 2)) = BYTE2(v8);
  *(*(this + 1) + (a3 + 3)) = BYTE3(v8);
  v9 = *a2;
  v10 = ((a3 + 4) + 4);
  v11 = *(this + 1);
  if (v10 > v11)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0xCA, "(index+4)", "<=", "fLength", v10, v11);
  }

  *(*(this + 1) + (a3 + 4)) = BYTE4(v9);
  *(*(this + 1) + (a3 + 5)) = BYTE5(v9);
  *(*(this + 1) + (a3 + 6)) = BYTE6(v9);
  *(*(this + 1) + (a3 + 7)) = HIBYTE(v9);
  return (a3 + 8);
}

void Tlv::putByteAt(Tlv *this, char a2, unsigned int a3)
{
  v5 = *(this + 1);
  v6 = a3;
  if (v5 <= a3)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x9F, "(index+1)", "<=", "fLength", (a3 + 1), v5);
  }

  *(*(this + 1) + v6) = a2;
}

char *Tlv::putStringField(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 2);
  if (v5 + v6 > v7)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0xFC, "(fIndex + strlen)", "<=", "fLength", (v5 + v6), v7);
    v6 = *(a1 + 16);
    LOBYTE(v4) = *(a2 + 23);
  }

  if ((v4 & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  result = strncpy((*(a1 + 8) + v6), v8, v5);
  *(a1 + 16) += v5;
  return result;
}

void *Tlv::putData(Tlv *this, const void *__src, size_t __n)
{
  v3 = __n;
  v6 = (*(this + 8) + __n);
  v7 = *(this + 1);
  if (v6 > v7)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x110, "(fIndex + length)", "<=", "fLength", v6, v7);
  }

  if (!__src)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x111, "src", "!=", "NULL", 0, 0);
  }

  result = memcpy((*(this + 1) + *(this + 8)), __src, v3);
  *(this + 8) += v3;
  return result;
}

uint64_t Tlv::getByte(Tlv *this)
{
  v2 = *(this + 8);
  v3 = *(this + 1);
  if (v2 >= v3)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x125, "(fIndex+1)", "<=", "fLength", (v2 + 1), v3);
    LODWORD(v2) = *(this + 8);
  }

  v4 = *(this + 1);
  *(this + 8) = v2 + 1;
  return *(v4 + v2);
}

uint64_t Tlv::getWord(Tlv *this)
{
  v2 = *(this + 8);
  v3 = *(this + 1);
  if (v2 + 2 > v3)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x138, "(fIndex+2)", "<=", "fLength", (v2 + 2), v3);
    LODWORD(v2) = *(this + 8);
  }

  v4 = *(this + 1);
  *(this + 8) = v2 + 1;
  v5 = *(v4 + v2);
  *(this + 8) = v2 + 2;
  return (v5 | (*(v4 + (v2 + 1)) << 8));
}

uint64_t Tlv::getDWord(Tlv *this)
{
  v2 = *(this + 8);
  v3 = *(this + 1);
  if (v2 + 4 > v3)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x14E, "(fIndex+4)", "<=", "fLength", (v2 + 4), v3);
    LODWORD(v2) = *(this + 8);
  }

  v4 = *(this + 1);
  *(this + 8) = v2 + 1;
  v5 = *(v4 + v2);
  *(this + 8) = v2 + 2;
  v6 = *(v4 + (v2 + 1));
  *(this + 8) = v2 + 3;
  v7 = *(v4 + (v2 + 2));
  *(this + 8) = v2 + 4;
  return v5 | (v6 << 8) | (v7 << 16) | (*(v4 + (v2 + 3)) << 24);
}

unint64_t Tlv::getQWord(Tlv *this)
{
  v2 = *(this + 8);
  v3 = *(this + 1);
  if (v2 + 8 > v3)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x16A, "(fIndex+8)", "<=", "fLength", (v2 + 8), v3);
    LODWORD(v2) = *(this + 8);
    LODWORD(v3) = *(this + 1);
  }

  v4 = (v2 + 4);
  if (v4 > v3)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x14E, "(fIndex+4)", "<=", "fLength", v4, v3);
    LODWORD(v2) = *(this + 8);
    LODWORD(v3) = *(this + 1);
  }

  v5 = *(this + 1);
  *(this + 8) = v2 + 1;
  v6 = *(v5 + v2);
  *(this + 8) = v2 + 2;
  v7 = *(v5 + (v2 + 1));
  v8 = v2 + 3;
  *(this + 8) = v2 + 3;
  v9 = *(v5 + (v2 + 2));
  v10 = v2 + 4;
  *(this + 8) = v10;
  v11 = *(v5 + v8);
  v12 = (v10 + 4);
  if (v12 > v3)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x14E, "(fIndex+4)", "<=", "fLength", v12, v3);
    v10 = *(this + 8);
    v5 = *(this + 1);
  }

  *(this + 8) = v10 + 1;
  v13 = *(v5 + v10);
  *(this + 8) = v10 + 2;
  v14 = *(v5 + (v10 + 1));
  *(this + 8) = v10 + 3;
  v15 = *(v5 + (v10 + 2));
  *(this + 8) = v10 + 4;
  return v6 | (v7 << 8) | (v9 << 16) | (v11 << 24) | (v13 << 32) | (v14 << 40) | (v15 << 48) | (*(v5 + (v10 + 3)) << 56);
}

uint64_t Tlv::getByteAt(Tlv *this, unsigned int a2)
{
  v3 = *(this + 1);
  v4 = a2;
  if (v3 <= a2)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x17F, "(index+1)", "<=", "fLength", (a2 + 1), v3);
  }

  return *(*(this + 1) + v4);
}

uint64_t Tlv::getWordAt(Tlv *this, unsigned int a2)
{
  v4 = (a2 + 2);
  v5 = *(this + 1);
  if (v4 > v5)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x191, "(index+2)", "<=", "fLength", v4, v5);
  }

  return (*(*(this + 1) + a2) | (*(*(this + 1) + (a2 + 1)) << 8));
}

uint64_t Tlv::getDWordAt(Tlv *this, unsigned int a2)
{
  v4 = (a2 + 4);
  v5 = *(this + 1);
  if (v4 > v5)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x1A6, "(index+4)", "<=", "fLength", v4, v5);
  }

  v6 = *(this + 1);
  return *(v6 + a2) | (*(v6 + (a2 + 1)) << 8) | (*(v6 + (a2 + 2)) << 16) | (*(v6 + (a2 + 3)) << 24);
}

unint64_t Tlv::getQWordAt(Tlv *this, unsigned int a2)
{
  v4 = (a2 + 8);
  v5 = *(this + 1);
  if (v4 > v5)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x1C2, "(index+8)", "<=", "fLength", v4, v5);
    LODWORD(v5) = *(this + 1);
  }

  if (a2 + 4 > v5)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x1A6, "(index+4)", "<=", "fLength", (a2 + 4), v5);
    LODWORD(v5) = *(this + 1);
  }

  v6 = *(this + 1);
  v7 = *(v6 + a2);
  v8 = *(v6 + (a2 + 1));
  v9 = *(v6 + (a2 + 2));
  v10 = *(v6 + (a2 + 3));
  v11 = ((a2 + 4) + 4);
  if (v11 > v5)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x1A6, "(index+4)", "<=", "fLength", v11, v5);
    v6 = *(this + 1);
  }

  return v7 | (v8 << 8) | (v9 << 16) | (v10 << 24) | (*(v6 + (a2 + 4)) << 32) | (*(v6 + (a2 + 5)) << 40) | (*(v6 + (a2 + 6)) << 48) | (*(v6 + (a2 + 7)) << 56);
}

std::string *Tlv::getStringField@<X0>(Tlv *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(this + 1);
  v5 = *(this + 8);
  if (v4 <= v5)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x1DA, "(fLength - fIndex)", ">", "0", (v4 - v5), 0);
    LOWORD(v4) = *(this + 1);
    v5 = *(this + 8);
  }

  result = std::string::__assign_external(a2, (*(this + 1) + v5), (v4 - v5));
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  *(this + 8) += v7;
  return result;
}

void sub_2963083EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *Tlv::getStringFieldAt@<X0>(Tlv *this@<X0>, unsigned int a2@<W1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v6 = *(this + 1);
  if (v6 <= a2)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x1F4, "(fLength - index)", ">", "0", (v6 - a2), 0);
    LOWORD(v6) = *(this + 1);
  }

  return std::string::__assign_external(a3, (*(this + 1) + a2), (v6 - a2));
}

void sub_296308498(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Tlv::getData(Tlv *this, int a2)
{
  v2 = a2;
  v4 = *(this + 8);
  v5 = (v4 + a2);
  v6 = *(this + 1);
  if (v5 > v6)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x20C, "(fIndex + length)", "<=", "fLength", v5, v6);
    v4 = *(this + 8);
  }

  *(this + 8) = v4 + v2;
  return *(this + 1) + v4;
}

uint64_t Tlv::getDataAt(Tlv *this, unsigned int a2, int a3)
{
  v5 = (a3 + a2);
  v6 = *(this + 1);
  if (v5 > v6)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x226, "(index + length)", "<=", "fLength", v5, v6);
  }

  return *(this + 1) + a2;
}

void Tlv::Writer::putByte(Tlv::Writer *this, char a2)
{
  v4 = *(this + 4);
  v5 = *this;
  v6 = *(*this + 2);
  if (v4 >= v6)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x230, "(fIndex+1)", "<=", "fTlv->getLength()", (v4 + 1), v6);
    v5 = *this;
    LODWORD(v4) = *(this + 4);
  }

  v7 = *(v5 + 8);
  *(this + 4) = v4 + 1;
  *(v7 + v4) = a2;
}

void Tlv::Writer::putWord(Tlv::Writer *this, __int16 a2)
{
  v4 = *(this + 4);
  v5 = *this;
  v6 = *(*this + 2);
  if (v4 + 2 > v6)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x257, "(index+2)", "<=", "fTlv->getLength()", (v4 + 2), v6);
    v5 = *this;
  }

  v7 = *(v5 + 8);
  *(v7 + v4) = a2;
  *(v7 + (v4 + 1)) = HIBYTE(a2);
  *(this + 4) = v4 + 2;
}

uint64_t Tlv::Writer::putWordAt(Tlv::Writer *this, __int16 a2, unsigned int a3)
{
  v5 = (a3 + 2);
  v6 = *this;
  v7 = *(*this + 2);
  if (v5 > v7)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x257, "(index+2)", "<=", "fTlv->getLength()", v5, v7);
    v6 = *this;
  }

  v9 = *(v6 + 8);
  *(v9 + a3) = a2;
  *(v9 + (a3 + 1)) = HIBYTE(a2);
  return v5;
}

void Tlv::Writer::putDWord(Tlv::Writer *this, int a2)
{
  v4 = *(this + 4);
  v5 = *this;
  v6 = *(*this + 2);
  if (v4 + 4 > v6)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x262, "(index+4)", "<=", "fTlv->getLength()", (v4 + 4), v6);
    v5 = *this;
  }

  v7 = *(v5 + 8);
  *(v7 + v4) = a2;
  *(v7 + (v4 + 1)) = BYTE1(a2);
  *(v7 + (v4 + 2)) = BYTE2(a2);
  *(v7 + (v4 + 3)) = HIBYTE(a2);
  *(this + 4) = v4 + 4;
}

uint64_t Tlv::Writer::putDWordAt(Tlv::Writer *this, int a2, unsigned int a3)
{
  v5 = (a3 + 4);
  v6 = *this;
  v7 = *(*this + 2);
  if (v5 > v7)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x262, "(index+4)", "<=", "fTlv->getLength()", v5, v7);
    v6 = *this;
  }

  v9 = *(v6 + 8);
  *(v9 + a3) = a2;
  *(v9 + (a3 + 1)) = BYTE1(a2);
  *(v9 + (a3 + 2)) = BYTE2(a2);
  *(v9 + (a3 + 3)) = HIBYTE(a2);
  return v5;
}

uint64_t Tlv::Writer::putQWord(Tlv::Writer *this, uint64_t a2)
{
  result = Tlv::Writer::putQWordAt(this, a2, *(this + 4));
  *(this + 4) = result;
  return result;
}

uint64_t Tlv::Writer::putQWordAt(Tlv::Writer *this, uint64_t a2, unsigned int a3)
{
  v6 = (a3 + 8);
  v7 = *this;
  v8 = *(*this + 2);
  if (v6 > v8)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x26F, "(index+8)", "<=", "fTlv->getLength()", v6, v8);
    v7 = *this;
    LODWORD(v8) = *(*this + 2);
  }

  if (a3 + 4 > v8)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x262, "(index+4)", "<=", "fTlv->getLength()", (a3 + 4), v8);
    v7 = *this;
  }

  v9 = *(v7 + 8);
  *(v9 + a3) = a2;
  *(v9 + (a3 + 1)) = BYTE1(a2);
  *(v9 + (a3 + 2)) = BYTE2(a2);
  *(v9 + (a3 + 3)) = BYTE3(a2);
  v10 = ((a3 + 4) + 4);
  v11 = *this;
  v12 = *(*this + 2);
  if (v10 > v12)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x262, "(index+4)", "<=", "fTlv->getLength()", v10, v12);
    v11 = *this;
  }

  v13 = *(v11 + 8);
  *(v13 + (a3 + 4)) = BYTE4(a2);
  *(v13 + (a3 + 5)) = BYTE5(a2);
  *(v13 + (a3 + 6)) = BYTE6(a2);
  *(v13 + (a3 + 7)) = HIBYTE(a2);
  return (a3 + 8);
}

void Tlv::Writer::putFloat(Tlv::Writer *this, float a2)
{
  v4 = *(this + 4);
  v5 = *this;
  v6 = *(*this + 2);
  if (v4 + 4 > v6)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x262, "(index+4)", "<=", "fTlv->getLength()", (v4 + 4), v6);
    v5 = *this;
  }

  v7 = *(v5 + 8);
  *(v7 + v4) = LOBYTE(a2);
  *(v7 + (v4 + 1)) = BYTE1(a2);
  *(v7 + (v4 + 2)) = BYTE2(a2);
  *(v7 + (v4 + 3)) = HIBYTE(a2);
  *(this + 4) = v4 + 4;
}

uint64_t Tlv::Writer::putFloatAt(Tlv::Writer *this, float a2, unsigned int a3)
{
  v5 = (a3 + 4);
  v6 = *this;
  v7 = *(*this + 2);
  if (v5 > v7)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x262, "(index+4)", "<=", "fTlv->getLength()", v5, v7);
    v6 = *this;
  }

  v9 = *(v6 + 8);
  *(v9 + a3) = LOBYTE(a2);
  *(v9 + (a3 + 1)) = BYTE1(a2);
  *(v9 + (a3 + 2)) = BYTE2(a2);
  *(v9 + (a3 + 3)) = HIBYTE(a2);
  return v5;
}

uint64_t Tlv::Writer::putDouble(Tlv::Writer *this, double a2)
{
  result = Tlv::Writer::putQWordAt(this, *&a2, *(this + 4));
  *(this + 4) = result;
  return result;
}

void Tlv::Writer::putByteAt(Tlv::Writer *this, char a2, unsigned int a3)
{
  v4 = *this;
  v5 = *(*this + 2);
  v6 = a3;
  if (v5 <= a3)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x24F, "(index+1)", "<=", "fTlv->getLength()", (a3 + 1), v5);
    v4 = *this;
  }

  *(*(v4 + 8) + v6) = a2;
}

void *Tlv::Writer::putStringField(unsigned __int16 *a1, const void **a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = a1[4];
  v7 = *a1;
  v8 = *(*a1 + 2);
  if (v5 + v6 > v8)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x289, "(fIndex + strlen)", "<=", "fTlv->getLength()", (v5 + v6), v8);
    v7 = *a1;
    v6 = a1[4];
    LOBYTE(v4) = *(a2 + 23);
  }

  v9 = *(v7 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  result = memcpy((v9 + v6), v10, v5);
  a1[4] += v5;
  return result;
}

void *Tlv::Writer::putData(Tlv::Writer *this, const void *__src, size_t __n)
{
  v3 = __n;
  v6 = (*(this + 4) + __n);
  v7 = *(*this + 2);
  if (v6 > v7)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x293, "(fIndex + length)", "<=", "fTlv->getLength()", v6, v7);
  }

  if (!__src)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x294, "src", "!=", "NULL", 0, 0);
  }

  result = memcpy((*(*this + 8) + *(this + 4)), __src, v3);
  *(this + 4) += v3;
  return result;
}

uint64_t Tlv::Reader::getByte(Tlv::Reader *this)
{
  v2 = *(this + 4);
  v3 = *this;
  v4 = *(*this + 2);
  if (v2 >= v4)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x29F, "(fIndex+1)", "<=", "fTlv->getLength()", (v2 + 1), v4);
    v3 = *this;
    LODWORD(v2) = *(this + 4);
  }

  v5 = *(v3 + 8);
  *(this + 4) = v2 + 1;
  return *(v5 + v2);
}

uint64_t Tlv::Reader::getWord(Tlv::Reader *this)
{
  v2 = *(this + 4);
  v3 = *this;
  v4 = *(*this + 2);
  if (v2 + 2 > v4)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x2A7, "(fIndex+2)", "<=", "fTlv->getLength()", (v2 + 2), v4);
    v3 = *this;
    LODWORD(v2) = *(this + 4);
  }

  v5 = *(v3 + 8);
  *(this + 4) = v2 + 1;
  v6 = *(v5 + v2);
  *(this + 4) = v2 + 2;
  return (v6 | (*(v5 + (v2 + 1)) << 8));
}

uint64_t Tlv::Reader::getDWord(Tlv::Reader *this)
{
  v2 = *(this + 4);
  v3 = *this;
  v4 = *(*this + 2);
  if (v2 + 4 > v4)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x2B2, "(fIndex+4)", "<=", "fTlv->getLength()", (v2 + 4), v4);
    v3 = *this;
    LODWORD(v2) = *(this + 4);
  }

  v5 = *(v3 + 8);
  *(this + 4) = v2 + 1;
  v6 = *(v5 + v2);
  *(this + 4) = v2 + 2;
  v7 = *(v5 + (v2 + 1));
  *(this + 4) = v2 + 3;
  v8 = *(v5 + (v2 + 2));
  *(this + 4) = v2 + 4;
  return v6 | (v7 << 8) | (v8 << 16) | (*(v5 + (v2 + 3)) << 24);
}

unint64_t Tlv::Reader::getQWord(Tlv::Reader *this)
{
  v2 = *(this + 4);
  v3 = *this;
  v4 = *(*this + 2);
  if (v2 + 8 > v4)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x2C2, "(fIndex+8)", "<=", "fTlv->getLength()", (v2 + 8), v4);
    LODWORD(v2) = *(this + 4);
    v3 = *this;
    LODWORD(v4) = *(*this + 2);
  }

  if (v2 + 4 > v4)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x2B2, "(fIndex+4)", "<=", "fTlv->getLength()", (v2 + 4), v4);
    v3 = *this;
    LODWORD(v2) = *(this + 4);
    LODWORD(v4) = *(*this + 2);
  }

  v5 = *(v3 + 8);
  *(this + 4) = v2 + 1;
  v6 = *(v5 + v2);
  *(this + 4) = v2 + 2;
  v7 = *(v5 + (v2 + 1));
  v8 = v2 + 3;
  *(this + 4) = v2 + 3;
  v9 = *(v5 + (v2 + 2));
  v10 = v2 + 4;
  *(this + 4) = v10;
  v11 = *(v5 + v8);
  if (v10 + 4 > v4)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x2B2, "(fIndex+4)", "<=", "fTlv->getLength()", (v10 + 4), v4);
    v10 = *(this + 4);
    v5 = *(*this + 8);
  }

  *(this + 4) = v10 + 1;
  v12 = *(v5 + v10);
  *(this + 4) = v10 + 2;
  v13 = *(v5 + (v10 + 1));
  *(this + 4) = v10 + 3;
  v14 = *(v5 + (v10 + 2));
  *(this + 4) = v10 + 4;
  return v6 | (v7 << 8) | (v9 << 16) | (v11 << 24) | (v12 << 32) | (v13 << 40) | (v14 << 48) | (*(v5 + (v10 + 3)) << 56);
}

uint64_t Tlv::Reader::getByteAt(Tlv::Reader *this, unsigned int a2)
{
  v2 = *this;
  v3 = *(*this + 2);
  v4 = a2;
  if (v3 <= a2)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x2CC, "(index+1)", "<=", "fTlv->getLength()", (a2 + 1), v3);
    v2 = *this;
  }

  return *(*(v2 + 8) + v4);
}

uint64_t Tlv::Reader::getWordAt(Tlv::Reader *this, unsigned int a2)
{
  v3 = (a2 + 2);
  v4 = *this;
  v5 = *(*this + 2);
  if (v3 > v5)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x2D4, "(index+2)", "<=", "fTlv->getLength()", v3, v5);
    v4 = *this;
  }

  return (*(*(v4 + 8) + a2) | (*(*(v4 + 8) + (a2 + 1)) << 8));
}

uint64_t Tlv::Reader::getDWordAt(Tlv::Reader *this, unsigned int a2)
{
  v3 = (a2 + 4);
  v4 = *this;
  v5 = *(*this + 2);
  if (v3 > v5)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x2DF, "(index+4)", "<=", "fTlv->getLength()", v3, v5);
    v4 = *this;
  }

  v7 = *(v4 + 8);
  return *(v7 + a2) | (*(v7 + (a2 + 1)) << 8) | (*(v7 + (a2 + 2)) << 16) | (*(v7 + (a2 + 3)) << 24);
}

unint64_t Tlv::Reader::getQWordAt(Tlv::Reader *this, unsigned int a2)
{
  v4 = (a2 + 8);
  v5 = *this;
  v6 = *(*this + 2);
  if (v4 > v6)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x2F0, "(index+8)", "<=", "fTlv->getLength()", v4, v6);
    v5 = *this;
    LODWORD(v6) = *(*this + 2);
  }

  if (a2 + 4 > v6)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x2DF, "(index+4)", "<=", "fTlv->getLength()", (a2 + 4), v6);
    v5 = *this;
    LODWORD(v6) = *(*this + 2);
  }

  v7 = *(v5 + 8);
  v8 = *(v7 + a2);
  v9 = *(v7 + (a2 + 1));
  v10 = *(v7 + (a2 + 2));
  v11 = *(v7 + (a2 + 3));
  v12 = ((a2 + 4) + 4);
  if (v12 > v6)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x2DF, "(index+4)", "<=", "fTlv->getLength()", v12, v6);
    v7 = *(*this + 8);
  }

  return v8 | (v9 << 8) | (v10 << 16) | (v11 << 24) | (*(v7 + (a2 + 4)) << 32) | (*(v7 + (a2 + 5)) << 40) | (*(v7 + (a2 + 6)) << 48) | (*(v7 + (a2 + 7)) << 56);
}

float Tlv::Reader::getFloat(Tlv::Reader *this)
{
  v2 = *(this + 4);
  v3 = *this;
  v4 = *(*this + 2);
  if (v2 + 4 > v4)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x2B2, "(fIndex+4)", "<=", "fTlv->getLength()", (v2 + 4), v4);
    v3 = *this;
    LODWORD(v2) = *(this + 4);
  }

  v5 = *(v3 + 8);
  *(this + 4) = v2 + 1;
  v6 = *(v5 + v2);
  *(this + 4) = v2 + 2;
  v7 = *(v5 + (v2 + 1));
  *(this + 4) = v2 + 3;
  v8 = *(v5 + (v2 + 2));
  *(this + 4) = v2 + 4;
  LODWORD(result) = v6 | (v7 << 8) | (v8 << 16) | (*(v5 + (v2 + 3)) << 24);
  return result;
}

float Tlv::Reader::getFloatAt(Tlv::Reader *this, unsigned int a2)
{
  v3 = (a2 + 4);
  v4 = *this;
  v5 = *(*this + 2);
  if (v3 > v5)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x2DF, "(index+4)", "<=", "fTlv->getLength()", v3, v5);
    v4 = *this;
  }

  v7 = *(v4 + 8);
  LODWORD(result) = *(v7 + a2) | (*(v7 + (a2 + 1)) << 8) | (*(v7 + (a2 + 2)) << 16) | (*(v7 + (a2 + 3)) << 24);
  return result;
}

void Tlv::Reader::getStringField(Tlv::Reader *this@<X0>, void *a2@<X8>)
{
  v4 = *this;
  v5 = *(*this + 2);
  v6 = *(this + 4);
  if (v5 <= v6)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x313, "(fTlv->getLength() - fIndex)", ">", "0", (v5 - v6), 0);
    v4 = *this;
    LODWORD(v5) = *(*this + 2);
    LODWORD(v6) = *(this + 4);
  }

  memset(a2, 170, 24);
  v7 = *(v4 + 8);
  v8 = (v5 - v6);
  if ((v5 - v6) >= 0x17u)
  {
    if ((v8 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v8 | 7) + 1;
    }

    v9 = operator new(v10);
    a2[1] = v8;
    a2[2] = v10 | 0x8000000000000000;
    *a2 = v9;
    goto LABEL_10;
  }

  *(a2 + 23) = v5 - v6;
  v9 = a2;
  if (v5 != v6)
  {
LABEL_10:
    memmove(v9, (v7 + v6), v8);
  }

  *(v9 + v8) = 0;
  v11 = *(a2 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 4);
  }

  *(this + 4) += v11;
}

void Tlv::Reader::getStringFieldAt(Tlv::Reader *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v5 = *this;
  v6 = *(*this + 2);
  v7 = a2;
  if (v6 <= a2)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x320, "(fTlv->getLength() - index)", ">", "0", (v6 - a2), 0);
    v5 = *this;
    LODWORD(v6) = *(*this + 2);
  }

  v9 = *(v5 + 8);
  v10 = (v6 - a2);
  if ((v6 - a2) >= 0x17u)
  {
    if ((v10 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v10 | 7) + 1;
    }

    v12 = operator new(v11);
    a3[1] = v10;
    a3[2] = v11 | 0x8000000000000000;
    *a3 = v12;
    a3 = v12;
  }

  else
  {
    *(a3 + 23) = v6 - a2;
    if (v6 == a2)
    {
      *(a3 + v10) = 0;
      return;
    }
  }

  memmove(a3, (v9 + v7), v10);
  *(a3 + v10) = 0;
}

uint64_t Tlv::Reader::getData(Tlv::Reader *this, int a2)
{
  v2 = a2;
  v4 = *(this + 4);
  v5 = (v4 + a2);
  v6 = *this;
  v7 = *(*this + 2);
  if (v5 > v7)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x32A, "(fIndex + length)", "<=", "fTlv->getLength()", v5, v7);
    v4 = *(this + 4);
    v6 = *this;
  }

  *(this + 4) = v4 + v2;
  return *(v6 + 8) + v4;
}

uint64_t Tlv::Reader::getDataAt(Tlv::Reader *this, unsigned int a2, int a3)
{
  v4 = (a3 + a2);
  v5 = *this;
  v6 = *(*this + 2);
  if (v4 > v6)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/TLV.cpp", 0x334, "(index + length)", "<=", "fTlv->getLength()", v4, v6);
    v5 = *this;
  }

  return *(v5 + 8) + a2;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  LODWORD(v5) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x80000000) != 0)
  {
    v10 = this->__r_.__value_.__r.__words[2];
    v8 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__n > v8)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v10 & 0x7FFFFFFFFFFFFFFFLL) < __n - v8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v7 = __s;
      v9 = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }

    v5 = HIBYTE(v10);
    v6 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v6 = this;
    if (__n > 0x16)
    {
      v7 = __s;
      v8 = 22;
      v9 = this;
LABEL_7:
      v11 = 2 * v8;
      if (__n > 2 * v8)
      {
        v11 = __n;
      }

      if ((v11 | 7) == 0x17)
      {
        v12 = 25;
      }

      else
      {
        v12 = (v11 | 7) + 1;
      }

      if (v11 >= 0x17)
      {
        v13 = v12;
      }

      else
      {
        v13 = 23;
      }

      v6 = operator new(v13);
      memcpy(v6, v7, __n);
      if (v8 != 22)
      {
        operator delete(v9);
      }

      this->__r_.__value_.__r.__words[2] = v13 | 0x8000000000000000;
      this->__r_.__value_.__r.__words[0] = v6;
LABEL_23:
      this->__r_.__value_.__l.__size_ = __n;
      goto LABEL_24;
    }
  }

  if (__n)
  {
    memmove(v6, __s, __n);
    LOBYTE(v5) = *(&this->__r_.__value_.__s + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    goto LABEL_23;
  }

  *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
LABEL_24:
  *(v6 + __n) = 0;
  return this;
}

const char *qmi::asLongString()
{
  result = "QMI Control Service";
  switch("QMI Control Service")
  {
    case 0u:
      return result;
    case 1u:
      result = "QMI Wireless Data Service";
      break;
    case 2u:
      result = "QMI Device Management Service";
      break;
    case 3u:
      result = "QMI Network Access Service";
      break;
    case 4u:
      result = "QMI Qos Service";
      break;
    case 5u:
      result = "QMI Wireless Messaging Service";
      break;
    case 6u:
      result = "QMI Position Determination Service";
      break;
    case 8u:
      result = "QMI Access Terminal Service";
      break;
    case 9u:
      result = "QMI Voice Service";
      break;
    case 0xAu:
      result = "QMI Card App Toolkit";
      break;
    case 0xBu:
      result = "QMI User Identity Module";
      break;
    case 0xCu:
      result = "QMI Phonebook Manager Service";
      break;
    case 0x1Au:
      result = "QMI Wireless Data Administrative Service";
      break;
    case 0x22u:
      result = "QMI Coexistence Service";
      break;
    case 0x24u:
      result = "QMI Persistent Device Service";
      break;
    case 0x28u:
      result = "QMI 5WI 787 Service";
      break;
    case 0x2Au:
      result = "QMI Data System Determination";
      break;
    case 0x2Bu:
      result = "QMI Subsystem Control";
      break;
    case 0x2Cu:
      result = "QMI Modem File System Extended Service";
      break;
    case 0x30u:
      result = "QMI Data Filter Service";
      break;
    case 0x52u:
      result = "QMI Media Service Extension";
      break;
    case 0xE1u:
      result = "QMI Audio Service";
      break;
    case 0xE2u:
      result = "QMI Board Support Package Service";
      break;
    case 0xE3u:
      result = "QMI Carrier IQ Service";
      break;
    case 0xE4u:
      result = "QMI Apple Wireless Diagnostics";
      break;
    case 0xE5u:
      result = "QMI Vinyl Service";
      break;
    case 0xE6u:
      result = "QMI Mav 5WI Service";
      break;
    case 0xE7u:
      result = "QMI Enhnaced Link Quality Metric Service";
      break;
    case 0xE8u:
      result = "QMI Mav P2P Service";
      break;
    case 0xE9u:
      result = "QMI BSP APPS Service";
      break;
    case 0xEAu:
      result = "QMI Stewie Service";
      break;
    case 0xEDu:
      result = "QMI Mav L1 Service";
      break;
    default:
      result = "Unknown Service";
      break;
  }

  return result;
}

uint64_t qmi::serviceTypeFromString(unsigned __int16 *a1)
{
  v2 = *(a1 + 23);
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 1) == 3)
    {
      v10 = *a1;
      if (**a1 == 21571 && *(*a1 + 2) == 76)
      {
        return 0;
      }

      if (*v10 == 17495 && *(v10 + 2) == 83)
      {
        return 1;
      }

      if (*v10 == 19780 && *(v10 + 2) == 83)
      {
        return 2;
      }

      if (*v10 == 16718 && *(v10 + 2) == 83)
      {
        return 3;
      }

      if (*v10 == 20305 && *(v10 + 2) == 83)
      {
        return 4;
      }

      v16 = *v10;
      v17 = *(v10 + 2);
      if (v16 == 19799 && v17 == 83)
      {
        return 5;
      }
    }

    if (*(a1 + 1) == 3 && **a1 == 17488 && *(*a1 + 2) == 83)
    {
      return 6;
    }

    if (*(a1 + 1) == 2)
    {
      if (**a1 == 21569)
      {
        return 8;
      }

      if ((v2 & 0x80) == 0)
      {
        if (v2 == 3)
        {
          goto LABEL_108;
        }

        if (v2 != 2)
        {
          goto LABEL_92;
        }

        goto LABEL_70;
      }
    }

    if (*(a1 + 1) != 2 || **a1 != 21334)
    {
      if (*(a1 + 1) != 3)
      {
        goto LABEL_86;
      }

      if (**a1 == 16707 && *(*a1 + 2) == 84)
      {
        return 10;
      }

      if ((v2 & 0x80) != 0)
      {
LABEL_86:
        if (*(a1 + 1) == 3)
        {
          v22 = *a1;
          goto LABEL_88;
        }
      }

      else
      {
        v22 = a1;
        if (v2 == 3)
        {
          goto LABEL_88;
        }
      }

      goto LABEL_92;
    }

    return 9;
  }

  if (v2 == 2)
  {
    if (*a1 != 21569)
    {
LABEL_70:
      if (*a1 != 21334)
      {
        goto LABEL_92;
      }

      return 9;
    }

    return 8;
  }

  if (v2 == 3)
  {
    if (*a1 != 21571 || *(a1 + 2) != 76)
    {
      if (*a1 != 17495 || *(a1 + 2) != 83)
      {
        if (*a1 != 19780 || *(a1 + 2) != 83)
        {
          if (*a1 != 16718 || *(a1 + 2) != 83)
          {
            if (*a1 != 20305 || *(a1 + 2) != 83)
            {
              if (*a1 != 19799 || *(a1 + 2) != 83)
              {
                if (*a1 != 17488 || *(a1 + 2) != 83)
                {
LABEL_108:
                  v26 = *a1 == 16707 && *(a1 + 2) == 84;
                  v22 = a1;
                  if (!v26)
                  {
LABEL_88:
                    v23 = *v22;
                    v24 = *(v22 + 2);
                    if (v23 == 18773 && v24 == 77)
                    {
                      return 11;
                    }

                    goto LABEL_92;
                  }

                  return 10;
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

      return 1;
    }

    return 0;
  }

LABEL_92:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "PBM"))
  {
    return 12;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "AUDIO"))
  {
    return 225;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "BSP"))
  {
    return 226;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "CIQ"))
  {
    return 227;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "AWD"))
  {
    return 228;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "COEX"))
  {
    return 34;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "DSD"))
  {
    return 42;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "MFSE"))
  {
    return 44;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "VINYL"))
  {
    return 229;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "MAVIMS"))
  {
    return 230;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "ELQM"))
  {
    return 231;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "PDC"))
  {
    return 36;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "P2P"))
  {
    return 232;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "MS"))
  {
    return 82;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "WDA"))
  {
    return 26;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "APPS"))
  {
    return 233;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "DFS"))
  {
    return 48;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "SSCTL"))
  {
    return 43;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "SFT"))
  {
    return 234;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "MAVL1"))
  {
    return -19;
  }

  else
  {
    return -1;
  }
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE31218, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

qmi::ClientRouter *qmi::ClientRouter::ClientRouter(qmi::ClientRouter *this, os_log_s *a2)
{
  v4 = operator new(0x60uLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = &unk_2A1D48AE8;
  v5 = MEMORY[0x29C258F10](v4 + 3, a2);
  v4[7] = 0;
  v4[6] = 0;
  v4[4] = 0;
  v4[5] = v4 + 6;
  v4[11] = 0;
  *this = v5;
  *(this + 1) = v4;
  return this;
}

{
  v4 = operator new(0x60uLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = &unk_2A1D48AE8;
  v5 = MEMORY[0x29C258F10](v4 + 3, a2);
  v4[7] = 0;
  v4[6] = 0;
  v4[4] = 0;
  v4[5] = v4 + 6;
  v4[11] = 0;
  *this = v5;
  *(this + 1) = v4;
  return this;
}

void sub_29630A468(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_29630A4FC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void qmi::ClientRouter::remove(void *a1, int a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (*v4)
  {
    v5 = v4;
    v6 = *v4;
    do
    {
      if (*(v6 + 8) >= a2)
      {
        v5 = v6;
      }

      v6 = v6[*(v6 + 8) < a2];
    }

    while (v6);
    if (v5 != v4 && *(v5 + 8) <= a2)
    {
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        v9 = v5;
        do
        {
          v8 = v9[2];
          v10 = *v8 == v9;
          v9 = v8;
        }

        while (!v10);
      }

      if (*(v2 + 16) == v5)
      {
        *(v2 + 16) = v8;
      }

      --*(v2 + 32);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v5);
      v11 = v5[8];
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v12 = v5[6];
      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      operator delete(v5);
    }
  }
}

uint64_t qmi::ClientRouter::has(uint64_t a1, int a2)
{
  v2 = *(*a1 + 24);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v4 = *(v2 + 8);
    if (v4 <= a2)
    {
      break;
    }

LABEL_3:
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  if (v4 < a2)
  {
    ++v2;
    goto LABEL_3;
  }

  return 1;
}

uint64_t *qmi::ClientRouter::get(uint64_t a1, signed int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = *(*a1 + 24);
  if (v4)
  {
    v5 = *(*a1 + 24);
    do
    {
      v6 = *(v5 + 8);
      if (v6 <= a2)
      {
        if (v6 >= a2)
        {
          goto LABEL_8;
        }

        ++v5;
      }

      v5 = *v5;
    }

    while (v5);
  }

  v7 = *(*a1 + 8);
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
LABEL_8:
    if (v4)
    {
      goto LABEL_16;
    }

LABEL_20:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  if (a2 > 3)
  {
    v8 = "???";
  }

  else
  {
    v8 = off_29EE31458[a2];
  }

  v12 = 136315138;
  v13 = v8;
  _os_log_fault_impl(&dword_2962DD000, v7, OS_LOG_TYPE_FAULT, "Could not find subscription %s", &v12, 0xCu);
  v4 = *(*a1 + 24);
  if (!v4)
  {
    goto LABEL_20;
  }

  while (1)
  {
LABEL_16:
    while (1)
    {
      v9 = *(v4 + 8);
      if (v9 <= a2)
      {
        break;
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_20;
      }
    }

    if (v9 >= a2)
    {
      break;
    }

    v4 = v4[1];
    if (!v4)
    {
      goto LABEL_20;
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return v4 + 5;
}

uint64_t qmi::ClientRouter::setHandler(uint64_t *a1, int a2, uint64_t a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v18 = a2;
  v3 = *(a3 + 24);
  if (v3)
  {
    if (v3 == a3)
    {
      v20 = v19;
      v4 = a1;
      (*(*v3 + 24))(v3, v19);
      a1 = v4;
    }

    else
    {
      v20 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = &v18;
  v5 = *a1;
  if (!*(*a1 + 32))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempted to enumerate an empty client map");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE31220, MEMORY[0x29EDC9360]);
  }

  v6 = *(v5 + 16);
  v7 = (v5 + 24);
  if (v6 != (v5 + 24))
  {
    v8 = MEMORY[0x29EDCA5F8];
    while (1)
    {
      v9 = *(v6 + 8);
      v10 = v20;
      v11 = *v21;
      v22[0] = v8;
      v22[1] = 1174405120;
      v22[2] = ___ZZNK3qmi12ClientRouter10setHandlerENS_6Client5EventENSt3__18functionIFvNS_16SubscriptionTypeEEEEENK3__0clIS5_NS_11ClientStateEEEDaT_RKT0__block_invoke;
      v22[3] = &__block_descriptor_tmp_7;
      if (!v20)
      {
        goto LABEL_13;
      }

      if (v20 != v19)
      {
        break;
      }

      v24 = v23;
      (*(*v20 + 24))();
LABEL_15:
      v25 = v9;
      qmi::Client::setHandler((v6 + 5), v11, v22);
      if (v24 == v23)
      {
        (*(*v24 + 32))(v24);
        v12 = v6[1];
        if (v12)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v24)
        {
          (*(*v24 + 40))();
        }

        v12 = v6[1];
        if (v12)
        {
          do
          {
LABEL_21:
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
          goto LABEL_9;
        }
      }

      do
      {
        v13 = v6[2];
        v14 = *v13 == v6;
        v6 = v13;
      }

      while (!v14);
LABEL_9:
      v6 = v13;
      if (v13 == v7)
      {
        goto LABEL_26;
      }
    }

    v10 = (*(*v20 + 16))();
LABEL_13:
    v24 = v10;
    goto LABEL_15;
  }

LABEL_26:
  result = v20;
  if (v20 == v19)
  {
    result = (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    result = (*(*v20 + 40))();
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

{
  v26 = *MEMORY[0x29EDCA608];
  v18 = a2;
  v3 = *(a3 + 24);
  if (v3)
  {
    if (v3 == a3)
    {
      v20 = v19;
      v4 = a1;
      (*(*v3 + 24))(v3, v19);
      a1 = v4;
    }

    else
    {
      v20 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = &v18;
  v5 = *a1;
  if (!*(*a1 + 32))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempted to enumerate an empty client map");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE31220, MEMORY[0x29EDC9360]);
  }

  v6 = *(v5 + 16);
  v7 = (v5 + 24);
  if (v6 != (v5 + 24))
  {
    v8 = MEMORY[0x29EDCA5F8];
    while (1)
    {
      v9 = *(v6 + 8);
      v10 = v20;
      v11 = *v21;
      aBlock[0] = v8;
      aBlock[1] = 1174405120;
      aBlock[2] = ___ZZNK3qmi12ClientRouter10setHandlerENS_6Client5EventENSt3__18functionIFvNS_16SubscriptionTypeEN3xpc6objectEEEEENK3__0clIS5_NS_11ClientStateEEEDaT_RKT0__block_invoke;
      aBlock[3] = &__block_descriptor_tmp_18_0;
      if (!v20)
      {
        goto LABEL_13;
      }

      if (v20 != v19)
      {
        break;
      }

      v24 = v23;
      (*(*v20 + 24))();
LABEL_15:
      v25 = v9;
      qmi::Client::setHandler((v6 + 5), v11, aBlock);
      if (v24 == v23)
      {
        (*(*v24 + 32))(v24);
        v12 = v6[1];
        if (v12)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v24)
        {
          (*(*v24 + 40))();
        }

        v12 = v6[1];
        if (v12)
        {
          do
          {
LABEL_21:
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
          goto LABEL_9;
        }
      }

      do
      {
        v13 = v6[2];
        v14 = *v13 == v6;
        v6 = v13;
      }

      while (!v14);
LABEL_9:
      v6 = v13;
      if (v13 == v7)
      {
        goto LABEL_26;
      }
    }

    v10 = (*(*v20 + 16))();
LABEL_13:
    v24 = v10;
    goto LABEL_15;
  }

LABEL_26:
  result = v20;
  if (v20 == v19)
  {
    result = (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    result = (*(*v20 + 40))();
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

{
  v26 = *MEMORY[0x29EDCA608];
  v18 = a2;
  v3 = *(a3 + 24);
  if (v3)
  {
    if (v3 == a3)
    {
      v20 = v19;
      v4 = a1;
      (*(*v3 + 24))(v3, v19);
      a1 = v4;
    }

    else
    {
      v20 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = &v18;
  v5 = *a1;
  if (!*(*a1 + 32))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempted to enumerate an empty client map");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE31220, MEMORY[0x29EDC9360]);
  }

  v6 = *(v5 + 16);
  v7 = (v5 + 24);
  if (v6 != (v5 + 24))
  {
    v8 = MEMORY[0x29EDCA5F8];
    while (1)
    {
      v9 = *(v6 + 8);
      v10 = v20;
      v11 = *v21;
      aBlock[0] = v8;
      aBlock[1] = 1174405120;
      aBlock[2] = ___ZZNK3qmi12ClientRouter10setHandlerENS_6Client5EventENSt3__18functionIFvNS_16SubscriptionTypeEN8dispatch5groupEEEEENK3__0clIS5_NS_11ClientStateEEEDaT_RKT0__block_invoke;
      aBlock[3] = &__block_descriptor_tmp_20_0;
      if (!v20)
      {
        goto LABEL_13;
      }

      if (v20 != v19)
      {
        break;
      }

      v24 = v23;
      (*(*v20 + 24))();
LABEL_15:
      v25 = v9;
      qmi::Client::setHandler((v6 + 5), v11, aBlock);
      if (v24 == v23)
      {
        (*(*v24 + 32))(v24);
        v12 = v6[1];
        if (v12)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v24)
        {
          (*(*v24 + 40))();
        }

        v12 = v6[1];
        if (v12)
        {
          do
          {
LABEL_21:
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
          goto LABEL_9;
        }
      }

      do
      {
        v13 = v6[2];
        v14 = *v13 == v6;
        v6 = v13;
      }

      while (!v14);
LABEL_9:
      v6 = v13;
      if (v13 == v7)
      {
        goto LABEL_26;
      }
    }

    v10 = (*(*v20 + 16))();
LABEL_13:
    v24 = v10;
    goto LABEL_15;
  }

LABEL_26:
  result = v20;
  if (v20 == v19)
  {
    result = (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    result = (*(*v20 + 40))();
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29630AAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t qmi::ClientRouter::setHandler(qmi::Client::Event,std::function<void ()(qmi::SubscriptionType)>)const::$_0::~$_0(uint64_t a1)
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

void sub_29630AF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t qmi::ClientRouter::setHandler(qmi::Client::Event,std::function<void ()(qmi::SubscriptionType,xpc::object)>)const::$_0::~$_0(uint64_t a1)
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

void sub_29630B324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t qmi::ClientRouter::setHandler(qmi::Client::Event,std::function<void ()(qmi::SubscriptionType,dispatch::group)>)const::$_0::~$_0(uint64_t a1)
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

void qmi::ClientRouter::setHandler(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  if (!*(*a1 + 32))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Attempted to enumerate an empty client map");
    __cxa_throw(exception, off_29EE31220, MEMORY[0x29EDC9360]);
  }

  v3 = *(v2 + 16);
  v4 = (v2 + 24);
  if (v3 != (v2 + 24))
  {
    do
    {
      qmi::Client::setHandler((v3 + 5), a2, 0);
      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }
}

void qmi::ClientRouter::setIndShouldWake(qmi::ClientRouter *this, __int16 a2, char a3)
{
  v3 = *this;
  if (!*(*this + 32))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Attempted to enumerate an empty client map");
    __cxa_throw(exception, off_29EE31220, MEMORY[0x29EDC9360]);
  }

  v4 = *(v3 + 16);
  v5 = (v3 + 24);
  if (v4 != (v3 + 24))
  {
    do
    {
      qmi::Client::State::setIndShouldWake(v4[7], a2, a3);
      v8 = v4[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
    }

    while (v9 != v5);
  }
}

void qmi::ClientRouter::start(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (a2 == 3)
  {
    v3 = *(v2 + 16);
    v4 = (v2 + 24);
    if (v3 != (v2 + 24))
    {
      do
      {
        qmi::Client::State::start(v3[7]);
        v5 = v3[1];
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = v3[2];
            v7 = *v6 == v3;
            v3 = v6;
          }

          while (!v7);
        }

        v3 = v6;
      }

      while (v6 != v4);
    }
  }

  else
  {
    v10 = *(v2 + 24);
    v8 = v2 + 24;
    v9 = v10;
    if (v10)
    {
      v11 = v8;
      do
      {
        if (*(v9 + 32) >= a2)
        {
          v11 = v9;
        }

        v9 = *(v9 + 8 * (*(v9 + 32) < a2));
      }

      while (v9);
      if (v11 != v8 && *(v11 + 32) <= a2)
      {
        v12 = *(v11 + 56);

        qmi::Client::State::start(v12);
      }
    }
  }
}

void qmi::ClientRouter::stop(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (a2 == 3)
  {
    v3 = *(v2 + 16);
    v4 = (v2 + 24);
    if (v3 != (v2 + 24))
    {
      do
      {
        qmi::Client::State::stop(v3[7]);
        v5 = v3[1];
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = v3[2];
            v7 = *v6 == v3;
            v3 = v6;
          }

          while (!v7);
        }

        v3 = v6;
      }

      while (v6 != v4);
    }
  }

  else
  {
    v10 = *(v2 + 24);
    v8 = v2 + 24;
    v9 = v10;
    if (v10)
    {
      v11 = v8;
      do
      {
        if (*(v9 + 32) >= a2)
        {
          v11 = v9;
        }

        v9 = *(v9 + 8 * (*(v9 + 32) < a2));
      }

      while (v9);
      if (v11 != v8 && *(v11 + 32) <= a2)
      {
        v12 = *(v11 + 56);

        qmi::Client::State::stop(v12);
      }
    }
  }
}

void qmi::ClientRouter::reset(qmi::ClientRouter *this)
{
  v1 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void qmi::ClientRouter::addClient(void *a1, int a2, std::__shared_weak_count **this)
{
  qmi::Client::set(this, "sim", a2);
  v6 = *a1;
  v7 = this[2];
  v8 = this[3];
  v22 = v8;
  this[2] = 0;
  this[3] = 0;
  v10 = v6 + 3;
  v9 = v6[3];
  if (v9)
  {
    v11 = v6 + 3;
    v12 = v6[3];
    do
    {
      if (*(v12 + 32) >= a2)
      {
        v11 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 32) < a2));
    }

    while (v12);
    if (v11 != v10 && *(v11 + 8) <= a2)
    {
      v22 = 0;
      v19 = v11[8];
      v11[7] = v7;
      v11[8] = v8;
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      goto LABEL_40;
    }

    v13 = *v11;
    if (v6[2] == v11)
    {
      v15 = v11;
      goto LABEL_30;
    }

    if (v13)
    {
      v14 = *v11;
      do
      {
        v15 = v14;
        v14 = v14[1];
      }

      while (v14);
      if (*(v15 + 8) < a2)
      {
        goto LABEL_30;
      }

LABEL_18:
      if (v9)
      {
        while (1)
        {
          while (1)
          {
            v17 = v9;
            v18 = *(v9 + 32);
            if (v18 <= a2)
            {
              break;
            }

            v9 = *v17;
            v10 = v17;
            if (!*v17)
            {
              goto LABEL_37;
            }
          }

          if (v18 >= a2)
          {
            break;
          }

          v10 = v17 + 1;
          v9 = v17[1];
          if (!v9)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        v17 = v6 + 3;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v11 = v6 + 3;
    if (v6[2] == v10)
    {
      v13 = 0;
      v11 = v6 + 3;
      v15 = v6 + 3;
      goto LABEL_30;
    }
  }

  v15 = v11;
  do
  {
    v16 = v15;
    v15 = v15[2];
  }

  while (*v15 == v16);
  v13 = 0;
  if (*(v15 + 8) >= a2)
  {
    goto LABEL_18;
  }

LABEL_30:
  if (v13)
  {
    v17 = v15;
  }

  else
  {
    v17 = v11;
  }

  if (v13)
  {
    v10 = v15 + 1;
  }

  else
  {
    v10 = v11;
  }

LABEL_36:
  if (!*v10)
  {
LABEL_37:
    v20 = operator new(0x48uLL);
    v20[8] = a2;
    *(v20 + 5) = 0;
    *(v20 + 6) = 0;
    *(v20 + 7) = v7;
    *(v20 + 8) = v8;
    v22 = 0;
    *v20 = 0;
    *(v20 + 1) = 0;
    *(v20 + 2) = v17;
    *v10 = v20;
    v21 = *v6[2];
    if (v21)
    {
      v6[2] = v21;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v6[3], v20);
    ++v6[4];
  }

LABEL_40:
  if (v22)
  {
    if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }
  }
}

uint64_t qmi::ClientRouter::setIndHandlerInternal(uint64_t *a1, __int16 a2, uint64_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v20 = a2;
  v3 = *(a3 + 24);
  if (v3)
  {
    if (v3 == a3)
    {
      v23 = v22;
      v4 = a1;
      (*(*v3 + 24))(v3, v22);
      a1 = v4;
    }

    else
    {
      v23 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = &v20;
  v5 = *a1;
  if (!*(*a1 + 32))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempted to enumerate an empty client map");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE31220, MEMORY[0x29EDC9360]);
  }

  v6 = *(v5 + 16);
  v7 = (v5 + 24);
  if (v6 != (v5 + 24))
  {
    v8 = MEMORY[0x29EDCA5F8];
    while (1)
    {
      v9 = *(v6 + 8);
      v10 = v23;
      v11 = *v24;
      aBlock[0] = v8;
      aBlock[1] = 1174405120;
      aBlock[2] = ___ZZNK3qmi12ClientRouter21setIndHandlerInternalEtNSt3__18functionIFvNS_16SubscriptionTypeERK13QMIServiceMsgEEEENK3__0clIS3_NS_11ClientStateEEEDaT_RKT0__block_invoke;
      aBlock[3] = &__block_descriptor_tmp_22_0;
      if (!v23)
      {
        goto LABEL_13;
      }

      if (v23 != v22)
      {
        break;
      }

      v27 = v26;
      (*(*v23 + 24))();
LABEL_15:
      v28 = v9;
      v12 = v6[7];
      v13 = _Block_copy(aBlock);
      v21 = v13;
      qmi::Client::State::setIndHandler(v12, v11, &v21);
      if (v13)
      {
        _Block_release(v13);
      }

      if (v27 == v26)
      {
        (*(*v27 + 32))(v27);
        v14 = v6[1];
        if (v14)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v27)
        {
          (*(*v27 + 40))();
        }

        v14 = v6[1];
        if (v14)
        {
          do
          {
LABEL_23:
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
          goto LABEL_9;
        }
      }

      do
      {
        v15 = v6[2];
        v16 = *v15 == v6;
        v6 = v15;
      }

      while (!v16);
LABEL_9:
      v6 = v15;
      if (v15 == v7)
      {
        goto LABEL_28;
      }
    }

    v10 = (*(*v23 + 16))();
LABEL_13:
    v27 = v10;
    goto LABEL_15;
  }

LABEL_28:
  result = v23;
  if (v23 == v22)
  {
    result = (*(*v23 + 32))(v23);
  }

  else if (v23)
  {
    result = (*(*v23 + 40))();
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29630BE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t qmi::ClientRouter::setIndHandlerInternal(unsigned short,std::function<void ()(qmi::SubscriptionType,QMIServiceMsg const&)>)const::$_0::~$_0(uint64_t a1)
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

void std::__shared_ptr_emplace<qmi::ClientRouter::State>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D48AE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<qmi::ClientRouter::State>::__on_zero_shared(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = *(a1 + 88);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    std::__tree<std::__value_type<qmi::SubscriptionType,qmi::ClientState>,std::__map_value_compare<qmi::SubscriptionType,std::__value_type<qmi::SubscriptionType,qmi::ClientState>,std::less<qmi::SubscriptionType>,true>,std::allocator<std::__value_type<qmi::SubscriptionType,qmi::ClientState>>>::destroy(*(a1 + 48));
    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    std::__tree<std::__value_type<qmi::SubscriptionType,qmi::ClientState>,std::__map_value_compare<qmi::SubscriptionType,std::__value_type<qmi::SubscriptionType,qmi::ClientState>,std::less<qmi::SubscriptionType>,true>,std::allocator<std::__value_type<qmi::SubscriptionType,qmi::ClientState>>>::destroy(*(a1 + 48));
    v4 = *(a1 + 32);
    if (!v4)
    {
LABEL_8:

      JUMPOUT(0x29C258F40);
    }
  }

  os_release(v4);
  goto LABEL_8;
}

void std::__tree<std::__value_type<qmi::SubscriptionType,qmi::ClientState>,std::__map_value_compare<qmi::SubscriptionType,std::__value_type<qmi::SubscriptionType,qmi::ClientState>,std::less<qmi::SubscriptionType>,true>,std::allocator<std::__value_type<qmi::SubscriptionType,qmi::ClientState>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<qmi::SubscriptionType,qmi::ClientState>,std::__map_value_compare<qmi::SubscriptionType,std::__value_type<qmi::SubscriptionType,qmi::ClientState>,std::less<qmi::SubscriptionType>,true>,std::allocator<std::__value_type<qmi::SubscriptionType,qmi::ClientState>>>::destroy(*a1);
    std::__tree<std::__value_type<qmi::SubscriptionType,qmi::ClientState>,std::__map_value_compare<qmi::SubscriptionType,std::__value_type<qmi::SubscriptionType,qmi::ClientState>,std::less<qmi::SubscriptionType>,true>,std::allocator<std::__value_type<qmi::SubscriptionType,qmi::ClientState>>>::destroy(a1[1]);
    v2 = a1[8];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = a1[6];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(a1);
  }
}

uint64_t **std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (v21 && (v21[3] & 1) == 0)
      {
LABEL_65:
        v20 = v7;
      }

      else
      {
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v29 = v20[1];
        *v7 = v29;
        if (v29)
        {
          *(v29 + 16) = v7;
        }

        v30 = v7[2];
        v30[*v30 != v7] = v20;
        v20[1] = v7;
        v20[2] = v30;
        v7[2] = v20;
        v21 = v7;
      }

      v31 = v20[2];
      *(v20 + 24) = *(v31 + 24);
      *(v31 + 24) = 1;
      *(v21 + 24) = 1;
      v32 = *(v31 + 8);
      v33 = *v32;
      *(v31 + 8) = *v32;
      if (v33)
      {
        *(v33 + 16) = v31;
      }

      v34 = *(v31 + 16);
      v32[2] = v34;
      v34[*v34 != v31] = v32;
      *v32 = v31;
      *(v31 + 16) = v32;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_65;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      v22[2] = v14;
    }

    v23 = v14[2];
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v15[2] = v23;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_69;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v25 && (v25[3] & 1) == 0)
  {
LABEL_69:
    v26 = v7;
    goto LABEL_70;
  }

  *(v26 + 24) = 1;
  *(v7 + 24) = 0;
  v27 = *v26;
  v7[1] = *v26;
  if (v27)
  {
    *(v27 + 16) = v7;
  }

  v28 = v7[2];
  v26[2] = v28;
  v28[*v28 != v7] = v26;
  *v26 = v7;
  v7[2] = v26;
  v25 = v7;
LABEL_70:
  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  *(v36 + 16) = v38;
  v35[2] = v36;
  return result;
}

uint64_t __copy_helper_block_e8_32c50_ZTSNSt3__18functionIFvN3qmi16SubscriptionTypeEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 56);
  if (result)
  {
    if (result == a2 + 32)
    {
      *(a1 + 56) = a1 + 32;
      v4 = *(**(a2 + 56) + 24);

      return v4();
    }

    else
    {
      result = (*(*result + 16))(result);
      *(a1 + 56) = result;
    }
  }

  else
  {
    *(a1 + 56) = 0;
  }

  return result;
}

uint64_t __destroy_helper_block_e8_32c50_ZTSNSt3__18functionIFvN3qmi16SubscriptionTypeEEEE(uint64_t a1)
{
  v1 = a1 + 32;
  result = *(a1 + 56);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void ___ZZNK3qmi12ClientRouter10setHandlerENS_6Client5EventENSt3__18functionIFvNS_16SubscriptionTypeEN3xpc6objectEEEEENK3__0clIS5_NS_11ClientStateEEEDaT_RKT0__block_invoke(uint64_t a1, xpc_object_t object)
{
  v3 = *(a1 + 64);
  objecta = object;
  if (!object)
  {
    objecta = xpc_null_create();
    v6 = v3;
    v4 = *(a1 + 56);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  xpc_retain(object);
  v6 = v3;
  v4 = *(a1 + 56);
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  (*(*v4 + 48))(v4, &v6, &objecta);
  xpc_release(objecta);
}

uint64_t __copy_helper_block_e8_32c63_ZTSNSt3__18functionIFvN3qmi16SubscriptionTypeEN3xpc6objectEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 56);
  if (result)
  {
    if (result == a2 + 32)
    {
      *(a1 + 56) = a1 + 32;
      v4 = *(**(a2 + 56) + 24);

      return v4();
    }

    else
    {
      result = (*(*result + 16))(result);
      *(a1 + 56) = result;
    }
  }

  else
  {
    *(a1 + 56) = 0;
  }

  return result;
}

uint64_t __destroy_helper_block_e8_32c63_ZTSNSt3__18functionIFvN3qmi16SubscriptionTypeEN3xpc6objectEEEE(uint64_t a1)
{
  v1 = a1 + 32;
  result = *(a1 + 56);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void ___ZZNK3qmi12ClientRouter10setHandlerENS_6Client5EventENSt3__18functionIFvNS_16SubscriptionTypeEN8dispatch5groupEEEEENK3__0clIS5_NS_11ClientStateEEEDaT_RKT0__block_invoke(uint64_t a1, dispatch_object_t object)
{
  v3 = *(a1 + 64);
  objecta = object;
  if (object)
  {
    dispatch_retain(object);
  }

  v6 = v3;
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &v6, &objecta);
  if (objecta)
  {
    dispatch_release(objecta);
  }
}

void sub_29630C7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c67_ZTSNSt3__18functionIFvN3qmi16SubscriptionTypeEN8dispatch5groupEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 56);
  if (result)
  {
    if (result == a2 + 32)
    {
      *(a1 + 56) = a1 + 32;
      v4 = *(**(a2 + 56) + 24);

      return v4();
    }

    else
    {
      result = (*(*result + 16))(result);
      *(a1 + 56) = result;
    }
  }

  else
  {
    *(a1 + 56) = 0;
  }

  return result;
}

uint64_t __destroy_helper_block_e8_32c67_ZTSNSt3__18functionIFvN3qmi16SubscriptionTypeEN8dispatch5groupEEEE(uint64_t a1)
{
  v1 = a1 + 32;
  result = *(a1 + 56);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t __copy_helper_block_e8_32c67_ZTSNSt3__18functionIFvN3qmi16SubscriptionTypeERK13QMIServiceMsgEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 56);
  if (result)
  {
    if (result == a2 + 32)
    {
      *(a1 + 56) = a1 + 32;
      v4 = *(**(a2 + 56) + 24);

      return v4();
    }

    else
    {
      result = (*(*result + 16))(result);
      *(a1 + 56) = result;
    }
  }

  else
  {
    *(a1 + 56) = 0;
  }

  return result;
}

uint64_t __destroy_helper_block_e8_32c67_ZTSNSt3__18functionIFvN3qmi16SubscriptionTypeERK13QMIServiceMsgEEE(uint64_t a1)
{
  v1 = a1 + 32;
  result = *(a1 + 56);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void ATCSCommPortConfigurer::ATCSCommPortConfigurer(ATCSCommPortConfigurer *this, int a2, int a3, char a4, char a5, char a6)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 8) = a4;
  *(this + 9) = a5;
  *(this + 10) = a6;
  ATCSCommPortConfigurer::configure(this);
}

{
  *this = a2;
  *(this + 1) = a3;
  *(this + 8) = a4;
  *(this + 9) = a5;
  *(this + 10) = a6;
  ATCSCommPortConfigurer::configure(this);
}

uint64_t ATCSCommPortConfigurer::configure(ATCSCommPortConfigurer *this)
{
  v15 = *MEMORY[0x29EDCA608];
  v14.c_ospeed = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v14.c_cc = v2;
  *&v14.c_cc[16] = v2;
  *&v14.c_iflag = v2;
  *&v14.c_cflag = v2;
  if (tcgetattr(*this, &v14))
  {
    v6 = *__error();
    exception = __cxa_allocate_exception(0x208uLL);
    v8 = strerror(v6);
    _ATCSException::_ATCSException(exception, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/Helpers/ATCSCommPortConfigurer.cpp", 44, "Failed get attributes, err = %s (%d)\n", v8, v6);
  }

  cfsetspeed(&v14, *(this + 1));
  cfmakeraw(&v14);
  v14.c_iflag = v14.c_iflag & 0xFFFFFFFFFFFFF0CCLL | 1;
  v14.c_oflag &= ~1uLL;
  *&v14.c_cc[16] = *(this + 4);
  v3 = 51968;
  if (*(this + 10))
  {
    v3 = 248576;
  }

  v14.c_cflag = v3 | v14.c_cflag & 0xFFFFFFFFFFFC20FFLL;
  v14.c_lflag &= 0xFFFFFFFFFFFFFA77;
  result = tcsetattr(*this, 0, &v14);
  if (result)
  {
    v10 = *__error();
    v11 = __cxa_allocate_exception(0x208uLL);
    v12 = strerror(v10);
    _ATCSException::_ATCSException(v11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/Helpers/ATCSCommPortConfigurer.cpp", 89, "Failed set attributes, err = %s (%d)", v12, v10);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ATCSTimer::timerBootstrap(ATCSTimer *this, ATCSTimerDriver *a2)
{
  {
    ATCSMutex::ATCSMutex(&ATCSTimerGetTimerListLock(void)::sMutex, "timer list lock");
  }

  v3 = ATCSTimerGetTimerListLock(void)::sMutex;
  pthread_mutex_lock(ATCSTimerGetTimerListLock(void)::sMutex);
  v4 = pthread_self();
  *(v3 + 64) = v4;
  if (!ATCSTimer::fsDriver)
  {
    if (!this)
    {
      this = ATCSTimerDriver::create(v4);
    }

    ATCSTimer::fsDriver = this;
    *(this + 1) = ATCSTimer::dispatchExpiredTimers;
  }

  v5 = ATCSTimerGetTimerListLock(void)::sMutex;
  pthread_self();
  v5[1].__sig = 0;
  return pthread_mutex_unlock(v5);
}

void sub_29630CD38(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2584);
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

void *ATCSTimerDriver::create(ATCSTimerDriver *this)
{
  v1 = operator new(0x28uLL);
  v1[2] = 0;
  *v1 = &unk_2A1D48BF8;
  v1[1] = 0;
  v2 = operator new(0x48uLL);
  v2[1].__sig = 0;
  if ((initialized & 1) == 0)
  {
    pthread_key_create(&threadInfoKey, 0);
    initialized = 1;
  }

  pthread_mutex_init(v2, 0);
  v1[2] = v2;
  v3 = malloc(0x30uLL);
  v1[3] = v3;
  pthread_cond_init(v3, 0);
  *(v1 + 8) = 0;
  *(v1 + 36) = 0;
  ATCSThreadSpawn("ATCSTimer Thread", ATCSTimerDriver::startATCSTimerDispatcher, v1, 1);
  return v1;
}

void sub_29630CE40(_Unwind_Exception *a1)
{
  ATCSCondition::~ATCSCondition(v3);
  ATCSMutex::~ATCSMutex(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t ATCSTimer::dispatchExpiredTimers(ATCSTimer *this)
{
  {
    ATCSMutex::ATCSMutex(&ATCSTimerGetTimerListLock(void)::sMutex, "timer list lock");
  }

  v1 = ATCSTimerGetTimerListLock(void)::sMutex;
  pthread_mutex_lock(ATCSTimerGetTimerListLock(void)::sMutex);
  *(v1 + 64) = pthread_self();
  v2 = (*(*ATCSTimer::fsDriver + 24))(ATCSTimer::fsDriver);
  v3 = ATCSTimer::fATCSTimerList;
  if (ATCSTimer::fATCSTimerList)
  {
    v4 = v2;
    while (v4 >= *(v3 + 24))
    {
      v5 = *(v3 + 40);
      ATCSTimer::fATCSTimerList = v5;
      if (v5)
      {
        *(v5 + 48) = &ATCSTimer::fATCSTimerList;
      }

      *(v3 + 28) = 0;
      *(v3 + 40) = 0;
      *(v3 + 48) = 0;
      v6 = *(v3 + 32);
      *(v3 + 32) = 0;
      {
        ATCSMutex::ATCSMutex(&ATCSTimerGetTimerListLock(void)::sMutex, "timer list lock");
      }

      v7 = ATCSTimerGetTimerListLock(void)::sMutex;
      pthread_self();
      v7[1].__sig = 0;
      pthread_mutex_unlock(v7);
      (*(*v6 + 16))(v6);
      (*(*v6 + 8))(v6);
      {
        ATCSMutex::ATCSMutex(&ATCSTimerGetTimerListLock(void)::sMutex, "timer list lock");
      }

      v8 = ATCSTimerGetTimerListLock(void)::sMutex;
      pthread_mutex_lock(ATCSTimerGetTimerListLock(void)::sMutex);
      *(v8 + 64) = pthread_self();
      v9 = ATCSTimer::fATCSTimerList;
      if (ATCSTimer::fATCSTimerList == v3 && *(ATCSTimer::fATCSTimerList + 24) < v4)
      {
        _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/Timers/ATCSTimer.cpp", 0xA8, "TIME_GTE(fATCSTimerList->fDeadline, now)", "==", "true", 0, 1);
        v9 = ATCSTimer::fATCSTimerList;
      }

      v3 = v9;
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    (*(*ATCSTimer::fsDriver + 16))(ATCSTimer::fsDriver);
  }

LABEL_18:
  {
    ATCSMutex::ATCSMutex(&ATCSTimerGetTimerListLock(void)::sMutex, "timer list lock");
  }

  v10 = ATCSTimerGetTimerListLock(void)::sMutex;
  pthread_self();
  v10[1].__sig = 0;

  return pthread_mutex_unlock(v10);
}

void ATCSTimer::ATCSTimer(ATCSTimer *this)
{
  *this = 0;
  *(this + 1) = 0;
  ctu::OsLogContext::OsLogContext(v2, "com.apple.telephony.bb", "atcs.timer");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C258F30](this + 16, v3);
  MEMORY[0x29C258F40](v3);
  ctu::OsLogContext::~OsLogContext(v2);
  *(this + 6) = 0;
  *(this + 28) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  if (!ATCSTimer::fsDriver)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/Timers/ATCSTimer.cpp", 0x38, "fsDriver", "!=", "NULL", 0, 0);
  }
}

void ATCSTimer::~ATCSTimer(ATCSTimer *this)
{
  if (*(this + 28))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/Timers/ATCSTimer.cpp", 0x3D, "fPending", "!=", "true", 1, 1);
  }

  MEMORY[0x29C258F40](this + 16);
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

{
  if (*(this + 28))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/Timers/ATCSTimer.cpp", 0x3D, "fPending", "!=", "true", 1, 1);
  }

  MEMORY[0x29C258F40](this + 16);
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t ATCSTimer::set(uint64_t a1, int a2, uint64_t a3)
{
  {
    ATCSMutex::ATCSMutex(&ATCSTimerGetTimerListLock(void)::sMutex, "timer list lock");
  }

  v6 = ATCSTimerGetTimerListLock(void)::sMutex;
  pthread_mutex_lock(ATCSTimerGetTimerListLock(void)::sMutex);
  *(v6 + 64) = pthread_self();
  if (a2 < 0)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/Timers/ATCSTimer.cpp", 0x44, "relativeTimeoutMilliseconds", ">=", "0", a2, 0);
  }

  if (*(a1 + 28) == 1)
  {
    v8 = (a1 + 40);
    v7 = *(a1 + 40);
    if (v7 && *(v7 + 48) != v8)
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/Timers/ATCSTimer.cpp", 0x7B, "fNext == NULL", "||", "fNext->fPrev == &fNext", 0, 0);
    }

    v9 = *(a1 + 48);
    if (*v9 != a1)
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/Timers/ATCSTimer.cpp", 0x7C, "*fPrev", "==", "this", *v9, a1);
      v9 = *(a1 + 48);
    }

    v10 = *v8;
    *v9 = *v8;
    if (v10)
    {
      *(v10 + 6) = v9;
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    *(a1 + 28) = 0;
  }

  v12 = (*(*ATCSTimer::fsDriver + 24))(ATCSTimer::fsDriver) + a2;
  *(a1 + 24) = v12;
  *(a1 + 32) = a3;
  v13 = ATCSTimer::fATCSTimerList;
  if (!ATCSTimer::fATCSTimerList)
  {
    *(a1 + 40) = 0;
    ATCSTimer::fATCSTimerList = a1;
LABEL_22:
    *(a1 + 48) = &ATCSTimer::fATCSTimerList;
    (*(*ATCSTimer::fsDriver + 16))(ATCSTimer::fsDriver);
    goto LABEL_25;
  }

  if (*(ATCSTimer::fATCSTimerList + 24) >= v12)
  {
    *(a1 + 40) = ATCSTimer::fATCSTimerList;
    ATCSTimer::fATCSTimerList = a1;
    *(v13 + 48) = a1 + 40;
    goto LABEL_22;
  }

  while (1)
  {
    v14 = v13;
    v13 = *(v13 + 40);
    if (!v13)
    {
      break;
    }

    if (*(v13 + 24) > v12)
    {
      v15 = v14 + 40;
      *(a1 + 40) = v13;
      *(v13 + 48) = a1 + 40;
      goto LABEL_24;
    }
  }

  v15 = v14 + 40;
  *(a1 + 40) = 0;
LABEL_24:
  *(v14 + 40) = a1;
  *(a1 + 48) = v15;
LABEL_25:
  *(a1 + 28) = 1;
  v16 = ATCSTimerGetTimerListLock(void)::sMutex;
  pthread_self();
  v16[1].__sig = 0;
  return pthread_mutex_unlock(v16);
}

void sub_29630D658(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2584);
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t ATCSTimer::cancel_nl(ATCSTimer *this)
{
  v1 = *(this + 28);
  if (v1 == 1)
  {
    v4 = (this + 40);
    v3 = *(this + 5);
    if (v3 && *(v3 + 48) != v4)
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/Timers/ATCSTimer.cpp", 0x7B, "fNext == NULL", "||", "fNext->fPrev == &fNext", 0, 0);
    }

    v5 = *(this + 6);
    if (*v5 != this)
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/Timers/ATCSTimer.cpp", 0x7C, "*fPrev", "==", "this", *v5, this);
      v5 = *(this + 6);
    }

    v6 = *v4;
    *v5 = *v4;
    if (v6)
    {
      *(v6 + 6) = v5;
    }

    v7 = *(this + 4);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    *(this + 28) = 0;
  }

  return v1;
}

uint64_t ATCSTimer::cancel(ATCSTimer *this)
{
  {
    ATCSMutex::ATCSMutex(&ATCSTimerGetTimerListLock(void)::sMutex, "timer list lock");
  }

  v2 = ATCSTimerGetTimerListLock(void)::sMutex;
  pthread_mutex_lock(ATCSTimerGetTimerListLock(void)::sMutex);
  *(v2 + 64) = pthread_self();
  v3 = *(this + 28);
  if (v3 == 1)
  {
    v5 = (this + 40);
    v4 = *(this + 5);
    if (v4 && *(v4 + 48) != v5)
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/Timers/ATCSTimer.cpp", 0x7B, "fNext == NULL", "||", "fNext->fPrev == &fNext", 0, 0);
    }

    v6 = *(this + 6);
    if (*v6 != this)
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/Timers/ATCSTimer.cpp", 0x7C, "*fPrev", "==", "this", *v6, this);
      v6 = *(this + 6);
    }

    v7 = *v5;
    *v6 = *v5;
    if (v7)
    {
      *(v7 + 6) = v6;
    }

    v8 = *(this + 4);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    *(this + 28) = 0;
  }

  v9 = ATCSTimerGetTimerListLock(void)::sMutex;
  pthread_self();
  v9[1].__sig = 0;
  pthread_mutex_unlock(v9);
  return v3;
}

void sub_29630D90C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2584);
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

void ATCSTimer::printTimerQueue(NSObject *this, os_log_s *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = (*(*ATCSTimer::fsDriver + 24))(ATCSTimer::fsDriver, a2);
  v4 = ATCSTimer::fATCSTimerList;
  if (ATCSTimer::fATCSTimerList)
  {
    v5 = v3;
    do
    {
      if (os_log_type_enabled(this, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(v4 + 24) - v5;
        *buf = 67109120;
        v9 = v6;
        _os_log_debug_impl(&dword_2962DD000, this, OS_LOG_TYPE_DEBUG, " %d", buf, 8u);
      }

      v4 = *(v4 + 40);
    }

    while (v4);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void ATCSTimerDriver::ATCSTimerDriver(ATCSTimerDriver *this)
{
  *(this + 2) = 0;
  *this = &unk_2A1D48BF8;
  *(this + 1) = 0;
  v2 = operator new(0x48uLL);
  v2[1].__sig = 0;
  if ((initialized & 1) == 0)
  {
    pthread_key_create(&threadInfoKey, 0);
    initialized = 1;
  }

  pthread_mutex_init(v2, 0);
  *(this + 2) = v2;
  v3 = malloc(0x30uLL);
  *(this + 3) = v3;
  pthread_cond_init(v3, 0);
  *(this + 8) = 0;
  *(this + 36) = 0;
  ATCSThreadSpawn("ATCSTimer Thread", ATCSTimerDriver::startATCSTimerDispatcher, this, 1);
}

{
  *(this + 2) = 0;
  *this = &unk_2A1D48BF8;
  *(this + 1) = 0;
  v2 = operator new(0x48uLL);
  v2[1].__sig = 0;
  if ((initialized & 1) == 0)
  {
    pthread_key_create(&threadInfoKey, 0);
    initialized = 1;
  }

  pthread_mutex_init(v2, 0);
  *(this + 2) = v2;
  v3 = malloc(0x30uLL);
  *(this + 3) = v3;
  pthread_cond_init(v3, 0);
  *(this + 8) = 0;
  *(this + 36) = 0;
  ATCSThreadSpawn("ATCSTimer Thread", ATCSTimerDriver::startATCSTimerDispatcher, this, 1);
}

void sub_29630DB18(_Unwind_Exception *a1)
{
  ATCSCondition::~ATCSCondition(v2);
  ATCSMutex::~ATCSMutex(v1);
  _Unwind_Resume(a1);
}

void ATCSTimerDriver::startATCSTimerDispatcher(ATCSTimerDriver *this, void *a2)
{
  while (1)
  {
    v3 = *(this + 2);
    pthread_mutex_lock(v3);
    v3[1].__sig = pthread_self();
    if (!systemtime(void)::denom)
    {
      break;
    }

    while (1)
    {
      v4 = mach_absolute_time();
      if (*(this + 36) != 1)
      {
        goto LABEL_16;
      }

LABEL_5:
      v5 = systemtime(void)::numer * v4 / systemtime(void)::denom;
      v6 = *(this + 8);
      v7 = v6 - v5;
      if (v6 <= v5)
      {
        break;
      }

      v8 = *(this + 2);
      v9 = pthread_self();
      v8[1].__sig = 0;
      if ((v7 & 0x80000000) != 0)
      {
LABEL_3:
        pthread_cond_wait(*(this + 3), v8);
        v8[1].__sig = v9;
        if (!systemtime(void)::denom)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v19.tv_sec = v7 / 0x3E8uLL;
        v19.tv_nsec = 1000000 * (v7 % 0x3E8);
        pthread_cond_timedwait_relative_np(*(this + 3), v8, &v19);
        v8[1].__sig = v9;
        if (!systemtime(void)::denom)
        {
          goto LABEL_8;
        }
      }
    }

    *(this + 36) = 0;
    v16 = *(this + 2);
    pthread_self();
    v16[1].__sig = 0;
    v17 = pthread_mutex_unlock(v16);
    v18 = *(this + 1);
    if (v18)
    {
      v18(v17);
    }
  }

LABEL_8:
  v19.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&v19);
  if (HIDWORD(v19.tv_sec))
  {
    tv_sec_high = HIDWORD(v19.tv_sec);
    tv_sec = v19.tv_sec;
    do
    {
      v12 = tv_sec_high;
      tv_sec_high = tv_sec % tv_sec_high;
      tv_sec = v12;
    }

    while (tv_sec_high);
  }

  else
  {
    v12 = v19.tv_sec;
  }

  v13 = 1000000;
  v14 = LODWORD(v19.tv_sec) / v12;
  do
  {
    v15 = v14;
    v14 = v13;
    v13 = v15 % v13;
  }

  while (v13);
  systemtime(void)::numer = LODWORD(v19.tv_sec) / v12 / v14;
  systemtime(void)::denom = 0xF4240 / v14 * (HIDWORD(v19.tv_sec) / v12);
  v4 = mach_absolute_time();
  if (*(this + 36) == 1)
  {
    goto LABEL_5;
  }

LABEL_16:
  v8 = *(this + 2);
  v9 = pthread_self();
  v8[1].__sig = 0;
  goto LABEL_3;
}

void sub_29630DDE0(_Unwind_Exception *a1)
{
  ATCSCondition::~ATCSCondition(v2);
  ATCSMutex::~ATCSMutex(v1);
  _Unwind_Resume(a1);
}

void ATCSTimerDriver::~ATCSTimerDriver(pthread_cond_t **this)
{
  *this = &unk_2A1D48BF8;
  pthread_cond_destroy(this[3]);
  free(this[3]);
  v2 = this[2];
  pthread_mutex_destroy(v2);
  if (v2)
  {
    operator delete(v2);
  }
}

{
  *this = &unk_2A1D48BF8;
  pthread_cond_destroy(this[3]);
  free(this[3]);
  v2 = this[2];
  pthread_mutex_destroy(v2);
  if (v2)
  {
    operator delete(v2);
  }
}

{
  *this = &unk_2A1D48BF8;
  pthread_cond_destroy(this[3]);
  free(this[3]);
  v2 = this[2];
  pthread_mutex_destroy(v2);
  if (v2)
  {
    operator delete(v2);
  }

  operator delete(this);
}

uint64_t ATCSTimerDriver::setNextTimeout(ATCSTimerDriver *this, int a2)
{
  v4 = *(this + 2);
  pthread_mutex_lock(v4);
  v4[1].__sig = pthread_self();
  if (*(this + 36) != 1 || *(this + 8) > a2)
  {
    pthread_cond_signal(*(this + 3));
  }

  *(this + 8) = a2;
  *(this + 36) = 1;
  v5 = *(this + 2);
  pthread_self();
  v5[1].__sig = 0;
  return pthread_mutex_unlock(v5);
}

void sub_29630DFF0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 16);
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t ATCSTimerDriver::getCurrentTime(ATCSTimerDriver *this)
{
  if (!systemtime(void)::denom)
  {
    info = 0xAAAAAAAAAAAAAAAALL;
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v3 = denom;
        denom = numer % denom;
        numer = v3;
      }

      while (denom);
    }

    else
    {
      v3 = info.numer;
    }

    v4 = 1000000;
    v5 = info.numer / v3;
    do
    {
      v6 = v5;
      v5 = v4;
      v4 = v6 % v4;
    }

    while (v4);
    systemtime(void)::numer = info.numer / v3 / v5;
    systemtime(void)::denom = 0xF4240 / v5 * (info.denom / v3);
  }

  return systemtime(void)::numer * mach_absolute_time() / systemtime(void)::denom;
}

void ATCSTimerDriver::timerDispatcher(ATCSTimerDriver *this)
{
  while (1)
  {
    v2 = *(this + 2);
    pthread_mutex_lock(v2);
    v2[1].__sig = pthread_self();
    if (!systemtime(void)::denom)
    {
      break;
    }

    while (1)
    {
      v3 = mach_absolute_time();
      if (*(this + 36) != 1)
      {
        goto LABEL_16;
      }

LABEL_5:
      v4 = systemtime(void)::numer * v3 / systemtime(void)::denom;
      v5 = *(this + 8);
      v6 = v5 - v4;
      if (v5 <= v4)
      {
        break;
      }

      v7 = *(this + 2);
      v8 = pthread_self();
      v7[1].__sig = 0;
      if ((v6 & 0x80000000) != 0)
      {
LABEL_3:
        pthread_cond_wait(*(this + 3), v7);
        v7[1].__sig = v8;
        if (!systemtime(void)::denom)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v18.tv_sec = v6 / 0x3E8uLL;
        v18.tv_nsec = 1000000 * (v6 % 0x3E8);
        pthread_cond_timedwait_relative_np(*(this + 3), v7, &v18);
        v7[1].__sig = v8;
        if (!systemtime(void)::denom)
        {
          goto LABEL_8;
        }
      }
    }

    *(this + 36) = 0;
    v15 = *(this + 2);
    pthread_self();
    v15[1].__sig = 0;
    v16 = pthread_mutex_unlock(v15);
    v17 = *(this + 1);
    if (v17)
    {
      v17(v16);
    }
  }

LABEL_8:
  v18.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&v18);
  if (HIDWORD(v18.tv_sec))
  {
    tv_sec_high = HIDWORD(v18.tv_sec);
    tv_sec = v18.tv_sec;
    do
    {
      v11 = tv_sec_high;
      tv_sec_high = tv_sec % tv_sec_high;
      tv_sec = v11;
    }

    while (tv_sec_high);
  }

  else
  {
    v11 = v18.tv_sec;
  }

  v12 = 1000000;
  v13 = LODWORD(v18.tv_sec) / v11;
  do
  {
    v14 = v13;
    v13 = v12;
    v12 = v14 % v12;
  }

  while (v12);
  systemtime(void)::numer = LODWORD(v18.tv_sec) / v11 / v13;
  systemtime(void)::denom = 0xF4240 / v13 * (HIDWORD(v18.tv_sec) / v11);
  v3 = mach_absolute_time();
  if (*(this + 36) == 1)
  {
    goto LABEL_5;
  }

LABEL_16:
  v7 = *(this + 2);
  v8 = pthread_self();
  v7[1].__sig = 0;
  goto LABEL_3;
}

uint64_t strncasecmp_terminated(unint64_t a1, unint64_t a2, unsigned int a3)
{
  if (!(a1 | a2))
  {
    return 0;
  }

  v4 = a2;
  if (!a1 && a2)
  {
    return -__tolower(*a2);
  }

  if (!a1 || a2)
  {
    if (a3)
    {
      v6 = a3;
      v7 = a3 - 1;
      v8 = a1;
      v9 = a1;
      while (1)
      {
        v10 = __tolower(*v9);
        v11 = *v4++;
        result = (v10 - __tolower(v11));
        if (result)
        {
          break;
        }

        if (*v9++)
        {
          v13 = v7 == 0;
        }

        else
        {
          v13 = 1;
        }

        --v7;
        if (v13)
        {
          a1 = v8;
          goto LABEL_22;
        }
      }
    }

    else
    {
      v6 = 0;
LABEL_22:
      v14 = *(a1 + v6);
      if (((1 << v14) & 0x2401) == 0 || v14 > 0xF)
      {
        return v14;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v5 = *a1;

    return __tolower(v5);
  }

  return result;
}

int strcasecmp(const char *a1, const char *a2)
{
  if (!(a1 | a2))
  {
    return 0;
  }

  if (!a1 && a2)
  {
    result = *a2;
    return -__tolower(result);
  }

  if (!a1 || a2)
  {
    LOBYTE(v5) = *a1;
    if (!*a1)
    {
      result = *a2;
      if (!*a2)
      {
        return result;
      }

      return -__tolower(result);
    }

    v6 = 0;
    v7 = a1 + 1;
    while (1)
    {
      v8 = __tolower(v5);
      result = v8 - __tolower(a2[v6]);
      if (result)
      {
        break;
      }

      result = -1;
      if (v6 == 0xFFFFFFFFLL)
      {
        break;
      }

      v9 = v6 + 1;
      v5 = v7[v6++];
      if (!v5)
      {
        result = a2[v9];
        if (a2[v9])
        {
          return -__tolower(result);
        }

        return result;
      }
    }
  }

  else
  {
    v4 = *a1;

    return __tolower(v4);
  }

  return result;
}

uint64_t systemtime(void)
{
  if (!systemtime(void)::denom)
  {
    info = 0xAAAAAAAAAAAAAAAALL;
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v2 = denom;
        denom = numer % denom;
        numer = v2;
      }

      while (denom);
    }

    else
    {
      v2 = info.numer;
    }

    v3 = 1000000;
    v4 = info.numer / v2;
    do
    {
      v5 = v4;
      v4 = v3;
      v3 = v5 % v3;
    }

    while (v3);
    systemtime(void)::numer = info.numer / v2 / v4;
    systemtime(void)::denom = 0xF4240 / v4 * (info.denom / v2);
  }

  return systemtime(void)::numer * mach_absolute_time() / systemtime(void)::denom;
}

uint64_t writeToCompletion(int __fd, const unsigned __int8 *__buf, size_t __nbyte, NSObject *a4)
{
  v21 = *MEMORY[0x29EDCA608];
  if (__nbyte)
  {
    v5 = __nbyte;
    while (1)
    {
      v8 = write(__fd, __buf, v5);
      if (v8 < 0)
      {
        break;
      }

      __buf += v8;
      v5 -= v8;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v11 = v8;
    v12 = __error();
    if (os_log_type_enabled(a4, OS_LOG_TYPE_ERROR))
    {
      v14 = *v12;
      v15 = 134218498;
      v16 = v11;
      v17 = 2080;
      v18 = strerror(v14);
      v19 = 1024;
      v20 = v14;
      _os_log_error_impl(&dword_2962DD000, a4, OS_LOG_TYPE_ERROR, "Failed to write, ret = %zd, err = %s(%d)", &v15, 0x1Cu);
    }

    result = v11;
    v13 = *MEMORY[0x29EDCA608];
  }

  else
  {
LABEL_5:
    result = 0;
    v10 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t config::hw::iPhone(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A1899950;
  if (!off_2A1899950)
  {
    ctu::Gestalt::create_default_global(&v9, v1);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&off_2A1899950 + 1);
    off_2A1899950 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v9 + 1);
    if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A1899950;
  }

  v6 = *(&off_2A1899950 + 1);
  if (*(&off_2A1899950 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1899950 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  result = (*(*v2 + 136))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v8;
    }
  }

  return result;
}

uint64_t config::hw::watch(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A1899950;
  if (!off_2A1899950)
  {
    ctu::Gestalt::create_default_global(&v9, v1);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&off_2A1899950 + 1);
    off_2A1899950 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v9 + 1);
    if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A1899950;
  }

  v6 = *(&off_2A1899950 + 1);
  if (*(&off_2A1899950 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1899950 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  result = (*(*v2 + 152))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v8;
    }
  }

  return result;
}

uint64_t config::hw::iPad(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A1899950;
  if (!off_2A1899950)
  {
    ctu::Gestalt::create_default_global(&v9, v1);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&off_2A1899950 + 1);
    off_2A1899950 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v9 + 1);
    if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A1899950;
  }

  v6 = *(&off_2A1899950 + 1);
  if (*(&off_2A1899950 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1899950 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  result = (*(*v2 + 144))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v8;
    }
  }

  return result;
}

void config::hw::product(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A1899950;
  if (!off_2A1899950)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_2A1899950 + 1);
    off_2A1899950 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A1899950;
  }

  v6 = *(&off_2A1899950 + 1);
  if (*(&off_2A1899950 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1899950 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v2 + 48))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void config::hw::deviceMaterial(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A1899950;
  if (!off_2A1899950)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_2A1899950 + 1);
    off_2A1899950 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A1899950;
  }

  v6 = *(&off_2A1899950 + 1);
  if (*(&off_2A1899950 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1899950 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v2 + 104))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void config::hw::getBootArgs(std::string *a1@<X8>)
{
  memset(v26, 170, 24);
  v3 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v4 = off_2A1899950;
  if (!off_2A1899950)
  {
    ctu::Gestalt::create_default_global(__p, v3);
    v5 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v6 = *(&off_2A1899950 + 1);
    off_2A1899950 = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v4 = off_2A1899950;
  }

  v8 = *(&off_2A1899950 + 1);
  v26[3] = v4;
  v26[4] = *(&off_2A1899950 + 1);
  if (*(&off_2A1899950 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1899950 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v4 + 112))(v26, v4);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  HIBYTE(v25) = 9;
  strcpy(__p, "boot-args");
  v9 = v26[1];
  if (v26[1])
  {
    while (1)
    {
      v11 = v9;
      v14 = v9[4];
      v12 = v9 + 4;
      v13 = v14;
      v15 = *(v12 + 23);
      if (v15 >= 0)
      {
        v16 = v12;
      }

      else
      {
        v16 = v13;
      }

      if (v15 >= 0)
      {
        v17 = *(v12 + 23);
      }

      else
      {
        v17 = v12[1];
      }

      if (v17 >= 9)
      {
        v18 = 9;
      }

      else
      {
        v18 = v17;
      }

      v19 = memcmp(__p, v16, v18);
      if (v19)
      {
        if (v19 < 0)
        {
          goto LABEL_16;
        }

LABEL_30:
        v20 = memcmp(v16, __p, v18);
        if (v20)
        {
          if ((v20 & 0x80000000) == 0)
          {
            goto LABEL_41;
          }
        }

        else if (v17 >= 9)
        {
LABEL_41:
          v21 = v11;
          if (*(v11 + 79) < 0)
          {
            goto LABEL_42;
          }

LABEL_40:
          v23 = *(v21 + 56);
          a1->__r_.__value_.__r.__words[2] = *(v21 + 9);
          *&a1->__r_.__value_.__l.__data_ = v23;
          goto LABEL_43;
        }

        v9 = v11[1];
        if (!v9)
        {
          v10 = v11 + 1;
          goto LABEL_37;
        }
      }

      else
      {
        if (v17 <= 9)
        {
          goto LABEL_30;
        }

LABEL_16:
        v9 = *v11;
        v10 = v11;
        if (!*v11)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v10 = &v26[1];
  v11 = &v26[1];
LABEL_37:
  v21 = operator new(0x50uLL);
  *(v21 + 2) = *__p;
  v22 = v25;
  __p[1] = 0;
  v25 = 0;
  __p[0] = 0;
  *(v21 + 6) = v22;
  *(v21 + 7) = 0;
  *(v21 + 8) = 0;
  *(v21 + 9) = 0;
  *v21 = 0;
  *(v21 + 1) = 0;
  *(v21 + 2) = v11;
  *v10 = v21;
  if (*v26[0])
  {
    v26[0] = *v26[0];
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v26[1], v21);
  ++v26[2];
  if ((v21[79] & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_42:
  std::string::__init_copy_ctor_external(a1, *(v21 + 7), *(v21 + 8));
LABEL_43:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v26[1]);
}

void sub_29630F28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29630F2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a16);
  _Unwind_Resume(a1);
}

void config::hw::regionCode(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A1899950;
  if (!off_2A1899950)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_2A1899950 + 1);
    off_2A1899950 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A1899950;
  }

  v6 = *(&off_2A1899950 + 1);
  if (*(&off_2A1899950 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1899950 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v2 + 72))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void config::hw::regionInfo(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A1899950;
  if (!off_2A1899950)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_2A1899950 + 1);
    off_2A1899950 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A1899950;
  }

  v6 = *(&off_2A1899950 + 1);
  if (*(&off_2A1899950 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1899950 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v2 + 64))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

uint64_t config::build::carrier(config::build *this)
{
  result = TelephonyUtilIsCarrierBuild();
  if (result)
  {
    return TelephonyUtilIsInternalBuild() ^ 1;
  }

  return result;
}

uint64_t config::build::internal_or_carrier(config::build *this)
{
  if (TelephonyUtilIsInternalBuild())
  {
    return 1;
  }

  return TelephonyUtilIsCarrierBuild();
}

void config::build::version(config::build *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A1899950;
  if (!off_2A1899950)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_2A1899950 + 1);
    off_2A1899950 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A1899950;
  }

  v6 = *(&off_2A1899950 + 1);
  if (*(&off_2A1899950 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1899950 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (**v2)(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
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

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(a1 + 8));
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
LABEL_4:
        v2 = a1;

LABEL_6:
        operator delete(v2);
        return;
      }
    }

    else if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a1 + 32));
    v2 = a1;

    goto LABEL_6;
  }
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance, &dword_2962DD000);
  }

  return result;
}

double qmi::QMuxClientIface::QMuxClientIface(uint64_t a1, __int128 *a2, char a3)
{
  *a1 = &unk_2A1D48000;
  if (*(a2 + 23) < 0)
  {
    v5 = a1;
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
    a1 = v5;
  }

  else
  {
    v4 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v4;
  }

  *(a1 + 32) = a3;
  *(a1 + 33) = -1;
  *&result = 0x2FFFFFFFFLL;
  *(a1 + 36) = 0x2FFFFFFFFLL;
  *(a1 + 44) = 1;
  return result;
}

void qmi::create_client_proxy_state(uint64_t *a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  _ZNSt3__115allocate_sharedB8ne200100IN3qmi15EurTransportXPCENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v18);
  v8 = operator new(0x138uLL);
  v9 = v8;
  v14 = v18;
  v15 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  qmi::QmiClientProxyAdapter::QmiClientProxyAdapter(v8, a1, a2, a3, &v14);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<qmi::QmiClientProxyAdapter>::shared_ptr[abi:ne200100]<qmi::QmiClientProxyAdapter,std::shared_ptr<qmi::QmiClientProxyAdapter> ctu::SharedSynchronizable<qmi::ClientProxy::State>::make_shared_ptr<qmi::QmiClientProxyAdapter>(qmi::QmiClientProxyAdapter*)::{lambda(qmi::QmiClientProxyAdapter*)#1},0>(&v16, v9);
  v10 = v17;
  if (v16)
  {
    v11 = v16 + 48;
  }

  else
  {
    v11 = 0;
  }

  *a4 = v11;
  a4[1] = v10;
  v16 = 0;
  v17 = 0;
  v12 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v19;
  if (v19)
  {
    if (!atomic_fetch_add((v19 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }
}

void sub_29630FC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_29630FC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v13);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_29630FC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void qmi::create_client_proxy_gcd_state(uint64_t *a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v12 = operator new(0xA8uLL);
  *(v12 + 2) = 0;
  *(v12 + 1) = 0;
  *v12 = &unk_2A1D48CD8;
  *(v12 + 10) = 0;
  *(v12 + 14) = 0;
  *(v12 + 5) = v12;
  *(v12 + 6) = 0;
  *(v12 + 3) = &unk_2A1D48898;
  *(v12 + 4) = v12 + 24;
  *(v12 + 120) = 0u;
  *(v12 + 136) = 0u;
  *(v12 + 152) = 0u;
  v31 = v12 + 24;
  v32 = v12;
  atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v12 + 2, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(v12 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v12;
    (*(*v12 + 16))();
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = v31;
  v15 = *a4;
  v16 = a4[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v31 + 13);
  *(v31 + 12) = v15;
  v14[13] = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  v18 = *a5;
  v19 = a5[1];
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = v14[15];
  v14[14] = v18;
  v14[15] = v19;
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  v21 = operator new(0x138uLL);
  v22 = v21;
  v27 = v14;
  v28 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::QmiClientProxyAdapter::QmiClientProxyAdapter(v21, a1, a2, a3, &v27);
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<qmi::QmiClientProxyAdapter>::shared_ptr[abi:ne200100]<qmi::QmiClientProxyAdapter,std::shared_ptr<qmi::QmiClientProxyAdapter> ctu::SharedSynchronizable<qmi::ClientProxy::State>::make_shared_ptr<qmi::QmiClientProxyAdapter>(qmi::QmiClientProxyAdapter*)::{lambda(qmi::QmiClientProxyAdapter*)#1},0>(&v29, v22);
  v23 = v30;
  if (v29)
  {
    v24 = v29 + 48;
  }

  else
  {
    v24 = 0;
  }

  *a6 = v24;
  a6[1] = v23;
  v29 = 0;
  v30 = 0;
  v25 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = v32;
  if (v32)
  {
    if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
    }
  }
}

void sub_29630FF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_29630FF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v13);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_29630FF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void _ZNSt3__115allocate_sharedB8ne200100IN3qmi15EurTransportXPCENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(void *a1@<X8>)
{
  v2 = operator new(0x80uLL);
  v2->__shared_owners_ = 0;
  p_shared_owners = &v2->__shared_owners_;
  v2->__vftable = &unk_2A1D48C38;
  v4 = v2 + 1;
  v2[3].__shared_owners_ = 0;
  v2[4].__shared_weak_owners_ = 0;
  v2[1].__shared_weak_owners_ = 0;
  v2[2].__vftable = 0;
  v2[1].__shared_owners_ = 0;
  v2->__shared_weak_owners_ = 0;
  v2[1].__vftable = &unk_2A1D48858;
  v2[5].__vftable = xpc_null_create();
  *a1 = v2 + 1;
  a1[1] = v2;
  shared_weak_owners = v2[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    if (shared_weak_owners->__shared_owners_ != -1)
    {
      return;
    }

    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v2[1].__shared_owners_ = v4;
    v2[1].__shared_weak_owners_ = v2;
    std::__shared_weak_count::__release_weak(shared_weak_owners);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v2[1].__shared_owners_ = v4;
    v2[1].__shared_weak_owners_ = v2;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v2->__on_zero_shared)(v2);

  std::__shared_weak_count::__release_weak(v2);
}

void std::__shared_ptr_emplace<qmi::EurTransportXPC>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D48C38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<qmi::EurTransportXPC>::__on_zero_shared(void *a1)
{
  a1[3] = &unk_2A1D48858;
  MEMORY[0x29C258FA0](a1 + 15);
  a1[3] = &unk_2A1D48818;
  v2 = a1[14];
  if (v2 == a1 + 11)
  {
    (*(*v2 + 32))(v2);
    v3 = a1[10];
    if (v3 != a1 + 7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    v3 = a1[10];
    if (v3 != a1 + 7)
    {
LABEL_5:
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      v4 = a1[6];
      if (v4)
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }
  }

  (*(*v3 + 32))(v3);
  v4 = a1[6];
  if (v4)
  {
LABEL_8:
    dispatch_release(v4);
  }

LABEL_9:
  v5 = a1[5];
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

atomic_ullong *std::shared_ptr<qmi::QmiClientProxyAdapter>::shared_ptr[abi:ne200100]<qmi::QmiClientProxyAdapter,std::shared_ptr<qmi::QmiClientProxyAdapter> ctu::SharedSynchronizable<qmi::ClientProxy::State>::make_shared_ptr<qmi::QmiClientProxyAdapter>(qmi::QmiClientProxyAdapter*)::{lambda(qmi::QmiClientProxyAdapter*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1D48C88;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 56) = a2 + 48;
      *(a2 + 64) = v4;
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
  *(a2 + 56) = a2 + 48;
  *(a2 + 64) = v4;
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

void sub_2963103A8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[9], v1, std::shared_ptr<qmi::QmiClientProxyAdapter> ctu::SharedSynchronizable<qmi::ClientProxy::State>::make_shared_ptr<qmi::QmiClientProxyAdapter>(qmi::QmiClientProxyAdapter*)::{lambda(qmi::QmiClientProxyAdapter*)#1}::operator() const(qmi::QmiClientProxyAdapter*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<qmi::QmiClientProxyAdapter *,std::shared_ptr<qmi::QmiClientProxyAdapter> ctu::SharedSynchronizable<qmi::ClientProxy::State>::make_shared_ptr<qmi::QmiClientProxyAdapter>(qmi::QmiClientProxyAdapter*)::{lambda(qmi::QmiClientProxyAdapter *)#1},std::allocator<qmi::QmiClientProxyAdapter>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<qmi::QmiClientProxyAdapter *,std::shared_ptr<qmi::QmiClientProxyAdapter> ctu::SharedSynchronizable<qmi::ClientProxy::State>::make_shared_ptr<qmi::QmiClientProxyAdapter>(qmi::QmiClientProxyAdapter*)::{lambda(qmi::QmiClientProxyAdapter *)#1},std::allocator<qmi::QmiClientProxyAdapter>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN3qmi11ClientProxy5StateEE15make_shared_ptrINS1_21QmiClientProxyAdapterEEENSt3__110shared_ptrIT_EEPS9_EUlPS6_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN3qmi11ClientProxy5StateEE15make_shared_ptrINS1_21QmiClientProxyAdapterEEENSt3__110shared_ptrIT_EEPS9_EUlPS6_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN3qmi11ClientProxy5StateEE15make_shared_ptrINS1_21QmiClientProxyAdapterEEENSt3__110shared_ptrIT_EEPS9_EUlPS6_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN3qmi11ClientProxy5StateEE15make_shared_ptrINS1_21QmiClientProxyAdapterEEENSt3__110shared_ptrIT_EEPS9_EUlPS6_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<qmi::QmiClientProxyAdapter> ctu::SharedSynchronizable<qmi::ClientProxy::State>::make_shared_ptr<qmi::QmiClientProxyAdapter>(qmi::QmiClientProxyAdapter*)::{lambda(qmi::QmiClientProxyAdapter*)#1}::operator() const(qmi::QmiClientProxyAdapter*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_emplace<qmi::EurTransportLocal>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D48CD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<qmi::EurTransportLocal>::__on_zero_shared(void *a1)
{
  a1[3] = &unk_2A1D48898;
  v2 = a1[20];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[16];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  a1[3] = &unk_2A1D48818;
  v5 = a1[14];
  if (v5 == a1 + 11)
  {
    (*(*v5 + 32))(v5);
    v6 = a1[10];
    if (v6 != a1 + 7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    v6 = a1[10];
    if (v6 != a1 + 7)
    {
LABEL_12:
      if (v6)
      {
        (*(*v6 + 40))(v6);
      }

      v7 = a1[6];
      if (v7)
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }
  }

  (*(*v6 + 32))(v6);
  v7 = a1[6];
  if (v7)
  {
LABEL_15:
    dispatch_release(v7);
  }

LABEL_16:
  v8 = a1[5];
  if (v8)
  {

    std::__shared_weak_count::__release_weak(v8);
  }
}

uint64_t qmi::Transaction::Transaction(uint64_t a1, uint64_t *a2, uint64_t a3, void **a4)
{
  *a1 = 0;
  v7 = *a4;
  if (*a4)
  {
    v7 = _Block_copy(v7);
  }

  v9 = *a2;
  v8 = a2[1];
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  return a1;
}

{
  *a1 = 0;
  v7 = *a4;
  if (*a4)
  {
    v7 = _Block_copy(v7);
  }

  v9 = *a2;
  v8 = a2[1];
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t qmi::Transaction::cancelTimer(qmi::Transaction *this)
{
  result = *this;
  if (result)
  {
    (*(*result + 16))(result);
    result = *this;
    *this = 0;
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

uint64_t qmi::TransactionQueue::State::State(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  ctu::OsLogContext::OsLogContext(v16, "com.apple.telephony.bb", "qmux");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C258F30](a1 + 16, v17);
  MEMORY[0x29C258F40](v17);
  ctu::OsLogContext::~OsLogContext(v16);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v11 = a4[1];
  *(a1 + 48) = *a4;
  *(a1 + 56) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  }

  v12 = a5[1];
  *(a1 + 64) = *a5;
  *(a1 + 72) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  v13 = *(*a5 + 32);
  *(a1 + 272) = v13;
  *(a1 + 274) = 1;
  if (v13)
  {
    v14 = 5;
  }

  else
  {
    v14 = capabilities::radio::QMuxPendingRequestLimitCount(v10);
  }

  *(a1 + 276) = v14;
  dispatch_retain(*(a1 + 24));
  dispatch_retain(*(a1 + 32));
  return a1;
}

void sub_2963109F0(_Unwind_Exception *a1)
{
  std::vector<dispatch::group_session>::~vector[abi:ne200100]((v2 + 168));
  std::vector<dispatch::group_session>::~vector[abi:ne200100](v5);
  boost::ptr_deque<qmi::Transaction,boost::heap_clone_allocator,std::allocator<void *>>::~ptr_deque(v4, v7, v8, v9, v10, v11);
  boost::ptr_deque<qmi::Transaction,boost::heap_clone_allocator,std::allocator<void *>>::~ptr_deque(v3, v12, v13, v14, v15, v16);
  boost::ptr_deque<qmi::Transaction,boost::heap_clone_allocator,std::allocator<void *>>::~ptr_deque(v2, v17, v18, v19, v20, v21);
  v22 = v1[9];
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = v1[7];
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  MEMORY[0x29C258F40](v1 + 2);
  v24 = v1[1];
  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(a1);
}

dispatch_object_t **std::vector<dispatch::group_session>::~vector[abi:ne200100](dispatch_object_t **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        if (v6)
        {
          dispatch_group_leave(v5);
          if (*v3)
          {
            dispatch_release(*v3);
          }
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t boost::ptr_deque<qmi::Transaction,boost::heap_clone_allocator,std::allocator<void *>>::~ptr_deque(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v7 = a1[1];
  if (a1[2] != v7)
  {
    v8 = a1[4];
    v9 = (v7 + 8 * (v8 >> 9));
    v10 = *v9;
    v11 = &(*v9)[v8 & 0x1FF];
    v12 = *(v7 + (((a1[5] + v8) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v8) & 0x1FF);
    if (v12 != v11)
    {
      do
      {
        if (*v11)
        {
          qmi::Transaction::~Transaction(*v11, a2, a3, a4, a5, a6);
          operator delete(v14);
          v10 = *v9;
        }

        if (++v11 - v10 == 4096)
        {
          v15 = v9[1];
          ++v9;
          v10 = v15;
          v11 = v15;
        }
      }

      while (v11 != v12);
    }
  }

  return std::deque<ATCSDPCQueue::Callback *>::~deque[abi:ne200100](a1);
}

void qmi::TransactionQueue::State::~State(dispatch_object_t *this)
{
  qmi::TransactionQueue::State::stop_sync(this);
  dispatch_release(this[4]);
  dispatch_release(this[3]);
  v7 = this[31];
  if (v7)
  {
    v8 = this[32];
    v9 = this[31];
    if (v8 != v7)
    {
      do
      {
        v11 = *--v8;
        v10 = v11;
        if (v11)
        {
          dispatch_group_leave(v10);
          if (*v8)
          {
            dispatch_release(*v8);
          }
        }
      }

      while (v8 != v7);
      v9 = this[31];
    }

    this[32] = v7;
    operator delete(v9);
  }

  v12 = this[28];
  if (v12)
  {
    v13 = this[29];
    v14 = this[28];
    if (v13 != v12)
    {
      do
      {
        v16 = *--v13;
        v15 = v16;
        if (v16)
        {
          dispatch_group_leave(v15);
          if (*v13)
          {
            dispatch_release(*v13);
          }
        }
      }

      while (v13 != v12);
      v14 = this[28];
    }

    this[29] = v12;
    operator delete(v14);
  }

  v17 = this[23];
  if (this[24] != v17)
  {
    v18 = this[26];
    v19 = &v17[v18 >> 9];
    isa = v19->isa;
    v21 = (v19->isa + 8 * (v18 & 0x1FF));
    v22 = *(&v17->isa + (((this[27] + v18) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((this[27] + v18) & 0x1FF);
    if (v22 != v21)
    {
      do
      {
        if (*v21)
        {
          qmi::Transaction::~Transaction(*v21, v2, v3, v4, v5, v6);
          operator delete(v48);
          isa = v19->isa;
        }

        if (++v21 - isa == 4096)
        {
          v49 = v19[1].isa;
          ++v19;
          isa = v49;
          v21 = v49;
        }
      }

      while (v21 != v22);
    }
  }

  std::deque<ATCSDPCQueue::Callback *>::~deque[abi:ne200100]((this + 22));
  v28 = this[17];
  if (this[18] != v28)
  {
    v29 = this[20];
    v30 = &v28[v29 >> 9];
    v31 = v30->isa;
    v32 = (v30->isa + 8 * (v29 & 0x1FF));
    v33 = *(&v28->isa + (((this[21] + v29) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((this[21] + v29) & 0x1FF);
    if (v33 != v32)
    {
      do
      {
        if (*v32)
        {
          qmi::Transaction::~Transaction(*v32, v23, v24, v25, v26, v27);
          operator delete(v50);
          v31 = v30->isa;
        }

        if (++v32 - v31 == 4096)
        {
          v51 = v30[1].isa;
          ++v30;
          v31 = v51;
          v32 = v51;
        }
      }

      while (v32 != v33);
    }
  }

  std::deque<ATCSDPCQueue::Callback *>::~deque[abi:ne200100]((this + 16));
  v39 = this[11];
  if (this[12] != v39)
  {
    v40 = this[14];
    v41 = &v39[v40 >> 9];
    v42 = v41->isa;
    v43 = (v41->isa + 8 * (v40 & 0x1FF));
    v44 = *(&v39->isa + (((this[15] + v40) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((this[15] + v40) & 0x1FF);
    if (v44 != v43)
    {
      do
      {
        if (*v43)
        {
          qmi::Transaction::~Transaction(*v43, v34, v35, v36, v37, v38);
          operator delete(v52);
          v42 = v41->isa;
        }

        if (++v43 - v42 == 4096)
        {
          v53 = v41[1].isa;
          ++v41;
          v42 = v53;
          v43 = v53;
        }
      }

      while (v43 != v44);
    }
  }

  std::deque<ATCSDPCQueue::Callback *>::~deque[abi:ne200100]((this + 10));
  v45 = this[9];
  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  v46 = this[7];
  if (v46)
  {
    std::__shared_weak_count::__release_weak(v46);
  }

  MEMORY[0x29C258F40](this + 2);
  v47 = this[1];
  if (v47)
  {
    std::__shared_weak_count::__release_weak(v47);
  }
}

void qmi::TransactionQueue::State::stop_sync(qmi::TransactionQueue::State *this)
{
  *(this + 10) = 0;
  if (*(this + 15) || *(this + 21) || *(this + 27))
  {
    memset(v35, 170, sizeof(v35));
    qmi::MessageBase::MessageBase();
    v7 = *(this + 14);
    v8 = *(this + 11);
    v9 = (v8 + 8 * (v7 >> 9));
    if (*(this + 12) == v8)
    {
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v10 = (*v9 + 8 * (*(this + 14) & 0x1FFLL));
      v11 = *(v8 + (((*(this + 15) + v7) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 15) + v7) & 0x1FF);
    }

    while (v11 != v10)
    {
      qmi::Transaction::invoke(*v10++, *(this + 4), v35);
      if ((v10 - *v9) == 4096)
      {
        v12 = v9[1];
        ++v9;
        v10 = v12;
      }
    }

    boost::ptr_container_detail::reversible_ptr_container<boost::ptr_container_detail::sequence_config<qmi::Transaction,std::deque<void *>>,boost::heap_clone_allocator>::clear(this + 10, v2, v3, v4, v5, v6);
    v18 = *(this + 20);
    v19 = *(this + 17);
    v20 = (v19 + 8 * (v18 >> 9));
    if (*(this + 18) == v19)
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v21 = (*v20 + 8 * (*(this + 20) & 0x1FFLL));
      v22 = *(v19 + (((*(this + 21) + v18) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 21) + v18) & 0x1FF);
    }

    while (v22 != v21)
    {
      qmi::Transaction::invoke(*v21++, *(this + 4), v35);
      if ((v21 - *v20) == 4096)
      {
        v23 = v20[1];
        ++v20;
        v21 = v23;
      }
    }

    boost::ptr_container_detail::reversible_ptr_container<boost::ptr_container_detail::sequence_config<qmi::Transaction,std::deque<void *>>,boost::heap_clone_allocator>::clear(this + 16, v13, v14, v15, v16, v17);
    v29 = *(this + 26);
    v30 = *(this + 23);
    v31 = (v30 + 8 * (v29 >> 9));
    if (*(this + 24) == v30)
    {
      v32 = 0;
      v33 = 0;
    }

    else
    {
      v32 = (*v31 + 8 * (*(this + 26) & 0x1FFLL));
      v33 = *(v30 + (((*(this + 27) + v29) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 27) + v29) & 0x1FF);
    }

    while (v33 != v32)
    {
      qmi::Transaction::invoke(*v32++, *(this + 4), v35);
      if ((v32 - *v31) == 4096)
      {
        v34 = v31[1];
        ++v31;
        v32 = v34;
      }
    }

    boost::ptr_container_detail::reversible_ptr_container<boost::ptr_container_detail::sequence_config<qmi::Transaction,std::deque<void *>>,boost::heap_clone_allocator>::clear(this + 22, v24, v25, v26, v27, v28);
    qmi::MessageBase::~MessageBase(v35);
  }

  qmi::TransactionQueue::State::checkFlushNotifiers_sync(this);
}

void sub_296311050(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296311064(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296311078(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void *qmi::TransactionQueue::State::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x118uLL);
  qmi::TransactionQueue::State::State(v10, a1, a2, a3, a4);

  return std::shared_ptr<qmi::TransactionQueue::State>::shared_ptr[abi:ne200100]<qmi::TransactionQueue::State,qmi::TransactionQueue::State::Deleter,0>(a5, v10);
}

void qmi::TransactionQueue::State::Deleter::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN3qmi16TransactionQueue5State7DeleterclEPS1__block_invoke;
  block[3] = &__block_descriptor_tmp_9;
  block[4] = a2;
  dispatch_async(v2, block);
}

void ___ZN3qmi16TransactionQueue5State7DeleterclEPS1__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    qmi::TransactionQueue::State::~State(v1);

    operator delete(v2);
  }
}

void boost::ptr_container_detail::reversible_ptr_container<boost::ptr_container_detail::sequence_config<qmi::Transaction,std::deque<void *>>,boost::heap_clone_allocator>::clear(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v7 = a1[1];
  v8 = a1[2];
  if (v8 == v7)
  {
    a1[5] = 0;
    v16 = 0;
  }

  else
  {
    v9 = a1[4];
    v10 = &v7[v9 >> 9];
    v11 = *v10;
    v12 = (*v10 + 8 * (v9 & 0x1FF));
    v13 = *(v7 + (((a1[5] + v9) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v9) & 0x1FF);
    if (v13 != v12)
    {
      do
      {
        if (*v12)
        {
          qmi::Transaction::~Transaction(*v12, a2, a3, a4, a5, a6);
          operator delete(v14);
          v11 = *v10;
        }

        if (++v12 - v11 == 4096)
        {
          v15 = v10[1];
          ++v10;
          v11 = v15;
          v12 = v15;
        }
      }

      while (v12 != v13);
      v7 = a1[1];
      v8 = a1[2];
    }

    a1[5] = 0;
    v16 = v8 - v7;
    if (v16 >= 3)
    {
      do
      {
        operator delete(*v7);
        v17 = a1[2];
        v7 = (a1[1] + 8);
        a1[1] = v7;
        v16 = (v17 - v7) >> 3;
      }

      while (v16 > 2);
    }
  }

  if (v16 == 1)
  {
    v18 = 256;
  }

  else
  {
    if (v16 != 2)
    {
      return;
    }

    v18 = 512;
  }

  a1[4] = v18;
}

void *qmi::TransactionQueue::State::findSentTransaction_sync(qmi::TransactionQueue::State *this, int a2)
{
  v2 = *(this + 14);
  v3 = *(this + 11);
  v4 = (v3 + 8 * (v2 >> 9));
  if (*(this + 12) == v3)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = (*v4 + 8 * (*(this + 14) & 0x1FFLL));
    v6 = *(v3 + (((*(this + 15) + v2) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 15) + v2) & 0x1FF);
  }

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v10 = ___ZN3qmi16TransactionQueue5State24findSentTransaction_syncEt_block_invoke;
  v11 = &__block_descriptor_tmp_11;
  v12 = a2;
  if (v6 != v5 && *(*(*v5 + 16) + 26) != a2)
  {
    do
    {
      if ((++v5 - *v4) == 4096)
      {
        v7 = v4[1];
        ++v4;
        v5 = v7;
      }
    }

    while (v6 != v5 && ((v10)(v9, *v5) & 1) == 0);
  }

  return v4;
}

uint64_t qmi::TransactionQueue::State::push_sync(uint64_t a1, qmi::MutableMessageBase *this, uint64_t a3, void **a4)
{
  memset(__p, 170, sizeof(__p));
  qmi::MutableMessageBase::serialize(__p, this);
  v7 = *(a1 + 272);
  qmi::createRequest();
  v11 = qmi::TransactionQueue::State::push_sync(a1, &v14, a3, a4, v8, v9, v10);
  v12 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v11;
}

void sub_2963114EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a10);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::TransactionQueue::State::push_sync(uint64_t a1, void *a2, uint64_t a3, void **a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *&v57[9] = *MEMORY[0x29EDCA608];
  v48 = 0;
  v49 = 0;
  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    v49 = v12;
    if (v12)
    {
      v13 = *(a1 + 64);
      v48 = v13;
      if (v13)
      {
        v14 = *(v13 + 32);
        v15 = *(v13 + 33);
        v16 = *(a1 + 40);
        if (v16)
        {
          goto LABEL_5;
        }

LABEL_23:
        v40 = *(a1 + 16);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = *(*a2 + 24);
          v42 = (v13 + 8);
          if (*(v13 + 31) < 0)
          {
            v42 = *v42;
          }

          *buf = 67109890;
          v51 = v14;
          v52 = 1024;
          v53 = v15;
          v54 = 1024;
          v55 = v41;
          v56 = 2080;
          *v57 = v42;
          _os_log_impl(&dword_2962DD000, v40, OS_LOG_TYPE_DEFAULT, "#I Message discarded because stopped for svc=%d client=%d (msgid=0x%x) [%s]", buf, 0x1Eu);
        }

        qmi::TransactionQueue::State::createTransaction_sync(a1, a1 + 176, a2, a3, a4);
        qmi::TransactionQueue::State::stop_sync(a1);
        goto LABEL_28;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0xC6, "client", "is not", "true", "QMIClient must still be alive if we're adding something!", a7, v48, v49);
  v13 = 0;
  v14 = MEMORY[0x20];
  v15 = MEMORY[0x21];
  v16 = *(a1 + 40);
  if (!v16)
  {
    goto LABEL_23;
  }

LABEL_5:
  if (v16 != 1)
  {
    if (v16 == 2)
    {
      qmi::TransactionQueue::State::createTransaction_sync(a1, a1 + 128, a2, a3, a4);
      v18 = v17;
      v19 = *v17;
      v20 = *(*(*v17 + 16) + 26);
      v21 = *(a1 + 120);
      if (v21 < *(a1 + 276))
      {
        while (1)
        {
          if (!*(a1 + 168))
          {
LABEL_15:
            v19 = *v18;
            break;
          }

          v22 = *(a1 + 112) + v21;
          v23 = *(a1 + 88);
          v24 = (v23 + 8 * (v22 >> 9));
          if (*(a1 + 96) == v23)
          {
            v25 = 0;
            v26 = *(a1 + 160);
            v30 = *(a1 + 136);
            v28 = (v30 + 8 * (v26 >> 9));
            if (*(a1 + 144) == v30)
            {
LABEL_13:
              v29 = 0;
              goto LABEL_14;
            }
          }

          else
          {
            v25 = *v24 + 8 * (v22 & 0x1FF);
            v26 = *(a1 + 160);
            v27 = *(a1 + 136);
            v28 = (v27 + 8 * (v26 >> 9));
            if (*(a1 + 144) == v27)
            {
              goto LABEL_13;
            }
          }

          v29 = (*v28 + 8 * (v26 & 0x1FF));
LABEL_14:
          std::deque<void *>::insert(a1 + 80, v24, v25, v29);
          std::deque<void *>::erase(a1 + 128, v28, v29);
          qmi::TransactionQueue::State::sendNow_sync(a1, v31, v32, v33, v34, v35);
          v21 = *(a1 + 120);
          if (v21 >= *(a1 + 276))
          {
            goto LABEL_15;
          }
        }
      }

      if ((*(v19 + 40) & 1) == 0)
      {
        v36 = *(a1 + 16);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(*a2 + 24);
          v38 = (v13 + 8);
          if (*(v13 + 31) < 0)
          {
            v38 = *v38;
          }

          *buf = 67110146;
          v51 = v14;
          v52 = 1024;
          v53 = v15;
          v54 = 1024;
          v55 = v20;
          v56 = 1024;
          *v57 = v37;
          v57[2] = 2080;
          *&v57[3] = v38;
          v39 = "#I Message pended due to send window for svc=%d client=%d (txid=%d msgid=0x%x) [%s]";
LABEL_33:
          _os_log_impl(&dword_2962DD000, v36, OS_LOG_TYPE_DEFAULT, v39, buf, 0x24u);
          goto LABEL_34;
        }
      }

      goto LABEL_34;
    }

LABEL_28:
    v20 = 0;
    goto LABEL_34;
  }

  qmi::TransactionQueue::State::createTransaction_sync(a1, a1 + 176, a2, a3, a4);
  v20 = *(*(*v43 + 16) + 26);
  v36 = *(a1 + 16);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v44 = *(*a2 + 24);
    v45 = (v13 + 8);
    if (*(v13 + 31) < 0)
    {
      v45 = *v45;
    }

    *buf = 67110146;
    v51 = v14;
    v52 = 1024;
    v53 = v15;
    v54 = 1024;
    v55 = v20;
    v56 = 1024;
    *v57 = v44;
    v57[2] = 2080;
    *&v57[3] = v45;
    v39 = "#I Message stalled for svc=%d client=%d (txid=%d msgid=0x%x) [%s]";
    goto LABEL_33;
  }

LABEL_34:
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v46 = *MEMORY[0x29EDCA608];
  return v20;
}

void qmi::TransactionQueue::State::sendIfPossible_sync(qmi::TransactionQueue::State *this)
{
  for (i = *(this + 15); i < *(this + 69); i = *(this + 15))
  {
    if (!*(this + 21))
    {
      return;
    }

    v9 = *(this + 14) + i;
    v10 = *(this + 11);
    v11 = (v10 + 8 * (v9 >> 9));
    if (*(this + 12) == v10)
    {
      v12 = 0;
      v13 = *(this + 20);
      v16 = *(this + 17);
      v15 = (v16 + 8 * (v13 >> 9));
      if (*(this + 18) == v16)
      {
LABEL_10:
        v3 = 0;
        goto LABEL_4;
      }
    }

    else
    {
      v12 = *v11 + 8 * (v9 & 0x1FF);
      v13 = *(this + 20);
      v14 = *(this + 17);
      v15 = (v14 + 8 * (v13 >> 9));
      if (*(this + 18) == v14)
      {
        goto LABEL_10;
      }
    }

    v3 = (*v15 + 8 * (v13 & 0x1FF));
LABEL_4:
    std::deque<void *>::insert(this + 80, v11, v12, v3);
    std::deque<void *>::erase(this + 128, v15, v3);
    qmi::TransactionQueue::State::sendNow_sync(this, v4, v5, v6, v7, v8);
  }
}

void qmi::TransactionQueue::State::setSendWindowWidth_sync(qmi::TransactionQueue::State *this, unsigned int a2)
{
  *(this + 69) = a2;
  if (*(this + 10) == 2)
  {
    v3 = *(this + 15);
    if (v3 < a2)
    {
      do
      {
        if (!*(this + 21))
        {
          return;
        }

        v10 = *(this + 14) + v3;
        v11 = *(this + 11);
        v12 = (v11 + 8 * (v10 >> 9));
        if (*(this + 12) == v11)
        {
          v13 = 0;
          v14 = *(this + 20);
          v17 = *(this + 17);
          v16 = (v17 + 8 * (v14 >> 9));
          if (*(this + 18) == v17)
          {
LABEL_11:
            v4 = 0;
            goto LABEL_5;
          }
        }

        else
        {
          v13 = *v12 + 8 * (v10 & 0x1FF);
          v14 = *(this + 20);
          v15 = *(this + 17);
          v16 = (v15 + 8 * (v14 >> 9));
          if (*(this + 18) == v15)
          {
            goto LABEL_11;
          }
        }

        v4 = (*v16 + 8 * (v14 & 0x1FF));
LABEL_5:
        std::deque<void *>::insert(this + 80, v12, v13, v4);
        std::deque<void *>::erase(this + 128, v16, v4);
        qmi::TransactionQueue::State::sendNow_sync(this, v5, v6, v7, v8, v9);
        v3 = *(this + 15);
      }

      while (v3 < *(this + 69));
    }
  }
}

void qmi::TransactionQueue::State::sendTimeout_sync(qmi::TransactionQueue::State *this, uint64_t a2)
{
  v37 = *MEMORY[0x29EDCA608];
  v4 = *(this + 14);
  v5 = *(this + 11);
  v6 = *(this + 12);
  v7 = (v5 + 8 * (v4 >> 9));
  if (v6 == v5)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = (*v7 + 8 * (*(this + 14) & 0x1FFLL));
    v9 = *(v5 + (((*(this + 15) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 15) + v4) & 0x1FF);
  }

  *buf = MEMORY[0x29EDCA5F8];
  v35 = 0x40000000;
  *v36 = ___ZN3qmi16TransactionQueue5State24findSentTransaction_syncEt_block_invoke;
  *&v36[8] = &__block_descriptor_tmp_11;
  *&v36[16] = a2;
  if (v9 != v8 && *(*(*v8 + 2) + 26) != a2)
  {
    while (1)
    {
      if ((++v8 - *v7) == 4096)
      {
        v10 = v7[1];
        ++v7;
        v8 = v10;
      }

      if (v9 == v8)
      {
        break;
      }

      if ((*v36)(buf, *v8))
      {
        goto LABEL_12;
      }
    }

    v8 = v9;
LABEL_12:
    v5 = *(this + 11);
    v6 = *(this + 12);
  }

  if (v6 == v5)
  {
    if (!v8)
    {
LABEL_15:
      v12 = *(this + 9);
      if (v12)
      {
        v13 = std::__shared_weak_count::lock(v12);
        if (v13)
        {
          v14 = *(this + 8);
          if (v14)
          {
            v15 = *(this + 2);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = *(v14 + 33);
              v17 = *(v14 + 32);
              v18 = (v14 + 8);
              if (*(v14 + 31) < 0)
              {
                v18 = *v18;
              }

              *buf = 67109890;
              *&buf[4] = v17;
              LOWORD(v35) = 1024;
              *(&v35 + 2) = v16;
              HIWORD(v35) = 1024;
              *v36 = a2;
              *&v36[4] = 2080;
              *&v36[6] = v18;
              _os_log_error_impl(&dword_2962DD000, v15, OS_LOG_TYPE_ERROR, "Timeout fired, but no transaction found for svc=%d client=%d (txid=%d); ignoring [%s]", buf, 0x1Eu);
            }

LABEL_33:
            if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v13->__on_zero_shared)(v13);
              v28 = v13;
LABEL_40:
              std::__shared_weak_count::__release_weak(v28);
              goto LABEL_41;
            }

            goto LABEL_41;
          }
        }
      }

      else
      {
        v13 = 0;
      }

      v27 = *(this + 2);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_2962DD000, v27, OS_LOG_TYPE_ERROR, "Timeout fired, but no transaction found for message (txid=%d) but client is dead; ignoring", buf, 8u);
        if (!v13)
        {
          goto LABEL_41;
        }
      }

      else if (!v13)
      {
        goto LABEL_41;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v11 = *(this + 15) + *(this + 14);
    if (v8 == (*(v5 + ((v11 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v11 & 0x1FF)))
    {
      goto LABEL_15;
    }
  }

  v19 = *v8;
  v20 = *(*(*v8 + 2) + 24);
  v21 = *(this + 4);
  qmi::MessageBase::MessageBase();
  qmi::Transaction::invoke(v19, v21, buf);
  qmi::MessageBase::~MessageBase(buf);
  if ((*(*v8 + 40) & 1) == 0)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x17D, "tx->wasSent()", "is not", "true", v22);
  }

  v23 = *(this + 9);
  if (!v23)
  {
    v24 = 0;
    goto LABEL_36;
  }

  v24 = std::__shared_weak_count::lock(v23);
  if (!v24 || (v25 = *(this + 8)) == 0)
  {
LABEL_36:
    v29 = *(this + 2);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *&buf[4] = a2;
      LOWORD(v35) = 1024;
      *(&v35 + 2) = v20;
      _os_log_error_impl(&dword_2962DD000, v29, OS_LOG_TYPE_ERROR, "ATCS_TIMEOUT for message but client dead (txid=%d msgid=0x%x)", buf, 0xEu);
      if (!v24)
      {
        goto LABEL_41;
      }
    }

    else if (!v24)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v26 = *(this + 2);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v31 = *(v25 + 33);
    v32 = *(v25 + 32);
    v33 = (v25 + 8);
    if (*(v25 + 31) < 0)
    {
      v33 = *v33;
    }

    *buf = 67110146;
    *&buf[4] = v32;
    LOWORD(v35) = 1024;
    *(&v35 + 2) = v31;
    HIWORD(v35) = 1024;
    *v36 = a2;
    *&v36[4] = 1024;
    *&v36[6] = v20;
    *&v36[10] = 2080;
    *&v36[12] = v33;
    _os_log_error_impl(&dword_2962DD000, v26, OS_LOG_TYPE_ERROR, "ATCS_TIMEOUT on message for svc=%d client=%d (txid=%d msgid=0x%x) [%s]", buf, 0x24u);
  }

  (*(*v25 + 64))(v25, a2, v20);
LABEL_38:
  if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    v28 = v24;
    goto LABEL_40;
  }

LABEL_41:
  qmi::TransactionQueue::State::checkFlushNotifiers_sync(this);
  v30 = *MEMORY[0x29EDCA608];
}

void sub_296312084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void qmi::TransactionQueue::State::flush_sync(qmi::TransactionQueue::State *this, dispatch_object_t object)
{
  v2 = object;
  v8 = object;
  if (!object)
  {
    v4 = (this + 256);
    v7 = *(this + 32);
    if (v7 < *(this + 33))
    {
      *v7 = 0;
      v6 = (v7 + 1);
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  dispatch_retain(object);
  v4 = (this + 256);
  v5 = *(this + 32);
  if (v5 >= *(this + 33))
  {
LABEL_8:
    v6 = std::vector<dispatch::group_session>::__emplace_back_slow_path<dispatch::group>(this + 31, &v8);
    v2 = v8;
    goto LABEL_9;
  }

  *v5 = v2;
  dispatch_retain(v2);
  if (*v5)
  {
    dispatch_group_enter(*v5);
  }

  v6 = v5 + 1;
LABEL_9:
  *v4 = v6;
  if (v2)
  {
    dispatch_release(v2);
  }

  qmi::TransactionQueue::State::checkFlushNotifiers_sync(this);
}

void sub_296312168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t qmi::TransactionQueue::State::dumpState_sync@<X0>(qmi::TransactionQueue::State *this@<X0>, _BYTE *a2@<X8>)
{
  v37 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36[7] = v4;
  v36[8] = v4;
  v36[5] = v4;
  v36[6] = v4;
  v36[3] = v4;
  v36[4] = v4;
  v36[1] = v4;
  v36[2] = v4;
  v35 = v4;
  v36[0] = v4;
  *__p = v4;
  v34 = v4;
  v31 = v4;
  v32 = v4;
  v29 = v4;
  v30 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v29);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "sendable=", 9);
  MEMORY[0x29C259280](v5, *(this + 69) - *(this + 15));
  v6 = *(this + 15);
  if (v6)
  {
    v7 = *(this + 14);
    v8 = *(this + 11);
    v9 = (v8 + 8 * (v7 >> 9));
    if (*(this + 12) != v8)
    {
      v10 = *v9 + 8 * (*(this + 14) & 0x1FFLL);
      v11 = *(v8 + (((v7 + v6) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v7 + v6) & 0x1FF);
      while (v11 != v10)
      {
        v20 = *(*v10 + 8);
        if (v20)
        {
          v21 = " sent(";
        }

        else
        {
          v21 = " timedout(";
        }

        if (v20)
        {
          v22 = 6;
        }

        else
        {
          v22 = 10;
        }

        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, v21, v22);
        v24 = MEMORY[0x29C259290](v23, *(*(*v10 + 16) + 26));
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ":0x", 3);
        *(v25 + *(*v25 - 24) + 8) = *(v25 + *(*v25 - 24) + 8) & 0xFFFFFFB5 | 8;
        v26 = *(*(*v10 + 16) + 24);
        v27 = MEMORY[0x29C259290]();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ")", 1);
        v10 += 8;
        if (v10 - *v9 == 4096)
        {
          v28 = v9[1];
          ++v9;
          v10 = v28;
        }
      }
    }
  }

  if (*(this + 21))
  {
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, " pending=", 9);
    MEMORY[0x29C259280](v12, *(this + 21));
  }

  if (*(this + 27))
  {
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, " stalled=", 9);
    MEMORY[0x29C259280](v13, *(this + 27));
  }

  if ((BYTE8(v35) & 0x10) != 0)
  {
    v15 = v35;
    if (v35 < *(&v32 + 1))
    {
      *&v35 = *(&v32 + 1);
      v15 = *(&v32 + 1);
    }

    v16 = v32;
    v14 = v15 - v32;
    if ((v15 - v32) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if ((BYTE8(v35) & 8) == 0)
    {
      v14 = 0;
      a2[23] = 0;
      goto LABEL_22;
    }

    v16 = *(&v30 + 1);
    v14 = *(&v31 + 1) - *(&v30 + 1);
    if (*(&v31 + 1) - *(&v30 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_35:
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
    goto LABEL_21;
  }

  a2[23] = v14;
  if (v14)
  {
LABEL_21:
    memmove(a2, v16, v14);
  }

LABEL_22:
  a2[v14] = 0;
  *&v29 = *MEMORY[0x29EDC9538];
  *(&v29 + *(v29 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v29 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v29 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v30);
  std::ostream::~ostream();
  return MEMORY[0x29C259330](v36);
}