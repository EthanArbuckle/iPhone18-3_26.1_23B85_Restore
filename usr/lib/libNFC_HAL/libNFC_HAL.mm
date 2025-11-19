void *phOsalNfc_SetMemory(int a1, void *__b, int __c, size_t __len)
{
  if (__b)
  {
    if (__len)
    {
      return memset(__b, __c, __len);
    }
  }

  return result;
}

uint64_t NFHardwareInterfaceReadBlock(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = *(*a1 + 24);
  if (v1)
  {
    v2 = *(*a1 + 144);
    v3 = *MEMORY[0x29EDCA608];

    return v1(v2);
  }

  else
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i No interface defined for reading", "NFHardwareInterfaceReadBlock", 395);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v10 = "NFHardwareInterfaceReadBlock";
      v11 = 1024;
      v12 = 395;
      _os_log_impl(&dword_297F52000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i No interface defined for reading", buf, 0x12u);
    }

    v8 = *MEMORY[0x29EDCA608];
    return 1;
  }
}

uint64_t phOsalNfc_Timer_Stop(int a1, const char *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = sub_297F52C6C(a1);
  if (v3)
  {
    v4 = v3;
    pthread_mutex_lock((v3 + 176));
    v5 = (v4 + 8);
    v6 = 10;
    do
    {
      if (*v5 == a2)
      {
        v11 = sub_297F52D00(v5, 0);
        goto LABEL_18;
      }

      v5 += 2;
      --v6;
    }

    while (v6);
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to get timer %llX from context", "phOsalNfc_Timer_Stop", 365, a2);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v18 = "phOsalNfc_Timer_Stop";
      v19 = 1024;
      v20 = 365;
      v21 = 2048;
      v22 = a2;
      _os_log_impl(&dword_297F52000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get timer %llX from context", buf, 0x1Cu);
    }

    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v18 = a2;
      _os_log_fault_impl(&dword_297F52000, v10, OS_LOG_TYPE_FAULT, "Error: Failed to get timer 0x%llX from context", buf, 0xCu);
    }

    v11 = 1;
LABEL_18:
    pthread_mutex_unlock((v4 + 176));
  }

  else
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Failed to get timer context", "phOsalNfc_Timer_Stop", 358);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v18 = "phOsalNfc_Timer_Stop";
      v19 = 1024;
      v20 = 358;
      _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get timer context", buf, 0x12u);
    }

    v11 = 49;
  }

  v15 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t sub_297F52C6C(int a1)
{
  os_unfair_lock_lock(&unk_2A18BD260);
  v2 = 0;
  v3 = 1;
  do
  {
    while (1)
    {
      v4 = v3;
      v5 = qword_2A18BD240[v2];
      if (v5)
      {
        break;
      }

      v3 = 0;
      v2 = 1;
      if ((v4 & 1) == 0)
      {
        v7 = 0;
        goto LABEL_10;
      }
    }

    v3 = 0;
    v6 = *(v5 + 240);
    v2 = 1;
  }

  while ((v4 & (v6 != a1)) != 0);
  if (v6 == a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

LABEL_10:
  os_unfair_lock_unlock(&unk_2A18BD260);
  return v7;
}

uint64_t sub_297F52D00(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      dispatch_source_set_timer(v4, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_source_cancel(*(a1 + 8));
      dispatch_release(*(a1 + 8));
      *(a1 + 8) = 0;
    }

    result = 0;
    if (a2)
    {
      *a1 = 0xFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Invalid timer", "_phOsalNfc_Timer_ClearTimer", 179);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v11 = "_phOsalNfc_Timer_ClearTimer";
      v12 = 1024;
      v13 = 179;
      _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid timer", buf, 0x12u);
    }

    result = 1;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t phTmlNfc_IoCtl(uint64_t a1, int a2, int a3)
{
  v125 = *MEMORY[0x29EDCA608];
  v6 = sub_297F557F8(a1);
  v7 = v6;
  if (a2 != 61680 && !v6)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_IoCtl", 913, "tml!=NULL");
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 136446722;
    *&buf[4] = "phTmlNfc_IoCtl";
    *&buf[12] = 1024;
    *&buf[14] = 913;
    *&buf[18] = 2080;
    *&buf[20] = "tml!=NULL";
LABEL_7:
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
LABEL_8:
    v11 = 49;
LABEL_9:
    v12 = *MEMORY[0x29EDCA608];
    return v11;
  }

  if (a2 <= 47)
  {
    if (a2 > 5)
    {
      if (a2 <= 20)
      {
        if (a2 == 6)
        {
          if (v6)
          {
            if (*(v6 + 36) == 218)
            {
              v65 = 90000;
            }

            else if (*(v6 + 104))
            {
              v65 = 100000;
            }

            else
            {
              v65 = 15000;
            }
          }

          else
          {
            v65 = 15000;
          }

          if (*(v6 + 105) == 1)
          {
            v91 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v92 = NFLogGetLogger();
            if (v92)
            {
              v92(6, "%s:%i phTmlNfc_e_PowerOff", "phTmlNfc_IoCtl", 965);
            }

            dispatch_get_specific(*v91);
            v93 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              *&buf[4] = "phTmlNfc_IoCtl";
              *&buf[12] = 1024;
              *&buf[14] = 965;
              _os_log_impl(&dword_297F52000, v93, OS_LOG_TYPE_DEFAULT, "%{public}s:%i phTmlNfc_e_PowerOff", buf, 0x12u);
            }
          }

          *(v7 + 136) = 0;
          v11 = sub_297F59A90(a1, 0);
          if (!v11)
          {
            usleep(v65);
          }

          goto LABEL_9;
        }

        if (a2 != 20)
        {
          goto LABEL_118;
        }

        v31 = *MEMORY[0x29EDCA608];
        v32 = a1;
        v33 = 0;
      }

      else
      {
        if (a2 != 21)
        {
          if (a2 == 39)
          {
            v54 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v55 = NFLogGetLogger();
            if (v55)
            {
              v55(6, "%s:%i phTmlNfc_e_Nfc_Rst_Client", "phTmlNfc_IoCtl", 1173);
            }

            dispatch_get_specific(*v54);
            v56 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              *&buf[4] = "phTmlNfc_IoCtl";
              *&buf[12] = 1024;
              *&buf[14] = 1173;
              _os_log_impl(&dword_297F52000, v56, OS_LOG_TYPE_DEFAULT, "%{public}s:%i phTmlNfc_e_Nfc_Rst_Client", buf, 0x12u);
            }

            v57 = sub_297F557F8(a1);
            if (!v57)
            {
              dispatch_get_specific(*v54);
              v77 = NFLogGetLogger();
              if (v77)
              {
                v77(3, "%s:%i FAILED: %s", "_phTmlNfc_FollowerReset", 814, "tml!=NULL");
              }

              dispatch_get_specific(*v54);
              v10 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_8;
              }

              *buf = 136446722;
              *&buf[4] = "_phTmlNfc_FollowerReset";
              *&buf[12] = 1024;
              *&buf[14] = 814;
              *&buf[18] = 2080;
              *&buf[20] = "tml!=NULL";
              goto LABEL_7;
            }

            v58 = v57;
            v59 = *(v57 + 112);
            if (!v59)
            {
              dispatch_get_specific(*v54);
              v108 = NFLogGetLogger();
              if (v108)
              {
                v108(3, "%s:%i FAILED: %s", "_phTmlNfc_FollowerReset", 815, "tml->ifc!=NULL");
              }

              dispatch_get_specific(*v54);
              v10 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_8;
              }

              *buf = 136446722;
              *&buf[4] = "_phTmlNfc_FollowerReset";
              *&buf[12] = 1024;
              *&buf[14] = 815;
              *&buf[18] = 2080;
              *&buf[20] = "tml->ifc!=NULL";
              goto LABEL_7;
            }

            v60 = *v59;
            v61 = *(*v59 + 232);
            if (v61 && v61(*(v60 + 264)))
            {
              v62 = **(v58 + 112);
              v63 = *(v62 + 224);
              v11 = 255;
              if (v63)
              {
                v64 = v63(*(v62 + 264)) & 1;
                if (v64)
                {
                  v11 = 179;
                }

                else
                {
                  v11 = 255;
                }
              }

              else
              {
                v64 = 0;
              }

              dispatch_get_specific(*v54);
              v112 = NFLogGetLogger();
              if (v112)
              {
                v112(3, "%s:%i Failed to issue follower reset. NACK = %d", "_phTmlNfc_FollowerReset", 821, v64);
              }

              dispatch_get_specific(*v54);
              v113 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "_phTmlNfc_FollowerReset";
                *&buf[12] = 1024;
                *&buf[14] = 821;
                *&buf[18] = 1024;
                *&buf[20] = v64;
                _os_log_impl(&dword_297F52000, v113, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to issue follower reset. NACK = %d", buf, 0x18u);
              }

              goto LABEL_9;
            }

            phTmlNfc_FlushTxRxBuffers(a1);
            usleep(0x2710u);
            goto LABEL_111;
          }

          if (a2 != 47)
          {
LABEL_118:
            v66 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v67 = NFLogGetLogger();
            if (v67)
            {
              v67(3, "%s:%i Invalid code: %d", "phTmlNfc_IoCtl", 1278, a2);
            }

            dispatch_get_specific(*v66);
            v68 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              *&buf[4] = "phTmlNfc_IoCtl";
              *&buf[12] = 1024;
              *&buf[14] = 1278;
              *&buf[18] = 1024;
              *&buf[20] = a2;
              _os_log_impl(&dword_297F52000, v68, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid code: %d", buf, 0x18u);
            }

            v11 = 1;
            goto LABEL_9;
          }

          if (a3)
          {
            if (a3 != 1)
            {
              v82 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v83 = NFLogGetLogger();
              if (v83)
              {
                v83(3, "%s:%i Invalid phTmlNfc_e_Driver_CRC_Config", "phTmlNfc_IoCtl", 1167);
              }

              dispatch_get_specific(*v82);
              v80 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_177;
              }

              *buf = 136446466;
              *&buf[4] = "phTmlNfc_IoCtl";
              *&buf[12] = 1024;
              *&buf[14] = 1167;
              v81 = "%{public}s:%i Invalid phTmlNfc_e_Driver_CRC_Config";
              goto LABEL_175;
            }

            v17 = *MEMORY[0x29EDCA608];
            v18 = a1;
            v19 = 1;
          }

          else
          {
            v78 = *MEMORY[0x29EDCA608];
            v18 = a1;
            v19 = 0;
          }

          return sub_297F5A2D4(v18, v19);
        }

        v38 = *MEMORY[0x29EDCA608];
        v32 = a1;
        v33 = 1;
      }

      return sub_297F56048(v32, v33);
    }

    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        if (v6)
        {
          if (*(v6 + 36) == 218)
          {
            v14 = 90000;
          }

          else if (*(v6 + 104))
          {
            v14 = 100000;
          }

          else
          {
            v14 = 15000;
          }
        }

        else
        {
          v14 = 15000;
        }

        if (*(v6 + 105) == 1)
        {
          v88 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v89 = NFLogGetLogger();
          if (v89)
          {
            v89(6, "%s:%i phTmlNfc_e_EnableDownloadMode", "phTmlNfc_IoCtl", 1056);
          }

          dispatch_get_specific(*v88);
          v90 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            *&buf[4] = "phTmlNfc_IoCtl";
            *&buf[12] = 1024;
            *&buf[14] = 1056;
            _os_log_impl(&dword_297F52000, v90, OS_LOG_TYPE_DEFAULT, "%{public}s:%i phTmlNfc_e_EnableDownloadMode", buf, 0x12u);
          }
        }

        v53 = sub_297F59CC4(a1, 1);
        if (v53)
        {
          goto LABEL_188;
        }

        usleep(0x1F4u);
        v53 = sub_297F59A90(a1, 0);
        if (v53)
        {
          goto LABEL_188;
        }

        if ((NFHardwareInterfaceResetSerial(*(v7 + 112)) & 1) == 0)
        {
          v109 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v110 = NFLogGetLogger();
          if (v110)
          {
            v110(3, "%s:%i failed to reset serial", "phTmlNfc_IoCtl", 1065);
          }

          dispatch_get_specific(*v109);
          v111 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "phTmlNfc_IoCtl";
            *&buf[12] = 1024;
            *&buf[14] = 1065;
            _os_log_impl(&dword_297F52000, v111, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to reset serial", buf, 0x12u);
          }
        }

LABEL_136:
        usleep(v14);
        v11 = sub_297F59A90(a1, 1);
        if (!v11)
        {
          usleep(0x2710u);
          *(v7 + 136) = 1;
        }

        goto LABEL_9;
      }

      if (a2 != 2)
      {
        goto LABEL_118;
      }

      v26 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v27 = NFLogGetLogger();
      if (v27)
      {
        v27(6, "%s:%i phTmlNfc_e_EnableDownloadMode_NO_VEN", "phTmlNfc_IoCtl", 1101);
      }

      dispatch_get_specific(*v26);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "phTmlNfc_IoCtl";
        *&buf[12] = 1024;
        *&buf[14] = 1101;
        _os_log_impl(&dword_297F52000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s:%i phTmlNfc_e_EnableDownloadMode_NO_VEN", buf, 0x12u);
      }

      v29 = a1;
      v30 = 1;
    }

    else
    {
      if (a2 != 4)
      {
        if (v6)
        {
          if (*(v6 + 36) == 218)
          {
            v14 = 90000;
          }

          else if (*(v6 + 104))
          {
            v14 = 100000;
          }

          else
          {
            v14 = 15000;
          }
        }

        else
        {
          v14 = 15000;
        }

        if (*(v6 + 105) == 1)
        {
          v69 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v70 = NFLogGetLogger();
          if (v70)
          {
            v70(6, "%s:%i phTmlNfc_e_EnableNormalMode", "phTmlNfc_IoCtl", 993);
          }

          dispatch_get_specific(*v69);
          v71 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            *&buf[4] = "phTmlNfc_IoCtl";
            *&buf[12] = 1024;
            *&buf[14] = 993;
            _os_log_impl(&dword_297F52000, v71, OS_LOG_TYPE_DEFAULT, "%{public}s:%i phTmlNfc_e_EnableNormalMode", buf, 0x12u);
          }
        }

        if ((*(v7 + 137) & 1) == 0)
        {
          v53 = sub_297F59CC4(a1, 0);
          if (v53)
          {
            goto LABEL_188;
          }

          usleep(0x1F4u);
        }

        v53 = sub_297F59A90(a1, 0);
        if (!v53)
        {
          goto LABEL_136;
        }

LABEL_188:
        v11 = v53;
        goto LABEL_9;
      }

      if (*(v6 + 137))
      {
LABEL_95:
        v11 = sub_297F59A90(a1, 1);
        if (!v11)
        {
          usleep(0x2710u);
          phTmlNfc_FlushTxRxBuffers(a1);
        }

        goto LABEL_9;
      }

      v29 = a1;
      v30 = 0;
    }

    v53 = sub_297F59CC4(v29, v30);
    if (v53)
    {
      goto LABEL_188;
    }

    goto LABEL_95;
  }

  if (a2 > 61442)
  {
    if (a2 > 61681)
    {
      if (a2 == 61682 || a2 == 61683)
      {
        sub_297F5A0C4(v6);
        goto LABEL_111;
      }

      if (a2 == 61695)
      {
        if (v6)
        {
          v20 = *(v6 + 112);
        }

        else
        {
          v20 = 0;
        }

        if (NFHardwareDebug(v20))
        {
          v11 = 0;
        }

        else
        {
          v11 = 11;
        }

        goto LABEL_9;
      }

      goto LABEL_118;
    }

    if (a2 != 61443)
    {
      if (a2 == 61680)
      {
        NFHardwareSerialDump_0();
        goto LABEL_111;
      }

      if (a2 == 61681)
      {
        if (!v6)
        {
          v74 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v75 = NFLogGetLogger();
          if (v75)
          {
            v75(3, "%s:%i FAILED: %s", "_phTmlNfc_DebugMWUnload", 875, "tml!=NULL");
          }

          dispatch_get_specific(*v74);
          v76 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_111;
          }

          *buf = 136446722;
          *&buf[4] = "_phTmlNfc_DebugMWUnload";
          *&buf[12] = 1024;
          *&buf[14] = 875;
          *&buf[18] = 2080;
          *&buf[20] = "tml!=NULL";
          goto LABEL_212;
        }

        if (*(v6 + 112))
        {
          v11 = 0;
          *(v6 + 1) = 1;
          goto LABEL_9;
        }

        v106 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v107 = NFLogGetLogger();
        if (v107)
        {
          v107(3, "%s:%i FAILED: %s", "_phTmlNfc_DebugMWUnload", 876, "tml->ifc!=NULL");
        }

        dispatch_get_specific(*v106);
        v76 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "_phTmlNfc_DebugMWUnload";
          *&buf[12] = 1024;
          *&buf[14] = 876;
          *&buf[18] = 2080;
          *&buf[20] = "tml->ifc!=NULL";
LABEL_212:
          _os_log_impl(&dword_297F52000, v76, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
        }

LABEL_111:
        v11 = 0;
        goto LABEL_9;
      }

      goto LABEL_118;
    }

    v39 = sub_297F557F8(a1);
    if (!v39)
    {
      v72 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v73 = NFLogGetLogger();
      if (v73)
      {
        v73(3, "%s:%i FAILED: %s", "_phTmlNfc_QuerySPMIErrors", 850, "tml!=NULL");
      }

      dispatch_get_specific(*v72);
      v10 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      *buf = 136446722;
      *&buf[4] = "_phTmlNfc_QuerySPMIErrors";
      *&buf[12] = 1024;
      *&buf[14] = 850;
      *&buf[18] = 2080;
      *&buf[20] = "tml!=NULL";
      goto LABEL_7;
    }

    v40 = *(v39 + 112);
    if (!v40)
    {
      v104 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v105 = NFLogGetLogger();
      if (v105)
      {
        v105(3, "%s:%i FAILED: %s", "_phTmlNfc_QuerySPMIErrors", 851, "tml->ifc!=NULL");
      }

      dispatch_get_specific(*v104);
      v10 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      *buf = 136446722;
      *&buf[4] = "_phTmlNfc_QuerySPMIErrors";
      *&buf[12] = 1024;
      *&buf[14] = 851;
      *&buf[18] = 2080;
      *&buf[20] = "tml->ifc!=NULL";
      goto LABEL_7;
    }

    v123 = 0u;
    v124 = 0u;
    memset(buf, 0, sizeof(buf));
    v114 = 64;
    v41 = *v40;
    v42 = *(*v40 + 128);
    if (v42 && v42(*(v41 + 144), buf, &v114, 31))
    {
      if (v114 >= 3)
      {
        v43 = buf;
        v44 = 3;
        v45 = MEMORY[0x29EDC9730];
        do
        {
          if (!*v43)
          {
            break;
          }

          dispatch_get_specific(*v45);
          v46 = NFLogGetLogger();
          if (v46)
          {
            v46(3, "%s:%i SPMI register 0x%02X = 0x%02X", "_phTmlNfc_QuerySPMIErrors", 866, *v43, v43[2]);
          }

          dispatch_get_specific(*v45);
          v47 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v48 = *v43;
            v49 = v43[2];
            *v115 = 136446978;
            v116 = "_phTmlNfc_QuerySPMIErrors";
            v117 = 1024;
            v118 = 866;
            v119 = 1024;
            *v120 = v48;
            *&v120[4] = 1024;
            *&v120[6] = v49;
            _os_log_impl(&dword_297F52000, v47, OS_LOG_TYPE_ERROR, "%{public}s:%i SPMI register 0x%02X = 0x%02X", v115, 0x1Eu);
          }

          v44 += 3;
          v43 += 3;
        }

        while (v114 >= v44);
      }

      goto LABEL_111;
    }

    v94 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v95 = NFLogGetLogger();
    if (v95)
    {
      v96 = v95;
      v97 = __error();
      v98 = strerror(*v97);
      v99 = __error();
      v96(3, "%s:%i %s errno=%d Failed to query SPMI error registers", "_phTmlNfc_QuerySPMIErrors", 857, v98, *v99);
    }

    dispatch_get_specific(*v94);
    v100 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
LABEL_177:
      v11 = 255;
      goto LABEL_9;
    }

    v101 = __error();
    v102 = strerror(*v101);
    v103 = *__error();
    *v115 = 136446978;
    v116 = "_phTmlNfc_QuerySPMIErrors";
    v117 = 1024;
    v118 = 857;
    v119 = 2080;
    *v120 = v102;
    *&v120[8] = 1024;
    v121 = v103;
    v81 = "%{public}s:%i %s errno=%d Failed to query SPMI error registers";
    v85 = v115;
    v86 = v100;
    v87 = 34;
LABEL_176:
    _os_log_impl(&dword_297F52000, v86, OS_LOG_TYPE_ERROR, v81, v85, v87);
    goto LABEL_177;
  }

  if (a2 < 61440)
  {
    if (a2 == 48)
    {
      v50 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v51 = NFLogGetLogger();
      if (v51)
      {
        v51(6, "%s:%i phTmlNfc_e_Nfc_Tuning %d", "phTmlNfc_IoCtl", 1181, a3);
      }

      dispatch_get_specific(*v50);
      v52 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        *&buf[4] = "phTmlNfc_IoCtl";
        *&buf[12] = 1024;
        *&buf[14] = 1181;
        *&buf[18] = 1024;
        *&buf[20] = a3;
        _os_log_impl(&dword_297F52000, v52, OS_LOG_TYPE_DEFAULT, "%{public}s:%i phTmlNfc_e_Nfc_Tuning %d", buf, 0x18u);
      }

      if (!a3)
      {
        v24 = a1;
        v25 = 24;
        goto LABEL_162;
      }

      if (a3 == 1)
      {
        v24 = a1;
        v25 = 25;
        goto LABEL_162;
      }

      dispatch_get_specific(*v50);
      v84 = NFLogGetLogger();
      if (v84)
      {
        v84(3, "%s:%i Invalid phTmlNfc_e_Nfc_Tuning", "phTmlNfc_IoCtl", 1187);
      }

      dispatch_get_specific(*v50);
      v80 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_177;
      }

      *buf = 136446466;
      *&buf[4] = "phTmlNfc_IoCtl";
      *&buf[12] = 1024;
      *&buf[14] = 1187;
      v81 = "%{public}s:%i Invalid phTmlNfc_e_Nfc_Tuning";
    }

    else
    {
      if (a2 != 49)
      {
        goto LABEL_118;
      }

      v21 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v22 = NFLogGetLogger();
      if (v22)
      {
        v22(6, "%s:%i phTmlNfc_e_Nfc_CoreDump_Trig %d", "phTmlNfc_IoCtl", 1193, a3);
      }

      dispatch_get_specific(*v21);
      v23 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        *&buf[4] = "phTmlNfc_IoCtl";
        *&buf[12] = 1024;
        *&buf[14] = 1193;
        *&buf[18] = 1024;
        *&buf[20] = a3;
        _os_log_impl(&dword_297F52000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s:%i phTmlNfc_e_Nfc_CoreDump_Trig %d", buf, 0x18u);
      }

      if (!a3)
      {
        v24 = a1;
        v25 = 26;
        goto LABEL_162;
      }

      if (a3 == 1)
      {
        v24 = a1;
        v25 = 27;
LABEL_162:
        v53 = sub_297F5A4D4(v24, v25);
        goto LABEL_188;
      }

      dispatch_get_specific(*v21);
      v79 = NFLogGetLogger();
      if (v79)
      {
        v79(3, "%s:%i Invalid phTmlNfc_e_Nfc_CoreDump_Trig", "phTmlNfc_IoCtl", 1199);
      }

      dispatch_get_specific(*v21);
      v80 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_177;
      }

      *buf = 136446466;
      *&buf[4] = "phTmlNfc_IoCtl";
      *&buf[12] = 1024;
      *&buf[14] = 1199;
      v81 = "%{public}s:%i Invalid phTmlNfc_e_Nfc_CoreDump_Trig";
    }

LABEL_175:
    v85 = buf;
    v86 = v80;
    v87 = 18;
    goto LABEL_176;
  }

  if (a2 == 61440)
  {
    v34 = *MEMORY[0x29EDCA608];
    v35 = a1;
    v36 = 1;
  }

  else
  {
    if (a2 != 61441)
    {
      v15 = **(v6 + 112);
      v16 = *(v15 + 200);
      if (!v16 || !v16(*(v15 + 264)))
      {
        v11 = 51;
        goto LABEL_9;
      }

      goto LABEL_111;
    }

    v37 = *MEMORY[0x29EDCA608];
    v35 = a1;
    v36 = 0;
  }

  return sub_297F59EC4(v35, v36);
}

