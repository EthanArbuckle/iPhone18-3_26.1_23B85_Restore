uint64_t *sub_2994B78B0(uint64_t a1, unsigned int a2, uint64_t a3, int *a4)
{
  v39 = *MEMORY[0x29EDCA608];
  if (qword_2A14631A8)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Context already exists", "NfRestoreSEOpen_Internal", 201);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136446466;
      *&buf[1] = "NfRestoreSEOpen_Internal";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = 201;
      _os_log_impl(&dword_2994B7000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Context already exists", buf, 0x12u);
    }

    if (a4)
    {
      v8 = 0;
      *a4 = 4;
      goto LABEL_28;
    }

LABEL_27:
    v8 = 0;
    goto LABEL_28;
  }

  qword_2A14631A8 = sub_2994C216C(0, a1, a3);
  if (!qword_2A14631A8)
  {
    v18 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v19(3, "%s:%i Failed to create context", "NfRestoreSEOpen_Internal", 208);
    }

    dispatch_get_specific(*v18);
    v20 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    buf[0] = 136446466;
    *&buf[1] = "NfRestoreSEOpen_Internal";
    LOWORD(buf[3]) = 1024;
    *(&buf[3] + 2) = 208;
    v21 = "%{public}s:%i Failed to create context";
LABEL_26:
    _os_log_impl(&dword_2994B7000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x12u);
    goto LABEL_27;
  }

  v10 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (!v10)
  {
    v22 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v23(3, "%s:%i Failed to create NfRestoreSE object", "NfRestoreSEOpen_Internal", 214);
    }

    dispatch_get_specific(*v22);
    v20 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    buf[0] = 136446466;
    *&buf[1] = "NfRestoreSEOpen_Internal";
    LOWORD(buf[3]) = 1024;
    *(&buf[3] + 2) = 214;
    v21 = "%{public}s:%i Failed to create NfRestoreSE object";
    goto LABEL_26;
  }

  v8 = v10;
  v38 = 0u;
  memset(buf, 0, sizeof(buf));
  v37 = sub_2994B8FB0() | 0x200000;
  v11 = NFDriverOpen();
  *v8 = v11;
  if (!v11)
  {
    v26 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v27(3, "%s:%i Failed to load driver", "NfRestoreSEOpen_Internal", 226);
    }

    dispatch_get_specific(*v26);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *v32 = 136446466;
      v33 = "NfRestoreSEOpen_Internal";
      v34 = 1024;
      v35 = 226;
      _os_log_impl(&dword_2994B7000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load driver", v32, 0x12u);
    }

    if (!a4)
    {
      goto LABEL_43;
    }

    v29 = 10;
    goto LABEL_42;
  }

  Stack = NFDriverLoadStack();
  if (Stack && Stack != 24)
  {
    v30 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v31(3, "%s:%i Failed to load stack", "NfRestoreSEOpen_Internal", 250);
    }

    dispatch_get_specific(*v30);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v32 = 136446466;
      v33 = "NfRestoreSEOpen_Internal";
      v34 = 1024;
      v35 = 250;
      v17 = "%{public}s:%i Failed to load stack";
      goto LABEL_39;
    }
  }

  else
  {
    v13 = sub_2994C22F4(*v8, a2);
    v8[1] = v13;
    if (v13)
    {
      goto LABEL_28;
    }

    v14 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v15(3, "%s:%i Failed to open SE", "NfRestoreSEOpen_Internal", 258);
    }

    dispatch_get_specific(*v14);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v32 = 136446466;
      v33 = "NfRestoreSEOpen_Internal";
      v34 = 1024;
      v35 = 258;
      v17 = "%{public}s:%i Failed to open SE";
LABEL_39:
      _os_log_impl(&dword_2994B7000, v16, OS_LOG_TYPE_ERROR, v17, v32, 0x12u);
    }
  }

  if (a4)
  {
    v29 = 9;
LABEL_42:
    *a4 = v29;
  }

LABEL_43:
  NfRestoreSEClose(v8);
  if (qword_2A14631A8)
  {
    free(qword_2A14631A8);
  }

  v8 = 0;
  qword_2A14631A8 = 0;
LABEL_28:
  v24 = *MEMORY[0x29EDCA608];
  return v8;
}

void NfRestoreSEClose(uint64_t *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      sub_2994C2D3C(v2);
    }

    if (*a1)
    {
      NFDriverUnloadStackAndLeaveHWEnabled();
      v3 = *a1;
      NFDriverClose();
    }

    free(a1);
  }

  if (qword_2A14631A8)
  {
    free(qword_2A14631A8);
    qword_2A14631A8 = 0;
  }
}

uint64_t NfRestoreSETransceiveToOS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t *a6)
{
  v29 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = 6;
    goto LABEL_19;
  }

  NFDataCreateWithBytes();
  v9 = *(a1 + 8);
  v10 = *v9;
  v11 = *(v9 + 2);
  v12 = NFDriverSecureElementTransceive();
  NFDataRelease();
  if (v12)
  {
    if (a5 && a6)
    {
      v13 = *(v12 + 8);
      if (*a6 < v13)
      {
        v14 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i Provided buffer too small for result: %zu", "NfRestoreSETransceiveToOS", 341, *(v12 + 8));
        }

        dispatch_get_specific(*v14);
        v16 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = *(v12 + 8);
          *buf = 136446722;
          v24 = "NfRestoreSETransceiveToOS";
          v25 = 1024;
          v26 = 341;
          v27 = 2048;
          v28 = v17;
          _os_log_impl(&dword_2994B7000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i Provided buffer too small for result: %zu", buf, 0x1Cu);
        }

        NFDataRelease();
        result = 11;
        goto LABEL_19;
      }

      *a6 = v13;
      memcpy(a5, *v12, *(v12 + 8));
    }

    NFDataRelease();
    result = 0;
    goto LABEL_19;
  }

  v19 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v20 = NFLogGetLogger();
  if (v20)
  {
    v20(3, "%s:%i Transceive failed", "NfRestoreSETransceiveToOS", 335);
  }

  dispatch_get_specific(*v19);
  v21 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v24 = "NfRestoreSETransceiveToOS";
    v25 = 1024;
    v26 = 335;
    _os_log_impl(&dword_2994B7000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Transceive failed", buf, 0x12u);
  }

  result = 9;
LABEL_19:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NfRestoreSEEnumerate(void (*a1)(_OWORD *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v87 = *MEMORY[0x29EDCA608];
  v86 = 0;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  memset(v58, 0, sizeof(v58));
  if (qword_2A14631A8)
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Context already exists", "NfRestoreSEEnumerate", 367);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v42 = "NfRestoreSEEnumerate";
      v43 = 1024;
      v44 = 367;
      _os_log_impl(&dword_2994B7000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i Context already exists", buf, 0x12u);
    }

    result = 4;
    goto LABEL_7;
  }

  qword_2A14631A8 = sub_2994C216C(0, a2, a3);
  sub_2994B8FB0();
  v10 = NFDriverOpen();
  if (v10)
  {
    v11 = v10;
    Stack = NFDriverLoadStack();
    if (!Stack || Stack == 24)
    {
      memset(v57, 0, sizeof(v57));
      v56 = 0u;
      if (NFDriverGetControllerInfo())
      {
        if (byte_2A1463190)
        {
LABEL_87:
          if (MEMORY[0x29C29DFA0](v11, 1))
          {
            LODWORD(v58[0]) = 0;
            BYTE4(v58[0]) = (DWORD1(v56) & 0xFFFFFFFE) != 20;
            BYTE5(v58[0]) = (DWORD1(v56) > 0x15) | (0xFE25Fu >> SBYTE4(v56)) & 1;
            bzero(buf, 0x4F0uLL);
            if (NFDriverSetConfiguration())
            {
              if (NFDriverSecureElementGetOSMode() && NFDriverSecureElementGetOSInfo())
              {
                DWORD2(v58[0]) = 4;
                DWORD2(v58[2]) = 4;
                DWORD2(v59) = 4;
                DWORD2(v61) = 4;
                if (BYTE5(v58[0]) != 1 || v55 == 2)
                {
                  DWORD2(v58[0]) = 0;
                  BYTE4(v58[2]) = 24;
                  *(v58 + 12) = v51;
                  *(&v58[1] + 12) = v52;
                  v37 = 1;
                }

                else
                {
                  v37 = 0;
                }

                if (BYTE5(v58[0]))
                {
                  v39 = &v58[2 * v37] + 8;
                  *v39 = 2;
                  v39[28] = 24;
                  *(v39 + 20) = v54;
                  *(v39 + 4) = v53;
                }
              }

              NFDriverSetConfiguration();
            }

            v38 = 1;
          }

          else
          {
            v38 = 0;
          }

          if (MEMORY[0x29C29DFA0](v11, 2))
          {
            v40 = v58 + 168 * v38;
            *v40 = 2;
            v40[4] = (DWORD1(v56) & 0xFFFFFFFE) != 20;
            v40[5] = 0;
            *(v40 + 2) = 4;
            *(v40 + 10) = 4;
            *(v40 + 18) = 4;
            *(v40 + 26) = 4;
            v38 = (v38 + 1);
          }

          NFDriverUnloadStackAndLeaveHWEnabled();
          NFDriverClose();
          if (qword_2A14631A8)
          {
            free(qword_2A14631A8);
          }

          qword_2A14631A8 = 0;
          a1(v58, v38, a3);
          result = 0;
          goto LABEL_7;
        }

        if (SDWORD1(v56) > 13)
        {
          if (SDWORD1(v56) <= 16)
          {
            if (DWORD1(v56) == 14)
            {
              v13 = "SN300V B0";
            }

            else if (DWORD1(v56) == 15)
            {
              v13 = "SN300V B1";
            }

            else
            {
              v13 = "SN300V B20";
            }

            goto LABEL_70;
          }

          switch(DWORD1(v56))
          {
            case 0x11:
              v13 = "SN300V B21";
              goto LABEL_70;
            case 0x12:
              v13 = "SE310S A0";
              goto LABEL_70;
            case 0x14:
              v13 = "PN600V";
              goto LABEL_70;
          }
        }

        else if (SDWORD1(v56) > 9)
        {
          switch(DWORD1(v56))
          {
            case 0xA:
              v13 = "SN200V B0";
              goto LABEL_70;
            case 0xB:
              v13 = "SN200V B1";
              goto LABEL_70;
            case 0xC:
              v13 = "SN210V B1";
              goto LABEL_70;
          }
        }

        else
        {
          switch(DWORD1(v56))
          {
            case 5:
              if (DWORD2(v56) == 1)
              {
                v13 = "PN80v ES2.1";
              }

              else
              {
                v13 = "Unknown PN80v";
              }

              goto LABEL_70;
            case 7:
              v13 = "SN100V B0 / B1";
              goto LABEL_70;
            case 8:
              v13 = "SN100V B2";
LABEL_70:
              v27 = WORD6(v56);
              v28 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v29 = NFLogGetLogger();
              if (v29)
              {
                v29(6, "%s:%i ==== CONTROLLER ====", "NfRestoreSEDumpControllerInfo", 119);
              }

              dispatch_get_specific(*v28);
              v30 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                v42 = "NfRestoreSEDumpControllerInfo";
                v43 = 1024;
                v44 = 119;
                _os_log_impl(&dword_2994B7000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ==== CONTROLLER ====", buf, 0x12u);
              }

              dispatch_get_specific(*v28);
              v31 = NFLogGetLogger();
              if (v31)
              {
                v31(6, "%s:%i Hardware: %x.%x (%s)", "NfRestoreSEDumpControllerInfo", 123, v56, BYTE8(v56), v13);
              }

              dispatch_get_specific(*v28);
              v32 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136447234;
                v42 = "NfRestoreSEDumpControllerInfo";
                v43 = 1024;
                v44 = 123;
                v45 = 1024;
                v46 = v56;
                v47 = 1024;
                v48 = BYTE8(v56);
                v49 = 2080;
                v50[0] = v13;
                _os_log_impl(&dword_2994B7000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Hardware: %x.%x (%s)", buf, 0x28u);
              }

              dispatch_get_specific(*v28);
              v33 = NFLogGetLogger();
              if (v33)
              {
                v33(6, "%s:%i Firmware: %x.%x rev %d", "NfRestoreSEDumpControllerInfo", 127, HIBYTE(v27), v27, v57[0]);
              }

              dispatch_get_specific(*v28);
              v34 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136447234;
                v42 = "NfRestoreSEDumpControllerInfo";
                v43 = 1024;
                v44 = 127;
                v45 = 1024;
                v46 = HIBYTE(v27);
                v47 = 1024;
                v48 = v27;
                v49 = 1024;
                LODWORD(v50[0]) = v57[0];
                _os_log_impl(&dword_2994B7000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Firmware: %x.%x rev %d", buf, 0x24u);
              }

              dispatch_get_specific(*v28);
              v35 = NFLogGetLogger();
              if (v35)
              {
                v35(6, "%s:%i Middleware: %x.%x.%x.%x", "NfRestoreSEDumpControllerInfo", 132, HIBYTE(v57[1]), BYTE2(v57[1]), BYTE1(v57[1]), LOBYTE(v57[1]));
              }

              dispatch_get_specific(*v28);
              v36 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136447490;
                v42 = "NfRestoreSEDumpControllerInfo";
                v43 = 1024;
                v44 = 132;
                v45 = 1024;
                v46 = HIBYTE(v57[1]);
                v47 = 1024;
                v48 = BYTE2(v57[1]);
                v49 = 1024;
                LODWORD(v50[0]) = BYTE1(v57[1]);
                WORD2(v50[0]) = 1024;
                *(v50 + 6) = LOBYTE(v57[1]);
                _os_log_impl(&dword_2994B7000, v36, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Middleware: %x.%x.%x.%x", buf, 0x2Au);
              }

              byte_2A1463190 = 1;
              goto LABEL_87;
          }
        }

        v13 = "Unknown";
        goto LABEL_70;
      }

      v17 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v18 = NFLogGetLogger();
      if (v18)
      {
        v18(4, "%s:%i Failed to get controller info", "NfRestoreSEEnumerate", 403);
      }

      dispatch_get_specific(*v17);
      v19 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v42 = "NfRestoreSEEnumerate";
        v43 = 1024;
        v44 = 403;
        _os_log_impl(&dword_2994B7000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get controller info", buf, 0x12u);
      }

LABEL_46:
      result = 9;
      goto LABEL_7;
    }

    v20 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(3, "%s:%i Failed to load stack", "NfRestoreSEEnumerate", 388);
    }

    dispatch_get_specific(*v20);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v42 = "NfRestoreSEEnumerate";
      v43 = 1024;
      v44 = 388;
      _os_log_impl(&dword_2994B7000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load stack", buf, 0x12u);
    }

    NFDriverClose();
    if (qword_2A14631A8)
    {
      free(qword_2A14631A8);
    }

    qword_2A14631A8 = 0;
    if (!NFProductIsDevBoard())
    {
      goto LABEL_46;
    }

    dispatch_get_specific(*v20);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v23(4, "%s:%i Failed to get driver info", "NfRestoreSEEnumerate", 393);
    }

    dispatch_get_specific(*v20);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v42 = "NfRestoreSEEnumerate";
      v43 = 1024;
      v44 = 393;
      _os_log_impl(&dword_2994B7000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get driver info", buf, 0x12u);
    }

    dispatch_get_specific(*v20);
    v25 = NFLogGetLogger();
    if (v25)
    {
      v25(4, "%s:%i Assuming HW not present", "NfRestoreSEEnumerate", 394);
    }

    dispatch_get_specific(*v20);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v42 = "NfRestoreSEEnumerate";
      v43 = 1024;
      v44 = 394;
      _os_log_impl(&dword_2994B7000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i Assuming HW not present", buf, 0x12u);
    }

    result = 1;
  }

  else
  {
    v14 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v15(3, "%s:%i Failed to load driver", "NfRestoreSEEnumerate", 379);
    }

    dispatch_get_specific(*v14);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v42 = "NfRestoreSEEnumerate";
      v43 = 1024;
      v44 = 379;
      _os_log_impl(&dword_2994B7000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load driver", buf, 0x12u);
    }

    if (qword_2A14631A8)
    {
      free(qword_2A14631A8);
    }

    qword_2A14631A8 = 0;
    result = 10;
  }

LABEL_7:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *NfRestoreOpenWithSE(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    v3 = 1;
  }

  return sub_2994B78B0(a2, v3, a3, 0);
}

uint64_t *NfRestoreOpenWithSEAndResult(unsigned int *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = *a1;
  if (*a1)
  {
    if (v4 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 1;
  }

  return sub_2994B78B0(a2, v4, a3, a4);
}

uint64_t NfRestoreToggleSEPower(uint64_t a1)
{
  if (!a1)
  {
    return 6;
  }

  v1 = *(a1 + 8);
  if (!v1)
  {
    return 6;
  }

  v2 = *v1;
  v3 = *(v1 + 2);
  if (NFDriverSetSecureElementPower())
  {
    return 0;
  }

  else
  {
    return 10;
  }
}

uint64_t NfRestoreInvalidateProhibitTimer(uint64_t a1)
{
  if (!a1)
  {
    return 6;
  }

  v1 = *(a1 + 8);
  if (!v1)
  {
    return 6;
  }

  v2 = *v1;
  if (NFDriverInvalidateProhibitTimer())
  {
    return 9;
  }

  else
  {
    return 0;
  }
}

void sub_2994B8D74(const char *a1, unsigned int a2, char *a3, ...)
{
  va_start(va, a3);
  v22 = *MEMORY[0x29EDCA608];
  userInfoKeys = 0;
  v21 = 0;
  userInfoValues = 0;
  v19 = 0;
  cStr = 0;
  vasprintf(&cStr, a3, va);
  if (cStr)
  {
    v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
    free(cStr);
  }

  else
  {
    v5 = @"???";
  }

  v6 = CFStringCreateWithCString(0, a1, 0x8000100u);
  if (qword_2A1463198)
  {
    v7 = CFRetain(qword_2A1463198);
    CFRelease(qword_2A1463198);
    qword_2A1463198 = 0;
    if (v5)
    {
      userInfoKeys = *MEMORY[0x29EDB8F58];
      userInfoValues = v5;
      if (v7)
      {
        v21 = *MEMORY[0x29EDB8F68];
        v19 = v7;
        v8 = 2;
LABEL_11:
        qword_2A1463198 = CFErrorCreateWithUserInfoKeysAndValues(0, v6, a2, &userInfoKeys, &userInfoValues, v8);
        CFRelease(v5);
        goto LABEL_17;
      }

LABEL_10:
      v8 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
    if (v5)
    {
      userInfoKeys = *MEMORY[0x29EDB8F58];
      userInfoValues = v5;
      goto LABEL_10;
    }
  }

  v9 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i Failed to create errorValue CFString", "_NFRestorePushError", 88);
  }

  dispatch_get_specific(*v9);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v15 = "_NFRestorePushError";
    v16 = 1024;
    v17 = 88;
    _os_log_impl(&dword_2994B7000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to create errorValue CFString", buf, 0x12u);
  }

  qword_2A1463198 = CFErrorCreate(0, v6, a2, 0);
LABEL_17:
  CFRelease(v6);
  if (v7)
  {
    CFRelease(v7);
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t sub_2994B8FB0()
{
  if (sub_2994B906C(@"LogNCI"))
  {
    v0 = 4;
  }

  else
  {
    v0 = 0;
  }

  if (sub_2994B906C(@"LogMW"))
  {
    v0 |= 0x40000000uLL;
  }

  if (sub_2994B906C(@"LogAPI"))
  {
    v0 |= 8uLL;
  }

  if (sub_2994B906C(@"LogAPDU"))
  {
    v0 |= 0x10uLL;
  }

  if (sub_2994B906C(@"SimulateRestoreOS"))
  {
    v0 |= 0x200000uLL;
  }

  if (sub_2994B906C(@"ForceVenReset"))
  {
    v0 |= 0x4000000uLL;
  }

  if (NFIsInternalBuild())
  {
    return v0 | 0x4000000000;
  }

  else
  {
    return v0;
  }
}

BOOL sub_2994B906C(const __CFString *a1)
{
  v1 = CFPreferencesCopyValue(a1, @"com.apple.stockholm", @"mobile", *MEMORY[0x29EDB8F90]);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFStringGetTypeID())
    {
      v4 = 1;
      if (CFStringCompare(v2, @"true", 1uLL) == kCFCompareEqualTo)
      {
        goto LABEL_18;
      }

      v4 = 1;
      if (CFStringCompare(v2, @"YES", 1uLL) == kCFCompareEqualTo)
      {
        goto LABEL_18;
      }

      v5 = CFEqual(v2, @"1") == 0;
    }

    else
    {
      if (v3 != CFNumberGetTypeID())
      {
        v4 = v3 == CFBooleanGetTypeID() && v2 == *MEMORY[0x29EDB8F00];
        goto LABEL_18;
      }

      valuePtr = 0.0;
      if (CFNumberIsFloatType(v2))
      {
        CFNumberGetValue(v2, kCFNumberDoubleType, &valuePtr);
        v5 = valuePtr == 0.0;
      }

      else
      {
        CFNumberGetValue(v2, kCFNumberCFIndexType, &valuePtr);
        v5 = *&valuePtr == 0;
      }
    }

    v4 = !v5;
LABEL_18:
    CFRelease(v2);
    return v4;
  }

  return 0;
}

uint64_t NfRestoreReturnError()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v188 = *MEMORY[0x29EDCA608];
  if (qword_2A1463198)
  {
    CFRelease(qword_2A1463198);
    qword_2A1463198 = 0;
  }

  if (qword_2A14631A8)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Context already exists", "NfRestoreReturnError", 1804);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v164 = "NfRestoreReturnError";
      v165 = 1024;
      v166 = 1804;
      _os_log_impl(&dword_2994B7000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Context already exists", buf, 0x12u);
    }

    sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "NfRestoreReturnError", 1805);
    v13 = 4;
    goto LABEL_224;
  }

  qword_2A14631A8 = sub_2994C216C(v8, v6, v2);
  bzero(buf, 0x1818uLL);
  cf = 0;
  *v181 = 0;
  bzero(v179, 0x400uLL);
  v14 = sysctlbyname("kern.bootargs", 0, v181, 0, 0);
  if (v14)
  {
    v15 = v14;
    v16 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v17(3, "%s:%i Failed to read boot-args: %d", "NFRestoreParseBootArgs", 209, v15);
    }

    dispatch_get_specific(*v16);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v178[0] = 136446722;
      *&v178[1] = "NFRestoreParseBootArgs";
      LOWORD(v178[3]) = 1024;
      *(&v178[3] + 2) = 209;
      HIWORD(v178[4]) = 1024;
      v178[5] = v15;
      v19 = "%{public}s:%i Failed to read boot-args: %d";
LABEL_14:
      v20 = v18;
      v21 = 24;
