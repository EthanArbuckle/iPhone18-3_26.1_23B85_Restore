uint64_t sub_297ED5C84(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_GetAvailableHead");
  if (!a1)
  {
    goto LABEL_9;
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
  if (v6 == a1)
  {
    v7 = 0;
    while (*(a1 + 928 + 8 * v7))
    {
      if (++v7 == 3)
      {
        goto LABEL_9;
      }
    }

    v8 = 0;
    *a2 = v7;
  }

  else
  {
LABEL_9:
    v8 = 255;
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_GetAvailableHead");
  return v8;
}

uint64_t sub_297ED5D54(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v44 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MapRemoteDevNfcIp1");
  if (!a2 || !a3)
  {
    v8 = 1;
    sub_297E4E0B0(2, a1, 4u, 1u, "Invalid input parameter!");
    goto LABEL_6;
  }

  if (sub_297EE5B30(a1, *(a3 + 36), &v44))
  {
    goto LABEL_4;
  }

  v10 = 1;
  if (a4 > 130)
  {
    if (a4 != 131 && a4 != 133)
    {
      goto LABEL_13;
    }
  }

  else if (a4 != 3 && a4 != 5)
  {
LABEL_13:
    v10 = *(a3 + 32);
  }

  *(a2 + 63) = v10;
  *(a2 + 68) = v44;
  v8 = 255;
  if (a4 <= 127)
  {
    if (a4 > 2)
    {
      if (a4 != 3)
      {
        if (a4 != 5)
        {
          goto LABEL_6;
        }

LABEL_25:
        v11 = *(a3 + 10);
        *(a2 + 10) = v11;
        if (v11)
        {
          v12 = *(a1 + 9792);
          phOsalNfc_SetMemory();
          if (*(a2 + 10) > 0xAu)
          {
            sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Received NFCID length exceeded max UID length");
            v8 = 255;
            goto LABEL_57;
          }

          v13 = *(a1 + 9792);
          phOsalNfc_MemCopy();
        }

        v8 = 0;
LABEL_57:
        if (*(a3 + 103) >= 0xFu)
        {
          if (!*(a2 + 10))
          {
            *(a2 + 10) = 8;
            v30 = *(a1 + 9792);
            phOsalNfc_SetMemory();
            v31 = *(a1 + 9792);
            phOsalNfc_MemCopy();
          }

          v32 = *(a3 + 54);
          *(a2 + 64) = (4 * v32) & 0xC0;
          v33 = *(a1 + 9792);
          phOsalNfc_SetMemory();
          *(a2 + 59) = 0;
          if ((v32 & 2) != 0)
          {
            v34 = *(a3 + 103);
            if (v34 >= 0x10)
            {
              *(a2 + 59) = v34 - 15;
              if (v34 <= 0x30)
              {
                v35 = *(a1 + 9792);
LABEL_77:
                phOsalNfc_MemCopy();
                goto LABEL_6;
              }

              goto LABEL_72;
            }
          }
        }

        goto LABEL_6;
      }
    }

    else if (a4)
    {
      if (a4 != 2)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

    v17 = *(a3 + 10);
    *(a2 + 10) = v17;
    if (v17)
    {
      if (v17 > 0xA)
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Received NFCID length exceeded max UID length");
        v8 = 255;
LABEL_47:
        *(a2 + 61) = 0;
        if (*(a3 + 31) == 2)
        {
          v25 = *(a1 + 9792);
          phOsalNfc_MemCopy();
        }

        *(a2 + 60) = 0;
        if (*(a3 + 12))
        {
          *(a2 + 60) = *(a3 + 11);
        }

        if (*(a3 + 103) < 0xFu)
        {
          goto LABEL_6;
        }

        v26 = *(a3 + 54);
        *(a2 + 64) = (4 * v26) & 0xC0;
        v27 = *(a1 + 9792);
        phOsalNfc_SetMemory();
        *(a2 + 59) = 0;
        if ((v26 & 2) != 0)
        {
          v28 = *(a3 + 103);
          if (v28 >= 0x10)
          {
            *(a2 + 59) = v28 - 15;
            if (v28 > 0x30)
            {
              sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Received ATRInfo length exceeded max ATR length");
              v8 = 255;
            }

            else
            {
              v29 = *(a1 + 9792);
              phOsalNfc_MemCopy();
            }
          }
        }

        if (*(a2 + 10))
        {
          goto LABEL_6;
        }

        goto LABEL_76;
      }

      v18 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      v19 = *(a1 + 9792);
      v20 = *(a2 + 10);
      phOsalNfc_MemCopy();
    }

    v8 = 0;
    goto LABEL_47;
  }

  if (a4 <= 130)
  {
    if (a4 != 128)
    {
      if (a4 != 130)
      {
        goto LABEL_6;
      }

      goto LABEL_31;
    }

LABEL_39:
    if (*(a3 + 103) < 0xEu)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v21 = *(a3 + 53);
    *(a2 + 64) = (4 * v21) & 0xC0;
    v22 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    *(a2 + 59) = 0;
    if ((v21 & 2) != 0)
    {
      v23 = *(a3 + 103);
      if (v23 >= 0xF)
      {
        *(a2 + 59) = v23 - 14;
        if (v23 > 0x30)
        {
          sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Received ATRInfo length exceeded max ATR length");
          v8 = 255;
          goto LABEL_76;
        }

        v24 = *(a1 + 9792);
        phOsalNfc_MemCopy();
      }
    }

    v8 = 0;
LABEL_76:
    *(a2 + 10) = 10;
    v42 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    v43 = *(a1 + 9792);
    goto LABEL_77;
  }

  if (a4 == 131)
  {
    goto LABEL_39;
  }

  if (a4 != 133)
  {
    goto LABEL_6;
  }

LABEL_31:
  v14 = *(a3 + 10);
  *(a2 + 10) = v14;
  if (v14)
  {
    v15 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    if (*(a2 + 10) > 0xAu)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Received NFCID length exceeded max UID length");
      v8 = 255;
      goto LABEL_65;
    }

    v16 = *(a1 + 9792);
    phOsalNfc_MemCopy();
  }

  v8 = 0;
LABEL_65:
  if (*(a3 + 103) >= 0xEu)
  {
    if (!*(a2 + 10))
    {
      *(a2 + 10) = 8;
      v36 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      v37 = *(a1 + 9792);
      phOsalNfc_MemCopy();
    }

    v38 = *(a3 + 53);
    *(a2 + 64) = (4 * v38) & 0xC0;
    v39 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    *(a2 + 59) = 0;
    if ((v38 & 2) != 0)
    {
      v40 = *(a3 + 103);
      if (v40 >= 0xF)
      {
        *(a2 + 59) = v40 - 14;
        if (v40 <= 0x30)
        {
          v41 = *(a1 + 9792);
          goto LABEL_77;
        }

LABEL_72:
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Received ATRInfo length exceeded max ATR length");
LABEL_4:
        v8 = 255;
      }
    }
  }

LABEL_6:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MapRemoteDevNfcIp1");
  return v8;
}

uint64_t sub_297ED62FC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_CoreDeleteList");
  if (a2)
  {
    if (a3 < 6)
    {
      if (a1)
      {
        v6 = *(a1 + 956);
      }

      v7 = a2 + 124;
      *(a2 + 124 + 4 * a3) = 0;
      v8 = *(a2 + 64 + 8 * a3);
      v9 = a3;
      if (v8)
      {
        v10 = *(v8 + 264);
        if (v10)
        {
          do
          {
            v11 = v10;
            phOsalNfc_FreeMemory();
            v10 = *(v11 + 264);
          }

          while (v10);
        }

        else
        {
          v12 = *(a2 + 64 + 8 * a3);
        }

        phOsalNfc_FreeMemory();
        *(a2 + 64 + 8 * v9) = 0;
        *(a2 + 2 * v9 + 112) = 1;
        *(v7 + 4 * v9) = 0;
      }

      else
      {
        sub_297E4E0B0(2, a1, 7u, 4u, "phHciNfc_CoreDeleteList:List is empty");
        *(v7 + 4 * a3) = 0;
        *(a2 + 2 * a3 + 112) = 1;
      }
    }

    else
    {
      sub_297E4E0B0(2, a1, 7u, 4u, "phHciNfc_CoreDeleteList : Index out of boundary ");
    }
  }

  else
  {
    sub_297E4E0B0(2, a1, 7u, 1u, "phHciNfc_CoreDeleteList:NULL HCI Core context!");
  }

  return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_CoreDeleteList");
}

uint64_t sub_297ED646C(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_CoreGetNewNode");
  if (!a2)
  {
    goto LABEL_16;
  }

  if (a1)
  {
    v8 = *(a1 + 956);
  }

  v9 = a2 + 64;
  v10 = *(a2 + 64 + 8 * a4);
  if (!v10)
  {
    *(v9 + 8 * a4) = phOsalNfc_GetMemory_Typed();
    phOsalNfc_SetMemory();
    v21 = *(v9 + 8 * a4);
    *(v21 + 264) = 0;
    v14 = *(v9 + 8 * a4);
    *(v21 + 260) = 0;
    *(v14 + 264) = 0;
    *(v14 + 260) = a3;
    *(a2 + 4 * a4 + 124) = a3 - 2;
    goto LABEL_17;
  }

  do
  {
    v11 = v10;
    v10 = *(v10 + 264);
  }

  while (v10);
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  *(v11 + 264) = Memory_Typed;
  if (!Memory_Typed)
  {
    sub_297E4E0B0(2, a1, 7u, 1u, "phHciNfc_CoreGetNewNode:Memory allocation failed while creating new node!");
LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  ++*(a2 + 2 * a4 + 112);
  phOsalNfc_SetMemory();
  v13 = *(v11 + 264);
  *(v13 + 260) = 254;
  *(v13 + 264) = 0;
  v14 = *(v11 + 264);
  LODWORD(v13) = *(v14 + 260);
  v15 = __CFADD__(a3, v13);
  v16 = v13 + a3;
  if (v15)
  {
    v16 = 0;
  }

  *(v14 + 260) = v16;
  v17 = a2 + 4 * a4;
  v18 = *(v17 + 124);
  v19 = a3 - 1;
  if (!a3)
  {
    v19 = 0;
  }

  v15 = __CFADD__(v19, v18);
  v20 = v18 + v19;
  if (v15)
  {
    v20 = 0;
  }

  *(v17 + 124) = v20;
LABEL_17:
  sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_CoreGetNewNode");
  return v14;
}

uint64_t sub_297ED6614(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = 255;
  if (a2 && a3)
  {
    v9 = *(a3 + 8);
    sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_HciCoreExtractData");
    if (a1)
    {
      v10 = *(a1 + 956);
    }

    v22 = a4;
    v23 = a2;
    v11 = *(a2 + 8 * a4 + 64);
    v12 = *(a2 + 2 * a4 + 112);
    *a3 = *v11 & 0x7F;
    *(a3 + 2) = *(v11 + 1) >> 6;
    *(a3 + 1) = *(v11 + 1) & 0x3F;
    v13 = *(v11 + 260);
    if (v13 <= 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13 - 2;
    }

    phOsalNfc_MemCopy();
    if (v12 >= 2)
    {
      v15 = *(v11 + 264);
      if (v9)
      {
        v16 = v9 + v14;
      }

      else
      {
        v16 = 0;
      }

      for (i = 1; i < v12; ++i)
      {
        v18 = *(v15 + 260);
        v19 = v18 - 1;
        if (v18 == 1)
        {
          sub_297E4E0B0(2, a1, 7u, 1u, "phHciNfc_HciCoreExtractData: HCI Core Receive- Zero Payload Length");
        }

        else
        {
          phOsalNfc_MemCopy();
          if (v16)
          {
            v16 += v19;
          }

          else
          {
            v16 = 0;
          }

          v15 = *(v15 + 264);
          if (v14 <= -v18)
          {
            v14 += v19;
          }

          else
          {
            v14 = 0;
          }

          if (!v15)
          {
            break;
          }
        }
      }
    }

    v20 = *(v23 + 4 * v22 + 124);
    *(a3 + 4) = v20;
    if (v14 == v20)
    {
      v5 = 0;
    }

    else
    {
      sub_297E4E0B0(2, a1, 7u, 1u, "phHciNfc_HciCoreExtractData:HCI Core Receive- Mismatch in Number of Payload Bytes Processed and Stored");
      v5 = 255;
    }
  }

  sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_HciCoreExtractData");
  return v5;
}

uint64_t sub_297ED67E8(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SendConnOpenCmd");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_SendConnOpenCmd:Setting up command Info to be sent to lower layer ..");
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 1;
    DWORD2(v5) = 4;
    *&v6 = *(a1 + 896);
    DWORD2(v6) = *(a1 + 904);
    *(a1 + 3808) = 0;
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E8B810, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SendConnOpenCmd");
  return v3;
}

uint64_t sub_297ED6904(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_LogConnResp");
  if (a1)
  {
    if (!a2 && *(a1 + 3808) && (v4 = *(a1 + 3800)) != 0)
    {
      if (*v4 == 241)
      {
        v5 = 81;
      }

      else
      {
        v5 = 0;
        if (!*v4)
        {
          v6 = (a1 + 32 * *(a1 + 3818));
          v6[3834] = v4[1];
          v6[3833] = v4[2];
          v6[3832] = v4[3];
          v6[3848] = 1;
        }
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Conn Response invalid..");
      v5 = 255;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
    v5 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_LogConnResp");
  return v5;
}

uint64_t sub_297ED6A0C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteConnOpenSequence");
  if (a1)
  {
    if (*(a1 + 896))
    {
      v4 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
    }

    v5 = *(a1 + 3960);
    if (v5)
    {
      v6 = *(a1 + 3818);
      *(a1 + 3960) = 0;
      v5(*(a1 + 3952), a1 + 32 * v6 + 3832, a2);
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CompleteConnOpenSequence");
  return a2;
}

uint64_t sub_297ED6AA8(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v5 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SendConnCloseCmd");
  if (a1)
  {
    v5 = *(a1 + 32 * *(a1 + 3818) + 3832);
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_SendConnCloseCmd:Setting up command Info to be sent to lower layer ..");
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v6 = 1;
    DWORD2(v6) = 5;
    *&v7 = &v5;
    DWORD2(v7) = 1;
    *(a1 + 3808) = 0;
    v3 = sub_297E57BA8(a1 + 936, &v6, a1 + 3800, 2000, sub_297E8B810, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SendConnCloseCmd");
  return v3;
}

uint64_t sub_297ED6BE0(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_LogConnCloseResp");
  if (a1)
  {
    if (!a2 && *(a1 + 3808) && (v4 = *(a1 + 3800)) != 0)
    {
      v5 = *v4;
      if (v5 == 241)
      {
        v6 = 81;
      }

      else
      {
        v6 = 0;
        if (!v5)
        {
          *(a1 + 32 * *(a1 + 3818) + 3848) = 0;
        }
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Conn Response invalid..");
      v6 = 255;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
    v6 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_LogConnCloseResp");
  return v6;
}

uint64_t sub_297ED6CCC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteConnCloseSequence");
  if (a1)
  {
    if (*(a1 + 896))
    {
      *(a1 + 896) = 0;
    }

    v4 = *(a1 + 3960);
    if (v4)
    {
      v5 = *(a1 + 3818);
      *(a1 + 3960) = 0;
      v4(*(a1 + 3952), a1 + 32 * v5 + 3832, a2);
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CompleteConnCloseSequence");
  return a2;
}

uint64_t sub_297ED6D60(uint64_t a1)
{
  v6 = 0;
  v7 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_LogConnInit");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_LogConnInit:Initializing Connection Info..");
    *(a1 + 3832) = 0;
    *(a1 + 3834) = 0;
    *(a1 + 3824) = -1;
    *(a1 + 3828) = 255;
    *(a1 + 3848) = 0;
    *(a1 + 3818) = -1;
    *(a1 + 3816) = 256;
    *(a1 + 3969) = 0;
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Registering for Conn Credits Notification");
    BYTE5(v7) = 2;
    v6 = 3;
    LODWORD(v7) = 6;
    v3 = sub_297E59AEC(a1 + 936, &v6, sub_297ED6EE0, a1);
    if (v3)
    {
      v4 = "Conn Credits Ntf Registration failed";
    }

    else
    {
      v4 = "Conn Credits Ntf successfully Registered";
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, v4);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_LogConnInit");
  return v3;
}

uint64_t sub_297ED6EE0(uint64_t a1, uint64_t a2, int a3)
{
  v56 = -1;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_LogConnNotifCB");
  v6 = sub_297ED7658(a1);
  if (!a1 || (v7 = v6) == 0)
  {
    sub_297E4E0B0(2, a1, 3u, 4u, " Invalid Context Param..");
    v9 = 1;
LABEL_11:
    sub_297E4E0B0(2, a1, 3u, 4u, "phNciNfc_LogConnNotifCB:None is waiting for Credit Ntf or Wait Credit received on different logical connection ");
    goto LABEL_12;
  }

  if (!a2 || !*(a2 + 8) || a3 || !*(a2 + 16))
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Conn Notification invalid..");
    v9 = 255;
    goto LABEL_11;
  }

  if (*(a1 + 1852))
  {
    v8 = " Invalid Gid received..";
    v9 = 1;
    v10 = a1 + 6524;
LABEL_56:
    sub_297E4E0B0(1, v10, 3u, 4u, v8);
    goto LABEL_11;
  }

  if (*(a1 + 1856) != 6)
  {
    v8 = " Invalid Oid received..";
    v9 = 1;
    v10 = a1 + 6524;
    goto LABEL_56;
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_LogConnNotifCB:Core Connection Credits Notification received..");
  v12 = *(a2 + 8);
  v13 = *v12;
  *(a1 + 3816) = 1;
  *(a1 + 3969) = 0;
  if (!v13)
  {
LABEL_69:
    v9 = 0;
    *(a1 + 3816) = 0;
    goto LABEL_11;
  }

  v14 = 0;
  v15 = 0;
  LOBYTE(v16) = 0;
  v55 = 0;
  while (1)
  {
    v9 = sub_297ED7700(a1, v12[1], &v56);
    if (v9)
    {
      sub_297E50DB0(1, a1 + 6524, 3u, 4u, " Failed to get Conn details for index..");
      goto LABEL_18;
    }

    v17 = *(a2 + 8);
    v18 = a1 + 3824 + 32 * v56;
    v20 = *(v18 + 9);
    v19 = (v18 + 9);
    v21 = v19 - 1;
    v22 = v20 + *(v17 + 2);
    *v19 = v22;
    v54 = *(v17 + 2);
    v55 = *(v17 + 1);
    if (v22 == -1)
    {
      *v19 = -2;
      v28 = a1 + 6524;
      v29 = "phNciNfc_LogConnNotifCB:Credits Limit exceeded for this Conn,Ignoring notification value ..";
      goto LABEL_26;
    }

    v23 = *v21;
    sub_297E50DB0(1, a1 + 6524, 3u, 4u, " Credits updated for ConnId");
    *(a1 + 6481) = 0;
    if (*(a1 + 4776) == 1)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Using timer with 10mSec to send EOF data packet\n");
      v24 = *(a1 + 4696);
      if (v24 != 0xFFFFFFFFFFFFLL)
      {
        sub_297E5A304(*(a1 + 6524), v24);
        *(a1 + 6512) = 0;
        v25 = *(a1 + 6524);
        v26 = *(a1 + 4696);
        v27 = *(a1 + 4568);
        if (phOsalNfc_Timer_Start())
        {
          *(a1 + 4776) = 0;
          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "EOF timer start failed\n");
          goto LABEL_27;
        }

        sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3u, 4u, "phNciNfc_LogConnNotifCB");
        v28 = a1 + 6524;
        v29 = "EOF timer started\n";
LABEL_26:
        sub_297E4E0B0(1, v28, 3u, 4u, v29);
      }
    }

LABEL_27:
    v16 = *v19;
    if (*(a1 + 5246) == 1 || *(a1 + 5614) == 1)
    {
      v14 = 1;
    }

    if (*(a1 + 6657) == 1 && *(a1 + 4828) == 1 && !*(a1 + 4826))
    {
      v30 = *v21 == 3 && v54 == 0;
      if (v30)
      {
        break;
      }
    }

    if (v14 != 1 || v16)
    {
      goto LABEL_18;
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, " No more Credits available..waiting for Credit Ntf");
    v31 = *(v7 + 56);
    if (v31 && v31 != 0xFFFFFFFFFFFFLL)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Stopping Credit await timer as zero credit recvd..");
      v32 = *(a1 + 6524);
      v33 = *(v7 + 56);
      phOsalNfc_Timer_Stop();
      v34 = *(a1 + 6524);
      v35 = *(v7 + 56);
      phOsalNfc_Timer_Delete();
      *(a1 + 6513) = 0;
      *(v7 + 64) = 0;
      v36 = *(a1 + 6524);
      *(v7 + 56) = 0;
      v30 = v36 == 0;
      v37 = &gphNfc_DebugInfo_Sec;
      if (v30)
      {
        v37 = &gphNfc_DebugInfo_Prim;
      }

      v37[1] &= ~8u;
    }

    v14 = 1;
    *(a1 + 3969) = 1;
    if (++v15 >= v13)
    {
      goto LABEL_69;
    }

    LOBYTE(v16) = 0;
LABEL_19:
    v12 = *(a2 + 8);
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Zero credit Ntf Received");
  v38 = *(v7 + 56);
  if (v38 && v38 != 0xFFFFFFFFFFFFLL)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Stopping Credit await timer as zero credit recvd..");
    v39 = *(a1 + 6524);
    v40 = *(v7 + 56);
    phOsalNfc_Timer_Stop();
    v41 = *(a1 + 6524);
    v42 = *(v7 + 56);
    phOsalNfc_Timer_Delete();
    *(a1 + 6513) = 0;
    *(v7 + 64) = 0;
    v43 = *(a1 + 6524);
    *(v7 + 56) = 0;
    v30 = v43 == 0;
    v44 = &gphNfc_DebugInfo_Sec;
    if (v30)
    {
      v44 = &gphNfc_DebugInfo_Prim;
    }

    v44[1] &= ~8u;
  }

  *(a1 + 3969) = 1;
  v45 = *(a1 + 712);
  if (v45)
  {
    v45(*(a1 + 704), 19, 0, 0);
  }

  else
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Upon Zero credit reception, Not Restarting HCI command response timer (Upper layer CB not registered)");
  }

LABEL_18:
  if (++v15 < v13)
  {
    goto LABEL_19;
  }

  *(a1 + 3816) = 0;
  if (!v16)
  {
    goto LABEL_11;
  }

  if (v55 != *(a1 + 6545))
  {
    goto LABEL_11;
  }

  v46 = *(a1 + 6568);
  if (!v46)
  {
    goto LABEL_11;
  }

  if (v14 == 1)
  {
    *(a1 + 6660) = 0;
  }

  v47 = *(a1 + 6592);
  if (v47 && v47 != 0xFFFFFFFFFFFFLL && *(a1 + 6600) == 1)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Stopping Credit await timer..");
    v48 = *(a1 + 6524);
    v49 = *(a1 + 6592);
    phOsalNfc_Timer_Stop();
    v50 = *(a1 + 6524);
    v51 = *(a1 + 6592);
    phOsalNfc_Timer_Delete();
    *(a1 + 6513) = 0;
    *(a1 + 6600) = 0;
    *(a1 + 6592) = 0;
    v52 = &gphNfc_DebugInfo_Sec;
    if (!*(a1 + 6524))
    {
      v52 = &gphNfc_DebugInfo_Prim;
    }

    v52[1] &= ~8u;
    v46 = *(a1 + 6568);
  }

  *(a1 + 6585) = 0;
  v53 = *(a1 + 6576);
  *(a1 + 6545) = -1;
  *(a1 + 6568) = 0;
  *(a1 + 6576) = 0;
  v46(v53, v16, v9);
LABEL_12:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_LogConnNotifCB");
  return v9;
}

uint64_t sub_297ED755C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ResetLogConn");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Resetting Logical conn");
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *(a1 + 3832) = 0;
    *(a1 + 3834) = 0;
    *(a1 + 3824) = -1;
    *(a1 + 3828) = 255;
    *(a1 + 3848) = 0;
    *(a1 + 3818) = -1;
    *(a1 + 3816) = 256;
    *(a1 + 3969) = 0;
    v3 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    v4 = 0;
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 4u, "Reset Logical conn: Invalid Context Param");
    v4 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ResetLogConn");
  return v4;
}