uint64_t sub_297F543EC(uint64_t a1)
{
  v46 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  data = dispatch_source_get_data(*(*(*(a1 + 48) + 8) + 112));
  if (data < v2)
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Only %lu bytes available, requested %zu !", "NFHardwareSerialReadBlock_block_invoke", 683, data, *(a1 + 40));
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 136446978;
      v37 = "NFHardwareSerialReadBlock_block_invoke";
      v38 = 1024;
      v39 = 683;
      v40 = 2048;
      v41 = data;
      v42 = 2048;
      v43 = v7;
      _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Only %lu bytes available, requested %zu !", buf, 0x26u);
    }
  }

  v8 = *(a1 + 56);
  if (!v8)
  {
    v31 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v32 = NFLogGetLogger();
    if (v32)
    {
      v32(3, "%s:%i FAILED: %s", "_NFHardwareSerialRead", 639, "buffer!=((void*)0)");
    }

    dispatch_get_specific(*v31);
    v33 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v37 = "_NFHardwareSerialRead";
      v38 = 1024;
      v39 = 639;
      v40 = 2080;
      v41 = "buffer!=((void*)0)";
LABEL_31:
      _os_log_impl(&dword_297F52000, v33, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

LABEL_32:
    abort();
  }

  if (!v2)
  {
    v34 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v35 = NFLogGetLogger();
    if (v35)
    {
      v35(3, "%s:%i FAILED: %s", "_NFHardwareSerialRead", 640, "*length>0");
    }

    dispatch_get_specific(*v34);
    v33 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v37 = "_NFHardwareSerialRead";
      v38 = 1024;
      v39 = 640;
      v40 = 2080;
      v41 = "*length>0";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v9 = *(a1 + 48);
  v10 = read(*v9, *(a1 + 56), v2);
  if (v10 < 0)
  {
    v14 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v16 = v15;
      v17 = __error();
      v18 = strerror(*v17);
      v19 = __error();
      v16(3, "%s:%i %s errno=%d ", "_NFHardwareSerialRead", 646, v18, *v19);
    }

    dispatch_get_specific(*v14);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = __error();
      v22 = strerror(*v21);
      v23 = *__error();
      *buf = 136446978;
      v37 = "_NFHardwareSerialRead";
      v38 = 1024;
      v39 = 646;
      v40 = 2080;
      v41 = v22;
      v42 = 1024;
      LODWORD(v43) = v23;
      _os_log_impl(&dword_297F52000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d ", buf, 0x22u);
    }

    v13 = 0;
  }

  else
  {
    v11 = *(v9 + 8);
    v12 = *(v11 + 80);
    if (v12)
    {
      v12(*(v11 + 96), 7, "[RX<]", v8, v10);
      v11 = *(v9 + 8);
    }

    sub_297F54914(*(v11 + 88), 3, v8, v10);
    v13 = v10;
  }

  dispatch_suspend(*(*(*(a1 + 48) + 8) + 112));
  v24 = *(*(a1 + 48) + 8);
  ++*(v24 + 120);
  *(v24 + 128) = 0;
  if (v13 < *(a1 + 40))
  {
    v25 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v26 = NFLogGetLogger();
    if (v26)
    {
      v26(6, "%s:%i Only got %zu bytes, requested %zu, available %lu.", "NFHardwareSerialReadBlock_block_invoke", 698, v13, *(a1 + 40), data);
    }

    dispatch_get_specific(*v25);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 40);
      *buf = 136447234;
      v37 = "NFHardwareSerialReadBlock_block_invoke";
      v38 = 1024;
      v39 = 698;
      v40 = 2048;
      v41 = v13;
      v42 = 2048;
      v43 = v28;
      v44 = 2048;
      v45 = data;
      _os_log_impl(&dword_297F52000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Only got %zu bytes, requested %zu, available %lu.", buf, 0x30u);
    }
  }

  result = (*(*(a1 + 32) + 16))();
  v30 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297F54914(os_unfair_lock_s *a1, int a2, char *a3, unint64_t a4)
{
  v39 = *MEMORY[0x29EDCA608];
  v34.tv_sec = 0;
  *&v34.tv_usec = 0;
  gettimeofday(&v34, 0);
  os_unfair_lock_lock(a1 + 23);
  v8 = *&a1[4]._os_unfair_lock_opaque;
  if (v8)
  {
    v9 = *&a1[10]._os_unfair_lock_opaque;
    v10 = *v9;
    if (!*v9)
    {
      *v9 = v8;
      v10 = v8;
    }

    v11 = &v8[a1[6]._os_unfair_lock_opaque];
    if (a1->_os_unfair_lock_opaque >= a4)
    {
      v12._os_unfair_lock_opaque = a4;
    }

    else
    {
      v12._os_unfair_lock_opaque = a1->_os_unfair_lock_opaque;
    }

    v13 = v12._os_unfair_lock_opaque + 16;
    if ((v12._os_unfair_lock_opaque + 16) >= 1)
    {
      v14 = *&a1[8]._os_unfair_lock_opaque;
      v15 = 1;
      v16 = v10;
      while (1)
      {
        v17 = v14 - v16;
        if (v14 < v16 || v14 == v9 && v14 == v16 && v16 == v8)
        {
          break;
        }

        if (v17 >= v13)
        {
          goto LABEL_24;
        }

        v19 = *v14;
        *&a1[8]._os_unfair_lock_opaque = *v14;
        --a1[14]._os_unfair_lock_opaque;
        if (v14 <= v19)
        {
          LODWORD(v17) = v19 - v16;
          v14 = v19;
LABEL_24:
          v18 = v17;
LABEL_16:
          v15 = 0;
          v13 -= v18;
          v16 += v17;
          if (v16 >= v11)
          {
            v16 = v8;
          }

          goto LABEL_18;
        }

        v14 = v19;
LABEL_18:
        if (v13 <= 0)
        {
          goto LABEL_25;
        }
      }

      LODWORD(v17) = v11 - v16;
      if ((v15 & (((v11 - v16) & 0xFFFFFFF0) == 0)) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = v11 - v16;
      }

      goto LABEL_16;
    }

LABEL_25:
    if ((v10 + 16) > v11)
    {
      *v9 = v8;
      v10 = v8;
    }

    v21 = LOBYTE(a1[22]._os_unfair_lock_opaque) == 1 && (a2 == 3 || a2 == 5);
    tv_usec = v34.tv_usec;
    os_unfair_lock_opaque = a1[20]._os_unfair_lock_opaque;
    if (v34.tv_usec <= os_unfair_lock_opaque)
    {
      tv_usec = v34.tv_usec + 1000000;
    }

    *(v10 + 2) = (LODWORD(v34.tv_sec) - a1[18]._os_unfair_lock_opaque - (v34.tv_usec <= os_unfair_lock_opaque)) & 0x3FFFFF | ((((274877907 * (tv_usec - os_unfair_lock_opaque)) >> 38) + ((274877907 * (tv_usec - os_unfair_lock_opaque)) >> 63)) << 22);
    v10[14] = a2;
    *(v10 + 6) = a4;
    v28 = v10 + 15;
    v29 = v11 - (v10 + 15);
    if (v12._os_unfair_lock_opaque >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = v12._os_unfair_lock_opaque;
    }

    if (v12._os_unfair_lock_opaque > v29)
    {
      v31 = v10 + 15;
      if (v21)
      {
        memset(v31, 222, v30);
      }

      else
      {
        memcpy(v31, a3, v30);
      }

      v12._os_unfair_lock_opaque -= v30;
      a3 += v30;
      v28 = *&a1[4]._os_unfair_lock_opaque;
    }

    if (v12._os_unfair_lock_opaque)
    {
      v32 = v12._os_unfair_lock_opaque;
      if (v21)
      {
        memset(v28, 222, v12._os_unfair_lock_opaque);
      }

      else
      {
        memcpy(v28, a3, v12._os_unfair_lock_opaque);
      }
    }

    else
    {
      v32 = 0;
    }

    *v10 = &v28[v32];
    *&a1[10]._os_unfair_lock_opaque = v10;
    ++a1[14]._os_unfair_lock_opaque;
    if (v10[14] == 5)
    {
      *&a1[12]._os_unfair_lock_opaque = v10;
    }

    v33 = *MEMORY[0x29EDCA608];

    os_unfair_lock_unlock(a1 + 23);
  }

  else
  {
    v22 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Buffers not allocated", "NFHardwareSerialDebugLog", 298);
    }

    dispatch_get_specific(*v22);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v36 = "NFHardwareSerialDebugLog";
      v37 = 1024;
      v38 = 298;
      _os_log_impl(&dword_297F52000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%i Buffers not allocated", buf, 0x12u);
    }

    os_unfair_lock_unlock(a1 + 23);
    v25 = *MEMORY[0x29EDCA608];
  }
}

void sub_297F54C98(void *a1, unsigned __int16 a2, int a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = a1[4];
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 255;
  }

  v17[0] = v5;
  v17[1] = v4;
  v17[2] = a2;
  if ((a3 & 1) == 0)
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to read", "phTmlNfc_Read_block_invoke", 487);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v19 = "phTmlNfc_Read_block_invoke";
      v20 = 1024;
      LODWORD(v21) = 487;
      _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to read", buf, 0x12u);
    }
  }

  v9 = a1[5];
  HIDWORD(v17[0]) = v9[120];
  if (v9[1] == 1)
  {
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v14 = a1[6];
      v13 = a1[7];
      v15 = a1[5];
      v16 = *(v15 + 144);
      LODWORD(v15) = *(v15 + 152);
      *buf = 134218752;
      v19 = v14;
      v20 = 2048;
      v21 = v13;
      v22 = 2048;
      v23 = v16;
      v24 = 1024;
      v25 = v15;
      _os_log_fault_impl(&dword_297F52000, v10, OS_LOG_TYPE_FAULT, "Error : read received after shutdown : %p / %p. Driver context %llu, Controller config type %d", buf, 0x26u);
    }

    v9 = a1[5];
    v9[1] = 0;
  }

  if (*v9 == 1)
  {
    v11 = a1[6];
    if (v11)
    {
      v9[2] = 0;
      v11(a1[7], v17);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t phTmlNfc_Read(uint64_t a1, uint64_t a2, int a3, const char *a4, const void *a5)
{
  v51 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v40 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_Read", 468, "pBuffer!=((void*)0)");
    }

    dispatch_get_specific(*v40);
    v42 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v46 = "phTmlNfc_Read";
      v47 = 1024;
      *v48 = 468;
      *&v48[4] = 2080;
      *&v48[6] = "pBuffer!=((void*)0)";
LABEL_67:
      _os_log_impl(&dword_297F52000, v42, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

LABEL_68:
    abort();
  }

  if (!a3)
  {
    v43 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v44 = NFLogGetLogger();
    if (v44)
    {
      v44(3, "%s:%i FAILED: %s", "phTmlNfc_Read", 469, "wLength>0");
    }

    dispatch_get_specific(*v43);
    v42 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v46 = "phTmlNfc_Read";
      v47 = 1024;
      *v48 = 469;
      *&v48[4] = 2080;
      *&v48[6] = "wLength>0";
      goto LABEL_67;
    }

    goto LABEL_68;
  }

  v7 = sub_297F557F8(a1);
  if (!v7)
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i FAILED: %s", "phTmlNfc_Read", 472, "tml!=NULL");
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 136446722;
    v46 = "phTmlNfc_Read";
    v47 = 1024;
    *v48 = 472;
    *&v48[4] = 2080;
    *&v48[6] = "tml!=NULL";
LABEL_26:
    _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    goto LABEL_27;
  }

  v8 = v7;
  if (!*(v7 + 112))
  {
    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i FAILED: %s", "phTmlNfc_Read", 473, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v15);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 136446722;
    v46 = "phTmlNfc_Read";
    v47 = 1024;
    *v48 = 473;
    *&v48[4] = 2080;
    *&v48[6] = "tml->ifc!=NULL";
    goto LABEL_26;
  }

  if ((*v7 & 1) == 0)
  {
    v17 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v18(3, "%s:%i FAILED: %s", "phTmlNfc_Read", 474, "tml->isRunning");
    }

    dispatch_get_specific(*v17);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 136446722;
    v46 = "phTmlNfc_Read";
    v47 = 1024;
    *v48 = 474;
    *&v48[4] = 2080;
    *&v48[6] = "tml->isRunning";
    goto LABEL_26;
  }

  if (*(v7 + 1) == 1)
  {
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v46 = a4;
      v47 = 2048;
      *v48 = a5;
      _os_log_fault_impl(&dword_297F52000, v9, OS_LOG_TYPE_FAULT, "Error : read received after shutdown : %p / %p", buf, 0x16u);
    }
  }

  Block = NFHardwareInterfaceReadBlock(*(v8 + 112));
  if (Block == -1)
  {
    v20 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(3, "%s:%i Failed to read : busy. Pending read = %d", "phTmlNfc_Read", 514, *(v8 + 2));
    }

    dispatch_get_specific(*v20);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *(v8 + 2);
      *buf = 136446722;
      v46 = "phTmlNfc_Read";
      v47 = 1024;
      *v48 = 514;
      *&v48[4] = 1024;
      *&v48[6] = v23;
      _os_log_impl(&dword_297F52000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to read : busy. Pending read = %d", buf, 0x18u);
    }

    if (!NFIsInternalBuild())
    {
      result = 111;
      goto LABEL_28;
    }

    dispatch_get_specific(*v20);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v24(6, "%s:%i Debug : Pending read cb = %p, context = %p", "phTmlNfc_Read", 516, *(v8 + 8), *(v8 + 16));
    }

    dispatch_get_specific(*v20);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(v8 + 8);
      v27 = *(v8 + 16);
      *buf = 136446978;
      v46 = "phTmlNfc_Read";
      v47 = 1024;
      *v48 = 516;
      *&v48[4] = 2048;
      *&v48[6] = v26;
      v49 = 2048;
      v50 = v27;
      _os_log_impl(&dword_297F52000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Debug : Pending read cb = %p, context = %p", buf, 0x26u);
    }

    dispatch_get_specific(*v20);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v28(6, "%s:%i Debug : Current read cb = %p, context = %p", "phTmlNfc_Read", 517, a4, a5);
    }

    dispatch_get_specific(*v20);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v46 = "phTmlNfc_Read";
      v47 = 1024;
      *v48 = 517;
      *&v48[4] = 2048;
      *&v48[6] = a4;
      v49 = 2048;
      v50 = a5;
      _os_log_impl(&dword_297F52000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Debug : Current read cb = %p, context = %p", buf, 0x26u);
    }

    *(v8 + 2) = 0;
    result = 111;
    goto LABEL_57;
  }

  if (Block)
  {
    v30 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v31(3, "%s:%i Failed to read : not initialized. Pending read = %d", "phTmlNfc_Read", 524, *(v8 + 2));
    }

    dispatch_get_specific(*v30);
    v32 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = *(v8 + 2);
      *buf = 136446722;
      v46 = "phTmlNfc_Read";
      v47 = 1024;
      *v48 = 524;
      *&v48[4] = 1024;
      *&v48[6] = v33;
      _os_log_impl(&dword_297F52000, v32, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to read : not initialized. Pending read = %d", buf, 0x18u);
    }

    if (NFIsInternalBuild())
    {
      dispatch_get_specific(*v30);
      v34 = NFLogGetLogger();
      if (v34)
      {
        v34(6, "%s:%i Debug : Pending read cb = %p, context = %p", "phTmlNfc_Read", 526, *(v8 + 8), *(v8 + 16));
      }

      dispatch_get_specific(*v30);
      v35 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(v8 + 8);
        v37 = *(v8 + 16);
        *buf = 136446978;
        v46 = "phTmlNfc_Read";
        v47 = 1024;
        *v48 = 526;
        *&v48[4] = 2048;
        *&v48[6] = v36;
        v49 = 2048;
        v50 = v37;
        _os_log_impl(&dword_297F52000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Debug : Pending read cb = %p, context = %p", buf, 0x26u);
      }

      dispatch_get_specific(*v30);
      v38 = NFLogGetLogger();
      if (v38)
      {
        v38(6, "%s:%i Debug : Current read cb = %p, context = %p", "phTmlNfc_Read", 527, a4, a5);
      }

      dispatch_get_specific(*v30);
      v39 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v46 = "phTmlNfc_Read";
        v47 = 1024;
        *v48 = 527;
        *&v48[4] = 2048;
        *&v48[6] = a4;
        v49 = 2048;
        v50 = a5;
        _os_log_impl(&dword_297F52000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Debug : Current read cb = %p, context = %p", buf, 0x26u);
      }

      *(v8 + 2) = 0;
      result = 49;
LABEL_57:
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      goto LABEL_28;
    }

LABEL_27:
    result = 49;
    goto LABEL_28;
  }

  if (NFIsInternalBuild())
  {
    *(v8 + 2) = 1;
    *(v8 + 8) = a4;
    *(v8 + 16) = a5;
  }

  result = 13;
LABEL_28:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297F557F8(uint64_t a1)
{
  os_unfair_lock_lock(&unk_2A18BD210);
  v2 = 0;
  for (i = 1; ; i = 0)
  {
    v4 = i;
    v5 = &unk_2A18BD210 + 8 * v2;
    v6 = *(v5 + 1);
    if (v6)
    {
      if (*(v6 + 144) == a1)
      {
        break;
      }
    }

    v2 = 1;
    if ((v4 & 1) == 0)
    {
      os_unfair_lock_unlock(&unk_2A18BD210);
      return 0;
    }
  }

  os_unfair_lock_unlock(&unk_2A18BD210);
  return *(v5 + 1);
}

uint64_t NFHardwareSerialReadBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v5 = *(a1 + 8);
    if (*(v5 + 120))
    {
      v6 = *(v5 + 112);
      handler[0] = MEMORY[0x29EDCA5F8];
      handler[1] = 0x40000000;
      handler[2] = sub_297F543EC;
      handler[3] = &unk_29EE86B08;
      handler[6] = a1;
      handler[7] = a2;
      handler[4] = a4;
      handler[5] = a3;
      dispatch_source_set_event_handler(v6, handler);
      v7 = *(a1 + 8);
      v8 = *(v7 + 120);
      if (v8)
      {
        *(v7 + 120) = v8 - 1;
        v9 = mach_continuous_time();
        v7 = *(a1 + 8);
        *(v7 + 128) = v9;
      }

      dispatch_resume(*(v7 + 112));
      result = 0;
    }

    else
    {
      v11 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v13 = Logger;
        mach_continuous_time();
        v14 = *(*(a1 + 8) + 128);
        ElapsedTimeInMillisecondsFromMachTime = GetElapsedTimeInMillisecondsFromMachTime();
        v13(3, "%s:%i Error : read in progress since %llu", "NFHardwareSerialReadBlock", 670, ElapsedTimeInMillisecondsFromMachTime);
      }

      dispatch_get_specific(*v11);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        mach_continuous_time();
        v17 = *(*(a1 + 8) + 128);
        *buf = 136446722;
        v21 = "NFHardwareSerialReadBlock";
        v22 = 1024;
        v23 = 670;
        v24 = 2048;
        v25 = GetElapsedTimeInMillisecondsFromMachTime();
        _os_log_impl(&dword_297F52000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i Error : read in progress since %llu", buf, 0x1Cu);
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_297F52000, MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT, "Error : read already in progress.", buf, 2u);
      }

      result = 0xFFFFFFFFLL;
    }
  }

  else
  {
    result = 1;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t phOsalNfc_Timer_Start(int a1, NSObject *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v47 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v10 = sub_297F52C6C(a1);
    if (v10)
    {
      v11 = v10;
      pthread_mutex_lock((v10 + 176));
      v12 = (v11 + 16);
      v13 = 10;
      while (*(v12 - 1) != a2)
      {
        v12 += 2;
        if (!--v13)
        {
          v14 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            Logger(3, "%s:%i Failed to get timer %llX from context", "phOsalNfc_Timer_Start", 332, a2);
          }

          dispatch_get_specific(*v14);
          v16 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            *&buf[4] = "phOsalNfc_Timer_Start";
            *&buf[12] = 1024;
            *&buf[14] = 332;
            *&buf[18] = 2048;
            *&buf[20] = a2;
            _os_log_impl(&dword_297F52000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get timer %llX from context", buf, 0x1Cu);
          }

          v17 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            *&buf[4] = a2;
            _os_log_fault_impl(&dword_297F52000, v17, OS_LOG_TYPE_FAULT, "Error: Failed to get timer 0x%llX from context", buf, 0xCu);
          }

          v18 = 1;
          goto LABEL_42;
        }
      }

      if (*v12)
      {
        v25 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v26 = NFLogGetLogger();
        if (v26)
        {
          v26(3, "%s:%i timer %llX already started", "_phOsalNfc_Timer_StartTimer", 143, *(v12 - 1));
        }

        dispatch_get_specific(*v25);
        v27 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = *(v12 - 1);
          *buf = 136446722;
          *&buf[4] = "_phOsalNfc_Timer_StartTimer";
          *&buf[12] = 1024;
          *&buf[14] = 143;
          *&buf[18] = 2048;
          *&buf[20] = v28;
          _os_log_impl(&dword_297F52000, v27, OS_LOG_TYPE_ERROR, "%{public}s:%i timer %llX already started", buf, 0x1Cu);
        }

        v18 = 225;
      }

      else
      {
        v40[0] = 0;
        v40[1] = v40;
        v40[2] = 0x2000000000;
        *&v40[3] = a3 / 1000.0 + CFAbsoluteTimeGetCurrent();
        v29 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(v11 + 168));
        *v12 = v29;
        if (v29)
        {
          *buf = MEMORY[0x29EDCA5F8];
          *&buf[8] = 0x40000000;
          *&buf[16] = sub_297F5C58C;
          *&buf[24] = &unk_29EE86AB0;
          v46 = a1;
          v42 = v40;
          v43 = a2;
          v44 = a4;
          v45 = a5;
          dispatch_source_set_event_handler(v29, buf);
          dispatch_activate(*v12);
          v30 = dispatch_time(0, 1000000 * a3);
          v31 = a3 / 0x32;
          if (a3 / 0x32 >= 0xEA60)
          {
            v31 = 60000;
          }

          v32 = 1000000 * v31;
          if (a3 >= 0x32)
          {
            v33 = v32;
          }

          else
          {
            v33 = 1000000;
          }

          dispatch_source_set_timer(*v12, v30, 0xFFFFFFFFFFFFFFFFLL, v33);
          v18 = 0;
        }

        else
        {
          v34 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v35 = NFLogGetLogger();
          if (v35)
          {
            v35(3, "%s:%i Can't start timer %llX", "_phOsalNfc_Timer_StartTimer", 171, *(v12 - 1));
          }

          dispatch_get_specific(*v34);
          v36 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = *(v12 - 1);
            *buf = 136446722;
            *&buf[4] = "_phOsalNfc_Timer_StartTimer";
            *&buf[12] = 1024;
            *&buf[14] = 171;
            *&buf[18] = 2048;
            *&buf[20] = v37;
            _os_log_impl(&dword_297F52000, v36, OS_LOG_TYPE_ERROR, "%{public}s:%i Can't start timer %llX", buf, 0x1Cu);
          }

          v18 = 1;
        }

        _Block_object_dispose(v40, 8);
      }

LABEL_42:
      pthread_mutex_unlock((v11 + 176));
    }

    else
    {
      v22 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v23(3, "%s:%i Failed to get timer context", "phOsalNfc_Timer_Start", 325);
      }

      dispatch_get_specific(*v22);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "phOsalNfc_Timer_Start";
        *&buf[12] = 1024;
        *&buf[14] = 325;
        _os_log_impl(&dword_297F52000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get timer context", buf, 0x12u);
      }

      v18 = 49;
    }
  }

  else
  {
    v19 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v20(3, "%s:%i Invalid parameter", "phOsalNfc_Timer_Start", 319);
    }

    dispatch_get_specific(*v19);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "phOsalNfc_Timer_Start";
      *&buf[12] = 1024;
      *&buf[14] = 319;
      _os_log_impl(&dword_297F52000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid parameter", buf, 0x12u);
    }

    v18 = 1;
  }

  v38 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t sub_297F56048(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v3 = sub_297F557F8(a1);
  if (!v3)
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "_phTmlNfc_SetDeviceWake", 727, "tml!=NULL");
    }

    dispatch_get_specific(*v9);
    v11 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446722;
    v24 = "_phTmlNfc_SetDeviceWake";
    v25 = 1024;
    v26 = 727;
    v27 = 2080;
    v28 = "tml!=NULL";
    goto LABEL_14;
  }

  v4 = v3;
  v5 = *(v3 + 112);
  if (!v5)
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i FAILED: %s", "_phTmlNfc_SetDeviceWake", 728, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v12);
    v11 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446722;
    v24 = "_phTmlNfc_SetDeviceWake";
    v25 = 1024;
    v26 = 728;
    v27 = 2080;
    v28 = "tml->ifc!=NULL";