LABEL_20:
      _os_log_impl(&dword_2994B7000, v20, OS_LOG_TYPE_ERROR, v19, v178, v21);
    }
  }

  else if (*v181 < 0x401uLL)
  {
    if (*v181)
    {
      v38 = sysctlbyname("kern.bootargs", v179, v181, 0, 0);
      if (v38)
      {
        v39 = v38;
        v40 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v41 = NFLogGetLogger();
        if (v41)
        {
          v41(3, "%s:%i Failed to read boot-args: %d", "NFRestoreParseBootArgs", 221, v39);
        }

        dispatch_get_specific(*v40);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v178[0] = 136446722;
          *&v178[1] = "NFRestoreParseBootArgs";
          LOWORD(v178[3]) = 1024;
          *(&v178[3] + 2) = 221;
          HIWORD(v178[4]) = 1024;
          v178[5] = v39;
          v19 = "%{public}s:%i Failed to read boot-args: %d";
          goto LABEL_14;
        }
      }

      else
      {
        v44 = v4;
        __lasts = 0;
        v45 = strtok_r(v179, " ", &__lasts);
        if (v45)
        {
          v46 = MEMORY[0x29EDC9730];
          do
          {
            v161 = &unk_2994C5988;
            v47 = strtok_r(v45, "=", &v161);
            if (v47)
            {
              v48 = v161 == 0;
            }

            else
            {
              v48 = 1;
            }

            if (!v48)
            {
              v49 = v47;
              if (!strcmp(v47, "nfrestore-loop"))
              {
                dispatch_get_specific(*v46);
                v50 = NFLogGetLogger();
                if (v50)
                {
                  v50(6, "%s:%i Found boot-arg %s = %s", "NFRestoreParseBootArgs", 233, v49, v161);
                }

                dispatch_get_specific(*v46);
                v51 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                {
                  v178[0] = 136446978;
                  *&v178[1] = "NFRestoreParseBootArgs";
                  LOWORD(v178[3]) = 1024;
                  *(&v178[3] + 2) = 233;
                  HIWORD(v178[4]) = 2080;
                  *&v178[5] = v49;
                  LOWORD(v178[7]) = 2080;
                  *(&v178[7] + 2) = v161;
                  _os_log_impl(&dword_2994B7000, v51, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found boot-arg %s = %s", v178, 0x26u);
                }

                v168 |= 2u;
                v169 = atoi(v161);
              }
            }

            v45 = strtok_r(0, " ", &__lasts);
          }

          while (v45);
        }

        v4 = v44;
      }
    }
  }

  else
  {
    v22 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v23(3, "%s:%i Invalid boot-arg length: %zu", "NFRestoreParseBootArgs", 213, *v181);
    }

    dispatch_get_specific(*v22);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v178[0] = 136446722;
      *&v178[1] = "NFRestoreParseBootArgs";
      LOWORD(v178[3]) = 1024;
      *(&v178[3] + 2) = 213;
      HIWORD(v178[4]) = 2048;
      *&v178[5] = *v181;
      v19 = "%{public}s:%i Invalid boot-arg length: %zu";
      v20 = v24;
      v21 = 28;
      goto LABEL_20;
    }
  }

  bzero(v179, 0x400uLL);
  Value = CFDictionaryGetValue(v9, @"FirmwareBundleData");
  if (!Value)
  {
    v29 = CFDictionaryGetValue(v9, @"FirmwareBundlePath");
    if (v29)
    {
      v30 = v29;
      if (!CFStringGetCStringPtr(v29, 0x8000100u))
      {
        CFStringGetCString(v30, v179, 1024, 0x8000100u);
      }

      v31 = NFDataCreateWithFile();
      v32 = *MEMORY[0x29EDB8ED8];
      v33 = CFDataCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], *v31, *(v31 + 8), *MEMORY[0x29EDB8EE8]);
      cf = CFPropertyListCreateWithData(v32, v33, 0, 0, 0);
      CFRelease(v33);
      NFDataRelease();
      if (cf)
      {
        goto LABEL_73;
      }

      v34 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v35 = NFLogGetLogger();
      if (v35)
      {
        v35(3, "%s:%i Failed to parse bundle data", "NFRestoreParseParams", 368);
      }

      dispatch_get_specific(*v34);
      v36 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v178[0] = 136446466;
        *&v178[1] = "NFRestoreParseParams";
        LOWORD(v178[3]) = 1024;
        *(&v178[3] + 2) = 368;
        _os_log_impl(&dword_2994B7000, v36, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to parse bundle data", v178, 0x12u);
      }

      v37 = 369;
    }

    else
    {
      v42 = CFDictionaryGetValue(v9, @"RootFilePath");
      if (!v42)
      {
        goto LABEL_73;
      }

      v43 = v42;
      bzero(v178, 0x400uLL);
      if (CFStringGetCStringPtr(v43, 0x8000100u))
      {
        __strlcpy_chk();
      }

      else
      {
        CFStringGetCString(v43, v178, 1024, 0x8000100u);
      }

      if (!sub_2994C0C28(v178, &cf))
      {
        goto LABEL_73;
      }

      v52 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v53 = NFLogGetLogger();
      if (v53)
      {
        v53(3, "%s:%i Failed to scan %s", "NFRestoreParseParams", 380, v178);
      }

      dispatch_get_specific(*v52);
      v54 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *v181 = 136446722;
        *&v181[4] = "NFRestoreParseParams";
        v182 = 1024;
        v183 = 380;
        v184 = 2080;
        v185 = v178;
        _os_log_impl(&dword_2994B7000, v54, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to scan %s", v181, 0x1Cu);
      }

      v37 = 381;
    }

    sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "NFRestoreParseParams", v37);
LABEL_68:
    v55 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v56 = NFLogGetLogger();
    if (v56)
    {
      v56(3, "%s:%i Failed to parse params", "NfRestoreReturnError", 1815);
    }

    dispatch_get_specific(*v55);
    v57 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v179[0]) = 136446466;
      *(v179 + 4) = "NfRestoreReturnError";
      WORD2(v179[1]) = 1024;
      *(&v179[1] + 6) = 1815;
      _os_log_impl(&dword_2994B7000, v57, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to parse params", v179, 0x12u);
    }

    v13 = 6;
    goto LABEL_218;
  }

  cf = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], Value, 0, 0, 0);
  if (!cf)
  {
    v26 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v27(3, "%s:%i Failed to parse bundle data", "NFRestoreParseParams", 353);
    }

    dispatch_get_specific(*v26);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v178[0] = 136446466;
      *&v178[1] = "NFRestoreParseParams";
      LOWORD(v178[3]) = 1024;
      *(&v178[3] + 2) = 353;
      _os_log_impl(&dword_2994B7000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to parse bundle data", v178, 0x12u);
    }

    sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "NFRestoreParseParams", 354);
    goto LABEL_68;
  }

LABEL_73:
  v58 = CFDictionaryGetValue(v9, @"DevicePath");
  if (v58)
  {
    CFStringGetCString(v58, buf, 1024, 0x600u);
  }

  v59 = CFDictionaryGetValue(v9, @"InvokedFromCommandLine");
  if (v59)
  {
    v60 = CFBooleanGetValue(v59) != 0;
  }

  else
  {
    v60 = 0;
  }

  v168 = v168 & 0xFE | v60;
  v61 = CFDictionaryGetValue(v9, @"NfcUpdateFile");
  if (v61)
  {
    CFStringGetCString(v61, v170, 1024, 0x600u);
  }

  else
  {
    v170[0] = 0;
  }

  v62 = CFDictionaryGetValue(v9, @"NfcRFSettingsFile");
  if (v62)
  {
    CFStringGetCString(v62, v171, 1024, 0x600u);
  }

  else
  {
    v171[0] = 0;
  }

  v63 = CFDictionaryGetValue(v9, @"FactoryInstall");
  if (v63)
  {
    v64 = CFBooleanGetValue(v63) != 0;
  }

  else
  {
    v64 = 0;
  }

  v172 = v172 & 0xFE | v64;
  v65 = CFDictionaryGetValue(v9, @"kNfUpdateParamIntegrity");
  if (v65)
  {
    v66 = 16 * (CFBooleanGetValue(v65) != 0);
  }

  else
  {
    v66 = 0;
  }

  v174 = v174 & 0xEF | v66;
  v67 = CFDictionaryGetValue(v9, @"kNfUpdateParamQueryFDRKey");
  if (v67)
  {
    v68 = 2 * (CFBooleanGetValue(v67) != 0);
  }

  else
  {
    v68 = 0;
  }

  v172 = v172 & 0xFD | v68;
  v69 = CFDictionaryGetValue(v9, @"kNfUpdateAntennaSelfTest");
  if (v69)
  {
    v70 = 4 * (CFBooleanGetValue(v69) != 0);
  }

  else
  {
    v70 = 0;
  }

  v172 = v172 & 0xFB | v70;
  v71 = CFDictionaryGetValue(v9, @"RestoreSystemPartition");
  if (v71)
  {
    CFStringGetCString(v71, v177, 1024, 0x600u);
  }

  else
  {
    v177[0] = 0;
  }

  v72 = CFDictionaryGetValue(v9, @"NfcMaxFwDlRetries");
  if (v72)
  {
    CFNumberGetValue(v72, kCFNumberSInt8Type, v173);
  }

  else
  {
    v173[0] = 10;
  }

  v73 = CFDictionaryGetValue(v9, @"NfcForceFwDl");
  if (v73)
  {
    v74 = CFBooleanGetValue(v73) != 0;
  }

  else
  {
    v74 = 0;
  }

  v173[1] = v74;
  v75 = CFDictionaryGetValue(v9, @"JcopPostflightScript");
  if (v75)
  {
    CFStringGetCString(v75, v175, 1024, 0x600u);
  }

  else
  {
    v175[0] = 0;
  }

  v76 = CFDictionaryGetValue(v9, @"JcopTerminateApplets");
  if (v76)
  {
    v77 = CFBooleanGetValue(v76) != 0;
  }

  else
  {
    v77 = 0;
  }

  v176 = v176 & 0xFE | v77;
  v78 = CFDictionaryGetValue(v9, @"JcopForceJCOPPostflightScript");
  if (v78)
  {
    v79 = 2 * (CFBooleanGetValue(v78) != 0);
  }

  else
  {
    v79 = 0;
  }

  v176 = v176 & 0xFD | v79;
  v80 = CFDictionaryGetValue(v9, @"StockholmOnly");
  if (v80)
  {
    v81 = 2 * (CFBooleanGetValue(v80) != 0);
  }

  else
  {
    v81 = 0;
  }

  v174 = v174 & 0xFD | v81;
  v82 = CFDictionaryGetValue(v9, @"HammerfestOnly");
  if (v82)
  {
    v83 = 4 * (CFBooleanGetValue(v82) != 0);
  }

  else
  {
    v83 = 0;
  }

  v174 = v174 & 0xFB | v83;
  v84 = CFDictionaryGetValue(v9, @"CLIRestore");
  if (v84)
  {
    v84 = CFBooleanGetValue(v84);
    v85 = 8 * (v84 != 0);
  }

  else
  {
    v85 = 0;
  }

  v86 = v174;
  v174 = v174 & 0xF7 | v85;
  if ((v86 & 2) != 0 || (v84 = sub_2994C4C04("com.apple.spmi.nfc.hammerfest"), !v84))
  {
    v159 = 0;
  }

  else
  {
    v84 = sub_2994C2EDC("hammerfest-spmi");
    if ((v84 & 1) == 0)
    {
      v84 = sub_2994BAFAC(2);
      if ((v84 & 1) == 0)
      {
        v115 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v116 = NFLogGetLogger();
        if (v116)
        {
          v116(3, "%s:%i Failed to shut down Hammerfest", "NfRestoreReturnError", 1829);
        }

        dispatch_get_specific(*v115);
        v117 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v179[0]) = 136446466;
          *(v179 + 4) = "NfRestoreReturnError";
          WORD2(v179[1]) = 1024;
          *(&v179[1] + 6) = 1829;
          _os_log_impl(&dword_2994B7000, v117, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to shut down Hammerfest", v179, 0x12u);
        }

        v118 = 1830;
        goto LABEL_263;
      }
    }

    v159 = 1;
  }

  if ((v174 & 4) != 0)
  {
    v107 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v108 = NFLogGetLogger();
    if (v108)
    {
      v108(6, "%s:%i Skipping Stockholm restore", "NfRestoreReturnError", 1840);
    }

    dispatch_get_specific(*v107);
    v109 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v179[0]) = 136446466;
      *(v179 + 4) = "NfRestoreReturnError";
      WORD2(v179[1]) = 1024;
      *(&v179[1] + 6) = 1840;
      _os_log_impl(&dword_2994B7000, v109, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Skipping Stockholm restore", v179, 0x12u);
    }
  }

  else
  {
    if ((v172 & 2) != 0)
    {
      v110 = NfRestoreCopyUniqueFDRKey(v84, v4);
      v111 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v112 = NFLogGetLogger();
      if (v110)
      {
        if (v112)
        {
          v112(6, "%s:%i FDR Key : %s", "NfRestoreReturnError", 1848, v110);
        }

        dispatch_get_specific(*v111);
        v113 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v179[0]) = 136446722;
          *(v179 + 4) = "NfRestoreReturnError";
          WORD2(v179[1]) = 1024;
          *(&v179[1] + 6) = 1848;
          WORD1(v179[2]) = 2080;
          *(&v179[2] + 4) = v110;
          _os_log_impl(&dword_2994B7000, v113, OS_LOG_TYPE_DEFAULT, "%{public}s:%i FDR Key : %s", v179, 0x1Cu);
        }

        if ((NFIsRestoreOS() & 1) == 0)
        {
          fprintf(*MEMORY[0x29EDCA620], "FDR Key : %s\n", v110);
        }

        free(v110);
      }

      else
      {
        if (v112)
        {
          v112(3, "%s:%i No FDR Key !", "NfRestoreReturnError", 1854);
        }

        dispatch_get_specific(*v111);
        v114 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v179[0]) = 136446466;
          *(v179 + 4) = "NfRestoreReturnError";
          WORD2(v179[1]) = 1024;
          *(&v179[1] + 6) = 1854;
          _os_log_impl(&dword_2994B7000, v114, OS_LOG_TYPE_ERROR, "%{public}s:%i No FDR Key !", v179, 0x12u);
        }

        if ((NFIsRestoreOS() & 1) == 0)
        {
          fwrite("No FDR Key !\n", 0xDuLL, 1uLL, *MEMORY[0x29EDCA620]);
        }
      }
    }

    else if ((v174 & 0x10) != 0)
    {
      v180 = 0u;
      memset(v179, 0, sizeof(v179));
      v179[3] = sub_2994B8FB0();
      qword_2A14631A0 = NFDriverOpen();
      if (qword_2A14631A0)
      {
        NFDriverRunIntegrityDebug();
        if (NFIsInternalBuild())
        {
          v87 = NFDriverDebugDumpMemory();
          if (v87)
          {
            v88 = v87;
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v89 = NFLogGetLogger();
            if (v89)
            {
              v89(6, "%s:%i EEPROM User Area Start:0x%08X End:0x%08X", "NfRestoreRunIntegrityCheck", 306, *v88, v88[1]);
            }

            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v90 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              v91 = *v88;
              v92 = v88[1];
              v178[0] = 136446978;
              *&v178[1] = "NfRestoreRunIntegrityCheck";
              LOWORD(v178[3]) = 1024;
              *(&v178[3] + 2) = 306;
              HIWORD(v178[4]) = 1024;
              v178[5] = v91;
              LOWORD(v178[6]) = 1024;
              *(&v178[6] + 2) = v92;
              _os_log_impl(&dword_2994B7000, v90, OS_LOG_TYPE_DEFAULT, "%{public}s:%i EEPROM User Area Start:0x%08X End:0x%08X", v178, 0x1Eu);
            }

            v93 = *(v88 + 1);
            if (v93)
            {
              v158 = v88;
              memset(v178, 0, 48);
              v95 = *v93;
              v94 = v93[1];
              v96 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v97 = NFLogGetLogger();
              dispatch_get_specific(*v96);
              v98 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
              {
                v99 = *(v158[1] + 8);
                *v181 = 136315906;
                *&v181[4] = "NfRestoreRunIntegrityCheck";
                v182 = 1024;
                v183 = 309;
                v184 = 2082;
                v185 = "EEPROM User Area: ";
                v186 = 2048;
                v187 = v99;
                _os_log_impl(&dword_2994B7000, v98, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v181, 0x26u);
              }

              if (v97)
              {
                v97(6, "%s:%i %s %lu bytes :", "NfRestoreRunIntegrityCheck", 309, "EEPROM User Area: ", *(v158[1] + 8));
              }

              if (v94)
              {
                v100 = 0;
                do
                {
                  v101 = 0;
                  v102 = v178 + __sprintf_chk(v178, 0, 0x30uLL, "%04lX: ", v100);
                  do
                  {
                    v103 = *(v95 + v100++);
                    v104 = sprintf(v102, "0x%02X ", v103);
                    if (v101 > 6)
                    {
                      break;
                    }

                    v102 += v104;
                    ++v101;
                  }

                  while (v100 < v94);
                  dispatch_get_specific(*MEMORY[0x29EDC9730]);
                  v105 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                  {
                    *v181 = 136446210;
                    *&v181[4] = v178;
                    _os_log_impl(&dword_2994B7000, v105, OS_LOG_TYPE_DEFAULT, "%{public}s", v181, 0xCu);
                  }

                  if (v97)
                  {
                    v97(6, "%s", v178);
                  }
                }

                while (v100 < v94);
              }

              v88 = v158;
              v106 = v158[1];
              NFDataRelease();
            }

            free(v88);
          }
        }

        NFDriverClose();
        qword_2A14631A0 = 0;
      }

      else
      {
        v119 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v120 = NFLogGetLogger();
        if (v120)
        {
          v120(3, "%s:%i Failed to load driver", "NfRestoreRunIntegrityCheck", 293);
        }

        dispatch_get_specific(*v119);
        v121 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
        {
          v178[0] = 136446466;
          *&v178[1] = "NfRestoreRunIntegrityCheck";
          LOWORD(v178[3]) = 1024;
          *(&v178[3] + 2) = 293;
          _os_log_impl(&dword_2994B7000, v121, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load driver", v178, 0x12u);
        }

        if (v4)
        {
          v122 = CFErrorCreate(0, @"com.apple.nfstack", 9, 0);
          *v4 = v122;
          if (v122)
          {
            CFAutorelease(v122);
          }
        }
      }
    }

    v123 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v124 = NFLogGetLogger();
    if (v124)
    {
      v124(6, "%s:%i **************** Restoring Stockholm ****************", "NfRestoreReturnError", 1870);
    }

    dispatch_get_specific(*v123);
    v125 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v179[0]) = 136446466;
      *(v179 + 4) = "NfRestoreReturnError";
      WORD2(v179[1]) = 1024;
      *(&v179[1] + 6) = 1870;
      _os_log_impl(&dword_2994B7000, v125, OS_LOG_TYPE_DEFAULT, "%{public}s:%i **************** Restoring Stockholm ****************", v179, 0x12u);
    }

    if ((v168 & 2) != 0)
    {
      v130 = 1;
      while (1)
      {
        dispatch_get_specific(*v123);
        v131 = NFLogGetLogger();
        if (v131)
        {
          v131(6, "%s:%i Iteration %d of %d", "NfRestoreReturnError", 1875, v130, v169);
        }

        dispatch_get_specific(*v123);
        v132 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v179[0]) = 136446978;
          *(v179 + 4) = "NfRestoreReturnError";
          WORD2(v179[1]) = 1024;
          *(&v179[1] + 6) = 1875;
          WORD1(v179[2]) = 1024;
          HIDWORD(v179[2]) = v130;
          LOWORD(v179[3]) = 1024;
          *(&v179[3] + 2) = v169;
          _os_log_impl(&dword_2994B7000, v132, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Iteration %d of %d", v179, 0x1Eu);
        }

        v133 = sub_2994BB3C0(buf, cf);
        if (v133)
        {
          break;
        }

        ++v130;
        if (v169 && v130 > v169)
        {
          goto LABEL_205;
        }
      }

      v13 = v133;
      dispatch_get_specific(*v123);
      v144 = NFLogGetLogger();
      if (v144)
      {
        v144(3, "%s:%i Failed at iteration %d", "NfRestoreReturnError", 1877, v130);
      }

      dispatch_get_specific(*v123);
      v128 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_218;
      }

      LODWORD(v179[0]) = 136446722;
      *(v179 + 4) = "NfRestoreReturnError";
      WORD2(v179[1]) = 1024;
      *(&v179[1] + 6) = 1877;
      WORD1(v179[2]) = 1024;
      HIDWORD(v179[2]) = v130;
      v129 = "%{public}s:%i Failed at iteration %d";
LABEL_229:
      _os_log_impl(&dword_2994B7000, v128, OS_LOG_TYPE_ERROR, v129, v179, 0x18u);
      goto LABEL_218;
    }

    v126 = sub_2994BB3C0(buf, cf);
    if (v126)
    {
      v13 = v126;
      dispatch_get_specific(*v123);
      v127 = NFLogGetLogger();
      if (v127)
      {
        v127(3, "%s:%i Failed %d", "NfRestoreReturnError", 1885, v13);
      }

      dispatch_get_specific(*v123);
      v128 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_218;
      }

      LODWORD(v179[0]) = 136446722;
      *(v179 + 4) = "NfRestoreReturnError";
      WORD2(v179[1]) = 1024;
      *(&v179[1] + 6) = 1885;
      WORD1(v179[2]) = 1024;
      HIDWORD(v179[2]) = v13;
      v129 = "%{public}s:%i Failed %d";
      goto LABEL_229;
    }
  }

LABEL_205:
  if ((v174 & 2) != 0)
  {
    v139 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v140 = NFLogGetLogger();
    if (v140)
    {
      v140(6, "%s:%i Skipping Hammerfest restore.", "NfRestoreReturnError", 1893);
    }

    dispatch_get_specific(*v139);
    v141 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_217;
    }

    LODWORD(v179[0]) = 136446466;
    *(v179 + 4) = "NfRestoreReturnError";
    WORD2(v179[1]) = 1024;
    *(&v179[1] + 6) = 1893;
