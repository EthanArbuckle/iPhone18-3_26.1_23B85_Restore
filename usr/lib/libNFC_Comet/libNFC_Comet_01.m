uint64_t sub_297E59AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreIfRegRspNtf");
  v8 = 1;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_12;
  }

  v14 = a4;
  v15 = a3;
  v9 = *a2;
  if (*a2 == 3)
  {
    v10 = 2;
    goto LABEL_10;
  }

  if (v9 == 2)
  {
    v10 = 1;
LABEL_10:
    LOBYTE(v13) = v10;
    v11 = *(a2 + 8);
    BYTE1(v13) = *(a2 + 4);
    BYTE2(v13) = v11;
    goto LABEL_11;
  }

  if (!v9)
  {
    LOBYTE(v13) = *(a2 + 13);
    BYTE3(v13) = *(a2 + 12);
LABEL_11:
    v8 = sub_297E59BE0(a1, &v13, v9);
  }

LABEL_12:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreIfRegRspNtf");
  return v8;
}

uint64_t sub_297E59BE0(uint64_t a1, uint64_t a2, int a3)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreRecvMgrRegisterCb");
  if (!a1 || !a2)
  {
    v8 = "Invalid input parameters";
    v9 = 1;
    v10 = 3;
    v11 = a1;
LABEL_15:
    sub_297E4E0B0(v10, v11, 3u, 1u, v8);
    goto LABEL_16;
  }

  if (!*(a2 + 16))
  {
    v8 = "Invalid call back function pointer to register";
LABEL_14:
    v9 = 1;
    v11 = a1 + 2460;
    v10 = 1;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = "Registering for data message...";
    v7 = 2184;
    goto LABEL_12;
  }

  if (a3 == 2)
  {
    v6 = "Registering for response message...";
    v7 = 1008;
    goto LABEL_12;
  }

  if (a3 != 3)
  {
    v8 = "Invalid message type";
    goto LABEL_14;
  }

  v6 = "Registering for notification message...";
  v7 = 1032;
LABEL_12:
  sub_297E4E0B0(1, a1 + 2460, 3u, 4u, v6);
  v9 = sub_297E59D10(*(a1 + 632), a1 + v7, a2, a3);
LABEL_16:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreRecvMgrRegisterCb");
  return v9;
}

uint64_t sub_297E59D10(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v20 = a1;
  v19 = 0;
  v18 = 0;
  sub_297E4E1B4(0, &v20, 3u, 5u, "phNciNfc_CoreRegister");
  if (a4 == 2)
  {
    v10 = 0;
  }

  else
  {
    if (a4 == 3)
    {
      v21 = v20;
      sub_297E4E1B4(0, &v21, 3u, 5u, "phNciNfc_CheckNtfRegistration");
      if (a2)
      {
        v7 = 48;
        v8 = a2;
        while (!*v8 || *(a3 + 1) != *(v8 + 1) || *(a3 + 2) != *(v8 + 2) || *(a3 + 16) != *(v8 + 16))
        {
          v8 += 24;
          if (!--v7)
          {
            goto LABEL_10;
          }
        }

        sub_297E4DFAC(0, &v21, 3u, 5u, "phNciNfc_CheckNtfRegistration");
        v13 = "Notification registration entry already exists, skip registration";
        goto LABEL_17;
      }

LABEL_10:
      sub_297E4DFAC(0, &v21, 3u, 5u, "phNciNfc_CheckNtfRegistration");
    }

    if (sub_297E5AB2C(v20, &v18))
    {
      sub_297E4E0B0(0, &v20, 3u, 2u, "phNciNfc_CoreRegister: Nci Core context not valid");
      v9 = 0;
      v18 = 0;
    }

    else
    {
      v9 = v18;
    }

    v15 = sub_297E522A0(v9, 1, a2, a3, a4, &v19);
    if (v15)
    {
      v14 = v15;
      sub_297E4E0B0(0, &v20, 3u, 1u, "phNciNfc_CoreRegister:No free slots available, registration failed!");
      goto LABEL_21;
    }

    if (!a4)
    {
      v17 = (a2 + 24 * v19);
      *v17 = *a3;
      v17[1] = *(a3 + 3);
      v12 = v17 + 8;
      goto LABEL_15;
    }

    if (a4 != 3)
    {
      goto LABEL_16;
    }

    v10 = v19;
  }

  v11 = a2 + 24 * v10;
  *v11 = *a3;
  *(v11 + 1) = *(a3 + 1);
  v12 = (v11 + 8);
LABEL_15:
  *v12 = *(a3 + 8);
LABEL_16:
  v13 = "Registration success";
LABEL_17:
  sub_297E4E0B0(0, &v20, 3u, 4u, v13);
  v14 = 0;
LABEL_21:
  sub_297E4DFAC(0, &v20, 3u, 5u, "phNciNfc_CoreRegister");
  return v14;
}

uint64_t sub_297E59F54(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreBuildCmdPkt");
  v4 = 1;
  if (!a1 || !a2)
  {
    goto LABEL_19;
  }

  v5 = *(a2 + 4);
  v6 = *(a2 + 8);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v7 = sub_297EBE67C(a1, a2, *(a2 + 8));
    }

    else
    {
      if (v5 != 15)
      {
        goto LABEL_10;
      }

      v7 = sub_297E5E9B4(a1, a2, *(a2 + 8));
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v7 = sub_297E5A18C(a1, a2, *(a2 + 8));
        goto LABEL_14;
      }

LABEL_10:
      v4 = 1;
      sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "phNciNfc_CoreBuildCmdPkt: Build Command packet has Invalid GID");
      if (*(a1 + 624))
      {
LABEL_18:
        sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "phNciNfc_CoreBuildCmdPkt:Build Command packet failed!");
        goto LABEL_19;
      }

LABEL_17:
      sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "phNciNfc_CoreBuildCmdPkt:Max Control Payload Length is not available !!!!!");
      v4 = 244;
      goto LABEL_18;
    }

    v7 = sub_297E5E0C8(a1, a2, *(a2 + 8));
  }

LABEL_14:
  if (!*(a1 + 624))
  {
    goto LABEL_17;
  }

  if (v7)
  {
    v4 = 1;
    goto LABEL_18;
  }

  v9 = *(a1 + 2460);
  phOsalNfc_SetMemory();
  *(a1 + 276) = *(a1 + 276) & 0x10 | v5 | 0x20;
  *(a1 + 277) = *(a1 + 277) & 0xC0 | v6 & 0x3F;
  *(a1 + 278) = *(a2 + 24);
  if (*(a2 + 24) <= *(a1 + 624))
  {
    *(a1 + 276) = v5 | 0x20;
    if (*(a2 + 24))
    {
      v10 = *(a1 + 2460);
      v11 = *(a2 + 16);
      phOsalNfc_MemCopy();
      v12 = *(a2 + 24) + 3;
    }

    else
    {
      v12 = 3;
    }

    *(a1 + 540) = v12;
    sub_297E4E880(1, a1 + 2460, 3u, 4u, "Command packet:", a1 + 276);
    v4 = 0;
  }

  else
  {
    *(a1 + 276) = v5 | 0x30;
    sub_297E50EBC(1, a1 + 2460, 3u, 1u, "phNciNfc_CoreBuildCmdPkt:Segmentation on Command not allowed!, Max Control Payload");
    v4 = 255;
  }

LABEL_19:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreBuildCmdPkt");
  return v4;
}

BOOL sub_297E5A18C(uint64_t a1, uint64_t a2, int a3)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreValidateRfMgtCmd");
  v6 = 1;
  if (a3 > 3)
  {
    if (a3 > 7)
    {
      if (a3 == 8)
      {
        if (*(a2 + 24) != 4)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (a3 == 11 && *(a2 + 24) >= 3u)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (a3 == 4)
      {
        if (*(a2 + 24) != 3)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (a3 == 6 && *(a2 + 24) == 1)
      {
LABEL_26:
        v6 = *(a2 + 16) == 0;
      }
    }
  }

  else
  {
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 != 1 || *(a2 + 24) < 7u)
        {
          goto LABEL_27;
        }
      }

      else if (*(a2 + 24) < 4u)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (a3 == 2)
    {
      v6 = *(a2 + 24) != 0;
    }

    else if (*(a2 + 24) >= 3u && *(a2 + 16))
    {
      v6 = 0;
    }

    else
    {
      sub_297E4E0B0(3, a1, 3u, 1u, "Discovery command payload empty!!");
    }
  }

LABEL_27:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreValidateRfMgtCmd");
  return v6;
}

uint64_t sub_297E5A304(int a1, uint64_t a2)
{
  v4 = a1;
  sub_297E4E1B4(1, &v4, 3u, 5u, "phNciNfc_StopTimer");
  if (a2 && a2 != 0xFFFFFFFFFFFFLL && phOsalNfc_Timer_Stop())
  {
    sub_297E50EBC(1, &v4, 3u, 4u, "NCI Timer_Stop failed,Stat=");
  }

  return sub_297E4DFAC(1, &v4, 3u, 5u, "phNciNfc_StopTimer");
}

uint64_t sub_297E5A3A8(uint64_t a1, char a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5u, 5u, "phUtilNfc_SetMuxState");
  v3 = 0;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = &unk_2A18BDDC0 + 112 * v3;
    if (v9 == *v6)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v5 & 1) == 0)
    {
      v7 = 255;
      goto LABEL_6;
    }
  }

  v7 = 0;
  v6[72] = a2;
LABEL_6:
  sub_297E4DFAC(0, &v9, 5u, 5u, "phUtilNfc_SetMuxState");
  return v7;
}

uint64_t sub_297E5A458(uint64_t a1, int a2)
{
  v28 = 0;
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CorePktSendToTml");
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 5);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a1);
  if (v6 != a1)
  {
LABEL_6:
    sub_297E4E0B0(3, a1, 3u, 4u, "Invalid input parameter");
    v7 = 0;
    goto LABEL_7;
  }

  v9 = *a1;
  v10 = *a1 + 4096;
  if (a2)
  {
    if (a2 != 1)
    {
      v7 = 1;
      goto LABEL_7;
    }

    v11 = sub_297E5A824(a1);
    if (!v11)
    {
      goto LABEL_25;
    }

    v7 = v11;
    if (sub_297E5A99C(*(v9 + 6528), &v28))
    {
      sub_297E4E0B0(1, v9 + 6524, 3u, 1u, "phNciNfc_CorePktSendToTml-Failed to retrieve bIgnoreWkUpRet");
      v7 = 255;
      goto LABEL_7;
    }

    if (v28 == 1)
    {
LABEL_25:
      v12 = (a1 + 276);
      v13 = *(a1 + 540);
      goto LABEL_26;
    }

    v27 = "phNciNfc_CorePktSendToTml- Wakeup failed";
LABEL_47:
    sub_297E4E0B0(1, v9 + 6524, 3u, 1u, v27);
    goto LABEL_7;
  }

  v12 = (a1 + 8);
  v13 = *(a1 + 272);
  if (*(*a1 + 6616) == 1)
  {
    goto LABEL_26;
  }

  v14 = *(a1 + 2448);
  if (v14 && v14 != 0xFFFFFFFFFFFFLL)
  {
    v15 = *(a1 + 2460);
    if (phOsalNfc_Timer_Stop())
    {
      sub_297E4E0B0(1, v9 + 6524, 3u, 1u, "phNciNfc_CorePktSendToTml-Failed to Stop De-Assert Wake Up Line Timer");
    }

    v16 = *(a1 + 2460);
    v17 = *(a1 + 2448);
    v18 = phOsalNfc_Timer_Delete();
    *(a1 + 2448) = 0xFFFFFFFFFFFFLL;
    if (v18)
    {
      sub_297E4E0B0(1, v9 + 6524, 3u, 1u, "phNciNfc_CorePktSendToTml-Failed to Delete De-Assert Wake Up Line Timer");
    }
  }

  v19 = sub_297E5A824(a1);
  if (v19)
  {
    v7 = v19;
    if (sub_297E5A99C(*(v9 + 6528), &v28))
    {
      v7 = 255;
      v20 = "phNciNfc_CoreSend2-Failed to retrieve bIgnoreWkUpRet";
LABEL_45:
      sub_297E4E0B0(1, v9 + 6524, 3u, 1u, v20);
      goto LABEL_46;
    }

    if (v28 != 1)
    {
      v20 = "phNciNfc_CoreSend2-Failed to Assert Wake Up Line";
      goto LABEL_45;
    }

LABEL_46:
    v27 = "phNciNfc_CorePktSendToTml-Failed to Start De-Assert Wake Up Line Timer";
    goto LABEL_47;
  }

  v25 = *(a1 + 2460);
  *(a1 + 2448) = phOsalNfc_Timer_Create();
  v26 = *(a1 + 2460);
  v7 = phOsalNfc_Timer_Start();
  if (v7)
  {
    goto LABEL_46;
  }

LABEL_26:
  if (*(v9 + 6524))
  {
    v21 = &gphNfc_DebugInfo_Sec;
  }

  else
  {
    v21 = &gphNfc_DebugInfo_Prim;
  }

  v21[1] |= 0x8000000u;
  if (*(v10 + 2184))
  {
    sub_297E5ABE8(a1, v12, v13);
    v13 = (v13 + 2);
  }

  sub_297E516BC(*(a1 + 2460), 3u, 3u, "Write", v12, v13);
  v22 = *(a1 + 632);
  v7 = phTmlNfc_Write();
  if (*(v9 + 6524))
  {
    dword_2A18BE764 &= ~0x8000000u;
    if (v7 != 13)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v23 = dword_2A18BE76C & 0xF7FFFFFF;
    dword_2A18BE76C &= ~0x8000000u;
    if (v7 != 13)
    {
LABEL_38:
      sub_297E96818(*(v9 + 6528), 194);
      goto LABEL_7;
    }

    dword_2A18BE76C = v23 | 1;
  }

  v24 = 32 * sub_297E5ACA0(v9, v12);
  if (*(v9 + 6524))
  {
    dword_2A18BE764 = dword_2A18BE764 & 0xFFFFFC1F | v24;
  }

  else
  {
    dword_2A18BE76C = dword_2A18BE76C & 0xFFFFFC1F | v24;
  }

LABEL_7:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CorePktSendToTml");
  return v7;
}

uint64_t sub_297E5A824(uint64_t a1)
{
  v9 = 0;
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreWakeupMgmt");
  if (a1)
  {
    v2 = sub_297E5A99C(*(a1 + 632), &v9);
    if (v2)
    {
      v3 = v2;
      sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "phNciNfc_SpmiRetryWakeup-Failed to retrieve gbIgnoreWkUpRet");
    }

    else
    {
      v5 = sub_297E5AA54(*(a1 + 632), 21);
      if (v9 == 1)
      {
        v3 = 0;
      }

      else
      {
        v3 = v5;
      }

      if (v3)
      {
        if (v3 == 179)
        {
          sub_297E50EBC(1, a1 + 2460, 3u, 1u, "phNciNfc_CoreWakeupMgmt SPMI wakeup Retry Status =");
          v6 = *(a1 + 2460);
          phOsalNfc_Delay();
          v3 = sub_297E5AA54(*(a1 + 632), 21);
          if (v3 == 179)
          {
            v7 = *(a1 + 2460);
            phOsalNfc_Delay();
            v3 = sub_297E5AA54(*(a1 + 632), 21);
            if (v3)
            {
              sub_297E96818(*(a1 + 632), 193);
            }
          }
        }

        else
        {
          v8 = v5;
          sub_297E96818(*(a1 + 632), 192);
          v3 = v8;
        }
      }
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "phNciNfc_SpmiRetryWakeup-Invalid NCI context");
    v3 = 255;
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreWakeupMgmt");
  return v3;
}

uint64_t sub_297E5A99C(uint64_t a1, _BYTE *a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5u, 5u, "phUtilNfc_GetIgnoreWkUpRet");
  if (a2)
  {
    v3 = 0;
    v4 = 1;
    while (1)
    {
      v5 = v4;
      v6 = &unk_2A18BDDC0 + 112 * v3;
      if (v9 == *v6)
      {
        break;
      }

      v4 = 0;
      v3 = 1;
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v7 = 0;
    *a2 = v6[57];
  }

  else
  {
LABEL_5:
    v7 = 255;
  }

  sub_297E4DFAC(0, &v9, 5u, 5u, "phUtilNfc_GetIgnoreWkUpRet");
  return v7;
}

uint64_t sub_297E5AA54(uint64_t a1, int a2)
{
  v6 = 0;
  v7 = a1;
  sub_297E4E1B4(0, &v7, 3u, 5u, "phNciNfc_ConfigureSpmiWakeup");
  sub_297E5AB2C(v7, &v6);
  if ((a2 & 0xFFFFFFFE) == 0x14 && v6)
  {
    v3 = *(v6 + 2460);
    phOsalNfc_SetMemory();
    v4 = phTmlNfc_IoCtl();
  }

  else
  {
    sub_297E4E0B0(0, &v7, 3u, 1u, "phNciNfc_ConfigureSpmiWakeup-Invalid NCI context or input parameters");
    v4 = 255;
  }

  sub_297E4DFAC(0, &v7, 3u, 5u, "phNciNfc_ConfigureSpmiWakeup");
  return v4;
}

uint64_t sub_297E5AB2C(uint64_t a1, void *a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5u, 5u, "phUtilNfc_GetNciNfcCoreContext");
  if (a2)
  {
    v3 = 0;
    *a2 = 0;
    v4 = 1;
    while (1)
    {
      v5 = v4;
      v6 = (&unk_2A18BDDC0 + 112 * v3);
      if (v9 == *v6)
      {
        break;
      }

      v4 = 0;
      v3 = 1;
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v7 = 0;
    *a2 = v6[5];
  }

  else
  {
LABEL_5:
    v7 = 255;
  }

  sub_297E4DFAC(0, &v9, 5u, 5u, "phUtilNfc_GetNciNfcCoreContext");
  return v7;
}

uint64_t sub_297E5ABE8(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreUtilsAppendCrc");
  if (a1 && a2 && a3)
  {
    v6 = 0;
    *&a2[a3] = __rev16(sub_297E50CEC(*(a1 + 632), a2, a3));
  }

  else
  {
    sub_297E4E0B0(3, a1, 3u, 2u, "Invalid parameter received");
    v6 = 1;
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreUtilsAppendCrc");
  return v6;
}

uint64_t sub_297E5ACA0(uint64_t a1, unsigned __int8 *a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetNciCommandId");
  if (!a2)
  {
    goto LABEL_8;
  }

  v4 = *a2;
  if (v4 >> 5 != 1)
  {
    v5 = v4 >> 5 == 0;
    goto LABEL_9;
  }

  v5 = 0;
  v6 = v4 & 0xF;
  v7 = a2[1] & 0x3F;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (v7 == 1)
      {
        v9 = 17;
      }

      else
      {
        v9 = 0;
      }

      if ((a2[1] & 0x3F) != 0)
      {
        v5 = v9;
      }

      else
      {
        v5 = 16;
      }
    }

    else if (v6 == 15)
    {
      v5 = 0;
      if ((a2[1] & 0x3Fu) > 0x20)
      {
        if ((a2[1] & 0x3Fu) <= 0x28)
        {
          if (v7 == 33)
          {
            v5 = 26;
          }

          else if (v7 == 40)
          {
            v5 = 23;
          }
        }

        else
        {
          switch(v7)
          {
            case ')':
              v5 = 24;
              break;
            case '3':
              v5 = 27;
              break;
            case ';':
              v5 = 25;
              break;
          }
        }
      }

      else if ((a2[1] & 0x3Fu) <= 2)
      {
        if ((a2[1] & 0x3F) != 0)
        {
          if (v7 == 2)
          {
            v5 = 19;
          }
        }

        else
        {
          v5 = 18;
        }
      }

      else
      {
        switch(v7)
        {
          case 3:
            v5 = 20;
            break;
          case 0x10:
            v5 = 21;
            break;
          case 0x11:
            v5 = 22;
            break;
        }
      }
    }
  }

  else
  {
    if (v6)
    {
      if (v7 < 0xC)
      {
        v5 = byte_297F1311C[v7];
        goto LABEL_9;
      }

LABEL_8:
      v5 = 0;
      goto LABEL_9;
    }

    if (v7 >= 6)
    {
      v5 = 0;
    }

    else
    {
      v5 = (v7 + 2);
    }
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetNciCommandId");
  return v5;
}

uint64_t sub_297E5AE60(uint64_t a1, int a2)
{
  v13 = a1;
  sub_297E4E1B4(0, &v13, 5u, 5u, "phLibNfc_GetMwApi");
  v3 = 0;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = &unk_2A18BDDC0 + 112 * v3;
    if (*v6 == v13)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v7 = *(v6 + 2);
  if (v7 > 1 || (v8 = *(&unk_2A18BDDC0 + 14 * v7 + 10)) == 0)
  {
LABEL_10:
    v9 = 137;
    goto LABEL_11;
  }

  if ((a2 - 1) < 0x73 || (a2 - 130) < 0x1C)
  {
    v9 = 137;
    if (a2 - 131 <= 0x16 && ((1 << (a2 + 125)) & 0x420021) != 0 || a2 == 53)
    {
      goto LABEL_11;
    }
  }

  else if ((a2 - 178) >= 0xC)
  {
    goto LABEL_10;
  }

  v11 = &word_2A13A599A;
  v12 = 136;
  v9 = 137;
  while (*(v11 - 1) != a2)
  {
    v11 += 2;
    if (!--v12)
    {
      goto LABEL_11;
    }
  }

  v9 = *v11;
  *(v8 + 156) = v9;
LABEL_11:
  sub_297E4DFAC(0, &v13, 5u, 5u, "phLibNfc_GetMwApi");
  return v9;
}

uint64_t sub_297E5AFB4(uint64_t a1, unsigned __int16 *a2)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreSendCb");
  if (a2)
  {
    v4 = *(a2 + 1);
    if (v4 <= 1)
    {
      sub_297E5A3A8(*(&unk_2A18BDDC0 + 14 * v4), 0);
    }
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = *(&unk_2A18BDDC0 + 14 * v6 + 5);
    if (v5)
    {
      break;
    }

    v5 = 1;
    v6 = 1;
  }

  while (v7 != a1);
  if (v7 != a1)
  {
    goto LABEL_9;
  }

  v9 = *a1;
  if (!*a1)
  {
    goto LABEL_9;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v12 = *(&unk_2A18BDDC0 + 14 * v11 + 4);
    if (v10)
    {
      break;
    }

    v10 = 1;
    v11 = 1;
  }

  while (v12 != v9);
  if (v12 == v9)
  {
    *(v9 + 5992) = 0;
    if (!*(v9 + 6524))
    {
      dword_2A18BE76C &= ~1u;
    }

    if (a2)
    {
      v13 = *a2;
      sub_297E50DB0(1, v9 + 6524, 3u, 4u, "Send status");
      v14 = *a2;
      if (v14 == 179)
      {
        sub_297E4E0B0(1, v9 + 6524, 3u, 2u, "phNciNfc_CoreSendCb: SPMI Nack");
      }

      else if (*a2)
      {
        sub_297E4E0B0(1, v9 + 6524, 3u, 1u, "Tml write error!");
        *(a1 + 617) = 1;
      }

      else
      {
        sub_297E4E0B0(1, v9 + 6524, 3u, 4u, "phNciNfc_CoreSendCb:Send success");
      }

      *(a1 + 596) = v14;
      sub_297E5B1DC(*a1, a2);
    }

    else
    {
      sub_297E4E0B0(1, v9 + 6524, 3u, 1u, "Invalid 'pInfo' from TML!");
    }
  }

  else
  {
LABEL_9:
    sub_297E4E0B0(2, 0, 3u, 2u, "phNciNfc_CoreSendCb:Nci context cleared, received send callback!");
  }

  return sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreSendCb");
}

uint64_t sub_297E5B1DC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciCoreMuxNfc_TxCallback");
  if (a1 && a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(&unk_2A18BDDC0 + 14 * v5 + 4);
      if (v4)
      {
        break;
      }

      v4 = 1;
      v5 = 1;
    }

    while (v6 != a1);
    if (v6 == a1)
    {
      sub_297E57FC4(a1, 1, a2);
    }
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciCoreMuxNfc_TxCallback");
}

uint64_t sub_297E5B294(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciMuxNfc_MuxTxPktReset");
  if (!a1)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(&unk_2A18BDDC0 + 14 * v3 + 4);
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (v4 != a1);
  if (v4 == a1)
  {
    v6 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    v5 = 0;
  }

  else
  {
LABEL_6:
    v5 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciMuxNfc_MuxTxPktReset");
  return v5;
}

uint64_t sub_297E5B370(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteDeactivate");
  if (!a1)
  {
    a2 = 255;
    goto LABEL_8;
  }

  if (*(a1 + 896))
  {
    v4 = *(a1 + 6524);
    phOsalNfc_FreeMemory();
    *(a1 + 896) = 0;
    *(a1 + 904) = 0;
  }

  v5 = (a1 + 784);
  if (!a2)
  {
    if (!*v5)
    {
      sub_297E5B554(a1);
      *(a1 + 6730) = 0;
      sub_297E5B994(a1, 0, a1 + 6730);
      a2 = 0;
      goto LABEL_8;
    }

    v7 = *(a1 + 4696);
    if (v7 == 0xFFFFFFFFFFFFLL)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Timer Create had failed\n#\n");
      *v5 = 0;
      *(a1 + 792) = 0;
      a2 = 255;
      goto LABEL_6;
    }

    *(a1 + 200);
    sub_297E5A304(*(a1 + 6524), v7);
    *(a1 + 6512) = 0;
    v8 = *(a1 + 6524);
    v9 = *(a1 + 4696);
    a2 = phOsalNfc_Timer_Start();
    if (!a2)
    {
      sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3u, 4u, "phNciNfc_CompleteDeactivate");
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Deactivate ntf timer started\n");
      *(a1 + 3424) = 0;
      goto LABEL_8;
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Deactivate ntf timer start FAILED\n\n");
  }

  *v5 = 0;
  *(a1 + 792) = 0;
LABEL_6:
  *(a1 + 6730) = a2;
  sub_297E5B994(a1, 0, a1 + 6730);
LABEL_8:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CompleteDeactivate");
  return a2;
}