LABEL_14:
    _os_log_impl(&dword_297F52000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
LABEL_15:
    v8 = 49;
    goto LABEL_16;
  }

  v6 = *v5;
  v7 = *(*v5 + 152);
  if (v7 && (v7(*(v6 + 264), a2 != 0) & 1) == 0)
  {
    v16 = **(v4 + 112);
    v17 = *(v16 + 224);
    v8 = 255;
    if (v17)
    {
      v18 = v17(*(v16 + 264));
      if (v18)
      {
        v8 = 179;
      }

      else
      {
        v8 = 255;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v20(3, "%s:%i Failed to set device wake. NACK = %d", "_phTmlNfc_SetDeviceWake", 734, v18 & 1);
    }

    dispatch_get_specific(*v19);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v24 = "_phTmlNfc_SetDeviceWake";
      v25 = 1024;
      v26 = 734;
      v27 = 1024;
      LODWORD(v28) = v18 & 1;
      _os_log_impl(&dword_297F52000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to set device wake. NACK = %d", buf, 0x18u);
    }

    if (a2 != 0 && (v18 & 1) != 0)
    {
      v22 = *(v4 + 156);
      *(v4 + 156) = v22 + 1;
      if (v22 >= 11)
      {
        NFHardwareSerialDump_0();
        phOsalNfc_RaiseExceptionWithDescription(2, 0xDEADu);
      }
    }
  }

  else
  {
    v8 = 0;
    *(v4 + 156) = 0;
  }

LABEL_16:
  v14 = *MEMORY[0x29EDCA608];
  return v8;
}

BOOL NFHardwareGPIOSetDeviceWake(uint64_t *a1, unsigned int a2)
{
  v4 = *(*a1 + 16);
  if (a2)
  {
    v5 = 7;
  }

  else
  {
    v5 = 8;
  }

  sub_297F54914(v4, v5, 0, 0);
  return sub_297F60DA8(a1, 3u, a2) == 0;
}

uint64_t phTmlNfc_Write(uint64_t a1, uint64_t a2, int a3)
{
  v35 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v24 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_Write", 375, "pBuffer!=((void*)0)");
    }

    dispatch_get_specific(*v24);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v30 = "phTmlNfc_Write";
      v31 = 1024;
      v32 = 375;
      v33 = 2080;
      v34 = "pBuffer!=((void*)0)";
LABEL_42:
      _os_log_impl(&dword_297F52000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

LABEL_43:
    abort();
  }

  if (!a3)
  {
    v27 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v28(3, "%s:%i FAILED: %s", "phTmlNfc_Write", 376, "wLength>0");
    }

    dispatch_get_specific(*v27);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v30 = "phTmlNfc_Write";
      v31 = 1024;
      v32 = 376;
      v33 = 2080;
      v34 = "wLength>0";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v3 = sub_297F557F8(a1);
  if (!v3)
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v12(3, "%s:%i FAILED: %s", "phTmlNfc_Write", 379, "tml!=NULL");
    }

    dispatch_get_specific(*v11);
    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 136446722;
    v30 = "phTmlNfc_Write";
    v31 = 1024;
    v32 = 379;
    v33 = 2080;
    v34 = "tml!=NULL";
    v14 = "%{public}s:%i FAILED: %s";
LABEL_25:
    v19 = v13;
    v20 = 28;
    goto LABEL_26;
  }

  v4 = v3;
  v5 = *(v3 + 112);
  if (!v5)
  {
    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i FAILED: %s", "phTmlNfc_Write", 380, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v15);
    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 136446722;
    v30 = "phTmlNfc_Write";
    v31 = 1024;
    v32 = 380;
    v33 = 2080;
    v34 = "tml->ifc!=NULL";
    v14 = "%{public}s:%i FAILED: %s";
    goto LABEL_25;
  }

  if ((*v4 & 1) == 0)
  {
    v17 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v18(3, "%s:%i FAILED: %s", "phTmlNfc_Write", 381, "tml->isRunning");
    }

    dispatch_get_specific(*v17);
    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 136446722;
    v30 = "phTmlNfc_Write";
    v31 = 1024;
    v32 = 381;
    v33 = 2080;
    v34 = "tml->isRunning";
    v14 = "%{public}s:%i FAILED: %s";
    goto LABEL_25;
  }

  v6 = NFHardwareInterfaceWriteBlock(v5);
  if (!v6)
  {
    result = 13;
    goto LABEL_28;
  }

  v7 = MEMORY[0x29EDC9730];
  if (v6 != -1)
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(3, "%s:%i Not initialized", "phTmlNfc_Write", 400);
    }

    dispatch_get_specific(*v7);
    v23 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 136446466;
    v30 = "phTmlNfc_Write";
    v31 = 1024;
    v32 = 400;
    v14 = "%{public}s:%i Not initialized";
    v19 = v23;
    v20 = 18;
LABEL_26:
    _os_log_impl(&dword_297F52000, v19, OS_LOG_TYPE_ERROR, v14, buf, v20);
LABEL_27:
    result = 49;
    goto LABEL_28;
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v8 = NFLogGetLogger();
  if (v8)
  {
    v8(3, "%s:%i Busy !", "phTmlNfc_Write", 397);
  }

  dispatch_get_specific(*v7);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v30 = "phTmlNfc_Write";
    v31 = 1024;
    v32 = 397;
    _os_log_impl(&dword_297F52000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Busy !", buf, 0x12u);
  }

  result = 111;
LABEL_28:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NFHardwareInterfaceWriteBlock(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = *(*a1 + 40);
  if (v1)
  {
    v2 = *(*a1 + 144);
    v3 = *MEMORY[0x29EDCA608];

    return v1(v2);
  }

  else
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i No interface defined for writing", "NFHardwareInterfaceWriteBlock", 414);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v10 = "NFHardwareInterfaceWriteBlock";
      v11 = 1024;
      v12 = 414;
      _os_log_impl(&dword_297F52000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i No interface defined for writing", buf, 0x12u);
    }

    v8 = *MEMORY[0x29EDCA608];
    return 1;
  }
}

uint64_t NFHardwareSerialWriteBlock(uint64_t a1, char *a2, unint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = 1;
    goto LABEL_21;
  }

  if (!a2)
  {
    v23 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFHardwareSerialWriteBlock", 722, "buffer!=((void*)0)");
    }

    dispatch_get_specific(*v23);
    v25 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 136446722;
    v36 = "NFHardwareSerialWriteBlock";
    v37 = 1024;
    v38 = 722;
    v39 = 2080;
    v40 = "buffer!=((void*)0)";
LABEL_42:
    _os_log_impl(&dword_297F52000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    goto LABEL_43;
  }

  if (!a3)
  {
    v26 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v27(3, "%s:%i FAILED: %s", "NFHardwareSerialWriteBlock", 723, "length!=0");
    }

    dispatch_get_specific(*v26);
    v25 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 136446722;
    v36 = "NFHardwareSerialWriteBlock";
    v37 = 1024;
    v38 = 723;
    v39 = 2080;
    v40 = "length!=0";
    goto LABEL_42;
  }

  v7 = *(a1 + 8);
  if (*(v7 + 152))
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v9(3, "%s:%i Failed to write, buffer already pending TX. Bytes left = %zu, bytes written = %d, suspend state = %d", "NFHardwareSerialWriteBlock", 727, *(*(a1 + 8) + 160), *(*(a1 + 8) + 168), *(*(a1 + 8) + 144));
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 8);
      v12 = *(v11 + 160);
      v13 = *(v11 + 168);
      LODWORD(v11) = *(v11 + 144);
      *buf = 136447234;
      v36 = "NFHardwareSerialWriteBlock";
      v37 = 1024;
      v38 = 727;
      v39 = 2048;
      v40 = v12;
      v41 = 1024;
      v42 = v13;
      v43 = 1024;
      v44 = v11;
      _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to write, buffer already pending TX. Bytes left = %zu, bytes written = %d, suspend state = %d", buf, 0x28u);
    }

    v14 = *(a1 + 8);
    v15 = *(v14 + 80);
    if (v15)
    {
      v15(*(v14 + 96), 7, "[TX>] Failed : Busy", a2, a3);
    }

    result = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  v18 = *(v7 + 80);
  if (v18)
  {
    v18(*(v7 + 96), 7, "[TX>]", a2, a3);
    v7 = *(a1 + 8);
  }

  sub_297F54914(*(v7 + 88), 5, a2, a3);
  v19 = *(a1 + 8);
  if (*(v19 + 152))
  {
    v28 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v29 = NFLogGetLogger();
    if (v29)
    {
      v29(3, "%s:%i FAILED: %s", "NFHardwareSerialWriteBlock", 738, "((NFHardwareSerialInternal*)(serial->internal))->currentWriteBuffer == ((void*)0)");
    }

    dispatch_get_specific(*v28);
    v25 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 136446722;
    v36 = "NFHardwareSerialWriteBlock";
    v37 = 1024;
    v38 = 738;
    v39 = 2080;
    v40 = "((NFHardwareSerialInternal*)(serial->internal))->currentWriteBuffer == ((void*)0)";
    goto LABEL_42;
  }

  if (*(v19 + 160))
  {
    v30 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v31(3, "%s:%i FAILED: %s", "NFHardwareSerialWriteBlock", 739, "((NFHardwareSerialInternal*)(serial->internal))->currentWriteBufferSize == 0");
    }

    dispatch_get_specific(*v30);
    v25 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 136446722;
    v36 = "NFHardwareSerialWriteBlock";
    v37 = 1024;
    v38 = 739;
    v39 = 2080;
    v40 = "((NFHardwareSerialInternal*)(serial->internal))->currentWriteBufferSize == 0";
    goto LABEL_42;
  }

  if (*(v19 + 144) != 1)
  {
    v32 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v33 = NFLogGetLogger();
    if (v33)
    {
      v33(3, "%s:%i FAILED: %s", "NFHardwareSerialWriteBlock", 740, "((NFHardwareSerialInternal*)(serial->internal))->suspendWriteCount == 1");
    }

    dispatch_get_specific(*v32);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v36 = "NFHardwareSerialWriteBlock";
      v37 = 1024;
      v38 = 740;
      v39 = 2080;
      v40 = "((NFHardwareSerialInternal*)(serial->internal))->suspendWriteCount == 1";
      goto LABEL_42;
    }

LABEL_43:
    abort();
  }

  *(v19 + 152) = a2;
  *(v19 + 160) = a3;
  *(v19 + 168) = 0;
  v20 = *(v19 + 136);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 0x40000000;
  handler[2] = sub_297F570BC;
  handler[3] = &unk_29EE86B30;
  handler[4] = a4;
  handler[5] = a1;
  dispatch_source_set_event_handler(v20, handler);
  v21 = *(a1 + 8);
  if (*(v21 + 144))
  {
    *(v21 + 144) = 0;
    dispatch_resume(*(v21 + 136));
  }

  result = 0;
LABEL_21:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

ssize_t sub_297F570BC(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  result = write(**(a1 + 40), *(*(*(a1 + 40) + 8) + 152), *(*(*(a1 + 40) + 8) + 160));
  if (result < 0)
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      v9 = __error();
      v10 = strerror(*v9);
      v11 = __error();
      v8(3, "%s:%i %s errno=%d ", "NFHardwareSerialWriteBlock_block_invoke", 752, v10, *v11);
    }

    dispatch_get_specific(*v6);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = __error();
      v14 = strerror(*v13);
      v15 = *__error();
      *buf = 136446978;
      v20 = "NFHardwareSerialWriteBlock_block_invoke";
      v21 = 1024;
      v22 = 752;
      v23 = 2080;
      v24 = v14;
      v25 = 1024;
      v26 = v15;
      _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d ", buf, 0x22u);
    }

    v3 = *(*(a1 + 40) + 8);
    *(v3 + 160) = 0;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 152) += result;
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 160);
    *(v3 + 168) += result;
    v5 = v4 - result;
    *(v3 + 160) = v5;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  *(v3 + 152) = 0;
  dispatch_suspend(*(*(*(a1 + 40) + 8) + 136));
  v16 = *(*(a1 + 40) + 8);
  ++*(v16 + 144);
  v17 = *(v16 + 168);
  result = (*(*(a1 + 32) + 16))();
LABEL_10:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_297F572AC(void *result, unsigned __int16 a2, int a3)
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 255;
  }

  v8 = 0;
  v7 = v3;
  v5 = result[4];
  v4 = result[5];
  HIDWORD(v7) = v4[120];
  v8 = v5;
  v9 = a2;
  if (*v4 == 1)
  {
    v6 = result[6];
    if (v6)
    {
      return v6(result[7], &v7);
    }
  }

  return result;
}