uint64_t sub_297ED7658(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_LogConnGetCtxt");
  if (a1)
  {
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
      v5 = a1 + 6536;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_LogConnGetCtxt");
  return v5;
}

uint64_t sub_297ED7700(uint64_t a1, int a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetConnInfo");
  if (a1)
  {
    if (*(a1 + 3816))
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Notification Case..");
      v6 = 0;
      v7 = (a1 + 3832);
      while (1)
      {
        v8 = *v7;
        v7 += 32;
        if (v8 == a2)
        {
          break;
        }

        if (++v6 == 4)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v10 = (a1 + 3864);
      v6 = 1;
      while (1)
      {
        v11 = *(a1 + 6584) ? *v10 : *(v10 - 8);
        if (v11 == a2)
        {
          break;
        }

        ++v6;
        v10 += 32;
        if (v6 == 4)
        {
LABEL_14:
          v9 = 255;
          goto LABEL_16;
        }
      }
    }

    v9 = 0;
    *a3 = v6;
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
    v9 = 1;
  }

LABEL_16:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetConnInfo");
  return v9;
}

uint64_t sub_297ED7828(uint64_t a1)
{
  v4 = 0;
  v5 = a1;
  sub_297E4E1B4(0, &v5, 8u, 5u, "phFriNfc_MifareStdMap_H_Reset");
  sub_297E57170(v5, &v4);
  if (v4)
  {
    for (i = 697; i != 737; ++i)
    {
      *(v4 + i) = 1;
    }

    v2 = 0;
  }

  else
  {
    v2 = 49;
  }

  sub_297E4DFAC(0, &v5, 8u, 5u, "phFriNfc_MifareStdMap_H_Reset");
  return v2;
}

uint64_t sub_297ED78C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = a1;
  sub_297E4E1B4(0, &v14, 8u, 5u, "phFriNfc_MifareStdMap_ChkNdef");
  sub_297E57170(v14, &v13);
  v5 = 1;
  if (!a3)
  {
    goto LABEL_20;
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  v6 = v13;
  if (!v13)
  {
    goto LABEL_20;
  }

  *(v13 + 8) = a2;
  *(v6 + 40) = a3;
  *(v6 + 547) = 1;
  *(v6 + 208) &= 0xFCu;
  *(v6 + 212) = 0;
  *(v6 + 540) = 1;
  *(v6 + 753) = 0;
  if ((*(*(v6 + 224) + 68) & 0x18) == 8)
  {
    *(v6 + 668) = 45;
    v7 = 7;
    if (!*(v6 + 544))
    {
      v8 = 720;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  *(v6 + 668) = 210;
  v7 = 8;
  if (*(v6 + 544))
  {
LABEL_8:
    v8 = *(v6 + 740);
    goto LABEL_10;
  }

  v8 = 3360;
LABEL_10:
  *(v6 + 740) = v8;
  *(v6 + 544) = v7;
  v9 = *(v6 + 666);
  if (v9 - 64 < 3 || v9 <= 2)
  {
    if (*(v6 + 677))
    {
      *v6 = 4;
      *(v6 + 540) = 1;
      *(v6 + 739) = 1;
      *(v6 + 48) = sub_297ED7BB8;
      *(v6 + 56) = v6;
      *(v6 + 232) = 48;
      *(v6 + 264) = 260;
      *(v6 + 266) = v9;
      *(v6 + 526) = 1;
      v11 = sub_297E98D38(v6, sub_297ED7F4C);
    }

    else
    {
      if (!*(v6 + 666))
      {
        *(v6 + 666) = 1;
      }

      v11 = sub_297ED7A60(v6);
    }

    v5 = v11;
  }

LABEL_20:
  sub_297E4DFAC(0, &v14, 8u, 5u, "phFriNfc_MifareStdMap_ChkNdef");
  return v5;
}

uint64_t sub_297ED7A60(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_AuthSector");
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *(a1 + 48) = sub_297ED7BB8;
  *(a1 + 56) = a1;
  *(a1 + 264) = 260;
  *a1 = 3;
  *(a1 + 232) = 96;
  v2 = *(a1 + 71);
  v3 = 666;
  if (v2 == 1)
  {
    v3 = 70;
  }

  *(a1 + 266) = *(a1 + v3);
  v4 = *(a1 + 666);
  if ((v4 - 64 < 3 || v4 <= 2) && v2 != 1)
  {
    *(a1 + 267) = -1549622880;
    v8 = (a1 + 271);
    v9 = -23132;
LABEL_14:
    *v8 = v9;
    goto LABEL_15;
  }

  if (*(a1 + 540) != 6)
  {
    *(a1 + 267) = -137103405;
    v8 = (a1 + 271);
    v9 = -2093;
    goto LABEL_14;
  }

  *(a1 + 232) = 97;
  v7 = *(a1 + 2720);
  phOsalNfc_MemCopy();
LABEL_15:
  *(a1 + 526) = 7;
  *(a1 + 264) = 260;
  v10 = sub_297E98D38(a1, sub_297ED7F4C);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_AuthSector");
  return v10;
}

uint64_t sub_297ED7BB8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v27 = a1;
  v26 = 0;
  sub_297E4E1B4(0, &v27, 8u, 5u, "phFriNfc_MifareStdMap_Process");
  if (a3)
  {
    if (*a2 == 3)
    {
      if (a3 - 146 <= 0x27 && ((1 << (a3 + 110)) & 0xF900000041) != 0)
      {
        sub_297EDC780(a2, &v26);
        goto LABEL_14;
      }

      v10 = sub_297EDC780(a2, &v26);
      goto LABEL_13;
    }

    if (a3 - 146 > 0x26 || ((1 << (a3 + 110)) & 0x7900000001) == 0)
    {
      if (a3 == 185)
      {
        a3 = a3;
      }

      else
      {
        a3 = 245;
      }
    }

    v26 = 1;
  }

  else
  {
    sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_MifareStd_GetNdefFuncIndex");
    v5 = 0;
    v6 = -1;
    v7 = &byte_2A1E95870;
    do
    {
      v8 = *v7;
      v7 += 16;
      if (*a2 == v8)
      {
        v6 = v5;
      }

      ++v5;
    }

    while (v5 != 16);
    sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_MifareStd_GetNdefFuncIndex");
    if (v6 != 0xFF)
    {
      v9 = *(&off_2A1E95868 + 2 * v6);
      if (!v9)
      {
        goto LABEL_14;
      }

      v10 = v9(a2, &v26);
LABEL_13:
      a3 = v10;
LABEL_14:
      if (v26 != 1)
      {
        return sub_297E4DFAC(0, &v27, 8u, 5u, "phFriNfc_MifareStdMap_Process");
      }

      goto LABEL_20;
    }

    v26 = 1;
    a3 = 245;
  }

LABEL_20:
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_MifStd_H_Complete");
  *a2 = 0;
  v11 = a2[547];
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      (*(a2 + 3))(*(a2 + 5), a3);
    }

    else if (v11 == 6)
    {
      (*(a2 + 4))(*(a2 + 5), a3);
    }
  }

  else if (v11 == 1)
  {
    if (a3 != 25 && a3)
    {
      a2[546] = 0;
      LOBYTE(v30) = 3;
      if (((1 << a3) & 0x34400002) != 0)
      {
        v24 = 152;
      }

      else
      {
        v24 = a3;
      }

      if (a3 <= 0x1Du)
      {
        a3 = v24;
      }

      else
      {
        a3 = a3;
      }
    }

    else
    {
      v12 = 0;
      a2[546] = 1;
      v13 = a2 + 697;
      do
      {
        v14 = v12++;
      }

      while (v14 <= 0x27 && v13[v14] == 1);
      if (v14 > 0x27)
      {
        v15 = 0;
      }

      else
      {
        v15 = 0;
        v16 = (v12 - 1);
        do
        {
          if (v13[v16])
          {
            break;
          }

          v17 = a2[544] == 8 && v16 > 0x1F;
          v18 = v17 ? 240 : 48;
          v15 += v18;
          if (v16 == 15)
          {
            v16 = 17;
          }

          else
          {
            ++v16;
          }
        }

        while (v16 < 0x28);
      }

      v19 = *(a2 + 44);
      v20 = v15 >= v19;
      v21 = v15 - v19;
      if (!v20)
      {
        v21 = 0;
      }

      v22 = v21 - 2;
      if (v21 <= 1)
      {
        v22 = 0;
      }

      if (v21 <= 0xFE)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21 - 4;
      }

      HIDWORD(v30) = *(a2 + 40);
      v31 = v23;
      LOBYTE(v30) = a2[545];
    }

    (*(a2 + 1))(*(a2 + 5), a3, &v30);
  }

  else if (v11 == 2)
  {
    if (!a3)
    {
      LODWORD(v29) = **(a2 + 69);
      v28 = *(a2 + 30);
    }

    (*(a2 + 2))(*(a2 + 5), a3, &v28);
  }

  sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_MifStd_H_Complete");
  return sub_297E4DFAC(0, &v27, 8u, 5u, "phFriNfc_MifareStdMap_Process");
}

uint64_t sub_297ED7F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 8u, 5u, "phFriNfc_MifareStdMap_CB_Transceive");
  sub_297E57170(v10, &v9);
  v7 = v9;
  if (v9)
  {
    if (a4)
    {
      *(v9 + 264) = *(a4 + 8);
    }

    (*(v7 + 48))(*(v7 + 2712), v7, a5);
  }

  return sub_297E4DFAC(0, &v10, 8u, 5u, "phFriNfc_MifareStdMap_CB_Transceive");
}

uint64_t sub_297ED7FE4(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v24 = a1;
  v23 = 0;
  v22 = 208;
  v21 = 0;
  sub_297E4E1B4(0, &v24, 8u, 5u, "phFriNfc_MifareStdMap_RdNdef");
  sub_297E57170(v24, &v21);
  v11 = 1;
  if (a4 <= 1 && a3 && a2 && a5 && v21)
  {
    if (a4 == 1 || *(v21 + 540) != 3)
    {
      v12 = *(v21 + 2720);
      phOsalNfc_MemCopy();
      v13 = v21;
      v14 = (v21 + 2740);
      *(v21 + 2740) = 3;
      *(v13 + 16) = a5;
      *(v13 + 40) = a6;
      *(v13 + 547) = 2;
      if (*a3)
      {
        v14 = a3;
        v15 = a2;
      }

      else
      {
        v15 = v13 + 2736;
      }

      *(v13 + 248) = *v14;
      *(v13 + 552) = v14;
      *v14 = 0;
      *(v13 + 252) = 0;
      *(v13 + 540) = 2;
      v11 = 1;
      *(v13 + 753) = 1;
      *(v13 + 770) = 0;
      v16 = *(v13 + 2720);
      phOsalNfc_SetMemory();
      v17 = v21;
      if (*(v21 + 545) && *(v21 + 545) != 3)
      {
        if (a4 != 1 && *(v21 + 540) != 3)
        {
          goto LABEL_17;
        }

        sub_297E4E1B4(2, v21, 8u, 5u, "phFriNfc_MifStd_H_RdWrReset");
        *(v17 + 80) = 0;
        *(v17 + 75) = 0;
        *(v17 + 86) = 0;
        *(v17 + 664) = 17039360;
        *(v17 + 677) = 0;
        *(v17 + 746) = 0;
        *(v17 + 68) = 0;
        *(v17 + 72) = 0;
        *(v17 + 758) = 1;
        *(v17 + 672) = 0;
        *(v17 + 740) = 16 * *(v17 + 668);
        *(v17 + 754) = 1;
        sub_297E4DFAC(2, v17, 8u, 5u, "phFriNfc_MifStd_H_RdWrReset");
        v17 = v21;
        *(v21 + 738) = 1;
        *(v17 + 66) = 0;
        if (!a4)
        {
LABEL_17:
          if (*(v17 + 672) == 1)
          {
            v11 = 26;
            goto LABEL_27;
          }

          if (*(v17 + 540) == 3)
          {
            LOBYTE(a4) = 1;
          }
        }

        *(v17 + 560) = a4;
        if (sub_297ED8258(v17))
        {
          v11 = 1;
        }

        else
        {
          v18 = v21;
          *(v21 + 240) = v15;
          *(v18 + 672) = 0;
          if (*(v18 + 677) == 1)
          {
            v19 = sub_297ED83BC(v18);
          }

          else
          {
            v19 = sub_297ED7A60(v18);
          }

          v11 = v19;
        }
      }
    }

    else
    {
      v11 = 245;
    }
  }

LABEL_27:
  sub_297E4DFAC(0, &v24, 8u, 5u, "phFriNfc_MifareStdMap_RdNdef");
  return v11;
}

uint64_t sub_297ED8258(uint64_t a1)
{
  v6 = 0;
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_BlkChk");
  while (1)
  {
    v2 = sub_297EDC9B8(a1, *(a1 + 666));
    if (*(a1 + 544) == 7)
    {
      if (v2 >= 0x10)
      {
        sub_297EDC9B8(a1, *(a1 + 666));
LABEL_21:
        v4 = 1;
        goto LABEL_22;
      }

      goto LABEL_4;
    }

    v3 = *(a1 + 666);
    if (v2 == 39)
    {
      break;
    }

    if (v3 == 64)
    {
      goto LABEL_10;
    }

    if (v2 > 0x1F)
    {
      goto LABEL_14;
    }

    if (v3 == 63)
    {
      *(a1 + 666) = 67;
      goto LABEL_18;
    }

LABEL_4:
    sub_297EDCA38(a1, v2, &v6);
LABEL_18:
    if (v6 == 1)
    {
      goto LABEL_19;
    }
  }

  if (v3 == 64)
  {
LABEL_10:
    *(a1 + 666) = 68;
    goto LABEL_18;
  }

  if (v3 == 255)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (((v3 + 1) & 0xF) == 0)
  {
    *(a1 + 666) = v3 + 1;
    goto LABEL_18;
  }

  if (*(a1 + 697 + v2))
  {
    *(a1 + 666) = v3 + 16;
    goto LABEL_18;
  }

  if (16 * v2 - 384 != v3 || *(a1 + 664))
  {
LABEL_19:
    v4 = 0;
    goto LABEL_22;
  }

  v4 = 0;
  *(a1 + 677) = 0;
LABEL_22:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_BlkChk");
  return v4;
}

uint64_t sub_297ED83BC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_RdABlock");
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *a1 = 1;
  *(a1 + 540) = 2;
  *(a1 + 48) = sub_297ED7BB8;
  *(a1 + 56) = a1;
  v2 = *(a1 + 252);
  v3 = *(a1 + 248);
  if (v2 >= v3)
  {
    v17 = *(a1 + 668);
    v18 = *(a1 + 667);
    if (v3 == v2 || v17 <= v18)
    {
      v16 = 0;
      *(a1 + 672) = v17 == v18;
      **(a1 + 552) = v2;
    }

    else
    {
      v16 = 255;
    }
  }

  else
  {
    if (*(a1 + 664))
    {
      sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ChkIntLen");
      if (!*(a1 + 80))
      {
        v16 = 0;
LABEL_44:
        sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ChkIntLen");
        goto LABEL_45;
      }

      sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_IntLenWioutNdef");
      v4 = *(a1 + 248);
      v5 = *(a1 + 252);
      v6 = v4 >= v5;
      v7 = v4 - v5;
      if (!v6)
      {
        v7 = 0;
      }

      if (*(a1 + 740) >= v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = *(a1 + 740);
      }

      v9 = *(a1 + 80);
      v10 = *(a1 + 664);
      v11 = *(a1 + 2720);
      v12 = *(a1 + 240) + v5;
      if (v9 > v10)
      {
        if (v8 > v10)
        {
          v13 = *(a1 + 664);
          phOsalNfc_MemCopy();
          v14 = *(a1 + 664);
          *(a1 + 252) += v14;
          *(a1 + 740) -= v14;
          v15 = *(a1 + 80) - v14;
          *(a1 + 80) = v15;
          if (v15)
          {
            *(a1 + 66) = 0;
          }

          *(a1 + 664) = 0;
          ++*(a1 + 666);
          ++*(a1 + 667);
          if (sub_297ED8258(a1))
          {
            v16 = 1;
          }

          else
          {
            if (*(a1 + 677) == 1)
            {
              v33 = sub_297ED83BC(a1);
            }

            else
            {
              v33 = sub_297ED7A60(a1);
            }

            v16 = v33;
          }

          goto LABEL_43;
        }

        phOsalNfc_MemCopy();
        *(a1 + 252) += v8;
        *(a1 + 740) -= v8;
        *(a1 + 80) -= v8;
        v21 = *(a1 + 2720);
        v22 = *(a1 + 664);
        phOsalNfc_MemCopy();
        v23 = *(a1 + 664) - v8;
        *(a1 + 664) = v23;
        if (!v23)
        {
          ++*(a1 + 666);
          ++*(a1 + 667);
        }

        v16 = 0;
        *(a1 + 66) = 0;
LABEL_39:
        if (*(a1 + 740))
        {
          v31 = *(a1 + 80) == 0;
        }

        else
        {
          v31 = 1;
        }

        *(a1 + 672) = v31;
        **(a1 + 552) = *(a1 + 252);
LABEL_43:
        sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_IntLenWioutNdef");
        goto LABEL_44;
      }

      if (v8 <= v9)
      {
        phOsalNfc_MemCopy();
        *(a1 + 252) += v8;
        *(a1 + 740) -= v8;
        v24 = *(a1 + 2720);
        v25 = *(a1 + 664);
        phOsalNfc_MemCopy();
        v26 = *(a1 + 664);
        v27 = *(a1 + 80);
        *(a1 + 80) = v27 - v8;
        v28 = v26 - v8;
        *(a1 + 664) = v28;
        if (!v28)
        {
          if (*(a1 + 740))
          {
            v29 = v27 == v8;
          }

          else
          {
            v29 = 1;
          }

          v30 = v29;
          *(a1 + 672) = v30;
          ++*(a1 + 666);
          ++*(a1 + 667);
        }

        if (v27 == v8)
        {
          v16 = 0;
          *(a1 + 66) = 1;
          *(a1 + 72) = 0;
          goto LABEL_39;
        }
      }

      else
      {
        phOsalNfc_MemCopy();
        v19 = *(a1 + 80);
        *(a1 + 252) += v19;
        *(a1 + 740) -= v19;
        *(a1 + 66) = 1;
        *(a1 + 72) = 0;
        *(a1 + 672) = 1;
        v20 = *(a1 + 664);
        *(a1 + 80) = 0;
        if (!v20)
        {
          ++*(a1 + 666);
          ++*(a1 + 667);
          if (sub_297ED8258(a1))
          {
            v16 = 1;
          }

          else
          {
            if (*(a1 + 677) == 1)
            {
              v34 = sub_297ED83BC(a1);
            }

            else
            {
              v34 = sub_297ED7A60(a1);
            }

            v16 = v34;
          }

          goto LABEL_39;
        }
      }

      v16 = 0;
      goto LABEL_39;
    }

    *(a1 + 266) = *(a1 + 666);
    *(a1 + 526) = 1;
    *(a1 + 264) = 260;
    *(a1 + 232) = 48;
    v16 = sub_297E98D38(a1, sub_297ED7F4C);
  }

LABEL_45:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_RdABlock");
  return v16;
}

uint64_t sub_297ED8828(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6)
{
  v23 = 0;
  v24 = a1;
  sub_297E4E1B4(0, &v24, 8u, 5u, "phFriNfc_MifareStdMap_WrNdef");
  sub_297E57170(v24, &v23);
  v11 = 1;
  if (!a3 || !a5 || !v23)
  {
    goto LABEL_11;
  }

  v12 = *(v23 + 2720);
  phOsalNfc_MemCopy();
  v13 = v23;
  *(v23 + 2740) = 3;
  *(v13 + 24) = a5;
  *(v13 + 40) = a6;
  *(v13 + 547) = 3;
  *(v13 + 252) = 0;
  **(v13 + 528) = 0;
  v14 = v23;
  v15 = v23 + 2736;
  if (*a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = (v23 + 2740);
  }

  if (*a3)
  {
    v15 = a2;
  }

  *(v23 + 240) = v15;
  *(v14 + 248) = *v16;
  *(v14 + 252) = 0;
  *(v14 + 256) = v16;
  *(v14 + 216) = 0;
  *v16 = 0;
  *(v14 + 540) = 3;
  *(v14 + 753) = 2;
  v17 = *(v14 + 2720);
  phOsalNfc_SetMemory();
  v18 = v23;
  if ((*(v23 + 545) | 2) == 3)
  {
    goto LABEL_10;
  }

  if (a4 != 1 && *(v23 + 540) != 2)
  {
    if (a4)
    {
LABEL_21:
      if (*(v18 + 540) == 2)
      {
        LOBYTE(a4) = 1;
      }

      goto LABEL_23;
    }

LABEL_18:
    if (*(v18 + 672) == 1 || *(v18 + 757) == 1)
    {
      v11 = 26;
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  *(v23 + 66) = 0;
  *(v18 + 676) = 1;
  *(v18 + 737) = 1;
  *(v18 + 664) = 17039360;
  *(v18 + 756) = 0;
  *(v18 + 86) = 0;
  *(v18 + 68) = 0;
  *(v18 + 76) = 0;
  *(v18 + 71) = 0;
  *(v18 + 769) = 0;
  *(v18 + 740) = 16 * *(v18 + 668);
  *(v18 + 746) = 0;
  *(v18 + 757) = 0;
  *(v18 + 754) = 0;
  *(v18 + 759) = 1;
  if (!a4)
  {
    goto LABEL_18;
  }

  if (a4 != 1)
  {
    goto LABEL_21;
  }

LABEL_23:
  *(v18 + 560) = a4;
  *(v18 + 677) = 0;
  v20 = sub_297ED8258(v18);
  v21 = v23;
  *(v23 + 672) = 0;
  if (v20)
  {
LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  if (v21[757] == 1)
  {
    v22 = sub_297ED8A90(v21);
  }

  else if (v21[677] == 1)
  {
    if (v21[560] == 1)
    {
      v22 = sub_297ED8B2C(v21);
    }

    else
    {
      v22 = sub_297ED8C74(v21);
    }
  }

  else
  {
    v22 = sub_297ED7A60(v21);
  }

  v11 = v22;
LABEL_11:
  sub_297E4DFAC(0, &v24, 8u, 5u, "phFriNfc_MifareStdMap_WrNdef");
  return v11;
}

uint64_t sub_297ED8A90(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_CallDisCon");
  *a1 = 15;
  *(a1 + 48) = sub_297ED7BB8;
  *(a1 + 56) = a1;
  v2 = sub_297E98EA8(a1, sub_297EDD08C, *(a1 + 224));
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_CallDisCon");
  return v2;
}

uint64_t sub_297ED8B2C(_BYTE *a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_RdBeforeWr");
  *a1 = 9;
  a1[540] = 3;
  if (a1[769] != 1)
  {
    goto LABEL_15;
  }

  --a1[666];
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_BlkChk_1");
  v2 = sub_297EDC9B8(a1, a1[666]);
  if (!a1[v2 + 697])
  {
    v3 = a1[544];
    v4 = v3 != 7 || v2 >= 0x10;
    if (!v4 || v3 == 8)
    {
      v5 = a1[666];
      if (v5 <= 0x80)
      {
        v6 = 3;
      }

      else
      {
        v6 = 15;
      }

      v7 = ((v5 + 1) & v6) == 0;
      a1[71] = v7;
      a1[666] = v5 - v7;
    }
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_BlkChk_1");
  if (a1[71] == 1)
  {
    a1[677] = 0;
    v8 = sub_297ED7A60(a1);
  }

  else
  {
LABEL_15:
    v8 = sub_297EDCB98(a1, a1[666]);
  }

  v9 = v8;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_RdBeforeWr");
  return v9;
}

uint64_t sub_297ED8C74(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_WrABlock");
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *(a1 + 48) = sub_297ED7BB8;
  *(a1 + 56) = a1;
  *(a1 + 540) = 3;
  *a1 = 2;
  v2 = *(a1 + 252);
  v3 = *(a1 + 248);
  if (v3 > v2)
  {
    v4 = (v3 - v2);
    if (v4 >= *(a1 + 740))
    {
      v5 = *(a1 + 740);
    }

    else
    {
      v5 = v4;
    }

    v6 = a1 + 266;
    *(a1 + 266) = *(a1 + 666);
    if (*(a1 + 664))
    {
      v7 = *(a1 + 2720);
      phOsalNfc_MemCopy();
      if (*(a1 + 664) == 0xFF)
      {
        LOBYTE(v8) = 0;
      }

      else
      {
        v8 = *(a1 + 664) + 1;
      }

      v9 = 17 - v8;
      v10 = *(a1 + 2720);
      v11 = *(a1 + 240);
      if (v8 <= 0x11u && (17 - v8) > v5)
      {
        phOsalNfc_MemCopy();
        *(a1 + 670) = 1;
        *(a1 + 216) = v5;
        **(a1 + 528) = (v8 + v5) - 1;
        v12 = (17 - (v8 + v5));
        if (17 != (v8 + v5))
        {
          v13 = 0;
          *(a1 + 74) = 1;
          v14 = vdupq_n_s64(v12 - 1);
          v15 = (a1 + (v8 + v5) + 281);
          v16 = xmmword_297F136C0;
          v17 = xmmword_297F136D0;
          v18 = xmmword_297F136E0;
          v19 = xmmword_297F136F0;
          v20 = xmmword_297F13700;
          v21 = xmmword_297F13710;
          v22 = xmmword_297F13210;
          v23 = xmmword_297F13220;
          v24 = vdupq_n_s64(0x10uLL);
          do
          {
            v25 = vmovn_s64(vcgeq_u64(v14, v23));
            if (vuzp1_s8(vuzp1_s16(v25, *v14.i8), *v14.i8).u8[0])
            {
              if (v13)
              {
                v26 = 0;
              }

              else
              {
                v26 = -2;
              }

              *(v15 - 15) = v26;
            }

            if (vuzp1_s8(vuzp1_s16(v25, *&v14), *&v14).i8[1])
            {
              *(v15 - 14) = 0;
            }

            if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v22))), *&v14).i8[2])
            {
              *(v15 - 13) = 0;
              *(v15 - 12) = 0;
            }

            v27 = vmovn_s64(vcgeq_u64(v14, v21));
            if (vuzp1_s8(*&v14, vuzp1_s16(v27, *&v14)).i32[1])
            {
              *(v15 - 11) = 0;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(v27, *&v14)).i8[5])
            {
              *(v15 - 10) = 0;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v20)))).i8[6])
            {
              *(v15 - 9) = 0;
              *(v15 - 8) = 0;
            }

            v28 = vmovn_s64(vcgeq_u64(v14, v19));
            if (vuzp1_s8(vuzp1_s16(v28, *v14.i8), *v14.i8).u8[0])
            {
              *(v15 - 7) = 0;
            }

            if (vuzp1_s8(vuzp1_s16(v28, *&v14), *&v14).i8[1])
            {
              *(v15 - 6) = 0;
            }

            if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v18))), *&v14).i8[2])
            {
              *(v15 - 5) = 0;
              *(v15 - 4) = 0;
            }

            v29 = vmovn_s64(vcgeq_u64(v14, v17));
            if (vuzp1_s8(*&v14, vuzp1_s16(v29, *&v14)).i32[1])
            {
              *(v15 - 3) = 0;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(v29, *&v14)).i8[5])
            {
              *(v15 - 2) = 0;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v16)))).i8[6])
            {
              *(v15 - 1) = 0;
              *v15 = 0;
            }

            v21 = vaddq_s64(v21, v24);
            v22 = vaddq_s64(v22, v24);
            v23 = vaddq_s64(v23, v24);
            v20 = vaddq_s64(v20, v24);
            v19 = vaddq_s64(v19, v24);
            v18 = vaddq_s64(v18, v24);
            v13 -= 16;
            v17 = vaddq_s64(v17, v24);
            v15 += 16;
            v16 = vaddq_s64(v16, v24);
          }

          while (-((v12 + 15) & 0x1FFF0) != v13);
        }

        goto LABEL_50;
      }
    }

    else
    {
      if (v5 < 0x10)
      {
        v35 = *(a1 + 2720);
        v36 = *(a1 + 240);
        phOsalNfc_MemCopy();
        *(a1 + 671) = 1;
        *(a1 + 216) = v5;
        **(a1 + 528) = v5;
        v37 = v5 + 1;
        *(a1 + 74) = 1;
        v38 = vdupq_n_s64(15 - v5);
        v39 = vmovn_s64(vcgeq_u64(v38, xmmword_297F13220));
        if (vuzp1_s8(vuzp1_s16(v39, *v38.i8), *v38.i8).u8[0])
        {
          *(v6 + v37) = -2;
        }

        if (vuzp1_s8(vuzp1_s16(v39, *&v38), *&v38).i8[1])
        {
          *(v37 + v6 + 1) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v38, vmovn_s64(vcgeq_u64(v38, xmmword_297F13210))), *&v38).i8[2])
        {
          *(v37 + v6 + 2) = 0;
          *(v37 + v6 + 3) = 0;
        }

        v40 = vmovn_s64(vcgeq_u64(v38, xmmword_297F13710));
        if (vuzp1_s8(*&v38, vuzp1_s16(v40, *&v38)).i32[1])
        {
          *(v37 + v6 + 4) = 0;
        }

        if (vuzp1_s8(*&v38, vuzp1_s16(v40, *&v38)).i8[5])
        {
          *(v37 + v6 + 5) = 0;
        }

        if (vuzp1_s8(*&v38, vuzp1_s16(*&v38, vmovn_s64(vcgeq_u64(v38, xmmword_297F13700)))).i8[6])
        {
          *(v37 + v6 + 6) = 0;
          *(v37 + v6 + 7) = 0;
        }

        v41 = vmovn_s64(vcgeq_u64(v38, xmmword_297F136F0));
        if (vuzp1_s8(vuzp1_s16(v41, *v38.i8), *v38.i8).u8[0])
        {
          *(v37 + v6 + 8) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v41, *&v38), *&v38).i8[1])
        {
          *(v37 + v6 + 9) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v38, vmovn_s64(vcgeq_u64(v38, xmmword_297F136E0))), *&v38).i8[2])
        {
          *(v37 + v6 + 10) = 0;
          *(v37 + v6 + 11) = 0;
        }

        v42 = vmovn_s64(vcgeq_u64(v38, xmmword_297F136D0));
        if (vuzp1_s8(*&v38, vuzp1_s16(v42, *&v38)).i32[1])
        {
          *(v37 + v6 + 12) = 0;
        }

        if (vuzp1_s8(*&v38, vuzp1_s16(v42, *&v38)).i8[5])
        {
          *(v37 + v6 + 13) = 0;
        }

        v43 = vmovn_s64(vcgeq_u64(v38, xmmword_297F136C0));
        if (vuzp1_s8(*&v43, vuzp1_s16(v43, v43)).i8[6])
        {
          *(v37 + v6 + 14) = 0;
        }

        v44 = vuzp1_s16(v43, v43);
        if (vuzp1_s8(v44, v44).i8[7])
        {
          *(v37 + v6 + 15) = 0;
        }

        goto LABEL_50;
      }

      v31 = *(a1 + 2720);
      v9 = 16;
      v32 = *(a1 + 240) + v2;
    }

    phOsalNfc_MemCopy();
    *(a1 + 216) = v9;
    **(a1 + 528) = 16;