LABEL_216:
    _os_log_impl(&dword_2994B7000, v141, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Skipping Hammerfest restore.", v179, 0x12u);
    goto LABEL_217;
  }

  if (v159)
  {
    v134 = CFDictionaryGetValue(v9, @"AuxiliaryDevicePath");
    if (v134)
    {
      CFStringGetCString(v134, v167, 1024, 0x600u);
    }

    v174 |= 1u;
    v135 = CFDictionaryGetValue(v9, @"StockholmOptions");
    if (v135)
    {
      v136 = v135;
      v137 = CFDictionaryGetValue(v135, @"RestoreHammerfest");
      if (v137)
      {
        v138 = CFBooleanGetValue(v137) != 0;
      }

      else
      {
        v138 = 0;
      }

      v174 = v174 & 0xFE | v138;
      v145 = CFDictionaryGetValue(v136, @"HammerfestFirmwareType");
      if (v145 && CFStringCompare(v145, @"Manufacturing", 1uLL) == kCFCompareEqualTo)
      {
        v146 = v172 | 1;
      }

      else
      {
        v146 = v172 & 0xFE;
      }

      v172 = v146;
    }

    v175[0] = 0;
    v176 &= 0xFCu;
    v147 = v174;
    v148 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v149 = NFLogGetLogger();
    if ((v147 & 1) == 0)
    {
      if (v149)
      {
        v149(5, "%s:%i Skipping Hammerfest restore.", "NfRestoreReturnError", 1905);
      }

      dispatch_get_specific(*v148);
      v141 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_217;
      }

      LODWORD(v179[0]) = 136446466;
      *(v179 + 4) = "NfRestoreReturnError";
      WORD2(v179[1]) = 1024;
      *(&v179[1] + 6) = 1905;
      goto LABEL_216;
    }

    if (v149)
    {
      v149(6, "%s:%i **************** Restoring Hammerfest ****************", "NfRestoreReturnError", 1909);
    }

    dispatch_get_specific(*v148);
    v150 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v179[0]) = 136446466;
      *(v179 + 4) = "NfRestoreReturnError";
      WORD2(v179[1]) = 1024;
      *(&v179[1] + 6) = 1909;
      _os_log_impl(&dword_2994B7000, v150, OS_LOG_TYPE_DEFAULT, "%{public}s:%i **************** Restoring Hammerfest ****************", v179, 0x12u);
    }

    if (sub_2994C2EDC("hammerfest-spmi") || (sub_2994BAFAC(1) & 1) != 0)
    {
      if ((v168 & 2) == 0)
      {
        v13 = sub_2994BB3C0(buf, cf);
        goto LABEL_218;
      }

      v151 = 1;
      while (1)
      {
        dispatch_get_specific(*v148);
        v152 = NFLogGetLogger();
        if (v152)
        {
          v152(6, "%s:%i Iteration %d of %d", "NfRestoreReturnError", 1922, v151, v169);
        }

        dispatch_get_specific(*v148);
        v153 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v179[0]) = 136446978;
          *(v179 + 4) = "NfRestoreReturnError";
          WORD2(v179[1]) = 1024;
          *(&v179[1] + 6) = 1922;
          WORD1(v179[2]) = 1024;
          HIDWORD(v179[2]) = v151;
          LOWORD(v179[3]) = 1024;
          *(&v179[3] + 2) = v169;
          _os_log_impl(&dword_2994B7000, v153, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Iteration %d of %d", v179, 0x1Eu);
        }

        v154 = sub_2994BB3C0(buf, cf);
        if (v154)
        {
          break;
        }

        ++v151;
        if (v169)
        {
          v13 = 0;
          if (v151 > v169)
          {
            goto LABEL_218;
          }
        }
      }

      v13 = v154;
      dispatch_get_specific(*v148);
      v157 = NFLogGetLogger();
      if (v157)
      {
        v157(3, "%s:%i Failed at iteration %d", "NfRestoreReturnError", 1924, v151);
      }

      dispatch_get_specific(*v148);
      v128 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_218;
      }

      LODWORD(v179[0]) = 136446722;
      *(v179 + 4) = "NfRestoreReturnError";
      WORD2(v179[1]) = 1024;
      *(&v179[1] + 6) = 1924;
      WORD1(v179[2]) = 1024;
      HIDWORD(v179[2]) = v151;
      v129 = "%{public}s:%i Failed at iteration %d";
      goto LABEL_229;
    }

    dispatch_get_specific(*v148);
    v155 = NFLogGetLogger();
    if (v155)
    {
      v155(3, "%s:%i Failed to shut down Stockholm", "NfRestoreReturnError", 1912);
    }

    dispatch_get_specific(*v148);
    v156 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v179[0]) = 136446466;
      *(v179 + 4) = "NfRestoreReturnError";
      WORD2(v179[1]) = 1024;
      *(&v179[1] + 6) = 1912;
      _os_log_impl(&dword_2994B7000, v156, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to shut down Stockholm", v179, 0x12u);
    }

    v118 = 1913;
LABEL_263:
    sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "NfRestoreReturnError", v118);
    v13 = 5;
    goto LABEL_218;
  }

LABEL_217:
  v13 = 0;
LABEL_218:
  if (cf)
  {
    CFRelease(cf);
  }

  if (qword_2A14631A8)
  {
    free(qword_2A14631A8);
  }

  qword_2A14631A8 = 0;
  if (v4)
  {
    *v4 = qword_2A1463198;
  }

LABEL_224:
  v142 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t sub_2994BAFAC(int a1)
{
  v22 = *MEMORY[0x29EDCA608];
  sub_2994B8FB0();
  if (qword_2A14631A0)
  {
    v2 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      if (a1 == 2)
      {
        v4 = "Hammerfest";
      }

      else
      {
        v4 = "Stockholm";
      }

      Logger(3, "%s:%i %s driver already open - can't interrupt", "_NFRestoreShutdownNFCC", 1707, v4);
    }

    dispatch_get_specific(*v2);
    v5 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    if (a1 == 2)
    {
      v6 = "Hammerfest";
    }

    else
    {
      v6 = "Stockholm";
    }

    *buf = 136446722;
    v17 = "_NFRestoreShutdownNFCC";
    v18 = 1024;
    v19 = 1707;
    v20 = 2080;
    v21 = v6;
    v7 = "%{public}s:%i %s driver already open - can't interrupt";
    v8 = v5;
    v9 = 28;
    goto LABEL_12;
  }

  if (NFDriverOpen())
  {
    v10 = NFDriverNFCCPowerOff();
    NFDriverClose();
    goto LABEL_16;
  }

  v13 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v14 = NFLogGetLogger();
  if (v14)
  {
    v14(3, "%s:%i Failed to open driver", "_NFRestoreShutdownNFCC", 1713);
  }

  dispatch_get_specific(*v13);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v17 = "_NFRestoreShutdownNFCC";
    v18 = 1024;
    v19 = 1713;
    v7 = "%{public}s:%i Failed to open driver";
    v8 = v15;
    v9 = 18;
LABEL_12:
    _os_log_impl(&dword_2994B7000, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
  }

LABEL_13:
  v10 = 0;
LABEL_16:
  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t NfRestoreCopyUniqueFDRKey(uint64_t a1, CFErrorRef *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  NFLogSetLogger();
  NFLogSetLogger();
  sub_2994B8FB0();
  v3 = qword_2A14631A0;
  if (qword_2A14631A0 || (qword_2A14631A0 = NFDriverOpen()) != 0)
  {
    code[0] = 0;
    UniqueFDRKey = NFDriverGetUniqueFDRKey();
    if (a2)
    {
      if (!UniqueFDRKey)
      {
        v5 = CFErrorCreate(0, @"com.apple.nfstack", 0, 0);
        *a2 = v5;
        if (v5)
        {
          CFAutorelease(v5);
        }
      }
    }

    if (!v3)
    {
      NFDriverClose();
      qword_2A14631A0 = 0;
    }
  }

  else
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to load driver", "NfRestoreCopyUniqueFDRKey", 1971);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      code[0] = 136446466;
      *&code[1] = "NfRestoreCopyUniqueFDRKey";
      v13 = 1024;
      v14 = 1971;
      _os_log_impl(&dword_2994B7000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load driver", code, 0x12u);
    }

    if (a2)
    {
      v9 = CFErrorCreate(0, @"com.apple.nfstack", 9, 0);
      *a2 = v9;
      if (v9)
      {
        CFAutorelease(v9);
      }
    }

    UniqueFDRKey = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return UniqueFDRKey;
}

uint64_t sub_2994BB3C0(_BYTE *a1, const void *a2)
{
  v50 = *MEMORY[0x29EDCA608];
  v4 = a1 + 4096;
  if (a1[4107])
  {
    a1[1024];
    *a1;
    sub_2994B8FB0();
  }

  else
  {
    *a1;
    sub_2994B8FB0();
  }

  if (qword_2A14631A0)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Driver already open. This is bad", "_NFRestore", 1748);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v45 = "_NFRestore";
      v46 = 1024;
      v47 = 1748;
      _os_log_impl(&dword_2994B7000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Driver already open. This is bad", buf, 0x12u);
    }

    v8 = 4;
    goto LABEL_71;
  }

  qword_2A14631A0 = NFDriverOpen();
  if (qword_2A14631A0)
  {
    NFDriverSetCallback();
    v9 = sub_2994BBC9C(qword_2A14631A0, a1, a2);
    if (v9)
    {
      if (v9 == 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = v9;
      }

      goto LABEL_70;
    }

    if ((v4[8] & 4) != 0)
    {
      v8 = sub_2994BDE90(qword_2A14631A0, 1);
      if (v8)
      {
        goto LABEL_70;
      }
    }

    else if (NFIsRestoreOS() && sub_2994BE234())
    {
      sub_2994BDE90(qword_2A14631A0, 0);
    }

    if ((v4[11] & 1) == 0)
    {
      v13 = qword_2A14631A0;
      v15 = v4[12];
      v14 = v4 + 12;
      v16 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v17 = NFLogGetLogger();
      if (v15)
      {
        if (v17)
        {
          v17(6, "%s:%i ", "_NFRestoreJcop", 610);
        }

        dispatch_get_specific(*v16);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v45 = "_NFRestoreJcop";
          v46 = 1024;
          v47 = 610;
          _os_log_impl(&dword_2994B7000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
        }

        Stack = NFDriverLoadStack();
        if (Stack && Stack != 24)
        {
          dispatch_get_specific(*v16);
          v31 = NFLogGetLogger();
          if (v31)
          {
            v31(3, "%s:%i Failed to load stack", "_NFRestoreJcop", 615);
          }

          dispatch_get_specific(*v16);
          v32 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v45 = "_NFRestoreJcop";
            v46 = 1024;
            v47 = 615;
            _os_log_impl(&dword_2994B7000, v32, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load stack", buf, 0x12u);
          }

          v33 = *(v13 + 56);
          Message = NFDriverSerialDebugLastMessage();
          v35 = *MEMORY[0x29EDC9198];
          StackBreadcrumb = NFDriverGetStackBreadcrumb();
          v37 = &unk_2994C631B;
          if (Message)
          {
            v37 = Message;
          }

          sub_2994B8D74("com.apple.nfstack", v35, "Error 0x%04x at %s:%d: %llx %s", v35, "_NFRestoreJcop", 616, StackBreadcrumb, v37);
          free(Message);
          sub_2994BEEE0();
          v8 = 9;
          goto LABEL_70;
        }

        v20 = sub_2994C22F4(v13, 1u);
        if (!v20)
        {
          dispatch_get_specific(*v16);
          v38 = NFLogGetLogger();
          if (v38)
          {
            v38(3, "%s:%i Failed to open SE", "_NFRestoreJcop", 625);
          }

          dispatch_get_specific(*v16);
          v39 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v45 = "_NFRestoreJcop";
            v46 = 1024;
            v47 = 625;
            _os_log_impl(&dword_2994B7000, v39, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to open SE", buf, 0x12u);
          }

          v8 = 9;
          goto LABEL_69;
        }

        v21 = v20;
        if (*v14)
        {
          dispatch_get_specific(*v16);
          v22 = NFLogGetLogger();
          if (v22)
          {
            v22(6, "%s:%i Running postflight: %s", "_NFRestoreRunPostFlight", 572, v14);
          }

          dispatch_get_specific(*v16);
          v23 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v45 = "_NFRestoreRunPostFlight";
            v46 = 1024;
            v47 = 572;
            v48 = 2080;
            v49 = v14;
            _os_log_impl(&dword_2994B7000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Running postflight: %s", buf, 0x1Cu);
          }

          v24 = NFDataCreateWithFile();
          if (v24)
          {
            v25 = v24;
            v26 = *(v24 + 8);
            v27 = malloc_type_calloc(1uLL, v26 + 1, 0x100004077774924uLL);
            strlcpy(v27, *v25, v26 + 1);
            v8 = sub_2994BFF0C(v21, v27);
            if (v8)
            {
              dispatch_get_specific(*v16);
              v28 = NFLogGetLogger();
              if (v28)
              {
                v28(3, "%s:%i Failed to run script", "_NFRestoreRunPostFlight", 588);
              }

              dispatch_get_specific(*v16);
              v29 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v45 = "_NFRestoreRunPostFlight";
                v46 = 1024;
                v47 = 588;
                _os_log_impl(&dword_2994B7000, v29, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to run script", buf, 0x12u);
              }
            }

            free(v27);
            NFDataRelease();
            goto LABEL_68;
          }

          dispatch_get_specific(*v16);
          v40 = NFLogGetLogger();
          if (v40)
          {
            v40(3, "%s:%i Failed to open %s", "_NFRestoreRunPostFlight", 577, v14);
          }

          dispatch_get_specific(*v16);
          v41 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v45 = "_NFRestoreRunPostFlight";
            v46 = 1024;
            v47 = 577;
            v48 = 2080;
            v49 = v14;
            _os_log_impl(&dword_2994B7000, v41, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to open %s", buf, 0x1Cu);
          }
        }

        v8 = 0;
LABEL_68:
        sub_2994C2D3C(v21);
LABEL_69:
        NFDriverUnloadStackAndLeaveHWEnabled();
        goto LABEL_70;
      }

      if (v17)
      {
        v17(6, "%s:%i Nothing to do", "_NFRestoreJcop", 606);
      }

      dispatch_get_specific(*v16);
      v30 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v45 = "_NFRestoreJcop";
        v46 = 1024;
        v47 = 606;
        _os_log_impl(&dword_2994B7000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Nothing to do", buf, 0x12u);
      }
    }

    v8 = 0;
LABEL_70:
    NFDriverClose();
    qword_2A14631A0 = 0;
    goto LABEL_71;
  }

  v10 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v11 = NFLogGetLogger();
  if (v11)
  {
    v11(3, "%s:%i Failed to load driver", "_NFRestore", 1754);
  }

  dispatch_get_specific(*v10);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v45 = "_NFRestore";
    v46 = 1024;
    v47 = 1754;
    _os_log_impl(&dword_2994B7000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load driver", buf, 0x12u);
  }

  v8 = 10;
LABEL_71:
  v42 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_2994BBBF4(uint64_t a1, char a2)
{
  v2 = MEMORY[0x29EDC9198];
  *MEMORY[0x29EDC9198] = a2;
  v3 = *(a1 + 56);
  Message = NFDriverSerialDebugLastMessage();
  v5 = *v2;
  StackBreadcrumb = NFDriverGetStackBreadcrumb();
  v7 = &unk_2994C631B;
  if (Message)
  {
    v7 = Message;
  }

  sub_2994B8D74("com.apple.nfstack", v5, "Error 0x%04x at %s:%d: %llx %s", v5, "_NFRestoreGenericHardwareError", 541, StackBreadcrumb, v7);

  free(Message);
}

uint64_t sub_2994BBC9C(uint64_t a1, uint64_t a2, const void *a3)
{
  v216 = *MEMORY[0x29EDCA608];
  v6 = sub_2994BE234();
  if (a3 || *(a2 + 2056))
  {
    v7 = sub_2994BE59C(a1, a2, a3);
    if (v7)
    {
      goto LABEL_123;
    }

    v8 = (a2 + 4096);
    if (NFDriverLoadStack())
    {
      v9 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Failed to load stack - retrying FW download", "_NFRestoreLoadStackAndRestoreOnFailure", 1197);
      }

      dispatch_get_specific(*v9);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_NFRestoreLoadStackAndRestoreOnFailure";
        *&buf[12] = 1024;
        *&buf[14] = 1197;
        _os_log_impl(&dword_2994B7000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load stack - retrying FW download", buf, 0x12u);
      }

      if (a2)
      {
        *(a2 + 4105) = 257;
      }

      sub_2994BEEE0();
      v12 = sub_2994BE59C(a1, a2, a3);
      v13 = MEMORY[0x29EDC9198];
      if (v12)
      {
        dispatch_get_specific(*v9);
        v14 = NFLogGetLogger();
        if (v14)
        {
          v14(3, "%s:%i Failed to restore after load failure.", "_NFRestoreLoadStackAndRestoreOnFailure", 1208);
        }

        dispatch_get_specific(*v9);
        v15 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_NFRestoreLoadStackAndRestoreOnFailure";
          *&buf[12] = 1024;
          *&buf[14] = 1208;
          _os_log_impl(&dword_2994B7000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to restore after load failure.", buf, 0x12u);
        }

        v16 = *(a1 + 56);
        Message = NFDriverSerialDebugLastMessage();
        v18 = *v13;
        StackBreadcrumb = NFDriverGetStackBreadcrumb();
        if (Message)
        {
          v20 = Message;
        }

        else
        {
          v20 = &unk_2994C631B;
        }

        sub_2994B8D74("com.apple.nfstack", v18, "Error 0x%04x at %s:%d: %llx %s", v18, "_NFRestoreLoadStackAndRestoreOnFailure", 1209, StackBreadcrumb, v20);
        free(Message);
LABEL_30:
        dispatch_get_specific(*v9);
        v27 = NFLogGetLogger();
        if (v27)
        {
          v27(3, "%s:%i Failed to load stack", "NFRestoreNfc", 1543);
        }

        dispatch_get_specific(*v9);
        v28 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "NFRestoreNfc";
          *&buf[12] = 1024;
          *&buf[14] = 1543;
          _os_log_impl(&dword_2994B7000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load stack", buf, 0x12u);
        }

        v29 = *(a1 + 56);
        v30 = NFDriverSerialDebugLastMessage();
        v31 = *v13;
        v32 = NFDriverGetStackBreadcrumb();
        if (v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = &unk_2994C631B;
        }

        sub_2994B8D74("com.apple.nfstack", v31, "Error 0x%04x at %s:%d: %llx %s", v31, "NFRestoreNfc", 1544, v32, v33);
        free(v30);
LABEL_122:
        v7 = 9;
        goto LABEL_123;
      }

      Stack = NFDriverLoadStack();
      dispatch_get_specific(*v9);
      v25 = NFLogGetLogger();
      if (Stack)
      {
        if (v25)
        {
          v25(3, "%s:%i Failed to load stack after re-restore.", "_NFRestoreLoadStackAndRestoreOnFailure", 1220);
        }

        dispatch_get_specific(*v9);
        v26 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_NFRestoreLoadStackAndRestoreOnFailure";
          *&buf[12] = 1024;
          *&buf[14] = 1220;
          _os_log_impl(&dword_2994B7000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load stack after re-restore.", buf, 0x12u);
        }

        sub_2994BEEE0();
        goto LABEL_30;
      }

      if (v25)
      {
        v25(6, "%s:%i Stack loaded after re-restore.", "_NFRestoreLoadStackAndRestoreOnFailure", 1216);
      }

      dispatch_get_specific(*v9);
      v34 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "_NFRestoreLoadStackAndRestoreOnFailure";
        *&buf[12] = 1024;
        *&buf[14] = 1216;
        _os_log_impl(&dword_2994B7000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Stack loaded after re-restore.", buf, 0x12u);
      }
    }

    if ((*(a1 + 56) & 1) == 0)
    {
      *v200 = 0;
      if (!NFDriverReadATETrimVersion())
      {
        v35 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v36 = NFLogGetLogger();
        if (v36)
        {
          v36(6, "%s:%i ATE Trim version is %x (%d)", "_NFRestoreReadATETrimVersion", 1238, *v200, *v200);
        }

        dispatch_get_specific(*v35);
        v37 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446978;
          *&buf[4] = "_NFRestoreReadATETrimVersion";
          *&buf[12] = 1024;
          *&buf[14] = 1238;
          *&buf[18] = 1024;
          *&buf[20] = *v200;
          *&buf[24] = 1024;
          *&buf[26] = *v200;
          _os_log_impl(&dword_2994B7000, v37, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ATE Trim version is %x (%d)", buf, 0x1Eu);
        }
      }
    }

    if (v6)
    {
      if (*(a2 + 3080))
      {
        v38 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v39 = NFLogGetLogger();
        if (v39)
        {
          v39(6, "%s:%i Using data from %s", "_NFRestoreNfcRFStep", 1131, (a2 + 3080));
        }

        dispatch_get_specific(*v38);
        v40 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          *&buf[4] = "_NFRestoreNfcRFStep";
          *&buf[12] = 1024;
          *&buf[14] = 1131;
          *&buf[18] = 2080;
          *&buf[20] = a2 + 3080;
          _os_log_impl(&dword_2994B7000, v40, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Using data from %s", buf, 0x1Cu);
        }

        v41 = NFDataCreateWithFile();
        goto LABEL_55;
      }

      if (!a3)
      {
        goto LABEL_83;
      }

      memset(v200, 0, 44);
      if (!NFDriverGetControllerInfo())
      {
        v41 = 0;
        goto LABEL_55;
      }

      Value = CFDictionaryGetValue(a3, @"rf");
      if (Value)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
        if ((*(a2 + 4107) & 1) == 0)
        {
          v64 = 0;
LABEL_210:
          v151 = *(a2 + 4104);
          Mutable = CFStringCreateMutable(0, 128);
          v153 = sub_2994BF564(v200, v64, v151 & 1);
          if (v153 && (v154 = v153, v155 = strlen(v153), v155 >= 4) && (v156 = malloc_type_calloc(1uLL, v155 + 3, 0x100004077774924uLL)) != 0)
          {
            v157 = v156;
            v158 = strlen(v154);
            strncpy(v157, v154, v158);
            v159 = &v157[strlen(v154)];
            *(v159 - 1) = 1768714286;
            *v159 = 29811;
            v160 = CFStringCreateWithCString(0, v157, 0x8000100u);
            free(v157);
          }

          else
          {
            v160 = 0;
          }

          if (*&v200[4] <= 13)
          {
            if (*&v200[4] > 9)
            {
              if (*&v200[4] == 10 || *&v200[4] == 11)
              {
                v161 = @"SN200V_FW_B1_";
              }

              else
              {
                if (*&v200[4] != 12)
                {
                  goto LABEL_242;
                }

                if (v64)
                {
                  v161 = @"SN200V_FURY_FW_B1_";
                }

                else
                {
                  v161 = @"SN200V_FW_B1_";
                }
              }

              goto LABEL_241;
            }

            if ((*&v200[4] - 7) < 2)
            {
              v161 = @"SN100V_FW_A3_";
              goto LABEL_241;
            }

            if (*&v200[4] == 5)
            {
              if (Mutable)
              {
                CFRelease(Mutable);
              }

              v41 = NFDataCreateWithLength();
              if (MutableCopy)
              {
                goto LABEL_287;
              }

              goto LABEL_55;
            }
          }

          else
          {
            if (*&v200[4] < 18)
            {
              v161 = @"SN300V_FW_B0_";
LABEL_241:
              CFStringAppend(Mutable, v161);
              goto LABEL_242;
            }

            if ((*&v200[4] - 21) < 2)
            {
              goto LABEL_273;
            }

            if (*&v200[4] == 18)
            {
              v194 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v195 = NFLogGetLogger();
              if (v195)
              {
                v195(6, "%s:%i RF not supported", "NFRestoreRFSettingsForController", 874);
              }

              dispatch_get_specific(*v194);
              v188 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_273;
              }

              *buf = 136446466;
              *&buf[4] = "NFRestoreRFSettingsForController";
              *&buf[12] = 1024;
              *&buf[14] = 874;
              v189 = "%{public}s:%i RF not supported";
              goto LABEL_272;
            }

            if (*&v200[4] == 20 && (v64 & 1) != 0)
            {
              v161 = @"SN200V_FURY_FW_B1_";
              goto LABEL_241;
            }
          }

LABEL_242:
          v165 = v160;
          v196 = v200[12];
          v197 = v200[13];
          CFStringAppendFormat(Mutable, 0, @"%02X_%02X_%02X", *&v200[8], v200[13], v196);
          Count = CFDictionaryGetCount(MutableCopy);
          v167 = malloc_type_calloc(1uLL, 8 * Count, 0x6004044C4A2DFuLL);
          v198 = MutableCopy;
          CFDictionaryGetKeysAndValues(MutableCopy, v167, 0);
          v168 = MEMORY[0x29EDB9000];
          v169 = CFArrayCreate(0, v167, Count, MEMORY[0x29EDB9000]);
          v170 = CFArrayGetCount(v169);
          v171 = CFArrayCreateMutable(0, v170, v168);
          if (v170 >= 1)
          {
            for (i = 0; i != v170; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v169, i);
              v174 = ValueAtIndex;
              if ((!Mutable || CFStringHasPrefix(ValueAtIndex, Mutable)) && CFStringHasSuffix(v174, @".plist"))
              {
                CFArrayAppendValue(v171, v174);
              }
            }
          }

          CFRelease(v169);
          free(v167);
          if (v171)
          {
            MutableCopy = v198;
            v160 = v165;
            if (!CFArrayGetCount(v171))
            {
              v190 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v191 = NFLogGetLogger();
              if (v191)
              {
                v191(3, "%s:%i Failed to find matching file for %02x_%02x_%02x (%@)", "NFRestoreRFSettingsForController", 909, *&v200[8], v197, v196, Mutable);
              }

              dispatch_get_specific(*v190);
              v192 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v192, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_279;
              }

              *buf = 136447490;
              *&buf[4] = "NFRestoreRFSettingsForController";
              *&buf[12] = 1024;
              *&buf[14] = 909;
              *&buf[18] = 1024;
              *&buf[20] = *&v200[8];
              *&buf[24] = 1024;
              *&buf[26] = v197;
              *&buf[30] = 1024;
              *&buf[32] = v196;
              *&buf[36] = 2112;
              *&buf[38] = Mutable;
              v183 = "%{public}s:%i Failed to find matching file for %02x_%02x_%02x (%@)";
              v184 = v192;
              v185 = 46;
              goto LABEL_278;
            }

            if (CFArrayGetCount(v171) < 2)
            {
              v193 = CFArrayGetValueAtIndex(v171, 0);
              v41 = sub_2994BFCFC(v198, v193);
              if (!Mutable)
              {
LABEL_282:
                if (v171)
                {
                  CFRelease(v171);
                }

                if (v160)
                {
                  CFRelease(v160);
                }

                if (MutableCopy)
                {
LABEL_287:
                  CFRelease(MutableCopy);
                }

LABEL_55:
                if (v41)
                {
                  v8[1037];
                  v42 = NFDriverRFSettingsSetup();
                  NFDataRelease();
                  if (v42 <= 0xB && ((1 << v42) & 0xC01) != 0)
                  {
                    v7 = 0;
LABEL_108:
                    if ((*(a1 + 56) & 1) == 0 && NFDriverDisableLPCDAssist())
                    {
                      v84 = MEMORY[0x29EDC9730];
                      dispatch_get_specific(*MEMORY[0x29EDC9730]);
                      v85 = NFLogGetLogger();
                      if (v85)
                      {
                        v85(5, "%s:%i Update LPCD settings failed; continue", "NFRestoreNfc", 1559);
                      }

                      dispatch_get_specific(*v84);
                      v86 = NFSharedLogGetLogger();
                      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136446466;
                        *&buf[4] = "NFRestoreNfc";
                        *&buf[12] = 1024;
                        *&buf[14] = 1559;
                        _os_log_impl(&dword_2994B7000, v86, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Update LPCD settings failed; continue", buf, 0x12u);
                      }
                    }

                    NFDriverUnloadStackAndLeaveHWEnabled();
                    if (NFDriverLoadStack())
                    {
                      v87 = MEMORY[0x29EDC9730];
                      dispatch_get_specific(*MEMORY[0x29EDC9730]);
                      v88 = NFLogGetLogger();
                      if (v88)
                      {
                        v88(3, "%s:%i Failed to load stack after RF settings. Bailing", "NFRestoreNfc", 1569);
                      }

                      dispatch_get_specific(*v87);
                      v89 = NFSharedLogGetLogger();
                      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446466;
                        *&buf[4] = "NFRestoreNfc";
                        *&buf[12] = 1024;
                        *&buf[14] = 1569;
                        _os_log_impl(&dword_2994B7000, v89, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load stack after RF settings. Bailing", buf, 0x12u);
                      }

                      v90 = *(a1 + 56);
                      v91 = NFDriverSerialDebugLastMessage();
                      v92 = *MEMORY[0x29EDC9198];
                      v93 = NFDriverGetStackBreadcrumb();
                      v94 = &unk_2994C631B;
                      if (v91)
                      {
                        v94 = v91;
                      }

                      sub_2994B8D74("com.apple.nfstack", v92, "Error 0x%04x at %s:%d: %llx %s", v92, "NFRestoreNfc", 1570, v93, v94);
                      free(v91);
                      sub_2994BEEE0();
                      goto LABEL_122;
                    }

                    goto LABEL_185;
                  }

                  v76 = MEMORY[0x29EDC9730];
                  dispatch_get_specific(*MEMORY[0x29EDC9730]);
                  v77 = NFLogGetLogger();
                  if (v77)
                  {
                    v77(3, "%s:%i Failed to update RF settings.", "_NFRestoreNfcRFStep", 1178);
                  }

                  dispatch_get_specific(*v76);
                  v78 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    *&buf[4] = "_NFRestoreNfcRFStep";
                    *&buf[12] = 1024;
                    *&buf[14] = 1178;
                    _os_log_impl(&dword_2994B7000, v78, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to update RF settings.", buf, 0x12u);
                  }

                  v79 = *(a1 + 56);
                  v80 = NFDriverSerialDebugLastMessage();
                  v81 = *MEMORY[0x29EDC9198];
                  v82 = NFDriverGetStackBreadcrumb();
                  v83 = &unk_2994C631B;
                  if (v80)
                  {
                    v83 = v80;
                  }

                  sub_2994B8D74("com.apple.nfstack", v81, "Error 0x%04x at %s:%d: %llx %s", v81, "_NFRestoreNfcRFStep", 1179, v82, v83);
                  free(v80);
LABEL_107:
                  NFDriverUnloadStackAndLeaveHWEnabled();
                  v7 = 9;
                  goto LABEL_108;
                }

LABEL_83:
                v65 = MEMORY[0x29EDC9730];
                dispatch_get_specific(*MEMORY[0x29EDC9730]);
                v66 = NFLogGetLogger();
                if (v66)
                {
                  v66(3, "%s:%i Bundle is missing RF settings - NFCC might fail RF operation", "_NFRestoreNfcRFStep", 1168);
                }

                dispatch_get_specific(*v65);
                v67 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446466;
                  *&buf[4] = "_NFRestoreNfcRFStep";
                  *&buf[12] = 1024;
                  *&buf[14] = 1168;
                  _os_log_impl(&dword_2994B7000, v67, OS_LOG_TYPE_ERROR, "%{public}s:%i Bundle is missing RF settings - NFCC might fail RF operation", buf, 0x12u);
                }

                sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "_NFRestoreNfcRFStep", 1169);
                goto LABEL_107;
              }