void phOsalNfc_FreeMemory(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void *phOsalNfc_GetMemory_Typed(int a1, size_t size, malloc_type_id_t a3)
{
  if (size)
  {
    return malloc_type_calloc(1uLL, size, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t phOsalNfc_Timer_Create(int a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = sub_297F52C6C(a1);
  if (v2)
  {
    v3 = v2;
    pthread_mutex_lock((v2 + 176));
    v4 = 8;
    while (*(v3 + v4) != 0xFFFFFFFFFFFFLL)
    {
      v4 += 16;
      if (v4 == 168)
      {
        v5 = 0xFFFFFFFFFFFFLL;
        goto LABEL_18;
      }
    }

      ;
    }

    v5 = i + 1;
    *v3 = i + 1;
    *(v3 + v4) = i + 1;
LABEL_18:
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v11 = NFSharedMiddlewareSignpostLog();
    if (!v11)
    {
      v11 = NFSharedSignpostLog();
    }

    if (os_signpost_enabled(v11))
    {
      *buf = 134218240;
      v15 = v5;
      v16 = 1024;
      v17 = a1;
      _os_signpost_emit_with_name_impl(&dword_297F52000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Created Timer", "timerId %llX, ctlr %d", buf, 0x12u);
    }

    pthread_mutex_unlock((v3 + 176));
  }

  else
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to get timer context for type %d", "phOsalNfc_Timer_Create", 280, a1);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "phOsalNfc_Timer_Create";
      v16 = 1024;
      v17 = 280;
      v18 = 1024;
      v19 = a1;
      _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get timer context for type %d", buf, 0x18u);
    }

    v5 = 0xFFFFFFFFFFFFLL;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v5;
}

void phOsalNfc_SignPostLogTimerEvents(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v31 = *MEMORY[0x29EDCA608];
  v11 = NFSharedMiddlewareSignpostLog();
  if (!v11)
  {
    goto LABEL_150;
  }

  v12 = v11;
  v13 = sub_297F52C6C(a1);
  v14 = 0;
  v15 = (v13 + 8);
  while (1)
  {
    v17 = *v15;
    v15 += 2;
    v16 = v17;
    if (v17 != 0xFFFFFFFFFFFFLL && v16 == a2)
    {
      break;
    }

    if (++v14 == 10)
    {
      LODWORD(v14) = 61680;
      break;
    }
  }

  if (!a6)
  {
    if (a5)
    {
      if (v14 > 4)
      {
        if (v14 <= 6)
        {
          if (v14 == 5)
          {
            if (!os_signpost_enabled(v12))
            {
              goto LABEL_150;
            }

            v25 = 136446722;
            v26 = "-";
            v27 = 2082;
            v28 = a4;
            v29 = 2082;
            v30 = a5;
            v19 = "PHLIBNFC_TIMER_ID6";
            v20 = "%{public}s:%{public}s <- %{public}s";
          }

          else
          {
            if (v14 != 6 || !os_signpost_enabled(v12))
            {
              goto LABEL_150;
            }

            v25 = 136446722;
            v26 = "-";
            v27 = 2082;
            v28 = a4;
            v29 = 2082;
            v30 = a5;
            v19 = "PHLIBNFC_TIMER_ID7";
            v20 = "%{public}s:%{public}s <- %{public}s";
          }
        }

        else if (v14 == 7)
        {
          if (!os_signpost_enabled(v12))
          {
            goto LABEL_150;
          }

          v25 = 136446722;
          v26 = "-";
          v27 = 2082;
          v28 = a4;
          v29 = 2082;
          v30 = a5;
          v19 = "PHLIBNFC_TIMER_ID8";
          v20 = "%{public}s:%{public}s <- %{public}s";
        }

        else if (v14 == 8)
        {
          if (!os_signpost_enabled(v12))
          {
            goto LABEL_150;
          }

          v25 = 136446722;
          v26 = "-";
          v27 = 2082;
          v28 = a4;
          v29 = 2082;
          v30 = a5;
          v19 = "PHLIBNFC_TIMER_ID9";
          v20 = "%{public}s:%{public}s <- %{public}s";
        }

        else
        {
          if (v14 != 9 || !os_signpost_enabled(v12))
          {
            goto LABEL_150;
          }

          v25 = 136446722;
          v26 = "-";
          v27 = 2082;
          v28 = a4;
          v29 = 2082;
          v30 = a5;
          v19 = "PHLIBNFC_TIMER_ID10";
          v20 = "%{public}s:%{public}s <- %{public}s";
        }
      }

      else if (v14 <= 1)
      {
        if (v14)
        {
          if (v14 != 1 || !os_signpost_enabled(v12))
          {
            goto LABEL_150;
          }

          v25 = 136446722;
          v26 = "-";
          v27 = 2082;
          v28 = a4;
          v29 = 2082;
          v30 = a5;
          v19 = "PHLIBNFC_TIMER_ID2";
          v20 = "%{public}s:%{public}s <- %{public}s";
        }

        else
        {
          if (!os_signpost_enabled(v12))
          {
            goto LABEL_150;
          }

          v25 = 136446722;
          v26 = "-";
          v27 = 2082;
          v28 = a4;
          v29 = 2082;
          v30 = a5;
          v19 = "PHLIBNFC_TIMER_ID1";
          v20 = "%{public}s:%{public}s <- %{public}s";
        }
      }

      else if (v14 == 2)
      {
        if (!os_signpost_enabled(v12))
        {
          goto LABEL_150;
        }

        v25 = 136446722;
        v26 = "-";
        v27 = 2082;
        v28 = a4;
        v29 = 2082;
        v30 = a5;
        v19 = "PHLIBNFC_TIMER_ID3";
        v20 = "%{public}s:%{public}s <- %{public}s";
      }

      else if (v14 == 3)
      {
        if (!os_signpost_enabled(v12))
        {
          goto LABEL_150;
        }

        v25 = 136446722;
        v26 = "-";
        v27 = 2082;
        v28 = a4;
        v29 = 2082;
        v30 = a5;
        v19 = "PHLIBNFC_TIMER_ID4";
        v20 = "%{public}s:%{public}s <- %{public}s";
      }

      else
      {
        if (v14 != 4 || !os_signpost_enabled(v12))
        {
          goto LABEL_150;
        }

        v25 = 136446722;
        v26 = "-";
        v27 = 2082;
        v28 = a4;
        v29 = 2082;
        v30 = a5;
        v19 = "PHLIBNFC_TIMER_ID5";
        v20 = "%{public}s:%{public}s <- %{public}s";
      }

      v21 = v12;
      v22 = OS_SIGNPOST_INTERVAL_END;
      goto LABEL_132;
    }

    if (v14 > 4)
    {
      if (v14 <= 6)
      {
        if (v14 == 5)
        {
          if (!os_signpost_enabled(v12))
          {
            goto LABEL_150;
          }

          v25 = 136446466;
          v26 = "-";
          v27 = 2082;
          v28 = a4;
          v19 = "PHLIBNFC_TIMER_ID6";
          v20 = "%{public}s:%{public}s";
        }

        else
        {
          if (v14 != 6 || !os_signpost_enabled(v12))
          {
            goto LABEL_150;
          }

          v25 = 136446466;
          v26 = "-";
          v27 = 2082;
          v28 = a4;
          v19 = "PHLIBNFC_TIMER_ID7";
          v20 = "%{public}s:%{public}s";
        }
      }

      else if (v14 == 7)
      {
        if (!os_signpost_enabled(v12))
        {
          goto LABEL_150;
        }

        v25 = 136446466;
        v26 = "-";
        v27 = 2082;
        v28 = a4;
        v19 = "PHLIBNFC_TIMER_ID8";
        v20 = "%{public}s:%{public}s";
      }

      else if (v14 == 8)
      {
        if (!os_signpost_enabled(v12))
        {
          goto LABEL_150;
        }

        v25 = 136446466;
        v26 = "-";
        v27 = 2082;
        v28 = a4;
        v19 = "PHLIBNFC_TIMER_ID9";
        v20 = "%{public}s:%{public}s";
      }

      else
      {
        if (v14 != 9 || !os_signpost_enabled(v12))
        {
          goto LABEL_150;
        }

        v25 = 136446466;
        v26 = "-";
        v27 = 2082;
        v28 = a4;
        v19 = "PHLIBNFC_TIMER_ID10";
        v20 = "%{public}s:%{public}s";
      }
    }

    else if (v14 <= 1)
    {
      if (!v14)
      {
        if (!os_signpost_enabled(v12))
        {
          goto LABEL_150;
        }

        v25 = 136446466;
        v26 = "-";
        v27 = 2082;
        v28 = a4;
        v19 = "PHLIBNFC_TIMER_ID1";
        v20 = "%{public}s:%{public}s";
        v21 = v12;
        v22 = OS_SIGNPOST_INTERVAL_END;
LABEL_148:
        v23 = 22;
        goto LABEL_149;
      }

      if (v14 != 1 || !os_signpost_enabled(v12))
      {
        goto LABEL_150;
      }

      v25 = 136446466;
      v26 = "-";
      v27 = 2082;
      v28 = a4;
      v19 = "PHLIBNFC_TIMER_ID2";
      v20 = "%{public}s:%{public}s";
    }

    else if (v14 == 2)
    {
      if (!os_signpost_enabled(v12))
      {
        goto LABEL_150;
      }

      v25 = 136446466;
      v26 = "-";
      v27 = 2082;
      v28 = a4;
      v19 = "PHLIBNFC_TIMER_ID3";
      v20 = "%{public}s:%{public}s";
    }

    else if (v14 == 3)
    {
      if (!os_signpost_enabled(v12))
      {
        goto LABEL_150;
      }

      v25 = 136446466;
      v26 = "-";
      v27 = 2082;
      v28 = a4;
      v19 = "PHLIBNFC_TIMER_ID4";
      v20 = "%{public}s:%{public}s";
    }

    else
    {
      if (v14 != 4 || !os_signpost_enabled(v12))
      {
        goto LABEL_150;
      }

      v25 = 136446466;
      v26 = "-";
      v27 = 2082;
      v28 = a4;
      v19 = "PHLIBNFC_TIMER_ID5";
      v20 = "%{public}s:%{public}s";
    }

LABEL_147:
    v21 = v12;
    v22 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_148;
  }

  if (!a5)
  {
    if (v14 > 4)
    {
      if (v14 <= 6)
      {
        if (v14 == 5)
        {
          if (!os_signpost_enabled(v12))
          {
            goto LABEL_150;
          }

          v25 = 136446466;
          v26 = "+";
          v27 = 2082;
          v28 = a4;
          v19 = "PHLIBNFC_TIMER_ID6";
          v20 = "%{public}s:%{public}s";
        }

        else
        {
          if (v14 != 6 || !os_signpost_enabled(v12))
          {
            goto LABEL_150;
          }

          v25 = 136446466;
          v26 = "+";
          v27 = 2082;
          v28 = a4;
          v19 = "PHLIBNFC_TIMER_ID7";
          v20 = "%{public}s:%{public}s";
        }
      }

      else if (v14 == 7)
      {
        if (!os_signpost_enabled(v12))
        {
          goto LABEL_150;
        }

        v25 = 136446466;
        v26 = "+";
        v27 = 2082;
        v28 = a4;
        v19 = "PHLIBNFC_TIMER_ID8";
        v20 = "%{public}s:%{public}s";
      }

      else if (v14 == 8)
      {
        if (!os_signpost_enabled(v12))
        {
          goto LABEL_150;
        }

        v25 = 136446466;
        v26 = "+";
        v27 = 2082;
        v28 = a4;
        v19 = "PHLIBNFC_TIMER_ID9";
        v20 = "%{public}s:%{public}s";
      }

      else
      {
        if (v14 != 9 || !os_signpost_enabled(v12))
        {
          goto LABEL_150;
        }

        v25 = 136446466;
        v26 = "+";
        v27 = 2082;
        v28 = a4;
        v19 = "PHLIBNFC_TIMER_ID10";
        v20 = "%{public}s:%{public}s";
      }
    }

    else if (v14 <= 1)
    {
      if (v14)
      {
        if (v14 != 1 || !os_signpost_enabled(v12))
        {
          goto LABEL_150;
        }

        v25 = 136446466;
        v26 = "+";
        v27 = 2082;
        v28 = a4;
        v19 = "PHLIBNFC_TIMER_ID2";
        v20 = "%{public}s:%{public}s";
      }

      else
      {
        if (!os_signpost_enabled(v12))
        {
          goto LABEL_150;
        }

        v25 = 136446466;
        v26 = "+";
        v27 = 2082;
        v28 = a4;
        v19 = "PHLIBNFC_TIMER_ID1";
        v20 = "%{public}s:%{public}s";
      }
    }

    else if (v14 == 2)
    {
      if (!os_signpost_enabled(v12))
      {
        goto LABEL_150;
      }

      v25 = 136446466;
      v26 = "+";
      v27 = 2082;
      v28 = a4;
      v19 = "PHLIBNFC_TIMER_ID3";
      v20 = "%{public}s:%{public}s";
    }

    else if (v14 == 3)
    {
      if (!os_signpost_enabled(v12))
      {
        goto LABEL_150;
      }

      v25 = 136446466;
      v26 = "+";
      v27 = 2082;
      v28 = a4;
      v19 = "PHLIBNFC_TIMER_ID4";
      v20 = "%{public}s:%{public}s";
    }

    else
    {
      if (v14 != 4 || !os_signpost_enabled(v12))
      {
        goto LABEL_150;
      }

      v25 = 136446466;
      v26 = "+";
      v27 = 2082;
      v28 = a4;
      v19 = "PHLIBNFC_TIMER_ID5";
      v20 = "%{public}s:%{public}s";
    }

    goto LABEL_147;
  }

  if (v14 > 4)
  {
    if (v14 <= 6)
    {
      if (v14 == 5)
      {
        if (os_signpost_enabled(v12))
        {
          v25 = 136446722;
          v26 = "+";
          v27 = 2082;
          v28 = a4;
          v29 = 2082;
          v30 = a5;
          v19 = "PHLIBNFC_TIMER_ID6";
          v20 = "%{public}s:%{public}s <- %{public}s";
          goto LABEL_100;
        }
      }

      else if (v14 == 6 && os_signpost_enabled(v12))
      {
        v25 = 136446722;
        v26 = "+";
        v27 = 2082;
        v28 = a4;
        v29 = 2082;
        v30 = a5;
        v19 = "PHLIBNFC_TIMER_ID7";
        v20 = "%{public}s:%{public}s <- %{public}s";
        goto LABEL_100;
      }
    }

    else if (v14 == 7)
    {
      if (os_signpost_enabled(v12))
      {
        v25 = 136446722;
        v26 = "+";
        v27 = 2082;
        v28 = a4;
        v29 = 2082;
        v30 = a5;
        v19 = "PHLIBNFC_TIMER_ID8";
        v20 = "%{public}s:%{public}s <- %{public}s";
        goto LABEL_100;
      }
    }

    else if (v14 == 8)
    {
      if (os_signpost_enabled(v12))
      {
        v25 = 136446722;
        v26 = "+";
        v27 = 2082;
        v28 = a4;
        v29 = 2082;
        v30 = a5;
        v19 = "PHLIBNFC_TIMER_ID9";
        v20 = "%{public}s:%{public}s <- %{public}s";
        goto LABEL_100;
      }
    }

    else if (v14 == 9 && os_signpost_enabled(v12))
    {
      v25 = 136446722;
      v26 = "+";
      v27 = 2082;
      v28 = a4;
      v29 = 2082;
      v30 = a5;
      v19 = "PHLIBNFC_TIMER_ID10";
      v20 = "%{public}s:%{public}s <- %{public}s";
      goto LABEL_100;
    }
  }

  else if (v14 <= 1)
  {
    if (v14)
    {
      if (v14 == 1 && os_signpost_enabled(v12))
      {
        v25 = 136446722;
        v26 = "+";
        v27 = 2082;
        v28 = a4;
        v29 = 2082;
        v30 = a5;
        v19 = "PHLIBNFC_TIMER_ID2";
        v20 = "%{public}s:%{public}s <- %{public}s";
        goto LABEL_100;
      }
    }

    else if (os_signpost_enabled(v12))
    {
      v25 = 136446722;
      v26 = "+";
      v27 = 2082;
      v28 = a4;
      v29 = 2082;
      v30 = a5;
      v19 = "PHLIBNFC_TIMER_ID1";
      v20 = "%{public}s:%{public}s <- %{public}s";
      goto LABEL_100;
    }
  }

  else if (v14 == 2)
  {
    if (os_signpost_enabled(v12))
    {
      v25 = 136446722;
      v26 = "+";
      v27 = 2082;
      v28 = a4;
      v29 = 2082;
      v30 = a5;
      v19 = "PHLIBNFC_TIMER_ID3";
      v20 = "%{public}s:%{public}s <- %{public}s";
      goto LABEL_100;
    }
  }

  else if (v14 == 3)
  {
    if (os_signpost_enabled(v12))
    {
      v25 = 136446722;
      v26 = "+";
      v27 = 2082;
      v28 = a4;
      v29 = 2082;
      v30 = a5;
      v19 = "PHLIBNFC_TIMER_ID4";
      v20 = "%{public}s:%{public}s <- %{public}s";
      goto LABEL_100;
    }
  }

  else if (v14 == 4 && os_signpost_enabled(v12))
  {
    v25 = 136446722;
    v26 = "+";
    v27 = 2082;
    v28 = a4;
    v29 = 2082;
    v30 = a5;
    v19 = "PHLIBNFC_TIMER_ID5";
    v20 = "%{public}s:%{public}s <- %{public}s";
LABEL_100:
    v21 = v12;
    v22 = OS_SIGNPOST_INTERVAL_BEGIN;
LABEL_132:
    v23 = 32;
LABEL_149:
    _os_signpost_emit_with_name_impl(&dword_297F52000, v21, v22, 0xEEEEB0B5B2B2EEEELL, v19, v20, &v25, v23);
  }

LABEL_150:
  v24 = *MEMORY[0x29EDCA608];
}

uint64_t phTmlNfc_Init(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v38 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_Init", 148, "pConfig!=((void*)0)");
    }

    dispatch_get_specific(*v38);
    v40 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_84;
    }

    *buf = 136446722;
    v50 = "phTmlNfc_Init";
    v51 = 1024;
    v52 = 148;
    v53 = 2080;
    v54 = "pConfig!=((void*)0)";
    goto LABEL_83;
  }

  if (!*a1 && !*(a1 + 8))
  {
    v45 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v46 = NFLogGetLogger();
    if (v46)
    {
      v46(3, "%s:%i FAILED: %s", "phTmlNfc_Init", 149, "pConfig->pDevNameHsu || pConfig->pDevNameSpmi");
    }

    dispatch_get_specific(*v45);
    v40 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_84;
    }

    *buf = 136446722;
    v50 = "phTmlNfc_Init";
    v51 = 1024;
    v52 = 149;
    v53 = 2080;
    v54 = "pConfig->pDevNameHsu || pConfig->pDevNameSpmi";
    goto LABEL_83;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    v41 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v42 = NFLogGetLogger();
    if (v42)
    {
      v42(3, "%s:%i FAILED: %s", "phTmlNfc_Init", 150, "pConfig->pContext");
    }

    dispatch_get_specific(*v41);
    v40 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_84;
    }

    *buf = 136446722;
    v50 = "phTmlNfc_Init";
    v51 = 1024;
    v52 = 150;
    v53 = 2080;
    v54 = "pConfig->pContext";
    goto LABEL_83;
  }

  if (!a2)
  {
    v43 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v44 = NFLogGetLogger();
    if (v44)
    {
      v44(3, "%s:%i FAILED: %s", "phTmlNfc_Init", 151, "pHwRef!=((void*)0)");
    }

    dispatch_get_specific(*v43);
    v40 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_84;
    }

    *buf = 136446722;
    v50 = "phTmlNfc_Init";
    v51 = 1024;
    v52 = 151;
    v53 = 2080;
    v54 = "pHwRef!=((void*)0)";
    goto LABEL_83;
  }

  if (*(a1 + 40) == 6)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 8 * (*(a1 + 40) == 6));
  v7 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v8 = NFLogGetLogger();
  if (v8)
  {
    v8(6, "%s:%i devName: %s  auxDevName: %s", "phTmlNfc_Init", 163, v6, v5);
  }

  dispatch_get_specific(*v7);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v50 = "phTmlNfc_Init";
    v51 = 1024;
    v52 = 163;
    v53 = 2080;
    v54 = v6;
    v55 = 2080;
    v56 = v5;
    _os_log_impl(&dword_297F52000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%i devName: %s  auxDevName: %s", buf, 0x26u);
  }

  IsSupported = NFHardwareInterfaceIsSupported(v6);
  if (!IsSupported)
  {
LABEL_46:
    result = 51;
    goto LABEL_54;
  }

  if (IsSupported < 0)
  {
    goto LABEL_53;
  }

  if (!v5)
  {
LABEL_18:
    os_unfair_lock_lock(&unk_2A18BD210);
    v12 = 0;
    v13 = *(a1 + 24);
    v14 = 1;
    while (1)
    {
      v15 = &unk_2A18BD210 + 8 * v12;
      if (!*(v15 + 1))
      {
        break;
      }

      v16 = v14;
      v14 = 0;
      v12 = 1;
      if ((v16 & 1) == 0)
      {
        dispatch_get_specific(*v7);
        v17 = NFLogGetLogger();
        if (v17)
        {
          v17(3, "%s:%i Failed to allocate TML context - no space available.", "_phTmlNfc_CreateTMLContext", 127);
        }

        dispatch_get_specific(*v7);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v50 = "_phTmlNfc_CreateTMLContext";
          v51 = 1024;
          v52 = 127;
          _os_log_impl(&dword_297F52000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate TML context - no space available.", buf, 0x12u);
        }

        os_unfair_lock_unlock(&unk_2A18BD210);
        dispatch_get_specific(*v7);
        v19 = NFLogGetLogger();
        if (v19)
        {
          v19(3, "%s:%i Failed to create TML context !", "phTmlNfc_Init", 192);
        }

        dispatch_get_specific(*v7);
        v20 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v50 = "phTmlNfc_Init";
          v51 = 1024;
          v52 = 192;
          v21 = "%{public}s:%i Failed to create TML context !";
          v22 = v20;
          v23 = 18;
          goto LABEL_52;
        }

        goto LABEL_53;
      }
    }

    v24 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10A00401D1C5D8BuLL);
    *v24 = 0u;
    *(v24 + 1) = 0u;
    *(v24 + 2) = 0u;
    *(v24 + 3) = 0u;
    *(v24 + 4) = 0u;
    *(v24 + 5) = 0u;
    *(v24 + 6) = 0u;
    *(v24 + 7) = 0u;
    *(v24 + 8) = 0u;
    *(v24 + 9) = 0u;
    *(v24 + 38) = v13;
    *(v24 + 18) = (v13 + 1);
    *(v15 + 1) = v24;
    os_unfair_lock_unlock(&unk_2A18BD210);
    pthread_mutex_init((v24 + 40), 0);
    *(v24 + 8) = 0;
    if (!pthread_mutex_lock((v24 + 40)))
    {
      ++*(v24 + 8);
      if (!pthread_mutex_unlock((v24 + 40)))
      {
        v24[2] = 0;
        *(v24 + 1) = 0;
        *(v24 + 2) = 0;
        v25 = *v4;
        if (*v4)
        {
          *(v24 + 3) = v25;
          dispatch_retain(v25);
          v24[104] = *(v4 + 16);
          v24[105] = *(v4 + 18);
          v26 = NFHardwareInterfaceOpen(v6, *(v24 + 3));
          *(v24 + 14) = v26;
          if (v26)
          {
            v27 = *(*v26 + 11);
            if (v27)
            {
              v27(*(*v26 + 18), *(v4 + 8));
            }

            if (!v5)
            {
              goto LABEL_40;
            }

            v28 = NFHardwareInterfaceOpen(v5, *(v24 + 3));
            *(v24 + 16) = v28;
            if (v28)
            {
              v29 = *(*v28 + 11);
              if (v29)
              {
                v29(*(*v28 + 18), *(v4 + 8));
              }

              v24[121] = 1;
LABEL_40:
              if (*(a1 + 24) == 1)
              {
                v24[120] = 1;
                v30 = "hammerfest-spmi";
              }

              else if (v24[120])
              {
                v30 = "hammerfest-spmi";
              }

              else
              {
                v30 = "stockholm-spmi";
              }

              *v24 = 1;
              ModelID = NFHardwareGetModelID(v30);
              result = 0;
              *(v24 + 9) = ModelID;
              *a2 = *(v24 + 18);
              goto LABEL_54;
            }
          }
        }

        phTmlNfc_Shutdown(*(v24 + 18));
        goto LABEL_53;
      }

      dispatch_get_specific(*v7);
      v48 = NFLogGetLogger();
      if (v48)
      {
        v48(3, "%s:%i FAILED: %s", "retainTML", 278, "!status");
      }

      dispatch_get_specific(*v7);
      v40 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v50 = "retainTML";
        v51 = 1024;
        v52 = 278;
        v53 = 2080;
        v54 = "!status";
        goto LABEL_83;
      }

LABEL_84:
      abort();
    }

    dispatch_get_specific(*v7);
    v47 = NFLogGetLogger();
    if (v47)
    {
      v47(3, "%s:%i FAILED: %s", "retainTML", 273, "!status");
    }

    dispatch_get_specific(*v7);
    v40 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_84;
    }

    *buf = 136446722;
    v50 = "retainTML";
    v51 = 1024;
    v52 = 273;
    v53 = 2080;
    v54 = "!status";
LABEL_83:
    _os_log_impl(&dword_297F52000, v40, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    goto LABEL_84;
  }

  v11 = NFHardwareInterfaceIsSupported(v5);
  if (!v11)
  {
    dispatch_get_specific(*v7);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v31(3, "%s:%i Interface %s is not supported?!", "phTmlNfc_Init", 179, v5);
    }

    dispatch_get_specific(*v7);
    v32 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v50 = "phTmlNfc_Init";
      v51 = 1024;
      v52 = 179;
      v53 = 2080;
      v54 = v5;
      _os_log_impl(&dword_297F52000, v32, OS_LOG_TYPE_ERROR, "%{public}s:%i Interface %s is not supported?!", buf, 0x1Cu);
    }

    goto LABEL_46;
  }

  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  dispatch_get_specific(*v7);
  v34 = NFLogGetLogger();
  if (v34)
  {
    v34(3, "%s:%i Error detecting interface %s", "phTmlNfc_Init", 182, v5);
  }

  dispatch_get_specific(*v7);
  v35 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v50 = "phTmlNfc_Init";
    v51 = 1024;
    v52 = 182;
    v53 = 2080;
    v54 = v5;
    v21 = "%{public}s:%i Error detecting interface %s";
    v22 = v35;
    v23 = 28;
LABEL_52:
    _os_log_impl(&dword_297F52000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
  }

LABEL_53:
  result = 255;
LABEL_54:
  v36 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t phTmlNfc_Shutdown(uint64_t a1)
{
  v38 = *MEMORY[0x29EDCA608];
  v1 = sub_297F557F8(a1);
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (v1)
  {
    if (Logger)
    {
      Logger(6, "%s:%i ", "phTmlNfc_Shutdown", 321);
    }

    dispatch_get_specific(*v2);
    v4 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__sig) = 136446466;
      *(&buf.__sig + 4) = "phTmlNfc_Shutdown";
      *&buf.__opaque[4] = 1024;
      *&buf.__opaque[6] = 321;
      _os_log_impl(&dword_297F52000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", &buf, 0x12u);
    }

    *v1 = 0;
    if (*(v1 + 120) == 1 && *(v1 + 136) == 1)
    {
      v5 = **(v1 + 112);
      v6 = *(v5 + 120);
      if (v6)
      {
        v6(*(v5 + 144), 1);
      }
    }

    v7 = *(v1 + 112);
    if (v7)
    {
      NFHardwareInterfaceClose(v7);
      *(v1 + 112) = 0;
    }

    v8 = *(v1 + 128);
    if (v8)
    {
      NFHardwareInterfaceClose(v8);
      *(v1 + 128) = 0;
    }

    if (pthread_mutex_lock((v1 + 40)))
    {
      dispatch_get_specific(*v2);
      v28 = NFLogGetLogger();
      if (v28)
      {
        v28(3, "%s:%i FAILED: %s", "releaseTML", 286, "!status");
      }

      dispatch_get_specific(*v2);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__sig) = 136446722;
        *(&buf.__sig + 4) = "releaseTML";
        *&buf.__opaque[4] = 1024;
        *&buf.__opaque[6] = 286;
        *&buf.__opaque[10] = 2080;
        *&buf.__opaque[12] = "!status";
        goto LABEL_44;
      }

LABEL_46:
      abort();
    }

    v9 = *(v1 + 32);
    v10 = __OFSUB__(v9, 1);
    v11 = v9 - 1;
    if (v11 < 0 != v10 || (*(v1 + 32) = v11) != 0)
    {
      result = pthread_mutex_unlock((v1 + 40));
      if (result)
      {
        dispatch_get_specific(*v2);
        v13 = NFLogGetLogger();
        if (v13)
        {
          v13(3, "%s:%i FAILED: %s", "releaseTML", 312, "!status");
        }

        dispatch_get_specific(*v2);
        v14 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.__sig) = 136446722;
          *(&buf.__sig + 4) = "releaseTML";
          *&buf.__opaque[4] = 1024;
          *&buf.__opaque[6] = 312;
          *&buf.__opaque[10] = 2080;
          *&buf.__opaque[12] = "!status";
LABEL_44:
          p_buf = &buf;
LABEL_45:
          _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", p_buf, 0x1Cu);
          goto LABEL_46;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v16 = *(v1 + 40);
      v17 = *(v1 + 56);
      v18 = *(v1 + 88);
      *&buf.__opaque[24] = *(v1 + 72);
      *&buf.__opaque[40] = v18;
      *&buf.__sig = v16;
      *&buf.__opaque[8] = v17;
      v19 = *(v1 + 24);
      if (v19)
      {
        dispatch_release(v19);
        *(v1 + 24) = 0;
      }

      os_unfair_lock_lock(&unk_2A18BD210);
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = &unk_2A18BD210 + 8 * v20;
        v23 = *(v22 + 1);
        if (v23 == v1)
        {
          free(v23);
          *(v22 + 1) = 0;
          goto LABEL_37;
        }

        v24 = v21;
        v21 = 0;
        v20 = 1;
      }

      while ((v24 & 1) != 0);
      dispatch_get_specific(*v2);
      v25 = NFLogGetLogger();
      if (v25)
      {
        v25(3, "%s:%i Failed to release TML context - not found", "_phTmlNfc_FreeTMLContext", 142);
      }

      dispatch_get_specific(*v2);
      v26 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *v31 = 136446466;
        v32 = "_phTmlNfc_FreeTMLContext";
        v33 = 1024;
        v34 = 142;
        _os_log_impl(&dword_297F52000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to release TML context - not found", v31, 0x12u);
      }

LABEL_37:
      os_unfair_lock_unlock(&unk_2A18BD210);
      if (pthread_mutex_unlock(&buf))
      {
        dispatch_get_specific(*v2);
        v30 = NFLogGetLogger();
        if (v30)
        {
          v30(3, "%s:%i FAILED: %s", "releaseTML", 304, "!status");
        }

        dispatch_get_specific(*v2);
        v14 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *v31 = 136446722;
          v32 = "releaseTML";
          v33 = 1024;
          v34 = 304;
          v35 = 2080;
          v36 = "!status";
          p_buf = v31;
          goto LABEL_45;
        }

        goto LABEL_46;
      }

      pthread_mutex_destroy(&buf);
      result = 0;
    }
  }

  else
  {
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_Shutdown", 319, "tml!=NULL");
    }

    dispatch_get_specific(*v2);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__sig) = 136446722;
      *(&buf.__sig + 4) = "phTmlNfc_Shutdown";
      *&buf.__opaque[4] = 1024;
      *&buf.__opaque[6] = 319;
      *&buf.__opaque[10] = 2080;
      *&buf.__opaque[12] = "tml!=NULL";
      _os_log_impl(&dword_297F52000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", &buf, 0x1Cu);
    }

    result = 49;
  }

  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t phTmlNfc_WriteAbort(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v1 = sub_297F557F8(a1);
  if (!v1)
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_WriteAbort", 539, "tml!=NULL");
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136446722;
    v13 = "phTmlNfc_WriteAbort";
    v14 = 1024;
    v15 = 539;
    v16 = 2080;
    v17 = "tml!=NULL";
    goto LABEL_15;
  }

  v2 = *(v1 + 112);
  if (!v2)
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v10 = NFLogGetLogger();
    if (v10)
    {
      v10(3, "%s:%i FAILED: %s", "phTmlNfc_WriteAbort", 540, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v9);
    v8 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136446722;
    v13 = "phTmlNfc_WriteAbort";
    v14 = 1024;
    v15 = 540;
    v16 = 2080;
    v17 = "tml->ifc!=NULL";
LABEL_15:
    _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
LABEL_16:
    result = 49;
    goto LABEL_17;
  }

  v3 = *v2;
  v4 = *(*v2 + 64);
  if (v4 && v4(*(v3 + 144)))
  {
    result = 255;
  }

  else
  {
    result = 0;
  }

LABEL_17:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t phTmlNfc_ReadAbort(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  v1 = sub_297F557F8(a1);
  if (!v1)
  {
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_ReadAbort", 624, "tml!=NULL");
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446722;
    v21 = "phTmlNfc_ReadAbort";
    v22 = 1024;
    v23 = 624;
    v24 = 2080;
    *v25 = "tml!=NULL";
    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v1 + 112);
  if (!v3)
  {
    v16 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v17(3, "%s:%i FAILED: %s", "phTmlNfc_ReadAbort", 625, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v16);
    v9 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446722;
    v21 = "phTmlNfc_ReadAbort";
    v22 = 1024;
    v23 = 625;
    v24 = 2080;
    *v25 = "tml->ifc!=NULL";
LABEL_21:
    _os_log_impl(&dword_297F52000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
LABEL_22:
    v6 = 49;
    goto LABEL_23;
  }

  v4 = *v3;
  v5 = *(*v3 + 56);
  if (v5 && v5(*(v4 + 144)))
  {
    v6 = 255;
  }

  else
  {
    v6 = 0;
  }

  if (NFIsInternalBuild())
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v11 = NFLogGetLogger();
    if (v11)
    {
      v11(6, "%s:%i Debug : Pending read %d, read cb = %p, context = %p", "phTmlNfc_ReadAbort", 630, *(v2 + 2), *(v2 + 8), *(v2 + 16));
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v2 + 2);
      v14 = *(v2 + 8);
      v15 = *(v2 + 16);
      *buf = 136447234;
      v21 = "phTmlNfc_ReadAbort";
      v22 = 1024;
      v23 = 630;
      v24 = 1024;
      *v25 = v13;
      *&v25[4] = 2048;
      *&v25[6] = v14;
      v26 = 2048;
      v27 = v15;
      _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Debug : Pending read %d, read cb = %p, context = %p", buf, 0x2Cu);
    }

    *(v2 + 2) = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
  }

LABEL_23:
  v18 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t phTmlNfc_FlushTxRxBuffers(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v1 = sub_297F557F8(a1);
  if (!v1)
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_FlushTxRxBuffers", 751, "tml!=NULL");
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446722;
    v13 = "phTmlNfc_FlushTxRxBuffers";
    v14 = 1024;
    v15 = 751;
    v16 = 2080;
    v17 = "tml!=NULL";
    goto LABEL_14;
  }

  v2 = *(v1 + 112);
  if (!v2)
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v10 = NFLogGetLogger();
    if (v10)
    {
      v10(3, "%s:%i FAILED: %s", "phTmlNfc_FlushTxRxBuffers", 752, "tml->ifc");
    }

    dispatch_get_specific(*v9);
    v8 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446722;
    v13 = "phTmlNfc_FlushTxRxBuffers";
    v14 = 1024;
    v15 = 752;
    v16 = 2080;
    v17 = "tml->ifc";
LABEL_14:
    _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