LABEL_50:
    v33 = *(a1 + 2720);
    phOsalNfc_MemCopy();
    *(a1 + 526) = 17;
    *(a1 + 232) = 160;
    *(a1 + 264) = 260;
    v30 = sub_297E98D38(a1, sub_297ED7F4C);
    goto LABEL_51;
  }

  if (*(a1 + 668) >= *(a1 + 667))
  {
    if (v2 == v3)
    {
      v30 = 0;
    }

    else
    {
      v30 = 255;
    }
  }

  else
  {
    v30 = 0;
    *(a1 + 672) = 1;
  }

LABEL_51:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_WrABlock");
  return v30;
}

uint64_t sub_297ED92F0(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareStd_iChkNdefComp");
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ProChkNdef");
  v4 = *(a1 + 666);
  if (v4 != 1)
  {
    v6 = *(a1 + 544);
    if (v4 == 2 && v6 == 7)
    {
      goto LABEL_10;
    }

    if (v4 == 66)
    {
      if (v6 != 8)
      {
        v5 = 1;
        goto LABEL_12;
      }

LABEL_10:
      sub_297EDC848(a1);
      v5 = 0;
      *(a1 + 744) = 1;
      goto LABEL_12;
    }

    v5 = 1;
    if (!*(a1 + 666) || v6 != 8)
    {
      goto LABEL_12;
    }

    sub_297EDC848(a1);
    if (*(a1 + 744) == 1)
    {
      goto LABEL_3;
    }

    sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd4k_H_CheckNdef");
    v12 = *(a1 + 666);
    if (v12 == 64)
    {
      v14 = 65;
    }

    else
    {
      if (v12 == 2)
      {
        *(a1 + 666) = 64;
        *(a1 + 677) = 0;
LABEL_43:
        v5 = sub_297ED78C8(*(a1 + 2712), *(a1 + 8), *(a1 + 40));
        sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd4k_H_CheckNdef");
        goto LABEL_12;
      }

      v14 = 66;
    }

    *(a1 + 666) = v14;
    goto LABEL_43;
  }

  sub_297EDC848(a1);
  *(a1 + 666) = 2;
  if (*(a1 + 744) == 1)
  {
LABEL_3:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = sub_297ED78C8(*(a1 + 2712), *(a1 + 8), *(a1 + 40));
LABEL_12:
  if (*(a1 + 744) == 1)
  {
    *(a1 + 750) = 1;
    sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ChkNdefCmpltSects");
    if (*(a1 + 544) == 8)
    {
      v8 = 0;
      do
      {
        v9 = v8 + 1;
        if (v8 != 15 && *(a1 + 698 + v8) == 1)
        {
          if (v9 >= 0x20)
          {
            v10 = -15;
          }

          else
          {
            v10 = -3;
          }

          *(a1 + 668) += v10;
        }

        v8 = v9;
      }

      while (v9 != 39);
    }

    else
    {
      for (i = 0; i != 15; ++i)
      {
        if (*(a1 + 698 + i) == 1)
        {
          *(a1 + 668) -= 3;
        }
      }
    }

    sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ChkNdefCmpltSects");
    if (*(a1 + 668) - 256 >= 0xFFFFFF01)
    {
      *(a1 + 744) = 0;
      *(a1 + 666) = 4;
      if (sub_297ED8258(a1))
      {
        v5 = 1;
      }

      else
      {
        v5 = sub_297ED7A60(a1);
      }
    }

    else
    {
      v5 = 22;
    }
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ProChkNdef");
  *a2 = v5 != 13;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareStd_iChkNdefComp");
  return v5;
}

uint64_t sub_297ED95D8(_WORD *a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareStd_iRead");
  if (a1[132] == 16 && a1[124] > a1[126])
  {
    v7 = 0;
    if (!a1[40])
    {
      v4 = 0;
      goto LABEL_7;
    }

    *a2 = 0;
    v4 = sub_297ED96A8(a1, &v8, &v7);
    v5 = v4 != 13;
  }

  else
  {
    v4 = 27;
    v5 = 1;
  }

  *a2 = v5;
LABEL_7:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareStd_iRead");
  return v4;
}

uint64_t sub_297ED96A8(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_RemainTLV");
  v6 = *(a1 + 248);
  v7 = *(a1 + 252);
  v8 = v6 >= v7;
  v9 = v6 - v7;
  if (!v8)
  {
    v9 = 0;
  }

  if (*(a1 + 740) >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(a1 + 740);
  }

  if (*(a1 + 770) == 1)
  {
    *(a1 + 770) = 0;
    goto LABEL_8;
  }

  v12 = *(a1 + 80);
  v13 = *a3;
  v14 = 16 - v13;
  if (v13 >= 0x11)
  {
    v15 = 0;
  }

  else
  {
    v15 = 16 - v13;
  }

  if (v15 >= v12 && v10 <= v12)
  {
    v24 = *(a1 + 2720);
    v25 = *(a1 + 240) + v7;
    phOsalNfc_MemCopy();
    *(a1 + 252) += v10;
    *(a1 + 740) -= v10;
    if (v10 != *(a1 + 80))
    {
      v26 = *(a1 + 2720);
      v27 = *a3 + v10;
      phOsalNfc_MemCopy();
      *(a1 + 664) = 16 - *a3 - v10;
    }

    *a3 += v10;
    v28 = *(a1 + 80);
    *(a1 + 80) = v28 - v10;
    if (!*(a1 + 664))
    {
      if (*(a1 + 740))
      {
        v29 = v28 == v10;
      }

      else
      {
        v29 = 1;
      }

      v30 = v29;
      *(a1 + 672) = v30;
      ++*(a1 + 666);
      ++*(a1 + 667);
    }

    if (v28 == v10)
    {
      *(a1 + 66) = 1;
      *(a1 + 72) = 0;
    }

LABEL_47:
    *a2 = 0;
    goto LABEL_48;
  }

  if (v14 < v12 || v10 <= v12)
  {
    if (v14 >= v12)
    {
      v11 = 0;
      goto LABEL_52;
    }

    if (v14 < v10)
    {
      *a2 = 0;
      v20 = *(a1 + 2720);
      v21 = *(a1 + 240);
      v22 = *(a1 + 252);
      v23 = *a3;
      phOsalNfc_MemCopy();
      *(a1 + 252) = *(a1 + 252) - *a3 + 16;
      *(a1 + 740) = *a3 + *(a1 + 740) - 16;
      *(a1 + 80) = *a3 + *(a1 + 80) - 16;
      *a3 = 16;
      if (*(a1 + 80))
      {
        *(a1 + 66) = 0;
      }

      goto LABEL_8;
    }

    v31 = *(a1 + 2720);
    v32 = *(a1 + 240) + v7;
    phOsalNfc_MemCopy();
    *(a1 + 252) += v10;
    *(a1 + 740) -= v10;
    *(a1 + 80) -= v10;
    v33 = *(a1 + 2720);
    v34 = *a3 + v10;
    phOsalNfc_MemCopy();
    *(a1 + 664) = 16 - *a3 - v10;
    v35 = *a3;
    if (16 - v35 == v10)
    {
      if (*(a1 + 740))
      {
        v36 = *(a1 + 80) == 0;
      }

      else
      {
        v36 = 1;
      }

      *(a1 + 672) = v36;
      ++*(a1 + 666);
      ++*(a1 + 667);
      LOBYTE(v35) = *a3;
    }

    *a3 = v35 + v10;
    *(a1 + 66) = 0;
    goto LABEL_47;
  }

  v16 = *(a1 + 2720);
  v17 = *(a1 + 240);
  phOsalNfc_MemCopy();
  v18 = *(a1 + 80);
  *(a1 + 252) += v18;
  *(a1 + 740) -= v18;
  *(a1 + 66) = 1;
  *a3 += v18;
  *(a1 + 80) = 0;
  *a2 = 1;
  *(a1 + 72) = 0;
  if (*(a1 + 80) == 16)
  {
    *a2 = 0;
    *(a1 + 80) = 0;
LABEL_8:
    ++*(a1 + 666);
    ++*(a1 + 667);
    if (sub_297ED8258(a1))
    {
      v11 = 1;
    }

    else
    {
      if (*(a1 + 677) == 1)
      {
        v19 = sub_297ED83BC(a1);
      }

      else
      {
        v19 = sub_297ED7A60(a1);
      }

      v11 = v19;
    }

    goto LABEL_52;
  }

  *(a1 + 80) = 0;
LABEL_48:
  **(a1 + 552) = *(a1 + 252);
  if (*(a1 + 740))
  {
    v37 = *(a1 + 80) == 0;
  }

  else
  {
    v37 = 1;
  }

  v11 = 0;
  *(a1 + 672) = v37;
LABEL_52:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_RemainTLV");
  return v11;
}

uint64_t sub_297ED9AB4(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareStd_iWrite");
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ProWrABlock");
  *(a1 + 754) = 0;
  v4 = *(a1 + 252);
  v5 = *(a1 + 248);
  if (v4 >= v5)
  {
    v11 = 245;
    goto LABEL_14;
  }

  if (*(a1 + 671) == 1)
  {
    *(a1 + 664) = **(a1 + 528);
    v6 = *(a1 + 2720);
    phOsalNfc_MemCopy();
    v7 = *(a1 + 216);
    *(a1 + 252) += v7;
    v8 = *(a1 + 740);
    *(a1 + 671) = 0;
    v9 = (a1 + 74);
    v10 = v8 - v7;
    *(a1 + 740) = v10;
    *(a1 + 672) = v10 == 0;
    if (!v10)
    {
LABEL_4:
      *v9 = 1;
LABEL_12:
      *(a1 + 752) = *(a1 + 666);
      sub_297EDC240(a1);
      *(a1 + 666) = *(a1 + 70);
      v18 = sub_297EDC2D4(a1);
LABEL_13:
      v11 = v18;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (*(a1 + 670) == 1)
  {
    v12 = *(a1 + 2720);
    v13 = **(a1 + 528);
    phOsalNfc_MemCopy();
    v14 = *(a1 + 216);
    v15 = *(a1 + 740);
    v16 = v15 == v14;
    if (**(a1 + 528))
    {
      v16 = 0;
    }

    *(a1 + 664) = **(a1 + 528);
    *(a1 + 252) += v14;
    *(a1 + 670) = 0;
    *(a1 + 672) = v16;
    v9 = (a1 + 74);
    LOWORD(v10) = v15 - v14;
    *(a1 + 740) = v15 - v14;
    if (v15 == v14)
    {
      goto LABEL_4;
    }

LABEL_10:
    v17 = *v9;
    *v9 = v17;
    if (v17)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

  *(a1 + 664) = 0;
  v20 = *(a1 + 216);
  v21 = v20 + v4;
  *(a1 + 252) = v20 + v4;
  v22 = *(a1 + 740);
  v23 = v22 - v20;
  *(a1 + 740) = v22 - v20;
  if (v22 == v20 || v5 == v21)
  {
    ++*(a1 + 666);
    *(a1 + 672) = v22 == v20;
    if (v22 == v20)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_297ED8258(a1);
      v23 = *(a1 + 740);
    }

    ++*(a1 + 667);
    if (v23)
    {
      v24 = *(a1 + 74) == 1;
    }

    else
    {
      v24 = 1;
    }

    *(a1 + 74) = v24;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    ++*(a1 + 666);
    *(a1 + 754) = v5 - v21;
    if (sub_297ED8258(a1))
    {
      v11 = 1;
      goto LABEL_14;
    }

    ++*(a1 + 667);
    if (*(a1 + 677) == 1)
    {
      v25 = sub_297ED8C74(a1);
    }

    else
    {
      v25 = sub_297ED7A60(a1);
    }

    v11 = v25;
    if (v25)
    {
      goto LABEL_14;
    }
  }

  if (*(a1 + 74) == 1)
  {
    goto LABEL_12;
  }

  LOWORD(v10) = *(a1 + 740);
LABEL_35:
  if (v10)
  {
    v18 = sub_297EDCFF4(a1);
    goto LABEL_13;
  }

  v11 = 0;
LABEL_14:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ProWrABlock");
  *a2 = v11 != 13;
  if (v11 != 13)
  {
    **(a1 + 256) = *(a1 + 252);
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareStd_iWrite");
  return v11;
}

uint64_t sub_297ED9DAC(_BYTE *a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareStd_iAuth");
  a1[758] = 0;
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ProAuth");
  v4 = a1[71];
  if (v4 == 1)
  {
    a1[71] = 0;
    a1[677] = 1;
    if (a1[769] != 1)
    {
      v5 = sub_297EDC2D4(a1);
      goto LABEL_7;
    }

    a1[769] = 0;
  }

  else
  {
    LOBYTE(v4) = 1;
    a1[677] = 1;
  }

  a1[679] = v4;
  v5 = sub_297EDCAF8(a1);
LABEL_7:
  v6 = v5;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ProAuth");
  *a2 = v6 != 13;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareStd_iAuth");
  return v6;
}

uint64_t sub_297ED9EA8(uint64_t a1, BOOL *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareStd_iRdACSBit");
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ProAcsBits");
  if (*(a1 + 264) != 16)
  {
    v5 = 1;
    goto LABEL_92;
  }

  if (*(a1 + 679) != 1)
  {
    *(a1 + 739) = 0;
    v5 = sub_297EDB134(a1, &v24);
    goto LABEL_92;
  }

  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ChkAcsBit");
  v4 = *(a1 + 666);
  if (v4 < 4 || v4 - 64 <= 2)
  {
    v5 = 0;
    *(a1 + 545) = 0;
    goto LABEL_6;
  }

  v16 = *(a1 + 272);
  if (v16 == 7)
  {
    if (*(a1 + 273) == 143 && *(a1 + 274) == 15)
    {
      v17 = 0;
      goto LABEL_64;
    }

LABEL_65:
    v17 = 0;
    v18 = 0;
    goto LABEL_66;
  }

  if (v16 != 127 || *(a1 + 273) != 7 || *(a1 + 274) != 136)
  {
    goto LABEL_65;
  }

  v17 = 1;
LABEL_64:
  v18 = 1;
LABEL_66:
  *(a1 + 674) = v17;
  *(a1 + 675) = v18;
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_GPBChk");
  v5 = sub_297E9C178(a1, 9u);
  if (!v5)
  {
    if ((*(a1 + 275) & 0xF) != 0)
    {
      if ((*(a1 + 275) & 3) == 0 || (*(a1 + 275) & 0xC) != 0)
      {
        v19 = 3;
      }

      else
      {
        v19 = 1;
      }
    }

    else if (*(a1 + 739) == 1 || *(a1 + 738) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = 2 * (*(a1 + 737) != 1);
    }

    *(a1 + 545) = v19;
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_GPBChk");
LABEL_6:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ChkAcsBit");
  if (!v5 && *(a1 + 739) == 1)
  {
    v6 = *(a1 + 666);
    if (*(a1 + 545) == 3)
    {
      v7 = v6 >= 0 ? -3 : -15;
      *(a1 + 668) += v7;
      v8 = *(a1 + 746) == 1 ? 1 : 2;
      *(a1 + 748) = v8;
      v5 = sub_297EDC5DC(a1);
    }

    else
    {
      v9 = v6 == 64 && *(a1 + 544) == 8 ? *(a1 + 746) : 1;
      v5 = 0;
      *(a1 + 746) = v9;
    }

    if (*(a1 + 748) != 1)
    {
      *(a1 + 679) = 0;
      v10 = *(a1 + 666);
      v11 = v10 >= 0x3B && *(a1 + 544) == 7 && !*(a1 + 673) || *(a1 + 673) == 1;
      if (v10 >= 0xFA && *(a1 + 544) == 8 && !v11)
      {
        *(a1 + 673) = 1;
        *(a1 + 666) = 4;
LABEL_35:
        v5 = sub_297ED8258(a1);
        goto LABEL_36;
      }

      *(a1 + 673) = v11;
      if (v11)
      {
        LOBYTE(v10) = 4;
      }

      *(a1 + 666) = v10;
      if (v11)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_36:
  if (!v5)
  {
    sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ChkRdWr");
    v12 = *(a1 + 540);
    v5 = 1;
    if (v12 <= 2)
    {
      if (v12 == 1)
      {
        if (*(a1 + 545) == 3)
        {
          goto LABEL_60;
        }

        v20 = *(a1 + 666);
        if (v20 >= 4 && v20 - 65 >= 2 && *(a1 + 750) == 1)
        {
          if (*(a1 + 679))
          {
            v15 = sub_297ED7A60(a1);
          }

          else
          {
            v15 = sub_297EDCAF8(a1);
          }
        }

        else
        {
          v15 = sub_297ED78C8(*(a1 + 2712), *(a1 + 8), *(a1 + 40));
        }
      }

      else
      {
        if (v12 != 2)
        {
          goto LABEL_91;
        }

        if (*(a1 + 545) == 3)
        {
          goto LABEL_60;
        }

        if (*(a1 + 738) == 1)
        {
          goto LABEL_79;
        }

        v15 = sub_297ED83BC(a1);
      }
    }

    else
    {
      if (v12 != 3)
      {
        if (v12 != 4)
        {
          if (v12 == 6)
          {
            if (*(a1 + 545) == 2)
            {
              *a1 = 13;
              v24 = 0;
              v25 = 0;
              sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ProWrACSbitsRdOnly");
              if (*(a1 + 264) == 16)
              {
                v13 = *(a1 + 2720);
                phOsalNfc_MemCopy();
                v24 = 0x8F07F7D3F7D3F7D3;
                LOBYTE(v25) = 15;
                BYTE1(v25) |= 3u;
                v14 = *(a1 + 2720);
                phOsalNfc_MemCopy();
                if (*(a1 + 666) < 0)
                {
                  sub_297EDA4E0(a1);
                }

                else
                {
                  sub_297EDA5E4(a1);
                }

                v21 = *(a1 + 2720);
                phOsalNfc_MemCopy();
                *a1 = 13;
                v5 = sub_297EDA674(a1);
              }

              else
              {
                v5 = 255;
              }

              sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ProWrACSbitsRdOnly");
              goto LABEL_91;
            }

            goto LABEL_56;
          }

LABEL_91:
          sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ChkRdWr");
          goto LABEL_92;
        }

        if (!*(a1 + 675))
        {
LABEL_60:
          v5 = 20;
          goto LABEL_91;
        }

        goto LABEL_79;
      }

      if ((*(a1 + 545) | 2) == 3)
      {
LABEL_56:
        v5 = 21;
        goto LABEL_91;
      }

      if (*(a1 + 737) == 1)
      {
LABEL_79:
        v15 = sub_297EDCC48(a1);
        goto LABEL_80;
      }

      if (*(a1 + 676) != 1)
      {
        if (*(a1 + 756) == 1)
        {
          v15 = sub_297EDC2D4(a1);
          goto LABEL_80;
        }

        if (*(a1 + 70) != *(a1 + 666) || *(a1 + 560) != 1)
        {
          v15 = sub_297ED8C74(a1);
          goto LABEL_80;
        }
      }

      v15 = sub_297ED8B2C(a1);
    }

LABEL_80:
    v5 = v15;
    goto LABEL_91;
  }

LABEL_92:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ProAcsBits");
  *a2 = v5 != 13;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareStd_iRdACSBit");
  v22 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t sub_297EDA4E0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_Get4kStTrail");
  v2 = *(a1 + 666);
  switch(v2 & 0xF)
  {
    case 1:
      v2 += 14;
      break;
    case 2:
      v2 += 13;
      break;
    case 3:
      v2 += 12;
      break;
    case 4:
      v2 += 11;
      break;
    case 5:
      v2 += 10;
      break;
    case 6:
      v2 += 9;
      break;
    case 7:
      v2 += 8;
      break;
    case 8:
      v2 += 7;
      break;
    case 9:
      v2 += 6;
      break;
    case 0xA:
      v2 += 5;
      break;
    case 0xB:
      v2 += 4;
      break;
    case 0xC:
      v2 += 3;
      break;
    case 0xD:
      v2 += 2;
      break;
    case 0xE:
      ++v2;
      break;
    case 0xF:
      break;
    default:
      v2 += 15;
      break;
  }

  *(a1 + 266) = v2;

  return sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_Get4kStTrail");
}

uint64_t sub_297EDA5E4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_Get1kStTrail");
  v2 = *(a1 + 666);
  v3 = v2 & 3;
  if (v3 == 2)
  {
    v4 = v2 + 1;
  }

  else
  {
    v4 = *(a1 + 666);
  }

  v5 = v2 + 3;
  v6 = v2 + 2;
  if (!v3)
  {
    v6 = v5;
  }

  if (v3 > 1)
  {
    v6 = v4;
  }

  *(a1 + 266) = v6;

  return sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_Get1kStTrail");
}

uint64_t sub_297EDA674(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_WrTLV");
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *(a1 + 48) = sub_297ED7BB8;
  *(a1 + 56) = a1;
  *(a1 + 526) = 17;
  *(a1 + 232) = 160;
  *(a1 + 264) = 260;
  v2 = sub_297E98D38(a1, sub_297ED7F4C);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_WrTLV");
  return v2;
}

uint64_t sub_297EDA72C(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareStd_iWrACSBit");
  v4 = *(a1 + 545);
  if (v4 == 2)
  {
    LOBYTE(v4) = 1;
  }

  *(a1 + 545) = v4;
  *a2 = 1;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareStd_iWrACSBit");
  return 0;
}

uint64_t sub_297EDA7AC(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareStd_iWrNdefLen");
  if (*(a1 + 756) == 1)
  {
    sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_CallWrNdefLen");
    v4 = *(a1 + 68);
    if ((v4 - 13) > 1)
    {
      if (v4 != 15)
      {
LABEL_12:
        if (*(a1 + 677))
        {
          v11 = sub_297EDC2D4(a1);
        }

        else
        {
          v11 = sub_297ED7A60(a1);
        }

        v7 = v11;
        sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_CallWrNdefLen");
        v9 = v7 != 13;
        goto LABEL_16;
      }
    }

    else if (*(a1 + 248) <= 0xFEu)
    {
      goto LABEL_12;
    }

    ++*(a1 + 666);
    v10 = *(a1 + 2720);
    phOsalNfc_SetMemory();
    *(a1 + 664) = 0;
    sub_297ED8258(a1);
    goto LABEL_12;
  }

  if (*(a1 + 752) == *(a1 + 666))
  {
    v5 = *(a1 + 2720);
    v6 = *(a1 + 664);
    phOsalNfc_MemCopy();
  }

  v7 = 0;
  **(a1 + 256) = *(a1 + 252);
  *(a1 + 666) = *(a1 + 752);
  v8 = *(a1 + 545);
  if (!v8)
  {
    v8 = 2;
  }

  *(a1 + 545) = v8;
  v9 = 1;
LABEL_16:
  *a2 = v9;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareStd_iWrNdefLen");
  return v7;
}

uint64_t sub_297EDA930(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareStd_iRdToWrNdefLen");
  *a2 = 1;
  if (*(a1 + 264) == 16)
  {
    v4 = a1 + 266;
    *(a1 + 267) = *(a1 + 266);
    *(a1 + 266) = *(a1 + 666);
    sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_WriteNdefLen");
    *a1 = 6;
    if (*(a1 + 666) == *(a1 + 70))
    {
      if (*(a1 + 68) == 0xFF)
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v5 = *(a1 + 68) + 1;
      }

      sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_fillTLV2");
      if (*(a1 + 560))
      {
        v6 = *(a1 + 252);
      }

      else
      {
        v6 = *(a1 + 252) + *(a1 + 78);
      }

      *(a1 + 78) = v6;
      *(a1 + 756) = 1;
      v12 = *(a1 + 68);
      if (v12 == 15)
      {
        v15 = v5;
        v16 = 3;
      }

      else
      {
        if (v12 != 14)
        {
          if (v12 == 13)
          {
            *(v4 + v5) = 3;
            if (v5 >= 0xFEu)
            {
              v13 = v5;
            }

            else
            {
              v13 = v5 + 1;
            }

            if (v6 >= 0xFFu)
            {
              *(v4 + v13) = -1;
              if (v13 < 0xFEu)
              {
                ++v13;
              }

              *(v4 + v13) = HIBYTE(v6);
              goto LABEL_46;
            }
          }

          else
          {
            *(v4 + v5) = 3;
            if (v5 >= 0xFEu)
            {
              v13 = v5;
            }

            else
            {
              v13 = v5 + 1;
            }

            if (v6 >= 0xFFu)
            {
              *(v4 + v13) = -1;
              if (v13 < 0xFEu)
              {
                ++v13;
              }

              *(v4 + v13) = HIBYTE(v6);
              if (v13 < 0xFEu)
              {
                ++v13;
              }
            }
          }

          goto LABEL_45;
        }

        *(v4 + v5) = 3;
        if (v5 >= 0xFEu)
        {
          v13 = v5;
        }

        else
        {
          v13 = v5 + 1;
        }

        if (v6 < 0xFFu)
        {
LABEL_45:
          *(v4 + v13) = v6;
          *(a1 + 756) = 0;
          goto LABEL_46;
        }

        v15 = v13;
        v16 = -1;
      }

      *(v4 + v15) = v16;
LABEL_46:
      v14 = "phFriNfc_MifStd_H_fillTLV2";
      goto LABEL_47;
    }

    sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_fillTLV2_1");
    v8 = *(a1 + 68);
    v9 = *(a1 + 78);
    if (v8 != 13)
    {
      if (v8 == 14)
      {
        if (v9 <= 0xFE)
        {
LABEL_29:
          *(a1 + 756) = 0;
          v14 = "phFriNfc_MifStd_H_fillTLV2_1";
LABEL_47:
          sub_297E4DFAC(2, a1, 8u, 5u, v14);
          v17 = *(a1 + 2720);
          phOsalNfc_MemCopy();
          *(a1 + 526) = 17;
          *(a1 + 232) = 160;
          *(a1 + 264) = 260;
          v7 = sub_297E98D38(a1, sub_297ED7F4C);
          sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_WriteNdefLen");
          *a2 = v7 != 13;
          goto LABEL_48;
        }

        v10 = 268;
        v11 = 267;
        goto LABEL_26;
      }

      if (v9 >= 0xFF)
      {
        *(a1 + 267) = -1;
        v10 = 269;
        v11 = 268;
LABEL_26:
        *(a1 + v11) = BYTE1(v9);
LABEL_28:
        *(a1 + v10) = v9;
        goto LABEL_29;
      }
    }

    v10 = 267;
    goto LABEL_28;
  }

  v7 = 245;
LABEL_48:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareStd_iRdToWrNdefLen");
  return v7;
}

uint64_t sub_297EDAC6C(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareStd_iGetACTCardSize");
  if (*(a1 + 75))
  {
    sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ChkRemainTLVs");
    v4 = *(a1 + 75);
    switch(v4)
    {
      case 1:
        v11 = *(a1 + 78);
        v12 = 266;
        break;
      case 2:
        LOBYTE(v11) = *(a1 + 266);
        v12 = 267;
        break;
      case 3:
        v5 = a1 + 266;
        v6 = *(a1 + 266);
        if (v6 != 255)
        {
          if (*(a1 + 66) == 1)
          {
            v7 = sub_297E9C0B8(a1, v6);
            v6 = *(a1 + 266);
            v8 = *(a1 + 66) == 1;
          }

          else
          {
            v8 = 0;
            v7 = 0;
          }

          if (*(a1 + 740) >= v6)
          {
            v10 = v7;
          }

          else
          {
            v10 = 28;
          }

          *(a1 + 80) = v6;
          v29 = 0;
          if (v8 && !v10)
          {
            goto LABEL_34;
          }

          if (v10)
          {
            goto LABEL_44;
          }

          v30 = 1;
          v10 = sub_297EDCD94(a1, &v30, &v29);
          v21 = *(a1 + 740);
          v22 = v30;
          v23 = *(v5 + v30);
          v16 = v21 >= v23;
          v24 = v21 - v23;
          if (!v16)
          {
            v24 = 0;
          }

          *(a1 + 740) = v24;
          if (v22 < 0x10 || *a2)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }

        v29 = 0;
        v19 = __rev16(*(a1 + 267));
        v20 = *(a1 + 740);
        *(a1 + 80) = v19;
        if (*(a1 + 66) == 1 && v19 <= v20)
        {
          v10 = sub_297E9C0B8(a1, v19);
LABEL_34:
          *a2 = 1;
          goto LABEL_44;
        }

        if (v19 > v20)
        {
          *a2 = 1;
          v10 = 28;
LABEL_44:
          if (*(a1 + 80) > *(a1 + 740) && *(a1 + 547) == 1)
          {
            sub_297E4E0B0(2, a1, 8u, 2u, "phFriNfc_MifStd_H_ChkRemainTLVs: Current NDEF message exceeds the Maximum Tag NDEF size");
            v25 = *(a1 + 80);
            sub_297E50EBC(2, a1, 8u, 2u, "Current Ndef Message size");
            v26 = *(a1 + 740);
            sub_297E50EBC(2, a1, 8u, 2u, "Maximum Tag Ndef size");
            *(a1 + 545) = 0;
            *(a1 + 80) = 0;
            v10 = 25;
          }

          sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ChkRemainTLVs");
          *(a1 + 75) = 0;
          goto LABEL_48;
        }

        v30 = 2;
        sub_297EDCD94(a1, &v30, &v29);
        *(a1 + 740) -= bswap32(*(v5 + v30)) >> 16;
        goto LABEL_43;
      default:
        v10 = 0;
        goto LABEL_44;
    }

    v13 = *(a1 + v12) | (v11 << 8);
    v14 = *(a1 + 668);
    v15 = *(a1 + 667);
    v16 = v14 >= v15;
    v17 = 16 * (v14 - v15) + 16;
    if (!v16)
    {
      v17 = 16;
    }

    if (v17 < v13)
    {
      *(a1 + 80) = v13;
      v10 = 1;
      *a2 = 1;
      goto LABEL_44;
    }

    if (*(a1 + 66) == 1)
    {
      *(a1 + 80) = v13;
      v18 = sub_297E9C0B8(a1, v13);
      if (*(a1 + 80) <= *(a1 + 740))
      {
        v10 = v18;
      }

      else
      {
        v10 = 28;
      }

      goto LABEL_34;
    }

    *(a1 + 740) -= v13;
    *a2 = 0;
    v30 = 2;
    v29 = 1;
    if (*(a1 + 66) != 1)
    {
      sub_297EDCD94(a1, &v30, &v29);
    }

LABEL_43:
    v10 = sub_297EDCC48(a1);
    goto LABEL_44;
  }

  if (*a2)
  {
    v9 = (a1 + 738);
    if (*(a1 + 738) == 1)
    {
      goto LABEL_51;
    }

    v10 = 0;
LABEL_49:
    if (*(a1 + 737) != 1)
    {
      goto LABEL_64;
    }

    goto LABEL_50;
  }

  v10 = sub_297EDB134(a1, a2);
LABEL_48:
  v9 = (a1 + 738);
  if (*(a1 + 738) != 1)
  {
    goto LABEL_49;
  }

LABEL_50:
  if (v10 != 13)
  {
LABEL_51:
    *(a1 + 746) = 1;
    *a2 = 0;
    if (*(a1 + 677))
    {
      if (*(a1 + 68) - 13 <= 1 && *(a1 + 248) <= 0xFEu && (*(a1 + 80) > 0xFEu || *(a1 + 76) == 1) && *(a1 + 547) == 3)
      {
        *(a1 + 769) = 1;
      }

      if (*v9 == 1)
      {
        sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_RdTLV");
        *a1 = 11;
        *(a1 + 540) = 2;
        v10 = sub_297EDCB98(a1, *(a1 + 666));
        sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_RdTLV");
LABEL_63:
        *(a1 + 737) = 0;
        goto LABEL_64;
      }

      v27 = sub_297ED8B2C(a1);
    }

    else
    {
      v27 = sub_297ED7A60(a1);
    }

    v10 = v27;
    goto LABEL_63;
  }

LABEL_64:
  if (*(a1 + 739) == 1 || *(a1 + 750) == 1)
  {
    *a2 = v10 != 13;
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareStd_iGetACTCardSize");
  return v10;
}

uint64_t sub_297EDB134(uint64_t a1, BOOL *a2)
{
  v47 = 0;
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ChkTLVs");
  *(a1 + 540) = 4;
  v4 = *(a1 + 68);
  v5 = a1 + 266;
  while (1)
  {
LABEL_2:
    while (1)
    {
      v6 = *(v5 + v4);
      while (v6 == 254)
      {
        if (*(a1 + 66) == 1)
        {
          v48 = ++v4;
          --*(a1 + 740);
          goto LABEL_2;
        }

        if (!*(a1 + 66))
        {
          v32 = 1;
          *(a1 + 672) = 1;
          goto LABEL_66;
        }
      }

      if (*(v5 + v4))
      {
        break;
      }

      v48 = ++v4;
      v14 = *(a1 + 86) + 1;
      *(a1 + 86) = v14;
      *(a1 + 88) = v14;
      v15 = *(v5 + v4 - 1);
      v16 = *(a1 + 740) - 1;
      *(a1 + 740) = v16;
      if ((*(v5 + v4) | (v15 << 8)) > v16)
      {
        goto LABEL_65;
      }

      v17 = sub_297EDCCD8(a1, v4);
      if (v17)
      {
        v32 = v17;
        *(a1 + 68) = 0;
        goto LABEL_66;
      }
    }

    if (v6 == 3)
    {
      *(a1 + 70) = *(a1 + 666);
      *(a1 + 68) = v4;
      *(a1 + 66) = 1;
      v7 = 16 * *(a1 + 668);
      v8 = *(a1 + 86);
      v9 = v7 >= v8;
      v10 = v7 - v8;
      if (!v9)
      {
        v10 = 0;
      }

      v11 = v10;
      v12 = v10 - 4;
      if ((v10 & 0xFFFE) != 0)
      {
        v13 = v10 - 2;
      }

      else
      {
        v13 = 0;
      }

      if (v11 > 0xFE)
      {
        v13 = v12;
      }

      *(a1 + 740) = v13;
    }

    else
    {
      if (!*(a1 + 66))
      {
        *(a1 + 80) = 0;
        *(a1 + 545) = 3;
        *a2 = 1;
        v32 = 22;
        goto LABEL_66;
      }

      *(a1 + 86) = 0;
    }

    v18 = (v4 + 1);
    v48 = v4 + 1;
    if (v18 == 16)
    {
      *(a1 + 72) = 1;
      *(a1 + 75) = 3;
    }

    v19 = sub_297EDCCD8(a1, v18);
    if (v19)
    {
      goto LABEL_42;
    }

    v20 = *(a1 + 668);
    v21 = *(a1 + 667);
    v9 = v20 >= v21;
    v22 = 16 * (v20 - v21);
    if (v9)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = 16 - (v4 + 1);
    if ((v4 + 1) >= 0x11u)
    {
      v24 = 0;
    }

    v25 = (v4 + 1);
    v26 = *(v5 + v25);
    v27 = *(a1 + 66);
    if (v26 != 255 && v23 + v24 < v26)
    {
      if (v27 != 1)
      {
LABEL_48:
        v32 = 1;
        *a2 = 1;
        goto LABEL_66;
      }

LABEL_45:
      v32 = sub_297E9C0B8(a1, v26);
      *(a1 + 80) = *(v5 + v25);
LABEL_46:
      v31 = 1;
LABEL_47:
      *a2 = v31;
      goto LABEL_66;
    }

    if (v26 != 255 && v27 == 1)
    {
      goto LABEL_45;
    }

    v28 = v26 + 2;
    if (v26 == 255)
    {
      v28 = 0;
    }

    *(a1 + 740) -= v28;
    v29 = *(v5 + v25);
    if (!*(v5 + v25))
    {
      goto LABEL_48;
    }

    v47 = 0;
    if (v29 == 255)
    {
      break;
    }

    v30 = sub_297EDCD94(a1, &v48, &v47);
    v4 = v48;
    if (v48 >= 0x10u && !v30)
    {
      *(a1 + 72) = 0;
      *(a1 + 75) = 0;
      v19 = sub_297EDCC48(a1);
LABEL_42:
      v32 = v19;
      v31 = v19 != 13;
      goto LABEL_47;
    }
  }

  v47 = 1;
  v33 = (v4 + 2);
  if (v33 == 16)
  {
    *(a1 + 72) = 1;
    *(a1 + 75) = 2;
    if (*(a1 + 248) <= 0xFEu)
    {
      *(a1 + 76) = 1;
    }
  }

  v34 = sub_297EDCCD8(a1, v33);
  if (v34)
  {
    goto LABEL_57;
  }

  v35 = (v4 + 3);
  if (v35 == 16)
  {
    *(a1 + 72) = 1;
    *(a1 + 75) = 1;
    *(a1 + 78) = *(a1 + 281);
    if (*(a1 + 248) <= 0xFEu)
    {
      *(a1 + 76) = 1;
    }
  }

  v36 = *(v5 + (v4 + 2));
  v34 = sub_297EDCCD8(a1, v35);
  if (v34)
  {
LABEL_57:
    v32 = v34;
    goto LABEL_66;
  }

  v37 = *(a1 + 668);
  v38 = *(a1 + 667);
  v9 = v37 >= v38;
  v39 = 16 * (v37 - v38);
  if (v9)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = 16 - (v4 + 3);
  if ((v4 + 3) >= 0x11u)
  {
    v41 = 0;
  }

  v42 = *(v5 + (v4 + 3)) | (v36 << 8);
  if (v40 + v41 < v42)
  {
    *(a1 + 80) = *(v5 + (v4 + 3)) | (v36 << 8);
LABEL_65:
    v32 = 29;
    goto LABEL_66;
  }

  if (*(a1 + 66) == 1)
  {
    *(a1 + 80) = *(v5 + (v4 + 3)) | (v36 << 8);
    v32 = sub_297E9C0B8(a1, v42);
    goto LABEL_46;
  }

  *(a1 + 740) -= (v36 << 8) | *(v5 + (v4 + 3) + 1);
  v48 = v4 + 4;
  v46 = sub_297EDCD94(a1, &v48, &v47);
  v32 = v46;
  if (v48 >= 0x10u && !v46)
  {
    *(a1 + 72) = 0;
    *(a1 + 75) = 0;
    v34 = sub_297EDCC48(a1);
    goto LABEL_57;
  }

LABEL_66:
  if (*(a1 + 80) > *(a1 + 740) && *(a1 + 547) == 1)
  {
    sub_297E4E0B0(2, a1, 8u, 2u, "phFriNfc_MifStd_H_ChkTLVs: Current NDEF message exceeds the Maximum Tag NDEF size");
    v43 = *(a1 + 80);
    sub_297E50EBC(2, a1, 8u, 2u, "Current Ndef Message size");
    v44 = *(a1 + 740);
    sub_297E50EBC(2, a1, 8u, 2u, "Maximum Tag Ndef size");
    *(a1 + 545) = 0;
    *(a1 + 80) = 0;
    v32 = 25;
  }

  else if (!*(a1 + 740))
  {
    v32 = *(a1 + 66) != 1;
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ChkTLVs");
  return v32;
}

uint64_t sub_297EDB624(uint64_t a1, BOOL *a2)
{
  v70 = *MEMORY[0x29EDCA608];
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareStd_iRdBefWrNdefLen");
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ProBytesToWr");
  if (*(a1 + 264) != 16)
  {
    v14 = 20;
    goto LABEL_127;
  }

  v4 = *(a1 + 2720);
  v5 = a1 + 266;
  phOsalNfc_MemCopy();
  v6 = *(a1 + 2720);
  v7 = (a1 + 267);
  phOsalNfc_MemCopy();
  v8 = *(a1 + 666);
  *(a1 + 266) = v8;
  if (v8 != *(a1 + 70))
  {
    sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_UpdRemTLV");
    v15 = *(a1 + 68);
    if (v15 >= 0x11)
    {
      v16 = 0;
    }

    else
    {
      v16 = 16 - v15;
    }

    if (v16 == 2)
    {
      v19 = *v7;
      if (v19 == 255)
      {
        LOWORD(v19) = *(a1 + 268) | 0xFF00;
      }

      *(a1 + 78) = v19;
      if (*(a1 + 248) >= 0xFFu)
      {
        *(a1 + 267) = 0;
        v18 = (a1 + 268);
        LOBYTE(v11) = 2;
        goto LABEL_27;
      }
    }

    else
    {
      if (v16 != 1)
      {
        *(a1 + 78) = *(a1 + 267) | (*(a1 + 78) << 8);
        LOBYTE(v11) = 1;
        v18 = (a1 + 267);
        goto LABEL_27;
      }

      v17 = *v7;
      if (v17 == 255)
      {
        v17 = bswap32(*(a1 + 268)) >> 16;
      }

      *(a1 + 78) = v17;
      *(a1 + 267) = 0;
      if (*(a1 + 248) >= 0xFFu)
      {
        *(a1 + 268) = 0;
        v18 = (a1 + 269);
        LOBYTE(v11) = 3;
LABEL_27:
        *v18 = 0;
        goto LABEL_28;
      }
    }

    LOBYTE(v11) = 1;
LABEL_28:
    v9 = "phFriNfc_MifStd_H_UpdRemTLV";
    goto LABEL_29;
  }

  v9 = "phFriNfc_MifStd_H_UpdateTLV";
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_UpdateTLV");
  v10 = *(a1 + 68);
  LOWORD(v11) = v10 + 1;
  v12 = (v10 + 1);
  if (v12 > 0x103)
  {
    goto LABEL_29;
  }

  if (v12 >= 0x11)
  {
    v13 = 0;
  }

  else
  {
    v13 = 16 - v11;
  }

  if (v13 == 2)
  {
    if ((v10 + 1) > 0x101u)
    {
      goto LABEL_29;
    }

    v11 = (v10 + 2);
    v66 = *(v5 + v11);
    if (v66 == 255)
    {
      LOWORD(v66) = *(v11 + v5 + 1);
    }

    *(a1 + 78) = v66;
    *(v5 + v11) = 0;
    if (*(a1 + 248) < 0xFFu)
    {
      goto LABEL_29;
    }

    LOWORD(v11) = v10 + 3;
LABEL_140:
    v68 = v11;
    goto LABEL_144;
  }

  if (v13 != 1)
  {
    if (!v13)
    {
      *(v5 + (v10 + 1)) = 3;
      goto LABEL_29;
    }

    if ((v10 + 1) > 0x100u)
    {
      goto LABEL_29;
    }

    *(v5 + (v10 + 1)) = 3;
    v11 = (v10 + 2);
    v67 = *(v5 + v11);
    if (v67 == 255)
    {
      v67 = bswap32(*(v11 + v5 + 1)) >> 16;
    }

    *(a1 + 78) = v67;
    *(v5 + v11) = 0;
    if (*(a1 + 248) < 0xFFu)
    {
      goto LABEL_29;
    }

    *(v5 + (v10 + 3)) = 0;
    LOWORD(v11) = v10 + 4;
    goto LABEL_140;
  }

  if ((v10 + 1) == 259)
  {
    LOBYTE(v11) = 3;
    goto LABEL_29;
  }

  *(v5 + (v10 + 1)) = 3;
  LOBYTE(v11) = v10 + 2;
  v68 = (v10 + 2);
  v69 = *(v5 + v68);
  if (v69 == 255)
  {
    LOWORD(v69) = 0;
  }

  *(a1 + 78) = v69;
LABEL_144:
  *(v5 + v68) = 0;
LABEL_29:
  sub_297E4DFAC(2, a1, 8u, 5u, v9);
  if (*(a1 + 742) == 1)
  {
    v20 = -2;
  }

  else
  {
    v20 = 0;
  }

  *(a1 + 740) += v20;
  *(a1 + 742) = 0;
  *a1 = 10;
  if (v11 == 16)
  {
    v14 = sub_297EDA674(a1);
  }

  else
  {
    sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_fillSendBuf");
    v21 = *(a1 + 740);
    v22 = *(a1 + 248);
    v23 = *(a1 + 252);
    v24 = v22 >= v23;
    v25 = v22 - v23;
    if (!v24)
    {
      v25 = 0;
    }

    if (v25 <= v21)
    {
      LOWORD(v21) = v25;
    }

    *(a1 + 266) = *(a1 + 666);
    v26 = (v11 + 1);
    if (17 - (*(a1 + 664) + v26) <= v21)
    {
      v27 = 17 - (*(a1 + 664) + v26);
    }

    else
    {
      v27 = v21;
    }

    if (*(a1 + 664))
    {
      v28 = *(a1 + 2720);
      phOsalNfc_MemCopy();
      v29 = *(a1 + 664);
      v30 = *(a1 + 252);
    }

    v31 = *(a1 + 2720);
    v32 = *(a1 + 240);
    phOsalNfc_MemCopy();
    *(a1 + 216) = v27;
    **(a1 + 528) = v26 + v27 + *(a1 + 664) - 1;
    v33 = v26 + v27 + *(a1 + 664);
    if (v33 <= 0x10)
    {
      v34 = 0;
      v35 = (32 - v33) & 0x30;
      v36 = vdupq_n_s64(16 - v33);
      v37 = a1 + v33;
      do
      {
        v38 = vdupq_n_s64(v34);
        v39 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(v38, xmmword_297F13220)));
        if (vuzp1_s8(vuzp1_s16(v39, *v36.i8), *v36.i8).u8[0])
        {
          if (v34)
          {
            v40 = 0;
          }

          else
          {
            v40 = -2;
          }

          *(v37 + v34 + 266) = v40;
        }

        if (vuzp1_s8(vuzp1_s16(v39, *&v36), *&v36).i8[1])
        {
          if (v34 == -1)
          {
            v41 = -2;
          }

          else
          {
            v41 = 0;
          }

          *(v37 + v34 + 267) = v41;
        }

        v42 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(v38, xmmword_297F13210)));
        if (vuzp1_s8(vuzp1_s16(*&v36, v42), *&v36).i8[2])
        {
          if (v34 == -2)
          {
            v43 = -2;
          }

          else
          {
            v43 = 0;
          }

          *(v37 + v34 + 268) = v43;
        }

        if (vuzp1_s8(vuzp1_s16(*&v36, v42), *&v36).i8[3])
        {
          if (v34 == -3)
          {
            v44 = -2;
          }

          else
          {
            v44 = 0;
          }

          *(v37 + v34 + 269) = v44;
        }

        v45 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(v38, xmmword_297F13710)));
        if (vuzp1_s8(*&v36, vuzp1_s16(v45, *&v36)).i32[1])
        {
          if (v34 == -4)
          {
            v46 = -2;
          }

          else
          {
            v46 = 0;
          }

          *(v37 + v34 + 270) = v46;
        }

        if (vuzp1_s8(*&v36, vuzp1_s16(v45, *&v36)).i8[5])
        {
          if (v34 == -5)
          {
            v47 = -2;
          }

          else
          {
            v47 = 0;
          }

          *(v37 + v34 + 271) = v47;
        }

        v48 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(v38, xmmword_297F13700)));
        if (vuzp1_s8(*&v36, vuzp1_s16(*&v36, v48)).i8[6])
        {
          if (v34 == -6)
          {
            v49 = -2;
          }

          else
          {
            v49 = 0;
          }

          *(v37 + v34 + 272) = v49;
        }

        if (vuzp1_s8(*&v36, vuzp1_s16(*&v36, v48)).i8[7])
        {
          if (v34 == -7)
          {
            v50 = -2;
          }

          else
          {
            v50 = 0;
          }

          *(v37 + v34 + 273) = v50;
        }

        v51 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(v38, xmmword_297F136F0)));
        if (vuzp1_s8(vuzp1_s16(v51, *v36.i8), *v36.i8).u8[0])
        {
          if (v34 == -8)
          {
            v52 = -2;
          }

          else
          {
            v52 = 0;
          }

          *(v37 + v34 + 274) = v52;
        }

        if (vuzp1_s8(vuzp1_s16(v51, *&v36), *&v36).i8[1])
        {
          if (v34 == -9)
          {
            v53 = -2;
          }

          else
          {
            v53 = 0;
          }

          *(v37 + v34 + 275) = v53;
        }

        v54 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(v38, xmmword_297F136E0)));
        if (vuzp1_s8(vuzp1_s16(*&v36, v54), *&v36).i8[2])
        {
          if (v34 == -10)
          {
            v55 = -2;
          }

          else
          {
            v55 = 0;
          }

          *(v37 + v34 + 276) = v55;
        }

        if (vuzp1_s8(vuzp1_s16(*&v36, v54), *&v36).i8[3])
        {
          if (v34 == -11)
          {
            v56 = -2;
          }

          else
          {
            v56 = 0;
          }

          *(v37 + v34 + 277) = v56;
        }

        v57 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(v38, xmmword_297F136D0)));
        if (vuzp1_s8(*&v36, vuzp1_s16(v57, *&v36)).i32[1])
        {
          if (v34 == -12)
          {
            v58 = -2;
          }

          else
          {
            v58 = 0;
          }

          *(v37 + v34 + 278) = v58;
        }

        if (vuzp1_s8(*&v36, vuzp1_s16(v57, *&v36)).i8[5])
        {
          if (v34 == -13)
          {
            v59 = -2;
          }

          else
          {
            v59 = 0;
          }

          *(v37 + v34 + 279) = v59;
        }

        v60 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(v38, xmmword_297F136C0)));
        if (vuzp1_s8(*&v36, vuzp1_s16(*&v36, v60)).i8[6])
        {
          if (v34 == -14)
          {
            v61 = -2;
          }

          else
          {
            v61 = 0;
          }

          *(v37 + v34 + 280) = v61;
        }

        if (vuzp1_s8(*&v36, vuzp1_s16(*&v36, v60)).i8[7])
        {
          if (v34 == -15)
          {
            v62 = -2;
          }

          else
          {
            v62 = 0;
          }

          *(v37 + v34 + 281) = v62;
        }

        v34 += 16;
      }

      while (v35 != v34);
    }

    *(a1 + 74) = 1;
    v63 = *(a1 + 2720);
    phOsalNfc_MemCopy();
    *a1 = 10;
    v14 = sub_297EDA674(a1);
    sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_fillSendBuf");
  }