LABEL_281:
              CFRelease(Mutable);
              goto LABEL_282;
            }

            if (v165 && CFArrayGetCount(v171) >= 1)
            {
              v41 = 0;
              v175 = 0;
              v176 = MEMORY[0x29EDC9730];
              do
              {
                v177 = CFArrayGetValueAtIndex(v171, v175);
                if (CFStringCompare(v177, v165, 1uLL) == kCFCompareEqualTo)
                {
                  if (!CFStringGetCStringPtr(v165, 0x8000100u))
                  {
                    dispatch_get_specific(*v176);
                    v178 = NFLogGetLogger();
                    if (v178)
                    {
                      v178(6, "%s:%i Found exact plist match: %s", "NFRestoreRFSettingsForController", 918, 0);
                    }

                    dispatch_get_specific(*v176);
                    v179 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136446722;
                      *&buf[4] = "NFRestoreRFSettingsForController";
                      *&buf[12] = 1024;
                      *&buf[14] = 918;
                      *&buf[18] = 2080;
                      *&buf[20] = 0;
                      _os_log_impl(&dword_2994B7000, v179, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found exact plist match: %s", buf, 0x1Cu);
                    }
                  }

                  v41 = sub_2994BFCFC(v198, v177);
                }

                ++v175;
              }

              while (CFArrayGetCount(v171) > v175);
              MutableCopy = v198;
              v160 = v165;
              if (v41)
              {
LABEL_280:
                if (!Mutable)
                {
                  goto LABEL_282;
                }

                goto LABEL_281;
              }
            }

            v180 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v181 = NFLogGetLogger();
            if (v181)
            {
              v181(3, "%s:%i More than 1 file matching %02x_%02x_%02x", "NFRestoreRFSettingsForController", 926, *&v200[8], v197, v196);
            }

            dispatch_get_specific(*v180);
            v182 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
            {
              *buf = 136447234;
              *&buf[4] = "NFRestoreRFSettingsForController";
              *&buf[12] = 1024;
              *&buf[14] = 926;
              *&buf[18] = 1024;
              *&buf[20] = *&v200[8];
              *&buf[24] = 1024;
              *&buf[26] = v197;
              *&buf[30] = 1024;
              *&buf[32] = v196;
              v183 = "%{public}s:%i More than 1 file matching %02x_%02x_%02x";
              v184 = v182;
              v185 = 36;
LABEL_278:
              _os_log_impl(&dword_2994B7000, v184, OS_LOG_TYPE_ERROR, v183, buf, v185);
            }

LABEL_279:
            v41 = 0;
            goto LABEL_280;
          }

          v186 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v187 = NFLogGetLogger();
          MutableCopy = v198;
          v160 = v165;
          if (v187)
          {
            v187(6, "%s:%i No matching files", "NFRestoreRFSettingsForController", 906);
          }

          dispatch_get_specific(*v186);
          v188 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            *&buf[4] = "NFRestoreRFSettingsForController";
            *&buf[12] = 1024;
            *&buf[14] = 906;
            v189 = "%{public}s:%i No matching files";
LABEL_272:
            _os_log_impl(&dword_2994B7000, v188, OS_LOG_TYPE_DEFAULT, v189, buf, 0x12u);
          }

LABEL_273:
          v171 = 0;
          goto LABEL_279;
        }

        v150 = CFDictionaryGetValue(a3, @"fury-rf");
        if (v150)
        {
          CFDictionaryApplyFunction(v150, sub_2994BFEF8, MutableCopy);
          v64 = *(a2 + 4107) & 1;
          goto LABEL_210;
        }

        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        v162 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v163 = NFLogGetLogger();
        if (v163)
        {
          v163(4, "%s:%i Bundle is missing folder: fury-rf", "_NFRestoreNfcRFStep", 1152);
        }

        dispatch_get_specific(*v162);
        v164 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_NFRestoreNfcRFStep";
          *&buf[12] = 1024;
          *&buf[14] = 1152;
          _os_log_impl(&dword_2994B7000, v164, OS_LOG_TYPE_ERROR, "%{public}s:%i Bundle is missing folder: fury-rf", buf, 0x12u);
        }

        v7 = 0;
      }

      else
      {
        v147 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v148 = NFLogGetLogger();
        if (v148)
        {
          v148(3, "%s:%i Bundle is missing folder: rf", "_NFRestoreNfcRFStep", 1138);
        }

        dispatch_get_specific(*v147);
        v149 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_NFRestoreNfcRFStep";
          *&buf[12] = 1024;
          *&buf[14] = 1138;
          _os_log_impl(&dword_2994B7000, v149, OS_LOG_TYPE_ERROR, "%{public}s:%i Bundle is missing folder: rf", buf, 0x12u);
        }

        sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "_NFRestoreNfcRFStep", 1139);
        v7 = 5;
      }

      NFDriverUnloadStackAndLeaveHWEnabled();
      goto LABEL_108;
    }

    v199 = -1;
    memset(buf, 0, 44);
    if (NFDriverGetControllerInfo())
    {
      if (*&buf[4] == 18)
      {
        v43 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v44 = NFLogGetLogger();
        if (v44)
        {
          v44(6, "%s:%i Skipping SPMIIRQ", "_NFRestoreConfigureSPMIIRQ", 1264);
        }

        dispatch_get_specific(*v43);
        v45 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *v200 = 136446466;
          *&v200[4] = "_NFRestoreConfigureSPMIIRQ";
          *&v200[12] = 1024;
          *&v200[14] = 1264;
          v46 = "%{public}s:%i Skipping SPMIIRQ";
LABEL_129:
          _os_log_impl(&dword_2994B7000, v45, OS_LOG_TYPE_DEFAULT, v46, v200, 0x12u);
          goto LABEL_130;
        }

        goto LABEL_130;
      }

      v68 = sub_2994C4D84(&v199);
      if (!v68)
      {
        v97 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v98 = NFLogGetLogger();
        if (v98)
        {
          v98(6, "%s:%i No external SPMIIRQ", "_NFRestoreConfigureSPMIIRQ", 1270);
        }

        dispatch_get_specific(*v97);
        v45 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *v200 = 136446466;
          *&v200[4] = "_NFRestoreConfigureSPMIIRQ";
          *&v200[12] = 1024;
          *&v200[14] = 1270;
          v46 = "%{public}s:%i No external SPMIIRQ";
          goto LABEL_129;
        }

LABEL_130:
        memset(buf, 0, 44);
        if ((NFProductIsPad() & 1) == 0 && (NFProductIsMac() & 1) == 0 && !NFProductIsVision())
        {
          goto LABEL_156;
        }

        if (NFDriverGetControllerInfo())
        {
          if (*&buf[4] != 18)
          {
            goto LABEL_156;
          }

          v99 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v100 = NFLogGetLogger();
          if (v100)
          {
            v100(6, "%s:%i Configuring RSTN delay...", "_NFRestoreConfigureRSTNDelay", 1304);
          }

          dispatch_get_specific(*v99);
          v101 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
          {
            *v200 = 136446466;
            *&v200[4] = "_NFRestoreConfigureRSTNDelay";
            *&v200[12] = 1024;
            *&v200[14] = 1304;
            _os_log_impl(&dword_2994B7000, v101, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Configuring RSTN delay...", v200, 0x12u);
          }

          v102 = NFDriverConfigurRSTNDelay();
          if (!v102)
          {
LABEL_156:
            if ((NFGetProductType() & 0xFFFFFFFC) == 0x44)
            {
              v120 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v121 = NFLogGetLogger();
              if (v121)
              {
                v121(6, "%s:%i Configuring I2C for LPM...", "_NFRestoreConfigureI2CForLPM", 1327);
              }

              dispatch_get_specific(*v120);
              v122 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                *&buf[4] = "_NFRestoreConfigureI2CForLPM";
                *&buf[12] = 1024;
                *&buf[14] = 1327;
                _os_log_impl(&dword_2994B7000, v122, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Configuring I2C for LPM...", buf, 0x12u);
              }

              v7 = NFDriverConfigureI2CForLPM();
              if (v7)
              {
                dispatch_get_specific(*v120);
                v123 = NFLogGetLogger();
                if (v123)
                {
                  v123(3, "%s:%i Failed to configure I2C for LPM: %d", "_NFRestoreConfigureI2CForLPM", 1330, v7);
                }

                dispatch_get_specific(*v120);
                v124 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  *&buf[4] = "_NFRestoreConfigureI2CForLPM";
                  *&buf[12] = 1024;
                  *&buf[14] = 1330;
                  *&buf[18] = 1024;
                  *&buf[20] = v7;
                  _os_log_impl(&dword_2994B7000, v124, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to configure I2C for LPM: %d", buf, 0x18u);
                }

                dispatch_get_specific(*v120);
                v125 = NFLogGetLogger();
                if (v125)
                {
                  v125(3, "%s:%i Failed to configure I2C for LPM..", "NFRestoreNfc", 1590);
                }

                dispatch_get_specific(*v120);
                v126 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446466;
                  *&buf[4] = "NFRestoreNfc";
                  *&buf[12] = 1024;
                  *&buf[14] = 1590;
                  _os_log_impl(&dword_2994B7000, v126, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to configure I2C for LPM..", buf, 0x12u);
                }

                v127 = *(a1 + 56);
                v128 = NFDriverSerialDebugLastMessage();
                v129 = *MEMORY[0x29EDC9198];
                v130 = NFDriverGetStackBreadcrumb();
                v131 = &unk_2994C631B;
                if (v128)
                {
                  v131 = v128;
                }

                sub_2994B8D74("com.apple.nfstack", v129, "Error 0x%04x at %s:%d: %llx %s", v129, "NFRestoreNfc", 1591, v130, v131);
                free(v128);
                v7 = 9;
              }
            }

            else
            {
              v7 = 0;
            }

            if (*(a1 + 58) == 1)
            {
              if (!NFDriverDisableBoost())
              {
                goto LABEL_185;
              }

              v132 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v133 = NFLogGetLogger();
              if (v133)
              {
                v133(3, "%s:%i Failed to disable boost", "NFRestoreNfc", 1598);
              }

              dispatch_get_specific(*v132);
              v134 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_185;
              }

              *buf = 136446466;
              *&buf[4] = "NFRestoreNfc";
              *&buf[12] = 1024;
              *&buf[14] = 1598;
              v135 = "%{public}s:%i Failed to disable boost";
              v136 = v134;
              v137 = OS_LOG_TYPE_ERROR;
            }

            else
            {
              v138 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v139 = NFLogGetLogger();
              if (v139)
              {
                v139(6, "%s:%i No RF for this device.", "NFRestoreNfc", 1601);
              }

              dispatch_get_specific(*v138);
              v140 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_185;
              }

              *buf = 136446466;
              *&buf[4] = "NFRestoreNfc";
              *&buf[12] = 1024;
              *&buf[14] = 1601;
              v135 = "%{public}s:%i No RF for this device.";
              v136 = v140;
              v137 = OS_LOG_TYPE_DEFAULT;
            }

            _os_log_impl(&dword_2994B7000, v136, v137, v135, buf, 0x12u);
LABEL_185:
            v215 = 0;
            v213 = 0u;
            v214 = 0u;
            v211 = 0u;
            v212 = 0u;
            v209 = 0u;
            v210 = 0u;
            v207 = 0u;
            v208 = 0u;
            v205 = 0u;
            v206 = 0u;
            v204 = 0u;
            v202 = 0u;
            v203 = 0u;
            memset(buf, 0, sizeof(buf));
            if (!NFDriverReadPageEraseCounter())
            {
              NFDriverPrintPageEraseCounter();
            }

            if (v8[1036])
            {
              v141 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v142 = NFLogGetLogger();
              if (v142)
              {
                v142(6, "%s:%i Erasing firmware flags.", "NFRestoreNfc", 1609);
              }

              dispatch_get_specific(*v141);
              v143 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                *&buf[4] = "NFRestoreNfc";
                *&buf[12] = 1024;
                *&buf[14] = 1609;
                _os_log_impl(&dword_2994B7000, v143, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Erasing firmware flags.", buf, 0x12u);
              }

              if (NFDriverResetFWFlags())
              {
                v7 = 9;
              }

              else
              {
                v7 = 0;
              }
            }

            NFDriverUnloadStackAndLeaveHWEnabled();
            if ((v8[11] & 0x10) != 0 && v7)
            {
              v144 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v145 = NFLogGetLogger();
              if (v145)
              {
                v145(3, "%s:%i Dumping EEPROM after failure", "NFRestoreNfc", 1616);
              }

              dispatch_get_specific(*v144);
              v146 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                *&buf[4] = "NFRestoreNfc";
                *&buf[12] = 1024;
                *&buf[14] = 1616;
                _os_log_impl(&dword_2994B7000, v146, OS_LOG_TYPE_ERROR, "%{public}s:%i Dumping EEPROM after failure", buf, 0x12u);
              }

              sub_2994BEEE0();
            }

            goto LABEL_123;
          }

          v103 = v102;
          dispatch_get_specific(*v99);
          v104 = NFLogGetLogger();
          if (v104)
          {
            v104(3, "%s:%i Failed to configure RSTN delay: %d", "_NFRestoreConfigureRSTNDelay", 1307, v103);
          }

          dispatch_get_specific(*v99);
          v105 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
          {
LABEL_149:
            v112 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v113 = NFLogGetLogger();
            if (v113)
            {
              v113(3, "%s:%i Failed to configure RSTN delay..", "NFRestoreNfc", 1584);
            }

            dispatch_get_specific(*v112);
            v114 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = "NFRestoreNfc";
              *&buf[12] = 1024;
              *&buf[14] = 1584;
              _os_log_impl(&dword_2994B7000, v114, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to configure RSTN delay..", buf, 0x12u);
            }

            v115 = *(a1 + 56);
            v116 = NFDriverSerialDebugLastMessage();
            v117 = *MEMORY[0x29EDC9198];
            v118 = NFDriverGetStackBreadcrumb();
            v119 = &unk_2994C631B;
            if (v116)
            {
              v119 = v116;
            }

            sub_2994B8D74("com.apple.nfstack", v117, "Error 0x%04x at %s:%d: %llx %s", v117, "NFRestoreNfc", 1585, v118, v119);
            free(v116);
            goto LABEL_156;
          }

          *v200 = 136446722;
          *&v200[4] = "_NFRestoreConfigureRSTNDelay";
          *&v200[12] = 1024;
          *&v200[14] = 1307;
          *&v200[18] = 1024;
          *&v200[20] = v103;
          v106 = "%{public}s:%i Failed to configure RSTN delay: %d";
          v107 = v105;
          v108 = 24;
        }

        else
        {
          v109 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v110 = NFLogGetLogger();
          if (v110)
          {
            v110(3, "%s:%i Failed to get controller info..", "_NFRestoreConfigureRSTNDelay", 1299);
          }

          dispatch_get_specific(*v109);
          v111 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_149;
          }

          *v200 = 136446466;
          *&v200[4] = "_NFRestoreConfigureRSTNDelay";
          *&v200[12] = 1024;
          *&v200[14] = 1299;
          v106 = "%{public}s:%i Failed to get controller info..";
          v107 = v111;
          v108 = 18;
        }

        _os_log_impl(&dword_2994B7000, v107, OS_LOG_TYPE_ERROR, v106, v200, v108);
        goto LABEL_149;
      }

      if (v68 < 0)
      {
        v53 = 4;
        goto LABEL_71;
      }

      if (v199 == 255)
      {
        goto LABEL_130;
      }

      v69 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v70 = NFLogGetLogger();
      if (v70)
      {
        v70(6, "%s:%i Configuring NFCC to use GPIO %d as data IRQ", "_NFRestoreConfigureSPMIIRQ", 1277, v199);
      }

      dispatch_get_specific(*v69);
      v71 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *v200 = 136446722;
        *&v200[4] = "_NFRestoreConfigureSPMIIRQ";
        *&v200[12] = 1024;
        *&v200[14] = 1277;
        *&v200[18] = 1024;
        *&v200[20] = v199;
        _os_log_impl(&dword_2994B7000, v71, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Configuring NFCC to use GPIO %d as data IRQ", v200, 0x18u);
      }

      v72 = NFDriverConfigureSPMIIRQ();
      if (!v72)
      {
        goto LABEL_130;
      }

      v73 = v72;
      dispatch_get_specific(*v69);
      v74 = NFLogGetLogger();
      if (v74)
      {
        v74(3, "%s:%i Failed to configure NFCC to use GPIO %d as data IRQ : %d", "_NFRestoreConfigureSPMIIRQ", 1280, v199, v73);
      }

      dispatch_get_specific(*v69);
      v75 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
LABEL_70:
        v53 = 9;
LABEL_71:
        v54 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v55 = NFLogGetLogger();
        if (v55)
        {
          v55(3, "%s:%i Failed to reconfigure I/O : 0x%x", "NFRestoreNfc", 1578, v53);
        }

        dispatch_get_specific(*v54);
        v56 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "NFRestoreNfc";
          *&buf[12] = 1024;
          *&buf[14] = 1578;
          *&buf[18] = 1024;
          *&buf[20] = v53;
          _os_log_impl(&dword_2994B7000, v56, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to reconfigure I/O : 0x%x", buf, 0x18u);
        }

        v57 = *(a1 + 56);
        v58 = NFDriverSerialDebugLastMessage();
        v59 = *MEMORY[0x29EDC9198];
        v60 = NFDriverGetStackBreadcrumb();
        v61 = &unk_2994C631B;
        if (v58)
        {
          v61 = v58;
        }

        sub_2994B8D74("com.apple.nfstack", v59, "Error 0x%04x at %s:%d: %llx %s", v59, "NFRestoreNfc", 1579, v60, v61);
        free(v58);
        goto LABEL_130;
      }

      *v200 = 136446978;
      *&v200[4] = "_NFRestoreConfigureSPMIIRQ";
      *&v200[12] = 1024;
      *&v200[14] = 1280;
      *&v200[18] = 1024;
      *&v200[20] = v199;
      *&v200[24] = 1024;
      *&v200[26] = v73;
      v50 = "%{public}s:%i Failed to configure NFCC to use GPIO %d as data IRQ : %d";
      v51 = v75;
      v52 = 30;
    }

    else
    {
      v47 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v48 = NFLogGetLogger();
      if (v48)
      {
        v48(3, "%s:%i Failed to get controller info..", "_NFRestoreConfigureSPMIIRQ", 1259);
      }

      dispatch_get_specific(*v47);
      v49 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      *v200 = 136446466;
      *&v200[4] = "_NFRestoreConfigureSPMIIRQ";
      *&v200[12] = 1024;
      *&v200[14] = 1259;
      v50 = "%{public}s:%i Failed to get controller info..";
      v51 = v49;
      v52 = 18;
    }

    _os_log_impl(&dword_2994B7000, v51, OS_LOG_TYPE_ERROR, v50, v200, v52);
    goto LABEL_70;
  }

  v21 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v22 = NFLogGetLogger();
  if (v22)
  {
    v22(6, "%s:%i Nothing to do", "NFRestoreNfc", 1518);
  }

  dispatch_get_specific(*v21);
  v23 = NFSharedLogGetLogger();
  v7 = 0;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "NFRestoreNfc";
    *&buf[12] = 1024;
    *&buf[14] = 1518;
    _os_log_impl(&dword_2994B7000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Nothing to do", buf, 0x12u);
    v7 = 0;
  }