uint64_t sub_297E5B554(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessDeActvState");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    v3 = *(a1 + 6524);
    phOsalNfc_MemCopy();
    if (*(a1 + 176) == 1)
    {
      if (*(a1 + 72))
      {
        v4 = 255;
        goto LABEL_11;
      }

      sub_297E5B6B4(a1);
      v4 = 0;
      if (*(a1 + 176))
      {
LABEL_11:
        if (*(a1 + 72))
        {
          v9 = 0;
          v5 = sub_297E77BBC(a1, (a1 + 72), 0, &v9, 1);
          if (!v5)
          {
            v6 = sub_297E77FF8(a1, v9);
            goto LABEL_16;
          }

          v4 = v5;
          if (!*(a1 + 172))
          {
            sub_297E5B6B4(a1);
            v6 = sub_297EFF370(a1);
LABEL_16:
            v4 = v6;
          }
        }

        v7 = *(a1 + 6524);
        phOsalNfc_MemCopy();
        goto LABEL_18;
      }
    }

    else
    {
      v4 = 255;
      if (*(a1 + 176))
      {
        goto LABEL_11;
      }
    }

    if (!*(a1 + 72))
    {
      v4 = sub_297E5B798(a1, (a1 + 3984));
    }

    goto LABEL_11;
  }

  v4 = 255;
LABEL_18:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessDeActvState");
  return v4;
}

uint64_t sub_297E5B6B4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ClearDiscContext");
  if (a1)
  {
    v2 = 0;
    v3 = a1 + 80;
    do
    {
      if (*(v3 + v2))
      {
        v4 = *(a1 + 6524);
        phOsalNfc_FreeMemory();
        *(v3 + v2) = 0;
      }

      v2 += 8;
    }

    while (v2 != 80);
    *(a1 + 4552) = 0;
    if (*(a1 + 160))
    {
      v5 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 160) = 0;
    }

    v6 = *(a1 + 6524);
    phOsalNfc_SetMemory();
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "phNciNfc_ClearDiscContext: NULL NCI context");
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ClearDiscContext");
}

uint64_t sub_297E5B798(uint64_t a1, unsigned __int8 *a2)
{
  v5 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_DeActivateNfcee");
  if (a2 && !sub_297E5B838(a1, a2, 0, &v5, 3u))
  {
    a2[104 * v5 + 24] = -1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_DeActivateNfcee");
  return 0;
}

uint64_t sub_297E5B838(uint64_t a1, unsigned __int8 *a2, int a3, _BYTE *a4, unsigned int a5)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNfcNfc_NfceeGetDevIndex");
  if (a1)
  {
    v10 = *(a1 + 6524);
  }

  v11 = 1;
  if (a2 && a4 && a5 <= 3)
  {
    v12 = 0;
    v13 = a2 + 24;
    while (1)
    {
      if (a5 == 2)
      {
        if (v13[1] == a3)
        {
          if (*(v13 + 2))
          {
            phOsalNfc_FreeMemory();
            *(v13 + 2) = 0;
          }

          v11 = 0;
          v13[1] = 0;
          --a2[1];
          --*a2;
          break;
        }
      }

      else if (a5 == 1)
      {
        if (v13[1] == a3)
        {
          goto LABEL_20;
        }
      }

      else if (a5)
      {
        if (v12 < *a2 && *v13 != 255)
        {
LABEL_20:
          v11 = 0;
          *a4 = v12;
          break;
        }
      }

      else if (!v13[1])
      {
        goto LABEL_20;
      }

      ++v12;
      v13 += 104;
      if (v12 == 5)
      {
        v11 = 255;
        break;
      }
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNfcNfc_NfceeGetDevIndex");
  return v11;
}

uint64_t sub_297E5B994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_Notify");
  if (a1)
  {
    v6 = *(a1 + 3424);
    if (v6)
    {
      *(a1 + 6514) = 0;
      v7 = *(a1 + 3752);
      *(a1 + 3424) = 0;
      *(a1 + 3752) = 0;
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Invoking upper layer call back function");
      v6(v7, a2, a3);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Dropping as there is NO upper layer call back function");
    }
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_Notify");
}

uint64_t sub_297E5BA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_InternalSequence");
  if (a1)
  {
    sub_297E5BCA0(*(a1 + 3088), 0, &v21);
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = &unk_2A18BDDC0 + 112 * v6;
      if (*v8 == *(a1 + 9784))
      {
        break;
      }

      v9 = v7;
      v7 = 0;
      v10 = 0;
      v6 = 1;
      if ((v9 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v10 = *(v8 + 2) == 0;
    if (v21 != 1)
    {
      goto LABEL_19;
    }

LABEL_7:
    v11 = &dword_2A18BE7E8;
    v12 = &dword_2A18BE7EC;
    if (!v10)
    {
      v12 = &unk_2A18BE77C;
    }

    v13 = *v12;
    if (!v10)
    {
      v11 = &dword_2A18BE778;
    }

    v14 = *v11;
    if ((v13 - 109) <= 1 && v14 == 1)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "phLibNfc_InternalSequence: RID/RALL Response dropped due to Ongoing Discovery Sequence");
    }

    else
    {
LABEL_19:
      if (!a2 && *(a1 + 9779) == 1 && ((v16 = *(a1 + 2960), v16 == off_2A1A93120) || v16 == &qword_2A1A93190))
      {
        *(a1 + 1474) = 0;
        sub_297E4F1A4(*(a1 + 3088), 0);
        *(a1 + 9779) = 0;
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, " Response dropped due to force stop Discovery Sequence");
        *(a1 + 2960) = off_2A1A931E0;
        *(a1 + 2952) = 0;
        *(a1 + 2954) = 0;
        v17 = off_2A1A931E0[0];
        if (off_2A1A931E0[0])
        {
          v17 = 0;
          v18 = off_2A1A931F0;
          do
          {
            ++v17;
            v19 = *v18;
            v18 += 2;
          }

          while (v19);
        }

        *(a1 + 2953) = v17;
        if (sub_297E5588C(a1, 0, 0) != 13)
        {
          sub_297E5CB4C(a1, 255, 0);
        }
      }

      else
      {
        sub_297E5588C(a1, a2, a3);
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_InternalSequence");
}

uint64_t sub_297E5BCA0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetNciParams");
  if (a1)
  {
    if (a3)
    {
      if (!a2)
      {
        *a3 = *(a1 + 6497);
        *(a1 + 6497) = 0;
        *(a1 + 4608) = 0;
        goto LABEL_9;
      }

      v6 = "phNciNfc_GetNciParams: Invalid Param(eGetNciParams)";
      a2 = 1;
      v7 = a1 + 6524;
      v8 = 1;
    }

    else
    {
      v6 = "phNciNfc_GetNciParams: Invalid parameters";
      a2 = 1;
      v8 = 2;
      v7 = a1;
    }

    sub_297E4E0B0(v8, v7, 3u, 1u, v6);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 4u, "phNciNfc_GetNciParams: Stack not initialized");
    a2 = 49;
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetNciParams");
  return a2;
}

uint64_t sub_297E5BD90(uint64_t a1, uint64_t a2, _WORD *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ProcessDeactResp");
  if (!a1)
  {
    a2 = 255;
    goto LABEL_15;
  }

  *(a1 + 9777) = 0;
  if (!a2)
  {
    if (a3)
    {
      a2 = *a3;
      if (*a3 > 0x50u)
      {
        if ((a2 - 81) <= 0x3E && ((1 << (a2 - 81)) & 0x4000010000000001) != 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (!*a3)
        {
LABEL_14:
          sub_297E5BEBC(*(a1 + 3088), 0);
          goto LABEL_15;
        }

        if (a2 == 47 || a2 == 58)
        {
          sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Deactivation success");
          a2 = 0;
          goto LABEL_14;
        }
      }
    }

    a2 = 255;
    goto LABEL_14;
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Deactivate failed!");
LABEL_15:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ProcessDeactResp");
  return a2;
}

uint64_t sub_297E5BEBC(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ConfigDeactvDelay");
  if (a1)
  {
    *(a1 + 200) = a2;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ConfigDeactvDelay");
  return 255;
}

uint64_t sub_297E5BF24(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetProtoColToRfInterFaceMapping");
  if (a1)
  {
    sub_297E4F1A4(*(a1 + 3088), *(a1 + 1473));
    v2 = sub_297E5C1C4(a1);
  }

  else
  {
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetProtoColToRfInterFaceMapping");
  return v2;
}

uint64_t sub_297E5BFBC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ConfigMapping");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized");
    v13 = 49;
    goto LABEL_16;
  }

  if (!a3 || !a4)
  {
    v13 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid parameters");
    goto LABEL_16;
  }

  if (!a2)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "No entries");
    goto LABEL_13;
  }

  if (sub_297E5C274(a1, a2, a3))
  {
LABEL_13:
    v14 = "Parameter validation failed";
    v15 = a1 + 6524;
LABEL_14:
    sub_297E4E0B0(1, v15, 3u, 1u, v14);
    goto LABEL_15;
  }

  if (sub_297E5C5F4(a1, a2))
  {
LABEL_15:
    v13 = 255;
    goto LABEL_16;
  }

  v10 = *(a1 + 6524);
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  if (!Memory_Typed)
  {
    v14 = "phNciNfc_ConfigMapping:Memory allocation for command payload failed";
    v15 = a1 + 6524;
    goto LABEL_14;
  }

  v12 = Memory_Typed;
  sub_297E5C6DC(a1, Memory_Typed, a2, a3);
  *(a1 + 3424) = a4;
  *(a1 + 3752) = a5;
  *(a1 + 3776) = off_2A1A93C40;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93C40);
  *(a1 + 896) = v12;
  *(a1 + 904) = 3 * a2 + 1;
  v13 = sub_297E5C7DC(a1, 0, 0);
  if (v13 != 13)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Config Mapping Sequence failed!");
    sub_297F0522C(a1);
  }

LABEL_16:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ConfigMapping");
  return v13;
}

uint64_t sub_297E5C1C4(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v4 = 0uLL;
  if (*(a1 + 3204))
  {
    result = 0;
  }

  else
  {
    LOBYTE(v4) = 3;
    *(&v4 + 4) = 0x8000000002;
    v3 = 4;
    BYTE12(v4) = 1;
    v5 = 128;
    result = sub_297E5BFBC(*(a1 + 3088), 2, &v3, sub_297E5BA84, a1);
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297E5C274(uint64_t a1, unsigned int a2, int *a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateDiscMapParams");
  if (!a3)
  {
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  if (a2)
  {
    v7 = a2;
    v8 = (a3 + 2);
    while (1)
    {
      if (sub_297E5C390(a1, *(v8 - 2)))
      {
        v10 = "Invalid RF procotol";
        goto LABEL_12;
      }

      v3 = v3 & 0xFFFFFFFF00000000 | *(v8 - 1);
      if (sub_297E5C430(a1, v3))
      {
        v10 = "Invalid mode";
        goto LABEL_12;
      }

      if (sub_297E5C4A0(a1, *v8))
      {
        break;
      }

      v8 += 3;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }

    v10 = "Invalid RF interface";
LABEL_12:
    sub_297E4E0B0(2, a1, 3u, 4u, v10);
    goto LABEL_13;
  }

LABEL_8:
  v9 = sub_297E5C52C(a1, a2, a3);
LABEL_14:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateDiscMapParams");
  return v9;
}

uint64_t sub_297E5C390(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateRfProtocol");
  if ((a2 - 1) < 6 || (v4 = 1, (a2 - 128) <= 0x20) && ((1 << (a2 + 0x80)) & 0x100000401) != 0)
  {
    v4 = 0;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateRfProtocol");
  return v4;
}

BOOL sub_297E5C430(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateMode");
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateMode");
  return (a2 & 3) == 0;
}

uint64_t sub_297E5C4A0(uint64_t a1, unsigned int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateRfInterface");
  if (a2 < 4 || (v4 = 1, a2 - 128 <= 3) && a2 != 130)
  {
    v4 = 0;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateRfInterface");
  return v4;
}

uint64_t sub_297E5C52C(uint64_t a1, unsigned int a2, int *a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_VerifyRfProtocols");
  if (a2 < 2)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = a3;
      v9 = v6;
      v10 = a2;
      do
      {
        v11 = *v8;
        v8 += 3;
        if (a3[3 * v6] == v11 && v9 != 0)
        {
          v7 = 1;
        }

        --v9;
        --v10;
      }

      while (v10);
      ++v6;
    }

    while (v6 != a2);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_VerifyRfProtocols");
  return v7;
}

uint64_t sub_297E5C5F4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_VerifySupportedRfIntfs");
  if (*(a1 + 4))
  {
    if (a2)
    {
      v4 = 0;
      do
      {
        sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CheckRfIntfs");
        sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CheckRfIntfs");
        ++v4;
      }

      while (v4 < a2);
      a2 = 0;
    }
  }

  else
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "NFCC does not supported any RF interface");
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_VerifySupportedRfIntfs");
  return a2;
}

uint64_t sub_297E5C6DC(uint64_t a1, _BYTE *a2, unsigned int a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_BuildDiscMapCmdPayload");
  *a2 = a3;
  if (a3)
  {
    v8 = a3;
    v9 = (a4 + 4);
    v10 = 1;
    do
    {
      if (v10 >= 0xFEu)
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 + 1;
      }

      if (v10 >= 0xFEu)
      {
        LOBYTE(v10) = 0;
      }

      a2[v10] = *(v9 - 1);
      a2[v11] = 0;
      v12 = *v9;
      a2[v11] = *v9 & 1;
      a2[v11] = *v9 & 2 | v12 & 1;
      if (v11 >= 0xFEu)
      {
        v13 = v11;
      }

      else
      {
        v13 = v11 + 1;
      }

      if (v13 >= 0xFEu)
      {
        v10 = v13;
      }

      else
      {
        v10 = v13 + 1;
      }

      if (v13 >= 0xFEu)
      {
        LOBYTE(v13) = 0;
      }

      a2[v13] = *(v9 + 1);
      v9 += 12;
      --v8;
    }

    while (v8);
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_BuildDiscMapCmdPayload");
}

uint64_t sub_297E5C7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ConfigMappingSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ConfigMappingSequence");
  return v6;
}

uint64_t sub_297E5C870(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProtoIfMap");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0x100000001;
    DWORD2(v5) = 0;
    *&v6 = *(a1 + 896);
    DWORD2(v6) = *(a1 + 904);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5C7DC, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "Invalid input parameter");
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProtoIfMap");
  return v3;
}

uint64_t sub_297E5C960(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProtoIfMapRsp");
  if (a1)
  {
    *(a1 + 6641) = 0;
    if (*(a1 + 3808) == 1)
    {
      v2 = *(a1 + 3800);
      if (v2)
      {
        if (!*v2)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Rf Proto Intf mapping: SUCCESS");
          v3 = 0;
          goto LABEL_9;
        }

        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Rf Proto Intf mapping: FAILED");
        if (*(a1 + 6640) == 1)
        {
          *(a1 + 6641) = 1;
        }
      }
    }

    v3 = 255;
  }

  else
  {
    v3 = 1;
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProtoIfMapRsp");
  return v3;
}

uint64_t sub_297E5CA50(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteProtoIfMap");
  if (a1)
  {
    *(a1 + 3784) = 4;
    if (*(a1 + 896))
    {
      v4 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    sub_297E5B994(a1, a2, 0);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CompleteProtoIfMap");
  return a2;
}

uint64_t sub_297E5CAE4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GenSequenceProcess");
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GenSequenceProcess");
  return a2;
}

uint64_t sub_297E5CB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_DiscDeactivateComplete");
  if (a1)
  {
    v6 = (a1 + 1504);
    if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
    {
      *v6 = 0;
      *(a1 + 1512) = 0;
    }

    if (a2)
    {
      sub_297E79498(*(a1 + 3088), &v18);
      if (v18 == 1 && *(a1 + 1473) == 1)
      {
        if (*(a1 + 1474) > 3u)
        {
          sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_DiscDeactivateComplete: Retry set mapping Failed");
          v17 = *(a1 + 1474);
          sub_297E50EBC(1, a1 + 9792, 4u, 1u, "pLibCtx->tDiscCtx.bRetryCfgCount");
          *(a1 + 1474) = 0;
          sub_297E4F1A4(*(a1 + 3088), 0);
        }

        else
        {
          v7 = *(a1 + 9792);
          phOsalNfc_Delay();
          v8 = *(a1 + 1474);
          sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phLibNfc_DiscDeactivateComplete: Retry set mapping cmd");
          sub_297E4F1A4(*(a1 + 3088), 1);
          v9 = *(a1 + 2960);
          if (v9 == off_2A1A930C0 || v9 == &qword_2A1A93070)
          {
            v11 = off_2A1A930C0;
          }

          else
          {
            v11 = off_2A1A93050;
          }

          *(a1 + 2960) = v11;
          *(a1 + 2952) = 0;
          *(a1 + 2954) = 0;
          v12 = *v11;
          if (*v11)
          {
            LOBYTE(v12) = 0;
            v13 = (v11 + 2);
            do
            {
              LOBYTE(v12) = v12 + 1;
              v14 = *v13;
              v13 += 2;
            }

            while (v14);
          }

          *(a1 + 2953) = v12;
          a2 = sub_297E5588C(a1, 0, a3);
          if (a2 == 13)
          {
            ++*(a1 + 1474);
            goto LABEL_28;
          }
        }
      }
    }

    else
    {
      *v6 = 0;
      *(a1 + 1512) = 0;
    }

    if (a2 != 13)
    {
      if (a2)
      {
        *(a1 + 1473) = 0;
        sub_297E4F1A4(*(a1 + 3088), 0);
        if (a2 != 81)
        {
          sub_297E5BEBC(*(a1 + 3088), 0);
          if (a2 != 143)
          {
            a2 = 255;
          }
        }

        v15 = 119;
      }

      else
      {
        *(a1 + 1474) = 0;
        sub_297E4F1A4(*(a1 + 3088), 0);
        v15 = 118;
      }

      *(a1 + 1470) = 0;
      a2 = sub_297E4F450(*(a1 + 9784), v15, a2, 0, 0);
    }
  }

LABEL_28:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_DiscDeactivateComplete");
  return a2;
}