LABEL_15:
    result = 49;
    goto LABEL_16;
  }

  v3 = *v2;
  v4 = *(*v2 + 72);
  if (v4 && !v4(*(v3 + 144)))
  {
    result = 255;
  }

  else
  {
    result = 0;
  }

LABEL_16:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297F59A90(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = sub_297F557F8(a1);
  if (!v3)
  {
    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "_phTmlNfc_SetPower", 646, "tml!=NULL");
    }

    dispatch_get_specific(*v15);
    v17 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 136446722;
    v22 = "_phTmlNfc_SetPower";
    v23 = 1024;
    v24 = 646;
    v25 = 2080;
    v26 = "tml!=NULL";
    goto LABEL_19;
  }

  v4 = v3;
  v5 = *(v3 + 112);
  if (!v5)
  {
    v18 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v19(3, "%s:%i FAILED: %s", "_phTmlNfc_SetPower", 647, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v18);
    v17 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 136446722;
    v22 = "_phTmlNfc_SetPower";
    v23 = 1024;
    v24 = 647;
    v25 = 2080;
    v26 = "tml->ifc!=NULL";
LABEL_19:
    _os_log_impl(&dword_297F52000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
LABEL_20:
    result = 49;
    goto LABEL_21;
  }

  v6 = a2 != 0;
  v7 = *v5;
  v8 = *(*v5 + 160);
  if (v8)
  {
    v9 = a2 != 0;
    v10 = v8(*(v7 + 264), v9);
    if ((v10 & 1) == 0)
    {
      result = 255;
      goto LABEL_21;
    }

    v6 = v9 & v10;
  }

  if (v6)
  {
    v11 = *(v4 + 112);
    if (v11)
    {
      v12 = *v11;
      v13 = *(*v11 + 72);
      if (v13)
      {
        v13(*(v12 + 144));
      }
    }
  }

  result = 0;
LABEL_21:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297F59CC4(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = sub_297F557F8(a1);
  if (!v3)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "_phTmlNfc_SetDownload", 688, "tml!=NULL");
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446722;
    v15 = "_phTmlNfc_SetDownload";
    v16 = 1024;
    v17 = 688;
    v18 = 2080;
    v19 = "tml!=NULL";
    goto LABEL_14;
  }

  v4 = *(v3 + 112);
  if (!v4)
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v12(3, "%s:%i FAILED: %s", "_phTmlNfc_SetDownload", 689, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v11);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446722;
    v15 = "_phTmlNfc_SetDownload";
    v16 = 1024;
    v17 = 689;
    v18 = 2080;
    v19 = "tml->ifc!=NULL";
LABEL_14:
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
LABEL_15:
    result = 49;
    goto LABEL_16;
  }

  v5 = *v4;
  v6 = *(*v4 + 184);
  if (v6 && !v6(*(v5 + 264), a2 != 0))
  {
    result = 255;
  }

  else
  {
    result = 0;
  }

LABEL_16:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297F59EC4(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = sub_297F557F8(a1);
  if (!v3)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "_phTmlNfc_SetPMUStandbyEnabled", 661, "tml!=NULL");
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446722;
    v15 = "_phTmlNfc_SetPMUStandbyEnabled";
    v16 = 1024;
    v17 = 661;
    v18 = 2080;
    v19 = "tml!=NULL";
    goto LABEL_14;
  }

  v4 = *(v3 + 112);
  if (!v4)
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v12(3, "%s:%i FAILED: %s", "_phTmlNfc_SetPMUStandbyEnabled", 662, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v11);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446722;
    v15 = "_phTmlNfc_SetPMUStandbyEnabled";
    v16 = 1024;
    v17 = 662;
    v18 = 2080;
    v19 = "tml->ifc!=NULL";
LABEL_14:
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
LABEL_15:
    result = 49;
    goto LABEL_16;
  }

  v5 = *v4;
  v6 = *(*v4 + 168);
  if (v6 && !v6(*(v5 + 264), a2 != 0))
  {
    result = 255;
  }

  else
  {
    result = 0;
  }

LABEL_16:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297F5A0C4(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "_phTmlNfc_SerialLogEnable", 883, "tml!=NULL");
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136446722;
    v13 = "_phTmlNfc_SerialLogEnable";
    v14 = 1024;
    v15 = 883;
    v16 = 2080;
    v17 = "tml!=NULL";
LABEL_15:
    _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    goto LABEL_16;
  }

  v1 = *(a1 + 112);
  if (!v1)
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v10 = NFLogGetLogger();
    if (v10)
    {
      v10(3, "%s:%i FAILED: %s", "_phTmlNfc_SerialLogEnable", 884, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v9);
    v8 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136446722;
    v13 = "_phTmlNfc_SerialLogEnable";
    v14 = 1024;
    v15 = 884;
    v16 = 2080;
    v17 = "tml->ifc!=NULL";
    goto LABEL_15;
  }

  v2 = *v1;
  v3 = *(v2 + 96);
  if (!v3)
  {
LABEL_16:
    v11 = *MEMORY[0x29EDCA608];
    return;
  }

  v4 = *(v2 + 144);
  v5 = *MEMORY[0x29EDCA608];

  v3(v4);
}

uint64_t sub_297F5A2D4(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = sub_297F557F8(a1);
  if (!v3)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "_phTmlNfc_SetCRCEnable", 804, "tml!=NULL");
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446722;
    v15 = "_phTmlNfc_SetCRCEnable";
    v16 = 1024;
    v17 = 804;
    v18 = 2080;
    v19 = "tml!=NULL";
    goto LABEL_14;
  }

  v4 = *(v3 + 112);
  if (!v4)
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v12(3, "%s:%i FAILED: %s", "_phTmlNfc_SetCRCEnable", 805, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v11);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446722;
    v15 = "_phTmlNfc_SetCRCEnable";
    v16 = 1024;
    v17 = 805;
    v18 = 2080;
    v19 = "tml->ifc!=NULL";
LABEL_14:
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
LABEL_15:
    result = 49;
    goto LABEL_16;
  }

  v5 = *v4;
  v6 = *(*v4 + 112);
  if (v6 && !v6(*(v5 + 144), a2 != 0))
  {
    result = 255;
  }

  else
  {
    result = 0;
  }

LABEL_16:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297F5A4D4(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = sub_297F557F8(a1);
  if (!v3)
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "_phTmlNfc_vGPIO", 832, "tml!=NULL");
    }

    dispatch_get_specific(*v11);
    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446722;
    v22 = "_phTmlNfc_vGPIO";
    v23 = 1024;
    v24 = 832;
    v25 = 2080;
    v26 = "tml!=NULL";
    goto LABEL_18;
  }

  v4 = v3;
  v5 = *(v3 + 112);
  if (!v5)
  {
    v14 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v15(3, "%s:%i FAILED: %s", "_phTmlNfc_vGPIO", 833, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v14);
    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446722;
    v22 = "_phTmlNfc_vGPIO";
    v23 = 1024;
    v24 = 833;
    v25 = 2080;
    v26 = "tml->ifc!=NULL";
LABEL_18:
    _os_log_impl(&dword_297F52000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
LABEL_19:
    v9 = 49;
    goto LABEL_20;
  }

  v6 = *v5;
  v7 = v6[31];
  if (v7)
  {
    if (!v7(v6[33], a2))
    {
      v9 = 0;
      goto LABEL_20;
    }

    v6 = **(v4 + 112);
  }

  v8 = v6[28];
  v9 = 255;
  if (v8)
  {
    v10 = v8(v6[33]) & 1;
    if (v10)
    {
      v9 = 179;
    }

    else
    {
      v9 = 255;
    }
  }

  else
  {
    v10 = 0;
  }

  v18 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v19(3, "%s:%i Failed to send vGPIO. NACK = %d", "_phTmlNfc_vGPIO", 839, v10);
  }

  dispatch_get_specific(*v18);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v22 = "_phTmlNfc_vGPIO";
    v23 = 1024;
    v24 = 839;
    v25 = 1024;
    LODWORD(v26) = v10;
    _os_log_impl(&dword_297F52000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to send vGPIO. NACK = %d", buf, 0x18u);
  }

LABEL_20:
  v16 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t phTmlNfc_ConfigHsuBaudRate(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = sub_297F557F8(a1);
  if (!v3)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_ConfigHsuBaudRate", 1288, "tml!=NULL");
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136446722;
    v18 = "phTmlNfc_ConfigHsuBaudRate";
    v19 = 1024;
    v20 = 1288;
    v21 = 2080;
    v22 = "tml!=NULL";
    goto LABEL_15;
  }

  v4 = *(v3 + 112);
  if (!v4)
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v12(3, "%s:%i FAILED: %s", "phTmlNfc_ConfigHsuBaudRate", 1289, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v11);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136446722;
    v18 = "phTmlNfc_ConfigHsuBaudRate";
    v19 = 1024;
    v20 = 1289;
    v21 = 2080;
    v22 = "tml->ifc!=NULL";
LABEL_15:
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
LABEL_16:
    result = 49;
    goto LABEL_23;
  }

  if ((a2 - 1) >= 9)
  {
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v14(3, "%s:%i Invalid input baud rate", "phTmlNfc_ConfigHsuBaudRate", 1304);
    }

    dispatch_get_specific(*v13);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v18 = "phTmlNfc_ConfigHsuBaudRate";
      v19 = 1024;
      v20 = 1304;
      _os_log_impl(&dword_297F52000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid input baud rate", buf, 0x12u);
    }

    result = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(*v4 + 8);
    if (v6 && !v6(*(v5 + 144), qword_297F6BFE0[a2 - 1]))
    {
      result = 255;
    }

    else
    {
      result = 0;
    }
  }

LABEL_23:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t phTmlNfc_GetHsuMaxBaudRate(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a2 >= 2)
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Invalid mode parameter", "phTmlNfc_GetHsuMaxBaudRate", 1321);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v9 = "phTmlNfc_GetHsuMaxBaudRate";
      v10 = 1024;
      v11 = 1321;
      _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid mode parameter", buf, 0x12u);
    }

    result = 1;
  }

  else
  {
    result = 0;
    *a3 = 5;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t phTmlNfc_SpmiDrvErrorStatus(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v36 = *MEMORY[0x29EDCA608];
  v5 = sub_297F557F8(a1);
  memset(v35, 0, sizeof(v35));
  v26 = 64;
  if (!v5)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_SpmiDrvErrorStatus", 1336, "tml!=NULL");
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 136446722;
    v28 = "phTmlNfc_SpmiDrvErrorStatus";
    v29 = 1024;
    v30 = 1336;
    v31 = 2080;
    v32 = "tml!=NULL";
    goto LABEL_13;
  }

  v6 = *(v5 + 112);
  if (!v6)
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v12(3, "%s:%i FAILED: %s", "phTmlNfc_SpmiDrvErrorStatus", 1337, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v11);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 136446722;
    v28 = "phTmlNfc_SpmiDrvErrorStatus";
    v29 = 1024;
    v30 = 1337;
    v31 = 2080;
    v32 = "tml->ifc!=NULL";
LABEL_13:
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
LABEL_14:
    result = 49;
    goto LABEL_15;
  }

  if (a3)
  {
LABEL_4:
    result = 0;
    goto LABEL_15;
  }

  v14 = *v6;
  v15 = *(*v6 + 128);
  if (v15 && v15(*(v14 + 144), v35, &v26, a2[5]))
  {
    phTmlNfc_ParseSpmiDrvErrorStatus(v35, v26, a2);
    goto LABEL_4;
  }

  v16 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v17 = NFLogGetLogger();
  if (v17)
  {
    v18 = v17;
    v19 = __error();
    v20 = strerror(*v19);
    v21 = __error();
    v18(3, "%s:%i %s errno=%d Failed to query SPMI error registers", "phTmlNfc_SpmiDrvErrorStatus", 1346, v20, *v21);
  }

  dispatch_get_specific(*v16);
  v22 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = __error();
    v24 = strerror(*v23);
    v25 = *__error();
    *buf = 136446978;
    v28 = "phTmlNfc_SpmiDrvErrorStatus";
    v29 = 1024;
    v30 = 1346;
    v31 = 2080;
    v32 = v24;
    v33 = 1024;
    v34 = v25;
    _os_log_impl(&dword_297F52000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d Failed to query SPMI error registers", buf, 0x22u);
  }

  result = 255;
LABEL_15:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t phTmlNfc_ParseSpmiDrvErrorStatus(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v28 = *MEMORY[0x29EDCA608];
  result = 1;
  if (a1 && a3)
  {
    if (a2 < 3)
    {
LABEL_4:
      result = 0;
      goto LABEL_5;
    }

    v19 = a3 + 3;
    v17 = a3 + 4;
    v18 = a3 + 1;
    v8 = (a1 + 2);
    v9 = 3;
    v10 = MEMORY[0x29EDC9730];
    while (1)
    {
      v11 = *(v8 - 2);
      if (v11 <= 5)
      {
        break;
      }

      v12 = a3 + 2;
      if (v11 == 6)
      {
        goto LABEL_14;
      }

      v12 = v19;
      if (v11 == 7)
      {
        goto LABEL_14;
      }

      if (v11 == 8)
      {
        v12 = v17;
LABEL_14:
        *v12 = *v8;
      }

LABEL_15:
      dispatch_get_specific(*v10);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i SPMI register 0x%02X = 0x%02X", "phTmlNfc_ParseSpmiDrvErrorStatus", 1380, *(v8 - 2), *v8);
      }

      dispatch_get_specific(*v10);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(v8 - 2);
        v16 = *v8;
        *buf = 136446978;
        v21 = "phTmlNfc_ParseSpmiDrvErrorStatus";
        v22 = 1024;
        v23 = 1380;
        v24 = 1024;
        v25 = v15;
        v26 = 1024;
        v27 = v16;
        _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i SPMI register 0x%02X = 0x%02X", buf, 0x1Eu);
      }

      v9 += 3;
      v8 += 3;
      if (v9 > a2)
      {
        goto LABEL_4;
      }
    }

    v12 = a3;
    if (v11 != 4)
    {
      v12 = v18;
      if (v11 != 5)
      {
        if (!*(v8 - 2))
        {
          goto LABEL_4;
        }

        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

LABEL_5:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t phTmlNfc_SetGetSpmiDrvConfigRegs()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i Not Implemented!!!", "phTmlNfc_SetGetSpmiDrvConfigRegs", 1394);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v6 = "phTmlNfc_SetGetSpmiDrvConfigRegs";
    v7 = 1024;
    v8 = 1394;
    _os_log_impl(&dword_297F52000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Not Implemented!!!", buf, 0x12u);
  }

  v3 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t phTmlNfc_ConfigureSpmi(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = sub_297F557F8(a1);
  if (!v2)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_ConfigureSpmi", 1404, "tml!=NULL");
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136446722;
    v36 = "phTmlNfc_ConfigureSpmi";
    v37 = 1024;
    v38 = 1404;
    v39 = 2080;
    v40 = "tml!=NULL";
    goto LABEL_16;
  }

  v3 = v2;
  if (*(v2 + 120))
  {
    v4 = "hammerfest-spmi";
  }

  else
  {
    v4 = "stockholm-spmi";
  }

  v5 = NFHardwareSkipSpmiReconfig(v4);
  if (*(v3 + 120) != 1)
  {
LABEL_11:
    result = 6;
    goto LABEL_18;
  }

  v6 = MEMORY[0x29EDC9730];
  if (v5)
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v7 = NFLogGetLogger();
    if (v7)
    {
      v7(4, "%s:%i Skipping SPMI reconfig.", "phTmlNfc_ConfigureSpmi", 1409);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v36 = "phTmlNfc_ConfigureSpmi";
      v37 = 1024;
      v38 = 1409;
      _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Skipping SPMI reconfig.", buf, 0x12u);
    }

    goto LABEL_11;
  }

  v14 = sub_297F557F8(a1);
  if (!v14)
  {
    dispatch_get_specific(*v6);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(3, "%s:%i FAILED: %s", "_phTmlNfc_ConfigureSPMI", 761, "tml!=NULL");
    }

    dispatch_get_specific(*v6);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136446722;
    v36 = "_phTmlNfc_ConfigureSPMI";
    v37 = 1024;
    v38 = 761;
    v39 = 2080;
    v40 = "tml!=NULL";
    goto LABEL_16;
  }

  v15 = v14;
  if (!*(v14 + 112) || !*(v14 + 128))
  {
    dispatch_get_specific(*v6);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(3, "%s:%i FAILED: %s", "_phTmlNfc_ConfigureSPMI", 763, "(tml->ifc && tml->auxIfc)");
    }

    dispatch_get_specific(*v6);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136446722;
    v36 = "_phTmlNfc_ConfigureSPMI";
    v37 = 1024;
    v38 = 763;
    v39 = 2080;
    v40 = "(tml->ifc && tml->auxIfc)";
LABEL_16:
    _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
LABEL_17:
    result = 49;
    goto LABEL_18;
  }

  dispatch_get_specific(*v6);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v16(6, "%s:%i Validating Hammerfest SPMI config...", "_phTmlNfc_ConfigureSPMI", 773);
  }

  dispatch_get_specific(*v6);
  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v36 = "_phTmlNfc_ConfigureSPMI";
    v37 = 1024;
    v38 = 773;
    _os_log_impl(&dword_297F52000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Validating Hammerfest SPMI config...", buf, 0x12u);
  }

  v18 = **(v15 + 112);
  v19 = *(v18 + 208);
  if (v19)
  {
    v20 = v19(*(v18 + 264));
  }

  else
  {
    v20 = 1;
  }

  dispatch_get_specific(*v6);
  v23 = NFLogGetLogger();
  if (v20)
  {
    if (v23)
    {
      v23(6, "%s:%i Hammerfest SPMI config is good", "_phTmlNfc_ConfigureSPMI", 779);
    }

    dispatch_get_specific(*v6);
    v24 = NFSharedLogGetLogger();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v25)
    {
      *buf = 136446466;
      v36 = "_phTmlNfc_ConfigureSPMI";
      v37 = 1024;
      v38 = 779;
      _os_log_impl(&dword_297F52000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Hammerfest SPMI config is good", buf, 0x12u);
      result = 0;
    }
  }

  else
  {
    if (v23)
    {
      v23(6, "%s:%i Hammerfest SPMI config is incorrect", "_phTmlNfc_ConfigureSPMI", 776);
    }

    dispatch_get_specific(*v6);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v36 = "_phTmlNfc_ConfigureSPMI";
      v37 = 1024;
      v38 = 776;
      _os_log_impl(&dword_297F52000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Hammerfest SPMI config is incorrect", buf, 0x12u);
    }

    dispatch_get_specific(*v6);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v27(6, "%s:%i Setting Hammerfest SPMI config...", "_phTmlNfc_ConfigureSPMI", 784);
    }

    dispatch_get_specific(*v6);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v36 = "_phTmlNfc_ConfigureSPMI";
      v37 = 1024;
      v38 = 784;
      _os_log_impl(&dword_297F52000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Setting Hammerfest SPMI config...", buf, 0x12u);
    }

    v29 = **(v15 + 128);
    v30 = *(v29 + 216);
    if (v30)
    {
      v31 = v30(*(v29 + 264));
    }

    else
    {
      v31 = 1;
    }

    dispatch_get_specific(*v6);
    v32 = NFLogGetLogger();
    if (v31)
    {
      if (v32)
      {
        v32(6, "%s:%i Hammerfest SPMI config is set", "_phTmlNfc_ConfigureSPMI", 791);
      }

      dispatch_get_specific(*v6);
      v33 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v36 = "_phTmlNfc_ConfigureSPMI";
        v37 = 1024;
        v38 = 791;
        _os_log_impl(&dword_297F52000, v33, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Hammerfest SPMI config is set", buf, 0x12u);
      }

      result = 0;
      *(v15 + 121) = 0;
    }

    else
    {
      if (v32)
      {
        v32(6, "%s:%i Failed to set Hammerfest SPMI config", "_phTmlNfc_ConfigureSPMI", 788);
      }

      dispatch_get_specific(*v6);
      v34 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v36 = "_phTmlNfc_ConfigureSPMI";
        v37 = 1024;
        v38 = 788;
        _os_log_impl(&dword_297F52000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Failed to set Hammerfest SPMI config", buf, 0x12u);
      }

      result = 255;
    }
  }

LABEL_18:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t phTmlNfc_RegisterSpmiErrorCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v5 = sub_297F557F8(a1);
  if (!v5)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_RegisterSpmiErrorCallback", 1422, "tml!=NULL");
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446722;
    v20 = "phTmlNfc_RegisterSpmiErrorCallback";
    v21 = 1024;
    v22 = 1422;
    v23 = 2080;
    v24 = "tml!=NULL";
    goto LABEL_14;
  }

  v6 = *(v5 + 112);
  if (!v6)
  {
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v14(3, "%s:%i FAILED: %s", "phTmlNfc_RegisterSpmiErrorCallback", 1423, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v13);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446722;
    v20 = "phTmlNfc_RegisterSpmiErrorCallback";
    v21 = 1024;
    v22 = 1423;
    v23 = 2080;
    v24 = "tml->ifc!=NULL";
LABEL_14:
    _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
LABEL_15:
    result = 49;
    goto LABEL_16;
  }

  v7 = *v6;
  v8 = *(*v6 + 240);
  if (v8 && (v8(*(v7 + 144), a2, a3) & 1) == 0)
  {
    v16 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v17(3, "%s:%i Failed to register SPMI error callback", "phTmlNfc_RegisterSpmiErrorCallback", 1427);
    }

    dispatch_get_specific(*v16);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v20 = "phTmlNfc_RegisterSpmiErrorCallback";
      v21 = 1024;
      v22 = 1427;
      _os_log_impl(&dword_297F52000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to register SPMI error callback", buf, 0x12u);
    }

    result = 255;
  }

  else
  {
    result = 0;
  }

LABEL_16:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t phOsalNfc_Timer_Init(int a1, NSObject **a2)
{
  v32 = *MEMORY[0x29EDCA608];
  if (sub_297F52C6C(a1))
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Timer already initialized for config %d", "phOsalNfc_Timer_Init", 209, a1);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *v28 = "phOsalNfc_Timer_Init";
      *&v28[8] = 1024;
      v29 = 209;
      v30 = 1024;
      v31 = a1;
      _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Timer already initialized for config %d", buf, 0x18u);
    }

    result = 50;
  }

  else
  {
    os_unfair_lock_lock(&unk_2A18BD260);
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = v9;
      if (!qword_2A18BD240[v8])
      {
        break;
      }

      v9 = 0;
      v8 = 1;
      if ((v10 & 1) == 0)
      {
        os_unfair_lock_unlock(&unk_2A18BD260);
        v11 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v12 = NFLogGetLogger();
        if (v12)
        {
          v12(3, "%s:%i Failed to allocate timer context - no space available.", "_phTmlNfc_AllocateContext", 77);
        }

        dispatch_get_specific(*v11);
        v13 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *v28 = "_phTmlNfc_AllocateContext";
          *&v28[8] = 1024;
          v29 = 77;
          _os_log_impl(&dword_297F52000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate timer context - no space available.", buf, 0x12u);
        }

        dispatch_get_specific(*v11);
        v14 = NFLogGetLogger();
        if (v14)
        {
          v14(3, "%s:%i failed to start timer thread", "phOsalNfc_Timer_Init", 215);
        }

        dispatch_get_specific(*v11);
        v15 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *v28 = "phOsalNfc_Timer_Init";
          *&v28[8] = 1024;
          v29 = 215;
          _os_log_impl(&dword_297F52000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to start timer thread", buf, 0x12u);
        }

        result = 225;
        goto LABEL_32;
      }
    }

    v16 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v17 = NFSharedMiddlewareSignpostLog();
    if (!v17)
    {
      v17 = NFSharedSignpostLog();
    }

    if (os_signpost_enabled(v17))
    {
      *buf = 67109376;
      *v28 = v8;
      *&v28[4] = 1024;
      *&v28[6] = a1;
      _os_signpost_emit_with_name_impl(&dword_297F52000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Allocated Timer", "slot %d, ctlr %d", buf, 0xEu);
    }

    v18 = malloc_type_calloc(1uLL, 0xF8uLL, 0x1020040052397EFuLL);
    *(v18 + 60) = a1;
    qword_2A18BD240[v8] = v18;
    os_unfair_lock_unlock(&unk_2A18BD260);
    v19 = pthread_mutex_init((v18 + 176), 0);
    if (v19)
    {
      v20 = v19;
      dispatch_get_specific(*v16);
      v21 = NFLogGetLogger();
      if (v21)
      {
        v21(3, "%s:%i Failed to create mutex: %d", "phOsalNfc_Timer_Init", 221, v20);
      }

      dispatch_get_specific(*v16);
      v22 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *v28 = "phOsalNfc_Timer_Init";
        *&v28[8] = 1024;
        v29 = 221;
        v30 = 1024;
        v31 = v20;
        _os_log_impl(&dword_297F52000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to create mutex: %d", buf, 0x18u);
      }

      sub_297F5BF80(a1);
      result = 255;
    }

    else
    {
      v23 = *a2;
      *(v18 + 21) = *a2;
      dispatch_retain(v23);
      for (i = 8; i != 168; i += 32)
      {
        v25 = &v18[i];
        *v25 = xmmword_297F6C050;
        *(v25 + 1) = xmmword_297F6C050;
      }

      result = 0;
      *v18 = 1;
    }
  }