LABEL_123:
  v95 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t sub_2994BDE90(uint64_t a1, char a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if ((NFProductIsSIP() & 1) != 0 || (NFProductIsNED() & 1) != 0 || NFProductIsDevBoard())
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i This is a SIP, NED or Dev, skipping antenna test", "_NfRestoreRunAntennaSelfCheck", 250);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    v6 = 0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v21 = "_NfRestoreRunAntennaSelfCheck";
      v22 = 1024;
      v23 = 250;
      _os_log_impl(&dword_2994B7000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%i This is a SIP, NED or Dev, skipping antenna test", buf, 0x12u);
      v6 = 0;
    }

    goto LABEL_8;
  }

  if (!NFDriverLoadStack())
  {
    v12 = NFDriverAntennaSelfTest();
    if (v12)
    {
      v13 = v12;
      if (v12 != 19)
      {
        v14 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v15 = NFLogGetLogger();
        if (v15)
        {
          v15(3, "%s:%i Failed to check antenna : 0x%x", "_NfRestoreRunAntennaSelfCheck", 264, v13);
        }

        dispatch_get_specific(*v14);
        v16 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v21 = "_NfRestoreRunAntennaSelfCheck";
          v22 = 1024;
          v23 = 264;
          v24 = 1024;
          v25 = v13;
          _os_log_impl(&dword_2994B7000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to check antenna : 0x%x", buf, 0x18u);
        }

        v6 = 9;
        goto LABEL_31;
      }
    }

    else
    {
      v17 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v18 = NFLogGetLogger();
      if (v18)
      {
        v18(6, "%s:%i TX LDO current is %d", "_NfRestoreRunAntennaSelfCheck", 267, 0);
      }

      dispatch_get_specific(*v17);
      v19 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v21 = "_NfRestoreRunAntennaSelfCheck";
        v22 = 1024;
        v23 = 267;
        v24 = 1024;
        v25 = 0;
        _os_log_impl(&dword_2994B7000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s:%i TX LDO current is %d", buf, 0x18u);
      }

      if (sub_2994BE234())
      {
        if (a2)
        {
          v6 = 10;
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_31;
      }
    }

    v6 = 0;
LABEL_31:
    NFDriverUnloadStackAndLeaveHWEnabled();
    goto LABEL_8;
  }

  v9 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v10 = NFLogGetLogger();
  if (v10)
  {
    v10(3, "%s:%i Failed to load stack", "_NfRestoreRunAntennaSelfCheck", 256);
  }

  dispatch_get_specific(*v9);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v21 = "_NfRestoreRunAntennaSelfCheck";
    v22 = 1024;
    v23 = 256;
    _os_log_impl(&dword_2994B7000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load stack", buf, 0x12u);
  }

  v6 = 9;
LABEL_8:
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

BOOL sub_2994BE234()
{
  v31 = *MEMORY[0x29EDCA608];
  v0 = *MEMORY[0x29EDBB110];
  v1 = IOServiceNameMatching("stockholm");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"nfcWithRadio", 0, 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      v6 = CFGetTypeID(CFProperty);
      if (v6 == CFDataGetTypeID())
      {
        Length = CFDataGetLength(v5);
        v8 = malloc_type_calloc(1uLL, Length, 0x100004077774924uLL);
        BytePtr = CFDataGetBytePtr(v5);
        v10 = memcmp(v8, BytePtr, Length);
        v11 = v10 != 0;
        v12 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          if (v10)
          {
            v14 = "present";
          }

          else
          {
            v14 = "absent";
          }

          Logger(6, "%s:%i Radio %s.", "_NfRestoreHasRadio", 1003, v14);
        }

        dispatch_get_specific(*v12);
        v15 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          if (v10)
          {
            v16 = "present";
          }

          else
          {
            v16 = "absent";
          }

          *buf = 136446722;
          v26 = "_NfRestoreHasRadio";
          v27 = 1024;
          v28 = 1003;
          v29 = 2080;
          v30 = v16;
          _os_log_impl(&dword_2994B7000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Radio %s.", buf, 0x1Cu);
        }

        free(v8);
      }

      else
      {
        v11 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      v20 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v21 = NFLogGetLogger();
      if (v21)
      {
        v21(6, "%s:%i No radio key, skipping RF settings.", "_NfRestoreHasRadio", 1008);
      }

      dispatch_get_specific(*v20);
      v22 = NFSharedLogGetLogger();
      v11 = 0;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v26 = "_NfRestoreHasRadio";
        v27 = 1024;
        v28 = 1008;
        _os_log_impl(&dword_2994B7000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s:%i No radio key, skipping RF settings.", buf, 0x12u);
        v11 = 0;
      }
    }

    IOObjectRelease(v3);
  }

  else
  {
    v17 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v18(3, "%s:%i Failed find IOKit service", "_NfRestoreHasRadio", 1013);
    }

    dispatch_get_specific(*v17);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v26 = "_NfRestoreHasRadio";
      v27 = 1024;
      v28 = 1013;
      _os_log_impl(&dword_2994B7000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed find IOKit service", buf, 0x12u);
    }

    v11 = 0;
  }

  v23 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t sub_2994BE59C(uint64_t a1, uint64_t a2, const void *a3)
{
  v61 = *MEMORY[0x29EDCA608];
  v4 = (a2 + 4096);
  if (*(a2 + 2056))
  {
    v5 = (a2 + 2056);
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i %s", "_NFRestoreNfcFirmwareStep", 1035, v5);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "_NFRestoreNfcFirmwareStep";
      *&buf[12] = 1024;
      *&buf[14] = 1035;
      *&buf[18] = 2080;
      *&buf[20] = v5;
      _os_log_impl(&dword_2994B7000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s", buf, 0x1Cu);
    }

    if (NFDataCreateWithFile())
    {
      v9 = v4[9];
      v10 = v4[10] == 0;
      if (NFDriverUpdateFirmware())
      {
        dispatch_get_specific(*v6);
        v11 = NFLogGetLogger();
        if (v11)
        {
          v11(3, "%s:%i Failed to install FW", "_NFRestoreNfcFirmwareStep", 1046);
        }

        dispatch_get_specific(*v6);
        v12 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_NFRestoreNfcFirmwareStep";
          *&buf[12] = 1024;
          *&buf[14] = 1046;
          _os_log_impl(&dword_2994B7000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to install FW", buf, 0x12u);
        }

        v13 = *(a1 + 56);
        Message = NFDriverSerialDebugLastMessage();
        v15 = *MEMORY[0x29EDC9198];
        StackBreadcrumb = NFDriverGetStackBreadcrumb();
        v17 = &unk_2994C631B;
        if (Message)
        {
          v17 = Message;
        }

        sub_2994B8D74("com.apple.nfstack", v15, "Error 0x%04x at %s:%d: %llx %s", v15, "_NFRestoreNfcFirmwareStep", 1047, StackBreadcrumb, v17);
LABEL_15:
        free(Message);
LABEL_16:
        v18 = 5;
        goto LABEL_30;
      }

LABEL_24:
      v18 = 0;
      goto LABEL_30;
    }

    dispatch_get_specific(*v6);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v23(3, "%s:%i Failed to read file: %s", "_NFRestoreNfcFirmwareStep", 1039, v5);
    }

    dispatch_get_specific(*v6);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "_NFRestoreNfcFirmwareStep";
      *&buf[12] = 1024;
      *&buf[14] = 1039;
      *&buf[18] = 2080;
      *&buf[20] = v5;
      _os_log_impl(&dword_2994B7000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to read file: %s", buf, 0x1Cu);
    }

    sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "_NFRestoreNfcFirmwareStep", 1040);
    v18 = 7;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_24;
    }

    memset(buf, 0, 44);
    if (NFDriverGetControllerInfo())
    {
      if (*buf == 160)
      {
        v20 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v21 = NFLogGetLogger();
        if (v21)
        {
          v21(3, "%s:%i Trying to restore unsupported HW. Bailing with success", "_NFRestoreNfcFirmwareStep", 1078);
        }

        dispatch_get_specific(*v20);
        v22 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *v54 = 136446466;
          v55 = "_NFRestoreNfcFirmwareStep";
          v56 = 1024;
          v57 = 1078;
          _os_log_impl(&dword_2994B7000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i Trying to restore unsupported HW. Bailing with success", v54, 0x12u);
        }

        goto LABEL_24;
      }

      if (v4[8])
      {
        v33 = "fw-mfg";
      }

      else
      {
        v33 = "fw";
      }

      v34 = "fury-fw-mfg";
      if ((v4[8] & 1) == 0)
      {
        v34 = "fury-fw";
      }

      if (v4[11])
      {
        v35 = v34;
      }

      else
      {
        v35 = v33;
      }

      v36 = CFStringCreateWithCString(0, v35, 0x8000100u);
      v37 = CFGetTypeID(a3);
      if (v37 != CFDictionaryGetTypeID())
      {
        v48 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v49 = NFLogGetLogger();
        if (v49)
        {
          v49(3, "%s:%i Incorrect bundle", "_NFRestoreNfcFirmwareStep", 1090);
        }

        dispatch_get_specific(*v48);
        v50 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *v54 = 136446466;
          v55 = "_NFRestoreNfcFirmwareStep";
          v56 = 1024;
          v57 = 1090;
          _os_log_impl(&dword_2994B7000, v50, OS_LOG_TYPE_ERROR, "%{public}s:%i Incorrect bundle", v54, 0x12u);
        }

        sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "_NFRestoreNfcFirmwareStep", 1091);
        CFRelease(v36);
        goto LABEL_16;
      }

      Value = CFDictionaryGetValue(a3, v36);
      CFRelease(v36);
      if (!Value)
      {
        v51 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v52 = NFLogGetLogger();
        if (v52)
        {
          v52(3, "%s:%i Bundle is missing folder: %s", "_NFRestoreNfcFirmwareStep", 1100, v35);
        }

        dispatch_get_specific(*v51);
        v53 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *v54 = 136446722;
          v55 = "_NFRestoreNfcFirmwareStep";
          v56 = 1024;
          v57 = 1100;
          v58 = 2080;
          v59 = v35;
          _os_log_impl(&dword_2994B7000, v53, OS_LOG_TYPE_ERROR, "%{public}s:%i Bundle is missing folder: %s", v54, 0x1Cu);
        }

        sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "_NFRestoreNfcFirmwareStep", 1101);
        goto LABEL_16;
      }

      v39 = v4[9];
      v10 = v4[10] == 0;
      v18 = sub_2994BF21C(a1, buf, v4[11] & 1, v4[8] & 1, Value);
      if (v18)
      {
        v40 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v41 = NFLogGetLogger();
        if (v41)
        {
          v41(3, "%s:%i Failed to update FW: %s", "_NFRestoreNfcFirmwareStep", 1115, v35);
        }

        dispatch_get_specific(*v40);
        v42 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *v54 = 136446722;
          v55 = "_NFRestoreNfcFirmwareStep";
          v56 = 1024;
          v57 = 1115;
          v58 = 2080;
          v59 = v35;
          _os_log_impl(&dword_2994B7000, v42, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to update FW: %s", v54, 0x1Cu);
        }
      }
    }

    else
    {
      IsDevBoard = NFProductIsDevBoard();
      v28 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v29 = NFLogGetLogger();
      if (!IsDevBoard)
      {
        if (v29)
        {
          v29(3, "%s:%i Failed to get driver info", "_NFRestoreNfcFirmwareStep", 1070);
        }

        dispatch_get_specific(*v28);
        v43 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *v54 = 136446466;
          v55 = "_NFRestoreNfcFirmwareStep";
          v56 = 1024;
          v57 = 1070;
          _os_log_impl(&dword_2994B7000, v43, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get driver info", v54, 0x12u);
        }

        v44 = *(a1 + 56);
        Message = NFDriverSerialDebugLastMessage();
        v45 = *MEMORY[0x29EDC9198];
        v46 = NFDriverGetStackBreadcrumb();
        v47 = &unk_2994C631B;
        if (Message)
        {
          v47 = Message;
        }

        sub_2994B8D74("com.apple.nfstack", v45, "Error 0x%04x at %s:%d: %llx %s", v45, "_NFRestoreNfcFirmwareStep", 1071, v46, v47);
        goto LABEL_15;
      }

      if (v29)
      {
        v29(4, "%s:%i Failed to get driver info", "_NFRestoreNfcFirmwareStep", 1065);
      }

      dispatch_get_specific(*v28);
      v30 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *v54 = 136446466;
        v55 = "_NFRestoreNfcFirmwareStep";
        v56 = 1024;
        v57 = 1065;
        _os_log_impl(&dword_2994B7000, v30, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get driver info", v54, 0x12u);
      }

      dispatch_get_specific(*v28);
      v31 = NFLogGetLogger();
      if (v31)
      {
        v31(4, "%s:%i Assuming HW not present", "_NFRestoreNfcFirmwareStep", 1066);
      }

      dispatch_get_specific(*v28);
      v32 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *v54 = 136446466;
        v55 = "_NFRestoreNfcFirmwareStep";
        v56 = 1024;
        v57 = 1066;
        _os_log_impl(&dword_2994B7000, v32, OS_LOG_TYPE_ERROR, "%{public}s:%i Assuming HW not present", v54, 0x12u);
      }

      v18 = 1;
    }
  }

LABEL_30:
  v25 = *MEMORY[0x29EDCA608];
  return v18;
}

void sub_2994BEEE0()
{
  v31 = *MEMORY[0x29EDCA608];
  NFDriverRunIntegrityDebug();
  if (NFIsInternalBuild())
  {
    v0 = NFDriverDebugDumpMemory();
    if (v0)
    {
      v1 = v0;
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i EEPROM User Area Start:0x%08X End:0x%08X", "_NFRestoreDebugNFCCError", 327, *v1, v1[1]);
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v3 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *v1;
        v5 = v1[1];
        *buf = 136446978;
        *&buf[4] = "_NFRestoreDebugNFCCError";
        *&buf[12] = 1024;
        *&buf[14] = 327;
        *&buf[18] = 1024;
        *&buf[20] = v4;
        *&buf[24] = 1024;
        *&buf[26] = v5;
        _os_log_impl(&dword_2994B7000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%i EEPROM User Area Start:0x%08X End:0x%08X", buf, 0x1Eu);
      }

      v6 = *(v1 + 1);
      if (v6)
      {
        v30 = 0u;
        memset(buf, 0, sizeof(buf));
        v7 = *v6;
        v8 = v6[1];
        v9 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v10 = NFLogGetLogger();
        dispatch_get_specific(*v9);
        v11 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(*(v1 + 1) + 8);
          *v21 = 136315906;
          v22 = "_NFRestoreDebugNFCCError";
          v23 = 1024;
          v24 = 329;
          v25 = 2082;
          v26 = "EEPROM User Area: ";
          v27 = 2048;
          v28 = v12;
          _os_log_impl(&dword_2994B7000, v11, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v21, 0x26u);
        }

        if (v10)
        {
          v10(6, "%s:%i %s %lu bytes :", "_NFRestoreDebugNFCCError", 329, "EEPROM User Area: ", *(*(v1 + 1) + 8));
        }

        if (v8)
        {
          v13 = 0;
          do
          {
            v14 = 0;
            v15 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v13)];
            do
            {
              v16 = *(v7 + v13++);
              v17 = sprintf(v15, "0x%02X ", v16);
              if (v14 > 6)
              {
                break;
              }

              v15 += v17;
              ++v14;
            }

            while (v13 < v8);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v18 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *v21 = 136446210;
              v22 = buf;
              _os_log_impl(&dword_2994B7000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s", v21, 0xCu);
            }

            if (v10)
            {
              v10(6, "%s", buf);
            }
          }

          while (v13 < v8);
        }

        v19 = *(v1 + 1);
        NFDataRelease();
      }

      free(v1);
    }
  }

  v20 = *MEMORY[0x29EDCA608];
}

uint64_t sub_2994BF21C(uint64_t a1, _DWORD *a2, int a3, int a4, const __CFDictionary *a5)
{
  v31 = *MEMORY[0x29EDCA608];
  v7 = sub_2994BF564(a2, a3, a4);
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Selected file %s", "NFRestoreNfcForController", 963, v8);
    }

    dispatch_get_specific(*v9);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v26 = "NFRestoreNfcForController";
      v27 = 1024;
      v28 = 963;
      v29 = 2080;
      v30 = v8;
      _os_log_impl(&dword_2994B7000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Selected file %s", buf, 0x1Cu);
    }

    v12 = CFStringCreateWithCString(0, v8, 0x8000100u);
    if (sub_2994BFCFC(a5, v12))
    {
      if (NFDriverUpdateFirmware())
      {
        dispatch_get_specific(*v9);
        v13 = NFLogGetLogger();
        if (v13)
        {
          v13(3, "%s:%i Failed to install %s", "NFRestoreNfcForController", 974, v8);
        }

        dispatch_get_specific(*v9);
        v14 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v26 = "NFRestoreNfcForController";
          v27 = 1024;
          v28 = 974;
          v29 = 2080;
          v30 = v8;
          _os_log_impl(&dword_2994B7000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to install %s", buf, 0x1Cu);
        }

        v15 = *(a1 + 56);
        Message = NFDriverSerialDebugLastMessage();
        v17 = *MEMORY[0x29EDC9198];
        StackBreadcrumb = NFDriverGetStackBreadcrumb();
        v19 = &unk_2994C631B;
        if (Message)
        {
          v19 = Message;
        }

        sub_2994B8D74("com.apple.nfstack", v17, "Error 0x%04x at %s:%d: %llx %s", v17, "NFRestoreNfcForController", 975, StackBreadcrumb, v19);
        free(Message);
        v20 = 5;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      dispatch_get_specific(*v9);
      v21 = NFLogGetLogger();
      if (v21)
      {
        v21(3, "%s:%i No data found for %s", "NFRestoreNfcForController", 968, v8);
      }

      dispatch_get_specific(*v9);
      v22 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v26 = "NFRestoreNfcForController";
        v27 = 1024;
        v28 = 968;
        v29 = 2080;
        v30 = v8;
        _os_log_impl(&dword_2994B7000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i No data found for %s", buf, 0x1Cu);
      }

      v20 = 7;
    }

    NFDataRelease();
    CFRelease(v12);
  }

  else
  {
    v20 = 7;
  }

  v23 = *MEMORY[0x29EDCA608];
  return v20;
}

const char *sub_2994BF564(_DWORD *a1, int a2, int a3)
{
  v61 = *MEMORY[0x29EDCA608];
  v6 = a1[1];
  if (v6 > 13)
  {
    if ((v6 - 14) < 4)
    {
      v14 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i ROM version %02x.%02x", "NFRestoreNfcFirmwareNameForController", 721, *a1, a1[2]);
      }

      dispatch_get_specific(*v14);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *a1;
        v18 = a1[2];
        *buf = 136446978;
        v54 = "NFRestoreNfcFirmwareNameForController";
        v55 = 1024;
        v56 = 721;
        v57 = 1024;
        v58 = v17;
        v59 = 1024;
        v60 = v18;
        _os_log_impl(&dword_2994B7000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ROM version %02x.%02x", buf, 0x1Eu);
      }

      v12 = "SN300V_FW_B0_02_01_74_rev167804.bin";
      v13 = "SN300V_FW_B0_02_01_FC_rev167600.bin";
      goto LABEL_15;
    }

    if (v6 == 18)
    {
      v44 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v45 = NFLogGetLogger();
      if (v45)
      {
        v45(6, "%s:%i ROM version %02x.%02x", "NFRestoreNfcFirmwareNameForController", 734, *a1, a1[2]);
      }

      dispatch_get_specific(*v44);
      v46 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = *a1;
        v48 = a1[2];
        *buf = 136446978;
        v54 = "NFRestoreNfcFirmwareNameForController";
        v55 = 1024;
        v56 = 734;
        v57 = 1024;
        v58 = v47;
        v59 = 1024;
        v60 = v48;
        _os_log_impl(&dword_2994B7000, v46, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ROM version %02x.%02x", buf, 0x1Eu);
      }

      v12 = "SE310S_FW_A0_01_01_33_rev165162.bin";
      v13 = "SE310S_FW_A0_01_01_D3_rev165460.bin";
      goto LABEL_15;
    }

    if (v6 != 20)
    {
      goto LABEL_47;
    }

    v27 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v28(6, "%s:%i ROM version %02x.%02x", "NFRestoreNfcFirmwareNameForController", 746, *a1, a1[2]);
    }

    dispatch_get_specific(*v27);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *a1;
      v31 = a1[2];
      *buf = 136446978;
      v54 = "NFRestoreNfcFirmwareNameForController";
      v55 = 1024;
      v56 = 746;
      v57 = 1024;
      v58 = v30;
      v59 = 1024;
      v60 = v31;
      _os_log_impl(&dword_2994B7000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ROM version %02x.%02x", buf, 0x1Eu);
    }

    v32 = "SN200V_FURY_FW_B1_02_01_A9_rev169850.bin";
    if (a3)
    {
      v32 = "SN200V_FURY_FW_B1_02_01_FA_rev149466.bin";
    }

    if (a2)
    {
      result = v32;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    if ((v6 - 10) >= 3)
    {
      if ((v6 - 7) < 2)
      {
        v7 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v8 = NFLogGetLogger();
        if (v8)
        {
          v8(6, "%s:%i ROM version %02x.%02x", "NFRestoreNfcFirmwareNameForController", 678, *a1, a1[2]);
        }

        dispatch_get_specific(*v7);
        v9 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *a1;
          v11 = a1[2];
          *buf = 136446978;
          v54 = "NFRestoreNfcFirmwareNameForController";
          v55 = 1024;
          v56 = 678;
          v57 = 1024;
          v58 = v10;
          v59 = 1024;
          v60 = v11;
          _os_log_impl(&dword_2994B7000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ROM version %02x.%02x", buf, 0x1Eu);
        }

        v12 = "SN100V_FW_A3_01_01_B6_rev157827.bin";
        v13 = "SN100V_FW_A3_01_01_C3_rev78599.bin";
        goto LABEL_15;
      }

      if (v6 == 5)
      {
        v33 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v34 = NFLogGetLogger();
        if (v34)
        {
          v34(6, "%s:%i ROM version %02x.%02x", "NFRestoreNfcFirmwareNameForController", 654, *a1, a1[2]);
        }

        dispatch_get_specific(*v33);
        v35 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = *a1;
          v37 = a1[2];
          *buf = 136446978;
          v54 = "NFRestoreNfcFirmwareNameForController";
          v55 = 1024;
          v56 = 654;
          v57 = 1024;
          v58 = v36;
          v59 = 1024;
          v60 = v37;
          _os_log_impl(&dword_2994B7000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ROM version %02x.%02x", buf, 0x1Eu);
        }

        if (a1[2] == 2)
        {
          v12 = "PN552_FW_02_01_6A_rev125914.bin";
          v13 = "PN552_FW_02_01_AF_59162.bin";
LABEL_15:
          if (a3)
          {
            result = v13;
          }

          else
          {
            result = v12;
          }

          goto LABEL_62;
        }

        dispatch_get_specific(*v33);
        v49 = NFLogGetLogger();
        if (v49)
        {
          v49(3, "%s:%i Unexpected ROM version %02x.%02x", "NFRestoreNfcFirmwareNameForController", 669, *a1, a1[2]);
        }

        dispatch_get_specific(*v33);
        v40 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
LABEL_61:
          result = 0;
          goto LABEL_62;
        }

        v50 = *a1;
        v51 = a1[2];
        *buf = 136446978;
        v54 = "NFRestoreNfcFirmwareNameForController";
        v55 = 1024;
        v56 = 669;
        v57 = 1024;
        v58 = v50;
        v59 = 1024;
        v60 = v51;
        v43 = "%{public}s:%i Unexpected ROM version %02x.%02x";
LABEL_60:
        _os_log_impl(&dword_2994B7000, v40, OS_LOG_TYPE_ERROR, v43, buf, 0x1Eu);
        goto LABEL_61;
      }

LABEL_47:
      v38 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v39 = NFLogGetLogger();
      if (v39)
      {
        v39(3, "%s:%i Unexpected Si version %02x.%02x", "NFRestoreNfcFirmwareNameForController", 788, *a1, a1[2]);
      }

      dispatch_get_specific(*v38);
      v40 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

      v41 = *a1;
      v42 = a1[2];
      *buf = 136446978;
      v54 = "NFRestoreNfcFirmwareNameForController";
      v55 = 1024;
      v56 = 788;
      v57 = 1024;
      v58 = v41;
      v59 = 1024;
      v60 = v42;
      v43 = "%{public}s:%i Unexpected Si version %02x.%02x";
      goto LABEL_60;
    }

    v20 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(6, "%s:%i ROM version %02x.%02x", "NFRestoreNfcFirmwareNameForController", 693, *a1, a1[2]);
    }

    dispatch_get_specific(*v20);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *a1;
      v24 = a1[2];
      *buf = 136446978;
      v54 = "NFRestoreNfcFirmwareNameForController";
      v55 = 1024;
      v56 = 693;
      v57 = 1024;
      v58 = v23;
      v59 = 1024;
      v60 = v24;
      _os_log_impl(&dword_2994B7000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ROM version %02x.%02x", buf, 0x1Eu);
    }

    v25 = "SN200V_FW_B1_02_01_B9_rev167811.bin";
    if (a3)
    {
      v25 = "SN200V_FW_B1_02_01_FA_rev124452.bin";
    }

    v26 = "SN200V_FURY_FW_B1_02_01_FA_rev149466.bin";
    if (!a3)
    {
      v26 = "SN200V_FURY_FW_B1_02_01_A9_rev169850.bin";
    }

    if (a2)
    {
      result = v26;
    }

    else
    {
      result = v25;
    }
  }