uint64_t sub_297E5CDB4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  v18 = a1;
  v16 = 0;
  sub_297E4E1B4(0, &v18, 4u, 5u, "phLibNfc_SM_Main_DiscTransComplete");
  sub_297E4F0E8(v18, &v17);
  sub_297E5D114(v18, &v16);
  if (a3)
  {
    sub_297E96818(v18, a3);
  }

  else
  {
    sub_297E5D398(v18, 0);
  }

  v7 = v17;
  if (!v17)
  {
    goto LABEL_36;
  }

  if (a2 <= 63)
  {
    if (a2 <= 53)
    {
      if ((a2 - 20) < 2)
      {
LABEL_23:
        *(v17 + 9779) = 0;
LABEL_24:
        sub_297E5D1EC(v7, a3);
        goto LABEL_36;
      }

      if (a2 != 7)
      {
        if (a2 != 24)
        {
          goto LABEL_36;
        }

        goto LABEL_24;
      }

      v11 = v17[829];
      v12 = v17[830];
      *(v17 + 829) = 0u;
      if (!v11)
      {
        goto LABEL_36;
      }

      sub_297E50EBC(0, &v18, 4u, 4u, "Power mode Config: Invoking callback function, wStatus = ");
      v13 = v17 + 1224;
      v14 = 5;
LABEL_35:
      sub_297E4D930(1, v13, 4u, v14, "phLibNfc_SM_Main_DiscTransComplete");
      v11(v17[1223], v12, a3);
      goto LABEL_36;
    }

    if ((a2 - 54) >= 7)
    {
      if (a2 == 61)
      {
        v11 = v17[851];
        v12 = v17[852];
        *(v17 + 851) = 0u;
        if (!v11)
        {
          goto LABEL_36;
        }

        sub_297E50EBC(0, &v18, 4u, 4u, "phLibNfc_SM_Main_DiscTransComplete:Invoking callback, wStatus = ");
        v13 = v17 + 1224;
        v14 = 136;
        goto LABEL_35;
      }

      if (a2 != 62)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_16;
  }

  if (a2 > 73)
  {
    v8 = a2 - 74;
    if ((a2 - 74) <= 0x24)
    {
      if (((1 << v8) & 0x240070000) != 0)
      {
        sub_297E5FC6C(v16, a4, a3);
        goto LABEL_36;
      }

      if (((1 << v8) & 3) == 0)
      {
        if (((1 << v8) & 0x1800000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((a2 - 64) < 3)
  {
LABEL_16:
    sub_297EFD244(v17, a4, a3);
    goto LABEL_36;
  }

  if (a2 == 68)
  {
LABEL_29:
    v11 = v17[847];
    v12 = v17[848];
    *(v17 + 847) = 0u;
    if (!v11)
    {
      goto LABEL_36;
    }

    sub_297E50EBC(0, &v18, 4u, 4u, "phLibNfc_Mgt_SetNfccParams:Invoking callback, wStatus = ");
    v13 = v17 + 1224;
    v14 = 132;
    goto LABEL_35;
  }

  if (a2 == 72)
  {
    v9 = v17[855];
    v10 = v17[856];
    *(v17 + 855) = 0u;
    if (v9)
    {
      sub_297E50EBC(0, &v18, 4u, 4u, "phLibNfc_SM_Main_DiscTransComplete:Invoking callback, wStatus = ");
      sub_297E4D930(1, (v17 + 1224), 4u, 67, "phLibNfc_SM_Main_DiscTransComplete");
      v9(v17[1223], v10, a4, a3);
    }
  }

LABEL_36:
  sub_297E4DFAC(0, &v18, 4u, 5u, "phLibNfc_SM_Main_DiscTransComplete");
  return a3;
}

uint64_t sub_297E5D114(uint64_t a1, void *a2)
{
  v10 = a1;
  sub_297E4E1B4(0, &v10, 5u, 5u, "phUtilNfc_RetrieveIoctlCtx");
  if (a2)
  {
    v3 = 0;
    *a2 = 0;
    v4 = 1;
    while (1)
    {
      v5 = v4;
      v6 = &unk_2A18BDDC0 + 112 * v3;
      if (*v6 == v10)
      {
        break;
      }

      v4 = 0;
      v3 = 1;
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v9 = *(v6 + 2);
    v7 = 0;
    if (v9 <= 1)
    {
      *a2 = *(&unk_2A18BDDC0 + 14 * v9 + 11);
    }
  }

  else
  {
LABEL_5:
    v7 = 255;
  }

  sub_297E4E1B4(0, &v10, 5u, 5u, "phUtilNfc_RetrieveIoctlCtx");
  return v7;
}

uint64_t sub_297E5D1EC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_InvokeDiscDisconnCb");
  v4 = *(a1 + 1032);
  if (v4 > 6 || ((1 << v4) & 0x43) == 0)
  {
    v8 = 0;
    v7 = (a1 + 6264);
    v6 = *(a1 + 6264);
    v9 = 6272;
  }

  else
  {
    v6 = 0;
    v7 = (a1 + 6296);
    v8 = *(a1 + 6296);
    v9 = 6304;
  }

  v10 = *(a1 + v9);
  *v7 = 0;
  v7[1] = 0;
  if (v4 > 6 || ((1 << v4) & 0x43) == 0)
  {
    if (v6)
    {
      sub_297E4D930(1, a1 + 9792, 4u, 130, "phLibNfc_InvokeDiscDisconnCb");
      v6(*(a1 + 9784), v10, 0, a2);
      goto LABEL_16;
    }

    v11 = "phLibNfc_InvokeDiscDisconnCb: Upper layer call back function (pDisconnNtfCb) not found";
    v12 = a1 + 9792;
LABEL_15:
    sub_297E4E0B0(1, v12, 4u, 4u, v11);
    goto LABEL_16;
  }

  if (!v8)
  {
    v11 = "phLibNfc_InvokeDiscDisconnCb: Upper layer call back function (pDiscNtfCb) not found";
    v12 = a1 + 9792;
    goto LABEL_15;
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_InvokeDiscDisconnCb: Invoking upper layer call back function");
  sub_297E4D930(1, a1 + 9792, 4u, 114, "phLibNfc_InvokeDiscDisconnCb");
  v8(*(a1 + 9784), v10, a2);
LABEL_16:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_InvokeDiscDisconnCb");
  return a2;
}

uint64_t sub_297E5D398(uint64_t result, __int16 a2)
{
  v2 = 0;
  for (i = 1; ; i = 0)
  {
    v4 = i;
    v5 = &unk_2A18BDDC0 + 112 * v2;
    if (*v5 == result)
    {
      break;
    }

    v2 = 1;
    if ((v4 & 1) == 0)
    {
      return result;
    }
  }

  v6 = *(v5 + 2);
  if (v6 <= 1)
  {
    v7 = *(&unk_2A18BDDC0 + 14 * v6 + 10);
    if (v7)
    {
      v8 = *(v7 + 152);
      v9 = (v8 - 194) > 0x35 || ((1 << (v8 + 62)) & 0x30000000000003) == 0;
      if (!v9 || v8 == 44)
      {
        *(v7 + 152) = a2;
      }
    }
  }

  return result;
}

uint64_t phLibNfc_Mgt_IoCtl(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a1;
  v11 = 1;
  sub_297E4D930(0, &v25, 4u, 133, "phLibNfc_Mgt_IoCtl");
  sub_297E4E1B4(0, &v25, 4u, 5u, "phLibNfc_Mgt_IoCtl");
  v27 = 0;
  v28 = v25;
  v26 = 0;
  sub_297E4E1B4(0, &v28, 4u, 5u, "phLibNfc_Validate_IoctlParam");
  sub_297E4F0E8(v28, &v26);
  sub_297E5D114(v28, &v27);
  if (v28)
  {
    v12 = v27;
    if (v27)
    {
      if ((a2 - 192) > 0x33 || ((1 << (a2 + 64)) & 0x800000C000783) == 0)
      {
        if (!a5)
        {
          v12 = 0;
          v13 = "phLibNfc_Validate_IoctlParam: NULL call back";
          goto LABEL_11;
        }

        if (*(v27 + 16))
        {
          v12 = 0;
          v11 = 111;
          goto LABEL_12;
        }
      }

      v11 = 0;
      if (a2 <= 2555)
      {
        if ((a2 - 192) <= 0x33 && ((1 << (a2 + 64)) & 0xB000000000781) != 0)
        {
          goto LABEL_12;
        }

LABEL_55:
        if (v26)
        {
LABEL_56:
          v11 = 0;
          goto LABEL_12;
        }

        v11 = 49;
        v13 = "phLibNfc_Validate_IoctlParam: LIBNFC Not Initialized";
        goto LABEL_11;
      }

      if (a2 != 2559)
      {
        if (a2 == 2558)
        {
          goto LABEL_12;
        }

        if (a2 != 2556)
        {
          goto LABEL_55;
        }
      }

      if (a4 && *a4 && *(a4 + 8) >= 2u)
      {
        goto LABEL_56;
      }

      v11 = 1;
      v13 = "phLibNfc_Validate_IoctlParam: NULL Output buffer";
    }

    else
    {
      v11 = 255;
      v13 = "phLibNfc_Validate_IoctlParam: Invalid IOCTL context";
    }
  }

  else
  {
    v12 = 0;
    v13 = "phLibNfc_Validate_IoctlParam: Invalid Driver handle";
  }

LABEL_11:
  sub_297E4E0B0(0, &v28, 4u, 1u, v13);
LABEL_12:
  sub_297E4DFAC(0, &v28, 4u, 5u, "phLibNfc_Validate_IoctlParam");
  v14 = 0;
  v15 = 1;
  v16 = v25;
  while (1)
  {
    v17 = v15;
    v18 = &unk_2A18BDDC0 + 112 * v14;
    if (*v18 == v25)
    {
      break;
    }

    v15 = 0;
    v14 = 1;
    if ((v17 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v19 = *(v18 + 2);
  if (v19 > 1)
  {
LABEL_22:
    v21 = 0;
    if (!v12)
    {
LABEL_30:
      if (v21)
      {
        *(v21 + 36) = 133;
        sub_297E96818(v16, v11);
      }

      sub_297E4DFAC(0, &v25, 4u, 5u, "phLibNfc_Mgt_IoCtl");
LABEL_43:
      sub_297E4D930(0, &v25, 4u, 133, "phLibNfc_Mgt_IoCtl");
      return v11;
    }
  }

  else
  {
    v20 = *(&unk_2A18BDDC0 + 14 * v19 + 10);
    if (v20)
    {
      v21 = v20 + 120;
    }

    else
    {
      v21 = 0;
    }

    if (!v12)
    {
      goto LABEL_30;
    }
  }

  if (v11)
  {
    goto LABEL_30;
  }

  if (a2 != 243)
  {
    *(v12 + 16) = a5;
    *v12 = a6;
    *(v12 + 80) = a4;
    *(v12 + 96) = a2;
  }

  *(v12 + 8) = v16;
  v28 = v16;
  sub_297E4E1B4(0, &v28, 4u, 5u, "phLibNfc_Get_IoctlId");
  v22 = 0;
  v23 = &off_2A1E95510;
  while (*(v23 - 2) != a2)
  {
    ++v22;
    v23 += 2;
    if (v22 == 34)
    {
      sub_297E4DFAC(0, &v28, 4u, 5u, "phLibNfc_Get_IoctlId");
      goto LABEL_34;
    }
  }

  sub_297E4DFAC(0, &v28, 4u, 5u, "phLibNfc_Get_IoctlId");
  if (v22 <= 0x20)
  {
    v11 = (*v23)(v25, a3, a4, a5, a6);
    goto LABEL_38;
  }

LABEL_34:
  sub_297E4E0B0(0, &v25, 4u, 1u, "phLibNfc_Mgt_IoCtl: IOCTL code not supported");
  if (v21)
  {
    *(v21 + 36) = 133;
    v11 = 255;
    sub_297E96818(v25, 255);
  }

  else
  {
    v11 = 255;
  }

LABEL_38:
  if (a2 != 243 && v11 && v11 != 13)
  {
    *(v12 + 16) = 0;
    *v12 = 0;
  }

  sub_297E4DFAC(0, &v25, 4u, 5u, "phLibNfc_Mgt_IoCtl");
  if (v11 != 13)
  {
    goto LABEL_43;
  }

  return v11;
}

uint64_t sub_297E5D85C(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_Ioctl_PropSetRfConfig");
  v3 = sub_297E4F050(v8, &v7);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v7 == 0;
  }

  if (v4)
  {
    v5 = v3;
    sub_297E4E0B0(0, &v8, 4u, 1u, "Ioctl_PropSetRfConfig: LIBNFC Not Initialized");
    goto LABEL_7;
  }

  if (a2 && *a2 && *(a2 + 8) > 3u)
  {
    v5 = sub_297E4F450(v8, 91, 0, a2, 0);
LABEL_7:
    if (v5 == 13)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v5 = 1;
  sub_297E4E0B0(0, &v8, 4u, 1u, "Ioctl_PropSetRfConfig: Invalid input parameters");
LABEL_13:
  sub_297E5AE60(v8, 91);
  sub_297E96818(v8, v5);
LABEL_14:
  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_Ioctl_PropSetRfConfig");
  return v5;
}

uint64_t sub_297E5D97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = a1;
  v11 = 0;
  sub_297E4E1B4(0, &v13, 4u, 5u, "phLibNfc_SM_IoctlSetRfPropConfigTrans");
  sub_297E4F0E8(v13, &v12);
  if (a4 && v12)
  {
    v5 = sub_297E5DAA0(v13, *a4, *(a4 + 8), &v11, 2);
    if (!v5 && v11)
    {
      v6 = v12;
      *(v12 + 3568) = v11;
      *(v6 + 3576) = *a4;
      *(v6 + 2960) = gphLibNfc_IoctlSetPropRfConfig;
      *(v6 + 2952) = 0;
      *(v6 + 2954) = 0;
      v7 = gphLibNfc_IoctlSetPropRfConfig[0];
      if (gphLibNfc_IoctlSetPropRfConfig[0])
      {
        v7 = 0;
        v8 = off_2A1A90938;
        do
        {
          ++v7;
          v9 = *v8;
          v8 += 2;
        }

        while (v9);
      }

      *(v6 + 2953) = v7;
      v5 = sub_297E5588C(v6, 0, 0);
    }
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(0, &v13, 4u, 1u, "phLibNfc_SM_IoctlSetRfPropConfigTrans: Failed");
  }

  sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_SM_IoctlSetRfPropConfigTrans");
  return v5;
}

uint64_t sub_297E5DAA0(uint64_t a1, uint64_t a2, unsigned int a3, _BYTE *a4, int a5)
{
  v20 = a1;
  sub_297E4E1B4(0, &v20, 4u, 5u, "phLibNfc_ParseInputBuffer");
  if (a2 && a3 && a4)
  {
    v9 = 0;
    v10 = 0;
    if (a5 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    if (a5 == 2)
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }

    if (a5 == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v11;
    }

    if (a5 == 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = v12;
    }

    do
    {
      ++v9;
      v15 = v14 + *(a2 + v10 + v13);
      v16 = __CFADD__(v15, v10);
      v10 += v15;
      if (v16)
      {
        v10 = 0;
      }
    }

    while (v10 < a3);
    if (v10 != a3 || v9 == 0)
    {
      *a4 = 0;
      sub_297E4E0B0(0, &v20, 4u, 1u, "Inconsistent input buffer!");
      v18 = 255;
    }

    else
    {
      v18 = 0;
      *a4 = v9;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    v18 = 1;
    sub_297E4E0B0(0, &v20, 4u, 1u, "phLibNfc_ParseInputBuffer: Invalid input parameter");
  }

  sub_297E4DFAC(0, &v20, 4u, 5u, "phLibNfc_ParseInputBuffer");
  return v18;
}

uint64_t sub_297E5DBDC(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v15 = 0;
  memset(v16, 0, 255);
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_IoctlSetPropRfCfgCmd");
  if (a1)
  {
    sub_297E5D114(*(a1 + 3000), &v15);
    if (v15)
    {
      if (*(v15 + 824) == 1)
      {
        a2 = 0;
        *(v15 + 824) = 0;
      }

      else
      {
        v4 = 0;
        v5 = *(a1 + 3568);
        v6 = v5 - 27;
        if (v5 >= 0x1C)
        {
          v7 = 27;
        }

        else
        {
          v6 = 0;
          v7 = *(a1 + 3568);
        }

        *(a1 + 3568) = v6;
        LOBYTE(v16[0]) = v7;
        v8 = *(a1 + 3576);
        v9 = 1;
        do
        {
          v10 = *(v8 + 2) + 3;
          v11 = *(a1 + 9792);
          phOsalNfc_MemCopy();
          v8 = *(a1 + 3576) + v10;
          *(a1 + 3576) = v8;
          v12 = v10 + v9;
          if (v12 >= 0x100)
          {
            LOBYTE(v12) = 0;
          }

          v9 = v12;
          ++v4;
        }

        while (v7 > v4);
        a2 = sub_297E5DD98(*(a1 + 3088), v16, v12, sub_297E5BA84, a1);
      }
    }

    else
    {
      a2 = 0;
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_IoctlSetPropRfCfgCmd");
  v13 = *MEMORY[0x29EDCA608];
  return a2;
}

uint64_t sub_297E5DD98(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetConfigRaw");
  if (a1)
  {
    if (a2 && a3)
    {
      v10 = *(a1 + 6524);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(a1 + 896) = Memory_Typed;
      if (Memory_Typed)
      {
        v12 = *(a1 + 6524);
        phOsalNfc_MemCopy();
        *(a1 + 3424) = a4;
        *(a1 + 3752) = a5;
        *(a1 + 3776) = off_2A1A93BE0;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93BE0);
        *(a1 + 904) = a3;
        v13 = sub_297E5DF3C(a1, 0, 0);
        if (v13 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Set Config Raw Sequence failed!");
          v14 = *(a1 + 6524);
          v15 = *(a1 + 896);
          phOsalNfc_FreeMemory();
          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_SetConfigRaw:Failed to allocate memory, insufficient resources");
        v13 = 12;
      }
    }

    else
    {
      v13 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid parameters");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized");
    v13 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetConfigRaw");
  return v13;
}

uint64_t sub_297E5DF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetConfigSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetConfigSequence");
  return v6;
}

uint64_t sub_297E5DFD0(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetConfig");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 1;
    DWORD2(v5) = 2;
    *&v6 = *(a1 + 896);
    DWORD2(v6) = *(a1 + 904);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5DF3C, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "Invalid input parameter");
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetConfig");
  return v3;
}

BOOL sub_297E5E0C8(uint64_t a1, uint64_t a2, int a3)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreValidateNciCoreCmd");
  v6 = 1;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (!*(a2 + 24))
        {
          v6 = 0;
          goto LABEL_21;
        }
      }

      else if (a3 != 2 || *(a2 + 24) <= 2u)
      {
        goto LABEL_21;
      }
    }

    else if (*(a2 + 24) != 1)
    {
      goto LABEL_21;
    }

LABEL_20:
    v6 = *(a2 + 16) == 0;
    goto LABEL_21;
  }

  if (a3 == 3)
  {
    if (*(a2 + 24) <= 1u)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (a3 == 4)
  {
    v7 = *(a2 + 24);
    if (v7 > 3 || v7 == 2)
    {
      goto LABEL_20;
    }
  }

  else if (a3 == 5 && *(a2 + 24))
  {
    goto LABEL_20;
  }

LABEL_21:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreValidateNciCoreCmd");
  return v6;
}

uint64_t sub_297E5E1D8(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetConfigRsp");
  if (!a1)
  {
    v5 = 1;
    goto LABEL_29;
  }

  *(a1 + 6641) = 0;
  if (*(a1 + 3808) < 2u || (v2 = *(a1 + 3800)) == 0)
  {
LABEL_28:
    v5 = 255;
    goto LABEL_29;
  }

  sub_297E5E368(a1, v2);
  v3 = **(a1 + 3800);
  if (v3 <= 8)
  {
    if (!**(a1 + 3800))
    {
      v5 = 0;
      goto LABEL_29;
    }

    if (v3 != 1 && v3 != 5)
    {
      goto LABEL_25;
    }

LABEL_16:
    v7 = *(a1 + 896);
    if (v7 && *(a1 + 904) >= 2u)
    {
      sub_297E4E880(1, a1 + 6524, 3u, 2u, "Set Cfg Rsp returned not supported, Tag ID (All):", v7 + 1);
    }

    if (*(a1 + 6640) == 1)
    {
      *(a1 + 6641) = 1;
    }

    v5 = 147;
    goto LABEL_29;
  }

  if (**(a1 + 3800) <= 0xF8u)
  {
    if (v3 != 9)
    {
      if (v3 == 241)
      {
        v4 = "Set Config failed with NOK express mode enabled Error";
        goto LABEL_26;
      }

LABEL_25:
      v4 = "Set Config failed";
LABEL_26:
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v4);
      if (*(a1 + 6640) == 1)
      {
        *(a1 + 6641) = 1;
      }

      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if (v3 == 249)
  {
    v5 = 135;
    goto LABEL_29;
  }

  if (v3 != 252)
  {
    goto LABEL_25;
  }

  v5 = 158;
LABEL_29:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetConfigRsp");
  return v5;
}

uint64_t sub_297E5E368(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrintSetConfigRespDescription");
  sub_297E4E0B0(2, a1, 3u, 4u, "Set Config Response:");
  sub_297E4E0B0(2, a1, 3u, 4u, "====================================================");
  if (*a2)
  {
    sub_297E4E0B0(2, a1, 3u, 4u, "Set Config: FAILED");
    v4 = a2[1];
    sub_297E50DB0(2, a1, 3u, 4u, "phNciNfc_PrintSetConfigRespDescription:Number of parameter failed to set:");
    if (a2[1])
    {
      v5 = 0;
      do
      {
        v6 = a2[v5 + 2];
        sub_297E50DB0(2, a1, 3u, 4u, "Parameter ID:");
        ++v5;
      }

      while (v5 < a2[1]);
    }
  }

  else
  {
    sub_297E4E0B0(2, a1, 3u, 4u, "Set Config: SUCCESS");
  }

  sub_297E4E0B0(2, a1, 3u, 4u, "====================================================");

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrintSetConfigRespDescription");
}

uint64_t sub_297E5E4DC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteSetConfig");
  if (a1)
  {
    *(a1 + 3784) = 4;
    if (*(a1 + 896))
    {
      v4 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    sub_297E5B994(a1, a2, 0);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CompleteSetConfig");
  return a2;
}

uint64_t sub_297E5E570(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_IoctlSetRfCfgProc");
  if (a1)
  {
    if (*(a1 + 2985) == 1 || *(a1 + 2986) == 1)
    {
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    else if (!a2 && *(a1 + 2992) == 1)
    {
LABEL_9:
      if (*(a1 + 3560) >= *(a1 + 3556) || !*(a1 + 3568))
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "All Rf configs are set");
        a2 = 0;
        goto LABEL_13;
      }
    }

    sub_297E79734(a1, *(a1 + 2960), 1);
    goto LABEL_13;
  }

  sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_IoctlSetRfCfgProc : Libnfc Context is Invalid");
  a2 = 255;
LABEL_13:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_IoctlSetRfCfgProc");
  return a2;
}

uint64_t sub_297E5E678(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_FlushSramData");
  sub_297E4F1A4(*(a1 + 3088), 0);
  if (*(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1)
  {
    v2 = sub_297E5E72C(*(a1 + 3088), sub_297E5BA84, a1);
  }

  else
  {
    v2 = 0;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_FlushSramData");
  return v2;
}

uint64_t sub_297E5E72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_FlushSramToFlash");
  if (a1)
  {
    if (a2)
    {
      *(a1 + 3776) = off_2A1A93BC0;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93BC0);
      v6 = sub_297E5E830(a1, 0, 0);
      if (v6 == 13)
      {
        *(a1 + 3424) = a2;
        *(a1 + 3752) = a3;
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Flush data command failed!");
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_FlushSramToFlash");
  return v6;
}

uint64_t sub_297E5E830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GenericSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GenericSequence");
  return v6;
}

uint64_t sub_297E5E8C4(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_FlushDataCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 33;
    *&v6 = 0;
    DWORD2(v6) = 0;
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "Invalid input parameter");
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_FlushDataCmd");
  return v3;
}

uint64_t sub_297E5E9B4(uint64_t a1, uint64_t a2, int a3)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreValidateNciPropCmd");
  v6 = 1;
  switch(a3)
  {
    case 0:
      if (*(a2 + 24) == 1)
      {
        goto LABEL_19;
      }

      break;
    case 2:
    case 6:
    case 8:
    case 17:
    case 25:
    case 28:
    case 29:
    case 33:
    case 42:
    case 46:
    case 57:
    case 60:
      v7 = *(a2 + 24) == 0;
      goto LABEL_13;
    case 3:
    case 7:
    case 34:
    case 43:
    case 44:
    case 50:
      v8 = *(a2 + 24) == 0;
      goto LABEL_5;
    case 13:
    case 31:
    case 37:
    case 62:
      v7 = *(a2 + 24) == 1;
      goto LABEL_13;
    case 16:
      if ((*(a2 + 24) | 4) != 5)
      {
        break;
      }

LABEL_19:
      v8 = *(a2 + 16) == 0;
LABEL_5:
      v6 = v8;
      break;
    case 20:
      v7 = *(a2 + 24) == 2;
      goto LABEL_13;
    case 40:
    case 45:
    case 48:
    case 49:
    case 51:
    case 52:
    case 55:
    case 63:
      v6 = 0;
      break;
    case 41:
      v10 = __CFADD__(*(a2 + 24) - 3, 2);
      goto LABEL_21;
    case 59:
      v7 = ((*(a2 + 24) - 1) & 0xFFFFFFFD) == 0;
LABEL_13:
      v6 = !v7;
      break;
    case 61:
      v10 = __CFADD__(*(a2 + 24) - 5, 3);
LABEL_21:
      v6 = !v10;
      break;
    default:
      break;
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreValidateNciPropCmd");
  return v6;
}

uint64_t sub_297E5EBEC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_FlushDataRsp");
  if (!a1)
  {
    a2 = 1;
    goto LABEL_19;
  }

  if (!a2)
  {
    if (*(a1 + 3808) != 1)
    {
      v6 = "Flush Data response received with invalid payload length";
LABEL_12:
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v6);
      a2 = 255;
      goto LABEL_19;
    }

    v5 = **(a1 + 3800);
    if (v5 > 5)
    {
      if (v5 != 6)
      {
        if (v5 == 9)
        {
          v4 = "Flush Data response Invalid parameter received";
          a2 = 1;
          goto LABEL_4;
        }

        goto LABEL_16;
      }

      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Flush Data command Semantic error received");
    }

    else if (**(a1 + 3800))
    {
      if (v5 == 1)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Flush Data command rejected by NFCC");
        a2 = 147;
        goto LABEL_19;
      }

LABEL_16:
      v6 = "Flush Data failed!";
      goto LABEL_12;
    }

    a2 = 0;
    goto LABEL_19;
  }

  v4 = "phNciNfc_FlushDataRsp:Flush Data response received with failure status";
LABEL_4:
  sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v4);
LABEL_19:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_FlushDataRsp");
  return a2;
}

uint64_t sub_297E5ED50(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessCommonNciCompleteSeq1");
  if (a1)
  {
    sub_297E5B994(a1, a2, 0);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessCommonNciCompleteSeq1");
  return a2;
}

uint64_t sub_297E5EDC4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_FlushSramDataProcess");
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_FlushSramDataProcess");
  return a2;
}

uint64_t sub_297E5EE2C(uint64_t a1, int a2)
{
  v18 = 8;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_IoctlSetPropRfCfgComplete");
  if (a1)
  {
    if (a2)
    {
      if (a2 == 147 && *(a1 + 3196) == 2)
      {
        goto LABEL_5;
      }

      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_IoctlSetPropRfCfgComplete: Failed");
      if (a2 == 143)
      {
        v4 = 143;
      }

      else
      {
        v4 = 255;
      }

LABEL_17:
      v10 = 119;
LABEL_26:
      v5 = sub_297E4F450(*(a1 + 3000), v10, v4, 0, 0);
      goto LABEL_27;
    }

    sub_297E5F164(*(a1 + 3000), &v18);
    if (*(a1 + 3568))
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Re-Initialize the sequence to perform set config");
      *(a1 + 2960) = gphLibNfc_IoctlSetPropRfConfig;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v6 = gphLibNfc_IoctlSetPropRfConfig[0];
      if (gphLibNfc_IoctlSetPropRfConfig[0])
      {
        v6 = 0;
        v7 = off_2A1A90938;
        do
        {
          ++v6;
          v8 = *v7;
          v7 += 2;
        }

        while (v8);
      }

      *(a1 + 2953) = v6;
      v9 = sub_297E5588C(a1, 0, 0);
      v4 = v9;
      if (v9 != 13 && v9 != 143)
      {
        v4 = 255;
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "All Rf configs are set");
    v11 = *(a1 + 5456);
    if (*(a1 + 5448) == 1)
    {
      if (v11 != 1)
      {
LABEL_29:
        if (*(a1 + 5452) == 1)
        {
          sub_297F09C20(*(a1 + 3088), 1);
          sub_297F09CBC(*(a1 + 3088), *(a1 + 5452));
        }

        goto LABEL_31;
      }
    }

    else if (v11 != 1)
    {
      if (*(a1 + 5449) != 1)
      {
LABEL_5:
        v4 = 0;
LABEL_25:
        v10 = 118;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    sub_297F09B18(*(a1 + 3088), *(a1 + 5452));
    sub_297F09CBC(*(a1 + 3088), *(a1 + 5452));
    if (v18 == 6)
    {
      sub_297F09C20(*(a1 + 3088), 1);
      sub_297F09B18(*(a1 + 3088), 1);
      v12 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      v13 = *(a1 + 3000);
      v4 = phTmlNfc_IoCtl();
      if (v4)
      {
LABEL_24:
        if (v4 != 13)
        {
          goto LABEL_25;
        }

        goto LABEL_35;
      }
    }

LABEL_31:
    *(a1 + 5456) = 0;
    *(a1 + 5448) = 0;
    *(a1 + 2930) = 256;
    *(a1 + 2932) = 0;
    *(a1 + 2960) = off_2A1A90DB8;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v15 = off_2A1A90DB8[0];
    if (off_2A1A90DB8[0])
    {
      v15 = 0;
      v16 = off_2A1A90DC8;
      do
      {
        ++v15;
        v17 = *v16;
        v16 += 2;
      }

      while (v17);
    }

    *(a1 + 2953) = v15;
    if (sub_297E5588C(a1, 0, 0) != 13)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "NFCC Re-Init failed, return failed");
      sub_297E8D804(a1);
      sub_297F09C20(*(a1 + 3088), 0);
      v4 = 137;
      goto LABEL_17;
    }

LABEL_35:
    v5 = 13;
    goto LABEL_27;
  }

  sub_297E4E0B0(2, 0, 4u, 1u, "Invalid parameter, Libnfc Context is Invalid");
  v5 = 255;
LABEL_27:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_IoctlSetPropRfCfgComplete");
  return v5;
}

uint64_t sub_297E5F164(uint64_t a1, _DWORD *a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5u, 5u, "phUtilNfc_GetNfccLinkType");
  if (a2)
  {
    v3 = 0;
    v4 = 1;
    while (1)
    {
      v5 = v4;
      v6 = &unk_2A18BDDC0 + 112 * v3;
      if (v9 == *v6)
      {
        break;
      }

      v4 = 0;
      v3 = 1;
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v7 = 0;
    *a2 = *(v6 + 3);
  }

  else
  {
LABEL_5:
    v7 = 255;
  }

  sub_297E4DFAC(0, &v9, 5u, 5u, "phUtilNfc_GetNfccLinkType");
  return v7;
}

uint64_t sub_297E5F21C(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v25 = 0;
  v26 = a1;
  v24 = 0;
  sub_297E4E1B4(0, &v26, 4u, 5u, "phLibNfc_SM_Main_InitTransComplete");
  sub_297E4F0E8(v26, &v25);
  sub_297E5D114(v26, &v24);
  if (a3)
  {
    sub_297E96818(v26, a3);
  }

  else
  {
    sub_297E5D398(v26, 0);
  }

  v7 = v25;
  if (v25)
  {
    switch(a2)
    {
      case 6:
        v8 = v25[819];
        v9 = v25[820];
        *(v25 + 819) = 0u;
        if (v8)
        {
          sub_297E50EBC(0, &v26, 4u, 4u, "HsuCfgParam:Invoking callback function, wStatus = ");
          v10 = v25 + 1224;
          v11 = 4;
          goto LABEL_10;
        }

        break;
      case 7:
        v8 = v25[829];
        v9 = v25[830];
        *(v25 + 829) = 0u;
        if (v8)
        {
          sub_297E50EBC(0, &v26, 4u, 4u, "Power mode Config: Invoking callback function, wStatus = ");
          v10 = v25 + 1224;
          v11 = 5;
          goto LABEL_10;
        }

        break;
      case 12:
        v14 = v25[815];
        v15 = v25[816];
        *(v25 + 815) = 0u;
        if (v14)
        {
          sub_297E50EBC(0, &v26, 4u, 4u, "SE Get RF param:Invoking callback function, wStatus = ");
          sub_297E4D930(1, (v25 + 1224), 4u, 7, "phLibNfc_SM_Main_InitTransComplete");
          v14(v25[1223], v15, a3, a4);
        }

        break;
      case 37:
        v8 = v25[811];
        v9 = v25[812];
        *(v25 + 811) = 0u;
        if (v8)
        {
          sub_297E50EBC(0, &v26, 4u, 4u, "HCE Set Config param:Invoking callback function, wStatus = ");
          v10 = v25 + 1224;
          v11 = 35;
          goto LABEL_10;
        }

        break;
      case 40:
        v8 = v25[813];
        v9 = v25[814];
        *(v25 + 813) = 0u;
        if (v8)
        {
          sub_297E50EBC(0, &v26, 4u, 4u, "Config Routing:Invoking callback function, wStatus = ");
          v10 = v25 + 1224;
          v11 = 38;
          goto LABEL_10;
        }

        break;
      case 43:
        v8 = v25[769];
        v9 = v25[770];
        *(v25 + 769) = 0u;
        if (v8)
        {
          sub_297E50EBC(0, &v26, 4u, 4u, "Set RF Settings:Invoking callback function, wStatus = ");
          v10 = v25 + 1224;
          v11 = 40;
          goto LABEL_10;
        }

        break;
      case 44:
        v8 = v25[767];
        v9 = v25[768];
        *(v25 + 767) = 0u;
        if (v8)
        {
          sub_297E50EBC(0, &v26, 4u, 4u, "Set RF Settings:Invoking callback function, wStatus = ");
          v10 = v25 + 1224;
          v11 = 41;
          goto LABEL_10;
        }

        break;
      case 45:
        v16 = v25[849];
        v17 = v25[850];
        *(v25 + 849) = 0u;
        if (v16)
        {
          sub_297E50EBC(0, &v26, 4u, 4u, "phLibNfc_SM_eAntennaSelfTest:Invoking callback, wStatus = ");
          sub_297E4D930(1, (v25 + 1224), 4u, 42, "phLibNfc_SM_Main_InitTransComplete");
          v16(v25[1223], v17, v25 + 6044, a3);
        }

        break;
      case 47:
        v8 = v25[823];
        v9 = v25[824];
        *(v25 + 823) = 0u;
        if (v8)
        {
          sub_297E50EBC(0, &v26, 4u, 4u, "TriggerNfccAssertion:Invoking callback function, wStatus = ");
          v10 = v25 + 1224;
          v11 = 44;
          goto LABEL_10;
        }

        break;
      case 48:
        v18 = v25[761];
        v19 = v25[762];
        *(v25 + 761) = 0u;
        if (v18)
        {
          sub_297E50EBC(0, &v26, 4u, 4u, "GetClrAssertRegs:Invoking callback function, wStatus = ");
          sub_297E4D930(1, (v25 + 1224), 4u, 45, "phLibNfc_SM_Main_InitTransComplete");
          v18(v25[1223], v19, *a4, a3);
          v7 = v25;
        }

        else if (!a4)
        {
          break;
        }

        if (a4[2])
        {
          v22 = *(v7 + 2448);
          phOsalNfc_FreeMemory();
          a4[2] = 0;
          v7 = v25;
        }

        v23 = *(v7 + 2448);
        phOsalNfc_SetMemory();
        break;
      case 49:
        v8 = v25[825];
        v9 = v25[826];
        *(v25 + 825) = 0u;
        if (v8)
        {
          sub_297E50EBC(0, &v26, 4u, 4u, "ConfigureLogging:Invoking callback function, wStatus = ");
          v10 = v25 + 1224;
          v11 = 46;
          goto LABEL_10;
        }

        break;
      case 50:
        v8 = v25[827];
        v9 = v25[828];
        *(v25 + 827) = 0u;
        if (v8)
        {
          sub_297E50EBC(0, &v26, 4u, 4u, "ConfigureAssertionLogging:Invoking callback function, wStatus = ");
          v10 = v25 + 1224;
          v11 = 47;
          goto LABEL_10;
        }

        break;
      case 51:
        v8 = v25[831];
        v9 = v25[832];
        *(v25 + 831) = 0u;
        if (v8)
        {
          sub_297E50EBC(0, &v26, 4u, 4u, "phLibNfc_TriggerRfFieldOnNtf:Invoking callback, wStatus = ");
          v10 = v25 + 1224;
          v11 = 48;
          goto LABEL_10;
        }

        break;
      case 52:
        v8 = v25[833];
        v9 = v25[834];
        *(v25 + 833) = 0u;
        if (v8)
        {
          sub_297E50EBC(0, &v26, 4u, 4u, "ValidateEepromSettings:Invoking callback function, wStatus = ");
          v10 = v25 + 1224;
          v11 = 49;
          goto LABEL_10;
        }

        break;
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
        sub_297EFD244(v25, a4, a3);
        break;
      case 61:
        v8 = v25[851];
        v9 = v25[852];
        *(v25 + 851) = 0u;
        if (v8)
        {
          sub_297E50EBC(0, &v26, 4u, 4u, "phLibNfc_SM_Main_InitTransComplete:Invoking callback, wStatus = ");
          v10 = v25 + 1224;
          v11 = 136;
          goto LABEL_10;
        }

        break;
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 73:
      case 74:
      case 76:
        v8 = v25[847];
        v9 = v25[848];
        *(v25 + 847) = 0u;
        if (v8)
        {
          sub_297E50EBC(0, &v26, 4u, 4u, "phLibNfc_Mgt_SetNfccParams:Invoking callback, wStatus = ");
          v10 = v25 + 1224;
          v11 = 132;
LABEL_10:
          sub_297E4D930(1, v10, 4u, v11, "phLibNfc_SM_Main_InitTransComplete");
          v12 = v25[1223];
          goto LABEL_11;
        }

        break;
      case 72:
        v20 = v25[855];
        v21 = v25[856];
        *(v25 + 855) = 0u;
        if (v20)
        {
          sub_297E50EBC(0, &v26, 4u, 4u, "phLibNfc_SM_Main_InitTransComplete:Invoking callback, wStatus = ");
          sub_297E4D930(1, (v25 + 1224), 4u, 67, "phLibNfc_SM_Main_InitTransComplete");
          v20(v25[1223], v21, a4, a3);
        }

        break;
      case 90:
      case 91:
      case 92:
      case 93:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 106:
      case 107:
        sub_297E5FC6C(v24, *(v24 + 80), a3);
        break;
      case 109:
      case 110:
      case 111:
        sub_297E5D1EC(v25, a3);
        break;
      case 112:
        v26 = v25[1223];
        v8 = v25[773];
        v9 = v25[774];
        sub_297EAAA30(v25);
        v25 = 0;
        if (v8)
        {
          sub_297E50EBC(0, &v26, 4u, 4u, "ShutdownCb:Invoking callback function, wStatus = ");
          sub_297E4D930(0, &v26, 4u, 116, "phLibNfc_SM_Main_InitTransComplete");
          v12 = v26;
LABEL_11:
          v8(v12, v9, a3);
        }

        break;
      default:
        sub_297E4E0B0(0, &v26, 4u, 1u, "Complete function invoked Without Transition Event");
        break;
    }
  }

  sub_297E4DFAC(0, &v26, 4u, 5u, "phLibNfc_SM_Main_InitTransComplete");
  return a3;
}

uint64_t sub_297E5FC6C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v37 = 8;
  sub_297E4E1B4(3, a1, 4u, 5u, "phLibNfc_Ioctl_Mgmt_CB");
  if (!a1)
  {
    return sub_297E4DFAC(3, a1, 4u, 5u, "phLibNfc_Ioctl_Mgmt_CB");
  }

  v6 = 0;
  v7 = *(a1 + 8);
  v8 = 1;
  while (1)
  {
    v9 = v8;
    v10 = &unk_2A18BDDC0 + 112 * v6;
    if (*v10 == v7)
    {
      break;
    }

    v8 = 0;
    v6 = 1;
    if ((v9 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v11 = *(v10 + 2);
LABEL_7:
  sub_297E5F164(v7, &v37);
  v12 = *(a1 + 96);
  v13 = 255;
  if (v12 <= 240)
  {
    if (v12 <= 222)
    {
      if (v12 <= 219)
      {
        if (v12 == 193)
        {
          v14 = "phLibNfc_Ioctl_Mgmt_CB - Get SPMI GPIO test";
        }

        else
        {
          if (v12 != 218)
          {
            goto LABEL_84;
          }

          v14 = "phLibNfc_Ioctl_Mgmt_CB - Ioctl DTA mode Complete";
        }

        goto LABEL_82;
      }

      if (v12 == 220)
      {
        v14 = "phLibNfc_Ioctl_Mgmt_CB - Ioctl Set wait time after Rf Off complete";
        goto LABEL_82;
      }

      if (v12 == 221)
      {
        v14 = "phLibNfc_Ioctl_Mgmt_CB - Ioctl VAS Express Set wait time after Rf Off complete";
        goto LABEL_82;
      }
    }

    else
    {
      if (v12 > 225)
      {
        switch(v12)
        {
          case 226:
            v14 = "phLibNfc_Ioctl_Mgmt_CB - Nfcc CRC Config complete";
            break;
          case 228:
            v14 = "phLibNfc_Ioctl_Mgmt_CB - Nfcc & eSE power track Config complete";
            break;
          case 229:
            v14 = "phLibNfc_Ioctl_Mgmt_CB - Ioctl Generic-A Express Set wait time after Rf Off complete";
            break;
          default:
            goto LABEL_84;
        }

        goto LABEL_82;
      }

      if (v12 != 223)
      {
        if (v12 == 224)
        {
          v14 = "phLibNfc_Ioctl_Mgmt_CB - RF Signed Config data complete";
        }

        else
        {
          v14 = "phLibNfc_Ioctl_Mgmt_CB - Loop back test";
        }

        goto LABEL_82;
      }
    }

    v14 = "phLibNfc_Ioctl_Mgmt_CB - Ioctl RF calibration signed data complete";
LABEL_82:
    sub_297E4E0B0(0, a1 + 8, 4u, 4u, v14);
LABEL_83:
    v13 = a3;
    goto LABEL_84;
  }

  if (v12 > 36899)
  {
    if (v12 > 37024)
    {
      switch(v12)
      {
        case 37025:
          v14 = "phLibNfc_Ioctl_Mgmt_CB - Ioctl Prop Config complete";
          break;
        case 37026:
          sub_297E4E0B0(0, a1 + 8, 4u, 4u, "phLibNfc_Ioctl_Mgmt_CB - Ioctl Get Prop Config complete");
          if (a2)
          {
            v13 = a3;
            if (!a3)
            {
              if (*a2 && *(a2 + 8))
              {
                sub_297E4E880(0, a1 + 8, 4u, 4u, "phLibNfc_Ioctl_Mgmt_CB -Get RF config", *a2);
              }

              v13 = 0;
            }

            goto LABEL_84;
          }

          goto LABEL_83;
        case 37027:
          v14 = "phLibNfc_Ioctl_Mgmt_CB - Ioctl Prop Get Transition register complete";
          break;
        default:
          goto LABEL_84;
      }
    }

    else
    {
      switch(v12)
      {
        case 36900:
          v14 = "phLibNfc_Ioctl_Mgmt_CB - Swp2 test complete";
          break;
        case 36901:
          v14 = "phLibNfc_Ioctl_Mgmt_CB - Prbs test complete";
          break;
        case 36902:
          v14 = "phLibNfc_Ioctl_Mgmt_CB - Ioctl Set Rf Config complete";
          break;
        default:
          goto LABEL_84;
      }
    }

    goto LABEL_82;
  }

  if (v12 > 2557)
  {
    if (v12 == 2558)
    {
      if (a2)
      {
        v20 = *(a1 + 80);
        if (v20)
        {
          if (*a2 && *(a2 + 8) >= 0x16u)
          {
            *(v20 + 2) = 16;
            v21 = *v20;
            phOsalNfc_MemCopy();
          }
        }
      }

      v14 = "phLibNfc_Ioctl_Mgmt_CB - Download Get DieId complete";
      goto LABEL_82;
    }

    if (v12 != 2559)
    {
      if (v12 != 36897)
      {
        goto LABEL_84;
      }

      v14 = "phLibNfc_Ioctl_Mgmt_CB - Swp1 test complete";
      goto LABEL_82;
    }

    goto LABEL_43;
  }

  switch(v12)
  {
    case 241:
      v18 = *(a1 + 80);
      if (v18 && *v18)
      {
        if (a3)
        {
          v19 = 0;
        }

        else
        {
          v19 = 48;
          phOsalNfc_SetMemory();
          v32 = *(a1 + 89);
          v22 = *(a1 + 64);
          phOsalNfc_MemCopy();
          v34 = *(a1 + 169);
          v33 = *(a1 + 95);
          v35 = *(a1 + 172);
          v36 = *(a1 + 176);
          v23 = **(a1 + 80);
          phOsalNfc_MemCopy();
          v18 = *(a1 + 80);
        }

        *(v18 + 8) = v19;
      }

      v14 = "phLibNfc_Ioctl_Mgmt_CB - Get Dnld Integrity Info complete";
      goto LABEL_82;
    case 242:
      v14 = "phLibNfc_Ioctl_Mgmt_CB - Ioctl Config Swio Sens periodic timer complete";
      goto LABEL_82;
    case 2556:
LABEL_43:
      v15 = *(a1 + 80);
      if (v15 && *v15 && *(v15 + 8))
      {
        **v15 = *(a1 + 90);
        v16 = sub_297E7F0C8(*(a1 + 8), *(a1 + 116), *(a1 + 118));
        v17 = *(a1 + 80);
        if (v17[2] < 2u || v16 < 2)
        {
          v17[2] = 1;
        }

        else
        {
          v17[2] = 2;
          if ((v37 & 0xFFFFFFFD) == 4)
          {
            *(*v17 + 1) = 0;
          }

          else
          {
            *(*v17 + 1) = *(a1 + 120);
          }
        }
      }

      v14 = "phLibNfc_Ioctl_Mgmt_CB - Fw Download test";
      goto LABEL_82;
  }

LABEL_84:
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = *a1;
    if (v13 == 9)
    {
      v26 = 255;
    }

    else
    {
      v26 = v13;
    }

    *(a1 + 16) = 0;
    *a1 = 0;
    sub_297E4D930(0, a1 + 8, 4u, 133, "phLibNfc_Ioctl_Mgmt_CB");
    v27 = *(a1 + 96);
    if (((v27 - 2556) > 3 || v27 == 2557) && v27 != 241)
    {
      v29 = *(a1 + 8);
      v30 = v25;
      v28 = a2;
    }

    else
    {
      v28 = *(a1 + 80);
      v29 = *(a1 + 8);
      v30 = v25;
    }

    v24(v29, v30, v28, v26);
    *(a1 + 80) = 0;
  }

  return sub_297E4DFAC(3, a1, 4u, 5u, "phLibNfc_Ioctl_Mgmt_CB");
}

uint64_t sub_297E601B4(uint64_t a1, int a2, uint64_t a3, int *a4, uint64_t a5)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_SM_ConfigDiscoveryTrans");
  sub_297E4F0E8(v12, &v11);
  v9 = sub_297E54988(v11, a2, a3, a4, a5);
  if (!v9)
  {
    v9 = sub_297E60270(v11, a4, a5);
  }

  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_SM_ConfigDiscoveryTrans");
  return v9;
}

uint64_t sub_297E60270(uint64_t a1, int *a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Init2Discovery");
  v6 = 1;
  if (a1 && a2 && a3)
  {
    v7 = *a2;
    *(a1 + 1476) = *a2;
    v6 = sub_297E60304(a1, v7, a3);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Init2Discovery");
  return v6;
}

uint64_t sub_297E60304(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ProcessDiscReq");
  if (a1)
  {
    if (a2 != 1)
    {
      if (a2)
      {
        v13 = "Invalid Request Mode ";
      }

      else
      {
        if (a3)
        {
          v6 = off_2A1A92E80;
          if (*(a3 + 88) == 2)
          {
            v6 = off_2A1A92F20;
          }

          *(a1 + 2960) = v6;
          *(a1 + 2952) = 0;
          *(a1 + 2954) = 0;
          v7 = *v6;
          if (*v6)
          {
            LOBYTE(v7) = 0;
            v8 = (v6 + 2);
            do
            {
              LOBYTE(v7) = v7 + 1;
              v9 = *v8;
              v8 += 2;
            }

            while (v9);
          }

LABEL_15:
          *(a1 + 2953) = v7;
          v10 = sub_297E5588C(a1, 0, a3);
          goto LABEL_19;
        }

        v13 = "pADDSetup is NULL ";
      }

      v10 = 1;
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, v13);
      goto LABEL_19;
    }

    *(a1 + 2960) = &qword_2A1A92FD0;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    LOBYTE(v7) = qword_2A1A92FD0;
    if (qword_2A1A92FD0)
    {
      LOBYTE(v7) = 0;
      v11 = off_2A1A92FE0;
      do
      {
        LOBYTE(v7) = v7 + 1;
        v12 = *v11;
        v11 += 2;
      }

      while (v12);
    }

    goto LABEL_15;
  }

  v10 = 49;
LABEL_19:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ProcessDiscReq");
  return v10;
}

uint64_t sub_297E6045C(uint64_t a1, uint64_t (**a2)())
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetNciSeqId");
  if (a2)
  {
    if (a2 == off_2A1A92818)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
      if (a2 != off_2A1A90AA8 && a2 != off_2A1A90AD8)
      {
        if (a2 == off_2A1A90AF8)
        {
          v4 = 3;
        }

        else if (a2 == off_2A1A90B18)
        {
          v4 = 4;
        }

        else if (a2 == off_2A1A907B8)
        {
          v4 = 6;
        }

        else if (a2 == off_2A1A92838)
        {
          v4 = 7;
        }

        else if (a2 == off_2A1A90B38)
        {
          v4 = 9;
        }

        else if (a2 == off_2A1A90B58)
        {
          v4 = 10;
        }

        else if (a2 == off_2A1A90B78)
        {
          v4 = 12;
        }

        else if (a2 == off_2A1A90B98)
        {
          v4 = 11;
        }

        else if (a2 == off_2A1A907D8)
        {
          v4 = 13;
        }

        else if (a2 == off_2A1A907F8)
        {
          v4 = 14;
        }

        else if (a2 == off_2A1A93BE0)
        {
          v4 = 15;
        }

        else if (a2 == off_2A1A93C00)
        {
          v4 = 16;
        }

        else if (a2 == off_2A1A93C20)
        {
          v4 = 17;
        }

        else if (a2 == off_2A1A93C40)
        {
          v4 = 18;
        }

        else if (a2 == off_2A1A93C60)
        {
          v4 = 19;
        }

        else if (a2 == off_2A1A93C80)
        {
          v4 = 21;
        }

        else if (*(a1 + 4800) == a2)
        {
          v4 = 22;
        }

        else if (a2 == off_2A1A93B20)
        {
          v4 = 23;
        }

        else if (a2 == off_2A1A93B40)
        {
          v4 = 51;
        }

        else if (a2 == off_2A1A93B60)
        {
          v4 = 52;
        }

        else if (a2 == off_2A1A93BA0)
        {
          v4 = 24;
        }

        else if (a2 == off_2A1A93BC0)
        {
          v4 = 25;
        }

        else if (a2 == off_2A1A93B80)
        {
          v4 = 26;
        }

        else if (a2 == off_2A1A90BB8)
        {
          v4 = 27;
        }

        else if (a2 == off_2A1A90BD8)
        {
          v4 = 29;
        }

        else if (a2 == off_2A1A92D20)
        {
          v4 = 30;
        }

        else if (a2 == off_2A1A92D40)
        {
          v4 = 31;
        }

        else if (a2 == off_2A1A92858)
        {
          v4 = 32;
        }

        else if (a2 == off_2A1A93CA0)
        {
          v4 = 33;
        }

        else if (a2 == off_2A1A93CE0)
        {
          v4 = 34;
        }

        else if (a2 == off_2A1A905F8)
        {
          v4 = 35;
        }

        else if (a2 == off_2A1A90618)
        {
          v4 = 36;
        }

        else if (a2 == off_2A1A90638)
        {
          v4 = 37;
        }

        else if (a2 == off_2A1A905B8)
        {
          v4 = 38;
        }

        else if (a2 == off_2A1A905D8)
        {
          v4 = 39;
        }

        else if (a2 == off_2A1A90658)
        {
          v4 = 40;
        }

        else if (a2 == off_2A1A90678)
        {
          v4 = 41;
        }

        else if (a2 == off_2A1A90698)
        {
          v4 = 42;
        }

        else if (a2 == off_2A1A906B8)
        {
          v4 = 43;
        }

        else if (a2 == off_2A1A906D8)
        {
          v4 = 44;
        }

        else if (a2 == off_2A1A90718)
        {
          v4 = 45;
        }

        else if (a2 == off_2A1A90758)
        {
          v4 = 46;
        }

        else if (a2 == off_2A1A906F8)
        {
          v4 = 49;
        }

        else if (a2 == off_2A1A90778)
        {
          v4 = 47;
        }

        else if (a2 == off_2A1A90798)
        {
          v4 = 48;
        }

        else if (a2 == off_2A1A90738)
        {
          v4 = 50;
        }

        else if (a2 == off_2A1A93CC0)
        {
          v4 = 53;
        }

        else if (a2 == off_2A1A90818)
        {
          v4 = 54;
        }

        else if (a2 == off_2A1A90848)
        {
          v4 = 55;
        }

        else if (a2 == off_2A1A90878)
        {
          v4 = 56;
        }

        else if (a2 == off_2A1A90898)
        {
          v4 = 57;
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetNciSeqId");
  return v4;
}

uint64_t sub_297E609CC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetLpcdConfig");
  if (a1)
  {
    v4 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    *(a1 + 3612) |= 0x10000u;
    if (*(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1)
    {
      *(a1 + 5144) |= 0x300u;
    }

    else if ((*(a1 + 5145) & 3) == 0)
    {
      goto LABEL_8;
    }

    a2 = sub_297E60AC0(*(a1 + 3088), a1 + 3608, sub_297E5BA84, a1);
  }

  else
  {
    a2 = 255;
  }

LABEL_8:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetLpcdConfig");
  return a2;
}

uint64_t sub_297E60AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x29EDCA608];
  v19 = 0;
  v18 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetConfigRfParameters");
  if (a1)
  {
    if (a2 && a3)
    {
      v8 = sub_297E60D1C(a1, a2, v20, &v19, &v18);
      if (!v8 && v19)
      {
        v9 = v18 + 1;
        v10 = *(a1 + 6524);
        Memory_Typed = phOsalNfc_GetMemory_Typed();
        if (Memory_Typed)
        {
          v12 = Memory_Typed;
          *Memory_Typed = v19;
          v13 = *(a1 + 6524);
          phOsalNfc_MemCopy();
          *(a1 + 3776) = off_2A1A93C80;
          *(a1 + 3976) = 0;
          *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93C80);
          *(a1 + 896) = v12;
          *(a1 + 904) = v9;
          *(a1 + 4688) = a2;
          v14 = *(a1 + 6524);
          phOsalNfc_SetMemory();
          *(a1 + 880) = v19;
          *(a1 + 881) = v18;
          *(a1 + 888) = v12;
          v8 = sub_297E6147C(a1, 0, 0);
          if (v8 == 13)
          {
            *(a1 + 3424) = a3;
            *(a1 + 3752) = a4;
          }

          else
          {
            sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Lower layer returned failure(phNciNfc_GetConfigRfParameters)\n");
            v17 = *(a1 + 6524);
            phOsalNfc_FreeMemory();
            *(a1 + 4688) = 0;
            *(a1 + 888) = 0;
            *(a1 + 896) = 0;
            *(a1 + 904) = 0;
          }
        }

        else
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Memory allocation failed (phNciNfc_GetConfigRfParameters)\n");
          v8 = 12;
        }
      }
    }

    else
    {
      v8 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid parameters (phNciNfc_GetConfigRfParameters)\n");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized (phNciNfc_GetConfigRfParameters)\n");
    v8 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetConfigRfParameters");
  v15 = *MEMORY[0x29EDCA608];
  return v8;
}

BOOL sub_297E60D1C(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetRfParams");
  v10 = 1;
  if (a3 && a4 && a5)
  {
    v11 = *(a2 + 4);
    if (v11 & 4) != 0 && (*(a2 + 24))
    {
      *a3 = 24;
      v12 = 1;
      if ((*(a2 + 4) & 0x10) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = 0;
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_13;
      }
    }

    v13 = *(a2 + 88);
    if (v13)
    {
      a3[v12++] = 40;
      v13 = *(a2 + 88);
      if ((v13 & 2) == 0)
      {
LABEL_11:
        if ((v13 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 88) & 2) == 0)
    {
      goto LABEL_11;
    }

    a3[v12++] = 41;
    if ((*(a2 + 88) & 4) == 0)
    {
LABEL_13:
      if ((*(a2 + 4) & 0x20) == 0)
      {
        goto LABEL_19;
      }

      v14 = *(a2 + 148);
      if (v14)
      {
        a3[v12++] = 48;
        v14 = *(a2 + 148);
        if ((v14 & 2) == 0)
        {
LABEL_16:
          if ((v14 & 4) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_59;
        }
      }

      else if ((*(a2 + 148) & 2) == 0)
      {
        goto LABEL_16;
      }

      a3[v12++] = 49;
      v14 = *(a2 + 148);
      if ((v14 & 4) == 0)
      {
LABEL_17:
        if ((v14 & 8) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

LABEL_59:
      a3[v12++] = 50;
      if ((*(a2 + 148) & 8) == 0)
      {
LABEL_19:
        if ((*(a2 + 4) & 0x40) == 0)
        {
          goto LABEL_25;
        }

        v15 = *(a2 + 172);
        if (v15)
        {
          a3[v12++] = 56;
          v15 = *(a2 + 172);
          if ((v15 & 2) == 0)
          {
LABEL_22:
            if ((v15 & 4) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_63;
          }
        }

        else if ((*(a2 + 172) & 2) == 0)
        {
          goto LABEL_22;
        }

        a3[v12++] = 57;
        v15 = *(a2 + 172);
        if ((v15 & 4) == 0)
        {
LABEL_23:
          if ((v15 & 0x10) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

LABEL_63:
        a3[v12++] = 58;
        if ((*(a2 + 172) & 0x10) == 0)
        {
LABEL_25:
          if ((*(a2 + 4) & 0x80) == 0)
          {
            goto LABEL_33;
          }

          v16 = *(a2 + 196);
          if ((v16 & 4) != 0)
          {
            *&a3[v12] = 1128415552;
            v12 += 4;
            v16 = *(a2 + 196);
            if ((v16 & 2) == 0)
            {
LABEL_28:
              if ((v16 & 8) == 0)
              {
                goto LABEL_29;
              }

              goto LABEL_67;
            }
          }

          else if ((*(a2 + 196) & 2) == 0)
          {
            goto LABEL_28;
          }

          a3[v12++] = 80;
          v16 = *(a2 + 196);
          if ((v16 & 8) == 0)
          {
LABEL_29:
            if ((v16 & 0x20) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_68;
          }

LABEL_67:
          a3[v12++] = 81;
          v16 = *(a2 + 196);
          if ((v16 & 0x20) == 0)
          {
LABEL_30:
            if ((v16 & 0x10) == 0)
            {
              goto LABEL_31;
            }

            goto LABEL_69;
          }

LABEL_68:
          a3[v12++] = 82;
          v16 = *(a2 + 196);
          if ((v16 & 0x10) == 0)
          {
LABEL_31:
            if ((v16 & 1) == 0)
            {
              goto LABEL_33;
            }

            goto LABEL_32;
          }

LABEL_69:
          a3[v12++] = 83;
          if ((*(a2 + 196) & 1) == 0)
          {
LABEL_33:
            if ((*(a2 + 5) & 1) == 0)
            {
              goto LABEL_39;
            }

            v17 = *(a2 + 380);
            if (v17)
            {
              a3[v12++] = 88;
              v17 = *(a2 + 380);
              if ((v17 & 2) == 0)
              {
LABEL_36:
                if ((v17 & 4) == 0)
                {
                  goto LABEL_37;
                }

                goto LABEL_73;
              }
            }

            else if ((*(a2 + 380) & 2) == 0)
            {
              goto LABEL_36;
            }

            a3[v12++] = 89;
            v17 = *(a2 + 380);
            if ((v17 & 4) == 0)
            {
LABEL_37:
              if ((v17 & 8) == 0)
              {
                goto LABEL_39;
              }

              goto LABEL_38;
            }

LABEL_73:
            a3[v12++] = 90;
            if ((*(a2 + 380) & 8) == 0)
            {
LABEL_39:
              if ((*(a2 + 5) & 2) == 0)
              {
                goto LABEL_44;
              }

              v18 = *(a2 + 484);
              if (v18)
              {
                a3[v12++] = 96;
                v18 = *(a2 + 484);
                if ((v18 & 2) == 0)
                {
LABEL_42:
                  if ((v18 & 4) == 0)
                  {
                    goto LABEL_44;
                  }

                  goto LABEL_43;
                }
              }

              else if ((*(a2 + 484) & 2) == 0)
              {
                goto LABEL_42;
              }

              a3[v12++] = 97;
              if ((*(a2 + 484) & 4) == 0)
              {
LABEL_44:
                if ((*(a2 + 5) & 4) == 0)
                {
                  goto LABEL_49;
                }

                v19 = *(a2 + 544);
                if (v19)
                {
                  a3[v12++] = 0;
                  v19 = *(a2 + 544);
                  if ((v19 & 4) == 0)
                  {
LABEL_47:
                    if ((v19 & 8) == 0)
                    {
                      goto LABEL_49;
                    }

                    goto LABEL_48;
                  }
                }

                else if ((*(a2 + 544) & 4) == 0)
                {
                  goto LABEL_47;
                }

                a3[v12++] = 0x80;
                if ((*(a2 + 544) & 8) == 0)
                {
LABEL_49:
                  if ((*(a2 + 5) & 0x10) == 0)
                  {
                    v20 = v12;
                    goto LABEL_97;
                  }

                  v21 = *(a2 + 580);
                  if ((v21 & 4) != 0)
                  {
                    *&a3[v12] = 928;
                    v20 = v12 + 2;
                    ++v12;
                    v21 = *(a2 + 580);
                    if ((v21 & 0x80) == 0)
                    {
                      goto LABEL_83;
                    }
                  }

                  else
                  {
                    v20 = v12;
                    if ((v21 & 0x80) == 0)
                    {
LABEL_83:
                      if ((v21 & 0x1000000) != 0)
                      {
                        *&a3[v20] = 8864;
                        v20 += 2;
                        ++v12;
                        v21 = *(a2 + 580);
                        if ((v21 & 0x800000) == 0)
                        {
LABEL_85:
                          if ((v21 & 0x2000000) == 0)
                          {
                            goto LABEL_86;
                          }

                          goto LABEL_128;
                        }
                      }

                      else if ((v21 & 0x800000) == 0)
                      {
                        goto LABEL_85;
                      }

                      *&a3[v20] = 9120;
                      v20 += 2;
                      ++v12;
                      v21 = *(a2 + 580);
                      if ((v21 & 0x2000000) == 0)
                      {
LABEL_86:
                        if ((v21 & 0x1000) == 0)
                        {
                          goto LABEL_87;
                        }

                        goto LABEL_129;
                      }

LABEL_128:
                      *&a3[v20] = 9376;
                      v20 += 2;
                      ++v12;
                      v21 = *(a2 + 580);
                      if ((v21 & 0x1000) == 0)
                      {
LABEL_87:
                        if ((v21 & 0x2000) == 0)
                        {
                          goto LABEL_88;
                        }

                        goto LABEL_130;
                      }

LABEL_129:
                      *&a3[v20] = 6048;
                      v20 += 2;
                      ++v12;
                      v21 = *(a2 + 580);
                      if ((v21 & 0x2000) == 0)
                      {
LABEL_88:
                        if ((v21 & 0x4000) == 0)
                        {
                          goto LABEL_89;
                        }

                        goto LABEL_131;
                      }

LABEL_130:
                      *&a3[v20] = 6304;
                      v20 += 2;
                      ++v12;
                      v21 = *(a2 + 580);
                      if ((v21 & 0x4000) == 0)
                      {
LABEL_89:
                        if ((v21 & 2) == 0)
                        {
                          goto LABEL_90;
                        }

                        goto LABEL_132;
                      }

LABEL_131:
                      *&a3[v20] = 6560;
                      v20 += 2;
                      ++v12;
                      v21 = *(a2 + 580);
                      if ((v21 & 2) == 0)
                      {
LABEL_90:
                        if ((v21 & 8) == 0)
                        {
                          goto LABEL_91;
                        }

                        goto LABEL_133;
                      }

LABEL_132:
                      *&a3[v20] = 672;
                      v20 += 2;
                      ++v12;
                      v21 = *(a2 + 580);
                      if ((v21 & 8) == 0)
                      {
LABEL_91:
                        if ((v21 & 0x40) == 0)
                        {
                          goto LABEL_92;
                        }

                        goto LABEL_134;
                      }

LABEL_133:
                      *&a3[v20] = 1184;
                      v20 += 2;
                      ++v12;
                      v21 = *(a2 + 580);
                      if ((v21 & 0x40) == 0)
                      {
LABEL_92:
                        if ((v21 & 0x8000) == 0)
                        {
                          goto LABEL_93;
                        }

                        goto LABEL_135;
                      }

LABEL_134:
                      *&a3[v20] = 1952;
                      v20 += 2;
                      ++v12;
                      v21 = *(a2 + 580);
                      if ((v21 & 0x8000) == 0)
                      {
LABEL_93:
                        if ((v21 & 0x10000) == 0)
                        {
                          goto LABEL_94;
                        }

                        goto LABEL_136;
                      }

LABEL_135:
                      *&a3[v20] = -10848;
                      v20 += 2;
                      ++v12;
                      v21 = *(a2 + 580);
                      if ((v21 & 0x10000) == 0)
                      {
LABEL_94:
                        if ((v21 & 0x20) == 0)
                        {
                          goto LABEL_95;
                        }

                        goto LABEL_137;
                      }

LABEL_136:
                      *&a3[v20] = 14240;
                      v20 += 2;
                      ++v12;
                      v21 = *(a2 + 580);
                      if ((v21 & 0x20) == 0)
                      {
LABEL_95:
                        if ((v21 & 0x4000000) == 0)
                        {
                          goto LABEL_97;
                        }

                        goto LABEL_96;
                      }

LABEL_137:
                      *&a3[v20] = 1696;
                      v20 += 2;
                      ++v12;
                      if ((*(a2 + 580) & 0x4000000) == 0)
                      {
LABEL_97:
                        if ((*(a2 + 5) & 0x20) == 0)
                        {
                          goto LABEL_113;
                        }

                        v22 = *(a2 + 1132);
                        if (v22)
                        {
                          *&a3[v20] = -4960;
                          v20 += 2;
                          ++v12;
                          v22 = *(a2 + 1132);
                          if ((v22 & 2) == 0)
                          {
LABEL_100:
                            if ((v22 & 4) == 0)
                            {
                              goto LABEL_101;
                            }

                            goto LABEL_141;
                          }
                        }

                        else if ((*(a2 + 1132) & 2) == 0)
                        {
                          goto LABEL_100;
                        }

                        *&a3[v20] = -11104;
                        v20 += 2;
                        ++v12;
                        v22 = *(a2 + 1132);
                        if ((v22 & 4) == 0)
                        {
LABEL_101:
                          if ((v22 & 8) == 0)
                          {
                            goto LABEL_102;
                          }

                          goto LABEL_142;
                        }

LABEL_141:
                        *&a3[v20] = -4704;
                        v20 += 2;
                        ++v12;
                        v22 = *(a2 + 1132);
                        if ((v22 & 8) == 0)
                        {
LABEL_102:
                          if ((v22 & 0x20) == 0)
                          {
                            goto LABEL_104;
                          }

                          goto LABEL_103;
                        }

LABEL_142:
                        *&a3[v20] = -23904;
                        v20 += 2;
                        ++v12;
                        if ((*(a2 + 1132) & 0x20) == 0)
                        {
LABEL_104:
                          if (*(a2 + 1131))
                          {
                            *&a3[v20] = -2656;
                            v20 += 2;
                            ++v12;
                          }

                          v23 = *(a2 + 1144);
                          if ((v23 & 0x100) != 0)
                          {
                            *&a3[v20] = -5984;
                            v20 += 2;
                            ++v12;
                            v23 = *(a2 + 1144);
                            if ((v23 & 0x200) == 0)
                            {
LABEL_108:
                              if ((v23 & 0x400) == 0)
                              {
                                goto LABEL_109;
                              }

                              goto LABEL_146;
                            }
                          }

                          else if ((*(a2 + 1144) & 0x200) == 0)
                          {
                            goto LABEL_108;
                          }

                          *&a3[v20] = -4192;
                          v20 += 2;
                          ++v12;
                          v23 = *(a2 + 1144);
                          if ((v23 & 0x400) == 0)
                          {
LABEL_109:
                            if ((v23 & 0x80) == 0)
                            {
                              goto LABEL_110;
                            }

                            goto LABEL_147;
                          }

LABEL_146:
                          *&a3[v20] = -3936;
                          v20 += 2;
                          ++v12;
                          v23 = *(a2 + 1144);
                          if ((v23 & 0x80) == 0)
                          {
LABEL_110:
                            if ((v23 & 0x40) == 0)
                            {
                              goto LABEL_111;
                            }

                            goto LABEL_148;
                          }

LABEL_147:
                          *&a3[v20] = -5216;
                          v20 += 2;
                          ++v12;
                          v23 = *(a2 + 1144);
                          if ((v23 & 0x40) == 0)
                          {
LABEL_111:
                            if ((v23 & 0x20) != 0)
                            {
LABEL_112:
                              *&a3[v20] = 7840;
                              v20 += 2;
                              ++v12;
                            }

LABEL_113:
                            v24 = *(a2 + 4);
                            if ((v24 & 0x8000) != 0 && (*(a2 + 1408) & 0x10) != 0)
                            {
                              *&a3[v20] = 17568;
                              v20 += 2;
                              ++v12;
                              v24 = *(a2 + 4);
                            }

                            if ((v24 & 0x10000) == 0)
                            {
                              goto LABEL_124;
                            }

                            v25 = *(a2 + 1536);
                            if ((v25 & 0x100) != 0)
                            {
                              *&a3[v20] = 26784;
                              v20 += 2;
                              ++v12;
                              v25 = *(a2 + 1536);
                              if ((v25 & 0x200) == 0)
                              {
LABEL_119:
                                if ((v25 & 0x40000) == 0)
                                {
                                  goto LABEL_120;
                                }

                                goto LABEL_152;
                              }
                            }

                            else if ((v25 & 0x200) == 0)
                            {
                              goto LABEL_119;
                            }

                            *&a3[v20] = -15200;
                            v20 += 2;
                            ++v12;
                            v25 = *(a2 + 1536);
                            if ((v25 & 0x40000) == 0)
                            {
LABEL_120:
                              if ((v25 & 0x4000) == 0)
                              {
                                goto LABEL_121;
                              }

                              goto LABEL_153;
                            }

LABEL_152:
                            *&a3[v20] = -26464;
                            v20 += 2;
                            ++v12;
                            v25 = *(a2 + 1536);
                            if ((v25 & 0x4000) == 0)
                            {
LABEL_121:
                              if ((v25 & 0x1000) == 0)
                              {
                                goto LABEL_122;
                              }

                              goto LABEL_154;
                            }

LABEL_153:
                            *&a3[v20] = -16480;
                            v20 += 2;
                            ++v12;
                            v25 = *(a2 + 1536);
                            if ((v25 & 0x1000) == 0)
                            {
LABEL_122:
                              if ((v25 & 0x8000) == 0)
                              {
LABEL_124:
                                v10 = v12 == 0;
                                *a4 = v12;
                                *a5 = v20;
                                goto LABEL_125;
                              }

LABEL_123:
                              *&a3[v20] = -6240;
                              LOBYTE(v20) = v20 + 2;
                              ++v12;
                              goto LABEL_124;
                            }

LABEL_154:
                            *&a3[v20] = -29024;
                            v20 += 2;
                            ++v12;
                            if ((*(a2 + 1536) & 0x8000) == 0)
                            {
                              goto LABEL_124;
                            }

                            goto LABEL_123;
                          }

LABEL_148:
                          *&a3[v20] = -5472;
                          v20 += 2;
                          ++v12;
                          if ((*(a2 + 1144) & 0x20) == 0)
                          {
                            goto LABEL_113;
                          }

                          goto LABEL_112;
                        }

LABEL_103:
                        *&a3[v20] = -3424;
                        v20 += 2;
                        ++v12;
                        goto LABEL_104;
                      }

LABEL_96:
                      *&a3[v20] = -5728;
                      v20 += 2;
                      ++v12;
                      goto LABEL_97;
                    }
                  }

                  *&a3[v20] = 4000;
                  v20 += 2;
                  ++v12;
                  v21 = *(a2 + 580);
                  goto LABEL_83;
                }

LABEL_48:
                a3[v12++] = -127;
                goto LABEL_49;
              }

LABEL_43:
              a3[v12++] = 98;
              goto LABEL_44;
            }

LABEL_38:
            a3[v12++] = 91;
            goto LABEL_39;
          }

LABEL_32:
          a3[v12++] = 84;
          goto LABEL_33;
        }

LABEL_24:
        a3[v12++] = 60;
        goto LABEL_25;
      }

LABEL_18:
      a3[v12++] = 51;
      goto LABEL_19;
    }

LABEL_12:
    a3[v12++] = 42;
    goto LABEL_13;
  }

LABEL_125:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetRfParams");
  return v10;
}

uint64_t sub_297E6147C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetConfigSequence");
  if (a1 && a2 && !a3)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetConfigSequence");
  return v6;
}

uint64_t sub_297E61514(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetConfig");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 1;
    DWORD2(v5) = 3;
    *&v6 = *(a1 + 896);
    DWORD2(v6) = *(a1 + 904);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E6147C, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Invalid input parameter (phNciNfc_SetConfig)\n");
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetConfig");
  return v3;
}

uint64_t sub_297E6160C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetConfigRsp");
  if (a1)
  {
    if (!a2)
    {
      v4 = *(a1 + 3800);
      if (v4)
      {
        v5 = *v4;
        if (v5 != 10)
        {
          if (v5 == 9)
          {
            if (*(a1 + 880) >= v4[1])
            {
              v6 = sub_297E61784(a1, (*(a1 + 3808) - 2), (v4 + 2), 0);
LABEL_15:
              a2 = v6;
              goto LABEL_21;
            }

            sub_297E4E0B0(2, a1, 3u, 1u, "phNciNfc_GetConfigRsp: Request Number of Parameters not matching with received Parameters");
          }

          else if (!*v4 && *(a1 + 880) == v4[1])
          {
            v6 = sub_297E61784(a1, (*(a1 + 3808) - 2), (v4 + 2), 1);
            if (!*(a1 + 880))
            {
              v7 = *(a1 + 3800);
              v8 = *(a1 + 3808) - 1;
              goto LABEL_19;
            }

            goto LABEL_15;
          }

          goto LABEL_13;
        }

        if (*(a1 + 880) < v4[1])
        {
LABEL_13:
          a2 = 255;
          goto LABEL_21;
        }

        a2 = 1;
        if (!sub_297E61784(a1, (*(a1 + 3808) - 2), (v4 + 2), 1))
        {
          if (!*(a1 + 880))
          {
LABEL_20:
            a2 = 0;
            goto LABEL_21;
          }

          v7 = *(a1 + 3800);
          v8 = *(a1 + 3808);
LABEL_19:
          sub_297E629D4(a1, v7, v8);
          goto LABEL_20;
        }
      }
    }
  }

LABEL_21:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetConfigRsp");
  return a2;
}

uint64_t sub_297E61784(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v90 = *MEMORY[0x29EDCA608];
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessRfParams");
  v7 = 1;
  if (!a2)
  {
    v11 = 0;
    v61 = 0;
    v64 = 1;
    goto LABEL_214;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = (a3 + v11);
    if (a4 == 1)
    {
      v13 = *(a1 + 4688);
      sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_StoreRfParams");
      v14 = *v12;
      if (!*v12)
      {
        if (v12[1] == 2)
        {
          v20 = *(a1 + 6524);
          phOsalNfc_MemCopy();
          v19 = 0;
          *(v13 + 4) |= 0x400u;
          *(v13 + 544) |= 1u;
LABEL_197:
          sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_StoreRfParams");
          v17 = *v12;
          goto LABEL_198;
        }

LABEL_56:
        v19 = 1;
        goto LABEL_197;
      }

      if ((v14 - 40) <= 2)
      {
        sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_StorePollIsoNfcDepParams");
        v15 = *v12;
        switch(v15)
        {
          case '*':
            v30 = v12[2];
            if ((~v30 & 0x30) == 0)
            {
              *(v13 + 144) |= 1u;
              LOBYTE(v30) = v12[2];
            }

            if ((v30 & 4) != 0)
            {
              *(v13 + 144) = *(v13 + 144) & 0xF9 | 2;
            }

            v16 = 4;
            goto LABEL_37;
          case ')':
            v27 = v12[1];
            if (v27 <= 0x30)
            {
              v28 = *(a1 + 6524);
              *(v13 + 141) = v27;
              v29 = v12[1];
              phOsalNfc_MemCopy();
              v16 = 2;
              goto LABEL_37;
            }

            break;
          case '(':
            *(v13 + 92) = v12[2];
            v16 = 1;
LABEL_37:
            v19 = 0;
            *(v13 + 4) |= 0x10u;
            *(v13 + 88) |= v16;
            goto LABEL_38;
        }

        v19 = 1;
LABEL_38:
        v31 = a1;
        v32 = "phNciNfc_StorePollIsoNfcDepParams";
LABEL_196:
        sub_297E4DFAC(2, v31, 3u, 5u, v32);
        goto LABEL_197;
      }

      if ((v14 & 0xFC) == 0x30)
      {
        sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_StoreListenAParams");
        v21 = *v12;
        v19 = 1;
        if (v21 <= 0x31)
        {
          if (v21 != 48)
          {
            if (v21 != 49 || v12[1] != 1)
            {
              goto LABEL_195;
            }

            *(v13 + 153) = v12[2];
            v22 = 2;
            goto LABEL_194;
          }

          if (v12[1] == 1)
          {
            *(v13 + 152) = v12[2];
            v22 = 1;
LABEL_194:
            v19 = 0;
            *(v13 + 4) |= 0x20u;
            *(v13 + 148) |= v22;
          }

LABEL_195:
          v31 = a1;
          v32 = "phNciNfc_StoreListenAParams";
          goto LABEL_196;
        }

        if (v21 != 50)
        {
          if (v21 != 51)
          {
            goto LABEL_195;
          }

          v33 = v12[1];
          if (v33 > 0xA || ((1 << v33) & 0x490) == 0)
          {
            goto LABEL_195;
          }

          v34 = *(a1 + 6524);
          *(v13 + 170) = v33;
          v35 = v12[1];
          phOsalNfc_MemCopy();
          v22 = 8;
          goto LABEL_194;
        }

        if (v12[1] != 1)
        {
          goto LABEL_195;
        }

        HIDWORD(v42) = v12[2];
        LODWORD(v42) = HIDWORD(v42);
        v41 = v42 >> 5;
        v43 = *(v13 + 156);
        if (v41 > 1)
        {
          if (v41 == 2)
          {
            v44 = v43 | 2;
            goto LABEL_193;
          }

          if (v41 == 3)
          {
            v44 = v43 | 3;
            goto LABEL_193;
          }
        }

        else
        {
          if (!v41)
          {
            v44 = v43 & 0xFC;
            goto LABEL_193;
          }

          if (v41 == 1)
          {
            v44 = v43 | 1;
LABEL_193:
            *(v13 + 156) = v44;
            v22 = 4;
            goto LABEL_194;
          }
        }

        v44 = v43 | 4;
        goto LABEL_193;
      }

      if ((v14 - 88) <= 0xA)
      {
        sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_StoreListenIsoNfcDepParams");
        v23 = *(a1 + 6524);
        v24 = *v12;
        v19 = 1;
        if (v24 <= 0x5A)
        {
          switch(v24)
          {
            case 'X':
              if (v12[1] == 1)
              {
                v25 = (v13 + 380);
                *(v13 + 384) = v12[2];
                v26 = 1;
LABEL_90:
                v49 = 256;
                goto LABEL_91;
              }

              break;
            case 'Y':
              v50 = v12[1];
              if (v50 <= 0x30)
              {
                *(v13 + 433) = v50;
                v51 = v12[1];
                phOsalNfc_MemCopy();
                v25 = (v13 + 380);
                v26 = 2;
                goto LABEL_90;
              }

              break;
            case 'Z':
              v39 = v12[1];
              if (v39 > 0x30)
              {
                break;
              }

              *(v13 + 482) = v39;
              v40 = v12[1];
              phOsalNfc_MemCopy();
              v25 = (v13 + 380);
              v26 = 4;
              goto LABEL_90;
            default:
              break;
          }
        }

        else
        {
          if (*v12 > 0x60u)
          {
            if (v24 == 97)
            {
              v47 = v12[1];
              if (v47 > 0x30)
              {
                goto LABEL_92;
              }

              *(v13 + 537) = v47;
              v48 = v12[1];
              phOsalNfc_MemCopy();
              v25 = (v13 + 484);
              v26 = 2;
            }

            else
            {
              if (v24 != 98 || v12[1] != 1)
              {
                goto LABEL_92;
              }

              v25 = (v13 + 484);
              *(v13 + 540) = *(v13 + 540) & 0xFC | (v12[2] >> 4) & 3;
              v26 = 4;
            }

LABEL_87:
            v49 = 512;
LABEL_91:
            v19 = 0;
            *(v13 + 4) |= v49;
            *v25 |= v26;
            goto LABEL_92;
          }

          if (v24 != 91)
          {
            if (v24 != 96 || v12[1] != 1)
            {
              goto LABEL_92;
            }

            v25 = (v13 + 484);
            *(v13 + 488) = v12[2];
            v26 = 1;
            goto LABEL_87;
          }

          if (v12[1] == 1)
          {
            v25 = (v13 + 380);
            *(v13 + 483) = v12[2];
            v26 = 8;
            goto LABEL_90;
          }
        }

LABEL_92:
        v31 = a1;
        v32 = "phNciNfc_StoreListenIsoNfcDepParams";
        goto LABEL_196;
      }

      if (v14 <= -127)
      {
        sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_StoreConfParams");
        v36 = *v12;
        if (v36 == 129)
        {
          if (v12[1] == 1)
          {
            *(v13 + 552) = v12[2];
            v37 = 8;
            goto LABEL_75;
          }
        }

        else if (v36 == 128 && v12[1] == 1)
        {
          *(v13 + 551) = v12[2];
          v37 = 4;
LABEL_75:
          v19 = 0;
          *(v13 + 4) |= 0x400u;
          *(v13 + 544) |= v37;
LABEL_77:
          v31 = a1;
          v32 = "phNciNfc_StoreConfParams";
          goto LABEL_196;
        }

        v19 = 1;
        goto LABEL_77;
      }

      if (v14 != 161)
      {
        if (v14 == 160)
        {
          sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_StorePropParams");
          v86 = *(a1 + 6524);
          if (v12[2] && v12[1] == 3)
          {
            v38 = v12[3] & 0xF;
            if (v38 > 8)
            {
              v19 = 0;
              *(v13 + 588) = 0x800000000;
            }

            else
            {
              *(v13 + 580) |= 4u;
              *(v13 + 4) |= 0x1000u;
              v19 = 0;
              if (v38 == 8)
              {
                *(v13 + 588) = 1;
              }

              else
              {
                *(v13 + 588) = 2;
                *(v13 + 592) = v38;
              }
            }
          }

          else
          {
            v19 = 1;
          }

          v52 = v12[1];
          if (v52 == 15)
          {
            if (v12[2] != 64)
            {
              goto LABEL_180;
            }

            phOsalNfc_MemCopy();
            v19 = 0;
            *(v13 + 4) |= 0x1000u;
            *(v13 + 580) |= 0x80u;
            v52 = v12[1];
          }

          if (v52 == 23)
          {
            v53 = v12[2];
            if (v53 > 0x1F)
            {
              goto LABEL_180;
            }

            *(v13 + 682) = v53;
            v54 = v12[2];
            phOsalNfc_MemCopy();
            v19 = 0;
            *(v13 + 4) |= 0x1000u;
            v52 = v12[1];
          }

          if (v52 == 24)
          {
            v55 = v12[2];
            if (v55 > 0xD6)
            {
              goto LABEL_180;
            }

            *(v13 + 714) = v55;
            v56 = v12[2];
            phOsalNfc_MemCopy();
            v19 = 0;
            *(v13 + 4) |= 0x1000u;
            v52 = v12[1];
          }

          if (v52 == 25)
          {
            v19 = 0;
            *(v13 + 932) = v12[3];
            *(v13 + 580) |= 0x4000u;
            *(v13 + 4) |= 0x1000u;
            v52 = v12[1];
          }

          if (v52 == 213)
          {
            v19 = 0;
            *(v13 + 936) = v12[3];
            *(v13 + 580) |= 0x8000u;
            *(v13 + 4) |= 0x1000u;
            v52 = v12[1];
          }

          if (v52 == 2)
          {
            v19 = 0;
            *(v13 + 586) = v12[3];
            *(v13 + 580) |= 2u;
            *(v13 + 4) |= 0x1000u;
            v52 = v12[1];
          }

          if (v52 == 4)
          {
            v19 = 0;
            *(v13 + 587) = v12[3];
            *(v13 + 580) |= 8u;
            *(v13 + 4) |= 0x1000u;
            v52 = v12[1];
          }

          if (v52 == 7)
          {
            v57 = v12[3];
            if (v57)
            {
              *(v13 + 604) = 1;
              v57 = v12[3];
            }

            if ((v57 & 2) != 0)
            {
              *(v13 + 608) = 1;
            }

            v19 = 0;
            *(v13 + 580) |= 0x40u;
            *(v13 + 4) |= 0x1000u;
            v52 = v12[1];
          }

          if (v52 == 34)
          {
            if (v12[2] != 1)
            {
              goto LABEL_180;
            }

            v19 = 0;
            *(v13 + 1125) = v12[3];
            *(v13 + 4) |= 0x1000u;
            *(v13 + 580) |= 0x1000000u;
            v52 = v12[1];
          }

          if (v52 == 35)
          {
            if (v12[2] != 1)
            {
              goto LABEL_180;
            }

            v19 = 0;
            *(v13 + 1124) = v12[3];
            *(v13 + 4) |= 0x1000u;
            *(v13 + 580) |= 0x800000u;
            v52 = v12[1];
          }

          if (v52 == 36)
          {
            if (v12[2] != 1)
            {
              goto LABEL_180;
            }

            v19 = 0;
            *(v13 + 1126) = v12[3];
            *(v13 + 4) |= 0x1000u;
            *(v13 + 580) |= 0x2000000u;
            v52 = v12[1];
          }

          if (v52 == 233)
          {
            if (v12[2] != 1)
            {
              goto LABEL_180;
            }

            v19 = 0;
            *(v13 + 1127) = v12[3];
            *(v13 + 4) |= 0x1000u;
            *(v13 + 580) |= 0x4000000u;
            v52 = v12[1];
          }

          if (v52 == 236)
          {
            v19 = 0;
            *(v13 + 1170) = v12[3];
            *(v13 + 1132) |= 1u;
            *(v13 + 4) |= 0x2000u;
            v52 = v12[1];
          }

          if (v52 == 212)
          {
            v19 = 0;
            *(v13 + 1171) = v12[3];
            *(v13 + 1132) |= 2u;
            *(v13 + 4) |= 0x2000u;
            v52 = v12[1];
          }

          if (v52 == 237)
          {
            v19 = 0;
            *(v13 + 1172) = v12[3];
            *(v13 + 1132) |= 4u;
            *(v13 + 4) |= 0x2000u;
            v52 = v12[1];
          }

          if (v52 == 162)
          {
            v19 = 0;
            *(v13 + 1173) = v12[3];
            *(v13 + 1132) |= 8u;
            *(v13 + 4) |= 0x2000u;
            v52 = v12[1];
          }

          if (v52 == 242)
          {
            v19 = 0;
            *(v13 + 1175) = v12[3];
            *(v13 + 1132) |= 0x20u;
            *(v13 + 4) |= 0x2000u;
            v52 = v12[1];
          }

          if (v52 == 68)
          {
            v19 = 0;
            *(v13 + 1421) = v12[3];
            *(v13 + 1408) |= 0x10u;
            *(v13 + 4) |= 0x8000u;
            v52 = v12[1];
          }

          if (v52 == 55)
          {
            v19 = 0;
            *(v13 + 940) = v12[3];
            *(v13 + 580) |= 0x10000u;
            *(v13 + 4) |= 0x1000u;
            v52 = v12[1];
          }

          if (v52 == 245)
          {
            v19 = 0;
            *(v13 + 1176) = v12[3];
            *(v13 + 1128) |= 0x1000000u;
            *(v13 + 4) |= 0x2000u;
            v52 = v12[1];
          }

          if (v52 == 6)
          {
            v19 = 0;
            *(v13 + 601) = v12[3];
            *(v13 + 580) |= 0x20u;
            *(v13 + 4) |= 0x1000u;
            v52 = v12[1];
          }

          if (v52 == 232)
          {
            if (v12[2] != 69)
            {
              goto LABEL_180;
            }

            phOsalNfc_MemCopy();
            v19 = 0;
            *(v13 + 4) |= 0x2000u;
            *(v13 + 1144) |= 0x100u;
            v52 = v12[1];
          }

          if (v52 == 239)
          {
            if (v12[2] != 69)
            {
              goto LABEL_180;
            }

            phOsalNfc_MemCopy();
            v19 = 0;
            *(v13 + 4) |= 0x2000u;
            *(v13 + 1144) |= 0x200u;
            v52 = v12[1];
          }

          if (v52 == 240)
          {
            if (v12[2] != 69)
            {
              goto LABEL_180;
            }

            phOsalNfc_MemCopy();
            v19 = 0;
            *(v13 + 4) |= 0x2000u;
            *(v13 + 1144) |= 0x400u;
            v52 = v12[1];
          }

          if (v52 == 234)
          {
            if (v12[2] != 8)
            {
              goto LABEL_180;
            }

            phOsalNfc_MemCopy();
            v19 = 0;
            *(v13 + 4) |= 0x2000u;
            *(v13 + 1144) |= 0x40u;
            v52 = v12[1];
          }

          if (v52 == 235)
          {
            if (v12[2] != 8)
            {
              goto LABEL_180;
            }

            phOsalNfc_MemCopy();
            v19 = 0;
            *(v13 + 4) |= 0x2000u;
            *(v13 + 1144) |= 0x80u;
            v52 = v12[1];
          }

          if (v52 == 30)
          {
            if (v12[2] != 8)
            {
              goto LABEL_180;
            }

            phOsalNfc_MemCopy();
            v19 = 0;
            *(v13 + 4) |= 0x2000u;
            *(v13 + 1144) |= 0x20u;
            v52 = v12[1];
          }

          if (v52 == 104)
          {
            if (v12[2] - 1 > 0x31)
            {
              goto LABEL_180;
            }

            phOsalNfc_MemCopy();
            v19 = 0;
            *(v13 + 1608) = v12[2];
            *(v13 + 4) |= 0x10000u;
            *(v13 + 1536) |= 0x100u;
            v52 = v12[1];
          }

          if (v52 == 196)
          {
            if (v12[2] - 1 > 0x31)
            {
              goto LABEL_180;
            }

            phOsalNfc_MemCopy();
            v19 = 0;
            *(v13 + 1659) = v12[2];
            *(v13 + 4) |= 0x10000u;
            *(v13 + 1536) |= 0x200u;
            v52 = v12[1];
          }

          if (v52 == 142)
          {
            if (v12[2] != 1)
            {
              goto LABEL_180;
            }

            v19 = 0;
            *(v13 + 1661) = v12[3];
            *(v13 + 4) |= 0x10000u;
            *(v13 + 1536) |= 0x1000u;
            v52 = v12[1];
          }

          if (v52 != 231)
          {
LABEL_177:
            if (v52 == 152 && v12[2] - 1 <= 0xE)
            {
              phOsalNfc_MemCopy();
              v19 = 0;
              *(v13 + 1735) = v12[2];
              *(v13 + 4) |= 0x10000u;
              *(v13 + 1536) |= 0x40000u;
            }

            goto LABEL_180;
          }

          if (v12[2] == 5)
          {
            v19 = 0;
            *(v13 + 4) |= 0x10000u;
            *(v13 + 1536) |= 0x8000u;
            *(v13 + 1662) = v12[3] & 1;
            *(v13 + 1663) = (v12[3] & 2) != 0;
            v58 = v12[4];
            *(v13 + 1664) = v58;
            *(v13 + 1664) = v58 | (v12[5] << 8);
            v59 = v12[6];
            *(v13 + 1666) = v59;
            *(v13 + 1666) = v59 | (v12[7] << 8);
            v52 = v12[1];
            goto LABEL_177;
          }

LABEL_180:
          v31 = a1;
          v32 = "phNciNfc_StorePropParams";
          goto LABEL_196;
        }

        goto LABEL_56;
      }

      sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_StorePropParamsID2");
      v45 = v12[1];
      if (v45 == 16)
      {
        if (v12[2] - 1 > 0x31)
        {
          v19 = 1;
LABEL_189:
          v31 = a1;
          v32 = "phNciNfc_StorePropParamsID2";
          goto LABEL_196;
        }

        v46 = *(a1 + 6524);
        phOsalNfc_MemCopy();
        v19 = 0;
        *(v13 + 1719) = v12[2];
        *(v13 + 4) |= 0x10000u;
        *(v13 + 1536) |= 0x20000u;
        v45 = v12[1];
      }

      else
      {
        v19 = 1;
      }

      if (v45 == 17 && v12[2] == 2)
      {
        v19 = 0;
        *(v13 + 1668) = v12[3];
        *(v13 + 4) |= 0x10000u;
        *(v13 + 1536) |= 0x10000u;
      }

      goto LABEL_189;
    }

    v17 = *v12;
    v18 = (*v12 & 0xFE) == 0xA0 ? v12[2] : v12[1];
    v19 = v18 != 0;
LABEL_198:
    if ((v17 & 0xFE) != 0xA0)
    {
      break;
    }

    if (v9 > 0xFC)
    {
      goto LABEL_212;
    }

    v60 = &v88[v9];
    *v60 = v17;
    v61 = v9 + 2;
    v60[1] = v12[1];
    ++v10;
    v62 = v12[2] + 3;
LABEL_203:
    if (v8 + v62 <= 0xFF)
    {
      v11 += v62;
      v8 = v11;
      v63 = v11 < a2 && !v19;
      v9 = v61;
      if (v63)
      {
        continue;
      }
    }

    goto LABEL_213;
  }

  if (v9 <= 0xFD)
  {
    v88[v9] = v17;
    v61 = v9 + 1;
    ++v10;
    v62 = v12[1] + 2;
    goto LABEL_203;
  }

LABEL_212:
  v19 = 1;
  v61 = v9;
LABEL_213:
  v64 = !v19;
  v7 = v10 == 0;
LABEL_214:
  v65 = 1;
  if (a2 == v11 && v64)
  {
    memset(v89, 0, 255);
    sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_UpdateReqParamIDs");
    if (!v7)
    {
      v66 = *(a1 + 888);
      if (v66)
      {
        v67 = *(a1 + 881);
        if (*(a1 + 881))
        {
          v68 = 0;
          v69 = 0;
          v70 = 0;
          v71 = 0;
          v72 = v66 + 1;
          do
          {
            v73 = v72[v71];
            if (v61)
            {
              v74 = 0;
              v75 = v68 + 1;
              v76 = v73 & 0xFE;
              do
              {
                v77 = v88[v74];
                if (v76 != 160 || (v73 == v77 ? (v78 = v75 >= v67) : (v78 = 1), v78))
                {
                  v79 = v76 != 160 && v73 == v77;
                  ++v74;
                }

                else
                {
                  if (++v74 >= v61)
                  {
                    v82 = v69 + 1;
                    v89[v69] = v73;
                    goto LABEL_244;
                  }

                  v79 = v72[v75] == v88[v74];
                }
              }

              while (v74 < v61 && !v79);
              if (!v79)
              {
                goto LABEL_241;
              }

              v81 = 1;
            }

            else
            {
              v76 = v73 & 0xFE;
LABEL_241:
              v82 = v69 + 1;
              v89[v69] = v73;
              if (v76 == 160)
              {
LABEL_244:
                v69 += 2;
                v89[v82] = v66[v71 + 2];
                ++v70;
                v81 = 2;
              }

              else
              {
                ++v70;
                v81 = 1;
                ++v69;
              }
            }

            v71 += v81;
            v68 = v71;
          }

          while (v71 < v67);
          if (v70)
          {
            v83 = *(a1 + 6524);
            phOsalNfc_MemCopy();
            v66 = *(a1 + 888);
            goto LABEL_250;
          }
        }

        else
        {
          LOBYTE(v69) = 0;
        }

        LOBYTE(v70) = 0;
LABEL_250:
        v65 = 0;
        *(a1 + 880) = v70;
        *(a1 + 881) = v69;
        *v66 = v70;
      }
    }

    sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_UpdateReqParamIDs");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessRfParams");
  v84 = *MEMORY[0x29EDCA608];
  return v65;
}

uint64_t sub_297E629D4(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrintGetConfigRespDescription");
  sub_297E4E0B0(2, a1, 3u, 4u, "NCI Get Config Response Details:");
  v6 = "NCI Get Config Command contains Invalid parameters.                       Get config command needs to be sent again";
  if (*a2 == 10)
  {
    v6 = "NCI Get Config Response partially received ";
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = "NCI Get Config Response Completely received ";
  }

  sub_297E4E0B0(2, a1, 3u, 4u, v7);
  v8 = *a2;
  sub_297E50DB0(2, a1, 3u, 4u, "Number of Configs received:");
  if (a3 >= 3)
  {
    v9 = 2;
    do
    {
      v10 = &a2[v9];
      v11 = *v10;
      if (v11 <= 0x7F)
      {
        switch(*v10)
        {
          case '(':
            v45 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Poll NFC-DEP bitrate len:");
            v46 = v10[2];
            v18 = "Poll NFC-DEP bitrate Value:";
            goto LABEL_53;
          case ')':
            v55 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Poll NFC-DEP ATR-REQ Gen bytes len:");
            v56 = v10[1];
            v14 = "ATR-REQ Gen bytes:";
            goto LABEL_63;
          case '*':
            v37 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Poll ATR-REQ config len:");
            if ((~v10[2] & 0x30) != 0)
            {
              v38 = "ATR_REQ - DID shall not be used ";
            }

            else
            {
              v38 = "ATR_REQ - DID may be used ";
            }

            sub_297E4E0B0(2, a1, 3u, 4u, v38);
            if ((v10[2] & 4) == 0)
            {
              goto LABEL_64;
            }

            v36 = "ATR_REQ - Length Reduction is applicable ";
            goto LABEL_59;
          case '+':
          case ',':
          case '-':
          case '.':
          case '/':
          case '4':
          case '5':
          case '6':
          case '7':
          case ';':
          case '=':
          case '>':
          case '?':
          case 'D':
          case 'E':
          case 'F':
          case 'G':
          case 'H':
          case 'I':
          case 'J':
          case 'K':
          case 'L':
          case 'M':
          case 'N':
          case 'O':
          case 'U':
          case 'V':
          case 'W':
          case '\\':
          case ']':
          case '^':
          case '_':
            goto LABEL_64;
          case '0':
            v51 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen A Bit Frame SDD len:");
            v52 = v10[2];
            v18 = "Listen A Bitframe SDD Value:";
            goto LABEL_53;
          case '1':
            v39 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen A Platform config len:");
            v40 = v10[2];
            v18 = "Listen A Platform config Value:";
            goto LABEL_53;
          case '2':
            v34 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen A Select info len:");
            v35 = v10[2];
            if ((v35 & 0x20) != 0)
            {
              sub_297E4E0B0(2, a1, 3u, 4u, "SEL INFO - ISO-DEP protocol is supported ");
              v35 = v10[2];
            }

            if ((v35 & 0x40) == 0)
            {
              goto LABEL_64;
            }

            v36 = "SEL INFO - NFC-DEP protocol is supported ";
            goto LABEL_59;
          case '3':
            v31 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen A NFCID1 len:");
            v32 = v10[1];
            v14 = "Listen A NFCID1 :";
            goto LABEL_63;
          case '8':
            v47 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen B SENSB info len:");
            if ((v10[2] & 1) == 0)
            {
              goto LABEL_64;
            }

            v36 = "SENSB INFO - ISO-DEP protocol is supported ";
            goto LABEL_59;
          case '9':
            v43 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen B NFCID0 len:");
            v44 = v10[1];
            v14 = "Listen B NFCID0 :";
            goto LABEL_63;
          case ':':
            v53 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen B App Data len:");
            v54 = v10[1];
            v14 = "Listen B App Data :";
            goto LABEL_63;
          case '<':
            v29 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen B ADC-FO len:");
            if (v10[2])
            {
              sub_297E4E0B0(2, a1, 3u, 4u, "ADC-FO - DID may be used");
              v30 = v10[2];
            }

            v18 = "ADC-FO, ADC value is";
            goto LABEL_53;
          case '@':
          case 'A':
          case 'B':
          case 'C':
            v12 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen F Id len:");
            v13 = v10[1];
            v14 = "Listen F Id:";
            goto LABEL_63;
          case 'P':
            v26 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen F protocol type len:");
            v27 = v10[2];
            v18 = "Listen F protocol type Value:";
            goto LABEL_53;
          case 'Q':
            v64 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen F T3T PMM len:");
            v65 = v10[1];
            v14 = "Listen F T3T PMM :";
            goto LABEL_63;
          case 'R':
            v57 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen F T3T MAX len:");
            v58 = v10[2];
            v18 = "Listen F T3T MAX Value:";
            goto LABEL_53;
          case 'S':
            v48 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen F T3T Flag len:");
            v49 = v10[2];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen F T3T Flag Value lower byte:");
            v50 = v10[3];
            v18 = "Listen F T3T Flag Value upper byte:";
            goto LABEL_53;
          case 'T':
            v61 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen F bitrate len:");
            v62 = v10[1];
            if ((v62 & 2) != 0)
            {
              sub_297E4E0B0(2, a1, 3u, 4u, "Listen F bitrate:212kbps");
              v62 = v10[1];
            }

            if ((v62 & 4) == 0)
            {
              goto LABEL_64;
            }

            v36 = "Listen F bitrate:424kbps";
LABEL_59:
            sub_297E4E0B0(2, a1, 3u, 4u, v36);
            goto LABEL_64;
          case 'X':
            v24 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Frame waiting time len:");
            v25 = v10[2];
            v18 = "Frame waiting time Value:";
            goto LABEL_53;
          case 'Y':
            v33 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen ISO-DEP Hist bytes len:");
            if (!v10[1])
            {
              goto LABEL_64;
            }

            v14 = "Listen ISO-DEP Hist bytes :";
            goto LABEL_63;
          case 'Z':
            v28 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen ISO-DEP INFO RESP len:");
            if (!v10[1])
            {
              goto LABEL_64;
            }

            v14 = "Listen ISO-DEP INFO RESP:";
            goto LABEL_63;
          case '[':
            v41 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen ISO-DEP bitrate len:");
            v42 = v10[2];
            v18 = "Listen ISO-DEP bitrate Value:";
            goto LABEL_53;
            v22 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen NFC-DEP waiting time len:");
            v23 = v10[2];
            v18 = "Listen NFC-DEP waiting time Value:";
            goto LABEL_53;
          case 'a':
            v63 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen NFC-DEP ATR-RES Gen bytes len:");
            if (!v10[1])
            {
              goto LABEL_64;
            }

            v14 = "Listen NFC-DEP ATR-RES Gen bytes:";
LABEL_63:
            sub_297E4E880(2, a1, 3u, 4u, v14, (v10 + 2));
            goto LABEL_64;
          case 'b':
            v59 = v10[1];
            sub_297E50DB0(2, a1, 3u, 4u, "Listen NFC-DEP ATR-RES Config len:");
            v60 = v10[2];
            v18 = "Listen NFC-DEP ATR-RES Config Value:";
LABEL_53:
            v17 = a1;
            goto LABEL_54;
          default:
            if (*v10)
            {
              if (v11 != 24)
              {
                goto LABEL_64;
              }

              v19 = v10[1];
              sub_297E50DB0(2, a1, 3u, 4u, "Poll F bitrate len:");
              v20 = v10[2];
              v17 = a1;
              v18 = "Poll F bitrate Value:";
            }

            else
            {
              v76 = v10[1];
              sub_297E50DB0(2, a1, 3u, 4u, "Common params Total duration len:");
              v77 = v10[2];
              sub_297E50DB0(2, a1, 3u, 4u, "Common params Total duration Value byte 1:");
              v78 = v10[3];
              v17 = a1;
              v18 = "Common params Total duration Value byte 2:";
            }

            break;
        }

        goto LABEL_54;
      }

      if (*v10 > 0x9Fu)
      {
        if (v11 == 160)
        {
          if (v10[1] != 3)
          {
            goto LABEL_64;
          }

          v74 = v10[2];
          sub_297E50DB0(2, a1, 3u, 4u, "Nfc prop Clk config len:");
          v75 = v10[3];
          v17 = a1;
          v18 = "Nfc prop Clk config Value:";
          goto LABEL_54;
        }

        if (v11 == 161)
        {
          v21 = v10[3];
          v17 = a1;
          v18 = "Nfc prop ID2 Unknown Tag Value:";
          goto LABEL_54;
        }
      }

      else
      {
        if (v11 == 128)
        {
          v72 = v10[1];
          sub_297E50DB0(2, a1, 3u, 4u, "RF Field Info len:");
          v73 = v10[2];
          v17 = a1;
          v18 = "RF Field Info Value:";
          goto LABEL_54;
        }

        if (v11 == 129)
        {
          v15 = v10[1];
          sub_297E50DB0(2, a1, 3u, 4u, "RF NFCEE Action len:");
          v16 = v10[2];
          v17 = a1;
          v18 = "RF NFCEE Action Value:";
LABEL_54:
          sub_297E50DB0(2, v17, 3u, 4u, v18);
        }
      }

LABEL_64:
      v66 = *v10 & 0xFE;
      v67 = v66 == 160;
      if (v66 == 160)
      {
        v68 = 2;
      }

      else
      {
        v68 = 1;
      }

      if (v67)
      {
        v69 = 3;
      }

      else
      {
        v69 = 2;
      }

      v70 = v10[v68];
      v71 = v9 + v69;
      v9 = v70 + v71;
    }

    while (a3 > (v70 + v71));
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrintGetConfigRespDescription");
}

uint64_t sub_297E633AC(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteGetConfig");
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 888))
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Do not invoke upper layer as Deinit is in progress");
LABEL_12:
    v2 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    if (*(a1 + 896))
    {
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    sub_297E634F4(a1);
    if (v2 == 1)
    {
      v2 = 255;
    }

    else
    {
      v2 = v2;
    }

    v4 = *(a1 + 4688);
    v5 = a1;
    v6 = v2;
  }

  else
  {
    if (*(a1 + 880))
    {
      *(a1 + 3776) = off_2A1A93C80;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93C80);
      *(a1 + 896) = *(a1 + 888);
      *(a1 + 904) = *(a1 + 881) + 1;
      v2 = sub_297E6147C(a1, 0, 0);
      goto LABEL_13;
    }

    if (*(a1 + 896))
    {
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    v2 = sub_297E634F4(a1);
    v4 = *(a1 + 4688);
    v5 = a1;
    v6 = 0;
  }

  sub_297E5B994(v5, v6, v4);
LABEL_13:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CompleteGetConfig");
  return v2;
}

uint64_t sub_297E634F4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ClearConfigParams");
  if (*(a1 + 888))
  {
    *(a1 + 880) = 0;
    v2 = *(a1 + 6524);
    phOsalNfc_FreeMemory();
    v3 = 0;
    *(a1 + 888) = 0;
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ClearConfigParams");
  return v3;
}

uint64_t sub_297E63574(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetLpcdConfigProc");
  if (!a1 || a2)
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_GetLpcdConfigProc: FAILED");
    a2 = 255;
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_GetLpcdConfigProc- SUCCESS");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetLpcdConfigProc");
  return a2;
}

uint64_t sub_297E63620(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetConfigSeq");
  if (a1)
  {
    v2 = sub_297E63698(a1, (a1 + 1048));
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetConfigSeq");
  return v2;
}

uint64_t sub_297E63698(uint64_t a1, unsigned int *a2)
{
  v48 = *MEMORY[0x29EDCA608];
  bzero(&v32, 0x6E8uLL);
  v31 = 0;
  v30 = 0u;
  memset(v29, 0, sizeof(v29));
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConfigDiscParams");
  if (!a2)
  {
    v5 = 1;
    goto LABEL_111;
  }

  if (*a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a2 + 6) & 1;
  }

  v6 = v4 | *a2 & 0xFFFFFFFE;
  *a2 = v6;
  if ((v6 & 0xC) != 0)
  {
    v7 = 4;
    v33 = 4;
    if ((v6 & 4) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    v34 = 1;
    v35 = v8;
  }

  else
  {
    v7 = 0;
  }

  sub_297E63D38(v29, a1);
  v9 = *(a1 + 2985);
  if (v9 != 1 && *(a1 + 2986) != 1 && *(a1 + 2992) != 1 && (*(a1 + 2984) != 1 || (*(a1 + 3028) & 0xFEu) < 0x32))
  {
    v12 = 0;
    goto LABEL_30;
  }

  if (v31 != 1 && *(a1 + 2986) != 1 && *(a1 + 2992) != 1)
  {
    v12 = 0;
    v40 = 0;
    goto LABEL_30;
  }

  v7 |= 0x10000u;
  v40 = 2048;
  v10 = *a2;
  if ((*a2 & 0x800) != 0)
  {
    v11 = 1;
LABEL_23:
    v42 = v11;
    goto LABEL_24;
  }

  if ((v10 & 0x1000) != 0)
  {
    v11 = 3;
    goto LABEL_23;
  }

  v11 = 0;
  v42 = 0;
LABEL_24:
  if (!*(a1 + 2984))
  {
    if ((v10 & 0x2000) != 0)
    {
      v11 |= 4u;
      v42 = v11;
    }

    if ((v10 & 0x4000) != 0)
    {
      v42 = v11 | 8;
    }
  }

  v12 = 2048;
LABEL_30:
  v38 = 1;
  v13 = *(a2 + 2);
  if (v13 <= 0x12B && (v9 != 1 && *(a1 + 2986) != 1 && *(a1 + 2992) != 1 || (*a2 & 0x40000) == 0 || !*(a2 + 2) || (*a2 & 0x80000) != 0 || (a2[20] & 1) != 0))
  {
    LOWORD(v13) = 300;
  }

  v39 = v13;
  v14 = v7 | 0x480;
  v33 = v7 | 0x480;
  v36 = 2;
  v37 = *(a2 + 7) == 0;
  v15 = *(a1 + 2992);
  if ((v15 == 1 || (v9 == 1 || *(a1 + 2986) == 1) && *(a1 + 3196) == 1) && (*(a2 + 2) & 0xC) == 0 && *(a2 + 93) == 1)
  {
    v14 = v7 | 0x10480;
    v12 |= 0x80000u;
    v33 = v7 | 0x10480;
    v40 = v12;
    v43 = 1;
  }

  else
  {
    v40 = v12;
  }

  v41 = 0;
  if (BYTE12(v30) & 1) != 0 && (v14 |= 0x10000u, v12 |= 0x40u, v33 = v14, v40 = v12, (a2[3]))
  {
    v16 = 0x80;
    v41 = 0x80;
    v17 = 1;
    if ((BYTE12(v30) & 2) == 0)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
    if ((BYTE12(v30) & 2) == 0)
    {
      goto LABEL_54;
    }
  }

  v14 |= 0x10000u;
  v12 |= 0x40u;
  v33 = v14;
  v40 = v12;
  if ((a2[3] & 2) != 0)
  {
    v16 |= 0x40u;
    v41 = v16;
    v17 = 1;
  }

LABEL_54:
  if ((BYTE12(v30) & 4) != 0)
  {
    v14 |= 0x10000u;
    v12 |= 0x40u;
    v33 = v14;
    v40 = v12;
    if ((a2[3] & 4) != 0)
    {
      v16 |= 0x20u;
      v41 = v16;
      v17 = 1;
    }
  }

  if ((BYTE12(v30) & 8) != 0)
  {
    v14 |= 0x10000u;
    v12 |= 0x40u;
    v33 = v14;
    v40 = v12;
    v18 = *(a2 + 12);
    if ((v18 & 8) != 0)
    {
      v16 |= 0x10u;
      v41 = v16;
      goto LABEL_63;
    }
  }

  else
  {
    v18 = *(a2 + 12);
  }

  if (!v17)
  {
    *(a2 + 12) = v18 & 0xCF;
LABEL_76:
    if (*(a1 + 2984) == 1)
    {
      v44 = 0;
      v14 |= 0x10000u;
      v12 |= 0x80u;
      v33 = v14;
      v40 = v12;
      if (a2[20])
      {
        if (*a2)
        {
          if ((a2[20] & 2) != 0)
          {
            v20 = -127;
          }

          else
          {
            v20 = 1;
          }

          v44 = v20;
        }
      }
    }

    goto LABEL_83;
  }

LABEL_63:
  if ((v18 & 0x10) != 0)
  {
    v16 |= 1u;
    v41 = v16;
  }

  if ((v18 & 0x20) != 0)
  {
    v19 = 2;
    goto LABEL_70;
  }

  if ((v18 & 0x18) != 0)
  {
LABEL_71:
    if (v15 == 1 || (v9 == 1 || *(a1 + 2986) == 1) && *(a1 + 3196) == 1)
    {
      v12 |= 0x80000u;
      v40 = v12;
      v43 = 0;
    }

    goto LABEL_76;
  }

  if (v9 == 1)
  {
    goto LABEL_68;
  }

  v19 = 4;
  if (v15 == 1 || *(a1 + 2986) == 1)
  {
    goto LABEL_70;
  }

  if (*(a1 + 2984) == 1)
  {
LABEL_68:
    v19 = 4;
LABEL_70:
    v41 = v19 | v16;
    goto LABEL_71;
  }

LABEL_83:
  v21 = *(a1 + 2985);
  if (v21 == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1)
  {
    if (*(a1 + 5216))
    {
      v33 = v14 | 0x10000;
      v40 = v12 | 0x100;
      v22 = *(a1 + 5175);
      *(a1 + 5175) = v22 & 0x7F;
      if ((a2[20] & 1) != 0 && *a2)
      {
        *(a1 + 5175) = v22 | 0x80;
      }

      v23 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      v45 = *(a1 + 5216);
      v21 = *(a1 + 2985);
    }

    if ((v21 == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1) && *(a1 + 5267))
    {
      sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ChkForListnModeConfig");
      if (((*a2 & 0x40000) != 0 || (*(a2 + 9) & 0xF) == 8) && !(*a2 & 0x80000 | a2[3] & 0xF))
      {
        sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ChkForListnModeConfig");
      }

      else
      {
        sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ChkForListnModeConfig");
        v40 |= 0x200u;
        v24 = *(a1 + 5217);
        *(a1 + 5217) = v24 & 0xF6;
        if (*(a2 + 84) == 1)
        {
          *(a1 + 5217) = v24 & 0xF6 | 1;
          if (*(a2 + 85) == 1)
          {
            *(a1 + 5217) = v24 | 9;
          }
        }

        v25 = *(a1 + 9792);
        v26 = *(a1 + 5267);
        phOsalNfc_MemCopy();
        v46 = *(a1 + 5267);
      }
    }
  }

  if (*(a1 + 2987) == 1 && (*(a1 + 2991) == 1 || *(a1 + 2990) == 1 || *(a1 + 3136) == 2))
  {
    v33 |= 0x10000u;
    v40 |= 0x10000u;
    v47 = 0;
  }

  if (sub_297E63FA4(a1, &v32))
  {
    v32 = *(a1 + 9792);
    v5 = sub_297E64020(*(a1 + 3088), &v32, sub_297E5BA84, a1);
  }

  else
  {
    v5 = 255;
  }

LABEL_111:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConfigDiscParams");
  v27 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t sub_297E63D38(int8x8_t *a1, uint64_t a2)
{
  sub_297E4E1B4(2, a2, 4u, 5u, "phLibNfc_UpdateStackCapabilities");
  if (a2)
  {
    v4 = *(a2 + 3028);
    v5 = vand_s8(a1[7], 0x100000001);
    a1[7] = v5;
    v6 = a1[8].i16[2] & 0xE000;
    a1[8].i16[2] = v6;
    a1[9].i16[0] &= 0xE000u;
    if (*(a2 + 2986) == 1 || *(a2 + 2992) == 1 && !*(a2 + 2994) || *(a2 + 2985) == 1)
    {
      if (((a1[8].i16[2] = v6 | 0x1FF, a1[7].i32[0] = v5.i32[0] | 0x21BF, *(a2 + 2985)) || *(a2 + 2986)) && *(a2 + 2990) != 1 && *(a2 + 2991) != 1 && (*(a2 + 2987) != 1 || *(a2 + 3136) != 2) || (a1[8].i16[2] = v6 | 0x1DFF, a1[7].i32[0] = v5.i32[0] | 0x1E1BF, *(a2 + 2991) != 1) && *(a2 + 2990) != 1)
      {
        if (*(a2 + 3136) != 2)
        {
          a1[7].i32[1] = v5.i32[1] | 0x2C;
        }
      }
    }

    a1[5].i8[2] = 0;
    a1[6].i8[5] = *(a2 + 3073);
    a1->i32[1] = 68157440;
    a1->i16[0] = 1281;
    a1[1] = *(a2 + 3028);
    a1[2].i8[5] = *(a2 + 3041);
    a1[2].i32[0] = *(a2 + 3036);
    a1[10].i32[0] = *(a2 + 3196);
    a1[2].i8[4] = *(a2 + 3136);
    a1[8].i16[1] = *(a2 + 3182);
    v7 = *(a2 + 9792);
    phOsalNfc_MemCopy();
    v8 = a1[9].i8[4];
    v9 = v8 & 0xC0;
    a1[9].i8[4] = v8 & 0xC0;
    if (*(a2 + 2985) == 1)
    {
      a1[9].i8[4] = v9 | 0x30;
      if (a1[10].i32[0] != 1)
      {
        goto LABEL_28;
      }

      a1[9].i8[4] = v9 | 0x3B;
      if (v4 <= 4)
      {
        goto LABEL_28;
      }
    }

    else if ((*(a2 + 2986) != 1 || *(a2 + 2991) == 1 || *(a2 + 2990) == 1 || *(a2 + 3136) == 2) && (*(a2 + 2992) != 1 || *(a2 + 2994)))
    {
      goto LABEL_28;
    }

    a1[9].i8[4] = v8 | 0x3F;
  }

LABEL_28:

  return sub_297E4DFAC(2, a2, 4u, 5u, "phLibNfc_UpdateStackCapabilities");
}

BOOL sub_297E63FA4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetconfEntryCheck");
  v4 = (*(a2 + 4) & 0x1B7FF) != 0;
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetconfEntryCheck");
  return v4;
}

uint64_t sub_297E64020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v21 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetConfigRfParameters");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized");
    v9 = 49;
    goto LABEL_23;
  }

  if (!a2 || !a3)
  {
    v11 = "Invalid parameters";
    v9 = 1;
    v12 = a1 + 6524;
LABEL_8:
    sub_297E4E0B0(1, v12, 3u, 1u, v11);
    goto LABEL_23;
  }

  v8 = sub_297E642BC(a1, a2, &v22, &v21);
  if (v8)
  {
    v9 = v8;
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Set Config parameter validation failed!");
    v10 = 0;
  }

  else
  {
    v13 = *(a1 + 6524);
    v10 = (v22 + 2 * v21 + 1);
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    *(a1 + 4816) = Memory_Typed;
    if (!Memory_Typed)
    {
      v15 = (a1 + 4816);
      v9 = 255;
      goto LABEL_20;
    }

    *Memory_Typed = v21;
    v9 = sub_297E65C94(a1, a2, *(a1 + 4816), v10);
  }

  v15 = (a1 + 4816);
  v16 = *(a1 + 4816);
  if (v9 == 1)
  {
    if (v16)
    {
      v17 = "Build Set config command payload failed!";
      v9 = 1;
LABEL_22:
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v17);
      v18 = *(a1 + 6524);
      v19 = *v15;
      phOsalNfc_FreeMemory();
      *v15 = 0;
      goto LABEL_23;
    }

    v11 = "Input parameter validation failed!";
    v9 = 1;
    v12 = a1 + 6524;
    goto LABEL_8;
  }

  if (!v9 && v16)
  {
    *(a1 + 3424) = a3;
    *(a1 + 3752) = a4;
    *(a1 + 3776) = off_2A1A93BE0;
    *(a1 + 3976) = 0;
    *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93BE0);
    *(a1 + 896) = *(a1 + 4816);
    *(a1 + 904) = v10;
    v9 = sub_297E5DF3C(a1, 0, 0);
    if (v9 != 13)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Set Config Sequence failed!");
      sub_297F0522C(a1);
    }

    goto LABEL_23;
  }

LABEL_20:
  sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Memory allocation for Set Config Cmd payload failed!");
  if (*(a1 + 4816))
  {
    v17 = "Freeing payload memory as Building Set Config payload failed!";
    goto LABEL_22;
  }

LABEL_23:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetConfigRfParameters");
  return v9;
}

uint64_t sub_297E642BC(uint64_t a1, uint64_t a2, unsigned __int16 *a3, _BYTE *a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateSetConfParams");
  v8 = 1;
  if (a2 && a3 && a4)
  {
    sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetconfEntryCheck");
    v9 = *(a2 + 4) & 0x1F7FF;
    sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetconfEntryCheck");
    if (v9)
    {
      v10 = *(a2 + 4);
      if ((v10 & 4) != 0)
      {
        sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidatePollNfcFParams");
        if ((*(a2 + 24) & 1) == 0)
        {
          sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidatePollNfcFParams");
LABEL_8:
          v11 = "phNciNfc_ValidatePollNfcFParams failed";
LABEL_118:
          v8 = 1;
          sub_297E4E0B0(2, a1, 3u, 1u, v11);
          goto LABEL_119;
        }

        ++*a4;
        ++*a3;
        v12 = *(a2 + 28);
        sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidatePollNfcFParams");
        if ((v12 - 1) >= 2 && v12 != 128)
        {
          goto LABEL_8;
        }

        v10 = *(a2 + 4);
      }

      if ((v10 & 0x10) == 0)
      {
LABEL_23:
        if ((v10 & 0x20) == 0)
        {
          goto LABEL_45;
        }

        sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateLstnNfcAParams");
        v15 = *(a2 + 148);
        if (v15)
        {
          if ((v15 & 4) != 0)
          {
            ++*a4;
            ++*a3;
            LOBYTE(v15) = *(a2 + 148);
          }

          if (v15)
          {
            ++*a4;
            ++*a3;
            LOBYTE(v15) = *(a2 + 148);
          }

          if ((v15 & 2) != 0)
          {
            ++*a4;
            if (*(a2 + 153) > 0xFu)
            {
              goto LABEL_49;
            }

            ++*a3;
            LOBYTE(v15) = *(a2 + 148);
          }

          if ((v15 & 8) == 0)
          {
LABEL_44:
            sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateLstnNfcAParams");
            v10 = *(a2 + 4);
LABEL_45:
            if ((v10 & 0x40) == 0)
            {
              goto LABEL_58;
            }

            sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateLstnNfcBParams");
            v18 = *(a2 + 172);
            if (!v18)
            {
              sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateLstnNfcBParams");
              v11 = "phNciNfc_ValidateLstnNfcBParams failed";
              goto LABEL_118;
            }

            if (v18)
            {
              ++*a4;
              ++*a3;
              LOBYTE(v18) = *(a2 + 172);
            }

            if ((v18 & 2) != 0)
            {
              ++*a4;
              v18 = *a3;
              v20 = v18 <= 0xFFFC;
              LOWORD(v18) = -4 - v18;
              if (!v20)
              {
                LOWORD(v18) = 0;
              }

              *a3 = -v18;
              LOBYTE(v18) = *(a2 + 172);
              if ((v18 & 4) == 0)
              {
LABEL_54:
                if ((v18 & 8) == 0)
                {
                  goto LABEL_55;
                }

                goto LABEL_68;
              }
            }

            else if ((v18 & 4) == 0)
            {
              goto LABEL_54;
            }

            ++*a4;
            v18 = *a3;
            v20 = v18 <= 0xFFFC;
            LOWORD(v18) = -4 - v18;
            if (!v20)
            {
              LOWORD(v18) = 0;
            }

            *a3 = -v18;
            LOBYTE(v18) = *(a2 + 172);
            if ((v18 & 8) == 0)
            {
LABEL_55:
              if ((v18 & 0x10) == 0)
              {
LABEL_57:
                sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateLstnNfcBParams");
                v10 = *(a2 + 4);
LABEL_58:
                if ((v10 & 0x80) == 0)
                {
                  goto LABEL_91;
                }

                sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateLstnNfcFParams");
                v19 = *(a2 + 196);
                if (!v19)
                {
                  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateLstnNfcFParams");
                  v11 = "phNciNfc_ValidateLstnNfcFParams failed";
                  goto LABEL_118;
                }

                if (v19)
                {
                  ++*a4;
                  ++*a3;
                  LOBYTE(v19) = *(a2 + 196);
                }

                if ((v19 & 2) != 0)
                {
                  ++*a4;
                  ++*a3;
                  LOBYTE(v19) = *(a2 + 196);
                  if ((v19 & 8) == 0)
                  {
LABEL_74:
                    if ((v19 & 0x10) == 0)
                    {
                      goto LABEL_75;
                    }

                    goto LABEL_81;
                  }
                }

                else if ((v19 & 8) == 0)
                {
                  goto LABEL_74;
                }

                ++*a4;
                v19 = *a3;
                v20 = v19 <= 0xFFF8;
                LOWORD(v19) = -8 - v19;
                if (!v20)
                {
                  LOWORD(v19) = 0;
                }

                *a3 = -v19;
                LOBYTE(v19) = *(a2 + 196);
                if ((v19 & 0x10) == 0)
                {
LABEL_75:
                  if ((v19 & 4) == 0)
                  {
LABEL_90:
                    sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateLstnNfcFParams");
                    v10 = *(a2 + 4);
LABEL_91:
                    if ((v10 & 0x100) != 0)
                    {
                      if (sub_297F01B44(a1, a2 + 380, a3, a4))
                      {
                        v11 = "phNciNfc_ValidateLstnIsoDepParams failed";
                        goto LABEL_118;
                      }

                      v10 = *(a2 + 4);
                    }

                    if ((v10 & 0x400) != 0)
                    {
                      if (sub_297E64A78(a1, (a2 + 544), a3, a4))
                      {
                        v11 = "phNciNfc_ValidateCommonParams failed";
                        goto LABEL_118;
                      }

                      v10 = *(a2 + 4);
                    }

                    if ((v10 & 0x1000) != 0)
                    {
                      if (sub_297F01C80(a1, (a2 + 580), a3, a4))
                      {
                        v11 = "phNciNfc_ValidateSysConfigParams failed";
                        goto LABEL_118;
                      }

                      v10 = *(a2 + 4);
                    }

                    if ((v10 & 0x2000) != 0)
                    {
                      if (sub_297F02204(a1, (a2 + 1128), a3, a4))
                      {
                        v11 = "phNciNfc_ValidateSwpConfigParams failed";
                        goto LABEL_118;
                      }

                      v10 = *(a2 + 4);
                    }

                    if ((v10 & 0x4000) != 0)
                    {
                      if (sub_297F026C0(a1, (a2 + 1740), a3, a4))
                      {
                        v11 = "phNciNfc_ValidateSmbCfgParams failed";
                        goto LABEL_118;
                      }

                      v10 = *(a2 + 4);
                    }

                    if ((v10 & 0x8000) != 0)
                    {
                      if (sub_297F02800(a1, (a2 + 1408), a3, a4))
                      {
                        v11 = "phNciNfc_ValidateNxpExtnRfDiscConfigParams failed";
                        goto LABEL_118;
                      }

                      v10 = *(a2 + 4);
                    }

                    if ((v10 & 0x10000) == 0 || !sub_297E64BE8(a1, (a2 + 1536), a3, a4))
                    {
                      v8 = 0;
                      goto LABEL_119;
                    }

                    v11 = "phNciNfc_ValidatePropConfigParams failed";
                    goto LABEL_118;
                  }

LABEL_84:
                  for (i = 0; i != 16; ++i)
                  {
                    if ((*(a2 + 378) >> i))
                    {
                      ++*a4;
                      v23 = *a3;
                      v20 = v23 <= 0xFFF6;
                      v24 = -10 - v23;
                      if (!v20)
                      {
                        v24 = 0;
                      }

                      *a3 = -v24;
                    }
                  }

                  goto LABEL_90;
                }

LABEL_81:
                ++*a4;
                v21 = -2 - *a3;
                if (*a3 == 0xFFFF)
                {
                  v21 = 0;
                }

                *a3 = -v21;
                if ((*(a2 + 196) & 4) == 0)
                {
                  goto LABEL_90;
                }

                goto LABEL_84;
              }

LABEL_56:
              ++*a4;
              ++*a3;
              goto LABEL_57;
            }

LABEL_68:
            ++*a4;
            ++*a3;
            if ((*(a2 + 172) & 0x10) == 0)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          }

          ++*a4;
          v16 = *(a2 + 170);
          if (v16 <= 0xA && ((1 << v16) & 0x491) != 0)
          {
            v17 = *a3 + v16;
            if (v17 >= 0x10000)
            {
              LOWORD(v17) = 0;
            }

            *a3 = v17;
            goto LABEL_44;
          }
        }

LABEL_49:
        sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateLstnNfcAParams");
        v11 = "phNciNfc_ValidateLstnNfcAParams failed";
        goto LABEL_118;
      }

      sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidatePollNfcDepParams");
      v13 = *(a2 + 88);
      if (v13)
      {
        if ((v13 & 1) == 0)
        {
          if ((v13 & 4) == 0)
          {
LABEL_18:
            if ((v13 & 2) != 0)
            {
              ++*a4;
              v14 = *(a2 + 141) + *a3;
              if (v14 >= 0x10000)
              {
                LOWORD(v14) = 0;
              }

              *a3 = v14;
            }

            sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidatePollNfcDepParams");
            v10 = *(a2 + 4);
            goto LABEL_23;
          }

LABEL_17:
          ++*a4;
          ++*a3;
          LOBYTE(v13) = *(a2 + 88);
          goto LABEL_18;
        }

        if (*(a2 + 92) <= 1u)
        {
          ++*a4;
          ++*a3;
          LOBYTE(v13) = *(a2 + 88);
          if ((v13 & 4) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      else
      {
        sub_297E4E0B0(2, a1, 3u, 2u, "No Poll Nfc-Dep parameters are being requested by the user to configure");
      }

      sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidatePollNfcDepParams");
      v11 = "phNciNfc_ValidatePollNfcDepParams failed";
      goto LABEL_118;
    }

    sub_297E4E0B0(2, a1, 3u, 4u, "No set config entries");
    v8 = 1;
  }

LABEL_119:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateSetConfParams");
  return v8;
}

uint64_t sub_297E64A78(uint64_t a1, int *a2, _WORD *a3, _BYTE *a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateCommonParams");
  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_20;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  ++*a4;
  LOWORD(v8) = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    LOWORD(v8) = 0;
  }

  *a3 = -v8;
  LOBYTE(v8) = *a2;
  if ((*a2 & 2) != 0)
  {
LABEL_8:
    if (*(a2 + 6))
    {
      ++*a4;
      ++*a3;
      LOBYTE(v8) = *a2;
    }
  }

LABEL_10:
  if ((v8 & 0x10) != 0)
  {
    ++*a4;
    ++*a3;
    LOBYTE(v8) = *a2;
  }

  if ((v8 & 4) != 0)
  {
    ++*a4;
    if (*(a2 + 7) > 1u)
    {
      goto LABEL_20;
    }

    v10 = *a3;
    if (v10 == 0xFFFF)
    {
      goto LABEL_20;
    }

    *a3 = v10 + 1;
    if ((*a2 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_18:
    ++*a4;
    if (*(a2 + 8) <= 1u)
    {
      v9 = 0;
      ++*a3;
      goto LABEL_21;
    }

LABEL_20:
    v9 = 1;
    goto LABEL_21;
  }

  if ((v8 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v9 = 0;
LABEL_21:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateCommonParams");
  return v9;
}

uint64_t sub_297E64BE8(uint64_t a1, int *a2, _WORD *a3, _BYTE *a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidatePropConfigParams");
  v8 = *a2;
  if (!*a2)
  {
    v9 = 1;
    goto LABEL_40;
  }

  if (v8)
  {
    ++*a4;
    v10 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v10 = 0;
    }

    *a3 = -v10;
    v8 = *a2;
    if ((*a2 & 2) == 0)
    {
LABEL_4:
      if ((v8 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_14:
      ++*a4;
      v14 = -2 - *a3;
      if (*a3 == 0xFFFF)
      {
        v14 = 0;
      }

      *a3 = -v14;
      if ((*a2 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_4;
  }

  ++*a4;
  v11 = *a3;
  v12 = v11 <= 0xFFFD;
  v13 = -3 - v11;
  if (!v12)
  {
    v13 = 0;
  }

  *a3 = -v13;
  v8 = *a2;
  if ((*a2 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v8 & 8) == 0)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_22;
  }

LABEL_17:
  ++*a4;
  if (*(a2 + 9) > 1u)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v15 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v15 = 0;
    }

    *a3 = -v15;
  }

LABEL_22:
  v16 = *a2;
  if ((*a2 & 0x10) != 0)
  {
    ++*a4;
    v19 = *a3;
    v12 = v19 <= 0xFFFD;
    v20 = -3 - v19;
    if (!v12)
    {
      v20 = 0;
    }

    *a3 = -v20;
    v16 = *a2;
    if ((*a2 & 0x20) == 0)
    {
LABEL_24:
      if ((v16 & 0x40) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_47;
    }
  }

  else if ((v16 & 0x20) == 0)
  {
    goto LABEL_24;
  }

  ++*a4;
  v21 = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    v21 = 0;
  }

  *a3 = -v21;
  v16 = *a2;
  if ((*a2 & 0x40) == 0)
  {
LABEL_25:
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_50;
  }

LABEL_47:
  ++*a4;
  v22 = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    v22 = 0;
  }

  *a3 = -v22;
  v16 = *a2;
  if ((*a2 & 0x80) == 0)
  {
LABEL_26:
    if ((v16 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

LABEL_50:
  ++*a4;
  v23 = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    v23 = 0;
  }

  *a3 = -v23;
  v16 = *a2;
  if ((*a2 & 0x100) == 0)
  {
LABEL_27:
    if ((v16 & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_54;
  }

LABEL_53:
  ++*a4;
  *a3 += *(a2 + 72) + 1;
  v16 = *a2;
  if ((*a2 & 0x200) == 0)
  {
LABEL_28:
    if ((v16 & 0x400) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_55;
  }

LABEL_54:
  ++*a4;
  *a3 += *(a2 + 123) + 1;
  v16 = *a2;
  if ((*a2 & 0x400) == 0)
  {
LABEL_29:
    if ((v16 & 0x800) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_58;
  }

LABEL_55:
  ++*a4;
  v24 = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    v24 = 0;
  }

  *a3 = -v24;
  v16 = *a2;
  if ((*a2 & 0x800) == 0)
  {
LABEL_30:
    if ((v16 & 0x1000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_61;
  }

LABEL_58:
  ++*a4;
  v25 = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    v25 = 0;
  }

  *a3 = -v25;
  v16 = *a2;
  if ((*a2 & 0x1000) == 0)
  {
LABEL_31:
    if ((v16 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_61:
  ++*a4;
  v26 = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    v26 = 0;
  }

  *a3 = -v26;
  v16 = *a2;
  if ((*a2 & 0x2000) == 0)
  {
LABEL_32:
    if ((v16 & 0x4000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_67;
  }

LABEL_64:
  ++*a4;
  v27 = *a3;
  v12 = v27 <= 0xFFFB;
  v28 = -5 - v27;
  if (!v12)
  {
    v28 = 0;
  }

  *a3 = -v28;
  v16 = *a2;
  if ((*a2 & 0x4000) == 0)
  {
LABEL_33:
    if ((v16 & 0x10000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_70;
  }

LABEL_67:
  ++*a4;
  v29 = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    v29 = 0;
  }

  *a3 = -v29;
  v16 = *a2;
  if ((*a2 & 0x10000) == 0)
  {
LABEL_34:
    if ((v16 & 0x8000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_70:
  ++*a4;
  v30 = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    v30 = 0;
  }

  *a3 = -v30;
  v16 = *a2;
  if ((*a2 & 0x8000) == 0)
  {
LABEL_35:
    if ((v16 & 0x20000) == 0)
    {
      goto LABEL_36;
    }

LABEL_76:
    ++*a4;
    v33 = *(a2 + 183) + *a3;
    if ((v33 + 1) < 0x10000)
    {
      v34 = v33 + 1;
    }

    else
    {
      v34 = 0;
    }

    *a3 = v34;
    if ((*a2 & 0x80000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

LABEL_73:
  ++*a4;
  v31 = *a3;
  v12 = v31 <= 0xFFFA;
  v32 = -6 - v31;
  if (!v12)
  {
    v32 = 0;
  }

  *a3 = -v32;
  v16 = *a2;
  if ((*a2 & 0x20000) != 0)
  {
    goto LABEL_76;
  }

LABEL_36:
  if ((v16 & 0x80000) == 0)
  {
    goto LABEL_40;
  }

LABEL_37:
  ++*a4;
  v17 = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    v17 = 0;
  }

  *a3 = -v17;
LABEL_40:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidatePropConfigParams");
  return v9;
}

uint64_t sub_297E65014(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_BuildSetConfCmdPayload");
  v6 = *(a2 + 4);
  if ((v6 & 4) != 0)
  {
    sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_BuildPollNfcFParams");
    if ((*(a2 + 24) & 1) == 0 || sub_297E65D5C(a1, a3, 0x18u, 1, a2 + 28))
    {
      sub_297E4E0B0(2, a1, 3u, 2u, "Poll Nfc-F disc config framing failed");
      v9 = "phNciNfc_BuildPollNfcFParams";
      goto LABEL_185;
    }

    sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_BuildPollNfcFParams");
    v6 = *(a2 + 4);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_18;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_18;
  }

  v28 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_BuildPollNfcDepParams");
  v7 = *(a2 + 88);
  if (v7)
  {
    if (sub_297E65D5C(a1, a3, 0x28u, 1, a2 + 92))
    {
      goto LABEL_12;
    }

    v7 = *(a2 + 88);
  }

  if ((v7 & 2) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(a2 + 141);
  if (v8 > 0x30)
  {
    goto LABEL_10;
  }

  if (sub_297E65D5C(a1, a3, 0x29u, v8, a2 + 93))
  {
LABEL_12:
    v9 = "phNciNfc_BuildPollNfcDepParams";
LABEL_185:
    sub_297E4DFAC(2, a1, 3u, 5u, v9);
    goto LABEL_186;
  }

  v7 = *(a2 + 88);
LABEL_10:
  if ((v7 & 4) != 0)
  {
    v28 = (8 * *(a2 + 144)) & 0x30 | (4 * (*(a2 + 144) & 1));
    if (sub_297E65D5C(a1, a3, 0x2Au, 1, &v28))
    {
      goto LABEL_12;
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_BuildPollNfcDepParams");
  v6 = *(a2 + 4);
LABEL_18:
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_35;
  }

  v29 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_BuildLstnNfcAParams");
  v10 = *(a2 + 148);
  if (v10)
  {
    if (sub_297E65D5C(a1, a3, 0x30u, 1, a2 + 152))
    {
      goto LABEL_27;
    }

    v10 = *(a2 + 148);
  }

  if ((v10 & 2) != 0)
  {
    if (!sub_297E65D5C(a1, a3, 0x31u, 1, a2 + 153))
    {
      v10 = *(a2 + 148);
      goto LABEL_25;
    }

LABEL_27:
    v9 = "phNciNfc_BuildLstnNfcAParams";
    goto LABEL_185;
  }

LABEL_25:
  if ((v10 & 4) != 0)
  {
    v29 = 32 * (*(a2 + 156) & 3);
    if (sub_297E65D5C(a1, a3, 0x32u, 1, &v29))
    {
      goto LABEL_27;
    }

    v10 = *(a2 + 148);
  }

  if ((v10 & 8) != 0 && (v11 = *(a2 + 170), v11 < 0xB))
  {
    v12 = sub_297E65D5C(a1, a3, 0x33u, v11, a2 + 160);
    sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_BuildLstnNfcAParams");
    if (v12)
    {
      goto LABEL_186;
    }
  }

  else
  {
    sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_BuildLstnNfcAParams");
  }

  v6 = *(a2 + 4);
LABEL_35:
  if ((v6 & 0x40) == 0)
  {
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_68;
  }

  v30 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_BuildLstnNfcBParams");
  v16 = *(a2 + 172);
  if (v16)
  {
    HIBYTE(v30) = *(a2 + 176) & 1;
    if (sub_297E65D5C(a1, a3, 0x38u, 1, &v30 + 1))
    {
      goto LABEL_66;
    }

    v16 = *(a2 + 172);
  }

  if ((v16 & 2) != 0)
  {
    if (sub_297E65D5C(a1, a3, 0x39u, 4, a2 + 180))
    {
      goto LABEL_66;
    }

    v16 = *(a2 + 172);
  }

  if ((v16 & 4) != 0)
  {
    if (sub_297E65D5C(a1, a3, 0x3Au, 4, a2 + 184))
    {
      goto LABEL_66;
    }

    v16 = *(a2 + 172);
  }

  if ((v16 & 8) != 0)
  {
    if (!sub_297E65D5C(a1, a3, 0x3Bu, 1, a2 + 188))
    {
      v16 = *(a2 + 172);
      goto LABEL_64;
    }

LABEL_66:
    v9 = "phNciNfc_BuildLstnNfcBParams";
    goto LABEL_185;
  }

LABEL_64:
  if ((v16 & 0x10) != 0)
  {
    LOBYTE(v30) = *(a2 + 192) & 1 | (4 * ((*(a2 + 192) >> 1) & 3));
    if (sub_297E65D5C(a1, a3, 0x3Cu, 1, &v30))
    {
      goto LABEL_66;
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_BuildLstnNfcBParams");
  v6 = *(a2 + 4);
  if ((v6 & 0x80) == 0)
  {
LABEL_37:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_38;
  }

LABEL_68:
  v32 = 0;
  v31 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_BuildLstnNfcFParams");
  v17 = *(a2 + 196);
  if (v17)
  {
    HIBYTE(v32) = 2 * (*(a2 + 200) & 3);
    if (sub_297E65D5C(a1, a3, 0x54u, 1, &v32 + 1))
    {
      goto LABEL_79;
    }

    v17 = *(a2 + 196);
  }

  if ((v17 & 2) != 0)
  {
    LOBYTE(v32) = 2 * (*(a2 + 204) & 1);
    if (sub_297E65D5C(a1, a3, 0x50u, 1, &v32))
    {
      goto LABEL_79;
    }

    v17 = *(a2 + 196);
  }

  if ((v17 & 8) == 0)
  {
    goto LABEL_77;
  }

  if (sub_297E65D5C(a1, a3, 0x51u, 8, a2 + 369))
  {
LABEL_79:
    v9 = "phNciNfc_BuildLstnNfcFParams";
    goto LABEL_185;
  }

  v17 = *(a2 + 196);
LABEL_77:
  if ((v17 & 0x10) != 0)
  {
    v31 = bswap32(*(a2 + 378)) >> 16;
    if (sub_297E65D5C(a1, a3, 0x53u, 2, &v31))
    {
      goto LABEL_79;
    }

    v17 = *(a2 + 196);
  }

  if ((v17 & 4) != 0)
  {
    v18 = 0;
    v19 = a2 + 209;
    do
    {
      if ((*(a2 + 378) >> v18))
      {
        sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetT3tTagId");
        v20 = v18 >= 4 ? 0 : v18 + 64;
        sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetT3tTagId");
        if (sub_297E65D5C(a1, a3, v20, 10, v19))
        {
          goto LABEL_79;
        }
      }

      ++v18;
      v19 += 10;
    }

    while (v18 != 16);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_BuildLstnNfcFParams");
  v6 = *(a2 + 4);
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_91;
  }

LABEL_38:
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_BuildLstnIsoDepParams");
  v13 = *(a2 + 380);
  if (v13)
  {
    if (sub_297E65D5C(a1, a3, 0x58u, 1, a2 + 384))
    {
      goto LABEL_51;
    }

    v13 = *(a2 + 380);
  }

  if ((v13 & 2) != 0)
  {
    v14 = *(a2 + 433);
    if (v14 <= 0x30)
    {
      if (sub_297E65D5C(a1, a3, 0x59u, v14, a2 + 385))
      {
        goto LABEL_51;
      }

      v13 = *(a2 + 380);
    }
  }

  if ((v13 & 4) == 0)
  {
    goto LABEL_49;
  }

  v15 = *(a2 + 482);
  if (v15 > 0x30)
  {
    goto LABEL_49;
  }

  if (sub_297E65D5C(a1, a3, 0x5Au, v15, a2 + 434))
  {
LABEL_51:
    v9 = "phNciNfc_BuildLstnIsoDepParams";
    goto LABEL_185;
  }

  v13 = *(a2 + 380);
LABEL_49:
  if ((v13 & 8) != 0 && sub_297E65D5C(a1, a3, 0x5Bu, 1, a2 + 483))
  {
    goto LABEL_51;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_BuildLstnIsoDepParams");
  v6 = *(a2 + 4);
LABEL_91:
  if ((v6 & 0x400) == 0)
  {
    goto LABEL_102;
  }

  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_BuildCommonParams");
  v21 = *(a2 + 544);
  if (v21)
  {
    if (sub_297E65D5C(a1, a3, 0, 2, a2 + 548))
    {
      goto LABEL_100;
    }

    v21 = *(a2 + 544);
  }

  if ((v21 & 4) == 0)
  {
    goto LABEL_98;
  }

  if (sub_297E65D5C(a1, a3, 0x80u, 1, a2 + 551))
  {
LABEL_100:
    v9 = "phNciNfc_BuildCommonParams";
    goto LABEL_185;
  }

  v21 = *(a2 + 544);
LABEL_98:
  if ((v21 & 8) != 0 && sub_297E65D5C(a1, a3, 0x81u, 1, a2 + 552))
  {
    goto LABEL_100;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_BuildCommonParams");
  v6 = *(a2 + 4);
LABEL_102:
  if ((v6 & 0x1000) == 0)
  {
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_104;
    }

LABEL_161:
    sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_BuildSwpConfigParams");
    v25 = *(a2 + 1128);
    if ((v25 & 2) != 0)
    {
      if (sub_297E65D5C(a1, a3, 0xA0D1u, 2, a2 + 1137))
      {
        goto LABEL_184;
      }

      v25 = *(a2 + 1128);
    }

    if ((v25 & 0x2000) != 0 && sub_297E65D5C(a1, a3, 0xA0D3u, 2, a2 + 1157))
    {
      goto LABEL_184;
    }

    v26 = *(a2 + 1132);
    if (v26)
    {
      if (sub_297E65D5C(a1, a3, 0xA0ECu, 2, a2 + 1170))
      {
        goto LABEL_184;
      }

      v26 = *(a2 + 1132);
    }

    if ((v26 & 2) != 0)
    {
      if (sub_297E65D5C(a1, a3, 0xA0D4u, 2, a2 + 1171))
      {
        goto LABEL_184;
      }

      v26 = *(a2 + 1132);
    }

    if ((v26 & 4) != 0)
    {
      if (sub_297E65D5C(a1, a3, 0xA0EDu, 2, a2 + 1172))
      {
        goto LABEL_184;
      }

      v26 = *(a2 + 1132);
    }

    if ((v26 & 8) != 0)
    {
      if (sub_297E65D5C(a1, a3, 0xA0A2u, 2, a2 + 1173))
      {
        goto LABEL_184;
      }

      v26 = *(a2 + 1132);
    }

    if (((v26 & 0x20) == 0 || !sub_297E65D5C(a1, a3, 0xA0F2u, 2, a2 + 1175)) && ((*(a2 + 1131) & 1) == 0 || !sub_297E65D5C(a1, a3, 0xA0F5u, 2, a2 + 1176)) && ((*(a2 + 1144) & 0x80) == 0 || !sub_297E65D5C(a1, a3, 0xA0EBu, 9, a2 + 1392)))
    {
      sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_BuildSwpConfigParams");
      v6 = *(a2 + 4);
      if ((v6 & 0x8000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_105;
    }

LABEL_184:
    v9 = "phNciNfc_BuildSwpConfigParams";
    goto LABEL_185;
  }

  v33 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_BuildSysConfigParams");
  v23 = *(a2 + 580);
  if ((v23 & 2) != 0)
  {
    if (sub_297E65D5C(a1, a3, 0xA002u, 2, a2 + 586))
    {
      goto LABEL_159;
    }

    v23 = *(a2 + 580);
  }

  if ((v23 & 8) != 0)
  {
    if (sub_297E65D5C(a1, a3, 0xA004u, 2, a2 + 587))
    {
      goto LABEL_159;
    }

    v23 = *(a2 + 580);
  }

  if ((v23 & 4) != 0)
  {
    HIBYTE(v33) = (*(a2 + 592) | (8 * *(a2 + 588))) & 0xF;
    v24 = sub_297E65D5C(a1, a3, 0xA003u, 2, &v33 + 1);
    if (*(a2 + 588) == 1)
    {
      v24 = sub_297E65D5C(a1, a3, 0xA011u, 5, a2 + 596);
    }

    if (v24)
    {
      goto LABEL_159;
    }

    v23 = *(a2 + 580);
  }

  if ((v23 & 0x20) != 0)
  {
    if (sub_297E65D5C(a1, a3, 0xA006u, 2, a2 + 601))
    {
      goto LABEL_159;
    }

    v23 = *(a2 + 580);
  }

  if ((v23 & 0x40) != 0)
  {
    LOBYTE(v33) = *(a2 + 604) | (2 * *(a2 + 608));
    if (sub_297E65D5C(a1, a3, 0xA007u, 2, &v33))
    {
      goto LABEL_159;
    }

    v23 = *(a2 + 580);
  }

  if ((v23 & 0x80) != 0)
  {
    if (sub_297E65D5C(a1, a3, 0xA00Fu, 65, a2 + 612))
    {
      goto LABEL_159;
    }

    v23 = *(a2 + 580);
  }

  if ((v23 & 0x1000) != 0)
  {
    if (sub_297E65D5C(a1, a3, 0xA017u, (*(a2 + 682) + 1), a2 + 683))
    {
      goto LABEL_159;
    }

    v23 = *(a2 + 580);
  }

  if ((v23 & 0x2000) != 0)
  {
    if (sub_297E65D5C(a1, a3, 0xA018u, (*(a2 + 714) + 1), a2 + 715))
    {
      goto LABEL_159;
    }

    v23 = *(a2 + 580);
  }

  if ((v23 & 0x4000) != 0)
  {
    if (sub_297E65D5C(a1, a3, 0xA019u, 2, a2 + 932))
    {
      goto LABEL_159;
    }

    v23 = *(a2 + 580);
  }

  if ((v23 & 0x8000) != 0)
  {
    if (sub_297E65D5C(a1, a3, 0xA0D5u, 2, a2 + 936))
    {
      goto LABEL_159;
    }

    v23 = *(a2 + 580);
  }

  if ((v23 & 0x20000) != 0)
  {
    if (sub_297E65D5C(a1, a3, 0xA01Au, (*(a2 + 945) + 1), a2 + 941))
    {
      goto LABEL_159;
    }

    v23 = *(a2 + 580);
  }

  if ((v23 & 0x40000) != 0)
  {
    if (sub_297E65D5C(a1, a3, 0xA01Bu, (*(a2 + 1042) + 1), a2 + 946))
    {
      goto LABEL_159;
    }

    v23 = *(a2 + 580);
  }

  if ((v23 & 0x80000) != 0)
  {
    if (sub_297E65D5C(a1, a3, 0xA027u, (*(a2 + 1071) + 1), a2 + 1043))
    {
      goto LABEL_159;
    }

    v23 = *(a2 + 580);
  }

  if ((v23 & 0x100000) != 0)
  {
    if (!sub_297E65D5C(a1, a3, 0xA01Cu, (*(a2 + 1116) + 1), a2 + 1072))
    {
      v23 = *(a2 + 580);
      goto LABEL_157;
    }

LABEL_159:
    v9 = "phNciNfc_BuildSysConfigParams";
    goto LABEL_185;
  }

LABEL_157:
  if ((v23 & 0x10000) != 0 && sub_297E65D5C(a1, a3, 0xA037u, 2, a2 + 940))
  {
    goto LABEL_159;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_BuildSysConfigParams");
  v6 = *(a2 + 4);
  if ((v6 & 0x2000) != 0)
  {
    goto LABEL_161;
  }

LABEL_104:
  if ((v6 & 0x8000) == 0)
  {
    goto LABEL_107;
  }

LABEL_105:
  if (sub_297F04328(a1, a3, (a2 + 1408)))
  {
    goto LABEL_186;
  }

  v6 = *(a2 + 4);
LABEL_107:
  if ((v6 & 0x10000) != 0)
  {
    if (!sub_297E65F00(a1, a3, (a2 + 1536)))
    {
      v6 = *(a2 + 4);
      goto LABEL_110;
    }

LABEL_186:
    sub_297E4E0B0(2, a1, 3u, 1u, "Framing failed!");
    v22 = 255;
    goto LABEL_187;
  }

LABEL_110:
  if ((v6 & 0x4000) != 0 && sub_297F04604(a1, a3, (a2 + 1740)))
  {
    goto LABEL_186;
  }

  v22 = 0;
LABEL_187:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_BuildSetConfCmdPayload");
  return v22;
}

uint64_t sub_297E65C94(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_BuildSetConfPayload");
  if (a2 && a3)
  {
    v10 = a3;
    LODWORD(v11) = 1;
    HIDWORD(v11) = a4;
    v8 = sub_297E65014(a1, a2, &v10);
  }

  else
  {
    sub_297E4E0B0(2, a1, 3u, 2u, "Invalid input parameters");
    v8 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_BuildSetConfPayload");
  return v8;
}

uint64_t sub_297E65D5C(uint64_t a1, uint64_t *a2, unsigned int a3, int a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_TlvUtilsAddTlv");
  if (a1)
  {
    v10 = *(a1 + 6524);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:
    if (!*a2)
    {
      v13 = "phNciNfc_TlvUtilsAddTlv: Invalid input parameters";
      v14 = 1;
      goto LABEL_9;
    }

    v11 = *(a2 + 2);
    v12 = a4 + 2;
    if (*(a2 + 3) - v11 < (a4 + 2))
    {
      v13 = "phNciNfc_TlvUtilsAddTlv: Not enough memory in TLV buffer";
      v14 = 3;
LABEL_9:
      sub_297E4E0B0(2, a1, 3u, 1u, v13);
      goto LABEL_22;
    }

    *(*a2 + v11) = a3;
    v15 = *a2;
    v16 = *(a2 + 2);
    if (((a3 >> 8) & 0xFE) == 0xA0)
    {
      *(v15 + v16) = BYTE1(a3);
      *(*a2 + (*(a2 + 2) + 1)) = a3;
      if (a4)
      {
        LOBYTE(a4) = a4 - 1;
      }

      else
      {
        LOBYTE(a4) = 0;
      }

      *(*a2 + (*(a2 + 2) + 2)) = a4;
      v17 = (*(a2 + 2) + 3);
    }

    else
    {
      *(v15 + (v16 + 1)) = a4;
      v18 = (*(a2 + 2) + 2);
    }

    if (a4)
    {
      if (!a5)
      {
        v14 = 1;
        sub_297E4E0B0(2, a1, 3u, 1u, "phNciNfc_TlvUtilsAddTlv: pointer to Value field of tlv is invalid");
        goto LABEL_21;
      }

      v19 = *a2;
      phOsalNfc_MemCopy();
    }

    v14 = 0;
LABEL_21:
    *(a2 + 2) += v12;
    goto LABEL_22;
  }

  v14 = 1;
LABEL_22:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_TlvUtilsAddTlv");
  return v14;
}

uint64_t sub_297E65F00(uint64_t a1, uint64_t *a2, int *a3)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_BuildPropConfigParams");
  v6 = *a3;
  if ((*a3 & 0x10) == 0)
  {
    goto LABEL_20;
  }

  v7 = *(a3 + 8);
  v8 = v7 & 0x22;
  if ((v7 & 0x1F) == 0 && v8 != 34)
  {
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v9 = 2;
    HIBYTE(v14) = 2;
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v8 == 34)
  {
    v10 = (v7 >> 1) & 7 | (16 * (v7 & 1)) & 0xBF | (((v7 & 0x10) != 0) << 6) | 8;
  }

  else
  {
    v10 = (v7 >> 1) & 7 | (16 * (v7 & 1)) & 0xBF | (((v7 & 0x10) != 0) << 6);
  }

  LOBYTE(v14) = v10;
  if ((v7 & 0x40) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v9 = 0;
  if ((v7 & 0x80) != 0)
  {
LABEL_12:
    v9 |= 4u;
    HIBYTE(v14) = v9;
  }

LABEL_13:
  if ((v7 & 0x100) != 0)
  {
    v9 |= 8u;
    HIBYTE(v14) = v9;
    if ((v7 & 0x200) == 0)
    {
LABEL_15:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_16;
      }

LABEL_65:
      v9 |= 0x40u;
      HIBYTE(v14) = v9;
      if ((v7 & 0x800) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v7 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  v9 |= 0x10u;
  HIBYTE(v14) = v9;
  if ((v7 & 0x400) != 0)
  {
    goto LABEL_65;
  }

LABEL_16:
  if ((v7 & 0x800) != 0)
  {
LABEL_17:
    HIBYTE(v14) = v9 | 0x20;
  }

LABEL_18:
  if (sub_297E65D5C(a1, a2, 0xA01Du, 3, &v14))
  {
    goto LABEL_61;
  }

  v6 = *a3;
LABEL_20:
  if ((v6 & 0x20) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA039u, 2, (a3 + 5)))
    {
      goto LABEL_61;
    }

    v6 = *a3;
  }

  if ((v6 & 0x40) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA0FAu, 2, a3 + 10))
    {
      goto LABEL_61;
    }

    v6 = *a3;
  }

  if ((v6 & 0x80) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA040u, 2, a3 + 21))
    {
      goto LABEL_61;
    }

    v6 = *a3;
  }

  if ((v6 & 0x100) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA068u, (*(a3 + 72) + 1), a3 + 22))
    {
      goto LABEL_61;
    }

    v6 = *a3;
  }

  if ((v6 & 0x200) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA0C4u, (*(a3 + 123) + 1), a3 + 73))
    {
      goto LABEL_61;
    }

    v6 = *a3;
  }

  if ((v6 & 0x400) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA0BCu, 2, (a3 + 31)))
    {
      goto LABEL_61;
    }

    v6 = *a3;
  }

  if ((v6 & 0x800) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA08Fu, 2, a3 + 11))
    {
      goto LABEL_61;
    }

    v6 = *a3;
  }

  if ((v6 & 0x1000) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA08Eu, 2, a3 + 125))
    {
      goto LABEL_61;
    }

    v6 = *a3;
  }

  if ((v6 & 0x2000) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA00Du, 5, (a3 + 50)))
    {
      goto LABEL_61;
    }

    v6 = *a3;
  }

  if ((v6 & 0x4000) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA0BFu, 2, (a3 + 3)))
    {
      goto LABEL_61;
    }

    v6 = *a3;
  }

  if ((v6 & 0x10000) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA111u, 2, (a3 + 33)))
    {
      goto LABEL_61;
    }

    v6 = *a3;
  }

  if ((v6 & 0x20000) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA110u, (*(a3 + 183) + 1), a3 + 133))
    {
      goto LABEL_61;
    }

    v6 = *a3;
  }

  if ((v6 & 0x8000) != 0)
  {
    v13[0] = *(a3 + 126) | (2 * *(a3 + 127));
    *&v13[1] = a3[32];
    if (sub_297E65D5C(a1, a2, 0xA0E7u, 6, v13))
    {
      goto LABEL_61;
    }

    v6 = *a3;
  }

  if ((v6 & 0x80000) == 0 || !sub_297E65D5C(a1, a2, 0xA137u, 2, a3 + 13))
  {
    v11 = 0;
    goto LABEL_62;
  }

LABEL_61:
  v11 = 1;
LABEL_62:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_BuildPropConfigParams");
  return v11;
}