LABEL_127:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ProBytesToWr");
  *a2 = v14 != 13;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareStd_iRdBefWrNdefLen");
  v64 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t sub_297EDBDE4(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareStd_iWrTlv");
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ProWrTLV");
  v4 = *(a1 + 68);
  if (v4 == 15 || v4 >= 0xD && *(a1 + 248) >= 0xFFu)
  {
    v5 = *(a1 + 666);
    if (v5 == *(a1 + 70))
    {
      v6 = 1;
      *(a1 + 676) = 1;
      *(a1 + 666) = v5 + 1;
      ++*(a1 + 667);
      if (sub_297ED8258(a1))
      {
        goto LABEL_32;
      }

      if (*(a1 + 677))
      {
        v7 = sub_297ED8B2C(a1);
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  *(a1 + 676) = 0;
  *(a1 + 769) = 0;
  v8 = *(a1 + 252);
  if (*(a1 + 248) > v8)
  {
    v9 = **(a1 + 528);
    if (v9 <= 0xF)
    {
      *(a1 + 664) = v9;
      v10 = *(a1 + 2720);
      phOsalNfc_MemCopy();
      LOWORD(v8) = *(a1 + 252);
    }

    v11 = *(a1 + 216);
    v12 = v11 + v8;
    *(a1 + 252) = v11 + v8;
    v13 = *(a1 + 740) - v11;
    *(a1 + 740) = v13;
    if (v13)
    {
      if (*(a1 + 248) != v12)
      {
        ++*(a1 + 666);
        if (sub_297ED8258(a1))
        {
          v6 = 1;
          goto LABEL_32;
        }

        ++*(a1 + 667);
        if (*(a1 + 677) == 1)
        {
          v7 = sub_297ED8C74(a1);
          goto LABEL_26;
        }

LABEL_25:
        v7 = sub_297ED7A60(a1);
LABEL_26:
        v6 = v7;
        if (v7)
        {
          goto LABEL_32;
        }

        goto LABEL_27;
      }

      v6 = 0;
      *(a1 + 672) = 0;
      if (!*(a1 + 664))
      {
        ++*(a1 + 666);
        v6 = sub_297ED8258(a1);
        ++*(a1 + 667);
        LOWORD(v13) = *(a1 + 740);
      }
    }

    else
    {
      v6 = 0;
      *(a1 + 672) = 1;
    }

    if (v13)
    {
      v14 = *(a1 + 74) == 1;
    }

    else
    {
      v14 = 1;
    }

    *(a1 + 74) = v14;
    if (v6)
    {
      goto LABEL_32;
    }
  }

LABEL_27:
  if (*(a1 + 74) == 1)
  {
    *(a1 + 752) = *(a1 + 666);
    sub_297EDC240(a1);
    *(a1 + 666) = *(a1 + 70);
    v15 = sub_297EDC2D4(a1);
  }

  else
  {
    if (!*(a1 + 740))
    {
      v6 = 0;
      goto LABEL_32;
    }

    v15 = sub_297EDCFF4(a1);
  }

  v6 = v15;
LABEL_32:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ProWrTLV");
  *a2 = v6 != 13;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareStd_iWrTlv");
  return v6;
}

uint64_t sub_297EDC074(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareStd_iRdTlv");
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ProRdTLV");
  v4 = *(a1 + 80);
  v5 = *(a1 + 68);
  if (v4 >= 0xFF)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  v10 = (v6 + v5) & 0xF;
  v7 = 245;
  if (*(a1 + 264) == 16 && v4 && *(a1 + 248) > *(a1 + 252))
  {
    if (v5 == 14)
    {
      if (v4 > 0xFE)
      {
        goto LABEL_11;
      }
    }

    else if (v5 != 12 || v4 <= 0xFE)
    {
      goto LABEL_11;
    }

    *(a1 + 770) = 1;
LABEL_11:
    v7 = sub_297ED96A8(a1, &v9, &v10);
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ProRdTLV");
  *a2 = v7 != 13;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareStd_iRdTlv");
  return v7;
}

uint64_t sub_297EDC1B0(unsigned __int8 *a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareStd_iTermTlv");
  sub_297EDC240(a1);
  a1[666] = a1[70];
  v4 = sub_297EDC2D4(a1);
  *a2 = v4 != 13;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareStd_iTermTlv");
  return v4;
}

uint64_t sub_297EDC240(unsigned __int8 *a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_SetNdefBlkAuth");
  v2 = sub_297EDC9B8(a1, a1[70]);
  a1[71] = v2 != sub_297EDC9B8(a1, a1[666]);

  return sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_SetNdefBlkAuth");
}

uint64_t sub_297EDC2D4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_RdtoWrNdefLen");
  *a1 = 7;
  if (*(a1 + 71) == 1)
  {
    *(a1 + 677) = 0;
    v2 = sub_297ED7A60(a1);
  }

  else
  {
    *(a1 + 266) = *(a1 + 666);
    *(a1 + 526) = 1;
    *(a1 + 264) = 260;
    *(a1 + 232) = 48;
    v2 = sub_297E98D38(a1, sub_297ED7F4C);
  }

  v3 = v2;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_RdtoWrNdefLen");
  return v3;
}

uint64_t sub_297EDC390(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareStd_iDisconnect");
  *(a1 + 757) = 0;
  v4 = sub_297EDC414(a1);
  *a2 = v4 != 13;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareStd_iDisconnect");
  return v4;
}

uint64_t sub_297EDC414(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_CallConnect");
  *a1 = 16;
  v2 = sub_297E98F98(a1, sub_297EDD08C, *(a1 + 224));
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_CallConnect");
  return v2;
}

uint64_t sub_297EDC4A0(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareStd_iPoll");
  v4 = sub_297EDC414(a1);
  *a2 = v4 != 13;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareStd_iPoll");
  return v4;
}

uint64_t sub_297EDC520(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareStd_iConnect");
  if (*(a1 + 758) == 1)
  {
    *(a1 + 758) = 0;
LABEL_7:
    v4 = sub_297ED7A60(a1);
    goto LABEL_8;
  }

  if ((*(a1 + 560) || *(a1 + 540) != 3) && !*(a1 + 754))
  {
    goto LABEL_7;
  }

  v4 = sub_297EDC5DC(a1);
LABEL_8:
  v5 = v4;
  *a2 = v4 != 13;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareStd_iConnect");
  return v5;
}

uint64_t sub_297EDC5DC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ProStatNotValid");
  if (!*(a1 + 746))
  {
    *(a1 + 748) = 2;
    v5 = *(a1 + 666);
    if ((v5 & 0x80) != 0)
    {
      if (v5 > 0xEF)
      {
        goto LABEL_27;
      }

      v6 = 16;
      v7 = -240;
    }

    else
    {
      if (v5 > 3)
      {
        v8 = *(a1 + 544);
        if (v5 <= 0x43)
        {
          if (v8 == 8)
          {
            goto LABEL_27;
          }

          v6 = 4;
          v7 = -48;
          if (v5 >= 0x3C && v8 == 7)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }

        if (v8 == 7)
        {
          goto LABEL_27;
        }
      }

      else if (*(a1 + 544) - 7 < 2)
      {
        goto LABEL_27;
      }

      v6 = 4;
      v7 = -48;
    }

LABEL_26:
    *(a1 + 740) += v7;
    *(a1 + 666) = v6 + v5;
    if (!sub_297ED8258(a1))
    {
      v9 = sub_297ED7A60(a1);
      goto LABEL_30;
    }

LABEL_27:
    v4 = 22;
    goto LABEL_28;
  }

  if (*(a1 + 746) == 1 && *(a1 + 748) == 2)
  {
    goto LABEL_27;
  }

  *(a1 + 748) = 1;
  v3 = *(a1 + 540);
  v4 = 22;
  if (v3 == 1 || v3 == 4)
  {
    goto LABEL_28;
  }

  if (v3 != 2)
  {
    *(a1 + 672) = 1;
    *(a1 + 752) = *(a1 + 666);
    sub_297EDC240(a1);
    *(a1 + 666) = *(a1 + 70);
    v9 = sub_297EDC2D4(a1);
LABEL_30:
    v4 = v9;
    goto LABEL_28;
  }

  if (*(a1 + 66) == 1 && !*(a1 + 75))
  {
    v4 = 0;
    **(a1 + 552) = *(a1 + 252);
  }

LABEL_28:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_ProStatNotValid");
  return v4;
}

uint64_t sub_297EDC780(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifareStd_iAuthFail");
  *(a1 + 757) = 1;
  if (*(a1 + 759) == 1)
  {
    *(a1 + 759) = 0;
    if (*(a1 + 746))
    {
      v4 = *(a1 + 754);
    }

    else
    {
      v4 = 1;
    }

    *(a1 + 754) = v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else if (!*(a1 + 754))
  {
LABEL_8:
    v5 = 26;
    v6 = 1;
    goto LABEL_9;
  }

  v5 = sub_297ED8A90(a1);
  v6 = v5 != 13;
LABEL_9:
  *a2 = v6;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifareStd_iAuthFail");
  return v5;
}

uint64_t sub_297EDC848(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_fillAIDarray");
  v2 = *(a1 + 666);
  if (v2 == 64 || v2 == 1)
  {
    v4 = *(a1 + 678);
    *(a1 + v4 + 697) = 1;
    *(a1 + 678) = v4 + 1;
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1 + 697;
  v7 = v5 + 267;
  do
  {
    if (*(a1 + v7 - 1) == 3)
    {
      v8 = *(a1 + 678);
      if (*(a1 + v7) == 225)
      {
        *(a1 + 746) = 1;
        *(v6 + v8) = 0;
        v9 = v8 + 1;
        *(a1 + 678) = v9;
        goto LABEL_13;
      }
    }

    else
    {
      LODWORD(v8) = *(a1 + 678);
    }

    *(v6 + v8) = 1;
    v9 = v8 + 1;
    *(a1 + 678) = v9;
    v10 = *(a1 + 746);
    *(a1 + 746) = 0;
    *(a1 + 744) = v10 == 1;
    if (v10 == 1)
    {
      goto LABEL_15;
    }

LABEL_13:
    v11 = v7 - 267;
    v7 += 2;
  }

  while (v11 < 0xE);
  if (*(a1 + 744) != 1)
  {
    goto LABEL_22;
  }

LABEL_15:
  v12 = *(a1 + 544);
  if (v12 == 8)
  {
    if (v9 <= 0x27u)
    {
      v13 = a1 + v9;
      v14 = 40;
LABEL_21:
      memset((v13 + 697), 1, (v14 - v9));
    }
  }

  else if (v12 == 7 && v9 <= 0xFu)
  {
    v13 = a1 + v9;
    v14 = 16;
    goto LABEL_21;
  }

LABEL_22:

  return sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_fillAIDarray");
}

uint64_t sub_297EDC9B8(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_GetSect");
  if (v4 >= 0)
  {
    v5 = a2 >> 2;
  }

  else
  {
    v5 = (a2 >> 4) & 7 | 0x20;
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_GetSect");
  return v5;
}

uint64_t sub_297EDCA38(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd1k_H_BlkChk");
  v6 = *(a1 + 666);
  if (((v6 + 1) & 3) != 0)
  {
    if (*(a1 + a2 + 697))
    {
      *(a1 + 666) = v6 + 4;
    }

    else
    {
      if (v6 == 4 * a2 && !*(a1 + 664))
      {
        *(a1 + 677) = 0;
      }

      *a3 = 1;
    }
  }

  else
  {
    *(a1 + 666) = v6 + 1;
  }

  return sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd1k_H_BlkChk");
}

uint64_t sub_297EDCAF8(_BYTE *a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_RdAcsBit");
  *a1 = 5;
  v2 = a1[666];
  if (a1[679] == 1)
  {
    if (v2 < 0)
    {
      sub_297EDA4E0(a1);
    }

    else
    {
      sub_297EDA5E4(a1);
    }
  }

  else
  {
    a1[266] = v2;
  }

  v3 = sub_297EDCB98(a1, a1[266]);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_RdAcsBit");
  return v3;
}

uint64_t sub_297EDCB98(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_Rd16Bytes");
  *(a1 + 266) = a2;
  *(a1 + 526) = 1;
  *(a1 + 264) = 260;
  *(a1 + 232) = 48;
  *(a1 + 48) = sub_297ED7BB8;
  *(a1 + 56) = a1;
  v4 = sub_297E98D38(a1, sub_297ED7F4C);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_Rd16Bytes");
  return v4;
}

uint64_t sub_297EDCC48(_BYTE *a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_GetActCardLen");
  *a1 = 8;
  a1[540] = 4;
  if (a1[677])
  {
    v2 = sub_297EDCB98(a1, a1[666]);
  }

  else
  {
    v2 = sub_297ED7A60(a1);
  }

  v3 = v2;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_GetActCardLen");
  return v3;
}

uint64_t sub_297EDCCD8(_BYTE *a1, int a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_Chk16Bytes");
  if (a2 == 16)
  {
    ++a1[666];
    ++a1[667];
    if (sub_297ED8258(a1))
    {
      v4 = 1;
    }

    else
    {
      if (a1[677] == 1)
      {
        v5 = sub_297EDCC48(a1);
      }

      else
      {
        v5 = sub_297ED7A60(a1);
      }

      v4 = v5;
    }
  }

  else
  {
    v4 = 0;
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_Chk16Bytes");
  return v4;
}

uint64_t sub_297EDCD94(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_GetNxtTLV");
  v6 = *a2;
  v7 = 15 - v6;
  if (v6 >= 0x10)
  {
    v7 = 0;
  }

  if (!*a3)
  {
    v20 = *(a1 + 266 + v6);
    if ((v6 + v20 + 1) >= 0x10000)
    {
      LOBYTE(v17) = 0;
      v19 = 0;
      *a2 = 0;
      goto LABEL_35;
    }

    v17 = v6 + v20 + 1;
    *a2 = v17;
    if (v17 < 0x10u)
    {
      v19 = 0;
      goto LABEL_35;
    }

    v28 = *(a1 + 266 + v6);
    v12 = v28 >= v7;
    v29 = v28 - v7;
    if (v12)
    {
      v19 = v29;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_34;
  }

  *a3 = 0;
  if (*(a1 + 75) == 1)
  {
    v8 = *(a1 + 78);
    v9 = *a2;
    v10 = ((v8 << 8) & 0xFF00) + v9;
    v11 = v9 + (v8 << 8);
    v12 = v10 >= 0x10000;
    if (v10 >= 0x10000)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    v14 = a1 + v6;
    v15 = *(v14 + 266) + 1;
    v16 = v13 + v15;
    if (v12)
    {
      v11 = 0;
    }

    v17 = v11 + v15;
    if (v16 >= 0x10000)
    {
      v17 = 0;
    }

    *a2 = v17;
    v18 = *(v14 + 266) | (v8 << 8);
    if (v18 >= v7)
    {
      v19 = v18 - v7;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v21 = a1 + 266;
    v22 = (v6 - 1);
    if (!v6)
    {
      v22 = 0;
    }

    v23 = *(v21 + v22);
    v24 = *a2 + (v23 << 8);
    v25 = (*a2 + (v23 << 8));
    if (v24 >= 0x10000)
    {
      v25 = 0;
    }

    v26 = *(v21 + v6) + 1;
    v27 = v25 + v26;
    if (v24 >= 0x10000)
    {
      LOWORD(v24) = 0;
    }

    v17 = v24 + v26;
    if (v27 >= 0x10000)
    {
      v17 = 0;
    }

    *a2 = v17;
    v19 = (*(v21 + v6) | (v23 << 8)) - v7;
  }

  if (v17 > 0xFu)
  {
LABEL_34:
    LOBYTE(v17) = v19 & 0xF;
  }

LABEL_35:
  v30 = v17;
  *(a1 + 68) = v17;
  v31 = *(a1 + 666);
  if (v31 == 255)
  {
    v32 = 0;
    v36 = 0;
    if (v17)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v32 = 0;
  v33 = *(a1 + 667);
  if (v33 != 255 && v19)
  {
    do
    {
      *(a1 + 666) = v31 + 1;
      *(a1 + 667) = v33 + 1;
      v32 = sub_297ED8258(a1);
      v31 = *(a1 + 666);
      if (v31 == 255)
      {
        break;
      }

      v34 = v19;
      v19 -= 16;
      v33 = *(a1 + 667);
    }

    while (v33 != 255 && v34 >= 0x11);
    v30 = *(a1 + 68);
  }

  v36 = v31 + 1;
  if (!v30)
  {
LABEL_45:
    *(a1 + 666) = v36;
    ++*(a1 + 667);
    v32 = sub_297ED8258(a1);
  }

LABEL_46:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_GetNxtTLV");
  return v32;
}

uint64_t sub_297EDCFF4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MifStd_H_WrTermTLV");
  *a1 = 12;
  *(a1 + 266) = *(a1 + 666);
  *(a1 + 267) = -2;
  *(a1 + 268) = 0;
  *(a1 + 275) = 0;
  *(a1 + 74) = 0;
  v2 = sub_297EDA674(a1);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MifStd_H_WrTermTLV");
  return v2;
}

uint64_t sub_297EDD08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  sub_297E4E1B4(0, &v8, 8u, 5u, "phFriNfc_MifareStdMap_CB_ConnectDisconnect");
  if (a2)
  {
    (*(a2 + 48))(*(a2 + 2712), a2, a5);
  }

  return sub_297E4DFAC(0, &v8, 8u, 5u, "phFriNfc_MifareStdMap_CB_ConnectDisconnect");
}

uint64_t sub_297EDD10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 8u, 5u, "phFriNfc_MifareStdMap_ConvertToReadOnly");
  sub_297E57170(v10, &v9);
  v5 = 1;
  if (a2)
  {
    v6 = v9;
    if (v9)
    {
      *(v9 + 32) = a2;
      *(v6 + 40) = a3;
      *(v6 + 547) = 6;
      *(v6 + 540) = 6;
      *(v6 + 753) = 4;
      *(v6 + 66) = 0;
      *(v6 + 676) = 1;
      *(v6 + 737) = 0;
      *(v6 + 664) = 17039360;
      *(v6 + 756) = 0;
      *(v6 + 86) = 0;
      *(v6 + 68) = 0;
      *(v6 + 71) = 0;
      *(v6 + 740) = 16 * *(v6 + 668);
      *(v6 + 746) = 0;
      *(v6 + 757) = 0;
      *(v6 + 754) = 0;
      *(v6 + 759) = 1;
      if (!sub_297ED8258(v6))
      {
        v7 = v9;
        *(v9 + 672) = 0;
        v5 = sub_297ED7A60(v7);
      }
    }
  }

  sub_297E4DFAC(0, &v10, 8u, 5u, "phFriNfc_MifareStdMap_ConvertToReadOnly");
  return v5;
}

uint64_t sub_297EDD210(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_Desfire_Reset");
  v2 = *(a1 + 416);
  phOsalNfc_SetMemory();
  v3 = *(a1 + 416);
  phOsalNfc_SetMemory();
  *(a1 + 204) = 0;

  return sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_Desfire_Reset");
}

uint64_t sub_297EDD2A0(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x29EDCA608];
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_Desf_HWrapISONativeCmds");
  **(a1 + 96) = -112;
  *(*(a1 + 96) + 2) = 0;
  *(*(a1 + 96) + 3) = 0;
  if (a2 > 4)
  {
    if ((a2 - 7) < 2)
    {
      v8 = -81;
    }

    else
    {
      if (a2 == 5)
      {
        *(*(a1 + 96) + 1) = 61;
        *(*(a1 + 96) + 4) = 9;
        if (*(a1 + 24) - 1 >= 3)
        {
          v11 = 4;
        }

        else
        {
          v11 = 2;
        }

        *(*(a1 + 96) + 5) = v11;
        *(*(a1 + 96) + 6) = 0;
        *(*(a1 + 96) + 7) = 0;
        *(*(a1 + 96) + 8) = 0;
        *(*(a1 + 96) + 9) = 2;
        *(*(a1 + 96) + 11) = 0;
        v12 = *(a1 + 416);
        v13 = *(a1 + 96);
        phOsalNfc_MemCopy();
        *(*(a1 + 96) + 14) = 0;
        v7 = 15;
        goto LABEL_59;
      }

      if (a2 != 6)
      {
        goto LABEL_60;
      }

      v8 = 96;
    }

    *(*(a1 + 96) + 1) = v8;
    *(*(a1 + 96) + 4) = 0;
    v7 = 5;
    goto LABEL_59;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      *(*(a1 + 96) + 1) = -51;
      v14 = *(a1 + 96);
      if (*(a1 + 24) - 1 > 2)
      {
        *(v14 + 4) = 7;
        v15 = 6;
        v16 = 3;
        v17 = 5;
      }

      else
      {
        *(v14 + 4) = 9;
        *(*(a1 + 96) + 5) = 1;
        *(*(a1 + 96) + 6) = 3;
        v15 = 8;
        v16 = -31;
        v17 = 7;
      }

      *(*(a1 + 96) + v17) = v16;
      *(*(a1 + 96) + v15) = 0;
      *(*(a1 + 96) + v15 + 1) = -18;
      *(*(a1 + 96) + v15 + 2) = -18;
      *(*(a1 + 96) + v15 + 3) = 15;
      *(*(a1 + 96) + v15 + 4) = 0;
      *(*(a1 + 96) + v15 + 5) = 0;
    }

    else
    {
      if (a2 != 3)
      {
        *(*(a1 + 96) + 1) = 61;
        *(*(a1 + 96) + 4) = 22;
        if (*(a1 + 24) - 1 < 3)
        {
          v4 = 1;
        }

        else
        {
          v4 = 3;
        }

        *(*(a1 + 96) + 5) = v4;
        *(*(a1 + 96) + 6) = 0;
        *(*(a1 + 96) + 7) = 0;
        *(*(a1 + 96) + 8) = 0;
        *(*(a1 + 96) + 9) = 15;
        *(*(a1 + 96) + 10) = 0;
        *(*(a1 + 96) + 11) = 0;
        if (*(a1 + 24) - 1 <= 2)
        {
          v30 = bswap32(*(a1 + 208)) >> 16;
        }

        v5 = *(a1 + 416);
        v6 = *(a1 + 96);
        phOsalNfc_MemCopy();
        *(*(a1 + 96) + 27) = 0;
        v7 = 28;
        goto LABEL_59;
      }

      *(*(a1 + 96) + 1) = -51;
      v25 = *(a1 + 96);
      if (*(a1 + 24) - 1 > 2)
      {
        *(v25 + 4) = 7;
        v15 = 6;
        v26 = 4;
        v27 = 5;
      }

      else
      {
        *(v25 + 4) = 9;
        *(*(a1 + 96) + 5) = 2;
        *(*(a1 + 96) + 6) = 4;
        v15 = 8;
        v26 = -31;
        v27 = 7;
      }

      *(*(a1 + 96) + v27) = v26;
      *(*(a1 + 96) + v15) = 0;
      *(*(a1 + 96) + v15 + 1) = -18;
      *(*(a1 + 96) + v15 + 2) = -18;
      *(*(a1 + 96) + v15 + 3) = *(a1 + 208);
      *(*(a1 + 96) + v15 + 5) = *(a1 + 210);
    }

    *(*(a1 + 96) + v15 + 6) = 0;
    if (*(a1 + 24) - 1 > 2)
    {
      v7 = 13;
    }

    else
    {
      v7 = v15 + 7;
    }

LABEL_59:
    *(a1 + 104) = v7;
    goto LABEL_60;
  }

  if (!a2)
  {
    *(*(a1 + 96) + 1) = -54;
    if (*(a1 + 24) - 1 >= 3)
    {
      v18 = 5;
    }

    else
    {
      v18 = 14;
    }

    if (*(a1 + 24) - 1 < 3)
    {
      v19 = 1;
    }

    else
    {
      v19 = 16;
    }

    if (*(a1 + 24) - 1 >= 3)
    {
      v20 = -18;
    }

    else
    {
      v20 = 0;
    }

    *(*(a1 + 96) + 4) = v18;
    *(*(a1 + 96) + 5) = v19;
    *(*(a1 + 96) + 6) = v20;
    *(*(a1 + 96) + 7) = v20;
    *(*(a1 + 96) + 8) = 15;
    if (*(a1 + 24) - 1 >= 3)
    {
      v21 = 1;
    }

    else
    {
      v21 = 33;
    }

    *(*(a1 + 96) + 9) = v21;
    if (*(a1 + 24) - 1 > 2)
    {
      v24 = 10;
    }

    else
    {
      *(*(a1 + 96) + 10) = 5;
      *(*(a1 + 96) + 11) = -31;
      v22 = *(a1 + 416);
      v23 = *(a1 + 96);
      phOsalNfc_MemCopy();
      v24 = 19;
    }

    *(*(a1 + 96) + v24) = 0;
    if (*(a1 + 24) - 1 < 3)
    {
      v7 = v24 + 1;
    }

    else
    {
      v7 = 11;
    }

    goto LABEL_59;
  }

  if (a2 == 1)
  {
    *(*(a1 + 96) + 1) = 90;
    *(*(a1 + 96) + 4) = 3;
    if (*(a1 + 24) - 1 < 3)
    {
      v9 = 1;
    }

    else
    {
      v9 = 16;
    }

    if (*(a1 + 24) - 1 >= 3)
    {
      v10 = -18;
    }

    else
    {
      v10 = 0;
    }

    *(*(a1 + 96) + 5) = v9;
    *(*(a1 + 96) + 6) = v10;
    *(*(a1 + 96) + 7) = v10;
    *(*(a1 + 96) + 8) = 0;
    v7 = 9;
    goto LABEL_59;
  }

LABEL_60:
  result = sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_Desf_HWrapISONativeCmds");
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297EDD82C(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_Desf_HGetHWVersion");
  *(a1 + 25) = 11;
  sub_297EDD2A0(a1, 6);
  v2 = sub_297EDD8B0(a1);
  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_Desf_HGetHWVersion");
  return v2;
}

uint64_t sub_297EDD8B0(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_Desf_HSendTransCmd");
  *(a1 + 80) = 0;
  *(a1 + 8) &= 0xFCu;
  *(a1 + 64) = sub_297EA1230;
  *(a1 + 72) = a1;
  v3 = *(a1 + 88);
  v2 = *(a1 + 96);
  *v3 = 252;
  v4 = sub_297ECA38C(*a1, (a1 + 64), *(a1 + 16), *(a1 + 80), a1 + 8, v2, *(a1 + 104), v2, v3);
  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_Desf_HSendTransCmd");
  return v4;
}

uint64_t sub_297EDD974(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_Desf_HGetUIDDetails");
  if (*(*(a1 + 96) + **(a1 + 88) - 1) == 175)
  {
    *(a1 + 25) = 9;
    sub_297EDD2A0(a1, 8);
    v2 = sub_297EDD8B0(a1);
  }

  else
  {
    v2 = 13;
  }

  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_Desf_HGetUIDDetails");
  return v2;
}

uint64_t sub_297EDDA10(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_Desfire_Format");
  *(a1 + 24) = 0;
  v2 = sub_297EDD82C(a1);
  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_Desfire_Format");
  return v2;
}

uint64_t sub_297EDDA84(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_Desf_HReadOnlyReadCCFile");
  v2 = *(a1 + 96);
  v3 = &v2[**(a1 + 88)];
  if (*(v3 - 2) == 145 && !*(v3 - 1))
  {
    *(a1 + 25) = 103;
    *v2 = -112;
    *(*(a1 + 96) + 1) = -67;
    *(*(a1 + 96) + 2) = 0;
    *(*(a1 + 96) + 3) = 0;
    *(*(a1 + 96) + 4) = 7;
    if (*(a1 + 24) - 1 < 3)
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }

    *(*(a1 + 96) + 5) = v6;
    *(*(a1 + 96) + 6) = 0;
    *(*(a1 + 96) + 7) = 0;
    *(*(a1 + 96) + 8) = 0;
    *(*(a1 + 96) + 9) = 15;
    *(*(a1 + 96) + 10) = 0;
    *(*(a1 + 96) + 11) = 0;
    *(*(a1 + 96) + 12) = 0;
    *(a1 + 104) = 13;
    v4 = sub_297EDD8B0(a1);
  }

  else
  {
    v4 = 35;
  }

  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_Desf_HReadOnlyReadCCFile");
  return v4;
}

uint64_t sub_297EDDBAC(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x29EDCA608];
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_Desf_Process");
  if (a2)
  {
    goto LABEL_70;
  }

  v4 = *(a1 + 25);
  v5 = 245;
  if (v4 <= 9)
  {
    if (*(a1 + 25) <= 2u)
    {
      if (*(a1 + 25))
      {
        if (v4 == 1)
        {
          sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_Desf_HCreatCCFile");
          v21 = *(a1 + 96);
          if (*v21 == 145 && !v21[1])
          {
            *(a1 + 25) = 2;
            sub_297EDD2A0(a1, 2);
            a2 = sub_297EDD8B0(a1);
          }

          else
          {
            a2 = 35;
          }

          v7 = "phFriNfc_Desf_HCreatCCFile";
        }

        else
        {
          sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_Desf_HCreatNDEFFile");
          v9 = *(a1 + 96);
          if (*v9 == 145 && !v9[1])
          {
            *(a1 + 25) = 3;
            sub_297EDD2A0(a1, 3);
            a2 = sub_297EDD8B0(a1);
          }

          else
          {
            a2 = 35;
          }

          v7 = "phFriNfc_Desf_HCreatNDEFFile";
        }
      }

      else
      {
        sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_Desf_HSelectApp");
        v17 = *(a1 + 96);
        if (*v17 == 145 && !v17[1])
        {
          *(a1 + 25) = 1;
          sub_297EDD2A0(a1, 1);
          a2 = sub_297EDD8B0(a1);
        }

        else
        {
          a2 = 35;
        }

        v7 = "phFriNfc_Desf_HSelectApp";
      }

      goto LABEL_68;
    }

    if (*(a1 + 25) <= 4u)
    {
      if (v4 == 3)
      {
        sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_Desf_HWrCCBytes");
        v12 = *(a1 + 96);
        if (*v12 == 145 && !v12[1])
        {
          *(a1 + 25) = 4;
          sub_297EDD2A0(a1, 4);
          a2 = sub_297EDD8B0(a1);
        }

        else
        {
          a2 = 35;
        }

        v7 = "phFriNfc_Desf_HWrCCBytes";
      }

      else
      {
        sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_Desf_HWrNDEFData");
        v6 = *(a1 + 96);
        if (*v6 == 145 && !v6[1])
        {
          *(a1 + 25) = 5;
          sub_297EDD2A0(a1, 5);
          a2 = sub_297EDD8B0(a1);
        }

        else
        {
          a2 = 35;
        }

        v7 = "phFriNfc_Desf_HWrNDEFData";
      }

      goto LABEL_68;
    }

    if (v4 != 5)
    {
      if (v4 == 9)
      {
        sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_Desf_HCreateApp");
        v10 = *(a1 + 96);
        if (*(v10 + 14) == 145 && !*(v10 + 15))
        {
          *(a1 + 25) = 0;
          sub_297EDD2A0(a1, 0);
          a2 = sub_297EDD8B0(a1);
        }

        else
        {
          a2 = 35;
        }

        v7 = "phFriNfc_Desf_HCreateApp";
        goto LABEL_68;
      }

      goto LABEL_71;
    }

    v15 = *(a1 + 96);
    if (*v15 == 145 && !v15[1])
    {
      v5 = 0;
      *(a1 + 26) = 0;
      if (*(a1 + 24) - 1 > 2)
      {
        goto LABEL_71;
      }

      goto LABEL_88;
    }

LABEL_70:
    v5 = a2;
    if (a2 == 13)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if (*(a1 + 25) <= 0x63u)
  {
    if (v4 != 10)
    {
      if (v4 == 11)
      {
        sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_Desf_HGetSWVersion");
        if (*(*(a1 + 96) + **(a1 + 88) - 1) == 175)
        {
          *(a1 + 25) = 10;
          sub_297EDD2A0(a1, 7);
          a2 = sub_297EDD8B0(a1);
        }

        else
        {
          a2 = 35;
        }

        v7 = "phFriNfc_Desf_HGetSWVersion";
LABEL_68:
        v14 = a1;
        goto LABEL_69;
      }

      if (v4 == 15)
      {
        goto LABEL_70;
      }

LABEL_71:
      sub_297EA0EA0(a1, v5);
      goto LABEL_72;
    }

    sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_Desf_HUpdateVersionDetails");
    v18 = *(a1 + 96);
    if (v18[**(a1 + 88) - 1] != 175)
    {
      sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_Desf_HUpdateVersionDetails");
      goto LABEL_99;
    }

    v19 = v18[3];
    *(a1 + 212) = v19;
    v20 = v18[4];
    *(a1 + 214) = v20;
    if (v19 || v20 != 6)
    {
      if (v19 != 3 && v19 != 2)
      {
        if (v19 == 1)
        {
          a2 = 0;
          v24 = 1;
          *(a1 + 24) = 1;
        }

        else
        {
          v24 = 0;
          a2 = 29;
        }

LABEL_94:
        if (*(a1 + 24) - 1 <= 2)
        {
          v29 = v18[5] - 16;
          if (v29 >= 0xF || ((0x5541u >> v29) & 1) == 0)
          {
            sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_Desf_HUpdateVersionDetails");
            v5 = 29;
            goto LABEL_71;
          }

          *(a1 + 208) = dword_297F13748[v29];
        }

        sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_Desf_HUpdateVersionDetails");
        if (!v24)
        {
          goto LABEL_70;
        }

LABEL_99:
        v8 = sub_297EDD974(a1);
        goto LABEL_100;
      }

      a2 = 0;
      *(a1 + 24) = v19;
    }

    else
    {
      a2 = 0;
      *(a1 + 208) = 3806;
    }

    v24 = 1;
    goto LABEL_94;
  }

  if (*(a1 + 25) <= 0x66u)
  {
    if (v4 == 100)
    {
      v13 = *(a1 + 96) + **(a1 + 88);
      if (*(v13 - 2) != 145 || *(v13 - 1))
      {
        sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_Desf_HReadOnlySelectApp");
        *(a1 + 24) = 25856;
        sub_297EDD2A0(a1, 1);
        a2 = sub_297EDD8B0(a1);
        v14 = a1;
        v7 = "phFriNfc_Desf_HReadOnlySelectApp";
LABEL_69:
        sub_297E4DFAC(3, v14, 8u, 5u, v7);
        goto LABEL_70;
      }
    }

    else if (v4 != 101)
    {
      goto LABEL_71;
    }

    v8 = sub_297EDDA84(a1);
    goto LABEL_100;
  }

  if (v4 == 103)
  {
    sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_Desf_HReadOnlyWriteCCFile");
    v16 = *(a1 + 96) + **(a1 + 88);
    if (*(v16 - 2) == 145 && !*(v16 - 1))
    {
      *(a1 + 25) = 104;
      v25 = *(a1 + 416);
      phOsalNfc_MemCopy();
      **(a1 + 96) = -112;
      *(*(a1 + 96) + 1) = 61;
      *(*(a1 + 96) + 2) = 0;
      *(*(a1 + 96) + 3) = 0;
      *(*(a1 + 96) + 4) = 22;
      if (*(a1 + 24) - 1 < 3)
      {
        v26 = 1;
      }

      else
      {
        v26 = 3;
      }

      *(*(a1 + 96) + 5) = v26;
      *(*(a1 + 96) + 6) = 0;
      *(*(a1 + 96) + 7) = 0;
      *(*(a1 + 96) + 8) = 0;
      *(*(a1 + 96) + 9) = 15;
      *(*(a1 + 96) + 11) = 0;
      v27 = *(a1 + 416);
      v28 = *(a1 + 96);
      phOsalNfc_MemCopy();
      *(*(a1 + 96) + 27) = 0;
      *(a1 + 104) = 28;
      a2 = sub_297EDD8B0(a1);
    }

    else
    {
      a2 = 35;
    }

    v7 = "phFriNfc_Desf_HReadOnlyWriteCCFile";
    goto LABEL_68;
  }

  if (v4 != 104)
  {
    goto LABEL_71;
  }

  v11 = *(a1 + 96) + **(a1 + 88);
  if (*(v11 - 2) != 145 || *(v11 - 1))
  {
    v5 = 35;
    goto LABEL_71;
  }

  if (*(a1 + 24) - 1 > 2)
  {
    goto LABEL_70;
  }

LABEL_88:
  v8 = sub_297ECA698(*a1, (a1 + 64), *(a1 + 16));
  if (v8 != 13)
  {
LABEL_100:
    a2 = v8;
    goto LABEL_70;
  }

  *(a1 + 25) = 15;
LABEL_72:
  v22 = *MEMORY[0x29EDCA608];

  return sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_Desf_Process");
}

uint64_t sub_297EDE38C(uint64_t a1)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SendRidCmd");
  v2 = 1;
  if (a1)
  {
    v3 = *(a1 + 856);
    v4 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v5 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    LODWORD(v7) = 0;
    *&v8 = a1 + 1534;
    DWORD2(v8) = 7;
    *&v9 = a1 + 2064;
    DWORD2(v9) = 530;
    WORD3(v7) = 500;
    LOBYTE(v10) = 1;
    v2 = sub_297F06F3C(*(a1 + 3088), *(v3 + 8), &v7, sub_297E5BA84, a1);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SendRidCmd");
  return v2;
}

uint64_t sub_297EDE4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ProcessRidResp");
  if (a1 && !a2)
  {
    if (a3 && *a3 && *(a3 + 8) == 6)
    {
      v6 = *(a1 + 856);
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "RID response received");
      a2 = sub_297E9C010(*(a1 + 3088), *(v6 + 8 * *(a1 + 1529) + 8), *a3);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Invalid parameters (phLibNfc_ProcessRidResp)\n");
      a2 = 255;
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ProcessRidResp");
  return a2;
}

uint64_t sub_297EDE59C(uint64_t a1)
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SendRallCmd");
  if (a1)
  {
    if (*(a1 + 2933) == 1)
    {
      v2 = 0;
    }

    else
    {
      v3 = *(a1 + 856);
      v4 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      *(a1 + 1534) = 0;
      *(a1 + 1536) = 0;
      v5 = *(a1 + 9792);
      v6 = *(v3 + 8);
      phOsalNfc_MemCopy();
      LODWORD(v8) = 0;
      *&v9 = a1 + 1534;
      DWORD2(v9) = 7;
      *&v10 = a1 + 2064;
      DWORD2(v10) = 530;
      WORD3(v8) = 500;
      LOBYTE(v11) = 1;
      v2 = sub_297F06F3C(*(a1 + 3088), *(v3 + 8), &v8, sub_297E5BA84, a1);
    }
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SendRallCmd");
  return v2;
}

uint64_t sub_297EDE6CC(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ProcessRallResp");
  v6 = 255;
  if (a1 && !a2)
  {
    if (a3 && *a3 && *(a3 + 8) == 122)
    {
      v7 = *(a1 + 856);
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "RALL response received");
      v6 = sub_297E9C010(*(a1 + 3088), *(v7 + 8 * *(a1 + 1529) + 8), *a3);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Invalid parameters (phLibNfc_ProcessRallResp)\n");
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ProcessRallResp");
  return v6;
}

uint64_t sub_297EDE7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_P2PSendCmd");
  if (a1)
  {
    v5 = sub_297E7680C(*(a1 + 3088), sub_297E5BA84, a1, a3);
  }

  else
  {
    v5 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_P2PSendCmd");
  return v5;
}

uint64_t sub_297EDE850(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_P2PSendResp");
  if (!a1 || a2)
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "P2P send failed!");
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "P2P send success");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_P2PSendResp");
  return a2;
}

uint64_t sub_297EDE8F8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_P2PSendComplete");
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_P2pRemoteDev_SendCb");
  if (a1)
  {
    if (a2)
    {
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_P2pRemoteDev_SendCb");
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_P2PSendComplete");
  return a2;
}

uint64_t sub_297EDE9B4(uint64_t a1)
{
  *(a1 + 533) = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_IsFirstBuffer");
  v2 = *(a1 + 9792);
  v3 = phOsalNfc_Timer_Create();
  if (v3)
  {
    v4 = v3 == 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 255;
  }

  else
  {
    v6 = v3;
    v7 = *(a1 + 9792);
    v8 = phOsalNfc_Timer_Start();
    if (!v8)
    {
      sub_297E687D8(1, a1 + 9792, v6, 4u, 4u, "phLibNfc_IsFirstBuffer");
      *(a1 + 496) = v6;
      v5 = 13;
      goto LABEL_12;
    }

    v5 = v8;
    v9 = *(a1 + 9792);
    phOsalNfc_Timer_Delete();
  }

  if (*(a1 + 536))
  {
    v10 = *(a1 + 9792);
    phOsalNfc_FreeMemory();
    *(a1 + 536) = 0;
  }

  *(a1 + 544) = 0;
LABEL_12:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_IsFirstBuffer");
  return v5;
}

uint64_t sub_297EDEACC(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  sub_297E687D8(2, a2, a1, 4u, 4u, "phLibNfc_TempReceiveCb");
  sub_297E4E1B4(2, a2, 4u, 5u, "phLibNfc_TempReceiveCb");
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(&unk_2A18BDDC0 + 14 * v5 + 2);
      if (v4)
      {
        break;
      }

      v4 = 1;
      v5 = 1;
    }

    while (v6 != a2);
    if (v6 == a2)
    {
      v7 = *(a2 + 496);
      if (v7 && v7 != 0xFFFFFFFFFFFFLL && v7 == a1)
      {
        v8 = *(a2 + 9792);
        phOsalNfc_Timer_Stop();
        v9 = *(a2 + 9792);
        phOsalNfc_Timer_Delete();
        *(a2 + 496) = 0;
        v12 = *(a2 + 536);
        LODWORD(v13) = *(a2 + 544);
        sub_297E4F450(*(a2 + 9784), 118, 0, &v12, 0);
        if (*(a2 + 536))
        {
          v10 = *(a2 + 9792);
          phOsalNfc_FreeMemory();
          *(a2 + 536) = 0;
          *(a2 + 544) = 0;
        }
      }

      else
      {
        sub_297E4F450(*(a2 + 9784), 119, 255, 0, 0);
      }
    }
  }

  return sub_297E4DFAC(2, a2, 4u, 5u, "phLibNfc_TempReceiveCb");
}

uint64_t sub_297EDEC34(uint64_t a1, int a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_P2pRemoteDev_ReceiveCb");
  if (a1 && a3)
  {
    if (a2)
    {
      LODWORD(v11) = 0;
      if (a2 == 10 && !*(a1 + 2933))
      {
        v6 = sub_297F0A90C(*(a1 + 3088));
        if (v6 <= 1)
        {
          LOBYTE(a2) = 10;
        }

        else
        {
          LOBYTE(a2) = v6;
        }
      }
    }

    else
    {
      v10 = *(a3 + 8);
      LODWORD(v11) = *(a3 + 16);
    }

    v8 = a2;
    v7 = 118;
    goto LABEL_13;
  }

  if (a1)
  {
    v7 = 119;
    v8 = 255;
LABEL_13:
    sub_297E4F450(*(a1 + 9784), v7, v8, &v10, 0);
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_P2pRemoteDev_ReceiveCb");
}

uint64_t sub_297EDED18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SendWrt16Cmd");
  v5 = 1;
  if (a1 && a3 && *(a3 + 48) && *(a3 + 56) && *(a3 + 32) && *(a3 + 40))
  {
    v6 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    v7 = *(a1 + 9792);
    *(a1 + 2664) = phOsalNfc_GetMemory_Typed();
    v8 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    *(a1 + 1534) = -96;
    *(a1 + 1535) = *(a3 + 4);
    *&v11 = a1 + 1534;
    DWORD2(v11) = 2;
    LODWORD(v10) = 0;
    *&v12 = *(a3 + 48);
    DWORD2(v12) = *(a3 + 56);
    WORD3(v10) = *(a3 + 6);
    v5 = sub_297F06F3C(*(a1 + 3088), *(a1 + 1504), &v10, sub_297E5BA84, a1);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SendWrt16Cmd");
  return v5;
}

uint64_t sub_297EDEE70(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SendWrt16CmdResp");
  if (!a1 || a2)
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_SendWrt16CmdResp:SendWrt16 Command payload Header failed!");
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_SendWrt16CmdResp:SendWrt16 Command payload Header success");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SendWrt16CmdResp");
  return a2;
}

uint64_t sub_297EDEF18(uint64_t a1)
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SendWrt16CmdPayload");
  if (a1 && (v2 = *(a1 + 2664)) != 0 && *(v2 + 32) && *(v2 + 40) && *(v2 + 48) && *(v2 + 56))
  {
    v3 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    *&v7 = *(v2 + 32);
    DWORD2(v7) = *(v2 + 40);
    LODWORD(v6) = 0;
    *&v8 = *(v2 + 48);
    DWORD2(v8) = *(v2 + 56);
    WORD3(v6) = *(v2 + 6);
    v4 = sub_297F06F3C(*(a1 + 3088), *(a1 + 1504), &v6, sub_297E5BA84, a1);
  }

  else
  {
    v4 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SendWrt16CmdPayload");
  return v4;
}

uint64_t sub_297EDF028(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Wrt16CmdPayloadResp");
  if (!a1 || a2)
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_Wrt16CmdPayloadResp:SendWrt16 Command payload failed!");
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_Wrt16CmdPayloadResp:SendWrt16 Command payload success");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Wrt16CmdPayloadResp");
  return a2;
}