LABEL_62:
  v52 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2994BFCFC(const __CFDictionary *a1, const __CFString *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  bzero(buffer, 0x400uLL);
  Value = CFDictionaryGetValue(a1, a2);
  if (Value && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFURLGetTypeID()))
  {
    v7 = CFURLGetString(v5);
    if (!CFStringGetCStringPtr(v7, 0x8000100u))
    {
      CFStringGetCString(v7, buffer, 1024, 0x8000100u);
    }

    result = NFDataCreateWithFile();
  }

  else
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
      if (!CStringPtr)
      {
        CStringPtr = buffer;
        CFStringGetCString(a2, buffer, 1024, 0x8000100u);
      }

      v11(3, "%s:%i No data found for %s", "NFRestoreDictionaryCopyDataForKey", 557, CStringPtr);
    }

    dispatch_get_specific(*v9);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = CFStringGetCStringPtr(a2, 0x8000100u);
      if (!v14)
      {
        v14 = buffer;
        CFStringGetCString(a2, buffer, 1024, 0x8000100u);
      }

      *buf = 136446722;
      v17 = "NFRestoreDictionaryCopyDataForKey";
      v18 = 1024;
      v19 = 557;
      v20 = 2080;
      v21 = v14;
      _os_log_impl(&dword_2994B7000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i No data found for %s", buf, 0x1Cu);
    }

    result = 0;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2994BFF0C(unsigned int *a1, char *__s)
{
  v86 = *MEMORY[0x29EDCA608];
  v3 = strlen(__s);
  v4 = malloc_type_calloc(1uLL, v3 + 1, 0x100004077774924uLL);
  v5 = MEMORY[0x29EDC9730];
  if (!v4)
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i calloc failure...", "NfSecureElementScriptRun", 138);
    }

    dispatch_get_specific(*v5);
    v58 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *__str = 136446466;
      v79 = "NfSecureElementScriptRun";
      v80 = 1024;
      v81 = 138;
      _os_log_impl(&dword_2994B7000, v58, OS_LOG_TYPE_ERROR, "%{public}s:%i calloc failure...", __str, 0x12u);
    }

    v26 = 3;
    goto LABEL_110;
  }

  v6 = v4;
  strlcpy(v4, __s, v3 + 1);
  v67 = v6;
  v7 = strtok(v6, "\r\n");
  if (!v7)
  {
    v9 = 0;
    goto LABEL_101;
  }

  v8 = v7;
  v9 = 0;
  v10 = MEMORY[0x29EDCA600];
  v11 = MEMORY[0x29EDCA620];
  while (2)
  {
    v68 = v9;
    while (1)
    {
      bzero(__str, 0x800uLL);
      __sa = 0;
      __lasts = 0;
      v12 = v8;
      do
      {
        while (1)
        {
          v14 = *v12++;
          v13 = v14;
          if ((v14 & 0x80000000) != 0)
          {
            break;
          }

          if ((*(v10 + 4 * v13 + 60) & 0x4000) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      while (__maskrune(v13, 0x4000uLL));
LABEL_10:
      if (!v13)
      {
        v26 = 0;
        goto LABEL_92;
      }

      __strlcpy_chk();
      strtok_r(__str, " ", &__lasts);
      if (__lasts)
      {
        if (strlen(__lasts) < 5)
        {
          __sa = __lasts;
          goto LABEL_16;
        }

        if (*__lasts == 42)
        {
          __sa = __lasts + 1;
LABEL_16:
          __lasts = 0;
          goto LABEL_18;
        }

        strtok_r(__lasts, "*", &__sa);
      }

LABEL_18:
      fprintf(*v11, "> %s\n", __str);
      if (!NFDataCreateWithHexString())
      {
        break;
      }

      v15 = *a1;
      v16 = a1[2];
      v17 = NFDriverSecureElementTransceive();
      NFDataRelease();
      if (!v17)
      {
        dispatch_get_specific(*v5);
        v49 = NFLogGetLogger();
        if (v49)
        {
          v49(3, "%s:%i Transceive failed", "NfSecureElementScriptRunLine", 65);
        }

        dispatch_get_specific(*v5);
        v50 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v73 = "NfSecureElementScriptRunLine";
          v74 = 1024;
          v75 = 65;
          _os_log_impl(&dword_2994B7000, v50, OS_LOG_TYPE_ERROR, "%{public}s:%i Transceive failed", buf, 0x12u);
        }

        v51 = *(*a1 + 56);
        Message = NFDriverSerialDebugLastMessage();
        v53 = *MEMORY[0x29EDC9198];
        v54 = *a1;
        StackBreadcrumb = NFDriverGetStackBreadcrumb();
        v56 = &unk_2994C631B;
        if (Message)
        {
          v56 = Message;
        }

        sub_2994B8D74("com.apple.nfstack", v53, "Error 0x%04x at %s:%d: %llx %s", v53, "NfSecureElementScriptRunLine", 66, StackBreadcrumb, v56);
        free(Message);
        v26 = 9;
        goto LABEL_92;
      }

      v18 = NFDataAsHexString();
      fprintf(*v11, "%s\n", v18);
      if (__lasts && (v19 = strlen(__lasts)) != 0)
      {
        if (!strncasecmp(v18, __lasts, v19))
        {
          v26 = 0;
        }

        else
        {
          dispatch_get_specific(*v5);
          v20 = NFLogGetLogger();
          if (v20)
          {
            v20(3, "%s:%i R-APDU does not match expected prefix!", "NfSecureElementScriptRunLine", 78);
          }

          dispatch_get_specific(*v5);
          v21 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v73 = "NfSecureElementScriptRunLine";
            v74 = 1024;
            v75 = 78;
            _os_log_impl(&dword_2994B7000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i R-APDU does not match expected prefix!", buf, 0x12u);
          }

          dispatch_get_specific(*v5);
          v22 = NFLogGetLogger();
          if (v22)
          {
            v22(3, "%s:%i Expected: %s", "NfSecureElementScriptRunLine", 79, __lasts);
          }

          dispatch_get_specific(*v5);
          v23 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v73 = "NfSecureElementScriptRunLine";
            v74 = 1024;
            v75 = 79;
            v76 = 2080;
            v77 = __lasts;
            _os_log_impl(&dword_2994B7000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i Expected: %s", buf, 0x1Cu);
          }

          dispatch_get_specific(*v5);
          v24 = NFLogGetLogger();
          if (v24)
          {
            v24(3, "%s:%i Received: %s", "NfSecureElementScriptRunLine", 80, v18);
          }

          dispatch_get_specific(*v5);
          v25 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v73 = "NfSecureElementScriptRunLine";
            v74 = 1024;
            v75 = 80;
            v76 = 2080;
            v77 = v18;
            _os_log_impl(&dword_2994B7000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i Received: %s", buf, 0x1Cu);
          }

          sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "NfSecureElementScriptRunLine", 81);
          v26 = 5;
        }

        v27 = 1;
      }

      else
      {
        v27 = 0;
        v26 = 0;
      }

      if (__sa)
      {
        v28 = v11;
        v29 = strlen(__sa);
        if (!v29)
        {
          v38 = 0;
LABEL_58:
          v11 = v28;
          goto LABEL_59;
        }

        v30 = v29;
        v31 = strlen(v18);
        if (!strncasecmp(&v18[v31 - v30], __sa, v30))
        {
          v38 = 1;
          goto LABEL_58;
        }

        dispatch_get_specific(*v5);
        v32 = NFLogGetLogger();
        v11 = v28;
        if (v32)
        {
          v32(3, "%s:%i R-APDU does not match expected suffix!", "NfSecureElementScriptRunLine", 90);
        }

        dispatch_get_specific(*v5);
        v33 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v73 = "NfSecureElementScriptRunLine";
          v74 = 1024;
          v75 = 90;
          _os_log_impl(&dword_2994B7000, v33, OS_LOG_TYPE_ERROR, "%{public}s:%i R-APDU does not match expected suffix!", buf, 0x12u);
        }

        dispatch_get_specific(*v5);
        v34 = NFLogGetLogger();
        if (v34)
        {
          v34(3, "%s:%i Expected: %s", "NfSecureElementScriptRunLine", 91, __sa);
        }

        dispatch_get_specific(*v5);
        v35 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v73 = "NfSecureElementScriptRunLine";
          v74 = 1024;
          v75 = 91;
          v76 = 2080;
          v77 = __sa;
          _os_log_impl(&dword_2994B7000, v35, OS_LOG_TYPE_ERROR, "%{public}s:%i Expected: %s", buf, 0x1Cu);
        }

        dispatch_get_specific(*v5);
        v36 = NFLogGetLogger();
        if (v36)
        {
          v36(3, "%s:%i Received: %s", "NfSecureElementScriptRunLine", 92, v18);
        }

        dispatch_get_specific(*v5);
        v37 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v73 = "NfSecureElementScriptRunLine";
          v74 = 1024;
          v75 = 92;
          v76 = 2080;
          v77 = v18;
          _os_log_impl(&dword_2994B7000, v37, OS_LOG_TYPE_ERROR, "%{public}s:%i Received: %s", buf, 0x1Cu);
        }

        sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "NfSecureElementScriptRunLine", 93);
        v26 = 5;
        v38 = 1;
      }

      else
      {
        v38 = 0;
      }

LABEL_59:
      if (!(v38 | v27))
      {
        ResponseStatus = NFDriverSecureElementGetResponseStatus();
        if (ResponseStatus != 36864)
        {
          v40 = ResponseStatus;
          dispatch_get_specific(*v5);
          v41 = NFLogGetLogger();
          if (v41)
          {
            v41(3, "%s:%i Command failed: status=0x%04x", "NfSecureElementScriptRunLine", 102, v40);
          }

          dispatch_get_specific(*v5);
          v42 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v73 = "NfSecureElementScriptRunLine";
            v74 = 1024;
            v75 = 102;
            v76 = 1024;
            LODWORD(v77) = v40;
            _os_log_impl(&dword_2994B7000, v42, OS_LOG_TYPE_ERROR, "%{public}s:%i Command failed: status=0x%04x", buf, 0x18u);
          }

          dispatch_get_specific(*v5);
          v43 = NFLogGetLogger();
          if (v43)
          {
            v43(3, "%s:%i Received: %s", "NfSecureElementScriptRunLine", 103, v18);
          }

          dispatch_get_specific(*v5);
          v44 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v73 = "NfSecureElementScriptRunLine";
            v74 = 1024;
            v75 = 103;
            v76 = 2080;
            v77 = v18;
            _os_log_impl(&dword_2994B7000, v44, OS_LOG_TYPE_ERROR, "%{public}s:%i Received: %s", buf, 0x1Cu);
          }

          if (v40 == 25536)
          {
            v26 = 2;
          }

          else if (v40 == 26277)
          {
            v26 = 15;
          }

          else
          {
            sub_2994B8D74("com.apple.nfjcop", v40, "Error 0x%04x at %s:%d", v40, "NfSecureElementScriptRunLine", 110);
            v26 = 5;
          }
        }
      }

      free(v18);
      NFDataRelease();
      if (v26 != 2)
      {
        goto LABEL_92;
      }

      dispatch_get_specific(*v5);
      v45 = NFLogGetLogger();
      if (v45)
      {
        v45(6, "%s:%i Retry...", "NfSecureElementScriptRun", 152);
      }

      dispatch_get_specific(*v5);
      v46 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *__str = 136446466;
        v79 = "NfSecureElementScriptRun";
        v80 = 1024;
        v81 = 152;
        _os_log_impl(&dword_2994B7000, v46, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Retry...", __str, 0x12u);
      }
    }

    dispatch_get_specific(*v5);
    v47 = NFLogGetLogger();
    if (v47)
    {
      v47(3, "%s:%i Invalid hex string", "NfSecureElementScriptRunLine", 55);
    }

    dispatch_get_specific(*v5);
    v48 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v73 = "NfSecureElementScriptRunLine";
      v74 = 1024;
      v75 = 55;
      _os_log_impl(&dword_2994B7000, v48, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid hex string", buf, 0x12u);
    }

    sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "NfSecureElementScriptRunLine", 56);
    v26 = 7;
LABEL_92:
    v9 = v68 + 1;
    if (!v26)
    {
      v8 = strtok(0, "\r\n");
      if (!v8)
      {
LABEL_101:
        dispatch_get_specific(*v5);
        v59 = NFLogGetLogger();
        if (v59)
        {
          v59(6, "%s:%i Executed %d lines successfully", "NfSecureElementScriptRun", 165, v9);
        }

        v60 = v9;
        dispatch_get_specific(*v5);
        v61 = NFSharedLogGetLogger();
        v26 = 0;
        v62 = v67;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *__str = 136446722;
          v79 = "NfSecureElementScriptRun";
          v80 = 1024;
          v81 = 165;
          v82 = 1024;
          v83 = v60;
          _os_log_impl(&dword_2994B7000, v61, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Executed %d lines successfully", __str, 0x18u);
          v26 = 0;
        }

        goto LABEL_109;
      }

      continue;
    }

    break;
  }

  dispatch_get_specific(*v5);
  v63 = NFLogGetLogger();
  if (v63)
  {
    v63(3, "%s:%i Failed at line %d: %s", "NfSecureElementScriptRun", 160, v9, v8);
  }

  dispatch_get_specific(*v5);
  v64 = NFSharedLogGetLogger();
  v62 = v67;
  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
  {
    *__str = 136446978;
    v79 = "NfSecureElementScriptRun";
    v80 = 1024;
    v81 = 160;
    v82 = 1024;
    v83 = v68 + 1;
    v84 = 2080;
    v85 = v8;
    _os_log_impl(&dword_2994B7000, v64, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed at line %d: %s", __str, 0x22u);
  }

LABEL_109:
  free(v62);
LABEL_110:
  v65 = *MEMORY[0x29EDCA608];
  return v26;
}

uint64_t sub_2994C0C28(char *a1, CFMutableDictionaryRef *a2)
{
  v64 = *MEMORY[0x29EDCA608];
  memset(&v48, 0, sizeof(v48));
  if (stat(a1, &v48))
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      v7 = __error();
      v8 = strerror(*v7);
      v9 = __error();
      if (a1)
      {
        v10 = a1;
      }

      else
      {
        v10 = "NULL";
      }

      v6(3, "%s:%i %s errno=%d Failed to stat at %s", "NfRestoreBundleScan", 203, v8, *v9, v10);
    }

    dispatch_get_specific(*v4);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = __error();
      v13 = strerror(*v12);
      v14 = *__error();
      if (a1)
      {
        v15 = a1;
      }

      else
      {
        v15 = "NULL";
      }

      *buf = 136447234;
      v57 = "NfRestoreBundleScan";
      v58 = 1024;
      v59 = 203;
      v60 = 2080;
      *v61 = v13;
      *&v61[8] = 1024;
      *&v61[10] = v14;
      v62 = 2080;
      v63 = v15;
      _os_log_impl(&dword_2994B7000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d Failed to stat at %s", buf, 0x2Cu);
    }

    goto LABEL_12;
  }

  if ((v48.st_mode & 0x80000000) == 0)
  {
    if (v48.st_mode < 0x4000u)
    {
      v19 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v20 = NFLogGetLogger();
      if (v20)
      {
        v20(4, "%s:%i Ignoring file of type %d: %s", "NfRestoreBundleScan", 217, v48.st_mode, a1);
      }

      dispatch_get_specific(*v19);
      v21 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v57 = "NfRestoreBundleScan";
        v58 = 1024;
        v59 = 217;
        v60 = 1024;
        *v61 = v48.st_mode;
        *&v61[4] = 2080;
        *&v61[6] = a1;
        _os_log_impl(&dword_2994B7000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Ignoring file of type %d: %s", buf, 0x22u);
      }

      v16 = 1;
      goto LABEL_13;
    }

    v29 = *MEMORY[0x29EDB8ED8];
    theDict = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 10, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v30 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v31(6, "%s:%i %s", "_NfRestoreBundleReadDir", 104, a1);
    }

    dispatch_get_specific(*v30);
    v32 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *v50 = 136446722;
      v51 = "_NfRestoreBundleReadDir";
      v52 = 1024;
      v53 = 104;
      v54 = 2080;
      *v55 = a1;
      _os_log_impl(&dword_2994B7000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s", v50, 0x1Cu);
    }

    v33 = opendir(a1);
    if (v33)
    {
      v34 = v33;
      v35 = readdir(v33);
      if (!v35)
      {
LABEL_46:
        closedir(v34);
        v16 = 0;
        *a2 = theDict;
        goto LABEL_13;
      }

      v36 = v35;
      while (1)
      {
        if (v36->d_name[0] != 46)
        {
          if (snprintf(buf, 0x400uLL, "%s/%s", a1, v36->d_name) < 0)
          {
            dispatch_get_specific(*v30);
            v45 = NFLogGetLogger();
            if (v45)
            {
              v45(3, "%s:%i snprintf error", "_NfRestoreBundleReadDir", 119);
            }

            dispatch_get_specific(*v30);
            v46 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              *v50 = 136446466;
              v51 = "_NfRestoreBundleReadDir";
              v52 = 1024;
              v53 = 119;
              _os_log_impl(&dword_2994B7000, v46, OS_LOG_TYPE_ERROR, "%{public}s:%i snprintf error", v50, 0x12u);
            }

            closedir(v34);
            CFRelease(theDict);
            v16 = 5;
            goto LABEL_13;
          }

          value = 0;
          v37 = sub_2994C0C28(buf, &value);
          if (v37)
          {
            v16 = v37;
            dispatch_get_specific(*v30);
            v38 = NFLogGetLogger();
            if (v38)
            {
              v38(3, "%s:%i Error %d at %s", "_NfRestoreBundleReadDir", 128, v16, buf);
            }

            dispatch_get_specific(*v30);
            v39 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              *v50 = 136446978;
              v51 = "_NfRestoreBundleReadDir";
              v52 = 1024;
              v53 = 128;
              v54 = 1024;
              *v55 = v16;
              *&v55[4] = 2080;
              *&v55[6] = buf;
              _os_log_impl(&dword_2994B7000, v39, OS_LOG_TYPE_ERROR, "%{public}s:%i Error %d at %s", v50, 0x22u);
            }

            if (v16 != 1 && (v16 != 7 || v36->d_type != 10))
            {
              closedir(v34);
              CFRelease(theDict);
              goto LABEL_13;
            }
          }

          else
          {
            SystemEncoding = CFStringGetSystemEncoding();
            v41 = CFStringCreateWithCString(v29, v36->d_name, SystemEncoding);
            v42 = value;
            CFDictionarySetValue(theDict, v41, value);
            CFRelease(v41);
            CFRelease(v42);
          }
        }

        v36 = readdir(v34);
        if (!v36)
        {
          goto LABEL_46;
        }
      }
    }

    dispatch_get_specific(*v30);
    v43 = NFLogGetLogger();
    if (v43)
    {
      v43(3, "%s:%i Failed to open %s", "_NfRestoreBundleReadDir", 108, a1);
    }

    dispatch_get_specific(*v30);
    v44 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *v50 = 136446722;
      v51 = "_NfRestoreBundleReadDir";
      v52 = 1024;
      v53 = 108;
      v54 = 2080;
      *v55 = a1;
      _os_log_impl(&dword_2994B7000, v44, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to open %s", v50, 0x1Cu);
    }

    CFRelease(theDict);
LABEL_12:
    v16 = 7;
    goto LABEL_13;
  }

  v22 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v23 = NFLogGetLogger();
  if (v23)
  {
    v24 = v23;
    v25 = basename(a1);
    v24(6, "%s:%i %s", "_NfRestoreBundleGetFileHandle", 89, v25);
  }

  dispatch_get_specific(*v22);
  v26 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = basename(a1);
    *buf = 136446722;
    v57 = "_NfRestoreBundleGetFileHandle";
    v58 = 1024;
    v59 = 89;
    v60 = 2080;
    *v61 = v27;
    _os_log_impl(&dword_2994B7000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s", buf, 0x1Cu);
  }

  v28 = CFStringCreateWithCString(0, a1, 0x8000100u);
  *a2 = CFURLCreateWithString(0, v28, 0);
  CFRelease(v28);
  v16 = 0;