LABEL_32:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297F5BF80(int a1)
{
  v15 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&unk_2A18BD260);
  v2 = 0;
  v3 = 1;
  while (1)
  {
    v4 = v3;
    v5 = qword_2A18BD240[v2];
    if (v5)
    {
      if (*(v5 + 240) == a1)
      {
        break;
      }
    }

    v3 = 0;
    v2 = 1;
    if ((v4 & 1) == 0)
    {
      os_unfair_lock_unlock(&unk_2A18BD260);
      v6 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Failed to release timer context - not found", "_phTmlNfc_ReleaseContext", 100);
      }

      dispatch_get_specific(*v6);
      v8 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *v13 = "_phTmlNfc_ReleaseContext";
        *&v13[8] = 1024;
        v14 = 100;
        _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to release timer context - not found", buf, 0x12u);
      }

      goto LABEL_16;
    }
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v9 = NFSharedMiddlewareSignpostLog();
  if (!v9)
  {
    v9 = NFSharedSignpostLog();
  }

  if (os_signpost_enabled(v9))
  {
    *buf = 67109376;
    *v13 = v2;
    *&v13[4] = 1024;
    *&v13[6] = a1;
    _os_signpost_emit_with_name_impl(&dword_297F52000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Released Timer", "slot %d, ctlr %d", buf, 0xEu);
  }

  v10 = qword_2A18BD240[v2];
  if (v10)
  {
    free(v10);
  }

  qword_2A18BD240[v2] = 0;
  os_unfair_lock_unlock(&unk_2A18BD260);
LABEL_16:
  v11 = *MEMORY[0x29EDCA608];
}

uint64_t phOsalNfc_Timer_Deinit(int a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = sub_297F52C6C(a1);
  if (v2)
  {
    v3 = v2;
    dispatch_assert_queue_V2(*(v2 + 168));
    pthread_mutex_lock((v3 + 176));
    v4 = (v3 + 8);
    v5 = 10;
    do
    {
      if (*v4 != 0xFFFFFFFFFFFFLL)
      {
        sub_297F52D00(v4, 1);
      }

      v4 += 2;
      --v5;
    }

    while (v5);
    pthread_mutex_unlock((v3 + 176));
    pthread_mutex_destroy((v3 + 176));
    dispatch_release(*(v3 + 168));
    *(v3 + 168) = 0;
    sub_297F5BF80(a1);
    result = 0;
  }

  else
  {
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to get timer context", "phOsalNfc_Timer_Deinit", 251);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v12 = "phOsalNfc_Timer_Deinit";
      v13 = 1024;
      v14 = 251;
      _os_log_impl(&dword_297F52000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get timer context", buf, 0x12u);
    }

    result = 49;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t phOsalNfc_Timer_Delete(int a1, const char *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = sub_297F52C6C(a1);
  if (v4)
  {
    v5 = v4;
    pthread_mutex_lock((v4 + 176));
    v6 = (v5 + 8);
    v7 = 10;
    while (*v6 != a2)
    {
      v6 += 2;
      if (!--v7)
      {
        v8 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i Failed to get timer %llX from context", "phOsalNfc_Timer_Delete", 399, a2);
        }

        dispatch_get_specific(*v8);
        v10 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v19 = "phOsalNfc_Timer_Delete";
          v20 = 1024;
          v21 = 399;
          v22 = 2048;
          v23 = a2;
          _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get timer %llX from context", buf, 0x1Cu);
        }

        v11 = 1;
        goto LABEL_19;
      }
    }

    v11 = sub_297F52D00(v6, 1);
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v15 = NFSharedMiddlewareSignpostLog();
    if (!v15)
    {
      v15 = NFSharedSignpostLog();
    }

    if (os_signpost_enabled(v15))
    {
      *buf = 134218240;
      v19 = a2;
      v20 = 1024;
      v21 = a1;
      _os_signpost_emit_with_name_impl(&dword_297F52000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Deleted Timer", "timerId %llX, ctlr %d", buf, 0x12u);
    }

LABEL_19:
    pthread_mutex_unlock((v5 + 176));
  }

  else
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Failed to get timer context", "phOsalNfc_Timer_Delete", 392);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v19 = "phOsalNfc_Timer_Delete";
      v20 = 1024;
      v21 = 392;
      _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get timer context", buf, 0x12u);
    }

    v11 = 49;
  }

  v16 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t sub_297F5C58C(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = CFAbsoluteTimeGetCurrent() - *(*(*(a1 + 32) + 8) + 24);
  if (v2 > 0.100000001)
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(4, "%s:%i Timer fired late: %f", "_phOsalNfc_Timer_StartTimer_block_invoke", 158, *&v2);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "_phOsalNfc_Timer_StartTimer_block_invoke";
      v10 = 1024;
      v11 = 158;
      v12 = 2048;
      v13 = v2;
      _os_log_impl(&dword_297F52000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i Timer fired late: %f", buf, 0x1Cu);
    }
  }

  phOsalNfc_Timer_Stop(*(a1 + 64), *(a1 + 40));
  result = (*(a1 + 48))(*(a1 + 40), *(a1 + 56));
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void phOsalNfc_LogStr(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i %s", "phOsalNfc_LogStr", 65, a4);
      }

      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v16 = "phOsalNfc_LogStr";
        v17 = 1024;
        v18 = 65;
        v19 = 2080;
        v20 = a4;
        v9 = v13;
        v10 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_22;
      }
    }

    else if (a3 == 5)
    {
      v7 = NFLogGetLogger();
      if (v7)
      {
        v7(7, "%s:%i %s", "phOsalNfc_LogStr", 65, a4);
      }

      v8 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v16 = "phOsalNfc_LogStr";
        v17 = 1024;
        v18 = 65;
        v19 = 2080;
        v20 = a4;
        v9 = v8;
        v10 = OS_LOG_TYPE_DEBUG;
LABEL_22:
        _os_log_impl(&dword_297F52000, v9, v10, "%{public}s:%i %s", buf, 0x1Cu);
      }
    }
  }

  else if (a3 == 1)
  {
    v11 = NFLogGetLogger();
    if (v11)
    {
      v11(3, "%s:%i %s", "phOsalNfc_LogStr", 65, a4);
    }

    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }
  }

  else if (a3 == 2)
  {
    v5 = NFLogGetLogger();
    if (v5)
    {
      v5(4, "%s:%i %s", "phOsalNfc_LogStr", 65, a4);
    }

    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      *buf = 136446722;
      v16 = "phOsalNfc_LogStr";
      v17 = 1024;
      v18 = 65;
      v19 = 2080;
      v20 = a4;
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
      goto LABEL_22;
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

void phOsalNfc_LogU32(uint64_t a1, uint64_t a2, int a3, const char *a4, int a5)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i %s=%d", "phOsalNfc_LogU32", 74, a4, a5);
      }

      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v18 = "phOsalNfc_LogU32";
        v19 = 1024;
        v20 = 74;
        v21 = 2080;
        v22 = a4;
        v23 = 1024;
        v24 = a5;
        v11 = v15;
        v12 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_22;
      }
    }

    else if (a3 == 5)
    {
      v9 = NFLogGetLogger();
      if (v9)
      {
        v9(7, "%s:%i %s=%d", "phOsalNfc_LogU32", 74, a4, a5);
      }

      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        v18 = "phOsalNfc_LogU32";
        v19 = 1024;
        v20 = 74;
        v21 = 2080;
        v22 = a4;
        v23 = 1024;
        v24 = a5;
        v11 = v10;
        v12 = OS_LOG_TYPE_DEBUG;
LABEL_22:
        _os_log_impl(&dword_297F52000, v11, v12, "%{public}s:%i %s=%d", buf, 0x22u);
      }
    }
  }

  else if (a3 == 1)
  {
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i %s=%d", "phOsalNfc_LogU32", 74, a4, a5);
    }

    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }
  }

  else if (a3 == 2)
  {
    v7 = NFLogGetLogger();
    if (v7)
    {
      v7(4, "%s:%i %s=%d", "phOsalNfc_LogU32", 74, a4, a5);
    }

    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      *buf = 136446978;
      v18 = "phOsalNfc_LogU32";
      v19 = 1024;
      v20 = 74;
      v21 = 2080;
      v22 = a4;
      v23 = 1024;
      v24 = a5;
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_22;
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

void phOsalNfc_LogX32(uint64_t a1, uint64_t a2, int a3, const char *a4, int a5)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i %s=0x%X", "phOsalNfc_LogX32", 83, a4, a5);
      }

      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v18 = "phOsalNfc_LogX32";
        v19 = 1024;
        v20 = 83;
        v21 = 2080;
        v22 = a4;
        v23 = 1024;
        v24 = a5;
        v11 = v15;
        v12 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_22;
      }
    }

    else if (a3 == 5)
    {
      v9 = NFLogGetLogger();
      if (v9)
      {
        v9(7, "%s:%i %s=0x%X", "phOsalNfc_LogX32", 83, a4, a5);
      }

      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        v18 = "phOsalNfc_LogX32";
        v19 = 1024;
        v20 = 83;
        v21 = 2080;
        v22 = a4;
        v23 = 1024;
        v24 = a5;
        v11 = v10;
        v12 = OS_LOG_TYPE_DEBUG;
LABEL_22:
        _os_log_impl(&dword_297F52000, v11, v12, "%{public}s:%i %s=0x%X", buf, 0x22u);
      }
    }
  }

  else if (a3 == 1)
  {
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i %s=0x%X", "phOsalNfc_LogX32", 83, a4, a5);
    }

    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }
  }

  else if (a3 == 2)
  {
    v7 = NFLogGetLogger();
    if (v7)
    {
      v7(4, "%s:%i %s=0x%X", "phOsalNfc_LogX32", 83, a4, a5);
    }

    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      *buf = 136446978;
      v18 = "phOsalNfc_LogX32";
      v19 = 1024;
      v20 = 83;
      v21 = 2080;
      v22 = a4;
      v23 = 1024;
      v24 = a5;
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_22;
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

void phOsalNfc_LogX64(uint64_t a1, uint64_t a2, int a3, const char *a4, uint64_t a5)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i %s=0x%llX", "phOsalNfc_LogX64", 92, a4, a5);
      }

      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v18 = "phOsalNfc_LogX64";
        v19 = 1024;
        v20 = 92;
        v21 = 2080;
        v22 = a4;
        v23 = 2048;
        v24 = a5;
        v11 = v15;
        v12 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_22;
      }
    }

    else if (a3 == 5)
    {
      v9 = NFLogGetLogger();
      if (v9)
      {
        v9(7, "%s:%i %s=0x%llX", "phOsalNfc_LogX64", 92, a4, a5);
      }

      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        v18 = "phOsalNfc_LogX64";
        v19 = 1024;
        v20 = 92;
        v21 = 2080;
        v22 = a4;
        v23 = 2048;
        v24 = a5;
        v11 = v10;
        v12 = OS_LOG_TYPE_DEBUG;
LABEL_22:
        _os_log_impl(&dword_297F52000, v11, v12, "%{public}s:%i %s=0x%llX", buf, 0x26u);
      }
    }
  }

  else if (a3 == 1)
  {
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i %s=0x%llX", "phOsalNfc_LogX64", 92, a4, a5);
    }

    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }
  }

  else if (a3 == 2)
  {
    v7 = NFLogGetLogger();
    if (v7)
    {
      v7(4, "%s:%i %s=0x%llX", "phOsalNfc_LogX64", 92, a4, a5);
    }

    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      *buf = 136446978;
      v18 = "phOsalNfc_LogX64";
      v19 = 1024;
      v20 = 92;
      v21 = 2080;
      v22 = a4;
      v23 = 2048;
      v24 = a5;
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_22;
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

void phOsalNfc_LogBool(uint64_t a1, uint64_t a2, int a3, const char *a4, int a5)
{
  v33 = *MEMORY[0x29EDCA608];
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v21 = "TRUE";
        if (!a5)
        {
          v21 = "FALSE";
        }

        Logger(6, "%s:%i %s=%s", "phOsalNfc_LogBool", 104, a4, v21);
      }

      v22 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = "TRUE";
        v26 = "phOsalNfc_LogBool";
        v27 = 1024;
        v28 = 104;
        *buf = 136446978;
        v29 = 2080;
        if (!a5)
        {
          v23 = "FALSE";
        }

        v30 = a4;
        v31 = 2080;
        v32 = v23;
        v15 = v22;
        v16 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_41;
      }
    }

    else if (a3 == 5)
    {
      v11 = NFLogGetLogger();
      if (v11)
      {
        if (a5)
        {
          v12 = "TRUE";
        }

        else
        {
          v12 = "FALSE";
        }

        v11(7, "%s:%i %s=%s", "phOsalNfc_LogBool", 104, a4, v12);
      }

      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        if (a5)
        {
          v14 = "TRUE";
        }

        else
        {
          v14 = "FALSE";
        }

        *buf = 136446978;
        v26 = "phOsalNfc_LogBool";
        v27 = 1024;
        v28 = 104;
        v29 = 2080;
        v30 = a4;
        v31 = 2080;
        v32 = v14;
        v15 = v13;
        v16 = OS_LOG_TYPE_DEBUG;
        goto LABEL_41;
      }
    }
  }

  else if (a3 == 1)
  {
    v17 = NFLogGetLogger();
    if (v17)
    {
      v18 = "TRUE";
      if (!a5)
      {
        v18 = "FALSE";
      }

      v17(3, "%s:%i %s=%s", "phOsalNfc_LogBool", 104, a4, v18);
    }

    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v19 = "TRUE";
      v26 = "phOsalNfc_LogBool";
      v27 = 1024;
      v28 = 104;
      *buf = 136446978;
      v29 = 2080;
      if (!a5)
      {
        v19 = "FALSE";
      }

      v30 = a4;
      v31 = 2080;
      v32 = v19;
      goto LABEL_32;
    }
  }

  else if (a3 == 2)
  {
    v7 = NFLogGetLogger();
    if (v7)
    {
      v8 = "TRUE";
      if (!a5)
      {
        v8 = "FALSE";
      }

      v7(4, "%s:%i %s=%s", "phOsalNfc_LogBool", 104, a4, v8);
    }

    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = "TRUE";
      v26 = "phOsalNfc_LogBool";
      v27 = 1024;
      v28 = 104;
      *buf = 136446978;
      v29 = 2080;
      if (!a5)
      {
        v10 = "FALSE";
      }

      v30 = a4;
      v31 = 2080;
      v32 = v10;
LABEL_32:
      v15 = v9;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_41:
      _os_log_impl(&dword_297F52000, v15, v16, "%{public}s:%i %s=%s", buf, 0x26u);
    }
  }

  v24 = *MEMORY[0x29EDCA608];
}