uint64_t sub_297EDF0D0(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MFCWrite16Complete");
  if (a1)
  {
    v4 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    v5 = *(a1 + 2664);
    if (v5 && *(v5 + 32) && *(v5 + 56))
    {
      v11 = *(v5 + 32);
      LODWORD(v12) = 0;
      v6 = *(a1 + 2752);
      if (v6)
      {
        if (*(v6 + 48))
        {
          v7 = *(v6 + 48);
          phOsalNfc_FreeMemory();
          *(*(a1 + 2752) + 48) = 0;
        }

        phOsalNfc_FreeMemory();
        *(a1 + 2752) = 0;
      }

      v8 = *(a1 + 2744);
      if (v8)
      {
        if (*(v8 + 32))
        {
          v9 = *(v8 + 32);
          phOsalNfc_FreeMemory();
          *(*(a1 + 2744) + 32) = 0;
        }

        phOsalNfc_FreeMemory();
        *(a1 + 2744) = 0;
      }
    }
  }

  else
  {
    phOsalNfc_SetMemory();
  }

  sub_297EA18A4(a1, a2, &v11);
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MFCWrite16Complete");
  return a2;
}

uint64_t sub_297EDF208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MFCIncDecTrRestoreCmd");
  v5 = 1;
  if (a1 && a3 && *(a3 + 48) && *(a3 + 56) && (*(a3 + 32) || *(a3 + 40) || *a3 == 194 || *a3 == 176))
  {
    *(a1 + 2664) = 0;
    v6 = *(a1 + 9792);
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    *(a1 + 2664) = Memory_Typed;
    if (Memory_Typed)
    {
      v8 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      v9 = *(a1 + 9792);
      v10 = *(a1 + 2664);
      phOsalNfc_MemCopy();
      if (*a3 == 3)
      {
        *(a1 + 1534) = -62;
        v11 = -1;
      }

      else
      {
        *(a1 + 1534) = *a3;
        v11 = *(a3 + 4);
      }

      *(a1 + 1535) = v11;
      *&v14 = a1 + 1534;
      DWORD2(v14) = 2;
      LODWORD(v13) = 0;
      *&v15 = *(a3 + 48);
      DWORD2(v15) = *(a3 + 56);
      WORD3(v13) = *(a3 + 6);
      v5 = sub_297F06F3C(*(a1 + 3088), *(a1 + 1504), &v13, sub_297E5BA84, a1);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Failed to allocate memory, Insufficient Resources");
      v5 = 12;
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MFCIncDecTrRestoreCmd");
  return v5;
}

uint64_t sub_297EDF3C0(uint64_t a1, int a2, _BYTE **a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MFCIncDecRestoreResp");
  v6 = 1;
  if (a1 && a3)
  {
    if (a2 || **a3 != 10)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Inc/Dec Command Header failed!");
      v6 = 255;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Inc/Dec Command Header success");
      *(a1 + 2960) = off_2A1A92E00;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v7 = off_2A1A92E00[0];
      if (off_2A1A92E00[0])
      {
        v7 = 0;
        v8 = &qword_2A1A92E10;
        do
        {
          ++v7;
          v9 = *v8;
          v8 += 2;
        }

        while (v9);
      }

      v6 = 0;
      *(a1 + 2953) = v7;
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MFCIncDecRestoreResp");
  return v6;
}

uint64_t sub_297EDF4D0(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v17 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MFCIncDecTrRestoreComplete");
  if (a1 && (v4 = *(a1 + 2664)) != 0 && *(v4 + 32) && *(v4 + 56))
  {
    v5 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    v16 = *(*(a1 + 2664) + 32);
    LODWORD(v17) = 0;
    v6 = *(a1 + 9792);
    phOsalNfc_FreeMemory();
    *(a1 + 2664) = 0;
    v7 = *(a1 + 2752);
    if (v7)
    {
      if (*(v7 + 48))
      {
        v8 = *(a1 + 9792);
        v9 = *(v7 + 48);
        phOsalNfc_FreeMemory();
        *(*(a1 + 2752) + 48) = 0;
      }

      v10 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 2752) = 0;
    }

    v11 = *(a1 + 2744);
    if (v11)
    {
      if (*(v11 + 32))
      {
        v12 = *(a1 + 9792);
        v13 = *(v11 + 32);
        phOsalNfc_FreeMemory();
        *(*(a1 + 2744) + 32) = 0;
      }

      v14 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 2744) = 0;
    }
  }

  else
  {
    a2 = 1;
  }

  sub_297EA18A4(a1, a2, &v16);
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MFCIncDecTrRestoreComplete");
  return a2;
}