LABEL_13:
  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t NfRestoreBundleCreate(char *a1, const char *a2)
{
  v70 = *MEMORY[0x29EDCA608];
  propertyList = 0;
  v4 = ".";
  if (a2)
  {
    v4 = a2;
  }

  if (snprintf(__str, 0x400uLL, "%s", v4) < 0)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i snprintf error", "NfRestoreBundleCreate", 228);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v63 = "NfRestoreBundleCreate";
      v64 = 1024;
      v65 = 228;
      _os_log_impl(&dword_2994B7000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i snprintf error", buf, 0x12u);
    }

    v6 = 3;
  }

  else
  {
    v5 = sub_2994C1C30(__str);
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v8 = NFLogGetLogger();
      if (v8)
      {
        v8(3, "%s:%i Failed to build target path: %s", "NfRestoreBundleCreate", 233, a2);
      }

      dispatch_get_specific(*v7);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v63 = "NfRestoreBundleCreate";
        v64 = 1024;
        v65 = 233;
        v66 = 2080;
        *v67 = a2;
        _os_log_impl(&dword_2994B7000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to build target path: %s", buf, 0x1Cu);
      }

      goto LABEL_59;
    }

    v13 = sub_2994C0C28(a1, &propertyList);
    if (v13)
    {
      v14 = v13;
      v15 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v16(3, "%s:%i Failed to scan directory %u : %s", "NfRestoreBundleCreate", 238, v14, a1);
      }

      dispatch_get_specific(*v15);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v63 = "NfRestoreBundleCreate";
        v64 = 1024;
        v65 = 238;
        v66 = 1024;
        *v67 = v14;
        *&v67[4] = 2080;
        *&v67[6] = a1;
        _os_log_impl(&dword_2994B7000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to scan directory %u : %s", buf, 0x22u);
      }

      v6 = 7;
      goto LABEL_59;
    }

    v18 = propertyList;
    error = 0;
    v19 = CFPropertyListCreateData(*MEMORY[0x29EDB8ED8], propertyList, kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (v19)
    {
      v20 = v19;
      unlink(__str);
      v21 = fopen(__str, "w");
      if (v21)
      {
        v22 = v21;
        BytePtr = CFDataGetBytePtr(v20);
        Length = CFDataGetLength(v20);
        v25 = fwrite(BytePtr, Length, 1uLL, v22);
        if (v25 == 1)
        {
          v6 = 0;
        }

        else
        {
          v45 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v46 = NFLogGetLogger();
          if (v46)
          {
            v46(3, "%s:%i Failed to write data to %s", "_NfRestoreBundleWrite", 73, __str);
          }

          dispatch_get_specific(*v45);
          v47 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v63 = "_NfRestoreBundleWrite";
            v64 = 1024;
            v65 = 73;
            v66 = 2080;
            *v67 = __str;
            _os_log_impl(&dword_2994B7000, v47, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to write data to %s", buf, 0x1Cu);
          }

          v6 = 7;
        }

        fclose(v22);
        CFRelease(v20);
        if (v25 == 1)
        {
          v48 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v49 = NFLogGetLogger();
          if (v49)
          {
            v49(6, "%s:%i Wrote to file: %s", "NfRestoreBundleCreate", 248, __str);
          }

          dispatch_get_specific(*v48);
          v50 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v63 = "NfRestoreBundleCreate";
            v64 = 1024;
            v65 = 248;
            v66 = 2080;
            *v67 = __str;
            _os_log_impl(&dword_2994B7000, v50, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Wrote to file: %s", buf, 0x1Cu);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          v6 = 0;
          goto LABEL_59;
        }
      }

      else
      {
        v35 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v36 = NFLogGetLogger();
        if (v36)
        {
          v37 = v36;
          v38 = __error();
          v39 = strerror(*v38);
          v40 = __error();
          v37(3, "%s:%i %s errno=%d Failed to open %s", "_NfRestoreBundleWrite", 51, v39, *v40, __str);
        }

        dispatch_get_specific(*v35);
        v41 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = __error();
          v43 = strerror(*v42);
          v44 = *__error();
          *buf = 136447234;
          v63 = "_NfRestoreBundleWrite";
          v64 = 1024;
          v65 = 51;
          v66 = 2080;
          *v67 = v43;
          *&v67[8] = 1024;
          *&v67[10] = v44;
          v68 = 2080;
          v69 = __str;
          _os_log_impl(&dword_2994B7000, v41, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d Failed to open %s", buf, 0x2Cu);
        }

        CFRelease(v20);
        v6 = 7;
      }
    }

    else
    {
      if (error)
      {
        v26 = CFErrorCopyDescription(error);
        v27 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v28 = NFLogGetLogger();
        if (v28)
        {
          v29 = v28;
          SystemEncoding = CFStringGetSystemEncoding();
          CStringPtr = CFStringGetCStringPtr(v26, SystemEncoding);
          v29(3, "%s:%i Encoding error: %s", "_NfRestoreBundleWrite", 37, CStringPtr);
        }

        dispatch_get_specific(*v27);
        v32 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = CFStringGetSystemEncoding();
          v34 = CFStringGetCStringPtr(v26, v33);
          *buf = 136446722;
          v63 = "_NfRestoreBundleWrite";
          v64 = 1024;
          v65 = 37;
          v66 = 2080;
          *v67 = v34;
          _os_log_impl(&dword_2994B7000, v32, OS_LOG_TYPE_ERROR, "%{public}s:%i Encoding error: %s", buf, 0x1Cu);
        }

        CFRelease(v26);
        CFRelease(error);
      }

      else
      {
        v51 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v52 = NFLogGetLogger();
        if (v52)
        {
          v52(3, "%s:%i Unknown encoding error", "_NfRestoreBundleWrite", 42);
        }

        dispatch_get_specific(*v51);
        v53 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v63 = "_NfRestoreBundleWrite";
          v64 = 1024;
          v65 = 42;
          _os_log_impl(&dword_2994B7000, v53, OS_LOG_TYPE_ERROR, "%{public}s:%i Unknown encoding error", buf, 0x12u);
        }
      }

      v6 = 3;
    }

    v54 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v55 = NFLogGetLogger();
    if (v55)
    {
      v55(3, "%s:%i Failed to write to path: %s", "NfRestoreBundleCreate", 243, __str);
    }

    dispatch_get_specific(*v54);
    v56 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v63 = "NfRestoreBundleCreate";
      v64 = 1024;
      v65 = 243;
      v66 = 2080;
      *v67 = __str;
      _os_log_impl(&dword_2994B7000, v56, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to write to path: %s", buf, 0x1Cu);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

LABEL_59:
  v57 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t sub_2994C1C30(char *a1)
{
  v55 = *MEMORY[0x29EDCA608];
  memset(&v44, 0, sizeof(v44));
  if (stat(a1, &v44))
  {
    if (*__error() == 2)
    {
      v2 = dirname(a1);
      if (stat(v2, &v44))
      {
        v3 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v5 = Logger;
          v6 = __error();
          v7 = strerror(*v6);
          v8 = __error();
          v5(3, "%s:%i %s errno=%d failed to stat parent: %s", "_NfRestoreBundleValidateTargetPath", 159, v7, *v8, v2);
        }

        dispatch_get_specific(*v3);
        v9 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        v10 = __error();
        v11 = strerror(*v10);
        v12 = *__error();
        *buf = 136447234;
        v46 = "_NfRestoreBundleValidateTargetPath";
        v47 = 1024;
        v48 = 159;
        v49 = 2080;
        v50 = v11;
        v51 = 1024;
        v52 = v12;
        v53 = 2080;
        v54 = v2;
        v13 = "%{public}s:%i %s errno=%d failed to stat parent: %s";
      }

      else
      {
        if ((v44.st_mode & 0x4000) != 0)
        {
          result = 0;
          goto LABEL_28;
        }

        v31 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v32 = NFLogGetLogger();
        if (v32)
        {
          v33 = v32;
          v34 = __error();
          v35 = strerror(*v34);
          v36 = __error();
          v33(3, "%s:%i %s errno=%d parent is not directory: %s", "_NfRestoreBundleValidateTargetPath", 168, v35, *v36, v2);
        }

        dispatch_get_specific(*v31);
        v9 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        v37 = __error();
        v38 = strerror(*v37);
        v39 = *__error();
        *buf = 136447234;
        v46 = "_NfRestoreBundleValidateTargetPath";
        v47 = 1024;
        v48 = 168;
        v49 = 2080;
        v50 = v38;
        v51 = 1024;
        v52 = v39;
        v53 = 2080;
        v54 = v2;
        v13 = "%{public}s:%i %s errno=%d parent is not directory: %s";
      }

      v18 = v9;
      v19 = 44;
    }

    else
    {
      v20 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v21 = NFLogGetLogger();
      if (v21)
      {
        v22 = v21;
        v23 = __error();
        v24 = strerror(*v23);
        v25 = __error();
        v22(3, "%s:%i %s errno=%d stat failed", "_NfRestoreBundleValidateTargetPath", 172, v24, *v25);
      }

      dispatch_get_specific(*v20);
      v26 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v27 = __error();
      v28 = strerror(*v27);
      v29 = *__error();
      *buf = 136446978;
      v46 = "_NfRestoreBundleValidateTargetPath";
      v47 = 1024;
      v48 = 172;
      v49 = 2080;
      v50 = v28;
      v51 = 1024;
      v52 = v29;
      v13 = "%{public}s:%i %s errno=%d stat failed";
      v18 = v26;
      v19 = 34;
    }

LABEL_26:
    _os_log_impl(&dword_2994B7000, v18, OS_LOG_TYPE_ERROR, v13, buf, v19);
LABEL_27:
    result = 7;
    goto LABEL_28;
  }

  if ((v44.st_mode & 0x4000) != 0)
  {
    v30 = strlen(a1);
    if (snprintf(&a1[v30], 1024 - v30, "/%s", "StockholmRestore.plist") < 0)
    {
      v41 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v42 = NFLogGetLogger();
      if (v42)
      {
        v42(3, "%s:%i snprintf error", "_NfRestoreBundleValidateTargetPath", 182);
      }

      dispatch_get_specific(*v41);
      v43 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v46 = "_NfRestoreBundleValidateTargetPath";
        v47 = 1024;
        v48 = 182;
        _os_log_impl(&dword_2994B7000, v43, OS_LOG_TYPE_ERROR, "%{public}s:%i snprintf error", buf, 0x12u);
      }

      result = 3;
    }

    else
    {
      result = sub_2994C1C30(a1);
    }
  }

  else
  {
    result = unlink(a1);
    if (result)
    {
      v15 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v16(3, "%s:%i Failed to delete existing file: %s", "_NfRestoreBundleValidateTargetPath", 191, a1);
      }

      dispatch_get_specific(*v15);
      v17 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 136446722;
      v46 = "_NfRestoreBundleValidateTargetPath";
      v47 = 1024;
      v48 = 191;
      v49 = 2080;
      v50 = a1;
      v13 = "%{public}s:%i Failed to delete existing file: %s";
      v18 = v17;
      v19 = 28;
      goto LABEL_26;
    }
  }

LABEL_28:
  v40 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_2994C216C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x80040D6874129uLL);
  if (v6)
  {
    NFLogSetLogger();
    NFLogSetLogger();
    *v6 = a1;
    v6[1] = a2;
    v6[2] = a3;
  }

  return v6;
}

uint64_t sub_2994C21FC(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v7 = *MEMORY[0x29EDCA608];
  if (!qword_2A14631A8)
  {
    goto LABEL_5;
  }

  if (!*(qword_2A14631A8 + 8))
  {
    result = NFIsRestoreOS();
    if (!result)
    {
      goto LABEL_6;
    }

LABEL_5:
    vsnprintf(__str, 0x400uLL, __format, va);
    result = fprintf(*MEMORY[0x29EDCA610], "%s\n", __str);
    goto LABEL_6;
  }

  vsnprintf(__str, 0x400uLL, __format, va);
  result = (*(qword_2A14631A8 + 8))(*(qword_2A14631A8 + 16), a1, "%s\n", __str);
LABEL_6:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned int *sub_2994C22F4(uint64_t a1, unsigned int a2)
{
  v84 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ", "NfSecureElementOpen", 149);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v67 = "NfSecureElementOpen";
    v68 = 1024;
    v69 = 149;
    _os_log_impl(&dword_2994B7000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
  }

  v7 = malloc_type_calloc(1uLL, 0x500uLL, 0x10200402B5D6696uLL);
  if (!v7)
  {
    dispatch_get_specific(*v4);
    v41 = NFLogGetLogger();
    if (v41)
    {
      v41(3, "%s:%i Failed to allocate NfSecureElement_t", "NfSecureElementOpen", 154);
    }

    dispatch_get_specific(*v4);
    v42 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v67 = "NfSecureElementOpen";
      v68 = 1024;
      v69 = 154;
      _os_log_impl(&dword_2994B7000, v42, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate NfSecureElement_t", buf, 0x12u);
    }

    goto LABEL_70;
  }

  v8 = v7;
  *v7 = a1;
  v7[2] = a2;
  if ((sub_2994C2B60(v7, 1) & 1) == 0)
  {
    dispatch_get_specific(*v4);
    v43 = NFLogGetLogger();
    if (v43)
    {
      v43(3, "%s:%i Failed to enter wired mode", "NfSecureElementOpen", 162);
    }

    dispatch_get_specific(*v4);
    v44 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v67 = "NfSecureElementOpen";
      v68 = 1024;
      v69 = 162;
      _os_log_impl(&dword_2994B7000, v44, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to enter wired mode", buf, 0x12u);
    }

    v45 = *(*v8 + 56);
    Message = NFDriverSerialDebugLastMessage();
    v47 = *MEMORY[0x29EDC9198];
    v48 = *v8;
    StackBreadcrumb = NFDriverGetStackBreadcrumb();
    v50 = &unk_2994C631B;
    if (Message)
    {
      v50 = Message;
    }

    sub_2994B8D74("com.apple.nfstack", v47, "Error 0x%04x at %s:%d: %llx %s", v47, "NfSecureElementOpen", 163, StackBreadcrumb, v50);
    free(Message);
    goto LABEL_69;
  }

  v9 = *v8;
  v10 = v8[2];
  if ((NFDriverSecureElementGetOSMode() & 1) == 0)
  {
    dispatch_get_specific(*v4);
    v51 = NFLogGetLogger();
    if (v51)
    {
      v51(4, "%s:%i Failed to get OS mode", "NfSecureElementUpdateOSInfo", 22);
    }

    dispatch_get_specific(*v4);
    v52 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v67 = "NfSecureElementUpdateOSInfo";
      v68 = 1024;
      v69 = 22;
      _os_log_impl(&dword_2994B7000, v52, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get OS mode", buf, 0x12u);
    }

    v53 = 23;
    goto LABEL_63;
  }

  if (v8[305] == 2)
  {
    v11 = *v8;
    v12 = v8[2];
    if ((NFDriverSecureElementGetOSInfo() & 1) == 0)
    {
      dispatch_get_specific(*v4);
      v64 = NFLogGetLogger();
      if (v64)
      {
        v64(4, "%s:%i Failed to get OS info", "NfSecureElementUpdateOSInfo", 29);
      }

      dispatch_get_specific(*v4);
      v65 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v67 = "NfSecureElementUpdateOSInfo";
        v68 = 1024;
        v69 = 29;
        _os_log_impl(&dword_2994B7000, v65, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get OS info", buf, 0x12u);
      }

      v53 = 30;
LABEL_63:
      v54 = *(*v8 + 56);
      v55 = NFDriverSerialDebugLastMessage();
      v56 = *MEMORY[0x29EDC9198];
      v57 = *v8;
      v58 = NFDriverGetStackBreadcrumb();
      v59 = &unk_2994C631B;
      if (v55)
      {
        v59 = v55;
      }

      sub_2994B8D74("com.apple.nfstack", v56, "Error 0x%04x at %s:%d: %llx %s", v56, "NfSecureElementUpdateOSInfo", v53, v58, v59);
      free(v55);
      dispatch_get_specific(*v4);
      v60 = NFLogGetLogger();
      if (v60)
      {
        v60(3, "%s:%i Failed to update OS info", "NfSecureElementOpen", 168);
      }

      dispatch_get_specific(*v4);
      v61 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v67 = "NfSecureElementOpen";
        v68 = 1024;
        v69 = 168;
        _os_log_impl(&dword_2994B7000, v61, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to update OS info", buf, 0x12u);
      }

LABEL_69:
      sub_2994C2D3C(v8);
LABEL_70:
      v8 = 0;
      goto LABEL_71;
    }
  }

  v13 = v8[307] - 1;
  v14 = "UNKNOWN";
  if (v13 <= 5)
  {
    v14 = (&off_29EF26418)[v13];
  }

  dispatch_get_specific(*v4);
  v15 = NFLogGetLogger();
  if (v15)
  {
    if (*(v8 + 1271))
    {
      v16 = "YES";
    }

    else
    {
      v16 = "NO";
    }

    if (*(v8 + 1272))
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    v15(6, "%s:%i id=%s dev=0x%02x hw=0x%08x fw=0x%04x cfw=0x%04x restricted=%s OSUpdate=%s", "NfSecureElementUpdateOSInfo", 54, v8 + 1088, *(v8 + 1268), v8[312], v8[311], *(v8 + 628), v16, v17);
  }

  dispatch_get_specific(*v4);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(v8 + 1268);
    v20 = v8[312];
    v21 = v8[311];
    v22 = *(v8 + 628);
    if (*(v8 + 1271))
    {
      v23 = "YES";
    }

    else
    {
      v23 = "NO";
    }

    if (*(v8 + 1272))
    {
      v24 = "YES";
    }

    else
    {
      v24 = "NO";
    }

    *buf = 136448258;
    v67 = "NfSecureElementUpdateOSInfo";
    v68 = 1024;
    v69 = 54;
    v70 = 2080;
    v71 = (v8 + 272);
    v72 = 1024;
    v73 = v19;
    v74 = 1024;
    v75 = v20;
    v76 = 1024;
    v77 = v21;
    v78 = 1024;
    v79 = v22;
    v80 = 2080;
    v81 = v23;
    v82 = 2080;
    v83 = v24;
    _os_log_impl(&dword_2994B7000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s:%i id=%s dev=0x%02x hw=0x%08x fw=0x%04x cfw=0x%04x restricted=%s OSUpdate=%s", buf, 0x48u);
  }

  dispatch_get_specific(*v4);
  v25 = NFLogGetLogger();
  if (v25)
  {
    v26 = v8[305];
    if (v26 == 2)
    {
      v27 = "JCOP";
    }

    else
    {
      v27 = "UNKNOWN";
    }

    if (v26 == 1)
    {
      v28 = "Update";
    }

    else
    {
      v28 = v27;
    }

    v25(6, "%s:%i mode=%s counter=%d reference=%d osid=0x%02x othervalid=0x%02x", "NfSecureElementUpdateOSInfo", 62, v28, *(v8 + 629), *(v8 + 630), *(v8 + 1269), *(v8 + 1270));
  }

  dispatch_get_specific(*v4);
  v29 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = v8[305];
    if (v30 == 2)
    {
      v31 = "JCOP";
    }

    else
    {
      v31 = "UNKNOWN";
    }

    v32 = v30 == 1;
    v33 = *(v8 + 629);
    if (v32)
    {
      v31 = "Update";
    }

    v34 = *(v8 + 630);
    v35 = *(v8 + 1269);
    v36 = *(v8 + 1270);
    *buf = 136447746;
    v67 = "NfSecureElementUpdateOSInfo";
    v68 = 1024;
    v69 = 62;
    v70 = 2080;
    v71 = v31;
    v72 = 1024;
    v73 = v33;
    v74 = 1024;
    v75 = v34;
    v76 = 1024;
    v77 = v35;
    v78 = 1024;
    v79 = v36;
    _os_log_impl(&dword_2994B7000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s:%i mode=%s counter=%d reference=%d osid=0x%02x othervalid=0x%02x", buf, 0x34u);
  }

  dispatch_get_specific(*v4);
  v37 = NFLogGetLogger();
  if (v37)
  {
    v37(6, "%s:%i migration=%s pkgs=%d inst=%d", "NfSecureElementUpdateOSInfo", 67, v14, *(v8 + 631), *(v8 + 632));
  }

  dispatch_get_specific(*v4);
  v38 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = *(v8 + 631);
    v40 = *(v8 + 632);
    *buf = 136447234;
    v67 = "NfSecureElementUpdateOSInfo";
    v68 = 1024;
    v69 = 67;
    v70 = 2080;
    v71 = v14;
    v72 = 1024;
    v73 = v39;
    v74 = 1024;
    v75 = v40;
    _os_log_impl(&dword_2994B7000, v38, OS_LOG_TYPE_DEFAULT, "%{public}s:%i migration=%s pkgs=%d inst=%d", buf, 0x28u);
  }

LABEL_71:
  v62 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t sub_2994C2B60(_DWORD *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i se=%d, enabled=%d", "NfSecureElementSetPower", 80, a1[2], a2);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[2];
    *buf = 136446978;
    v19 = "NfSecureElementSetPower";
    v20 = 1024;
    v21 = 80;
    v22 = 1024;
    v23 = v7;
    v24 = 1024;
    v25 = a2;
    _os_log_impl(&dword_2994B7000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i se=%d, enabled=%d", buf, 0x1Eu);
  }

  if (a2)
  {
    a1[2];
    v8 = *a1;
    if (NFDriverSetConfiguration())
    {
      usleep(0x7D0u);
      result = 1;
    }

    else
    {
      v11 = *(*a1 + 56);
      Message = NFDriverSerialDebugLastMessage();
      v13 = *MEMORY[0x29EDC9198];
      v14 = *a1;
      StackBreadcrumb = NFDriverGetStackBreadcrumb();
      v16 = &unk_2994C631B;
      if (Message)
      {
        v16 = Message;
      }

      sub_2994B8D74("com.apple.nfstack", v13, "Error 0x%04x at %s:%d: %llx %s", v13, "NfSecureElementSetPower", 86, StackBreadcrumb, v16);
      free(Message);
      result = 0;
    }
  }

  else
  {
    v10 = *a1;
    result = NFDriverSetConfiguration();
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2994C2D3C(_DWORD *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ", "NfSecureElementClose", 181);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "NfSecureElementClose";
    v10 = 1024;
    v11 = 181;
    _os_log_impl(&dword_2994B7000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
  }

  if (a1)
  {
    sub_2994C2B60(a1, 0);
    free(a1);
  }

  else
  {
    dispatch_get_specific(*v2);
    v5 = NFLogGetLogger();
    if (v5)
    {
      v5(3, "%s:%i se object is not valid", "NfSecureElementClose", 184);
    }

    dispatch_get_specific(*v2);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v9 = "NfSecureElementClose";
      v10 = 1024;
      v11 = 184;
      _os_log_impl(&dword_2994B7000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i se object is not valid", buf, 0x12u);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

BOOL sub_2994C2EDC(const char *a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDBB110];
  v3 = IOServiceNameMatching(a1);
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = MEMORY[0x29EDC9730];
  if (MatchingService)
  {
    v6 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"skip-spmi-reconfig", 0, 0);
    v8 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(v6);
  }

  else
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed find IOKit service %s", "NFHardwareSkipSpmiReconfig", 292, a1);
    }

    dispatch_get_specific(*v5);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v18 = "NFHardwareSkipSpmiReconfig";
      v19 = 1024;
      v20 = 292;
      v21 = 2080;
      v22 = a1;
      _os_log_impl(&dword_2994B7000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed find IOKit service %s", buf, 0x1Cu);
    }

    v8 = 0;
  }

  dispatch_get_specific(*v5);
  v11 = NFLogGetLogger();
  if (v11)
  {
    if (v8)
    {
      v12 = "not reconfigure";
    }

    else
    {
      v12 = "reconfigure";
    }

    v11(6, "%s:%i Will %s spmi for %s", "NFHardwareSkipSpmiReconfig", 295, v12, a1);
  }

  dispatch_get_specific(*v5);
  v13 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v14 = "not reconfigure";
    }

    else
    {
      v14 = "reconfigure";
    }

    *buf = 136446978;
    v18 = "NFHardwareSkipSpmiReconfig";
    v19 = 1024;
    v20 = 295;
    v21 = 2080;
    v22 = v14;
    v23 = 2080;
    v24 = a1;
    _os_log_impl(&dword_2994B7000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Will %s spmi for %s", buf, 0x26u);
  }

  v15 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t sub_2994C3114(const char *a1, const char *a2)
{
  v42 = *MEMORY[0x29EDCA608];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    v18 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to create property matching dictionary", "_NFHardwareFindMatchingService", 364);
    }

    dispatch_get_specific(*v18);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v37 = "_NFHardwareFindMatchingService";
      v38 = 1024;
      v39 = 364;
      _os_log_impl(&dword_2994B7000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to create property matching dictionary", buf, 0x12u);
    }

    goto LABEL_23;
  }

  v5 = Mutable;
  v6 = CFStringCreateWithCString(0, a2, 0x8000100u);
  if (!v6)
  {
    v21 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(3, "%s:%i Failed to create CF property string", "_NFHardwareFindMatchingService", 369);
    }

    dispatch_get_specific(*v21);
    v23 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446466;
    v37 = "_NFHardwareFindMatchingService";
    v38 = 1024;
    v39 = 369;
    v24 = "%{public}s:%i Failed to create CF property string";
    goto LABEL_21;
  }

  v7 = v6;
  CFDictionarySetValue(v5, @"IONameMatched", v6);
  CFRelease(v7);
  v8 = IOServiceMatching(a1);
  if (!v8)
  {
    v25 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v26 = NFLogGetLogger();
    if (v26)
    {
      v26(3, "%s:%i Failed to create matching dictionary", "_NFHardwareFindMatchingService", 378);
    }

    dispatch_get_specific(*v25);
    v23 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446466;
    v37 = "_NFHardwareFindMatchingService";
    v38 = 1024;
    v39 = 378;
    v24 = "%{public}s:%i Failed to create matching dictionary";
LABEL_21:
    _os_log_impl(&dword_2994B7000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x12u);
LABEL_22:
    CFRelease(v5);
LABEL_23:
    v27 = 0;
    goto LABEL_24;
  }

  v9 = v8;
  CFDictionarySetValue(v8, @"IOPropertyMatch", v5);
  CFRelease(v5);
  existing = 0;
  MatchingServices = IOServiceGetMatchingServices(*MEMORY[0x29EDBB110], v9, &existing);
  if (MatchingServices)
  {
    v11 = MatchingServices;
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Failed to lookup service : 0x%x", "_NFHardwareFindMatchingService", 403, v11);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 136446722;
    v37 = "_NFHardwareFindMatchingService";
    v38 = 1024;
    v39 = 403;
    v40 = 1024;
    v41 = v11;
    v15 = "%{public}s:%i Failed to lookup service : 0x%x";
    v16 = v14;
    v17 = 24;
    goto LABEL_37;
  }

  if (!existing || !IOIteratorIsValid(existing))
  {
    v33 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v34 = NFLogGetLogger();
    if (v34)
    {
      v34(3, "%s:%i Failed to get iterator for service", "_NFHardwareFindMatchingService", 395);
    }

    dispatch_get_specific(*v33);
    v32 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v37 = "_NFHardwareFindMatchingService";
    v38 = 1024;
    v39 = 395;
    v15 = "%{public}s:%i Failed to get iterator for service";
    goto LABEL_36;
  }

  v27 = IOIteratorNext(existing);
  if (v27)
  {
    goto LABEL_39;
  }

  v30 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v31 = NFLogGetLogger();
  if (v31)
  {
    v31(3, "%s:%i Failed to get valid service", "_NFHardwareFindMatchingService", 399);
  }

  dispatch_get_specific(*v30);
  v32 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v37 = "_NFHardwareFindMatchingService";
    v38 = 1024;
    v39 = 399;
    v15 = "%{public}s:%i Failed to get valid service";