void phOsalNfc_LogFunc(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  v19 = *MEMORY[0x29EDCA608];
  Logger = NFLogGetLogger();
  if (Logger)
  {
    if (a4)
    {
      v7 = "+";
    }

    else
    {
      v7 = "-";
    }

    Logger(7, "%s:%i :%s:%s", "phOsalNfc_LogFunc", 115, v7, a3);
  }

  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (a4)
    {
      v9 = "+";
    }

    else
    {
      v9 = "-";
    }

    *buf = 136446978;
    v12 = "phOsalNfc_LogFunc";
    v13 = 1024;
    v14 = 115;
    v15 = 2080;
    v16 = v9;
    v17 = 2080;
    v18 = a3;
    _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_DEBUG, "%{public}s:%i :%s:%s", buf, 0x26u);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void phOsalNfc_SignPostLogStr(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v28 = *MEMORY[0x29EDCA608];
  v7 = NFSharedMiddlewareSignpostLog();
  if (!v7)
  {
    goto LABEL_37;
  }

  v8 = v7;
  if (a2 <= 5)
  {
    if (a2 <= 2)
    {
      if (a2 != 1)
      {
        if (a2 == 2 && os_signpost_enabled(v7))
        {
          v13 = qword_29EE86AD0[a3];
          v24 = 136446466;
          v25 = v13;
          v26 = 2082;
          v27 = a4;
          v10 = "PHOSALNFC";
          v11 = "%{public}s%{public}s";
          goto LABEL_35;
        }

        goto LABEL_37;
      }

      v15 = os_signpost_enabled(v7);
      if (a3 != 3)
      {
        if (v15)
        {
          v21 = qword_29EE86AD0[a3];
          v24 = 136446466;
          v25 = v21;
          v26 = 2082;
          v27 = a4;
          v10 = "PHTMLNFC";
          v11 = "%{public}s%{public}s";
          goto LABEL_35;
        }

        goto LABEL_37;
      }

      if (!v15)
      {
        goto LABEL_37;
      }

      v24 = 136446210;
      v25 = a4;
      v10 = "PHTMLNFC";
      v11 = "%{public}s";
    }

    else
    {
      if (a2 != 3)
      {
        if (a2 != 4)
        {
          if (os_signpost_enabled(v7))
          {
            v9 = qword_29EE86AD0[a3];
            v24 = 136446466;
            v25 = v9;
            v26 = 2082;
            v27 = a4;
            v10 = "PHLIBNFC_INFRA";
            v11 = "%{public}s%{public}s";
LABEL_35:
            v17 = v8;
            v18 = 22;
            goto LABEL_36;
          }

          goto LABEL_37;
        }

LABEL_18:
        if (os_signpost_enabled(v7))
        {
          v14 = qword_29EE86AD0[a3];
          v24 = 136446466;
          v25 = v14;
          v26 = 2082;
          v27 = a4;
          v10 = "PHLIBNFC";
          v11 = "%{public}s%{public}s";
          goto LABEL_35;
        }

        goto LABEL_37;
      }

      v16 = os_signpost_enabled(v7);
      if (a3 != 3)
      {
        if (v16)
        {
          v22 = qword_29EE86AD0[a3];
          v24 = 136446466;
          v25 = v22;
          v26 = 2082;
          v27 = a4;
          v10 = "PHNCINFC";
          v11 = "%{public}s%{public}s";
          goto LABEL_35;
        }

        goto LABEL_37;
      }

      if (!v16)
      {
        goto LABEL_37;
      }

      v24 = 136446210;
      v25 = a4;
      v10 = "PHNCINFC";
      v11 = "%{public}s";
    }

    v17 = v8;
    v18 = 12;
LABEL_36:
    _os_signpost_emit_with_name_impl(&dword_297F52000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v10, v11, &v24, v18);
    goto LABEL_37;
  }

  if (a2 > 8)
  {
    if ((a2 - 9) > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_18;
  }

  if (a2 == 6)
  {
    if (os_signpost_enabled(v7))
    {
      v19 = qword_29EE86AD0[a3];
      v24 = 136446466;
      v25 = v19;
      v26 = 2082;
      v27 = a4;
      v10 = "PHLIBNFC_DNLD";
      v11 = "%{public}s%{public}s";
      goto LABEL_35;
    }
  }

  else if (a2 == 7)
  {
    if (os_signpost_enabled(v7))
    {
      v20 = qword_29EE86AD0[a3];
      v24 = 136446466;
      v25 = v20;
      v26 = 2082;
      v27 = a4;
      v10 = "PHLIBNFC_HCI";
      v11 = "%{public}s%{public}s";
      goto LABEL_35;
    }
  }

  else if (os_signpost_enabled(v7))
  {
    v12 = qword_29EE86AD0[a3];
    v24 = 136446466;
    v25 = v12;
    v26 = 2082;
    v27 = a4;
    v10 = "PHLIBNFC_NDEF";
    v11 = "%{public}s%{public}s";
    goto LABEL_35;
  }

LABEL_37:
  v23 = *MEMORY[0x29EDCA608];
}

void phOsalNfc_SignPostLogX32(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  v27 = *MEMORY[0x29EDCA608];
  v9 = NFSharedMiddlewareSignpostLog();
  if (!v9)
  {
    goto LABEL_29;
  }

  v10 = v9;
  if (a2 <= 5)
  {
    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        if (os_signpost_enabled(v9))
        {
          v16 = qword_29EE86AD0[a3];
          v21 = 136446722;
          v22 = v16;
          v23 = 2082;
          v24 = a4;
          v25 = 1024;
          v26 = a5;
          v12 = "PHTMLNFC";
          goto LABEL_28;
        }
      }

      else if (a2 == 2 && os_signpost_enabled(v9))
      {
        v14 = qword_29EE86AD0[a3];
        v21 = 136446722;
        v22 = v14;
        v23 = 2082;
        v24 = a4;
        v25 = 1024;
        v26 = a5;
        v12 = "PHOSALNFC";
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    if (a2 == 3)
    {
      if (os_signpost_enabled(v9))
      {
        v17 = qword_29EE86AD0[a3];
        v21 = 136446722;
        v22 = v17;
        v23 = 2082;
        v24 = a4;
        v25 = 1024;
        v26 = a5;
        v12 = "PHNCINFC";
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    if (a2 != 4)
    {
      if (os_signpost_enabled(v9))
      {
        v11 = qword_29EE86AD0[a3];
        v21 = 136446722;
        v22 = v11;
        v23 = 2082;
        v24 = a4;
        v25 = 1024;
        v26 = a5;
        v12 = "PHLIBNFC_INFRA";
LABEL_28:
        _os_signpost_emit_with_name_impl(&dword_297F52000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v12, "%{public}s%{public}s=0x%08X", &v21, 0x1Cu);
        goto LABEL_29;
      }

      goto LABEL_29;
    }

LABEL_18:
    if (os_signpost_enabled(v9))
    {
      v15 = qword_29EE86AD0[a3];
      v21 = 136446722;
      v22 = v15;
      v23 = 2082;
      v24 = a4;
      v25 = 1024;
      v26 = a5;
      v12 = "PHLIBNFC";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (a2 > 8)
  {
    if ((a2 - 9) > 1)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  if (a2 == 6)
  {
    if (os_signpost_enabled(v9))
    {
      v18 = qword_29EE86AD0[a3];
      v21 = 136446722;
      v22 = v18;
      v23 = 2082;
      v24 = a4;
      v25 = 1024;
      v26 = a5;
      v12 = "PHLIBNFC_DNLD";
      goto LABEL_28;
    }
  }

  else if (a2 == 7)
  {
    if (os_signpost_enabled(v9))
    {
      v19 = qword_29EE86AD0[a3];
      v21 = 136446722;
      v22 = v19;
      v23 = 2082;
      v24 = a4;
      v25 = 1024;
      v26 = a5;
      v12 = "PHLIBNFC_HCI";
      goto LABEL_28;
    }
  }

  else if (os_signpost_enabled(v9))
  {
    v13 = qword_29EE86AD0[a3];
    v21 = 136446722;
    v22 = v13;
    v23 = 2082;
    v24 = a4;
    v25 = 1024;
    v26 = a5;
    v12 = "PHLIBNFC_NDEF";
    goto LABEL_28;
  }

LABEL_29:
  v20 = *MEMORY[0x29EDCA608];
}

void phOsalNfc_SignPostLogFunc(unsigned int a1, int a2, const char *a3, char *a4, int a5)
{
  v49 = *MEMORY[0x29EDCA608];
  if (a1 <= 1)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  v10 = NFSharedMiddlewareSignpostLog();
  if (!v10)
  {
    goto LABEL_73;
  }

  v11 = v10;
  v12 = &unk_2A18BCFF8 + 264 * v9;
  v13 = *v12;
  if (!a5)
  {
    if (v13 != 3)
    {
      if (v13 != 1)
      {
        goto LABEL_73;
      }

      v18 = os_signpost_enabled(v10);
      if (a4)
      {
        if (v18)
        {
          v41 = 136446722;
          v42 = "-";
          v43 = 2082;
          v44 = v12 + 6;
          v45 = 2082;
          v46 = a4;
          v19 = "%{public}s:%{public}s :%{public}s";
          v20 = v11;
          v21 = 32;
LABEL_38:
          _os_signpost_emit_with_name_impl(&dword_297F52000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PHLIBNFC_API", v19, &v41, v21);
        }
      }

      else if (v18)
      {
        v41 = 136446466;
        v42 = "-";
        v43 = 2082;
        v44 = v12 + 6;
        v19 = "%{public}s:%{public}s";
        v20 = v11;
        v21 = 22;
        goto LABEL_38;
      }

      *v12 = 2;
      goto LABEL_40;
    }

    if (v12[5] == a2)
    {
      v26 = os_signpost_enabled(v10);
      if (a4)
      {
        if (v26)
        {
          v41 = 136446722;
          v42 = "-";
          v43 = 2082;
          v44 = v12 + 134;
          v45 = 2082;
          v46 = a4;
          v27 = "%{public}s:%{public}s :%{public}s";
          v28 = v11;
          v29 = 32;
LABEL_54:
          _os_signpost_emit_with_name_impl(&dword_297F52000, v28, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PHLIBNFC_API_NEW", v27, &v41, v29);
        }
      }

      else if (v26)
      {
        v41 = 136446466;
        v42 = "-";
        v43 = 2082;
        v44 = v12 + 134;
        v27 = "%{public}s:%{public}s";
        v28 = v11;
        v29 = 22;
        goto LABEL_54;
      }

      *v12 = 2;
      v12[5] = 0;
      goto LABEL_73;
    }

    v30 = v12[4];
    if (v30 == a2)
    {
      v31 = os_signpost_enabled(v10);
      if (a4)
      {
        if (!v31)
        {
LABEL_40:
          v12[4] = 0;
          goto LABEL_73;
        }

        v41 = 136446722;
        v42 = "-";
        v43 = 2082;
        v44 = v12 + 6;
        v45 = 2082;
        v46 = a4;
        v32 = "%{public}s:%{public}s :%{public}s";
        v33 = v11;
        v34 = 32;
      }

      else
      {
        if (!v31)
        {
          goto LABEL_40;
        }

        v41 = 136446466;
        v42 = "-";
        v43 = 2082;
        v44 = v12 + 6;
        v32 = "%{public}s:%{public}s";
        v33 = v11;
        v34 = 22;
      }

      _os_signpost_emit_with_name_impl(&dword_297F52000, v33, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PHLIBNFC_API", v32, &v41, v34);
      goto LABEL_40;
    }

    if (v12[5])
    {
      v35 = v30 == 0;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      if (v12[4])
      {
        if (v12[5])
        {
          goto LABEL_72;
        }

        if (os_signpost_enabled(v10))
        {
          v41 = 136446722;
          v42 = "-";
          v43 = 2082;
          v44 = v12 + 6;
          v45 = 2082;
          v46 = a4;
          _os_signpost_emit_with_name_impl(&dword_297F52000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PHLIBNFC_API", "%{public}s:%{public}s :%{public}s", &v41, 0x20u);
        }

        if (!os_signpost_enabled(v11))
        {
          goto LABEL_72;
        }

        v41 = 136446722;
        v42 = a3;
        v43 = 2082;
        v44 = v12 + 6;
        v45 = 1026;
        LODWORD(v46) = a2;
        v36 = "-: WARNING: %{public}s: Expected %{public}s eMWApi_Id{wrong}=%{public}d";
      }

      else
      {
        if (!v12[5])
        {
          goto LABEL_72;
        }

        if (os_signpost_enabled(v10))
        {
          v41 = 136446722;
          v42 = "-";
          v43 = 2082;
          v44 = v12 + 134;
          v45 = 2082;
          v46 = a4;
          _os_signpost_emit_with_name_impl(&dword_297F52000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PHLIBNFC_API_NEW", "%{public}s:%{public}s :%{public}s", &v41, 0x20u);
        }

        if (!os_signpost_enabled(v11))
        {
          goto LABEL_72;
        }

        v41 = 136446722;
        v42 = a3;
        v43 = 2082;
        v44 = v12 + 134;
        v45 = 1026;
        LODWORD(v46) = a2;
        v36 = "-: WARNING: %{public}s: Expected %{public}s eMWApi{wrong}=%{public}d";
      }

      v38 = v11;
      v39 = 28;
    }

    else
    {
      if (os_signpost_enabled(v10))
      {
        v41 = 136446722;
        v42 = "-";
        v43 = 2082;
        v44 = v12 + 6;
        v45 = 2082;
        v46 = a4;
        _os_signpost_emit_with_name_impl(&dword_297F52000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PHLIBNFC_API", "%{public}s:%{public}s :%{public}s", &v41, 0x20u);
      }

      if (os_signpost_enabled(v11))
      {
        v41 = 136446722;
        v42 = "-";
        v43 = 2082;
        v44 = v12 + 134;
        v45 = 2082;
        v46 = a4;
        _os_signpost_emit_with_name_impl(&dword_297F52000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PHLIBNFC_API_NEW", "%{public}s:%{public}s :%{public}s", &v41, 0x20u);
      }

      if (!os_signpost_enabled(v11))
      {
        goto LABEL_72;
      }

      v41 = 136446978;
      v42 = a3;
      v43 = 2082;
      v44 = v12 + 134;
      v45 = 2082;
      v46 = v12 + 6;
      v47 = 1026;
      v48 = a2;
      v36 = "-: WARNING: %{public}s: Expected %{public}s OR %{public}s eMWApi{wrong}=%{public}d";
      v38 = v11;
      v39 = 38;
    }

    _os_signpost_emit_with_name_impl(&dword_297F52000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LIBNFC", v36, &v41, v39);
LABEL_72:
    *v12 = 0;
    *(v12 + 2) = 0;
    *(v12 + 6) = 0u;
    *(v12 + 22) = 0u;
    *(v12 + 38) = 0u;
    *(v12 + 54) = 0u;
    *(v12 + 70) = 0u;
    *(v12 + 86) = 0u;
    *(v12 + 102) = 0u;
    *(v12 + 118) = 0u;
    *(v12 + 134) = 0u;
    *(v12 + 150) = 0u;
    *(v12 + 166) = 0u;
    *(v12 + 182) = 0u;
    *(v12 + 198) = 0u;
    *(v12 + 214) = 0u;
    *(v12 + 230) = 0u;
    *(v12 + 246) = 0u;
    goto LABEL_73;
  }

  switch(v13)
  {
    case 2:
      goto LABEL_9;
    case 1:
      v22 = os_signpost_enabled(v10);
      if (a4)
      {
        if (v22)
        {
          v41 = 136446722;
          v42 = "+";
          v43 = 2082;
          v44 = a3;
          v45 = 2082;
          v46 = a4;
          v23 = "%{public}s:%{public}s <- %{public}s";
          v24 = v11;
          v25 = 32;
LABEL_34:
          _os_signpost_emit_with_name_impl(&dword_297F52000, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PHLIBNFC_API_NEW", v23, &v41, v25);
        }
      }

      else if (v22)
      {
        v41 = 136446466;
        v42 = "+";
        v43 = 2082;
        v44 = a3;
        v23 = "%{public}s:%{public}s";
        v24 = v11;
        v25 = 22;
        goto LABEL_34;
      }

      *v12 = 3;
      v12[5] = a2;
      strlcpy(v12 + 134, a3, 0x80uLL);
      break;
    case 0:
LABEL_9:
      v14 = os_signpost_enabled(v10);
      if (a4)
      {
        if (v14)
        {
          v41 = 136446722;
          v42 = "+";
          v43 = 2082;
          v44 = a3;
          v45 = 2082;
          v46 = a4;
          v15 = "%{public}s:%{public}s <- %{public}s";
          v16 = v11;
          v17 = 32;
LABEL_26:
          _os_signpost_emit_with_name_impl(&dword_297F52000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PHLIBNFC_API", v15, &v41, v17);
        }
      }

      else if (v14)
      {
        v41 = 136446466;
        v42 = "+";
        v43 = 2082;
        v44 = a3;
        v15 = "%{public}s:%{public}s";
        v16 = v11;
        v17 = 22;
        goto LABEL_26;
      }

      *v12 = 1;
      v12[4] = a2;
      __strlcpy_chk();
      break;
  }

LABEL_73:
  v40 = *MEMORY[0x29EDCA608];
}

void phOsalNfc_SignPostLogHexData(uint64_t a1, int a2, int a3, _BYTE *a4, unsigned __int8 *a5, unsigned int a6)
{
  v26 = *MEMORY[0x29EDCA608];
  memset(v25, 0, sizeof(v25));
  LOBYTE(v10) = *a4;
  v11 = v25;
  if (*a4)
  {
    v12 = 0;
    do
    {
      v25[v12] = v10;
      v13 = v12 + 1;
      if (v12 > 0x1A)
      {
        break;
      }

      v10 = a4[++v12];
    }

    while (v10);
    v11 = &v25[v13];
  }

  *v11 = 58;
  if (a6)
  {
    v14 = v11 + 1;
    v15 = 1;
    v16 = a6;
    do
    {
      v18 = *a5++;
      v17 = v18;
      v19 = v18 & 0xF;
      v20 = (v18 >> 4) + 55;
      v21 = (v18 >> 4) | 0x30;
      if (v18 >= 0xA0)
      {
        LOBYTE(v21) = v20;
      }

      *v14 = v21;
      v22 = v17 & 0xF | 0x30;
      v23 = v19 + 55;
      if (v19 < 0xA)
      {
        v23 = v22;
      }

      v14[1] = v23;
      *(v14 + 1) = 32;
      if ((v15 & 3) != 0)
      {
        v14 += 3;
      }

      else
      {
        v14[5] = 0;
        v14 += 5;
        *(v14 - 1) = 8224;
      }

      if ((v15 & 0xF) == 0)
      {
        *v14 = 0;
        v14 = v25;
        phOsalNfc_SignPostLogStr(a1, a2, a3, v25);
        v25[0] = 0;
      }

      ++v15;
      --v16;
    }

    while (v16);
  }

  if (v25[0])
  {
    phOsalNfc_SignPostLogStr(a1, a2, a3, v25);
  }

  v24 = *MEMORY[0x29EDCA608];
}

uint64_t NFCalibrationGetRFConfigTLVs(CFStringRef *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = NFHardwareLoad("stockholm");
  if (v2)
  {
    v3 = v2;
    RFConfigTLVs = NFHardwareGetRFConfigTLVs(v2, a1);
    NFHardwareUnload(v3);
    v5 = *MEMORY[0x29EDCA608];
    return RFConfigTLVs;
  }

  else
  {
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(4, "%s:%i Failed to load hw", "NFCalibrationGetRFConfigTLVs", 18);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v12 = "NFCalibrationGetRFConfigTLVs";
      v13 = 1024;
      v14 = 18;
      _os_log_impl(&dword_297F52000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load hw", buf, 0x12u);
    }

    v10 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

CFStringRef NFCalibrationCopyAntennaName(const char *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i driverName=%s", "NFCalibrationCopyAntennaName", 33, a1);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v13 = "NFCalibrationCopyAntennaName";
    v14 = 1024;
    v15 = 33;
    v16 = 2080;
    v17 = a1;
    _os_log_impl(&dword_297F52000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i driverName=%s", buf, 0x1Cu);
  }

  v5 = NFHardwareLoad(a1);
  if (v5)
  {
    v6 = v5;
    v7 = NFHardwareCopyAntennaName(v5);
    NFHardwareUnload(v6);
  }

  else
  {
    dispatch_get_specific(*v2);
    v8 = NFLogGetLogger();
    if (v8)
    {
      v8(4, "%s:%i Failed to load hw", "NFCalibrationCopyAntennaName", 36);
    }

    dispatch_get_specific(*v2);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v13 = "NFCalibrationCopyAntennaName";
      v14 = 1024;
      v15 = 36;
      _os_log_impl(&dword_297F52000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load hw", buf, 0x12u);
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v7;
}

void *phOsalNfc_GetMemory(int a1, size_t size)
{
  if (size)
  {
    return malloc_type_calloc(1uLL, size, 0x69ABD3EBuLL);
  }

  else
  {
    return 0;
  }
}

uint64_t phOsalNfc_IsHeapMemory()
{
  v12 = *MEMORY[0x29EDCA608];
  v0 = malloc_default_zone();
  if (v0)
  {
    claimed_address = v0->claimed_address;
    if (claimed_address)
    {
      v2 = v0->claimed_address;
      if (claimed_address() == 1)
      {
        result = 0;
      }

      else
      {
        result = 255;
      }
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i phOsalNfc_IsHeapMemory: malloc_default_zone returned NULL", "phOsalNfc_IsHeapMemory", 211);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v9 = "phOsalNfc_IsHeapMemory";
      v10 = 1024;
      v11 = 211;
      _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i phOsalNfc_IsHeapMemory: malloc_default_zone returned NULL", buf, 0x12u);
    }

    result = 12;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t phOsalNfc_MemCompare(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int a4)
{
  result = 1;
  if (a2 && a3 && a4)
  {
    v5 = a4 - 1;
    do
    {
      v7 = *a3++;
      v6 = v7;
      v8 = *a2++;
      result = (v6 - v8);
      v9 = v5-- != 0;
    }

    while (v9 && !result);
  }

  return result;
}

uint64_t phOsalNfc_RaiseExceptionWithDescription(int a1, unsigned int a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i EXCEPTION=%d REASON=%d", "phOsalNfc_RaiseExceptionWithDescription", 303, a1, a2);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v10 = "phOsalNfc_RaiseExceptionWithDescription";
    v11 = 1024;
    v12 = 303;
    v13 = 1024;
    v14 = a1;
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i EXCEPTION=%d REASON=%d", buf, 0x1Eu);
  }

  result = NFIsRestoreOS();
  if ((result & 1) == 0)
  {
    if (byte_2A18BCFF0 == 1)
    {
      result = postAnalyticsMiddlewareExceptionEvent();
    }

    if (a1 == 2 && a2 >= 0x1000)
    {
      result = NFProductIsDevBoard();
      if ((result & 1) == 0)
      {
        NFSimulateCrash();
        exit(1);
      }
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t phOsalNfc_Init(int a1, uint64_t a2)
{
  v29 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&unk_2A18BD228);
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = *(&unk_2A18BD228 + v4 + 1);
    if (v7 && *(v7 + 8) == a1)
    {
      v15 = 50;
      goto LABEL_20;
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  v8 = 0;
  v9 = 1;
  while (1)
  {
    v10 = &unk_2A18BD228 + 8 * v8;
    if (!*(v10 + 1))
    {
      break;
    }

    v11 = v9;
    v9 = 0;
    v8 = 1;
    if ((v11 & 1) == 0)
    {
      v12 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Failed to allocate OSAL context - no space available", "_phOsalNfc_CreateContext", 87);
      }

      dispatch_get_specific(*v12);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v24 = "_phOsalNfc_CreateContext";
        v25 = 1024;
        v26 = 87;
        _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate OSAL context - no space available", buf, 0x12u);
      }

      v15 = 255;
      goto LABEL_20;
    }
  }

  v16 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A004053CD2466uLL);
  v16[12] = 0;
  *(v16 + 4) = 0u;
  *(v16 + 5) = 0u;
  *(v16 + 2) = 0u;
  *(v16 + 3) = 0u;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 2) = a1;
  *(v10 + 1) = v16;
  v17 = *(a2 + 8);
  byte_2A18BCFF0 = *(v17 + 17);
  v15 = phOsalNfc_Timer_Init(a1, v17);
  if (v15)
  {
    v18 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v19(3, "%s:%i Failed to init timer: %d", "phOsalNfc_Init", 360, v15);
    }

    dispatch_get_specific(*v18);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v24 = "phOsalNfc_Init";
      v25 = 1024;
      v26 = 360;
      v27 = 1024;
      v28 = v15;
      _os_log_impl(&dword_297F52000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to init timer: %d", buf, 0x18u);
    }

    sub_297F5F35C(a1);
  }

LABEL_20:
  os_unfair_lock_unlock(&unk_2A18BD228);
  v21 = *MEMORY[0x29EDCA608];
  return v15;
}

void sub_297F5F35C(int a1)
{
  v1 = 0;
  v14 = *MEMORY[0x29EDCA608];
  v2 = 1;
  do
  {
    v3 = v2;
    v4 = &unk_2A18BD228 + 8 * v1;
    v5 = *(v4 + 1);
    if (v5 && *(v5 + 8) == a1)
    {
      free(*(v4 + 1));
      *(v4 + 1) = 0;
      goto LABEL_10;
    }

    v2 = 0;
    v1 = 1;
  }

  while ((v3 & 1) != 0);
  v6 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i Failed to release OSAL context - not found", "_phOsalNfc_FreeContext", 114);
  }

  dispatch_get_specific(*v6);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v11 = "_phOsalNfc_FreeContext";
    v12 = 1024;
    v13 = 114;
    _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to release OSAL context - not found", buf, 0x12u);
  }

LABEL_10:
  v9 = *MEMORY[0x29EDCA608];
}

void phOsalNfc_DeInit(int a1)
{
  os_unfair_lock_lock(&unk_2A18BD228);
  v2 = 0;
  v3 = 1;
  while (1)
  {
    v4 = v3;
    v5 = *(&unk_2A18BD228 + v2 + 1);
    if (v5)
    {
      if (*(v5 + 8) == a1)
      {
        break;
      }
    }

    v3 = 0;
    v2 = 1;
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  phOsalNfc_Timer_Deinit(a1);
  sub_297F5F35C(a1);
LABEL_7:

  os_unfair_lock_unlock(&unk_2A18BD228);
}

BOOL NFHardwareGetUARTLogEnabled(io_registry_entry_t *a1)
{
  v26 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (!v1)
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Not connected", "NFHardwareGetUARTLogEnabled", 23);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 136446466;
    v21 = "NFHardwareGetUARTLogEnabled";
    v22 = 1024;
    v23 = 23;
    v9 = "%{public}s:%i Not connected";
    v10 = v8;
    v11 = 18;
    goto LABEL_13;
  }

  CFProperty = IORegistryEntryCreateCFProperty(v1, @"uart.log", 0, 0);
  if (!CFProperty)
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(4, "%s:%i Failed to fetch property: %s", "NFHardwareGetUARTLogEnabled", 30, "uart.log");
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 136446722;
    v21 = "NFHardwareGetUARTLogEnabled";
    v22 = 1024;
    v23 = 30;
    v24 = 2080;
    v25 = "uart.log";
    v9 = "%{public}s:%i Failed to fetch property: %s";
    v10 = v14;
    v11 = 28;
LABEL_13:
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
LABEL_14:
    v5 = 0;
    goto LABEL_21;
  }

  v3 = CFProperty;
  v4 = CFGetTypeID(CFProperty);
  if (v4 == CFBooleanGetTypeID())
  {
    v5 = v3 == *MEMORY[0x29EDB8F00];
  }

  else
  {
    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i Unsupported type: %lu", "NFHardwareGetUARTLogEnabled", 39, v4);
    }

    dispatch_get_specific(*v15);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "NFHardwareGetUARTLogEnabled";
      v22 = 1024;
      v23 = 39;
      v24 = 2048;
      v25 = v4;
      _os_log_impl(&dword_297F52000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i Unsupported type: %lu", buf, 0x1Cu);
    }

    v5 = 0;
  }

  CFRelease(v3);
LABEL_21:
  v18 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t NFHardwareGetRFConfigTLVs(io_registry_entry_t *a1, CFStringRef *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  *a2 = 0u;
  *(a2 + 1) = 0u;
  if (*a1)
  {
    *(a2 + 1) = 0uLL;
    v4 = a2 + 2;
    *a2 = 0uLL;
    v5 = a2 + 3;
    sub_297F5FBC0(a1, @"rf-clock-tlv", a2);
    if (sub_297F5FBC0(a1, @"rf-config-tlvs", a2 + 1) && a2[1])
    {
      goto LABEL_16;
    }

    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i mandatory RF settings %s not present in EDT for this config", "NFHardwareGetRFConfigTLVs", 101, "rf-config-tlvs");
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v20 = "NFHardwareGetRFConfigTLVs";
      v21 = 1024;
      v22 = 101;
      v23 = 2080;
      v24 = "rf-config-tlvs";
      _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%i mandatory RF settings %s not present in EDT for this config", buf, 0x1Cu);
    }

    if (!sub_297F5FBC0(a1, @"rf-config-tlvs-10", v4) || !*v4)
    {
      dispatch_get_specific(*v6);
      v9 = NFLogGetLogger();
      if (v9)
      {
        v9(4, "%s:%i mandatory RF settings %s not present in EDT for this config", "NFHardwareGetRFConfigTLVs", 106, "rf-config-tlvs-10");
      }

      dispatch_get_specific(*v6);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v20 = "NFHardwareGetRFConfigTLVs";
        v21 = 1024;
        v22 = 106;
        v23 = 2080;
        v24 = "rf-config-tlvs-10";
        _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i mandatory RF settings %s not present in EDT for this config", buf, 0x1Cu);
      }
    }

    v11 = sub_297F5FBC0(a1, @"rf-config-tlvs-12", v5);
    if (v11 && *v5)
    {
LABEL_16:
      v11 = 1;
    }

    else
    {
      dispatch_get_specific(*v6);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v15(4, "%s:%i mandatory RF settings %s not present in EDT for this config", "NFHardwareGetRFConfigTLVs", 110, "rf-config-tlvs-12");
      }

      dispatch_get_specific(*v6);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v20 = "NFHardwareGetRFConfigTLVs";
        v21 = 1024;
        v22 = 110;
        v23 = 2080;
        v24 = "rf-config-tlvs-12";
        _os_log_impl(&dword_297F52000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i mandatory RF settings %s not present in EDT for this config", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Not connected", "NFHardwareGetRFConfigTLVs", 86);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v20 = "NFHardwareGetRFConfigTLVs";
      v21 = 1024;
      v22 = 86;
      _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Not connected", buf, 0x12u);
    }

    v11 = 0;
  }

  v17 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t sub_297F5FBC0(io_registry_entry_t *a1, const __CFString *a2, CFStringRef *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  result = IORegistryEntryCreateCFProperty(*a1, a2, 0, 0);
  if (!result)
  {
    goto LABEL_13;
  }

  v5 = result;
  v6 = CFGetTypeID(result);
  if (v6 != CFDataGetTypeID())
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v10 = Logger;
      TypeID = CFDataGetTypeID();
      v12 = CFGetTypeID(v5);
      v10(3, "%s:%i Unexpected CFType, exp = %lu, actual = %lu", "_NFHardwareGetRFConfigTLV", 69, TypeID, v12);
    }

    dispatch_get_specific(*v8);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v16 = "_NFHardwareGetRFConfigTLV";
      v17 = 1024;
      v18 = 69;
      v19 = 2048;
      v20 = CFDataGetTypeID();
      v21 = 2048;
      v22 = CFGetTypeID(v5);
      _os_log_impl(&dword_297F52000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected CFType, exp = %lu, actual = %lu", buf, 0x26u);
    }

    CFRelease(v5);
    goto LABEL_12;
  }

  v7 = CFStringCreateFromExternalRepresentation(0, v5, 0x600u);
  if (v7)
  {
    *a3 = v7;
  }

  CFRelease(v5);
  result = 1;
LABEL_13:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

CFStringRef NFHardwareCopyAntennaName(io_registry_entry_t *a1)
{
  v29 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (!v1)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Not connected", "NFHardwareCopyAntennaName", 122);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446466;
    v22 = "NFHardwareCopyAntennaName";
    v23 = 1024;
    v24 = 122;
    v11 = "%{public}s:%i Not connected";
LABEL_13:
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0x12u);
    goto LABEL_19;
  }

  CFProperty = IORegistryEntryCreateCFProperty(v1, @"rf-antenna-name", 0, 0);
  if (!CFProperty)
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(4, "%s:%i antenna name is missing - no RF?", "NFHardwareCopyAntennaName", 131);
    }

    dispatch_get_specific(*v12);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446466;
    v22 = "NFHardwareCopyAntennaName";
    v23 = 1024;
    v24 = 131;
    v11 = "%{public}s:%i antenna name is missing - no RF?";
    goto LABEL_13;
  }

  v3 = CFProperty;
  v4 = CFGetTypeID(CFProperty);
  if (v4 == CFDataGetTypeID())
  {
    v5 = CFStringCreateFromExternalRepresentation(0, v3, 0x600u);
    CFRelease(v3);
    v6 = *MEMORY[0x29EDCA608];
    return v5;
  }

  v14 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v16 = v15;
    TypeID = CFDataGetTypeID();
    v18 = CFGetTypeID(v3);
    v16(3, "%s:%i Unexpected CFType, exp = %lu, actual = %lu", "NFHardwareCopyAntennaName", 143, TypeID, v18);
  }

  dispatch_get_specific(*v14);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v22 = "NFHardwareCopyAntennaName";
    v23 = 1024;
    v24 = 143;
    v25 = 2048;
    v26 = CFDataGetTypeID();
    v27 = 2048;
    v28 = CFGetTypeID(v3);
    _os_log_impl(&dword_297F52000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected CFType, exp = %lu, actual = %lu", buf, 0x26u);
  }

  CFRelease(v3);
LABEL_19:
  v20 = *MEMORY[0x29EDCA608];
  return 0;
}

_DWORD *NFHardwareLoad(const char *a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  v3 = *MEMORY[0x29EDBB110];
  v4 = IOServiceNameMatching(a1);
  MatchingService = IOServiceGetMatchingService(v3, v4);
  *v2 = MatchingService;
  if (!MatchingService)
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Could not find service: %s", "NFHardwareLoad", 159, a1);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "NFHardwareLoad";
      v13 = 1024;
      v14 = 159;
      v15 = 2080;
      v16 = a1;
      _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Could not find service: %s", buf, 0x1Cu);
    }

    free(v2);
    v2 = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return v2;
}

void NFHardwareUnload(io_object_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = *a1;
    if (v2 && IOObjectRelease(v2))
    {
      v3 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Fail to release service", "NFHardwareUnload", 175);
      }

      dispatch_get_specific(*v3);
      v5 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v8 = "NFHardwareUnload";
        v9 = 1024;
        v10 = 175;
        _os_log_impl(&dword_297F52000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i Fail to release service", buf, 0x12u);
      }
    }

    free(a1);
  }

  v6 = *MEMORY[0x29EDCA608];
}

BOOL NFHardwareHasFollowerReset(const char *a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (strcmp(a1, "stockholm-spmi"))
  {
LABEL_2:
    v1 = 0;
    goto LABEL_7;
  }

  v2 = *MEMORY[0x29EDBB110];
  v3 = IOServiceNameMatching("stockholm-spmi");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (!MatchingService)
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed find IOKit service", "NFHardwareHasFollowerReset", 206);
    }

    dispatch_get_specific(*v9);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v13 = "NFHardwareHasFollowerReset";
      v14 = 1024;
      v15 = 206;
      _os_log_impl(&dword_297F52000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed find IOKit service", buf, 0x12u);
    }

    goto LABEL_2;
  }

  v5 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"spmiFollowerReset", 0, 0);
  v1 = CFProperty != 0;
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  IOObjectRelease(v5);
LABEL_7:
  v7 = *MEMORY[0x29EDCA608];
  return v1;
}

BOOL NFHardwareSupportedSecureTimersInOff()
{
  v15 = *MEMORY[0x29EDCA608];
  v0 = *MEMORY[0x29EDBB110];
  v1 = IOServiceNameMatching("stockholm");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"se-lpem-enabled", 0, 0);
    v5 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(v3);
  }

  else
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed find IOKit service", "NFHardwareSupportedSecureTimersInOff", 226);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v12 = "NFHardwareSupportedSecureTimersInOff";
      v13 = 1024;
      v14 = 226;
      _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed find IOKit service", buf, 0x12u);
    }

    v5 = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t NFHardwareGetModelID(const char *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDBB110];
  v2 = IOServiceNameMatching(a1);
  MatchingService = IOServiceGetMatchingService(v1, v2);
  if (MatchingService)
  {
    v4 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"nfccModel", 0, 0);
    if (CFProperty)
    {
      v6 = CFProperty;
      v7 = CFGetTypeID(CFProperty);
      if (v7 == CFDataGetTypeID() && CFDataGetLength(v6))
      {
        v8 = *CFDataGetBytePtr(v6);
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v6);
    }

    else
    {
      v8 = 0;
    }

    IOObjectRelease(v4);
  }

  else
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed find IOKit service", "NFHardwareGetModelID", 252);
    }

    dispatch_get_specific(*v9);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v15 = "NFHardwareGetModelID";
      v16 = 1024;
      v17 = 252;
      _os_log_impl(&dword_297F52000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed find IOKit service", buf, 0x12u);
    }

    v8 = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v8;
}