uint64_t sub_297EDF600(uint64_t a1)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v8 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MFCIncDecRestorePayload");
  if (!a1)
  {
    goto LABEL_11;
  }

  v2 = *(a1 + 2664);
  if (!v2 || !*(v2 + 48) || !*(v2 + 56))
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  if (*v2 != 194)
  {
    if (*(v2 + 32))
    {
      v5 = *(v2 + 40);
      if (v5)
      {
        *&v10 = *(v2 + 32);
        v4 = v5;
        goto LABEL_10;
      }
    }

LABEL_11:
    v6 = 1;
    goto LABEL_12;
  }

  *&v10 = &v8;
  v4 = 4;
LABEL_10:
  DWORD2(v10) = v4;
  LODWORD(v9) = 0;
  *&v11 = *(v2 + 48);
  DWORD2(v11) = *(v2 + 56);
  WORD3(v9) = *(v2 + 6);
  v6 = sub_297F06F3C(*(a1 + 3088), *(a1 + 1504), &v9, sub_297E5BA84, a1);
LABEL_12:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MFCIncDecRestorePayload");
  return v6;
}

uint64_t sub_297EDF72C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MFCIncDecRestore_PayloadResp");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_MFCIncDecRestore_PayloadResp:Inc/Dec Payload Command payload Header failed!");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_MFCIncDecRestore_PayloadResp:Inc/Dec Payload Command payload Header success");
    }
  }

  else
  {
    a2 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MFCIncDecRestore_PayloadResp");
  return a2;
}

uint64_t sub_297EDF7DC(uint64_t a1, unsigned __int8 a2)
{
  v13 = 0;
  v14 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MFCIncDecResPayloadComplete");
  if (!a1)
  {
    phOsalNfc_SetMemory();
    v6 = 1;
    goto LABEL_23;
  }

  v4 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  v5 = *(a1 + 2664);
  if (a2 != 178)
  {
    if (*v5 == 3 && a2 == 44)
    {
      v6 = 0;
    }

    else
    {
      v6 = 255;
    }

LABEL_12:
    if (*(v5 + 32) && *(v5 + 56))
    {
      v13 = *(v5 + 32);
      LODWORD(v14) = 0;
      phOsalNfc_FreeMemory();
      *(a1 + 2664) = 0;
    }

    goto LABEL_15;
  }

  v6 = 0;
  if (v5)
  {
    goto LABEL_12;
  }

LABEL_15:
  v8 = *(a1 + 2752);
  if (v8)
  {
    if (*(v8 + 48))
    {
      v9 = *(v8 + 48);
      phOsalNfc_FreeMemory();
      *(*(a1 + 2752) + 48) = 0;
    }

    phOsalNfc_FreeMemory();
    *(a1 + 2752) = 0;
  }

  v10 = *(a1 + 2744);
  if (v10)
  {
    if (*(v10 + 32))
    {
      v11 = *(v10 + 32);
      phOsalNfc_FreeMemory();
      *(*(a1 + 2744) + 32) = 0;
    }

    phOsalNfc_FreeMemory();
    *(a1 + 2744) = 0;
  }

LABEL_23:
  sub_297EA18A4(a1, v6, &v13);
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MFCIncDecResPayloadComplete");
  return v6;
}