LABEL_36:
    v16 = v32;
    v17 = 18;
LABEL_37:
    _os_log_impl(&dword_2994B7000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
  }

LABEL_38:
  v27 = 0;
LABEL_39:
  if (existing)
  {
    IOObjectRelease(existing);
  }

LABEL_24:
  v28 = *MEMORY[0x29EDCA608];
  return v27;
}

void sub_2994C3628()
{
  v35 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ----------------------- IOService plane --------------------------", "_NFHardwareDumpIOKit", 322);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v28 = "_NFHardwareDumpIOKit";
    v29 = 1024;
    v30 = 322;
    _os_log_impl(&dword_2994B7000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ----------------------- IOService plane --------------------------", buf, 0x12u);
  }

  v3 = *MEMORY[0x29EDBB110];
  v4 = IOServiceNameMatching("stockholm");
  MatchingService = IOServiceGetMatchingService(v3, v4);
  dispatch_get_specific(*v0);
  v6 = NFLogGetLogger();
  if (v6)
  {
    v6(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 324, "stockholm", MatchingService);
  }

  dispatch_get_specific(*v0);
  v7 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v28 = "_NFHardwareDumpIOKit";
    v29 = 1024;
    v30 = 324;
    v31 = 2080;
    v32 = "stockholm";
    v33 = 1024;
    v34 = MatchingService;
    _os_log_impl(&dword_2994B7000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(MatchingService);
  v8 = IOServiceNameMatching("stockholm-spmi");
  v9 = IOServiceGetMatchingService(v3, v8);
  dispatch_get_specific(*v0);
  v10 = NFLogGetLogger();
  if (v10)
  {
    v10(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 328, "stockholm-spmi", v9);
  }

  dispatch_get_specific(*v0);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v28 = "_NFHardwareDumpIOKit";
    v29 = 1024;
    v30 = 328;
    v31 = 2080;
    v32 = "stockholm-spmi";
    v33 = 1024;
    v34 = v9;
    _os_log_impl(&dword_2994B7000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(v9);
  v12 = IOServiceNameMatching("AppleStockholmSPMI");
  v13 = IOServiceGetMatchingService(v3, v12);
  dispatch_get_specific(*v0);
  v14 = NFLogGetLogger();
  if (v14)
  {
    v14(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 332, "AppleStockholmSPMI", v13);
  }

  dispatch_get_specific(*v0);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v28 = "_NFHardwareDumpIOKit";
    v29 = 1024;
    v30 = 332;
    v31 = 2080;
    v32 = "AppleStockholmSPMI";
    v33 = 1024;
    v34 = v13;
    _os_log_impl(&dword_2994B7000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(v13);
  v16 = IOServiceNameMatching("AppleStockholmControl");
  v17 = IOServiceGetMatchingService(v3, v16);
  dispatch_get_specific(*v0);
  v18 = NFLogGetLogger();
  if (v18)
  {
    v18(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 336, "AppleStockholmControl", v17);
  }

  dispatch_get_specific(*v0);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v28 = "_NFHardwareDumpIOKit";
    v29 = 1024;
    v30 = 336;
    v31 = 2080;
    v32 = "AppleStockholmControl";
    v33 = 1024;
    v34 = v17;
    _os_log_impl(&dword_2994B7000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(v17);
  v20 = IOServiceNameMatching("AppleStockholmControlUserClient");
  v21 = IOServiceGetMatchingService(v3, v20);
  dispatch_get_specific(*v0);
  v22 = NFLogGetLogger();
  if (v22)
  {
    v22(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 340, "AppleStockholmControlUserClient", v21);
  }

  dispatch_get_specific(*v0);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v28 = "_NFHardwareDumpIOKit";
    v29 = 1024;
    v30 = 340;
    v31 = 2080;
    v32 = "AppleStockholmControlUserClient";
    v33 = 1024;
    v34 = v21;
    _os_log_impl(&dword_2994B7000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(v21);
  dispatch_get_specific(*v0);
  v24 = NFLogGetLogger();
  if (v24)
  {
    v24(6, "%s:%i ----------------------- IOService plane --------------------------", "_NFHardwareDumpIOKit", 344);
  }

  dispatch_get_specific(*v0);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v28 = "_NFHardwareDumpIOKit";
    v29 = 1024;
    v30 = 344;
    _os_log_impl(&dword_2994B7000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ----------------------- IOService plane --------------------------", buf, 0x12u);
  }

  sub_2994C3EA4("stockholm");
  sub_2994C3EA4("stockholm-spmi");
  sub_2994C3EA4("AppleStockholmSPMI");
  sub_2994C3EA4("AppleStockholmControl");
  sub_2994C3EA4("AppleStockholmControlUserClient");
  sub_2994C3EA4("hammerfest");
  sub_2994C3EA4("AppleHammerfestSPMI");
  sub_2994C3EA4("AppleHammerfestControl");
  v26 = *MEMORY[0x29EDCA608];
}

uint64_t sub_2994C3C0C(const char *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  object = 0;
  RootEntry = IORegistryGetRootEntry(*MEMORY[0x29EDBB110]);
  if (MEMORY[0x29C29DDD0](RootEntry, "IOService", 1, &object))
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to create iterator", "_NFHardwareLookInTree", 308);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v11 = "_NFHardwareLookInTree";
      v12 = 1024;
      v13 = 308;
      _os_log_impl(&dword_2994B7000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to create iterator", buf, 0x12u);
    }

    v6 = 0;
  }

  else
  {
    v6 = sub_2994C46E0(object, a1);
    IOObjectRelease(object);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t sub_2994C3D4C(const char *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = "nfc,primary,gpio";
  if (a1 && strcasestr(a1, "hammerfest"))
  {
    v1 = "nfc,secondary,gpio";
  }

  LODWORD(result) = sub_2994C3114("AppleStockholmControl", v1);
  if (result)
  {
    goto LABEL_10;
  }

  v3 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Could not find service with: %s, retrying slow path", "NFHardwareSerialIsSupported", 544, v1);
  }

  dispatch_get_specific(*v3);
  v5 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "NFHardwareSerialIsSupported";
    v9 = 1024;
    v10 = 544;
    v11 = 2080;
    v12 = v1;
    _os_log_impl(&dword_2994B7000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Could not find service with: %s, retrying slow path", buf, 0x1Cu);
  }

  sub_2994C3628();
  result = sub_2994C3C0C(v1);
  if (result)
  {
LABEL_10:
    IOObjectRelease(result);
    result = 1;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2994C3EA4(const char *a1)
{
  v57 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDBB110];
  v3 = IOServiceNameMatching(a1);
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (MatchingService)
  {
    if (Logger)
    {
      Logger(6, "%s:%i %s found", "_NFHardwarePrintNode", 149, a1);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "_NFHardwarePrintNode";
      *&buf[12] = 1024;
      *&buf[14] = 149;
      *&buf[18] = 2080;
      *&buf[20] = a1;
      _os_log_impl(&dword_2994B7000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s found", buf, 0x1Cu);
    }

    child = 0;
    if (IORegistryEntryGetChildEntry(MatchingService, "IOService", &child))
    {
      dispatch_get_specific(*v5);
      v8 = NFLogGetLogger();
      if (v8)
      {
        v8(6, "%s:%i %s has no child", "_NFHardwarePrintNode", 162, a1);
      }

      dispatch_get_specific(*v5);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 162;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        _os_log_impl(&dword_2994B7000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has no child", buf, 0x1Cu);
      }
    }

    else if (child)
    {
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      v52 = 0u;
      v53 = 0u;
      memset(buf, 0, sizeof(buf));
      if (!MEMORY[0x29C29DE00]())
      {
        dispatch_get_specific(*v5);
        v11 = NFLogGetLogger();
        if (v11)
        {
          v11(6, "%s:%i %s has child %s", "_NFHardwarePrintNode", 157, a1, buf);
        }

        dispatch_get_specific(*v5);
        v12 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v43 = 136446978;
          v44 = "_NFHardwarePrintNode";
          v45 = 1024;
          v46 = 157;
          v47 = 2080;
          v48 = a1;
          v49 = 2080;
          v50 = buf;
          _os_log_impl(&dword_2994B7000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has child %s", v43, 0x26u);
        }
      }

      IOObjectRelease(child);
    }

    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IONameMatch", 0, 0);
    if (CFProperty)
    {
      v14 = CFProperty;
      v15 = sub_2994C4648(CFProperty);
      dispatch_get_specific(*v5);
      v16 = NFLogGetLogger();
      if (v16)
      {
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = "??";
        }

        v16(6, "%s:%i %s has property %s : %s", "_NFHardwarePrintNode", 168, a1, "IONameMatch", v17);
      }

      dispatch_get_specific(*v5);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        if (v15)
        {
          v19 = v15;
        }

        else
        {
          v19 = "??";
        }

        *buf = 136447234;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 168;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        *&buf[30] = "IONameMatch";
        *&buf[38] = 2080;
        *&buf[40] = v19;
        _os_log_impl(&dword_2994B7000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has property %s : %s", buf, 0x30u);
      }

      if (v15)
      {
        free(v15);
      }

      CFRelease(v14);
    }

    v20 = IORegistryEntryCreateCFProperty(MatchingService, @"IONameMatched", 0, 0);
    if (v20)
    {
      v21 = v20;
      v22 = sub_2994C4648(v20);
      dispatch_get_specific(*v5);
      v23 = NFLogGetLogger();
      if (v23)
      {
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = "??";
        }

        v23(6, "%s:%i %s has property %s : %s", "_NFHardwarePrintNode", 176, a1, "IONameMatched", v24);
      }

      dispatch_get_specific(*v5);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        if (v22)
        {
          v26 = v22;
        }

        else
        {
          v26 = "??";
        }

        *buf = 136447234;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 176;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        *&buf[30] = "IONameMatched";
        *&buf[38] = 2080;
        *&buf[40] = v26;
        _os_log_impl(&dword_2994B7000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has property %s : %s", buf, 0x30u);
      }

      if (v22)
      {
        free(v22);
      }

      CFRelease(v21);
    }

    v27 = IORegistryEntryCreateCFProperty(MatchingService, @"IOMatchCategory", 0, 0);
    if (v27)
    {
      v28 = v27;
      v29 = sub_2994C4648(v27);
      dispatch_get_specific(*v5);
      v30 = NFLogGetLogger();
      if (v30)
      {
        if (v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = "??";
        }

        v30(6, "%s:%i %s has property %s : %s", "_NFHardwarePrintNode", 184, a1, "IOMatchCategory", v31);
      }

      dispatch_get_specific(*v5);
      v32 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        if (v29)
        {
          v33 = v29;
        }

        else
        {
          v33 = "??";
        }

        *buf = 136447234;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 184;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        *&buf[30] = "IOMatchCategory";
        *&buf[38] = 2080;
        *&buf[40] = v33;
        _os_log_impl(&dword_2994B7000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has property %s : %s", buf, 0x30u);
      }

      if (v29)
      {
        free(v29);
      }

      CFRelease(v28);
    }

    v34 = IORegistryEntryCreateCFProperty(MatchingService, @"IOUserClientClass", 0, 0);
    if (v34)
    {
      v35 = v34;
      v36 = sub_2994C4648(v34);
      dispatch_get_specific(*v5);
      v37 = NFLogGetLogger();
      if (v37)
      {
        if (v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = "??";
        }

        v37(6, "%s:%i %s has property %s : %s", "_NFHardwarePrintNode", 192, a1, "IOUserClientClass", v38);
      }

      dispatch_get_specific(*v5);
      v39 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        if (v36)
        {
          v40 = v36;
        }

        else
        {
          v40 = "??";
        }

        *buf = 136447234;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 192;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        *&buf[30] = "IOUserClientClass";
        *&buf[38] = 2080;
        *&buf[40] = v40;
        _os_log_impl(&dword_2994B7000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has property %s : %s", buf, 0x30u);
      }

      if (v36)
      {
        free(v36);
      }

      CFRelease(v35);
    }

    IOObjectRelease(MatchingService);
  }

  else
  {
    if (Logger)
    {
      Logger(6, "%s:%i %s NOT found", "_NFHardwarePrintNode", 199, a1);
    }

    dispatch_get_specific(*v5);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "_NFHardwarePrintNode";
      *&buf[12] = 1024;
      *&buf[14] = 199;
      *&buf[18] = 2080;
      *&buf[20] = a1;
      _os_log_impl(&dword_2994B7000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s NOT found", buf, 0x1Cu);
    }
  }

  v41 = *MEMORY[0x29EDCA608];
}

char *sub_2994C4648(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFStringGetTypeID())
  {
    v3 = malloc_type_calloc(0x100uLL, 1uLL, 0x100004077774924uLL);
    if (v3)
    {
      CFStringGetCString(a1, v3, 256, 0x8000100u);
    }

    return v3;
  }

  else
  {

    return strdup(&unk_2994C631B);
  }
}

uint64_t sub_2994C46E0(io_iterator_t a1, const char *a2)
{
  v36 = *MEMORY[0x29EDCA608];
  v29 = 0;
  if (a1 && IOIteratorIsValid(a1))
  {
    v4 = MEMORY[0x29EDC9730];
    while (1)
    {
      v5 = IOIteratorNext(a1);
      if (!v5)
      {
        v13 = 0;
        goto LABEL_51;
      }

      v6 = v5;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(__s1, 0, sizeof(__s1));
      v7 = MEMORY[0x29C29DE00](v5, __s1) ? 0 : strdup(__s1);
      CFProperty = IORegistryEntryCreateCFProperty(v6, @"IONameMatch", 0, 0);
      if (CFProperty)
      {
        v9 = CFProperty;
        v10 = sub_2994C4648(CFProperty);
        if (!v10)
        {
          goto LABEL_12;
        }

        v11 = v10;
        if (strcmp(v10, a2))
        {
          goto LABEL_11;
        }

        dispatch_get_specific(*v4);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(6, "%s:%i Found property %s : %s", "_NFHardwareIsEntryMatching", 214, "IONameMatch", v11);
        }

        dispatch_get_specific(*v4);
        v15 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *__s1 = 136446978;
          *&__s1[4] = "_NFHardwareIsEntryMatching";
          *&__s1[12] = 1024;
          *&__s1[14] = 214;
          *&__s1[18] = 2080;
          *&__s1[20] = "IONameMatch";
          *&__s1[28] = 2080;
          *&__s1[30] = v11;
          _os_log_impl(&dword_2994B7000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found property %s : %s", __s1, 0x26u);
        }

        free(v11);
        CFRelease(v9);
        v16 = IORegistryEntryCreateCFProperty(v6, @"IOClass", 0, 0);
        if (v16)
        {
          break;
        }
      }

LABEL_13:
      if (MEMORY[0x29C29DDF0](v6, "IOService", &v29))
      {
        v12 = 0;
        v13 = 0;
      }

      else
      {
        IOObjectRelease(v6);
        v13 = sub_2994C46E0(v29, a2);
        v12 = v13 != 0;
        LODWORD(v6) = v29;
      }

      IOObjectRelease(v6);
      if (v7)
      {
        free(v7);
      }

      if (v12)
      {
        goto LABEL_51;
      }

      if (!IOIteratorIsValid(a1))
      {
        goto LABEL_46;
      }
    }

    v9 = v16;
    v17 = sub_2994C4648(v16);
    if (v17)
    {
      v11 = v17;
      if (!strcmp(v17, "AppleStockholmControl"))
      {
        dispatch_get_specific(*v4);
        v18 = NFLogGetLogger();
        if (v18)
        {
          v18(6, "%s:%i Found property %s : %s", "_NFHardwareIsEntryMatching", 226, "IOPropertyMatch", v11);
        }

        dispatch_get_specific(*v4);
        v19 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *__s1 = 136446978;
          *&__s1[4] = "_NFHardwareIsEntryMatching";
          *&__s1[12] = 1024;
          *&__s1[14] = 226;
          *&__s1[18] = 2080;
          *&__s1[20] = "IOPropertyMatch";
          *&__s1[28] = 2080;
          *&__s1[30] = v11;
          _os_log_impl(&dword_2994B7000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found property %s : %s", __s1, 0x26u);
        }

        free(v11);
        CFRelease(v9);
        dispatch_get_specific(*v4);
        v20 = NFLogGetLogger();
        if (v20)
        {
          if (v7)
          {
            v21 = v7;
          }

          else
          {
            v21 = "??";
          }

          v20(6, "%s:%i %s has matching {%s / %s}", "_NFHardwareWalkTree", 274, v21, "AppleStockholmControl", a2);
        }

        dispatch_get_specific(*v4);
        v22 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          if (v7)
          {
            v23 = v7;
          }

          else
          {
            v23 = "??";
          }

          *__s1 = 136447234;
          *&__s1[4] = "_NFHardwareWalkTree";
          *&__s1[12] = 1024;
          *&__s1[14] = 274;
          *&__s1[18] = 2080;
          *&__s1[20] = v23;
          *&__s1[28] = 2080;
          *&__s1[30] = "AppleStockholmControl";
          *&__s1[38] = 2080;
          *&__s1[40] = a2;
          _os_log_impl(&dword_2994B7000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has matching {%s / %s}", __s1, 0x30u);
        }

        if (v7)
        {
          free(v7);
        }

        v13 = v6;
        goto LABEL_51;
      }

LABEL_11:
      free(v11);
    }

LABEL_12:
    CFRelease(v9);
    goto LABEL_13;
  }

  v13 = 0;
LABEL_46:
  v24 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v25 = NFLogGetLogger();
  if (v25)
  {
    v25(3, "%s:%i Invalid iterator", "_NFHardwareWalkTree", 263);
  }

  dispatch_get_specific(*v24);
  v26 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *__s1 = 136446466;
    *&__s1[4] = "_NFHardwareWalkTree";
    *&__s1[12] = 1024;
    *&__s1[14] = 263;
    _os_log_impl(&dword_2994B7000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid iterator", __s1, 0x12u);
  }

LABEL_51:
  v27 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t sub_2994C4C04(char *__s2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!__s2 || !strncmp("com.apple.", __s2, 0xAuLL) || !strncmp("/dev/", __s2, 5uLL))
  {
    v7 = *MEMORY[0x29EDCA608];

    return sub_2994C3D4C(__s2);
  }

  else
  {
    v2 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Unmatched interface %s", "NFHardwareInterfaceIsSupported", 720, __s2);
    }

    dispatch_get_specific(*v2);
    v4 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "NFHardwareInterfaceIsSupported";
      v10 = 1024;
      v11 = 720;
      v12 = 2080;
      v13 = __s2;
      _os_log_impl(&dword_2994B7000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%i Unmatched interface %s", buf, 0x1Cu);
    }

    v5 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t sub_2994C4D84(UInt8 *a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDBB110];
  v3 = IOServiceNameMatching("stockholm-spmi");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    v5 = IOServiceNameMatching("stockholm");
    v6 = IOServiceGetMatchingService(v2, v5);
    if (v6)
    {
      v7 = v6;
      v8 = IORegistryEntrySearchCFProperty(v6, "IOService", @"se-spmi-irq", *MEMORY[0x29EDB8ED8], 0);
      if (v8)
      {
        v9 = v8;
        TypeID = CFDataGetTypeID();
        if (TypeID == CFGetTypeID(v9))
        {
          BytePtr = CFDataGetBytePtr(v9);
          if (BytePtr)
          {
            v12 = BytePtr;
            if (CFDataGetLength(v9))
            {
              *a1 = *v12;
            }
          }

          v13 = 1;
        }

        else
        {
          v13 = 0;
        }

        CFRelease(v9);
      }

      else
      {
        v13 = 0;
      }

      IOObjectRelease(v7);
    }

    else
    {
      v14 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Unexpected state.", "NFHardwareInterfaceHasExternalSPMIIRQ", 753);
      }

      dispatch_get_specific(*v14);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v20 = "NFHardwareInterfaceHasExternalSPMIIRQ";
        v21 = 1024;
        v22 = 753;
        _os_log_impl(&dword_2994B7000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected state.", buf, 0x12u);
      }

      v13 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = *MEMORY[0x29EDCA608];
  return v13;
}