BOOL NFHardwareSkipSpmiReconfig(const char *a1)
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
      _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed find IOKit service %s", buf, 0x1Cu);
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
    _os_log_impl(&dword_297F52000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Will %s spmi for %s", buf, 0x26u);
  }

  v15 = *MEMORY[0x29EDCA608];
  return v8;
}

BOOL NFHardwareHasVirtualGPIO()
{
  v35 = *MEMORY[0x29EDCA608];
  v0 = *MEMORY[0x29EDBB110];
  v1 = IOServiceNameMatching("stockholm");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"required-gpios", 0, 0);
    v5 = CFProperty;
    if (CFProperty && (v6 = CFGetTypeID(CFProperty), v6 == CFDataGetTypeID()))
    {
      BytePtr = CFDataGetBytePtr(v5);
      Length = CFDataGetLength(v5);
      v9 = CFStringCreateWithBytes(0, BytePtr, Length, 0x600u, 0);
      if (v9)
      {
        v10 = v9;
        v36.length = CFStringGetLength(v9);
        v36.location = 0;
        v11 = CFStringFindWithOptions(v10, @"support_virtual_gpio", v36, 0, 0) != 0;
        CFRelease(v10);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v12 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v14 = Logger;
        if (v5)
        {
          v15 = CFGetTypeID(v5);
        }

        else
        {
          v15 = -1;
        }

        TypeID = CFStringGetTypeID();
        v14(3, "%s:%i %s is of Type %lx, expecting %lx", "NFHardwareHasVirtualGPIO", 323, "required-gpios", v15, TypeID);
      }

      dispatch_get_specific(*v12);
      v21 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        if (v5)
        {
          v22 = CFGetTypeID(v5);
        }

        else
        {
          v22 = -1;
        }

        *buf = 136447234;
        v26 = "NFHardwareHasVirtualGPIO";
        v27 = 1024;
        v28 = 323;
        v29 = 2080;
        v30 = "required-gpios";
        v31 = 2048;
        v32 = v22;
        v33 = 2048;
        v34 = CFStringGetTypeID();
        _os_log_impl(&dword_297F52000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i %s is of Type %lx, expecting %lx", buf, 0x30u);
      }

      v11 = 0;
      v19 = 0;
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    CFRelease(v5);
    v19 = v11;
LABEL_25:
    IOObjectRelease(v3);
    goto LABEL_26;
  }

  v16 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v17 = NFLogGetLogger();
  if (v17)
  {
    v17(3, "%s:%i %s doesn't exist", "NFHardwareHasVirtualGPIO", 328, "stockholm");
  }

  dispatch_get_specific(*v16);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v26 = "NFHardwareHasVirtualGPIO";
    v27 = 1024;
    v28 = 328;
    v29 = 2080;
    v30 = "stockholm";
    _os_log_impl(&dword_297F52000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i %s doesn't exist", buf, 0x1Cu);
  }

  v19 = 0;
LABEL_26:
  v23 = *MEMORY[0x29EDCA608];
  return v19;
}

BOOL NFHardwareGPIOSetPower(uint64_t *a1, unsigned int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i enable=%d", "NFHardwareGPIOSetPower", 68, a2);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v10 = "NFHardwareGPIOSetPower";
    v11 = 1024;
    v12 = 68;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i enable=%d", buf, 0x18u);
  }

  result = sub_297F60DA8(a1, 0, a2) == 0;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297F60DA8(uint64_t *a1, uint32_t selector, unsigned int a3)
{
  v31 = *MEMORY[0x29EDCA608];
  v3 = a3;
  input = a3;
  if (a1)
  {
    v6 = *a1;
    v7 = *(*a1 + 4);
    if (v7)
    {
      *(v6 + 8) = 0;
      v8 = IOConnectCallScalarMethod(v7, selector, &input, 1u, 0, 0);
      if (v8)
      {
        v9 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i selector=%d enable=%llu : Failed with %#x", "_NFHardwareGPIOSetValue", 56, selector, input, v8);
        }

        dispatch_get_specific(*v9);
        v11 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136447234;
          v22 = "_NFHardwareGPIOSetValue";
          v23 = 1024;
          v24 = 56;
          v25 = 1024;
          v26 = selector;
          v27 = 2048;
          v28 = input;
          v29 = 1024;
          v30 = v8;
          _os_log_impl(&dword_297F52000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i selector=%d enable=%llu : Failed with %#x", buf, 0x28u);
        }

        if (v8 == -536870163)
        {
          *(*a1 + 8) = 1;
          v8 = 3758097133;
        }
      }
    }

    else
    {
      v15 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v16(3, "%s:%i selector=%d enable=%llu : Not connected", "_NFHardwareGPIOSetValue", 48, selector, v3);
      }

      dispatch_get_specific(*v15);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v22 = "_NFHardwareGPIOSetValue";
        v23 = 1024;
        v24 = 48;
        v25 = 1024;
        v26 = selector;
        v27 = 2048;
        v28 = v3;
        _os_log_impl(&dword_297F52000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i selector=%d enable=%llu : Not connected", buf, 0x22u);
      }

      v8 = 4294967294;
    }
  }

  else
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Invalid parameter", "_NFHardwareGPIOSetValue", 43);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v22 = "_NFHardwareGPIOSetValue";
      v23 = 1024;
      v24 = 43;
      _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid parameter", buf, 0x12u);
    }

    v8 = 0xFFFFFFFFLL;
  }

  v18 = *MEMORY[0x29EDCA608];
  return v8;
}

BOOL NFHardwareGPIOSetVBAT(uint64_t *a1, unsigned int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i VBAT enable=%d", "NFHardwareGPIOSetVBAT", 74, a2);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v10 = "NFHardwareGPIOSetVBAT";
    v11 = 1024;
    v12 = 74;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i VBAT enable=%d", buf, 0x18u);
  }

  result = sub_297F60DA8(a1, 5u, a2) == 0;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL NFHardwareGPIOSetDownloadRequest(uint64_t *a1, unsigned int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i enable=%d", "NFHardwareGPIOSetDownloadRequest", 80, a2);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v10 = "NFHardwareGPIOSetDownloadRequest";
    v11 = 1024;
    v12 = 80;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i enable=%d", buf, 0x18u);
  }

  result = sub_297F60DA8(a1, 1u, a2) == 0;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL NFHardwareGPIOSetPMUStandbyPowerEnabled(uint64_t *a1, unsigned int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i enable=%d", "NFHardwareGPIOSetPMUStandbyPowerEnabled", 86, a2);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v10 = "NFHardwareGPIOSetPMUStandbyPowerEnabled";
    v11 = 1024;
    v12 = 86;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i enable=%d", buf, 0x18u);
  }

  result = sub_297F60DA8(a1, 2u, a2) == 0;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NFHardwareGPIOSPMIFollowerReset(uint64_t *a1)
{
  sub_297F54914(*(*a1 + 16), 10, 0, 0);

  return sub_297F60DA8(a1, 8u, 1u);
}

uint64_t NFHardwareGPIOSPMIvGPIO(uint64_t *a1, unsigned __int8 a2)
{
  v4 = a2;
  sub_297F54914(*(*a1 + 16), 10, &v4, 1uLL);
  return sub_297F60DA8(a1, 0xBu, v4);
}

BOOL NFHardwareGPIOValidateSPMIConfig(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ", "NFHardwareGPIOValidateSPMIConfig", 139);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v19 = "NFHardwareGPIOValidateSPMIConfig";
    v20 = 1024;
    v21 = 139;
    _os_log_impl(&dword_297F52000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
  }

  if (!a1)
  {
    dispatch_get_specific(*v2);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v14(3, "%s:%i Invalid parameter", "NFHardwareGPIOValidateSPMIConfig", 142);
    }

    dispatch_get_specific(*v2);
    v15 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_23;
    }

    *buf = 136446466;
    v19 = "NFHardwareGPIOValidateSPMIConfig";
    v20 = 1024;
    v21 = 142;
    v11 = "%{public}s:%i Invalid parameter";
LABEL_20:
    v12 = v15;
    v13 = 18;
    goto LABEL_21;
  }

  v5 = *(*a1 + 4);
  if (!v5)
  {
    dispatch_get_specific(*v2);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i Not connected", "NFHardwareGPIOValidateSPMIConfig", 147);
    }

    dispatch_get_specific(*v2);
    v15 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_23;
    }

    *buf = 136446466;
    v19 = "NFHardwareGPIOValidateSPMIConfig";
    v20 = 1024;
    v21 = 147;
    v11 = "%{public}s:%i Not connected";
    goto LABEL_20;
  }

  v6 = IOConnectCallScalarMethod(v5, 6u, 0, 0, 0, 0);
  if (!v6)
  {
    result = 1;
    goto LABEL_23;
  }

  v7 = v6;
  dispatch_get_specific(*v2);
  v8 = NFLogGetLogger();
  if (v8)
  {
    v8(3, "%s:%i Failed with %#x", "NFHardwareGPIOValidateSPMIConfig", 153, v7);
  }

  dispatch_get_specific(*v2);
  v9 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446722;
    v19 = "NFHardwareGPIOValidateSPMIConfig";
    v20 = 1024;
    v21 = 153;
    v22 = 1024;
    v23 = v7;
    v11 = "%{public}s:%i Failed with %#x";
    v12 = v9;
    v13 = 24;
LABEL_21:
    _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    result = 0;
  }

LABEL_23:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL NFHardwareGPIOConfigureHammerfestSPMI(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ", "NFHardwareGPIOConfigureHammerfestSPMI", 165);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v19 = "NFHardwareGPIOConfigureHammerfestSPMI";
    v20 = 1024;
    v21 = 165;
    _os_log_impl(&dword_297F52000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
  }

  if (!a1)
  {
    dispatch_get_specific(*v2);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v14(3, "%s:%i Invalid parameter", "NFHardwareGPIOConfigureHammerfestSPMI", 168);
    }

    dispatch_get_specific(*v2);
    v15 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_23;
    }

    *buf = 136446466;
    v19 = "NFHardwareGPIOConfigureHammerfestSPMI";
    v20 = 1024;
    v21 = 168;
    v11 = "%{public}s:%i Invalid parameter";
LABEL_20:
    v12 = v15;
    v13 = 18;
    goto LABEL_21;
  }

  v5 = *(*a1 + 4);
  if (!v5)
  {
    dispatch_get_specific(*v2);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i Not connected", "NFHardwareGPIOConfigureHammerfestSPMI", 173);
    }

    dispatch_get_specific(*v2);
    v15 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_23;
    }

    *buf = 136446466;
    v19 = "NFHardwareGPIOConfigureHammerfestSPMI";
    v20 = 1024;
    v21 = 173;
    v11 = "%{public}s:%i Not connected";
    goto LABEL_20;
  }

  v6 = IOConnectCallScalarMethod(v5, 7u, 0, 0, 0, 0);
  if (!v6)
  {
    result = 1;
    goto LABEL_23;
  }

  v7 = v6;
  dispatch_get_specific(*v2);
  v8 = NFLogGetLogger();
  if (v8)
  {
    v8(3, "%s:%i Failed with %#x", "NFHardwareGPIOConfigureHammerfestSPMI", 179, v7);
  }

  dispatch_get_specific(*v2);
  v9 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446722;
    v19 = "NFHardwareGPIOConfigureHammerfestSPMI";
    v20 = 1024;
    v21 = 179;
    v22 = 1024;
    v23 = v7;
    v11 = "%{public}s:%i Failed with %#x";
    v12 = v9;
    v13 = 24;
LABEL_21:
    _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    result = 0;
  }

LABEL_23:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void **NFHardwareGPIOOpen(int a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040D090CC53uLL);
    if (!v3)
    {
LABEL_28:
      free(v2);
      v2 = 0;
      goto LABEL_29;
    }

    v4 = v3;
    *v2 = v3;
    if (a1 == 1)
    {
      v6 = "AppleStockholmControl";
      v5 = 1;
    }

    else
    {
      if (a1 != 2)
      {
        v20 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i wrong GPIO driver type: %d", "NFHardwareGPIOOpen", 209, a1);
        }

        dispatch_get_specific(*v20);
        v22 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        *buf = 136446722;
        v29 = "NFHardwareGPIOOpen";
        v30 = 1024;
        v31 = 209;
        v32 = 1024;
        LODWORD(v33) = a1;
        v17 = "%{public}s:%i wrong GPIO driver type: %d";
        v18 = v22;
        v19 = 24;
        goto LABEL_26;
      }

      v5 = 0;
      v6 = "AppleHammerfestControl";
    }

    *(v4 + 2) = sub_297F68B54(v5);
    v7 = *MEMORY[0x29EDBB110];
    v8 = IOServiceNameMatching(v6);
    MatchingService = IOServiceGetMatchingService(v7, v8);
    *v4 = MatchingService;
    if (!MatchingService)
    {
      v23 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v24(3, "%s:%i Could not find service: %s", "NFHardwareGPIOOpen", 219, v6);
      }

      dispatch_get_specific(*v23);
      v25 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 136446722;
      v29 = "NFHardwareGPIOOpen";
      v30 = 1024;
      v31 = 219;
      v32 = 2080;
      v33 = v6;
      v17 = "%{public}s:%i Could not find service: %s";
      v18 = v25;
      v19 = 28;
      goto LABEL_26;
    }

    v10 = IOServiceOpen(MatchingService, *MEMORY[0x29EDCA6B0], 0, v4 + 1);
    if (v10)
    {
      v11 = v10;
      v12 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v13 = NFLogGetLogger();
      if (v13)
      {
        v13(3, "%s:%i Could not open service (%#x)", "NFHardwareGPIOOpen", 230, v11);
      }

      dispatch_get_specific(*v12);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v29 = "NFHardwareGPIOOpen";
        v30 = 1024;
        v31 = 230;
        v32 = 1024;
        LODWORD(v33) = v11;
        _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Could not open service (%#x)", buf, 0x18u);
      }

      if (!IOObjectRelease(*v4))
      {
        goto LABEL_27;
      }

      dispatch_get_specific(*v12);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v15(3, "%s:%i Fail to release service", "NFHardwareGPIOOpen", 232);
      }

      dispatch_get_specific(*v12);
      v16 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 136446466;
      v29 = "NFHardwareGPIOOpen";
      v30 = 1024;
      v31 = 232;
      v17 = "%{public}s:%i Fail to release service";
      v18 = v16;
      v19 = 18;
LABEL_26:
      _os_log_impl(&dword_297F52000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
LABEL_27:
      free(*v2);
      goto LABEL_28;
    }
  }

LABEL_29:
  v26 = *MEMORY[0x29EDCA608];
  return v2;
}

void NFHardwareGPIOClose(uint64_t *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = MGGetProductType();
    if (v2 == 3402870384 || v2 == 896202454)
    {
      NFHardwareGPIOSetPower(a1, 1u);
      usleep(0x7D0u);
    }

    v3 = *a1;
    if (*(*a1 + 4))
    {
      if (IOConnectRelease(*(*a1 + 4)))
      {
        v4 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i Fail to release connection", "NFHardwareGPIOClose", 264);
        }

        dispatch_get_specific(*v4);
        v6 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v12 = "NFHardwareGPIOClose";
          v13 = 1024;
          v14 = 264;
          _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Fail to release connection", buf, 0x12u);
        }
      }

      v3 = *a1;
      *(*a1 + 4) = 0;
    }

    if (*v3)
    {
      if (IOObjectRelease(*v3))
      {
        v7 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v8 = NFLogGetLogger();
        if (v8)
        {
          v8(3, "%s:%i Fail to release service", "NFHardwareGPIOClose", 271);
        }

        dispatch_get_specific(*v7);
        v9 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v12 = "NFHardwareGPIOClose";
          v13 = 1024;
          v14 = 271;
          _os_log_impl(&dword_297F52000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Fail to release service", buf, 0x12u);
        }
      }

      v3 = *a1;
      **a1 = 0;
    }

    free(v3);
    free(a1);
  }

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t NFHardwareGPIOIsHostWakeCapable()
{
  v55 = *MEMORY[0x29EDCA608];
  v0 = *MEMORY[0x29EDBB110];
  v1 = IOServiceNameMatching("stockholm");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"required-gpios", 0, 0);
    v5 = CFProperty;
    if (CFProperty && (v6 = CFGetTypeID(CFProperty), v6 == CFDataGetTypeID()))
    {
      BytePtr = CFDataGetBytePtr(v5);
      Length = CFDataGetLength(v5);
      v9 = CFStringCreateWithBytes(0, BytePtr, Length, 0x600u, 0);
      v10 = CFStringGetLength(v9);
      if (!v9)
      {
        goto LABEL_15;
      }

      v11 = v10;
      v56.location = 0;
      v56.length = v10;
      v12 = CFStringFindWithOptions(v9, @"support_wake_stockholm_soc", v56, 0, 0);
      v57.location = 0;
      v57.length = v11;
      LODWORD(v11) = CFStringFindWithOptions(v9, @"support_wake_stockholm", v57, 0, 0) | v12;
      CFRelease(v9);
      if (v11)
      {
        v13 = 1;
      }

      else
      {
LABEL_15:
        v13 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      v14 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v16 = Logger;
        if (v5)
        {
          v17 = CFGetTypeID(v5);
        }

        else
        {
          v17 = -1;
        }

        TypeID = CFStringGetTypeID();
        v16(3, "%s:%i %s is of Type %lx, expecting %lx", "NFHardwareGPIOIsHostWakeCapable", 310, "required-gpios", v17, TypeID);
      }

      dispatch_get_specific(*v14);
      v22 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        if (v5)
        {
          v23 = CFGetTypeID(v5);
        }

        else
        {
          v23 = -1;
        }

        *buf = 136447234;
        v46 = "NFHardwareGPIOIsHostWakeCapable";
        v47 = 1024;
        v48 = 310;
        v49 = 2080;
        v50 = "required-gpios";
        v51 = 2048;
        v52 = v23;
        v53 = 2048;
        v54 = CFStringGetTypeID();
        _os_log_impl(&dword_297F52000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i %s is of Type %lx, expecting %lx", buf, 0x30u);
      }

      if (v5)
      {
        CFRelease(v5);
      }

      v13 = 0;
    }

    IOObjectRelease(v3);
  }

  else
  {
    v18 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v19(3, "%s:%i stockholm doesn't exist", "NFHardwareGPIOIsHostWakeCapable", 315);
    }

    dispatch_get_specific(*v18);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v46 = "NFHardwareGPIOIsHostWakeCapable";
      v47 = 1024;
      v48 = 315;
      _os_log_impl(&dword_297F52000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i stockholm doesn't exist", buf, 0x12u);
    }

    v13 = 0;
  }

  v24 = IOServiceNameMatching("stockholm-spmi");
  v25 = IOServiceGetMatchingService(v0, v24);
  if (v25)
  {
    v26 = v25;
    v27 = IORegistryEntryCreateCFProperty(v25, @"required-functions", 0, 0);
    v28 = v27;
    if (v27 && (v29 = CFGetTypeID(v27), v29 == CFDataGetTypeID()))
    {
      v30 = CFDataGetBytePtr(v28);
      v31 = CFDataGetLength(v28);
      v32 = CFStringCreateWithBytes(0, v30, v31, 0x600u, 0);
      v33 = CFStringGetLength(v32);
      if (v32)
      {
        v58.length = v33;
        v58.location = 0;
        v34 = CFStringFindWithOptions(v32, @"support_host_wake_spmi", v58, 0, 0);
        CFRelease(v32);
        if (v34)
        {
          v13 = 1;
        }
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
        if (v28)
        {
          v38 = CFGetTypeID(v28);
        }

        else
        {
          v38 = -1;
        }

        v39 = CFStringGetTypeID();
        v37(3, "%s:%i %s is of Type %lx, expecting %lx", "NFHardwareGPIOIsHostWakeCapable", 338, "required-functions", v38, v39);
      }

      dispatch_get_specific(*v35);
      v40 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        if (v28)
        {
          v41 = CFGetTypeID(v28);
        }

        else
        {
          v41 = -1;
        }

        v42 = CFStringGetTypeID();
        *buf = 136447234;
        v46 = "NFHardwareGPIOIsHostWakeCapable";
        v47 = 1024;
        v48 = 338;
        v49 = 2080;
        v50 = "required-functions";
        v51 = 2048;
        v52 = v41;
        v53 = 2048;
        v54 = v42;
        _os_log_impl(&dword_297F52000, v40, OS_LOG_TYPE_ERROR, "%{public}s:%i %s is of Type %lx, expecting %lx", buf, 0x30u);
      }

      if (!v28)
      {
        goto LABEL_46;
      }
    }

    CFRelease(v28);
LABEL_46:
    IOObjectRelease(v26);
  }

  v43 = *MEMORY[0x29EDCA608];
  return v13;
}