uint64_t sub_297EDF950(uint64_t a1, int a2, _BYTE **a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MFCTransferResp");
  v6 = 1;
  if (a1 && a3)
  {
    if (a2 || **a3 != 10)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Transfer/Restore Command Header failed!");
      v6 = 255;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Transfer/Restore Command Header success");
      v6 = 0;
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MFCTransferResp");
  return v6;
}

uint64_t sub_297EDFA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SendAuthCmd");
  v5 = 1;
  if (a1)
  {
    if (a3)
    {
      v6 = *(a1 + 1504);
      if (v6)
      {
        if (sub_297E55558(*(a1 + 3088), v6))
        {
          *(a1 + 1504) = 0;
          *(a1 + 1512) = 0;
        }

        v7 = *(a1 + 9792);
        phOsalNfc_SetMemory();
        v8 = *(a1 + 9792);
        *(a1 + 2664) = phOsalNfc_GetMemory_Typed();
        v9 = *(a1 + 9792);
        phOsalNfc_MemCopy();
        v10 = *(a1 + 1504);
        if (v10 && *(a1 + 2664))
        {
          v11 = sub_297ECE3AC(a1, *(v10 + 4), a3, v13);
          if (v11)
          {
            v5 = v11;
          }

          else
          {
            v5 = sub_297F06F3C(*(a1 + 3088), *(a1 + 1504), v13, sub_297E5BA84, a1);
            if (v5 == 13)
            {
              *(*(a1 + 2664) + 4) = BYTE4(v13[0]);
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SendAuthCmd");
  return v5;
}

uint64_t sub_297EDFB84(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SendAuthCmdResp");
  if (a1)
  {
    v4 = *(a1 + 2664);
    if (v4)
    {
      if (((*v4 - 97) & 0xFFFFFFDF) != 0)
      {
        v5 = 0;
      }

      else
      {
        v5 = 0x80;
      }
    }

    else
    {
      v5 = 0;
    }

    if (!a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Authentication command success");
      v6 = *(a1 + 2664);
      if (v6)
      {
        v7 = *v6;
        if ((*v6 & 0xFFFFFFFE) == 0x80)
        {
          a2 = 0;
          *(a1 + 2616) = v7;
          *(a1 + 2620) = *(v6 + 4);
          *(a1 + 2621) = *(v6 + 5) | v5;
          goto LABEL_15;
        }

        *(a1 + 2616) = v7;
        *(a1 + 2620) = *(v6 + 4);
        *(a1 + 2621) = v5 | 0x10;
        v8 = *(a1 + 9792);
        v9 = *(v6 + 4);
        phOsalNfc_MemCopy();
      }

      a2 = 0;
      goto LABEL_15;
    }

    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Authentication command failed!");
    sub_297ECF890(a1);
  }

  else
  {
    a2 = 1;
  }

LABEL_15:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SendAuthCmdResp");
  return a2;
}

uint64_t sub_297EDFCD0(uint64_t a1, char a2)
{
  LOBYTE(v2) = a2;
  v12 = 0;
  v13 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MFCSendAuthCmdComplete");
  if (a1)
  {
    v2 = v2;
    v4 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    v5 = *(a1 + 2664);
    if (v5)
    {
      if (*(v5 + 48))
      {
        v12 = *(v5 + 48);
        LODWORD(v13) = 0;
      }

      v6 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 2664) = 0;
      v7 = *(a1 + 2744);
      if (v7)
      {
        if (*(v7 + 32))
        {
          v8 = *(a1 + 9792);
          v9 = *(v7 + 32);
          phOsalNfc_FreeMemory();
          *(*(a1 + 2744) + 32) = 0;
        }

        v10 = *(a1 + 9792);
        phOsalNfc_FreeMemory();
        *(a1 + 2744) = 0;
      }
    }
  }

  else
  {
    phOsalNfc_SetMemory();
    v2 = 1;
  }

  sub_297EA18A4(a1, v2, &v12);
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MFCSendAuthCmdComplete");
  return v2;
}

uint64_t sub_297EDFDD8(uint64_t a1)
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MfcChkPresAuth");
  if (a1 && *(a1 + 1504))
  {
    *(a1 + 1534) = *(a1 + 2616);
    *(a1 + 1535) = *(a1 + 2620);
    v2 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v3 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    LODWORD(v6) = 4;
    BYTE4(v6) = *(a1 + 2620);
    *&v7 = a1 + 1534;
    DWORD2(v7) = 9;
    *&v8 = a1 + 2064;
    DWORD2(v8) = 530;
    v4 = sub_297F06F3C(*(a1 + 3088), *(a1 + 1504), &v6, sub_297E5BA84, a1);
  }

  else
  {
    v4 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MfcChkPresAuth");
  return v4;
}

uint64_t sub_297EDFEF4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MfcChkPresAuthProc");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Authentication command failed!");
      sub_297ECF890(a1);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Authentication command success");
    }
  }

  else
  {
    a2 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MfcChkPresAuthProc");
  return a2;
}

uint64_t sub_297EDFFAC(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MfcChkPresAuthComplete");
  if (a1)
  {
    if (*(a1 + 2664))
    {
      v4 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 2664) = 0;
    }

    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "Mifare classic - Auth failed");
      sub_297ECF890(a1);
      v5 = &qword_2A1A92AE0;
      if (*(a1 + 1531) == 1)
      {
        v5 = &qword_2A1A90CC8;
      }

      *(a1 + 2960) = v5;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v6 = *v5;
      if (*v5)
      {
        LOBYTE(v6) = 0;
        v7 = v5 + 2;
        do
        {
          LOBYTE(v6) = v6 + 1;
          v8 = *v7;
          v7 += 2;
        }

        while (v8);
      }

      *(a1 + 2953) = v6;
      a2 = sub_297E5588C(a1, 0, 0);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Auth command of Mifare classic Success");
      v10 = 0;
      LODWORD(v11) = 0;
      sub_297ECF434(a1, &v10, 0);
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "Invalid LibNfc Context passed by lower layer");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MfcChkPresAuthComplete");
  return a2;
}

uint64_t sub_297EE0110(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MfcRawtoCmd");
  v8 = 255;
  if (!a1)
  {
    goto LABEL_24;
  }

  if (!a3)
  {
    goto LABEL_24;
  }

  v9 = *(a3 + 32);
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = *(a3 + 40);
  if (!v10 || !*(a3 + 48) || !a2 || !*(a3 + 56))
  {
    goto LABEL_24;
  }

  if (v10 == 18)
  {
    if (*v9 != 160)
    {
      goto LABEL_24;
    }

    *(a1 + 2744) = 0;
    v19 = *(a1 + 9792);
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    *(a1 + 2744) = Memory_Typed;
    if (Memory_Typed)
    {
      *(Memory_Typed + 32) = 0;
      v21 = *(a1 + 9792);
      v22 = phOsalNfc_GetMemory_Typed();
      v23 = *(a1 + 2744);
      *(v23 + 32) = v22;
      if (v22)
      {
        *(v23 + 40) = 16;
        v24 = *(a3 + 48);
        *(v23 + 48) = v24;
        v25 = *(a3 + 56);
        *(v23 + 56) = v25;
        v8 = 255;
        if (v24 && v25)
        {
          goto LABEL_22;
        }

        goto LABEL_24;
      }
    }

LABEL_23:
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Failed to allocate memory, Insufficient Resources");
    v8 = 255;
    goto LABEL_24;
  }

  if (v10 != 12)
  {
    goto LABEL_24;
  }

  if ((*v9 & 0xFE) != 0x60)
  {
    goto LABEL_24;
  }

  *(a2 + 46);
  v11 = *(a1 + 9792);
  if (phOsalNfc_MemCompare())
  {
    goto LABEL_24;
  }

  *(a1 + 2744) = 0;
  v12 = *(a1 + 9792);
  v13 = phOsalNfc_GetMemory_Typed();
  *(a1 + 2744) = v13;
  if (!v13)
  {
    goto LABEL_23;
  }

  *(v13 + 32) = 0;
  v14 = *(a1 + 9792);
  v15 = phOsalNfc_GetMemory_Typed();
  v16 = *(a1 + 2744);
  *(v16 + 32) = v15;
  if (!v15)
  {
    goto LABEL_23;
  }

  *(v16 + 40) = 10;
  v17 = *(a3 + 48);
  *(v16 + 48) = v17;
  v18 = *(a3 + 56);
  *(v16 + 56) = v18;
  v8 = 255;
  if (v17 && v18)
  {
LABEL_22:
    v26 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    v27 = *(a1 + 9792);
    v28 = *(*(a1 + 2744) + 48);
    phOsalNfc_SetMemory();
    **(a1 + 2744) = **(a3 + 32);
    v29 = *(a1 + 2744);
    *(v29 + 4) = *(*(a3 + 32) + 1);
    v30 = *(a1 + 9792);
    v31 = *(v29 + 32);
    phOsalNfc_MemCopy();
    v8 = 0;
    *a4 = *(a1 + 2744);
  }

LABEL_24:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MfcRawtoCmd");
  return v8;
}

uint64_t sub_297EE03F8(uint64_t a1, int *a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ChkMFCAuthWrtCmd");
  v6 = 255;
  if (a2)
  {
    if (a3)
    {
      if (!sub_297EE0544(a1, a3))
      {
        v6 = 0;
        v7 = *a2;
        if (((*a2 - 128) > 0x20 || ((1 << (*a2 + 0x80)) & 0x100000003) == 0) && (v7 - 96) >= 2)
        {
          if (!v7)
          {
            v8 = *(a2 + 4);
            if (!v8)
            {
LABEL_23:
              v6 = 255;
              goto LABEL_24;
            }

            v9 = *v8;
            v10 = a2[10];
            if (v9 == 160)
            {
              if (v10 != 18)
              {
                goto LABEL_23;
              }
            }

            else if ((v9 & 0xFE) != 0x60 || v10 != 12)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }

          if ((v7 & 0xFFFFFFFE) == 0xC0 && *(a2 + 4) && a2[10] == 4)
          {
LABEL_22:
            v6 = 0;
            goto LABEL_24;
          }

          v6 = 0;
          if (v7 != 3 && v7 != 176 && v7 != 194)
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

LABEL_24:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ChkMFCAuthWrtCmd");
  return v6;
}

uint64_t sub_297EE0544(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ChkMfCTag");
  if (!a2 || *(a2 + 20) || *(a2 + 16) != 128 || ((v4 = 0, v5 = *(a2 + 96), v5 > 0x38) || ((1 << v5) & 0x100010003000302) == 0) && ((v6 = v5 - 136, v6 > 0x30) || ((1 << v6) & 0x1000000010001) == 0))
  {
    v4 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ChkMfCTag");
  return v4;
}

uint64_t sub_297EE0618(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  v5 = 1;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ReActivateMFCComplete");
  if (a1)
  {
    *(a1 + 1531) = a2 != 0;
    v6 = &v5;
    LODWORD(v7) = 1;
    sub_297EA18A4(a1, a2, &v6);
    *(a1 + 1532) = 0;
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "Invalid libnfc context received from lower layer!");
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ReActivateMFCComplete");
  return a2;
}

uint64_t sub_297EE06E8(uint64_t a1, uint64_t a2)
{
  v6 = 1;
  v5[1] = 1;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ReActivateMFCComplete1");
  v5[0] = &v6;
  if (a1)
  {
    if (a2 != 121)
    {
      if (a2)
      {
        *(a1 + 1531) = 1;
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Reactivation of Mifare classic failed!");
        a2 = 44;
      }

      else
      {
        *(a1 + 1531) = 0;
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Reactivation of Mifare classic Success");
      }
    }

    sub_297ECF434(a1, v5, a2);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "Invalid LibNfc Context passed by lower layer");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ReActivateMFCComplete1");
  return a2;
}

uint64_t sub_297EE07F8(uint64_t a1, int a2)
{
  v9 = a2;
  sub_297E4E1B4(1, &v9, 5u, 5u, "phLibNfc_SM_Init");
  if (v9 == 1)
  {
    if (!qword_2A18BE770)
    {
      qword_2A18BE770 = 0xC00000001;
      dword_2A18BE778 = 0;
      v2 = &qword_2A18BE784;
      v3 = 4;
      v4 = &dword_2A18BE7C0;
      do
      {
        *(v2 - 1) = 0;
        *v2 = 6;
        v2 += 2;
        --v3;
      }

      while (v3);
LABEL_10:
      v5 = 0;
      *v4 = 0;
      v4[1] = 6;
      v4[2] = 0;
      goto LABEL_11;
    }
  }

  else if (!qword_2A18BE7E0)
  {
    qword_2A18BE7E0 = 0xC00000001;
    dword_2A18BE7E8 = 0;
    v6 = &dword_2A18BE7F8;
    v7 = 4;
    v4 = &dword_2A18BE830;
    do
    {
      *(v6 - 1) = 0x600000000;
      *v6 = 0;
      v6 += 4;
      --v7;
    }

    while (v7);
    goto LABEL_10;
  }

  v5 = 1;
LABEL_11:
  sub_297E4DFAC(1, &v9, 5u, 5u, "phLibNfc_SM_Init");
  return v5;
}

uint64_t sub_297EE0928(uint64_t a1, int a2)
{
  v13 = a1;
  sub_297E4E1B4(0, &v13, 5u, 5u, "phLibNfc_SM_IsVirtual");
  v3 = 0;
  v4 = 1;
  while (1)
  {
    v5 = &unk_2A18BDDC0 + 112 * v3;
    if (*v5 == v13)
    {
      break;
    }

    v6 = v4;
    v4 = 0;
    v7 = 0;
    v3 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v7 = *(v5 + 2) == 1;
LABEL_6:
  v8 = a2 - 1;
  if ((a2 - 1) > 6)
  {
    v9 = 255;
  }

  else
  {
    v9 = 255;
    if ((0x53u >> v8))
    {
      v10 = qword_297F137B0[v8];
      if (v7)
      {
        v11 = &qword_2A18BE770;
      }

      else
      {
        v11 = &qword_2A18BE7E0;
      }

      if (LODWORD(v11[2 * v10 + 2]) == 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = 255;
      }
    }
  }

  sub_297E4DFAC(0, &v13, 5u, 5u, "phLibNfc_SM_IsVirtual");
  return v9;
}

uint64_t sub_297EE0A34(uint64_t a1, int a2)
{
  v11 = a1;
  sub_297E4E1B4(0, &v11, 5u, 5u, "phLibNfc_SM_IsApdu");
  v3 = 0;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = &unk_2A18BDDC0 + 112 * v3;
    if (*v6 == v11)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v5 & 1) == 0)
    {
      v7 = dword_2A18BE800;
      goto LABEL_8;
    }
  }

  v8 = &unk_2A18BE790;
  if (*(v6 + 2) != 1)
  {
    v8 = &dword_2A18BE800;
  }

  v7 = *v8;
LABEL_8:
  sub_297E4DFAC(0, &v11, 5u, 5u, "phLibNfc_SM_IsApdu");
  if (v7 == 3 && a2 == 1)
  {
    return 0;
  }

  else
  {
    return 255;
  }
}

uint64_t sub_297EE0B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a1;
  sub_297E4E1B4(0, &v68, 5u, 5u, "phLibNfc_SM_SEStateHandler");
  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = v10;
    v12 = &unk_2A18BDDC0 + 112 * v9;
    if (*v12 == v68)
    {
      break;
    }

    v10 = 0;
    v13 = 0;
    v9 = 1;
    if ((v11 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v13 = *(v12 + 2) == 1;
LABEL_6:
  v69 = v68;
  sub_297E4E1B4(0, &v69, 5u, 5u, "phLibNfc_SM_RetrieveSEState");
  v14 = 0;
  v15 = 1;
  while (1)
  {
    v16 = v15;
    v17 = &unk_2A18BDDC0 + 112 * v14;
    if (*v17 == v69)
    {
      break;
    }

    v15 = 0;
    v14 = 1;
    if ((v16 & 1) == 0)
    {
      v18 = 0;
      v19 = dword_2A18BE7E8;
      goto LABEL_13;
    }
  }

  v18 = *(v17 + 2) == 1;
  v20 = &dword_2A18BE778;
  if (*(v17 + 2) != 1)
  {
    v20 = &dword_2A18BE7E8;
  }

  v19 = *v20;
LABEL_13:
  if ((a2 & 0xFFFFFFF0) != 0xA0 && (a2 & 0xFFFFFFFE) != 0x8E && v19 == 1)
  {
    goto LABEL_16;
  }

  if (v18)
  {
    v23 = &qword_2A18BE770;
  }

  else
  {
    v23 = &qword_2A18BE7E0;
  }

  v24 = *(v23 + 6);
  if ((a2 - 130) >= 0x1C)
  {
    v67 = a5;
    v34 = v24 != 1;
  }

  else
  {
    if (v18)
    {
      v25 = &unk_2A18BE798;
    }

    else
    {
      v25 = &unk_2A18BE808;
    }

    v26 = *v25;
    v27 = &unk_2A18BE7A8;
    if (!v18)
    {
      v27 = &unk_2A18BE818;
    }

    v28 = *v27;
    v29 = &unk_2A18BE7B8;
    if (!v18)
    {
      v29 = &unk_2A18BE828;
    }

    v30 = *v29;
    if (v24 == 1 || v26 == 1 || v28 == 1 || v30 == 1)
    {
LABEL_16:
      v21 = 111;
LABEL_17:
      sub_297E4DFAC(0, &v69, 5u, 5u, "phLibNfc_SM_RetrieveSEState");
      goto LABEL_18;
    }

    v67 = a5;
    v34 = 1;
  }

  v35 = 0;
  v36 = &unk_2A18BE7F0;
  v37 = &unk_2A18BE780;
  if ((a2 - 161) >= 2 && ((a2 - 131) >= 3 || !v34))
  {
    v38 = v18 ? &qword_2A18BE770 : &qword_2A18BE7E0;
    v39 = (a2 - 136) >= 0xA || *(v38 + 10) == 1;
    v40 = !v39;
    v36 = &dword_2A18BE800;
    v37 = &unk_2A18BE790;
    v35 = 1;
    if ((a2 - 165) >= 2 && !v40)
    {
      v41 = v18 ? &qword_2A18BE770 : &qword_2A18BE7E0;
      v42 = (a2 - 148) >= 3 || *(v41 + 14) == 1;
      v43 = !v42;
      v36 = &unk_2A18BE810;
      v37 = &unk_2A18BE7A0;
      v35 = 2;
      if ((a2 - 169) >= 2 && !v43)
      {
        v44 = v18 ? &qword_2A18BE770 : &qword_2A18BE7E0;
        v45 = (a2 - 153) >= 4 || *(v44 + 18) == 1;
        v46 = !v45;
        v36 = &unk_2A18BE820;
        v37 = &unk_2A18BE7B0;
        v35 = 3;
        if ((a2 - 173) >= 2 && !v46)
        {
          v21 = 147;
          goto LABEL_17;
        }
      }
    }
  }

  if (v18)
  {
    v47 = v37;
  }

  else
  {
    v47 = v36;
  }

  v48 = *v47;
  sub_297E4DFAC(0, &v69, 5u, 5u, "phLibNfc_SM_RetrieveSEState");
  v69 = v68;
  sub_297E4E1B4(0, &v69, 5u, 5u, "phLibNfc_RetrieveSETable");
  v49 = qword_29EE86938[2 * v48 + 1];
  sub_297E4DFAC(0, &v69, 5u, 5u, "phLibNfc_RetrieveSETable");
  v69 = v68;
  sub_297E4E1B4(0, &v69, 5u, 5u, "phLibNfc_SearchSETable");
  for (i = *v49; i != 208 && i != a2; i = v52)
  {
    v52 = v49[4];
    v49 += 4;
  }

  sub_297E4DFAC(0, &v69, 5u, 5u, "phLibNfc_SearchSETable");
  v53 = *(v49 + 1);
  if (!v53)
  {
    v21 = 147;
    goto LABEL_18;
  }

  if ((a2 & 0xFFFFFFF0) == 0xA0 && a2 - 161 <= 0xD)
  {
    v54 = 1 << (a2 + 95);
    if ((v54 & 0x1111) != 0)
    {
      if (v13)
      {
        v57 = &qword_2A18BE770;
      }

      else
      {
        v57 = &qword_2A18BE7E0;
      }

      v56 = v57 + 2;
      v58 = &v56[2 * v35];
      v59 = *(v58 + 1);
      v49[1] = v59;
      *v58 = v59;
    }

    else
    {
      if ((v54 & 0x2222) == 0)
      {
        goto LABEL_102;
      }

      if (v13)
      {
        v55 = &qword_2A18BE770;
      }

      else
      {
        v55 = &qword_2A18BE7E0;
      }

      v56 = v55 + 2;
    }

    v60 = &v56[2 * v35];
    *(v60 + 2) = 0;
    a2 = *(v60 + 3);
  }

LABEL_102:
  v61 = v53(v68, a2, a3, a4, v67);
  v21 = v61;
  if (v61)
  {
    if (v61 == 13)
    {
      if (v13)
      {
        v62 = &qword_2A18BE770;
      }

      else
      {
        v62 = &qword_2A18BE7E0;
      }

      v63 = &v62[2 * v35];
      *(v63 + 5) = v49[1];
      *(v63 + 6) = 1;
      *(v63 + 7) = a2;
    }

    else
    {
      if (v13)
      {
        v66 = &qword_2A18BE770;
      }

      else
      {
        v66 = &qword_2A18BE7E0;
      }

      LODWORD(v66[2 * v35 + 3]) = 0;
    }
  }

  else
  {
    if (v13)
    {
      v64 = &qword_2A18BE770;
    }

    else
    {
      v64 = &qword_2A18BE7E0;
    }

    v65 = &v64[2 * v35];
    *(v65 + 4) = v49[1];
    *(v65 + 6) = 0;
  }

LABEL_18:
  sub_297E4DFAC(0, &v68, 5u, 5u, "phLibNfc_SM_SEStateHandler");
  return v21;
}

uint64_t sub_297EE0FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a1;
  sub_297E4E1B4(0, &v36, 5u, 5u, "phLibNfc_SM_DnldStateHandler");
  v9 = 0;
  v35 = 255;
  LOBYTE(v10) = 1;
  v11 = &dword_2A18BE830;
  while (1)
  {
    v12 = &unk_2A18BDDC0 + 112 * v9;
    if (*v12 == v36)
    {
      break;
    }

    v13 = v10;
    v10 = 0;
    v9 = 1;
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v35 = *(v12 + 2);
  v10 = v35 == 1;
  if (v35 == 1)
  {
    v11 = &dword_2A18BE7C0;
  }

LABEL_7:
  v14 = *v11;
  if (a2 > 0xBD)
  {
    goto LABEL_30;
  }

  v15 = &qword_2A18BE770;
  if (!v10)
  {
    v15 = &qword_2A18BE7E0;
  }

  if (a2 != 178 && *(v15 + 22) == 1)
  {
LABEL_30:
    if ((a2 - 185) >= 5 && a2 != 8 && (a2 - 192) > 0xE)
    {
      v25 = 111;
      goto LABEL_59;
    }
  }

  v37 = v36;
  sub_297E4E1B4(0, &v37, 5u, 5u, "phLibNfc_RetrieveDnldTable");
  v16 = qword_29EE86998[2 * v14 + 1];
  sub_297E4DFAC(0, &v37, 5u, 5u, "phLibNfc_RetrieveDnldTable");
  v37 = v36;
  sub_297E4E1B4(0, &v37, 5u, 5u, "phLibNfc_SearchDnldTable");
  for (i = *v16; i != 208 && i != a2; i = v19)
  {
    v19 = v16[4];
    v16 += 4;
  }

  sub_297E4DFAC(0, &v37, 5u, 5u, "phLibNfc_SearchDnldTable");
  v20 = *(v16 + 1);
  if (!v20)
  {
    v25 = 147;
    goto LABEL_59;
  }

  if ((a2 - 192) <= 0xE)
  {
    v21 = 1 << (a2 + 64);
    if ((v21 & 0x67E9) != 0)
    {
      *v11 = v16[1];
      if (v10)
      {
        v22 = &qword_2A18BE770;
      }

      else
      {
        v22 = &qword_2A18BE7E0;
      }

      *(v22 + 22) = 0;
      v23 = &dword_2A18BE83C;
      if (v10)
      {
        v23 = &unk_2A18BE7CC;
      }

      a2 = *v23;
      *(v22 + 2) = 0;
      sub_297E50DB0(1, &v35, 5u, 4u, "phLibNfc_SM_DnldStateHandler: phLibNfc_TransStatus_Complete: eSM_eDnldCurrState=");
      v24 = (*(v16 + 1))(v36, a2, a3, a4, a5);
      goto LABEL_40;
    }

    if ((v21 & 0x1812) != 0)
    {
      *v11 = v16[1];
      if (v10)
      {
        v26 = &qword_2A18BE770;
      }

      else
      {
        v26 = &qword_2A18BE7E0;
      }

      *(v26 + 22) = 0;
      v27 = &dword_2A18BE83C;
      if (v10)
      {
        v27 = &unk_2A18BE7CC;
      }

      a2 = *v27;
      *(v26 + 2) = 0;
    }

    else
    {
      *v11 = v16[1];
      if (v10)
      {
        v33 = &qword_2A18BE770;
      }

      else
      {
        v33 = &qword_2A18BE7E0;
      }

      *(v33 + 22) = 1;
      v34 = &dword_2A18BE83C;
      if (v10)
      {
        v34 = &unk_2A18BE7CC;
      }

      a2 = *v34;
    }
  }

  v24 = v20(v36, a2, a3, a4, a5);
LABEL_40:
  v25 = v24;
  if (v24)
  {
    if (v24 == 13)
    {
      *v11 = v16[1];
      if ((a2 - 190) <= 0xFFFFFFFA)
      {
        v28 = &qword_2A18BE7E0;
        if (v10)
        {
          v28 = &qword_2A18BE770;
        }

        *(v28 + 22) = 1;
        *(v28 + 23) = a2;
      }

      v29 = &qword_2A18BE7E0;
      if (v10)
      {
        v29 = &qword_2A18BE770;
      }

      *(v29 + 2) = 1;
      sub_297E50DB0(1, &v35, 5u, 4u, "NFCSTATUS_PENDING");
      v25 = 13;
    }

    else if (a2 != 8 && a2 != 178)
    {
      v31 = &qword_2A18BE7E0;
      if (v10)
      {
        v31 = &qword_2A18BE770;
      }

      *(v31 + 2) = 0;
      *(v31 + 22) = 0;
    }
  }

  else
  {
    *v11 = v16[1];
    if (a2 != 8 && a2 != 178)
    {
      v25 = 0;
      v30 = &qword_2A18BE7E0;
      if (v10)
      {
        v30 = &qword_2A18BE770;
      }

      *(v30 + 22) = 0;
      *(v30 + 2) = 0;
    }
  }

LABEL_59:
  sub_297E4DFAC(0, &v36, 5u, 5u, "phLibNfc_SM_DnldStateHandler");
  return v25;
}

uint64_t sub_297EE1404(uint64_t a1)
{
  v8 = a1;
  sub_297E4E1B4(0, &v8, 5u, 5u, "phLibNfc_SM_GetTargetState");
  v1 = 0;
  v2 = 1;
  while (1)
  {
    v3 = v2;
    v4 = &unk_2A18BDDC0 + 112 * v1;
    if (*v4 == v8)
    {
      break;
    }

    v2 = 0;
    v1 = 1;
    if ((v3 & 1) == 0)
    {
      v5 = HIDWORD(qword_2A18BE7E0);
      goto LABEL_8;
    }
  }

  v6 = &qword_2A18BE770 + 4;
  if (*(v4 + 2) != 1)
  {
    v6 = &qword_2A18BE7E0 + 4;
  }

  v5 = *v6;
LABEL_8:
  sub_297E4DFAC(0, &v8, 5u, 5u, "phLibNfc_SM_GetTargetState");
  return v5;
}

uint64_t sub_297EE14CC(uint64_t a1)
{
  v8 = a1;
  sub_297E4E1B4(0, &v8, 5u, 5u, "phLibNfc_SM_GetTransStatus");
  v1 = 0;
  v2 = 1;
  while (1)
  {
    v3 = v2;
    v4 = &unk_2A18BDDC0 + 112 * v1;
    if (*v4 == v8)
    {
      break;
    }

    v2 = 0;
    v1 = 1;
    if ((v3 & 1) == 0)
    {
      v5 = dword_2A18BE7E8;
      goto LABEL_8;
    }
  }

  v6 = &dword_2A18BE778;
  if (*(v4 + 2) != 1)
  {
    v6 = &dword_2A18BE7E8;
  }

  v5 = *v6;
LABEL_8:
  sub_297E4DFAC(0, &v8, 5u, 5u, "phLibNfc_SM_GetTransStatus");
  return v5;
}

uint64_t sub_297EE1594(uint64_t a1)
{
  v8 = a1;
  sub_297E4E1B4(0, &v8, 5u, 5u, "phLibNfc_SM_GetTransEvent");
  v1 = 0;
  v2 = 1;
  while (1)
  {
    v3 = v2;
    v4 = &unk_2A18BDDC0 + 112 * v1;
    if (*v4 == v8)
    {
      break;
    }

    v2 = 0;
    v1 = 1;
    if ((v3 & 1) == 0)
    {
      v5 = dword_2A18BE7EC;
      goto LABEL_8;
    }
  }

  v6 = &unk_2A18BE77C;
  if (*(v4 + 2) != 1)
  {
    v6 = &dword_2A18BE7EC;
  }

  v5 = *v6;
LABEL_8:
  sub_297E4DFAC(0, &v8, 5u, 5u, "phLibNfc_SM_GetTransEvent");
  return v5;
}

uint64_t sub_297EE165C(uint64_t a1, int a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5u, 5u, "phLibNfc_SM_SetTransEvent");
  v3 = 0;
  v4 = 1;
  v5 = &dword_2A18BE7EC;
  while (1)
  {
    v6 = v4;
    v7 = &unk_2A18BDDC0 + 112 * v3;
    if (*v7 == v9)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (*(v7 + 2) == 1)
  {
    v5 = &unk_2A18BE77C;
  }

LABEL_7:
  *v5 = a2;
  sub_297E4DFAC(0, &v9, 5u, 5u, "phLibNfc_SM_SetTransEvent");
  return 0;
}

uint64_t sub_297EE1720(uint64_t a1, int a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5u, 5u, "phLibNfc_SM_SetTransStatus");
  v3 = 0;
  v4 = 1;
  v5 = &dword_2A18BE7E8;
  while (1)
  {
    v6 = v4;
    v7 = &unk_2A18BDDC0 + 112 * v3;
    if (*v7 == v9)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (*(v7 + 2) == 1)
  {
    v5 = &dword_2A18BE778;
  }

LABEL_7:
  *v5 = a2;
  sub_297E4DFAC(0, &v9, 5u, 5u, "phLibNfc_SM_SetTransStatus");
  return 0;
}

uint64_t sub_297EE17E4(uint64_t a1, int a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5u, 5u, "phLibNfc_SM_SetCurrState");
  v3 = 0;
  v4 = 1;
  v5 = &qword_2A18BE7E0;
  while (1)
  {
    v6 = v4;
    v7 = &unk_2A18BDDC0 + 112 * v3;
    if (*v7 == v9)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (*(v7 + 2) == 1)
  {
    v5 = &qword_2A18BE770;
  }

LABEL_7:
  *v5 = a2;
  sub_297E4DFAC(0, &v9, 5u, 5u, "phLibNfc_SM_SetCurrState");
  return 0;
}

uint64_t sub_297EE18A8(uint64_t a1, int a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5u, 5u, "phLibNfc_SM_SetTargetState");
  v3 = 0;
  v4 = 1;
  v5 = &qword_2A18BE7E0 + 4;
  while (1)
  {
    v6 = v4;
    v7 = &unk_2A18BDDC0 + 112 * v3;
    if (*v7 == v9)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (*(v7 + 2) == 1)
  {
    v5 = &qword_2A18BE770 + 4;
  }

LABEL_7:
  *v5 = a2;
  sub_297E4DFAC(0, &v9, 5u, 5u, "phLibNfc_SM_SetTargetState");
  return 0;
}

uint64_t sub_297EE196C(uint64_t a1, int a2, int a3)
{
  v11 = a1;
  sub_297E4E1B4(0, &v11, 5u, 5u, "phLibNfc_SM_SetSECurrState");
  v5 = 0;
  v6 = 1;
  v7 = &unk_2A18BE7F0;
  while (1)
  {
    v8 = v6;
    v9 = &unk_2A18BDDC0 + 112 * v5;
    if (*v9 == v11)
    {
      break;
    }

    v6 = 0;
    v5 = 1;
    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (*(v9 + 2) == 1)
  {
    v7 = &unk_2A18BE780;
  }

LABEL_7:
  v7[4 * a2] = a3;
  sub_297E4DFAC(0, &v11, 5u, 5u, "phLibNfc_SM_SetSECurrState");
  return 0;
}

uint64_t sub_297EE1A38(uint64_t a1, int a2, int a3)
{
  v11 = a1;
  sub_297E4E1B4(0, &v11, 5u, 5u, "phLibNfc_SM_SetSETransStatus");
  v5 = 0;
  v6 = 1;
  v7 = &unk_2A18BE7F0;
  while (1)
  {
    v8 = v6;
    v9 = &unk_2A18BDDC0 + 112 * v5;
    if (*v9 == v11)
    {
      break;
    }

    v6 = 0;
    v5 = 1;
    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (*(v9 + 2) == 1)
  {
    v7 = &unk_2A18BE780;
  }

LABEL_7:
  v7[4 * a2 + 2] = a3;
  sub_297E4DFAC(0, &v11, 5u, 5u, "phLibNfc_SM_SetSETransStatus");
  return 0;
}

uint64_t sub_297EE1B04(uint64_t a1, int a2)
{
  v10 = a1;
  sub_297E4E1B4(0, &v10, 5u, 5u, "phLibNfc_SM_GetSETransStatus");
  v3 = 0;
  v4 = 1;
  v5 = &unk_2A18BE7F0;
  while (1)
  {
    v6 = v4;
    v7 = &unk_2A18BDDC0 + 112 * v3;
    if (*v7 == v10)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (*(v7 + 2) == 1)
  {
    v5 = &unk_2A18BE780;
  }

LABEL_7:
  v8 = v5[4 * a2 + 2];
  sub_297E4DFAC(0, &v10, 5u, 5u, "phLibNfc_SM_GetSETransStatus");
  return v8;
}

uint64_t sub_297EE1BCC(uint64_t a1)
{
  v8 = a1;
  sub_297E4E1B4(0, &v8, 5u, 5u, "phLibNfc_SM_GetDnldTransEvent");
  v1 = 0;
  v2 = 1;
  while (1)
  {
    v3 = v2;
    v4 = &unk_2A18BDDC0 + 112 * v1;
    if (*v4 == v8)
    {
      break;
    }

    v2 = 0;
    v1 = 1;
    if ((v3 & 1) == 0)
    {
      v5 = dword_2A18BE83C;
      goto LABEL_8;
    }
  }

  v6 = &unk_2A18BE7CC;
  if (*(v4 + 2) != 1)
  {
    v6 = &dword_2A18BE83C;
  }

  v5 = *v6;
LABEL_8:
  sub_297E4DFAC(0, &v8, 5u, 5u, "phLibNfc_SM_GetDnldTransEvent");
  return v5;
}

uint64_t sub_297EE1C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v13 = a1;
  sub_297E4E1B4(0, &v13, 8u, 5u, "phFriNfc_TopazMap_ChkNdef");
  sub_297E57170(v13, &v12);
  v5 = 1;
  if (a3)
  {
    if (a2)
    {
      v6 = v12;
      if (v12)
      {
        *(v12 + 8) = a2;
        *(v6 + 40) = a3;
        *(v6 + 540) = 1;
        *(v6 + 547) = 1;
        *(v6 + 644) = 0;
        *(v6 + 642) = 1;
        *(v6 + 544) = 4;
        if (*(v6 + 65))
        {
          v7 = *(v6 + 2720);
          v8 = *(*(v6 + 224) + 18);
          phOsalNfc_MemCopy();
          v6 = v12;
          v9 = *(v12 + 65);
          *v12 = 4;
          *(v6 + 540) = 1;
          *(v6 + 232) = 0;
          if (v9)
          {
            v10 = 0;
            *v6 = 5;
          }

          else
          {
            v10 = 120;
          }
        }

        else
        {
          *v6 = 4;
          *(v6 + 540) = 1;
          v10 = 120;
          *(v6 + 232) = 0;
        }

        *(v6 + 266) = v10;
        v5 = sub_297EE1DC4(v6, *(v6 + 642), *(v6 + 643));
      }
    }
  }

  sub_297E4DFAC(0, &v13, 8u, 5u, "phFriNfc_TopazMap_ChkNdef");
  return v5;
}

uint64_t sub_297EE1DC4(uint64_t a1, char a2, char a3)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Tpz_H_RdBytes");
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *(a1 + 48) = sub_297EE2580;
  *(a1 + 56) = a1;
  *(a1 + 264) = 260;
  v6 = *(a1 + 266);
  if (!*(a1 + 266))
  {
    *(a1 + 232) = 0;
    *(a1 + 266) = 0;
    goto LABEL_8;
  }

  if (v6 == 1)
  {
    *(a1 + 232) = 0;
    *(a1 + 266) = 1;
    *(a1 + 267) = a3 + 8 * a2;
LABEL_8:
    *(a1 + 268) = 0;
    v10 = *(a1 + 2720);
    v11 = *(a1 + 224);
    phOsalNfc_MemCopy();
    *(a1 + 526) = 7;
    goto LABEL_9;
  }

  if (v6 != 120)
  {
    v12 = 245;
    goto LABEL_11;
  }

  *(a1 + 232) = 0;
  *(a1 + 266) = 120;
  v7 = *(a1 + 2720);
  phOsalNfc_SetMemory();
  *(a1 + 526) = 7;
  if (*(a1 + 65))
  {
    v8 = *(a1 + 2720);
    v9 = *(a1 + 224);
    phOsalNfc_MemCopy();
  }

LABEL_9:
  v12 = sub_297E98D38(a1, sub_297EE3188);
LABEL_11:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Tpz_H_RdBytes");
  return v12;
}

uint64_t sub_297EE1F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 8u, 5u, "phFriNfc_TopazMap_ConvertToReadOnly");
  sub_297E57170(v10, &v9);
  v5 = 1;
  if (a2)
  {
    v6 = v9;
    if (v9)
    {
      *(v9 + 32) = a2;
      *(v6 + 40) = a3;
      *(v6 + 547) = 6;
      *(v6 + 644) = 0;
      *(v6 + 544) = 4;
      if (sub_297E8EA44(*(v6 + 2712)) == 1)
      {
        v7 = 0;
      }

      else
      {
        v7 = 15;
      }

      v5 = sub_297EE2008(v9, 1, 3, v7);
      if (v5 == 13)
      {
        *v9 = 9;
      }
    }
  }

  sub_297E4DFAC(0, &v10, 8u, 5u, "phFriNfc_TopazMap_ConvertToReadOnly");
  return v5;
}

uint64_t sub_297EE2008(uint64_t a1, char a2, char a3, char a4)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Tpz_H_WrAByte");
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *(a1 + 48) = sub_297EE2580;
  *(a1 + 56) = a1;
  *(a1 + 264) = 260;
  *(a1 + 232) = 0;
  *(a1 + 266) = 83;
  *(a1 + 267) = a3 + 8 * a2;
  *(a1 + 268) = a4;
  v8 = *(a1 + 2720);
  v9 = *(a1 + 224);
  phOsalNfc_MemCopy();
  *(a1 + 526) = 7;
  v10 = sub_297E98D38(a1, sub_297EE3188);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Tpz_H_WrAByte");
  return v10;
}

uint64_t sub_297EE20FC(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v14 = 0;
  v15 = a1;
  sub_297E4E1B4(0, &v15, 8u, 5u, "phFriNfc_TopazMap_RdNdef");
  sub_297E57170(v15, &v14);
  v11 = 1;
  if (a4 <= 1)
  {
    if (a3)
    {
      if (a2)
      {
        if (a5)
        {
          v12 = v14;
          if (v14)
          {
            *(v14 + 16) = a5;
            *(v12 + 40) = a6;
            *(v12 + 547) = 2;
            *(v12 + 240) = a2;
            *(v12 + 248) = *a3;
            *(v12 + 552) = a3;
            *a3 = 0;
            *(v12 + 252) = 0;
            *(v12 + 560) = a4;
            *(v12 + 644) = 1;
            if (a4 == 1 || *(v12 + 540) == 3)
            {
              *(v12 + 560) = 1;
              *(v12 + 642) = 1;
              *v12 = 5;
              *(v12 + 645) = 0;
              *(v12 + 232) = 0;
              *(v12 + 266) = 0;
              *(v12 + 540) = 2;
              if (a4)
              {
                v11 = sub_297EE1DC4(v12, 1, 0);
                goto LABEL_13;
              }
            }

            else
            {
              *(v12 + 540) = 2;
              if (*(v12 + 645) == 1)
              {
                v11 = 26;
                goto LABEL_13;
              }
            }

            sub_297EE2250(v12);
            v11 = 0;
          }
        }
      }
    }
  }

LABEL_13:
  sub_297E4DFAC(0, &v15, 8u, 5u, "phFriNfc_TopazMap_RdNdef");
  return v11;
}

uint64_t sub_297EE2250(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Tpz_H_CpDataToUsrBuf");
  v2 = *(a1 + 2720);
  v3 = *(a1 + 240);
  v4 = a1 + *(a1 + 643) + 661;
  if (*(a1 + 248) >= *(a1 + 80))
  {
    v9 = *(a1 + 80);
    phOsalNfc_MemCopy();
    v6 = 0;
    v8 = 0;
    v10 = *(a1 + 80);
    **(a1 + 552) = v10;
    *(a1 + 645) = 1;
    v7 = *(a1 + 640) - v10;
  }

  else
  {
    phOsalNfc_MemCopy();
    v5 = *(a1 + 248);
    **(a1 + 552) = v5;
    v6 = *(a1 + 643) + v5;
    v7 = *(a1 + 640) - v5;
    v8 = *(a1 + 80) - v5;
  }

  *(a1 + 643) = v6;
  *(a1 + 640) = v7;
  *(a1 + 80) = v8;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Tpz_H_CpDataToUsrBuf");
  return 0;
}

uint64_t sub_297EE2334(uint64_t a1, char *a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6)
{
  v22 = 0;
  v23 = a1;
  sub_297E4E1B4(0, &v23, 8u, 5u, "phFriNfc_TopazMap_WrNdef");
  sub_297E57170(v23, &v22);
  v11 = 1;
  if (a3 && a5 && v22)
  {
    v12 = *(v22 + 2720);
    phOsalNfc_MemCopy();
    v13 = v22;
    *(v22 + 2740) = 3;
    *(v13 + 24) = a5;
    *(v13 + 40) = a6;
    *(v13 + 547) = 3;
    *(v13 + 252) = 0;
    **(v13 + 528) = 0;
    v14 = v22;
    v15 = (v22 + 2740);
    if (*a3)
    {
      v15 = a3;
      v16 = a2;
    }

    else
    {
      v16 = (v22 + 2736);
    }

    *(v22 + 240) = v16;
    *(v14 + 248) = *v15;
    *(v14 + 252) = 0;
    *(v14 + 256) = v15;
    *v15 = 0;
    *(v14 + 644) = 2;
    *(v14 + 560) = a4;
    if (a4 == 1 || *(v14 + 540) == 2)
    {
      *(v14 + 560) = 1;
      *(v14 + 642) = 1;
      *v14 = 5;
      *(v14 + 232) = 0;
      *(v14 + 266) = 0;
      *(v14 + 645) = 0;
      *(v14 + 640) = *(v14 + 204);
      v16 = (v14 + 267);
    }

    else
    {
      *v14 = 2;
    }

    v17 = *v16;
    *(v14 + 540) = 3;
    if (a4 || *(v14 + 645) != 1)
    {
      sub_297EE2500(v14);
      v18 = *(v22 + 642);
      v19 = *(v22 + 643);
      if (*(v22 + 560) == 1)
      {
        v20 = sub_297EE1DC4(v22, v18, v19);
      }

      else
      {
        v20 = sub_297EE2008(v22, v18, v19, v17);
      }

      v11 = v20;
    }

    else
    {
      v11 = 26;
    }
  }

  sub_297E4DFAC(0, &v23, 8u, 5u, "phFriNfc_TopazMap_WrNdef");
  return v11;
}

uint64_t sub_297EE2500(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Tpz_H_BlkChk");
  v2 = *(a1 + 643);
  v3 = *(a1 + 642);
  if (v2 > 7)
  {
    ++v3;
  }

  *(a1 + 642) = v3;
  *(a1 + 643) = v2 & 7;

  return sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Tpz_H_BlkChk");
}

uint64_t sub_297EE2580(uint64_t a1, char *a2, uint64_t a3)
{
  v36 = a1;
  sub_297E4E1B4(0, &v36, 8u, 5u, "phFriNfc_TopazMap_Process");
  if (!a3)
  {
    v5 = *a2;
    v6 = 245;
    if (v5 > 7)
    {
      if (*a2 > 0xAu)
      {
        switch(v5)
        {
          case 0xBu:
            if (a2[266] != 255 || *(a2 + 132) != 1)
            {
              goto LABEL_81;
            }

            a2[266] = 1;
            a3 = sub_297EE1DC4(a2, 14, 1);
            if (a3 == 13)
            {
              v7 = 12;
              goto LABEL_64;
            }

            break;
          case 0xCu:
            if (*(a2 + 132) != 1)
            {
              goto LABEL_156;
            }

            byte_2A13A5D4E = a2[266] | 0x7F;
            a3 = sub_297EE2008(a2, 14, 1, byte_2A13A5D4E);
            v7 = a3;
            if (a3 == 13)
            {
              goto LABEL_64;
            }

            break;
          case 0xDu:
            if (byte_2A13A5D4E == a2[266] && *(a2 + 132) == 1)
            {
              byte_2A13A5D4E = 0;
              goto LABEL_156;
            }

            byte_2A13A5D4E = 0;
            goto LABEL_81;
          default:
            goto LABEL_157;
        }

LABEL_82:
        v6 = a3;
        goto LABEL_157;
      }

      if (v5 != 8)
      {
        if (v5 != 9)
        {
          if (v5 == 10)
          {
            if (*(a2 + 132) != 1)
            {
              goto LABEL_156;
            }

            a3 = sub_297EE2008(a2, 14, 0, 255);
            if (a3 == 13)
            {
              v7 = 11;
LABEL_64:
              *a2 = v7;
              goto LABEL_156;
            }

            goto LABEL_82;
          }

LABEL_157:
          sub_297EE2FD8(a2, v6);
          return sub_297E4DFAC(0, &v36, 8u, 5u, "phFriNfc_TopazMap_Process");
        }

        if (a2[266] == 15 && *(a2 + 132) == 1)
        {
          byte_2A13A5D4E = 0;
          a2[266] = 1;
          a3 = sub_297EE1DC4(a2, 14, 0);
          if (a3 == 13)
          {
            v7 = 10;
            goto LABEL_64;
          }

          goto LABEL_82;
        }

LABEL_81:
        v6 = 27;
        goto LABEL_157;
      }

      sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ProCCTLV");
      v16 = a2[646];
      v17 = a2[266];
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          if (v17 == 14 && *(a2 + 132) == 1)
          {
            LOBYTE(v18) = 3;
            goto LABEL_109;
          }

          goto LABEL_111;
        }

        if (v16 == 3)
        {
          if (!a2[266] && *(a2 + 132) == 1)
          {
            LOBYTE(v18) = 4;
            goto LABEL_109;
          }

LABEL_111:
          a3 = 27;
          goto LABEL_112;
        }
      }

      else
      {
        if (!a2[646])
        {
          if (v17 == 225)
          {
            v18 = *(a2 + 132);
            if (v18 == 1)
            {
              goto LABEL_109;
            }
          }

          goto LABEL_111;
        }

        if (v16 == 1)
        {
          if (v17 == 16 && *(a2 + 132) == 1)
          {
            LOBYTE(v18) = 2;
LABEL_109:
            a2[646] = v18;
            v25 = sub_297EE355C(a2);
            goto LABEL_110;
          }

          goto LABEL_111;
        }
      }

      if (v17 == 3 && *(a2 + 132) == 1)
      {
        ++a2[643];
        sub_297EE2500(a2);
        *a2 = 6;
        a2[646] = 5;
        v25 = sub_297EE2008(a2, 1, 0, 0);
LABEL_110:
        a3 = v25;
LABEL_112:
        v22 = "phFriNfc_Tpz_H_ProCCTLV";
        goto LABEL_155;
      }

      goto LABEL_111;
    }

    if (*a2 <= 4u)
    {
      if (v5 == 2)
      {
        sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ProWrUsrData");
        v10 = *(a2 + 126);
        if (a2[266] == *(*(a2 + 30) + v10) && *(a2 + 132) == 1)
        {
          *(a2 + 126) = v10 + 1;
          --*(a2 + 320);
          ++a2[643];
          sub_297EE2500(a2);
          v11 = *(a2 + 126);
          if (*(a2 + 62) == v11 || !*(a2 + 320))
          {
            a2[645] = *(a2 + 320) == 0;
            sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_WrLByte");
            v29 = *(a2 + 34);
            v30 = a2[70];
            *a2 = 7;
            a2[646] = 8;
            v31 = *(a2 + 126);
            if (a2[560] != 1)
            {
              LOBYTE(v31) = a2[80] + v31;
            }

            if (v29 > 6)
            {
              ++v30;
            }

            a3 = sub_297EE2008(a2, v30, (v29 + 1) & 7, v31);
            sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_Tpz_H_WrLByte");
          }

          else
          {
            *a2 = 2;
            a3 = sub_297EE2008(a2, a2[642], a2[643], *(*(a2 + 30) + v11));
          }
        }

        else
        {
          a3 = 27;
        }

        v22 = "phFriNfc_Tpz_H_ProWrUsrData";
      }

      else
      {
        if (v5 != 4)
        {
          goto LABEL_157;
        }

        sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ProReadID");
        if (a2[266] == 17 && *(a2 + 132) == 6)
        {
          v9 = *(a2 + 680);
          phOsalNfc_MemCopy();
          *a2 = 5;
          *(a2 + 58) = 0;
          a2[266] = 0;
          a3 = sub_297EE1DC4(a2, a2[642], a2[643]);
        }

        else
        {
          a3 = 27;
        }

        v22 = "phFriNfc_Tpz_H_ProReadID";
      }

      goto LABEL_155;
    }

    if (v5 != 5)
    {
      if (v5 != 6)
      {
        if (v5 != 7)
        {
          goto LABEL_157;
        }

        sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ProWrTLV");
        v8 = a2[646];
        if (v8 != 8)
        {
          if (v8 == 7 && !a2[266] && *(a2 + 132) == 1)
          {
            *a2 = 2;
            ++a2[643];
            sub_297EE2500(a2);
            a3 = sub_297EE2008(a2, a2[642], a2[643], *(*(a2 + 30) + *(a2 + 126)));
LABEL_129:
            v22 = "phFriNfc_Tpz_H_ProWrTLV";
            goto LABEL_155;
          }

LABEL_128:
          a3 = 27;
          goto LABEL_129;
        }

        if (a2[560])
        {
          if (a2[560] != 1)
          {
            goto LABEL_128;
          }

          v24 = *(a2 + 126);
          if (v24 != a2[266] || *(a2 + 132) != 1)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v24 = *(a2 + 126);
          v32 = *(a2 + 40);
          if (v32 + v24 != a2[266] || *(a2 + 132) != 1)
          {
            goto LABEL_128;
          }

          LOWORD(v24) = v32 + v24;
        }

        *(a2 + 40) = v24;
        sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_WrByte0ValE1");
        *a2 = 6;
        a2[646] = 6;
        a3 = sub_297EE2008(a2, 1, 0, 225);
        sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_Tpz_H_WrByte0ValE1");
        goto LABEL_129;
      }

      sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ProWrNMN");
      v12 = a2[646];
      if (v12 == 6)
      {
        if (a2[266] == 225 && *(a2 + 132) == 1)
        {
          a3 = 0;
          v23 = a2[545];
          if (!v23)
          {
            v23 = 2;
          }

          a2[545] = v23;
          **(a2 + 32) = *(a2 + 126);
          goto LABEL_94;
        }
      }

      else if (v12 == 5 && !a2[266] && *(a2 + 132) == 1)
      {
        *a2 = 7;
        v13 = *(a2 + 34);
        v14 = a2[70];
        if (v13 > 6)
        {
          ++v14;
        }

        a2[646] = 7;
        a3 = sub_297EE2008(a2, v14, (v13 + 1) & 7, 0);
        goto LABEL_94;
      }

      a3 = 27;
LABEL_94:
      v22 = "phFriNfc_Tpz_H_ProWrNMN";
LABEL_155:
      sub_297E4DFAC(2, a2, 8u, 5u, v22);
      goto LABEL_156;
    }

    sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ProReadAll");
    v15 = a2[648] == a2[268] && a2[649] == a2[269] && a2[650] == a2[270] && a2[651] == a2[271];
    if (a2[266] != 17)
    {
      goto LABEL_79;
    }

    v19 = !v15;
    if (*(a2 + 132) != 122)
    {
      v19 = 1;
    }

    if (v19)
    {
LABEL_79:
      a3 = 27;
LABEL_154:
      v22 = "phFriNfc_Tpz_H_ProReadAll";
      goto LABEL_155;
    }

    v20 = *(a2 + 680);
    phOsalNfc_MemCopy();
    sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ChkLockBits");
    if (a2[380] == 1 && (a2[381] | 0x80) == 0xE0 && a2[279] != 15)
    {
      if (a2[279])
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }
    }

    else
    {
      v21 = 1;
    }

    a2[545] = v21;
    sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ChkLockBits");
    sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_CallNxtOp");
    v26 = a2[540];
    if (v26 == 2)
    {
      if (sub_297EE3450(a2))
      {
        a3 = 28;
      }

      else
      {
        a3 = sub_297EE32C4(a2);
        if (!a3)
        {
          a2[643] += 2;
          sub_297EE2250(a2);
        }
      }

      goto LABEL_153;
    }

    if (v26 == 1)
    {
      sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ChkCCinChkNdef");
      if (a2[661] == 225)
      {
        if (a2[664] >= 0x10u)
        {
          v28 = *(a2 + 102);
          v27 = 3;
        }

        else
        {
          v27 = 0;
          v28 = 92;
        }

        *(a2 + 320) = v28;
        *(a2 + 102) = v28;
      }

      else
      {
        v27 = 3;
      }

      if (a2[545] != 1)
      {
        a2[545] = v27;
      }

      sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ChkCCinChkNdef");
      if (a2[545] == 3)
      {
        a3 = 0;
        a2[545] = 0;
        *(a2 + 320) = 90;
        *(a2 + 102) = 90;
        goto LABEL_153;
      }

      v34 = sub_297EE3220(a2, a2[662]);
      if (!v34)
      {
        if (a2[663] <= 0xEu)
        {
          sub_297EE32C4(a2);
        }

        a3 = 0;
        goto LABEL_153;
      }
    }

    else
    {
      if ((a2[545] | 2) != 2)
      {
        a3 = 27;
LABEL_153:
        sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_Tpz_H_CallNxtOp");
        goto LABEL_154;
      }

      if (sub_297EE3450(a2))
      {
        v33 = 0;
        *(a2 + 34) = 4;
        a2[70] = 1;
        a2[643] = 4;
      }

      else
      {
        sub_297EE32C4(a2);
        v33 = 4;
      }

      a2[646] = v33;
      v34 = sub_297EE355C(a2);
    }

    a3 = v34;
    goto LABEL_153;
  }

LABEL_156:
  v6 = a3;
  if (a3 != 13)
  {
    goto LABEL_157;
  }

  return sub_297E4DFAC(0, &v36, 8u, 5u, "phFriNfc_TopazMap_Process");
}