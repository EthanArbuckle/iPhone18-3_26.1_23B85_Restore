uint64_t sub_297E9FAF4(unsigned int a1, void *a2)
{
  v5 = a1;
  sub_297E4E1B4(1, &v5, 5u, 5u, "phUtilNfc_GetdnldEseCoreContext");
  if (a2 && (*a2 = 0, v5 <= 1))
  {
    v3 = 0;
    *a2 = *(&unk_2A18BDDC0 + 14 * v5 + 8);
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(1, &v5, 5u, 5u, "phUtilNfc_GetdnldEseCoreContext");
  return v3;
}

uint64_t sub_297E9FB94(unsigned int a1, uint64_t a2)
{
  v5 = a1;
  sub_297E4E1B4(1, &v5, 5u, 5u, "phUtilNfc_SetHciNfcContext");
  if (v5 > 1)
  {
    v3 = 255;
  }

  else
  {
    v3 = 0;
    *(&unk_2A18BDDC0 + 14 * v5 + 13) = a2;
  }

  sub_297E4DFAC(1, &v5, 5u, 5u, "phUtilNfc_SetHciNfcContext");
  return v3;
}

uint64_t sub_297E9FC28(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RdrIso15693Init");
  if (a1 && a2 && a3 && a4)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Updating NFC-I (ISO15693) passive poll Mode Techn Specific info");
    *(a2 + 4) = 20;
    *(a2 + 48) = 7;
    if (a3[6] == 10)
    {
      *(a2 + 46) = a3[7];
      *(a2 + 45) = a3[8];
      *(a2 + 44) = 8;
      v8 = *(a1 + 6524);
      phOsalNfc_MemCopy();
      sub_297E9FDA4(*(a1 + 6528), a2 + 36, a2 + 36);
      v9 = 0;
      *(a2 + 47) = 0;
      v10 = *(a1 + 4800);
      *v10 = sub_297E9FEB0;
      v10[1] = sub_297EA010C;
      v10[2] = 0;
      v10[3] = sub_297EFF438;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid Activation parameters length received for ISO15693 Tag");
      v9 = 255;
    }
  }

  else
  {
    v9 = 1;
    sub_297E4E0B0(2, a1, 3u, 1u, "Invalid input parameters!");
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RdrIso15693Init");
  return v9;
}

uint64_t sub_297E9FDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  sub_297E4E1B4(0, &v10, 3u, 5u, "phNciNfc_GetTagTypeInfo");
  if (a2 && a3)
  {
    v5 = *(a2 + 6);
    if (v5 != 7)
    {
      if (v5 == 4)
      {
        v6 = *(a2 + 5);
        switch(v6)
        {
          case 3:
            v8 = 2;
            goto LABEL_17;
          case 2:
            v8 = 1;
            goto LABEL_17;
          case 1:
            *(a3 + 12) = 0;
            return sub_297E4DFAC(0, &v10, 3u, 5u, "phNciNfc_GetTagTypeInfo");
        }
      }

      goto LABEL_16;
    }

    v7 = *(a2 + 5) & 0xFE;
    if (v7 > 0xBF)
    {
      if (v7 == 192)
      {
        v8 = 5;
        goto LABEL_17;
      }

      if (v7 == 196)
      {
        v8 = 6;
        goto LABEL_17;
      }
    }

    else
    {
      if ((*(a2 + 5) & 0xFE) == 0)
      {
        v8 = 3;
        goto LABEL_17;
      }

      if (v7 == 128)
      {
        v8 = 4;
LABEL_17:
        *(a3 + 12) = v8;
        return sub_297E4DFAC(0, &v10, 3u, 5u, "phNciNfc_GetTagTypeInfo");
      }
    }

LABEL_16:
    v8 = 7;
    goto LABEL_17;
  }

  return sub_297E4DFAC(0, &v10, 3u, 5u, "phNciNfc_GetTagTypeInfo");
}

uint64_t sub_297E9FEB0(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_Iso15693Send");
  if (a1)
  {
    if (*(a1 + 4584))
    {
      *(a1 + 4776) = 0;
      if (!*(a1 + 4576))
      {
        v3 = "Send Data Buff not valid!";
        v4 = a1 + 6524;
        goto LABEL_9;
      }

      v2 = *(a1 + 6524);
      phOsalNfc_SetMemory();
      LODWORD(v16) = 0;
      if (sub_297E8BB50(a1, *(a1 + 4552), (&v16 | 0xC)))
      {
        v3 = " Couldn't Get ConnId!";
        v4 = a1 + 6524;
LABEL_9:
        sub_297E4E0B0(1, v4, 3u, 1u, v3);
        v5 = 255;
        goto LABEL_10;
      }

      v7 = *(a1 + 4584);
      *(a1 + 4640) = 0;
      v8 = *(a1 + 6524);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(a1 + 4640) = Memory_Typed;
      *(a1 + 4648) = 0;
      if (Memory_Typed)
      {
        *(a1 + 4648) = v7;
        v10 = *(a1 + 6524);
        phOsalNfc_SetMemory();
        v11 = *(a1 + 6524);
        v12 = *(a1 + 4640);
        v13 = *(a1 + 4576);
        phOsalNfc_MemCopy();
        *&v17 = *(a1 + 4640);
        DWORD2(v17) = *(a1 + 4648);
        if (*(a1 + 4560) == 1)
        {
          *(a1 + 4776) = 1;
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "EOF need to be sent after sending the data packet");
        }

        if (sub_297E57BA8(a1 + 936, &v16, a1 + 3800, *(a1 + 4566), sub_297EFF2DC, a1) == 13)
        {
          v5 = 13;
        }

        else
        {
          *(a1 + 4776) = 0;
          v14 = *(a1 + 6524);
          v15 = *(a1 + 4640);
          phOsalNfc_FreeMemory();
          *(a1 + 4640) = 0;
          *(a1 + 4648) = 0;
          v5 = 255;
        }

        *(a1 + 4566) = 0;
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Payload MemAlloc for Send request Failed!");
        v5 = 12;
      }
    }

    else
    {
      v5 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Invalid Length..");
    }
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(2, 0, 3u, 1u, "Invalid input parameter (Nci Context)!");
  }

LABEL_10:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_Iso15693Send");
  return v5;
}

uint64_t sub_297EA010C(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_Iso15693Receive");
  if (!a1)
  {
    v20 = 1;
    sub_297E4E0B0(2, 0, 3u, 2u, " Invalid Context Param..");
    goto LABEL_28;
  }

  if (a2 || (v4 = *(a1 + 3808)) == 0 || (v5 = *(a1 + 3800)) == 0)
  {
    *(a1 + 4776) = 0;
    v20 = 255;
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "ISO15693 XchgData receive Failed...");
    goto LABEL_26;
  }

  v6 = *(a1 + 4600);
  *(a1 + 4776) = 0;
  v7 = v4 - 1;
  v8 = *(v5 + v4 - 1);
  if (v8 > 0xB0)
  {
    switch(v8)
    {
      case 0xB1u:
        v20 = 183;
        v9 = " ISO15693 XchgData,PH_NCINFC_STATUS_RF_PROTOCOL_ERROR Detected by NFCC during Data Exchange ";
        goto LABEL_23;
      case 0xB2u:
        v20 = 178;
        v9 = " ISO15693 XchgData,PH_NCINFC_STATUS_RF_TIMEOUT_ERROR Detected by NFCC during Data Exchange ";
        goto LABEL_23;
      case 0xB3u:
        v20 = 184;
        v9 = " ISO15693 XchgData,PH_NCINFC_STATUS_RF_UNEXPECTED_DAT Detected by NFCC during Data Exchange ";
        goto LABEL_23;
    }

LABEL_19:
    v20 = 185;
    sub_297E96818(*(a1 + 6528), v8);
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, " ISO15693 XchgData,Unknown RF related error Detected by NFCC during Data Exchange ");
    if (v4 <= v6)
    {
      v11 = *(a1 + 6524);
      v12 = *(a1 + 4592);
      v13 = *(a1 + 3800);
      phOsalNfc_MemCopy();
      *(a1 + 4600) = v4;
    }

    goto LABEL_25;
  }

  if (*(v5 + v4 - 1))
  {
    if (v8 == 2)
    {
      v20 = 181;
      v9 = " ISO15693 XchgData,PH_NCINFC_STATUS_RF_FRAME_CORRUPTED Detected by NFCC during Data Exchange ";
      goto LABEL_23;
    }

    if (v8 == 176)
    {
      v20 = 182;
      v9 = " ISO15693 XchgData,PH_NCINFC_STATUS_RF_TRANSMISSION_ERROR Detected by NFCC during Data Exchange ";
LABEL_23:
      v10 = a1 + 6524;
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v20 = 0;
  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "ISO15693 XchgData Request is Successful!");
  if (v7 <= v6)
  {
    v17 = *(a1 + 6524);
    v18 = *(a1 + 4592);
    v19 = *(a1 + 3800);
    phOsalNfc_MemCopy();
    *(a1 + 4600) = v7;
    goto LABEL_25;
  }

  v20 = 8;
  v9 = "ISO15693 XchgData,More Data available than requested...";
  v10 = a1 + 6524;
LABEL_24:
  sub_297E4E0B0(1, v10, 3u, 2u, v9);
LABEL_25:
  sub_297EFF5D8(a1, &v20);
LABEL_26:
  if (*(a1 + 4640))
  {
    *(a1 + 4648) = 0;
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Freeing Send Request Payload Buffer..");
    v14 = *(a1 + 6524);
    v15 = *(a1 + 4640);
    phOsalNfc_FreeMemory();
    *(a1 + 4640) = 0;
  }

LABEL_28:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_Iso15693Receive");
  return v20;
}

uint64_t sub_297EA03BC(uint64_t a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  sub_297E687D8(2, a2, a1, 3u, 4u, "phNciNfc_SendEofDataPacket");
  sub_297E4E1B4(2, a2, 3u, 5u, "phNciNfc_SendEofDataPacket");
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 4);
    if (v3)
    {
      break;
    }

    v3 = 1;
    v4 = 1;
  }

  while (v5 != a2);
  if (v5 == a2)
  {
    if (*(a2 + 4776) != 1)
    {
      return sub_297E4DFAC(2, a2, 3u, 5u, "phNciNfc_SendEofDataPacket");
    }

    *(a2 + 4776) = 0;
    sub_297E5A304(*(a2 + 6524), *(a2 + 4696));
    *(a2 + 6512) = 0;
    v10 = *(a2 + 6524);
    phOsalNfc_SetMemory();
    LODWORD(v11) = 0;
    if (sub_297E8BB50(a2, *(a2 + 4552), (&v11 | 0xC)))
    {
      v6 = "phNciNfc_SendEofDataPacket: Couldn't Get ConnId!";
    }

    else
    {
      *&v12 = 0;
      DWORD2(v12) = 0;
      *(a2 + 3362) = 1;
      if (sub_297F00AB4(a2 + 936, &v11, sub_297EA055C, a2) == 13)
      {
        return sub_297E4DFAC(2, a2, 3u, 5u, "phNciNfc_SendEofDataPacket");
      }

      v6 = "phNciNfc_SendEofDataPacket: Failed to send EOF data packet";
    }

    v8 = a2 + 6524;
    v7 = 1;
  }

  else
  {
LABEL_6:
    v6 = "phNciNfc_SendEofDataPacket: Invalid or NULL pNciContext";
    v7 = 2;
    v8 = a2;
  }

  sub_297E4E0B0(v7, v8, 3u, 1u, v6);
  return sub_297E4DFAC(2, a2, 3u, 5u, "phNciNfc_SendEofDataPacket");
}

uint64_t sub_297EA055C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_EofSendCb");
  if (!a1)
  {
    v5 = "Invalid context received from RecvMgrHdlr!";
    v7 = 2;
    v6 = 0;
    goto LABEL_5;
  }

  if (a3)
  {
    v5 = "Failed to send EOF data packet";
    v6 = a1 + 6524;
    v7 = 1;
LABEL_5:
    sub_297E4E0B0(v7, v6, 3u, 1u, v5);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_EofSendCb");
  return a3;
}

uint64_t sub_297EA05F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x29EDCA608];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  memset(v21, 0, sizeof(v21));
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetHostCECfgs");
  if (!a1)
  {
    v8 = 255;
    goto LABEL_27;
  }

  v5 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ValidateCE_ConfigParams");
  if (!a3)
  {
    sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ValidateCE_ConfigParams");
LABEL_13:
    v8 = 1;
    v9 = "phLibNfc_SetHostCECfgs: CE Host configuration failed";
LABEL_26:
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, v9);
    goto LABEL_27;
  }

  v6 = *(a3 + 4);
  if (v6 == 4)
  {
    v11 = 0;
    *(&v27 + 1) = -258;
    *(&v27 + 3) = *(a3 + 22);
    *(&v27 + 7) = *(a3 + 26);
    DWORD1(v21[0]) |= 0x80u;
    DWORD1(v25) = 29;
    BYTE8(v25) |= 3u;
    WORD5(v27) = 15;
    do
    {
      if (*(a3 + 28) && *(a3 + 29))
      {
        phOsalNfc_MemCopy();
      }

      else
      {
        *(v26 + v11 + 1) = -1;
      }

      phOsalNfc_MemCopy();
      v11 += 10;
    }

    while (v11 != 160);
    goto LABEL_23;
  }

  if (v6 == 2)
  {
    DWORD1(v21[0]) |= 0x40u;
    v10 = BYTE12(v23);
    if (*(a3 + 17))
    {
      v10 = BYTE12(v23) | 1;
      LOBYTE(v24) = v24 | 1;
    }

    BYTE12(v23) = v10 | 2;
    phOsalNfc_MemCopy();
    BYTE12(v23) |= 4u;
    phOsalNfc_MemCopy();
    LOBYTE(v25) = v25 & 0xF8 | (2 * (*(a3 + 19) & 3)) | *(a3 + 20) & 1;
    DWORD1(v21[0]) |= 0x100u;
    BYTE3(v34) = *(a3 + 22);
    BYTE12(v27) |= 9u;
    LOBYTE(v28) = *(a3 + 18);
    BYTE12(v23) |= 0x18u;
    BYTE12(v24) = *(a3 + 21);
    goto LABEL_23;
  }

  if (v6 != 1 || *(a3 + 8) != 1)
  {
LABEL_23:
    sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ValidateCE_ConfigParams");
    goto LABEL_24;
  }

  v7 = *(a3 + 19);
  if (v7 > 6)
  {
    if (v7 != 10 && v7 != 7)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (*(a3 + 19))
  {
    if (v7 != 4)
    {
LABEL_31:
      v14 = 1;
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Invalid UID Length received!");
      goto LABEL_33;
    }

LABEL_30:
    BYTE4(v22) |= 8u;
    BYTE10(v23) = v7;
    phOsalNfc_MemCopy();
    v14 = 0;
    goto LABEL_33;
  }

  v14 = 0;
  BYTE4(v22) |= 8u;
  BYTE10(v23) = 0;
LABEL_33:
  v15 = BYTE4(v22);
  v16 = *(a3 + 70) & 0x1F;
  BYTE8(v22) = v16;
  if ((BYTE4(v22) & 8) == 0)
  {
    goto LABEL_39;
  }

  if (BYTE10(v23) == 7)
  {
    v17 = 64;
  }

  else
  {
    if (BYTE10(v23) != 10)
    {
      goto LABEL_39;
    }

    v17 = 0x80;
  }

  BYTE8(v22) = v17 | v16;
LABEL_39:
  v18 = BYTE4(v22) | 3;
  BYTE4(v22) |= 3u;
  BYTE9(v22) = *(a3 + 71);
  v19 = *(a3 + 69);
  if ((v19 & 0x40) != 0)
  {
    v18 = v15 | 7;
    BYTE4(v22) = v15 | 7;
    BYTE12(v22) |= 2u;
  }

  if ((v19 & 0x20) != 0)
  {
    BYTE4(v22) = v18 | 4;
    BYTE12(v22) |= 1u;
  }

  DWORD1(v21[0]) |= 0x120u;
  v20 = *(a3 + 68);
  if (*(a3 + 68))
  {
    if (v20 > 0x30)
    {
      v14 = 1;
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Received App data Length exceeded max historic bytes length");
    }

    else
    {
      BYTE12(v27) |= 2u;
      BYTE1(v31) = v20;
      phOsalNfc_MemCopy();
    }
  }

  LOBYTE(v28) = *(a3 + 73);
  BYTE12(v27) |= 9u;
  BYTE3(v34) = *(a3 + 72);
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ValidateCE_ConfigParams");
  if (v14)
  {
    goto LABEL_13;
  }

LABEL_24:
  LODWORD(v21[0]) = *(a1 + 9792);
  v8 = sub_297E64020(*(a1 + 3088), v21, sub_297E5BA84, a1);
  if (v8 != 13)
  {
    v9 = "phLibNfc_SetHostCECfgs: Invalid status -CE Host configuration failed to send";
    goto LABEL_26;
  }

LABEL_27:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetHostCECfgs");
  v12 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t sub_297EA0B1C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetHostCEConfigComplete");
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

    *(a1 + 532) = a2 == 0;
    a2 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetHostCEConfigComplete");
  return a2;
}

uint64_t sub_297EA0BAC(uint64_t a1, int a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  v14 = 111;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_CardEmulation_DataReceiveCb");
  sub_297E4E0B0(2, a1, 4u, 4u, "phLibNfc_CardEmulation_DataReceiveCb");
  if (!a1 || !a3)
  {
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CardEmulation_DataReceiveCb");
  }

  v6 = *(a1 + 6712);
  if (*(a1 + 536))
  {
    v7 = *(a1 + 9792);
    phOsalNfc_FreeMemory();
    *(a1 + 536) = 0;
  }

  *(a1 + 544) = 0;
  *(a1 + 533) = 1;
  if (a2 == 10)
  {
LABEL_16:
    sub_297EA0D54(a1);
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CardEmulation_DataReceiveCb");
  }

  if (a2)
  {
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CardEmulation_DataReceiveCb");
  }

  if (!*(a3 + 16) || !*(a3 + 8))
  {
    goto LABEL_11;
  }

  v8 = *(a1 + 9792);
  v9 = *(a3 + 16);
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  if (Memory_Typed)
  {
    *(a1 + 536) = Memory_Typed;
    *(a1 + 544) = v9;
    v11 = *(a1 + 9792);
    v12 = *(a3 + 8);
    phOsalNfc_MemCopy();
LABEL_11:
    if (v6)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Data Allocation failed");
  if (!v6)
  {
LABEL_15:
    v15 = &v14;
    LODWORD(v16) = 2;
    sub_297E7680C(*(a1 + 3088), sub_297E5BA84, a1, &v15);
    goto LABEL_16;
  }

LABEL_12:
  if (*(a1 + 534))
  {
    *(a1 + 534) = 0;
    sub_297E4F450(*(a1 + 9784), 121, 0, a1 + 872, a1 + 762);
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CardEmulation_DataReceiveCb");
}

uint64_t sub_297EA0D54(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_RegisterForHceActivation");
  if (a1)
  {
    v2 = sub_297E763CC(*(a1 + 3088), sub_297EA0BAC, a1);
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RegisterForHceActivation");
  return v2;
}

uint64_t sub_297EA0DDC(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  v10 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MapRemoteDevCeHost");
  v6 = 0;
  if (a2 && a3)
  {
    if (sub_297EE5B30(a1, a3[32], &v10))
    {
      v6 = 255;
    }

    else
    {
      v6 = 0;
      a2[63] = v10;
      v7 = a3[101];
      v8 = a3[102];
      a2[60] = a3[96];
      a2[61] = v7;
      a2[62] = v8;
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MapRemoteDevCeHost");
  return v6;
}

uint64_t sub_297EA0EA0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_SmtCrdFmt_HCrHandler");
  *(a1 + 25) = 1;
  (*(a1 + 32))(*(a1 + 408), *(a1 + 40), a2);

  return sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_SmtCrdFmt_HCrHandler");
}

uint64_t sub_297EA0F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6)
{
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_NdefSmtCrd_Reset");
  v12 = 1;
  if (a2 && a5 && a3 && a1 && a6 && a4 && *a6 >= 0xFCu)
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = a2;
    *(a1 + 16) = a3;
    *(a1 + 88) = a6;
    *(a1 + 96) = a5;
    *(a1 + 104) = 0;
    *(a1 + 24) = 256;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    sub_297EEF130(a1);
    sub_297EDD210(a1);
    *(a1 + 216) = a4;
    sub_297E68F78(a1);
    v12 = 0;
  }

  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_NdefSmtCrd_Reset");
  return v12;
}

uint64_t sub_297EA101C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_NdefSmtCrd_SetCR");
  v8 = 1;
  if (a1 && a2 <= 1 && a3 && a4)
  {
    v8 = 0;
    v9 = a1 + 16 * a2;
    *(v9 + 32) = a3;
    *(v9 + 40) = a4;
  }

  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_NdefSmtCrd_SetCR");
  return v8;
}

uint64_t sub_297EA10B8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(3, a1, 8u, 5u, "phFriNfc_NdefSmtCrd_Format");
  if (a1 && *(a1 + 32) && *(a1 + 40))
  {
    v4 = *(a1 + 16);
    v5 = *(v4 + 4);
    if (v5 <= 0x10)
    {
      v6 = *(v4 + 68);
      v7 = 1 << v5;
      if ((v7 & 0xEC00) != 0)
      {
        if (v6 == 32)
        {
          *(a1 + 24) = 1;
          v8 = sub_297EDDA10(a1);
LABEL_15:
          v9 = v8;
          goto LABEL_9;
        }

        goto LABEL_22;
      }

      if ((v7 & 0x11000) != 0)
      {
        if (*(v4 + 68))
        {
          if ((v6 & 0x18) == 8)
          {
            v11 = 2;
          }

          else
          {
            v11 = 3;
            if (v6 != 1 && (v6 & 0x18) != 0x18)
            {
              goto LABEL_22;
            }
          }

          *(a1 + 24) = v11;
          v8 = sub_297E690CC(a1, a2);
          goto LABEL_15;
        }

        *(a1 + 24) = 0;
        if (*(v4 + 18) == 7 && *(v4 + 8) == 4)
        {
          v8 = sub_297EEF1B8(a1);
          goto LABEL_15;
        }

LABEL_22:
        v9 = 29;
        goto LABEL_9;
      }
    }

    sub_297E4E0B0(3, a1, 8u, 2u, "Invalid remote device or Remote device not found");
    goto LABEL_22;
  }

  sub_297E4E0B0(3, a1, 8u, 2u, "Invalid input parameters");
  v9 = 1;
LABEL_9:
  sub_297E4DFAC(3, a1, 8u, 5u, "phFriNfc_NdefSmtCrd_Format");
  return v9;
}

uint64_t sub_297EA1230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  sub_297E4E1B4(0, &v8, 8u, 5u, "phFriNfc_NdefSmtCrd_Process");
  if (a2)
  {
    v5 = *(*(a2 + 16) + 4);
    if (v5 > 0x10)
    {
      goto LABEL_9;
    }

    v6 = 1 << v5;
    if ((v6 & 0xEC00) != 0)
    {
      sub_297EDDBAC(a2, a3);
      return sub_297E4DFAC(0, &v8, 8u, 5u, "phFriNfc_NdefSmtCrd_Process");
    }

    if ((v6 & 0x11000) == 0)
    {
LABEL_9:
      *(a2 + 25) = 1;
      (*(a2 + 48))(*(a2 + 408), *(a2 + 40), 29);
      return sub_297E4DFAC(0, &v8, 8u, 5u, "phFriNfc_NdefSmtCrd_Process");
    }

    if ((*(a2 + 24) & 0xFE) == 2)
    {
      sub_297E691F4(a2, a3);
    }

    else
    {
      sub_297EEF2E0(a2, a3);
    }
  }

  return sub_297E4DFAC(0, &v8, 8u, 5u, "phFriNfc_NdefSmtCrd_Process");
}

uint64_t sub_297EA1320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GenericTransceiveCmd");
  v5 = 1;
  if (a1 && a3)
  {
    v5 = sub_297F06F3C(*(a1 + 3088), *(a1 + 1504), a3, sub_297E5BA84, a1);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GenericTransceiveCmd");
  return v5;
}

uint64_t sub_297EA13BC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GenericTransceiveResp");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GenericTransceiveResp:transceive failed!");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_GenericTransceiveResp:transceive success");
    }
  }

  else
  {
    a2 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GenericTransceiveResp");
  return a2;
}

uint64_t sub_297EA146C(uint64_t a1, int a2, uint64_t a3)
{
  LODWORD(v4) = a2;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GenericTransceiveComplete");
  if (a3)
  {
    v6 = a1 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v4 = 1;
  }

  else
  {
    v4 = v4;
  }

  sub_297EA18A4(a1, v4, a3);
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GenericTransceiveComplete");
  return v4;
}

uint64_t sub_297EA14F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = 0;
  sub_297E4E1B4(2, a4, 4u, 5u, "phLibNfc_InternalTransceive");
  v8 = 1;
  if (a4)
  {
    *(a4 + 1528) = 1;
    v13 = a1;
    v9 = sub_297ECD484(a4, &v13, &v14, 1);
    if (v9)
    {
      v8 = v9;
      v10 = "phLibNfc_MapRemoteDevHandle: Failed to map handle";
LABEL_6:
      sub_297E4E0B0(1, a4 + 9792, 4u, 1u, v10);
      goto LABEL_7;
    }

    v11 = sub_297E8CCB4(a4, v14);
    if (v11)
    {
      v8 = v11;
      v10 = "phLibNfc_ValidateDevHandle: Mapped handle validation failed!";
      goto LABEL_6;
    }

    v8 = sub_297EA1630(a4, a2);
    if (v8 == 13)
    {
      *(a4 + 6248) = a3;
      *(a4 + 6256) = a4;
      *(a4 + 2600) = *(a2 + 48);
    }

    else
    {
      *(a4 + 2600) = 0;
      *(a4 + 2608) = 0;
      *(a4 + 6248) = 0;
      *(a4 + 6256) = 0;
    }
  }

LABEL_7:
  sub_297E4DFAC(2, a4, 4u, 5u, "phLibNfc_InternalTransceive");
  return v8;
}

uint64_t sub_297EA1630(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_RfTransceive");
  v4 = 1;
  if (!a1 || !a2)
  {
    goto LABEL_37;
  }

  *(a1 + 5432) = 0;
  v5 = (a1 + 1504);
  if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    v6 = 0;
    *v5 = 0;
    *(a1 + 1512) = 0;
  }

  else
  {
    v6 = *v5;
  }

  if (!sub_297EE03F8(a1, a2, v6))
  {
    v8 = *a2;
    if (*a2 == 160)
    {
      goto LABEL_17;
    }

    if (v8)
    {
      v14 = *(a2 + 32);
      v15 = v8 & 0xFFFFFFFE;
      if ((v8 & 0xFFFFFFFE) == 0x60 && v14)
      {
        goto LABEL_31;
      }

      if (v15 == 128)
      {
        v7 = off_2A1A92E40;
        goto LABEL_26;
      }

      if (v15 == 192 && v14 || v8 == 194)
      {
LABEL_9:
        v7 = off_2A1A92DE0;
LABEL_26:
        *(a1 + 2960) = v7;
        *(a1 + 2952) = 0;
        *(a1 + 2954) = 0;
        v16 = *v7;
        if (*v7)
        {
          LOBYTE(v16) = 0;
          v17 = (v7 + 2);
          do
          {
            LOBYTE(v16) = v16 + 1;
            v18 = *v17;
            v17 += 2;
          }

          while (v18);
        }

        *(a1 + 2953) = v16;
        goto LABEL_35;
      }

      if (v8 == 176)
      {
        v7 = off_2A1A92E20;
        goto LABEL_26;
      }
    }

    else
    {
      v9 = *(a2 + 32);
      if (v9)
      {
        v10 = *v9;
        if (v10 == 160)
        {
LABEL_17:
          *(a1 + 2960) = &qword_2A1A92DB0;
          *(a1 + 2952) = 0;
          *(a1 + 2954) = 0;
          v11 = qword_2A1A92DB0;
          if (qword_2A1A92DB0)
          {
            v11 = 0;
            v12 = off_2A1A92DC0;
            do
            {
              ++v11;
              v13 = *v12;
              v12 += 2;
            }

            while (v13);
          }

          goto LABEL_34;
        }

        if ((v10 & 0xFE) == 0x60)
        {
LABEL_31:
          *(a1 + 2960) = off_2A1A92E40;
          *(a1 + 2952) = 0;
          *(a1 + 2954) = 0;
          v11 = off_2A1A92E40[0];
          if (off_2A1A92E40[0])
          {
            v11 = 0;
            v19 = &qword_2A1A92E50;
            do
            {
              ++v11;
              v20 = *v19;
              v19 += 2;
            }

            while (v20);
          }

LABEL_34:
          *(a1 + 2953) = v11;
          if (!*a2)
          {
            v21 = sub_297EE0110(a1, v6, a2, (a1 + 5432));
            if (v21)
            {
              goto LABEL_36;
            }

            a2 = *(a1 + 5432);
            if (!a2)
            {
              v4 = 0;
              goto LABEL_37;
            }
          }

LABEL_35:
          v21 = sub_297E5588C(a1, 0, a2);
LABEL_36:
          v4 = v21;
          goto LABEL_37;
        }
      }
    }

    v4 = 1;
    goto LABEL_37;
  }

  if (*(a2 + 32) && *a2 == 3)
  {
    goto LABEL_9;
  }

  if (v6 && !sub_297ECE3AC(a1, *(v6 + 4), a2, a1 + 2760))
  {
    v7 = off_2A1A90C48;
    a2 = a1 + 2760;
    goto LABEL_26;
  }

  v4 = 255;
LABEL_37:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RfTransceive");
  return v4;
}

uint64_t sub_297EA18A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = 0;
  v44 = 0;
  v42 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_PrepareTransceiveCb");
  if (!a1 || !a3)
  {
    goto LABEL_94;
  }

  v6 = (a1 + 1504);
  if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    v7 = 0;
    *v6 = 0;
    *(a1 + 1512) = 0;
  }

  else
  {
    v7 = *v6;
  }

  if (a2 == 146 || a2 == 121 || !a2 || *(a1 + 1532) || !v7 || sub_297EE0544(a1, v7))
  {
    if (a2 == 44 && *(a1 + 6312))
    {
      if (!sub_297F0A87C(*(a1 + 9784), v7))
      {
        *(a1 + 2960) = &qword_2A1A928E0;
        *(a1 + 2952) = 0;
        *(a1 + 2954) = 0;
        v8 = qword_2A1A928E0;
        if (qword_2A1A928E0)
        {
          v8 = 0;
          v9 = &qword_2A1A928F0;
          do
          {
            ++v8;
            v10 = *v9;
            v9 += 2;
          }

          while (v10);
        }

        *(a1 + 2953) = v8;
        sub_297E5588C(a1, 0, 0);
        word_2A13A5CD0 = 0;
        a2 = 44;
        goto LABEL_94;
      }
    }

    else
    {
      if (!a2)
      {
        v12 = sub_297EE5BC0(a1, a3, *(a1 + 1504));
        v11 = 119;
        if (v12)
        {
          goto LABEL_73;
        }

        goto LABEL_36;
      }

      if (a2 != 44)
      {
        v12 = 255;
        v11 = 119;
        if (a2 <= 142)
        {
          if (a2 != 10)
          {
            if (a2 == 12)
            {
              sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "Insufficient resources!");
              v12 = 12;
            }

            else if (a2 == 121)
            {
              word_2A13A5CD0 = 0;
              v12 = 121;
              v11 = 123;
              goto LABEL_82;
            }

            goto LABEL_73;
          }

          sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "Target Lost!!");
          v43 = *(a1 + 1504);
          if (sub_297ECD484(a1, &v44, &v43, 0) || !v44)
          {
            goto LABEL_73;
          }

          v39 = sub_297F0A90C(*(a1 + 3088));
          if (v39 > 1)
          {
            v12 = v39;
            goto LABEL_73;
          }

          v40 = *(v44 + 4);
          if (v40 > 0x13 || ((1 << v40) & 0x8E800) == 0 || !*(a1 + 6312))
          {
LABEL_73:
            if (v12 != 121 && *(a1 + 1528) == 1)
            {
              v30 = *(a1 + 6248);
              if (v30)
              {
                if (*(a1 + 2664))
                {
                  v31 = *(a1 + 9792);
                  phOsalNfc_FreeMemory();
                  *(a1 + 2664) = 0;
                  v30 = *(a1 + 6248);
                }

                v32 = *(a1 + 6256);
                *(a1 + 6248) = 0;
                *(a1 + 6256) = 0;
                v30(*(a1 + 9784), v32, v44, a1 + 2600, v12);
              }

              a2 = v12;
              goto LABEL_94;
            }

            if (!v12)
            {
              v11 = 118;
              goto LABEL_84;
            }

            if (v12 == 185)
            {
LABEL_84:
              if (*(a1 + 2664))
              {
                v33 = *(a1 + 9792);
                phOsalNfc_FreeMemory();
                *(a1 + 2664) = 0;
              }

              if (v11 == 123)
              {
                v34 = *(a1 + 9784);
                v35 = v44;
                v36 = &v42;
                v37 = 123;
              }

              else
              {
                if (v12 == 10)
                {
                  if (*(a1 + 6312))
                  {
                    v12 = 152;
                  }

                  else
                  {
                    v12 = 255;
                  }
                }

                v34 = *(a1 + 9784);
                v35 = v44;
                v36 = (a1 + 2600);
                v37 = v11;
              }

              a2 = sub_297E4F450(v34, v37, v12, v35, v36);
              goto LABEL_94;
            }

LABEL_82:
            *(a1 + 2608) = 0;
            goto LABEL_84;
          }
        }

        else
        {
          v22 = (a2 - 143);
          if (v22 > 0x2A)
          {
            goto LABEL_73;
          }

          if (((1 << (a2 + 113)) & 0x7C800000001) != 0)
          {
            if (*(a1 + 6248))
            {
              v43 = *(a1 + 1504);
              v23 = sub_297ECD484(a1, &v44, &v43, 0);
              word_2A13A5CD0 = v23;
              if (v23 || !v44)
              {
                goto LABEL_73;
              }

              *(a1 + 2608) = 0;
            }

            else
            {
              *(a1 + 2600) = *a3;
              *(a1 + 2608) = *(a3 + 8);
              sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "phLibNfc_PrepareTransceiveCb - RF related error received from NFCC ");
            }

            v12 = a2;
            goto LABEL_73;
          }

          if (v22 != 3)
          {
            goto LABEL_73;
          }

          word_2A13A5CD0 = 0;
        }

        v12 = 146;
        goto LABEL_73;
      }
    }

    if (*(a1 + 1530) != 3)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "Target Lost!!");
      if (*(a1 + 6312))
      {
        v12 = 146;
      }

      else
      {
        v12 = 255;
      }

      v11 = 119;
      goto LABEL_73;
    }

    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "A Passive ACK Timeout (PAT) in response to a SECTOR SELECT command packet 2");
    *(a1 + 1530) = 0;
    v11 = 118;
LABEL_36:
    v12 = word_2A13A5CD0;
    word_2A13A5CD0 = 0;
    if (v12)
    {
      goto LABEL_73;
    }

    v43 = *(a1 + 1504);
    v17 = sub_297ECD484(a1, &v44, &v43, 0);
    if (v17)
    {
      v12 = 255;
    }

    else
    {
      v12 = 0;
    }

    if (v17)
    {
      v18 = *a3;
      v19 = *(a3 + 8);
      goto LABEL_42;
    }

    v19 = *(a3 + 8);
    v18 = *a3;
    if (!v19 || !v18)
    {
LABEL_42:
      *(a1 + 2600) = v18;
      *(a1 + 2608) = v19;
      v20 = *(a1 + 2664);
      if (v20 && *v20 == 48)
      {
        goto LABEL_44;
      }

      goto LABEL_73;
    }

    *(a1 + 2608) = v19;
    v26 = *(a1 + 9792);
    v27 = *(a1 + 2600);
    phOsalNfc_MemCopy();
    if (sub_297EE0544(a1, v7) && (!v7 || *(v7 + 20) || *(v7 + 16) != 2 || *(v7 + 96)) || (v28 = *(a1 + 2664)) == 0)
    {
      v12 = 0;
      goto LABEL_73;
    }

    v29 = *v28;
    if (*v28)
    {
LABEL_68:
      if (v29 != 48 || *(a3 + 8) >= 0x10u)
      {
        goto LABEL_115;
      }

LABEL_114:
      v12 = 255;
LABEL_44:
      v21 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 2664) = 0;
      goto LABEL_73;
    }

    v41 = *(v28 + 4);
    if (v41)
    {
      v29 = *v41;
      if (v28[10] != 1 || v29 != 96)
      {
        goto LABEL_68;
      }

      if (*(a3 + 8) < 8u)
      {
        goto LABEL_114;
      }
    }

LABEL_115:
    v12 = 0;
    v11 = 118;
    goto LABEL_44;
  }

  *(a1 + 1524) = 128;
  *(a1 + 1532) = 1;
  v13 = off_2A1A92B10;
  if (*(a1 + 1531) == 1)
  {
    v13 = off_2A1A90C68;
  }

  *(a1 + 2960) = v13;
  *(a1 + 2952) = 0;
  *(a1 + 2954) = 0;
  v14 = *v13;
  if (*v13)
  {
    LOBYTE(v14) = 0;
    v15 = (v13 + 2);
    do
    {
      LOBYTE(v14) = v14 + 1;
      v16 = *v15;
      v15 += 2;
    }

    while (v16);
  }

  *(a1 + 2953) = v14;
  sub_297E5588C(a1, 0, 0);
  if ((a2 - 178) <= 7 && ((1 << (a2 + 78)) & 0xF9) != 0 || a2 == 10)
  {
    word_2A13A5CD0 = a2;
  }

  else
  {
    if (*(a1 + 6312))
    {
      v24 = 0x2A13A5000;
      v25 = 152;
    }

    else
    {
      v24 = 0x2A13A5000uLL;
      v25 = 255;
    }

    *(v24 + 3280) = v25;
  }

LABEL_94:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_PrepareTransceiveCb");
  return a2;
}

uint64_t sub_297EA1F0C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v22 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Initialize");
  if (a3)
  {
    v5 = *a3;
  }

  else
  {
    v5 = 255;
  }

  if (*(a1 + 3224) != 1 || *(a1 + 3276) || *(a1 + 3277))
  {
LABEL_7:
    *(a1 + 3277) = 1;
    v6 = sub_297F04A7C(*(a1 + 3000), &v22, sub_297E5BA84, a1, v5, 0);
    if (v6 == 13)
    {
      v7 = sub_297F052B0(*(a1 + 3000));
      *(a1 + 3088) = v7;
      sub_297F0642C(v7, 5, sub_297EA7040, a1);
      sub_297F0642C(*(a1 + 3088), 9, sub_297EFAF18, a1);
      sub_297F0642C(*(a1 + 3088), 23, sub_297EFAF18, a1);
      sub_297F0642C(*(a1 + 3088), 29, sub_297EFB064, a1);
      sub_297F0642C(*(a1 + 3088), 30, sub_297EFB174, a1);
      sub_297F0642C(*(a1 + 3088), 32, sub_297EFB230, a1);
      sub_297F0642C(*(a1 + 3088), 14, sub_297EFB490, a1);
      sub_297F0642C(*(a1 + 3088), 15, sub_297EFB7B8, a1);
      sub_297F0642C(*(a1 + 3088), 31, sub_297EFB8F0, a1);
      sub_297F0642C(*(a1 + 3088), 33, sub_297EFB9EC, a1);
      sub_297F0642C(*(a1 + 3088), 4, sub_297EFBE00, a1);
      sub_297F0642C(*(a1 + 3088), 20, sub_297E50058, a1);
      sub_297F0642C(*(a1 + 3088), 19, sub_297EF9EA8, a1);
      sub_297F0642C(*(a1 + 3088), 22, sub_297EFB588, a1);
      sub_297F0642C(*(a1 + 3088), 25, sub_297EFB68C, a1);
    }

    goto LABEL_9;
  }

  *(a1 + 3276) = 1;
  v9 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  v10 = *(a1 + 3000);
  v11 = phTmlNfc_IoCtl();
  if (!v11)
  {
    sub_297E96914(1, a1 + 9792, 4u, 3u, "phLibNfc_Initialize: SPMI Reset Client Status =");
    sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phLibNfc_Initialize: SPMI Reset Client Status =");
    v15 = *(a1 + 9792);
    phOsalNfc_Delay();
    goto LABEL_7;
  }

  v6 = v11;
  v12 = a1 + 9792;
  if (v11 == 179)
  {
    sub_297E96914(1, v12, 4u, 3u, "phLibNfc_Initialize: SPMI Reset Client Status =");
    sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phLibNfc_Initialize: SPMI Reset Client Status =");
    v13 = *(a1 + 3232);
    if (v13 == 0xFFFFFFFFFFFFLL || !v13)
    {
      v14 = *(a1 + 9792);
      v13 = phOsalNfc_Timer_Create();
      *(a1 + 3232) = v13;
    }

    if (v13 != 0xFFFFFFFFFFFFLL && v13)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Client reset Nack Timer Created Successfully");
      *(a1 + 3216) = sub_297EA7C10;
      v16 = *(a1 + 9792);
      v17 = *(a1 + 3232);
      if (phOsalNfc_Timer_Start())
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Client reset Nack Timer Start failed");
        v18 = *(a1 + 3232);
        v6 = 255;
        if (v18 && v18 != 0xFFFFFFFFFFFFLL)
        {
          v19 = *(a1 + 9792);
          phOsalNfc_Timer_Stop();
          v20 = *(a1 + 9792);
          v21 = *(a1 + 3232);
          phOsalNfc_Timer_Delete();
          *(a1 + 3232) = 0xFFFFFFFFFFFFLL;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Client reset Nack Timer Started");
        v6 = 13;
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Client reset Nack Timer Create failed");
      v6 = 12;
    }
  }

  else
  {
    sub_297E96914(1, v12, 4u, 3u, "phLibNfc_Initialize: SPMI Reset Client Status =");
    sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phLibNfc_Initialize: SPMI Reset Client Status =");
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Initialize");
  return v6;
}

uint64_t sub_297EA23D4(uint64_t a1, int a2, uint64_t *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_InitializeProcess");
  if (a3)
  {
    v6 = a3[1];
    if (v6)
    {
      LODWORD(v6) = *v6 != 0;
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (a2)
  {
    LODWORD(v6) = 1;
  }

  if (v6)
  {
    v7 = 255;
  }

  else
  {
    v7 = a2;
  }

  v8 = sub_297EA7878(a1, v7, a3);
  *(a1 + 3275) = 0;
  *(a1 + 3277) = 0;
  *(a1 + 3209) = 0;
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_InitializeProcess");
  return v8;
}

uint64_t sub_297EA2494(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  memset(v10, 0, 512);
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_CrcConfig");
  if (a1)
  {
    v2 = *(a1 + 3028);
    v3 = *(a1 + 2984);
    v5 = v2 < 0x32 || v2 - 160 < 0x40;
    if (*(a1 + 2932) && (v3 != 1 || !v5) && (v3 == 1 || *(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1) && *(a1 + 5452) == 1)
    {
      v6 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      DWORD1(v10[0]) |= 0x10000u;
      v11 |= 0x4000u;
      v12 = *(a1 + 5452);
      v7 = sub_297E64020(*(a1 + 3088), v10, sub_297E5BA84, a1);
    }

    else
    {
      sub_297E79734(a1, *(a1 + 2960), 1);
      v7 = 0;
    }

    *(a1 + 2932) = 0;
  }

  else
  {
    v7 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CrcConfig");
  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t sub_297EA2660(uint64_t a1, int a2)
{
  v9 = 8;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_CrcConfigProcess");
  if (a1 && (v4 = *(a1 + 9792), phOsalNfc_SetMemory(), !a2))
  {
    sub_297E5F164(*(a1 + 9784), &v9);
    sub_297F09B18(*(a1 + 3088), *(a1 + 5452));
    if (*(a1 + 5452) == 1 && *(a1 + 6152))
    {
      sub_297F09C20(*(a1 + 3088), 1);
      sub_297F09CBC(*(a1 + 3088), *(a1 + 5452));
    }

    if (v9 == 6 && *(a1 + 5452) < 2u)
    {
      v8 = *(a1 + 5452);
      v7 = *(a1 + 3000);
      v5 = phTmlNfc_IoCtl();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CrcConfigProcess");
  return v5;
}

uint64_t sub_297EA2784(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ReInitialize");
  v2 = 1;
  if (a1)
  {
    *(a1 + 3277) = 1;
    *(a1 + 744) = 0;
    v2 = sub_297F05308(*(a1 + 3088), sub_297E5BA84, a1);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ReInitialize");
  return v2;
}

uint64_t sub_297EA2810(_BYTE *a1, int a2, uint64_t *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ReInitializeProcess");
  if (a1)
  {
    if (a3)
    {
      v6 = a3[1];
      if (v6)
      {
        LODWORD(v6) = *v6 != 0;
      }
    }

    else
    {
      LODWORD(v6) = 0;
    }

    if (a2)
    {
      LODWORD(v6) = 1;
    }

    if (v6)
    {
      v8 = 255;
    }

    else
    {
      v8 = a2;
    }

    v7 = sub_297EA7878(a1, v8, a3);
    a1[3275] = 0;
    a1[3277] = 0;
    a1[3209] = 0;
  }

  else
  {
    v7 = 0;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ReInitializeProcess");
  return v7;
}

uint64_t sub_297EA28D8(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MwFwCompatibilityChk");
  if (a1)
  {
    if (*(a1 + 3112) || (v2 = *(a1 + 3028), (v2 & 0xFD) == 0xFC) || ((v2 & 0xE0u) - 160 <= 0x3F ? (v3 = *(a1 + 2984) == 1) : (v3 = 0), v3 || *(a1 + 2985) == 1 && *(a1 + 3196) == 2 || *(a1 + 2986) == 1 && *(a1 + 3196) == 2 || *(a1 + 2992) == 1 && *(a1 + 3196) == 2))
    {
      v4 = 0;
    }

    else
    {
      v4 = sub_297F05450(*(a1 + 3088), sub_297E5BA84, a1);
    }
  }

  else
  {
    v4 = 49;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MwFwCompatibilityChk");
  return v4;
}

uint64_t sub_297EA29E4(_BYTE *a1, uint64_t a2, unsigned __int16 *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_MwFwCompatibilityChkProcess");
  v6 = 255;
  if (a1 && a3)
  {
    if (a1[2984] == 1)
    {
      v7 = 21;
      goto LABEL_7;
    }

    if (a1[2985] == 1)
    {
      v7 = 47;
      goto LABEL_7;
    }

    if (a1[2986] == 1)
    {
      if (a1[2990] == 1)
      {
        v7 = 44;
      }

      else
      {
        v7 = 44;
        if (a1[2991] != 1)
        {
          if (a1[3136] == 2)
          {
            v7 = 44;
          }

          else
          {
            v7 = 55;
          }
        }
      }

      goto LABEL_7;
    }

    v10 = a1[2993];
    if (__PAIR64__(v10, a1[2992]) == 1)
    {
      v11 = a1[2994];
      if (!a1[2994])
      {
        v7 = 3;
        goto LABEL_7;
      }
    }

    else
    {
      if (v10 == 1)
      {
        v7 = 37;
LABEL_7:
        v8 = __rev16(*a3);
        if (v8 == v7)
        {
          sub_297E4E0B0(1, (a1 + 9792), 4u, 4u, "phLibNfc_MwFwCompatibilityChkProcess : FW and MW are in sync");
          v6 = a2;
        }

        else if (v8 <= v7)
        {
          sub_297E4E0B0(1, (a1 + 9792), 4u, 1u, "phLibNfc_MwFwCompatibilityChkProcess : FW IS TOO OLD");
          v6 = 128;
        }

        else
        {
          sub_297E4E0B0(1, (a1 + 9792), 4u, 1u, "phLibNfc_MwFwCompatibilityChkProcess : FW IS TOO NEW");
          v6 = 129;
        }

        goto LABEL_15;
      }

      v11 = a1[2994];
    }

    if (v11 != 1)
    {
      sub_297E4E0B0(1, (a1 + 9792), 4u, 1u, "phLibNfc_MwFwCompatibilityChkProcess : Invalid platform");
      goto LABEL_15;
    }

    v7 = 8;
    goto LABEL_7;
  }

LABEL_15:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_MwFwCompatibilityChkProcess");
  return v6;
}

uint64_t sub_297EA2BB4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_EnablePropExtn");
  if (a1)
  {
    a2 = sub_297F08A18(*(a1 + 3088), sub_297E5BA84, a1);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_EnablePropExtn");
  return a2;
}

uint64_t sub_297EA2C38(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_EnableExtnProcess");
  if (!a1 || !a3)
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_EnableExtnProcess : Invalid Context or pInfo Received");
LABEL_6:
    a2 = 255;
    goto LABEL_7;
  }

  if (a2)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_EnableExtnProcess : received status as failed");
    *(a1 + 3032) = 0;
    goto LABEL_7;
  }

  a2 = *a3;
  if (!*a3)
  {
    v13 = *(a1 + 3032) | (a3[1] << 24);
    *(a1 + 3032) = v13;
    v14 = v13 | (a3[2] << 16);
    *(a1 + 3032) = v14;
    v15 = v14 | (a3[3] << 8);
    *(a1 + 3032) = v15;
    *(a1 + 3032) = v15 | a3[4];
    if (*(a1 + 3209))
    {
      sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phLibNfc_EnableExtnProcess:Enable proprietary extension successful after no of retry");
      a2 = 0;
      *(a1 + 3209) = 0;
    }

    else
    {
      a2 = 0;
    }

    goto LABEL_7;
  }

  if (a2 != 44)
  {
    *(a1 + 3209) = 0;
    *(a1 + 3032) = 0;
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_EnableExtnProcess: failed");
    goto LABEL_7;
  }

  v7 = *(a1 + 3088);
  v8 = *(a1 + 3209);
  sub_297E50EBC(1, a1 + 9792, 4u, 2u, "phLibNfc_EnableExtnProcess:Enable proprietary extension request failed, retry count, bBrRetryCnt");
  if (*(a1 + 3209) > 2u)
  {
    sub_297E50EBC(1, a1 + 9792, 4u, 1u, "phLibNfc_EnableExtnProcess:Enable Prop Extension retry reached max count, bBrRetryCnt");
    *(a1 + 3209) = 0;
    *(a1 + 3032) = 0;
    goto LABEL_6;
  }

  v9 = *(a1 + 3000);
  phTmlNfc_ReadAbort();
  v10 = *(a1 + 3000);
  phTmlNfc_FlushTxRxBuffers();
  if (v7)
  {
    v11 = sub_297E4EE00(v7 + 936, 0, 3);
    a2 = 0;
    if (v11 != 13)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_EnableExtnProcess: Nci Read request failed");
      v12 = *(a1 + 3209);
      sub_297E50EBC(1, a1 + 9792, 4u, 1u, "pLibCtx->tPlatformInfo.bBrRetryCnt");
      *(a1 + 3209) = 0;
      a2 = 255;
    }

    sub_297E79810(a1, *(a1 + 2960), 1u);
    ++*(a1 + 3209);
  }

  else
  {
    a2 = 44;
  }

LABEL_7:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_EnableExtnProcess");
  return a2;
}

uint64_t sub_297EA2E9C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_DisableStandbyMode");
  if (a1)
  {
    *(a1 + 1) = 0;
    if (*a1)
    {
      v2 = sub_297F05B7C(*(a1 + 3088), 0, sub_297E5BA84, a1);
    }

    else
    {
      v2 = 0;
      *(a1 + 2) = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_DisableStandbyMode");
  return v2;
}

uint64_t sub_297EA2F44(_BYTE *a1, int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetStandbyModeProcess");
  v4 = 255;
  if (a1 && !a2)
  {
    v4 = 0;
    v5 = a1[1];
    *a1 = v5;
    a1[1] = v5 == 0;
    a1[2] = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetStandbyModeProcess");
  return v4;
}

uint64_t sub_297EA2FD8(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetEepromParams");
  if (a1)
  {
    v2 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    *(a1 + 3612) |= 0x1000u;
    *(a1 + 4188) |= 0x80u;
    v3 = sub_297E60AC0(*(a1 + 3088), a1 + 3608, sub_297E5BA84, a1);
  }

  else
  {
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetEepromParams");
  return v3;
}

uint64_t sub_297EA3090(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetEepromParamsProc");
  if (a1)
  {
    if (a2 || !a3)
    {
      v6 = "Invalid input parameter/Get Config Failed";
      goto LABEL_8;
    }

    if ((*(a3 + 5) & 0x10) == 0)
    {
      v6 = "Get EEPROM params failed";
LABEL_8:
      v8 = a1 + 9792;
LABEL_9:
      sub_297E4E0B0(1, v8, 4u, 4u, v6);
      v7 = 255;
      goto LABEL_10;
    }

    if ((*(a3 + 580) & 0x80) == 0)
    {
      v6 = "EEPROM params read failed";
      v8 = a1 + 9792;
      goto LABEL_9;
    }

    v10 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_LogEepromUserData");
    v11 = *(a1 + 3600);
    sub_297E50DB0(2, a1, 4u, 4u, "EEPROM User param - wCurrMwVer");
    v12 = *(a1 + 3602);
    sub_297E50DB0(2, a1, 4u, 4u, "EEPROM User param - wCurrFwVer");
    v13 = *(a1 + 3604);
    sub_297E50DB0(2, a1, 4u, 4u, "EEPROM User param - bConfig");
    sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_LogEepromUserData");
    v14 = *(a1 + 3604);
    if (v14)
    {
      if (v14 == -1010588251)
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Skipping set config");
        sub_297E79734(a1, off_2A1A90EA8, 5);
      }

      else
      {
        if (v14 == -1515863101)
        {
          goto LABEL_16;
        }

        sub_297E50EBC(1, a1 + 9792, 4u, 2u, "Unexpected MW Log Area Value still forcing MW config =");
      }

      v7 = 0;
      goto LABEL_10;
    }

LABEL_16:
    sub_297E50DB0(1, a1 + 9792, 4u, 4u, "Firmware updated, continue with NFCC configurations MW Log Value=");
    v7 = 0;
    *(a1 + 3203) = 1;
    goto LABEL_10;
  }

  sub_297E4E0B0(2, 0, 4u, 4u, "Invalid input parameter - Get EEPROM params failed");
  v7 = 1;
LABEL_10:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetEepromParamsProc");
  return v7;
}

uint64_t sub_297EA32DC(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  bzero(v12, 0x6E8uLL);
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_InitSetConfig");
  v2 = *(a1 + 2985);
  if (v2 == 1)
  {
    v25 = 2;
  }

  else
  {
    if (*(a1 + 2986) != 1 && *(a1 + 2992) != 1)
    {
      v25 = 2;
      v27 = -18;
      v13 = 4096;
      v20 = 114688;
      if (*(a1 + 2984) != 1)
      {
        v3 = 0;
        v4 = 0;
        v26 = 4;
        goto LABEL_8;
      }

LABEL_7:
      v3 = 0;
      v26 = 10;
      v4 = 1;
LABEL_8:
      v5 = 4096;
      goto LABEL_10;
    }

    v25 = 2;
  }

  v20 = 0x8000;
  if (*(a1 + 2984) == 1)
  {
    goto LABEL_7;
  }

  v4 = 0;
  v20 = 0;
  v5 = v13;
  v3 = v18;
LABEL_10:
  v6 = v5 | 0x400;
  v19 = 257;
  v13 = v5 | 0x400;
  v18 = v3 | 0xC;
  v7 = *(a1 + 3204);
  if (v7 == 1)
  {
    v6 = v5 & 0xFFFFFBFF;
    v13 = v5 & 0xFFFFFBFF;
    v18 = v3 & 0xF3;
  }

  if (v2 != 1 && *(a1 + 2986) != 1 && *(a1 + 2992) != 1)
  {
    v13 = v6 | 0x1000;
    v20 |= 4u;
    v23 = 0x100000002;
    if (*(a1 + 2986) != 1 && *(a1 + 2992) != 1)
    {
      v13 |= 0x1000u;
      v20 |= 2u;
      v21 = 1;
      if (*(a1 + 2986) != 1 && *(a1 + 2992) != 1)
      {
        v13 |= 0x1000u;
        v20 |= 8u;
        if (v4)
        {
          v22 = 12;
        }
      }
    }
  }

  if (!v7)
  {
    v28 |= 0x10u;
    v29 = 0;
    v14 |= 1u;
    v15 = 1;
    v13 |= 0x8110u;
    v16 |= 8u;
    v17 = 0;
  }

  if (v2 != 1 && *(a1 + 2986) != 1)
  {
    if (*(a1 + 2992) == 1)
    {
      v9 = 0;
    }

    else
    {
      v13 |= 0x1000u;
      v20 |= 0x40u;
      v24 = 0x100000000;
      if (*(a1 + 2986) == 1)
      {
        goto LABEL_25;
      }

      v9 = *(a1 + 2992) != 1;
    }

    if (v7 != 1 || v9)
    {
      goto LABEL_26;
    }

LABEL_35:
    v8 = 0;
    goto LABEL_36;
  }

LABEL_25:
  if (v7 == 1)
  {
    goto LABEL_35;
  }

LABEL_26:
  v8 = sub_297E64020(*(a1 + 3088), v12, sub_297E5BA84, a1);
LABEL_36:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_InitSetConfig");
  v10 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t sub_297EA361C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_InitSetConfigProcess");
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_InitSetConfigProcess");
  return 0;
}

uint64_t sub_297EA3678(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetEepromParams");
  if (a1)
  {
    v2 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    *(a1 + 3612) |= 0x1000u;
    *(a1 + 4188) |= 0x80u;
    *(a1 + 3602) = *(a1 + 3028);
    *(a1 + 3600) = 1040;
    *(a1 + 3604) = -1010588251;
    v3 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    v4 = *(a1 + 9792);
    phOsalNfc_MemCopy();
    v5 = sub_297E64020(*(a1 + 3088), a1 + 3608, sub_297E5BA84, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "Invalid input parameters");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetEepromParams");
  return v5;
}

uint64_t sub_297EA379C(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v30 = *MEMORY[0x29EDCA608];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  memset(v7, 0, sizeof(v7));
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetLsntModeRtng");
  v4 = *(a1 + 3204);
  if (v2 || (v4 | 2) != 2)
  {
    if (v4 == 1)
    {
      v2 = 0;
    }

    else
    {
      v2 = v2;
    }
  }

  else
  {
    LODWORD(v7[0]) = 1;
    BYTE4(v7[0]) = 0;
    BYTE8(v7[0]) = 1;
    HIDWORD(v7[0]) = 5;
    LODWORD(v8) = 1;
    BYTE4(v8) = -64;
    BYTE8(v8) = 1;
    HIDWORD(v8) = 4;
    LODWORD(v10) = 1;
    BYTE4(v10) = 2;
    BYTE8(v10) = 1;
    HIDWORD(v10) = 4;
    LODWORD(v12) = 1;
    BYTE4(v12) = 0;
    BYTE8(v12) = 1;
    HIDWORD(v12) = 4;
    v2 = sub_297F06AE8(*(a1 + 3088), 4u, v7);
    if (!v2)
    {
      v2 = sub_297F030D0(*(a1 + 3088), sub_297E5BA84, (a1 + 384), a1);
      if (v2 != 13)
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_SetLsntModeRtng:Set Routing Config Sequence failed!");
      }
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetLsntModeRtng");
  v5 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t sub_297EA3944(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetLstnModeRtngProcess");
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetLstnModeRtngProcess");
  return a2;
}

uint64_t sub_297EA39AC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_InitSetMappingProcess");
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_InitSetMappingProcess");
  return 0;
}

uint64_t sub_297EA3A08(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetNfceeIntfCfg");
  if (a1)
  {
    v2 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    v3 = *(a1 + 2994) == 0;
    v4 = *(a1 + 4740);
    *(a1 + 3612) |= 0x2000u;
    *(a1 + 4740) = v4 | v3 | 4;
    v5 = sub_297E60AC0(*(a1 + 3088), a1 + 3608, sub_297E5BA84, a1);
  }

  else
  {
    v5 = 0;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetNfceeIntfCfg");
  return v5;
}

uint64_t sub_297EA3AD4(uint64_t a1, int a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetNfceeIntfCfgProc");
  v6 = 0;
  if (a1 && a3)
  {
    *(a1 + 366) = 515;
    if (*(a1 + 2994) == 1)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    *(a1 + 365) = v7;
    if (!a2 && (a3[5] & 0x20) != 0)
    {
      if (a3[1132])
      {
        v9 = a3[1170];
        sub_297E50DB0(1, a1 + 9792, 4u, 4u, "0xA0EC value is ");
        if (!a3[1170])
        {
          *(a1 + 365) = 2;
        }
      }

      if ((a3[1132] & 4) != 0)
      {
        v10 = a3[1172];
        sub_297E50DB0(1, a1 + 9792, 4u, 4u, "0xA0ED value is ");
        if (!a3[1172])
        {
          *(a1 + 366) = 2;
        }
      }

      if ((a3[1132] & 2) != 0 && (v11 = a3[1171], sub_297E50DB0(1, a1 + 9792, 4u, 4u, "0xA0D4 value is "), !a3[1171]))
      {
        v6 = 0;
        *(a1 + 367) = 2;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 255;
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetNfceeIntfCfgProc");
  return v6;
}

uint64_t sub_297EA3C3C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_EnableNfceeDisc");
  if (!a1 || (*(a1 + 744) = 1, *(a1 + 552) = 0, *(a1 + 365) == 2) && *(a1 + 366) == 2 && *(a1 + 367) == 2 || *(a1 + 504))
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_297F05580(*(a1 + 3088), sub_297E5BA84, a1);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_EnableNfceeDisc");
  return v2;
}

uint64_t sub_297EA3CFC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ProcessNfceeDiscRsp");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Failed to start NFCEE Discovery (phLibNfc_ProcessNfceeDiscRsp)");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "NFCEE Discovery successfully started");
      *(a1 + 504) = 1;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "Failed to start NFCEE Discovery (phLibNfc_ProcessNfceeDiscRsp)");
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ProcessNfceeDiscRsp");
  return a2;
}

uint64_t sub_297EA3DD8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v54 = 0;
  v55 = 0;
  v53 = 8;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_InitializeComplete");
  if ((a2 - 128) >= 2 && a2)
  {
    if ((a2 & 0xFFFE) == 0x88)
    {
      if (!*(v3 + 3208) || sub_297E55EF8(v3, *(v3 + 2960)) != 31)
      {
        sub_297E67F6C(*(v3 + 3000), &v55);
        goto LABEL_73;
      }

      sub_297E4E0B0(1, v3 + 9792, 4u, 2u, "Libnfc Recovery on going, skip Init abort");
      *(v3 + 9782) = a2;
      goto LABEL_129;
    }

    if (a2 > 142)
    {
      if ((a2 - 305) < 3 || a2 == 143)
      {
        goto LABEL_17;
      }

      if (a2 == 179)
      {
        a2 = 180;
        goto LABEL_17;
      }
    }

    else if (a2 == 1 || a2 == 44 || a2 == 135)
    {
      goto LABEL_17;
    }

    a2 = 255;
    goto LABEL_17;
  }

  if (v3 && !a2)
  {
    *(v3 + 533) = 0;
    v4 = sub_297F06170(*(v3 + 3088), 1, sub_297EE7074, v3);
    *(v3 + 362) = 1;
    *(v3 + 416) = 0x100000005;
    *(v3 + 408) = 0;
    if (v4)
    {
      goto LABEL_15;
    }

    sub_297E4E0B0(1, v3 + 9792, 4u, 4u, "Registering for RF Deactivate Notification..");
    v4 = sub_297F06170(*(v3 + 3088), 3, sub_297E9C404, v3);
    if (v4)
    {
      goto LABEL_15;
    }

    v4 = sub_297F06170(*(v3 + 3088), 2, sub_297E52EA4, v3);
    if (v4 || (v4 = sub_297F06170(*(v3 + 3088), 11, sub_297EFBD18, v3), v4) || (v4 = sub_297F06170(*(v3 + 3088), 10, sub_297EEB01C, v3), v4) || (v4 = sub_297F06170(*(v3 + 3088), 20, sub_297E50058, v3), v4) || (v4 = sub_297F06170(*(v3 + 3088), 31, sub_297EFB8F0, v3), v4) || (v4 = sub_297F06170(*(v3 + 3088), 33, sub_297EFB9EC, v3), v4) || (v4 = sub_297F06170(*(v3 + 3088), 37, sub_297EFBB00, v3), v4) || (v4 = sub_297F06170(*(v3 + 3088), 7, sub_297EF8D5C, v3), v4))
    {
LABEL_15:
      a2 = v4;
      goto LABEL_18;
    }

    v38 = sub_297F06170(*(v3 + 3088), 8, sub_297EFA880, v3);
    if (v38)
    {
      a2 = v38;
      v39 = "Failed to Register phLibNfc_PropRdrNtfHandler";
LABEL_141:
      sub_297E4E0B0(1, v3 + 9792, 4u, 1u, v39);
      goto LABEL_18;
    }

    v40 = sub_297F06170(*(v3 + 3088), 24, sub_297EFA7B8, v3);
    if (v40)
    {
      a2 = v40;
      v39 = "Failed to Register phLibNfc_LongVasCwDetNtfHandler";
      goto LABEL_141;
    }

    v41 = sub_297F06170(*(v3 + 3088), 13, sub_297EFBC38, v3);
    if (v41)
    {
      a2 = v41;
      v39 = "Failed to Register phLibNfc_RssiStatsHandler";
      goto LABEL_141;
    }

    v42 = sub_297F06170(*(v3 + 3088), 16, sub_297EFD81C, v3);
    if (v42)
    {
      a2 = v42;
      v39 = "Failed to Register phLibNfc_PropTagRemDetNtfHandler";
      goto LABEL_141;
    }

    v43 = sub_297F06170(*(v3 + 3088), 17, sub_297EFD9A4, v3);
    if (v43 || (v43 = sub_297F06170(*(v3 + 3088), 27, sub_297EFDA70, v3), v43))
    {
      a2 = v43;
      v39 = "Failed to Register phLibNfc_PropLpcdDebugNtfHandler";
      goto LABEL_141;
    }

    v44 = sub_297F06170(*(v3 + 3088), 34, sub_297EFB300, v3);
    if (v44)
    {
      a2 = v44;
      v39 = "Failed to Register phLibNfc_TotalPollDurationNtfHandler";
      goto LABEL_141;
    }

    v45 = sub_297F06170(*(v3 + 3088), 35, sub_297EFB3CC, v3);
    if (v45)
    {
      a2 = v45;
      v39 = "Failed to Register phLibNfc_EmvcoRfCollisionDetNtfHandler";
      goto LABEL_141;
    }

    v46 = sub_297F06170(*(v3 + 3088), 36, sub_297EEA1A8, v3);
    if (v46)
    {
      a2 = v46;
      v39 = "Failed to Register phLibNfc_HciResponseTimerRestartRequestNtfHandler";
      goto LABEL_141;
    }

    v47 = sub_297F06170(*(v3 + 3088), 18, sub_297EFDF28, v3);
    if (v47)
    {
      a2 = v47;
      v39 = "Failed to Register phLibNfc_PropChipScopeLoggingNtfHandler";
      goto LABEL_141;
    }

    v48 = sub_297F06170(*(v3 + 3088), 26, sub_297EFE01C, v3);
    if (v48)
    {
      a2 = v48;
      v39 = "Failed to Register phLibNfc_PropSmbLoggingNtfHandler";
      goto LABEL_141;
    }

    v49 = sub_297F06170(*(v3 + 3088), 38, sub_297EFCAB8, v3);
    if (v49)
    {
      a2 = v49;
      v39 = "Failed to Register phLibNfc_PropMfwRawCtrlMsgNtfHandler";
      goto LABEL_141;
    }

    v50 = sub_297F06170(*(v3 + 3088), 19, sub_297EF9EA8, v3);
    if (v50)
    {
      a2 = v50;
      v39 = "Failed to Register phLibNfc_PropMultiTagStatNtfHandler";
      goto LABEL_141;
    }

    sub_297E4E0B0(1, v3 + 9792, 4u, 4u, "Registering for RF interface error Notification..");
    v51 = sub_297F06170(*(v3 + 3088), 21, sub_297E9CA38, v3);
    if (v51)
    {
      a2 = v51;
      v39 = "Failed to Register phLibNfc_RfIntfErrNtf_Resp_Cb";
      goto LABEL_141;
    }

    sub_297E4E0B0(1, v3 + 9792, 4u, 4u, "Registering for relay attack detection Notification..");
    v52 = sub_297F06170(*(v3 + 3088), 28, sub_297EFDB34, v3);
    if (v52)
    {
      a2 = v52;
      v39 = "Failed to Register phLibNfc_RelaydetectionNtfHandler";
      goto LABEL_141;
    }

LABEL_51:
    v18 = *(v3 + 9792);
    v19 = phOsalNfc_Timer_Create();
    *(v3 + 1496) = v19;
    if (v19 != 0xFFFFFFFFFFFFLL && v19)
    {
      a2 = 0;
    }

    else
    {
      sub_297E4E0B0(1, v3 + 9792, 4u, 4u, "Timer Create Failed for pLibContext->tConnectCtx.dwConnectTimerId");
      a2 = 12;
    }

    if (*(v3 + 3264))
    {
      *(v3 + 3264) = 0;
      *(v3 + 365) = 0;
      *(v3 + 367) = 0;
    }

    else
    {
      *(v3 + 762) = 0;
      sub_297EEDF64(v3);
      if (*(v3 + 365) == 2 && *(v3 + 366) == 2 && *(v3 + 367) == 2)
      {
        sub_297E4E0B0(1, v3 + 9792, 4u, 4u, "Init Comp- Static feature config");
        a2 = sub_297EA9C00(v3);
        if (a2 != 13)
        {
          sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "phLibNfc_InitializeComplete: Static feature config sequence failed");
LABEL_127:
          v24 = v3;
          v25 = 255;
          goto LABEL_128;
        }

        sub_297E4E0B0(1, v3 + 9792, 4u, 4u, "phLibNfc_InitializeComplete: Static feature config sequence started");
      }
    }

    v26 = 0;
    v27 = 0;
    do
    {
      v28 = *(&unk_2A18BDDC0 + 14 * v27 + 2);
      if (v26)
      {
        break;
      }

      v26 = 1;
      v27 = 1;
    }

    while (v28 != v3);
    if (v28 == v3)
    {
      if (*(v3 + 3200) == 1)
      {
        if (*(v3 + 3203) != 1 && *(v3 + 6568))
        {
          sub_297E54734(1, v3 + 9792, 4u, 4u, "phLibNfc_InitializeComplete :pGenericNtfCb[PLLUnlock]");
          (*(v3 + 6568))(*(v3 + 9784), *(v3 + 6576), 70, 0);
        }

        *(v3 + 3200) = 0;
      }

      if (*(v3 + 3201) == 1)
      {
        if (*(v3 + 3203) != 1 && *(v3 + 6568))
        {
          if (*(v3 + 2992) == 1)
          {
            sub_297E54734(1, v3 + 9792, 4u, 4u, "phLibNfc_InitializeComplete :pGenericNtfCb[PLLLostlock]");
            (*(v3 + 6568))(*(v3 + 9784), *(v3 + 6576), 77, 0);
          }

          else
          {
            sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "Unknown ntf is received, and dropped ");
          }
        }

        *(v3 + 3201) = 0;
      }

      if (*(v3 + 3202) == 1)
      {
        if (*(v3 + 3203) != 1 && *(v3 + 6568))
        {
          sub_297E54734(1, v3 + 9792, 4u, 4u, "phLibNfc_InitializeComplete :pGenericNtfCb[XTAL Start Error]");
          (*(v3 + 6568))(*(v3 + 9784), *(v3 + 6576), 90, 0);
        }

        *(v3 + 3202) = 0;
      }

      *(v3 + 3203) = 0;
    }

    goto LABEL_129;
  }

  if (!a2)
  {
    if (!v3)
    {
      a2 = 0;
      goto LABEL_129;
    }

    goto LABEL_51;
  }

LABEL_17:
  if (!v3)
  {
    goto LABEL_129;
  }

LABEL_18:
  if (a2 != 44 || *(v3 + 3275) > 3u)
  {
    sub_297E67F6C(*(v3 + 3000), &v55);
    if (a2 != 44)
    {
      goto LABEL_73;
    }

    v6 = (v3 + 3000);
LABEL_32:
    sub_297EA7418(v3);
    v13 = *(v3 + 3000);
    if (*(v3 + 3224) == 1)
    {
      v12 = phTmlNfc_IoCtl();
      if (v12)
      {
        goto LABEL_48;
      }

      v12 = sub_297EA76A4(*(v3 + 9792), *(v3 + 3000));
      if (v12 == 179)
      {
        if (!*(v3 + 6568))
        {
LABEL_126:
          sub_297E7EB8C(*(v3 + 3000));
          a2 = 255;
          goto LABEL_127;
        }

        v14 = *(v3 + 3232);
        if (v14 == 0xFFFFFFFFFFFFLL || !v14)
        {
          v15 = *(v3 + 9792);
          v14 = phOsalNfc_Timer_Create();
          *(v3 + 3232) = v14;
        }

        if (v14 != 0xFFFFFFFFFFFFLL && v14)
        {
          *(v3 + 3216) = sub_297EA9948;
          v32 = *(v3 + 9792);
          if (!phOsalNfc_Timer_Start())
          {
            sub_297E4E0B0(1, v3 + 9792, 4u, 4u, "Client reset Nack Timer Started");
            (*(v3 + 6568))(*(v3 + 9784), *(v3 + 6576), 304, 0);
            goto LABEL_49;
          }

          sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "Client reset Nack Timer Start failed");
          v33 = *(v3 + 3232);
          if (v33 && v33 != 0xFFFFFFFFFFFFLL)
          {
            v34 = *(v3 + 9792);
            phOsalNfc_Timer_Stop();
            v35 = *(v3 + 9792);
            v36 = *(v3 + 3232);
            phOsalNfc_Timer_Delete();
            *(v3 + 3232) = 0xFFFFFFFFFFFFLL;
          }

          goto LABEL_126;
        }

        v16 = "Client reset Nack Timer Create failed";
        v17 = v3 + 9792;
LABEL_125:
        sub_297E4E0B0(1, v17, 4u, 1u, v16);
        goto LABEL_126;
      }
    }

    else
    {
      v12 = phTmlNfc_IoCtl();
    }

    if (v12)
    {
      goto LABEL_48;
    }

    sub_297E5F164(*v6, &v53);
    sub_297ED0A64(*v6, v53);
    sub_297E67F6C(*v6, &v55);
    sub_297E5D114(*v6, &v54);
    if (v55 && v54)
    {
      if (sub_297F0E83C(*(v55 + 48)) == 13)
      {
        v20 = v54;
        *(v54 + 91) = 1;
        *(v20 + 88) = 0;
        *(v3 + 2960) = off_2A1A92CC0;
        *(v3 + 2952) = 0;
        *(v3 + 2954) = 0;
        v21 = off_2A1A92CC0[0];
        if (off_2A1A92CC0[0])
        {
          v21 = 0;
          v22 = &qword_2A1A92CD0;
          do
          {
            ++v21;
            v23 = *v22;
            v22 += 2;
          }

          while (v23);
        }

        goto LABEL_66;
      }

      v16 = "phLibNfc_InitializeComplete : Initial Download TML read request failed!!";
    }

    else
    {
      v16 = "phLibNfc_InitializeComplete : Retrieval of download context/ioctl context failed!!";
    }

LABEL_124:
    v17 = v3 + 9792;
    goto LABEL_125;
  }

  v5 = *(v3 + 3277);
  v6 = (v3 + 3000);
  sub_297E67F6C(*(v3 + 3000), &v55);
  if (v5 != 1)
  {
    goto LABEL_32;
  }

  sub_297E5D114(*(v3 + 3000), &v54);
  ++*(v3 + 3275);
  *(v3 + 3278) = 0;
  *(v3 + 2960) = off_2A1A90EA8;
  *(v3 + 2952) = 0;
  *(v3 + 2954) = 0;
  v7 = off_2A1A90EA8[0];
  if (off_2A1A90EA8[0])
  {
    v7 = 0;
    v8 = off_2A1A90EB8;
    do
    {
      ++v7;
      v9 = *v8;
      v8 += 2;
    }

    while (v9);
  }

  *(v3 + 2953) = v7;
  v10 = sub_297E5588C(v3, 0, v3 + 3278);
  a2 = v10;
  if (v10 != 13)
  {
    if (v10 == 179)
    {
      if (!*(v3 + 3275))
      {
        a2 = 179;
        goto LABEL_129;
      }

      sub_297EA7418(v3);
      v11 = *(v3 + 3000);
      if (*(v3 + 3224) == 1)
      {
        v12 = phTmlNfc_IoCtl();
        if (v12)
        {
          goto LABEL_48;
        }

        v12 = sub_297EA76A4(*(v3 + 9792), *(v3 + 3000));
      }

      else
      {
        v12 = phTmlNfc_IoCtl();
      }

      if (v12)
      {
LABEL_48:
        if (v12 == 13)
        {
LABEL_49:
          a2 = 13;
          goto LABEL_129;
        }

        goto LABEL_126;
      }

      sub_297E5F164(*v6, &v53);
      sub_297ED0A64(*v6, v53);
      sub_297E5D114(*v6, &v54);
      sub_297E67F6C(*v6, &v55);
      v16 = "phLibNfc_InitializeComplete : Retrieve download/ioctl context failed!!";
      if (v55 && v54)
      {
        if (sub_297F0E83C(*(v55 + 48)) == 13)
        {
          v29 = v54;
          *(v54 + 91) = 1;
          *(v29 + 88) = 0;
          *(v3 + 2960) = off_2A1A92CC0;
          *(v3 + 2952) = 0;
          *(v3 + 2954) = 0;
          v21 = off_2A1A92CC0[0];
          if (off_2A1A92CC0[0])
          {
            v21 = 0;
            v30 = &qword_2A1A92CD0;
            do
            {
              ++v21;
              v31 = *v30;
              v30 += 2;
            }

            while (v31);
          }

LABEL_66:
          *(v3 + 2953) = v21;
          v12 = sub_297E5588C(v3, 0, 0);
          goto LABEL_48;
        }

        v16 = "phLibNfc_InitializeComplete : Initial Download TML read request failed!!";
      }

      goto LABEL_124;
    }

    sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "phLibNfc_InitializeComplete: HW Workaround - Retry failed");
LABEL_73:
    v24 = v3;
    v25 = a2;
LABEL_128:
    sub_297EA93C8(v24, v25);
    v3 = 0;
  }

LABEL_129:
  sub_297E4DFAC(2, v3, 4u, 5u, "phLibNfc_InitializeComplete");
  return a2;
}

uint64_t sub_297EA4AF4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ReInitDisableNfceeDisc");
  if (a1 && *(a1 + 504) == 1)
  {
    *(a1 + 552) = 0;
    *(a1 + 554) = 0;
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_ReInitDisableNfceeDisc: Stopping NFCEE Discovery");
    v2 = sub_297F05720(*(a1 + 3088), sub_297E5BA84, a1);
  }

  else
  {
    v2 = 0;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ReInitDisableNfceeDisc");
  return v2;
}

uint64_t sub_297EA4BB0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ProcessNfceeStopDisc");
  if (a1)
  {
    if (!a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "NFCEE Discovery successfully stopped");
      *(a1 + 504) = 0;
      goto LABEL_7;
    }

    v4 = "Failed to stop NFCEE Discovery (phLibNfc_ProcessNfceeStopDisc)";
    v5 = a1 + 9792;
    v6 = 1;
  }

  else
  {
    v4 = "Failed to start NFCEE Discovery (phLibNfc_ProcessNfceeStopDisc)";
    v6 = 2;
    v5 = 0;
  }

  sub_297E4E0B0(v6, v5, 4u, 1u, v4);
LABEL_7:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ProcessNfceeStopDisc");
  return a2;
}

uint64_t sub_297EA4C70(uint64_t a1, int a2)
{
  v3 = a1;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ReInitializeComplete");
  if (a2)
  {
    v4 = 255;
  }

  else
  {
    v4 = 0;
  }

  if (!v3 || a2)
  {
    if (!v3 || a2 != 44 || (v7 = *(v3 + 3275), v7 > 3) || *(v3 + 3277) != 1 || *(v3 + 2932) != 1)
    {
      v5 = v3;
      v6 = 137;
      goto LABEL_22;
    }

    *(v3 + 3275) = v7 + 1;
    *(v3 + 2960) = off_2A1A90DB8;
    *(v3 + 2952) = 0;
    *(v3 + 2954) = 0;
    v8 = off_2A1A90DB8[0];
    if (off_2A1A90DB8[0])
    {
      v8 = 0;
      v9 = off_2A1A90DC8;
      do
      {
        ++v8;
        v10 = *v9;
        v9 += 2;
      }

      while (v10);
    }

    *(v3 + 2953) = v8;
    v4 = sub_297E5588C(v3, 0, 0);
    if (v4 != 13)
    {
      sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "gphLibNfc_ReInitSequence: Retry failed");
      sub_297E8EACC(v3, 255);
      v5 = v3;
      v6 = v4;
      goto LABEL_22;
    }
  }

  else
  {
    *(v3 + 362) = 1;
    *(v3 + 416) = 0x100000005;
    *(v3 + 408) = 0;
    *(v3 + 533) = 0;
    *(v3 + 762) = 0;
    sub_297EEDF64(v3);
    if (*(v3 + 365) == 2 && *(v3 + 366) == 2 && *(v3 + 367) == 2)
    {
      sub_297E4E0B0(1, v3 + 9792, 4u, 4u, "Re- Init Comp- Static feature config");
      v4 = sub_297EA9C00(v3);
      if (v4 != 13)
      {
        sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "phLibNfc_ReInitializeComplete: Static feature config sequence failed");
        v5 = v3;
        v6 = 255;
LABEL_22:
        sub_297EA93C8(v5, v6);
        v3 = 0;
      }
    }
  }

  sub_297E4DFAC(2, v3, 4u, 5u, "phLibNfc_ReInitializeComplete");
  return v4;
}

uint64_t sub_297EA4E80(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetAssertInfo");
  if (a1)
  {
    v2 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    BYTE8(v7[0]) = 39;
    *&v7[0] = 0xA01CA01BA01AA004;
    v3 = sub_297F067C4(*(a1 + 3088), v7, 9, sub_297E5BA84, a1);
    if (v3 == 13)
    {
      v4 = *(a1 + 9792);
      phOsalNfc_SetMemory();
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetAssertInfo: Invalid Status");
    }
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetAssertInfo");
  v5 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t sub_297EA5010(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v20 = 0;
  v21 = 0;
  memset(v22, 0, sizeof(v22));
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetAssertInfoProc");
  if (!a1 || !a3)
  {
    v6 = "phLibNfc_GetAssertInfoProc:Context is Null";
    v8 = 2;
    v7 = a1;
    goto LABEL_6;
  }

  if (a2)
  {
    v6 = "phLibNfc_GetAssertInfoProc: Status Failed!";
    v7 = a1 + 9792;
    v8 = 1;
LABEL_6:
    sub_297E4E0B0(v8, v7, 4u, 1u, v6);
    v9 = 255;
    goto LABEL_7;
  }

  v9 = sub_297EFCF68(a1, a3, &v21 + 1, &v21, &v20 + 1, &v20);
  if (!v9)
  {
    if (HIDWORD(v21))
    {
      v12 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      v13 = *(a1 + 112);
      sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetAssertInfoProc:Assert Register Program Counter");
    }

    if (v21)
    {
      *(a1 + 2986);
      v14 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      v15 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      sub_297E8DC98(a1, (a1 + 116), v22);
    }

    if (HIDWORD(v20))
    {
      if (*(a1 + 2986) != 1)
      {
        *(a1 + 2994);
      }

      v16 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      v17 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      sub_297E8E560(a1, (a1 + 256), v22);
    }

    if (v20)
    {
      v18 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      v19 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      sub_297E8E29C(*(a1 + 9792), (a1 + 212), v22);
    }

    v9 = 0;
  }

LABEL_7:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetAssertInfoProc");
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t sub_297EA527C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_RecoverySeqComplete");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_RecoverySeqComplete: LibNfc Recovery Failed");
    a2 = 255;
  }

  if (a1)
  {
    v4 = *(a1 + 9782);
    if ((v4 & 0xFFFE) == 0x88)
    {
      *(a1 + 9782) = 0;
      a2 = v4;
    }

    v5 = *(a1 + 6168);
    v6 = *(a1 + 6176);
    *(a1 + 6168) = 0u;
    if (v5)
    {
      v5(*(a1 + 9784), v6, a2);
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(&unk_2A18BDDC0 + 14 * v8 + 2);
      if (v7)
      {
        break;
      }

      v7 = 1;
      v8 = 1;
    }

    while (v9 != a1);
    if (v9 == a1)
    {
      if (*(a1 + 320))
      {
        v10 = *(a1 + 9792);
        phOsalNfc_FreeMemory();
        *(a1 + 320) = 0;
        *(a1 + 328) = 0;
      }

      if (*(a1 + 336))
      {
        v11 = *(a1 + 9792);
        phOsalNfc_FreeMemory();
        *(a1 + 336) = 0;
        *(a1 + 344) = 0;
      }

      if (*(a1 + 288))
      {
        v12 = *(a1 + 9792);
        phOsalNfc_FreeMemory();
        *(a1 + 288) = 0;
        *(a1 + 296) = 0;
      }

      if (*(a1 + 304))
      {
        v13 = *(a1 + 9792);
        phOsalNfc_FreeMemory();
        *(a1 + 304) = 0;
        *(a1 + 312) = 0;
      }
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RecoverySeqComplete");
  return a2;
}

uint64_t sub_297EA53DC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetStandbyMode");
  if (a1)
  {
    if (*(a1 + 2931) == 1 && *(a1 + 4) == 1)
    {
      v2 = *(a1 + 3);
    }

    else
    {
      v2 = 1;
    }

    *(a1 + 1) = v2;
    v3 = sub_297F05B7C(*(a1 + 3088), v2, sub_297E5BA84, a1);
  }

  else
  {
    v3 = 0;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetStandbyMode");
  return v3;
}

uint64_t sub_297EA548C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_NfceeDisableESE");
  if (!a1)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(&unk_2A18BDDC0 + 14 * v3 + 2);
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (v4 != a1);
  if (v4 != a1)
  {
LABEL_6:
    sub_297E4E0B0(2, a1, 4u, 4u, "phLibNfc_NfceeDisableESE:Invalid Context");
    v5 = 1;
    goto LABEL_7;
  }

  v7 = *(a1 + 440);
  if (!v7)
  {
    *(a1 + 592) = 0;
    v9 = "phLibNfc_NfceeDisableESE: Secure Element Handle not available";
    goto LABEL_13;
  }

  v8 = *(a1 + 452);
  if (v8 == 1 || v8 == 4)
  {
    *(a1 + 592) = 0;
    v9 = "phLibNfc_NfceeDisableESE: Secure Element Already disabled";
LABEL_13:
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, v9);
    v5 = 0;
    goto LABEL_7;
  }

  if (*(a1 + 2960) != &qword_2A1A91038 && (*(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1))
  {
    v5 = 0;
    *(a1 + 452) = 1;
    *(a1 + 745) = 0;
  }

  else
  {
    v10 = sub_297F058B8(*(a1 + 3088), v7, 0, sub_297E5BA84, a1);
    if (v10 == 13)
    {
      *(a1 + 560) = a1 + 440;
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_NfceeDisableESE:Cmd Sent to lower layer");
      v5 = 13;
    }

    else if (v10 == 111)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "phLibNfc_NfceeDisableESE: Busy stats returned from NCI");
      v5 = 111;
    }

    else
    {
      sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_NfceeDisableESE: Failed to Disable ESE,error");
      v5 = 255;
    }
  }

LABEL_7:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_NfceeDisableESE");
  return v5;
}

uint64_t sub_297EA569C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_NfceeDisableProc");
  if (a1)
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

    while (v6 != a1);
    if (v6 == a1)
    {
      sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phLibNfc_NfceeDisableProc wStatus");
      v8 = *(a1 + 560);
      if (v8)
      {
        v9 = *(v8 + 8);
        switch(v9)
        {
          case 7:
            *(a1 + 468) = 1;
            break;
          case 2:
            *(a1 + 436) = 1;
            break;
          case 1:
            *(a1 + 452) = 1;
            *(a1 + 745) = 0;
            break;
        }

        if (*(a1 + 2984) == 1)
        {
          *(a1 + 592) = 1200;
          *(a1 + 2929) = 0;
        }

        else
        {
          *(a1 + 592) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_NfceeDisableProc Invalid pActiveSeInfo");
      }
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_NfceeDisableProc");
  return a2;
}

uint64_t sub_297EA57EC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_NfceeDisableUICC");
  if (!a1)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(&unk_2A18BDDC0 + 14 * v3 + 2);
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (v4 != a1);
  if (v4 != a1)
  {
LABEL_6:
    sub_297E4E0B0(2, a1, 4u, 4u, "phLibNfc_NfceeDisableUICC:Invalid Context");
LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

  v7 = *(a1 + 424);
  if (!v7)
  {
    *(a1 + 592) = 0;
    v9 = "phLibNfc_NfceeDisableUICC:Secure Element Handle not available";
    goto LABEL_14;
  }

  v8 = *(a1 + 436);
  if (v8 == 1)
  {
    goto LABEL_7;
  }

  if (v8 == 4)
  {
    *(a1 + 592) = 0;
    v9 = "phLibNfc_NfceeDisableUICC: Secure Element removed ";
LABEL_14:
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, v9);
    v5 = 0;
    goto LABEL_8;
  }

  v10 = sub_297F058B8(*(a1 + 3088), v7, 0, sub_297E5BA84, a1);
  if (v10 == 13)
  {
    *(a1 + 560) = a1 + 424;
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_NfceeDisableUICC:Cmd Sent to lower layer");
    v5 = 13;
  }

  else if (v10 == 111)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "phLibNfc_NfceeDisableUICC: Busy stats returned from NCI");
    v5 = 111;
  }

  else
  {
    sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_NfceeDisableUICC: Failed to Disable UICC,error");
    v5 = 255;
  }

LABEL_8:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_NfceeDisableUICC");
  return v5;
}

uint64_t sub_297EA59B0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_NfceeDisableSE2");
  if (a1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(&unk_2A18BDDC0 + 14 * v3 + 2);
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
      v6 = *(a1 + 456);
      if (v6)
      {
        v7 = *(a1 + 468);
        if (v7 == 1)
        {
          v5 = 1;
          goto LABEL_19;
        }

        if (v7 != 4)
        {
          v9 = sub_297F058B8(*(a1 + 3088), v6, 0, sub_297E5BA84, a1);
          if (v9 == 13)
          {
            *(a1 + 560) = a1 + 456;
            sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_NfceeDisableSE2:Cmd Sent to lower layer");
            v5 = 13;
          }

          else if (v9 == 111)
          {
            sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "phLibNfc_NfceeDisableSE2: Busy stats returned from NCI");
            v5 = 111;
          }

          else
          {
            sub_297E50DB0(1, a1 + 9792, 4u, 1u, "phLibNfc_NfceeDisableSE2: Failed to Disable SE2,error");
            v5 = 255;
          }

          goto LABEL_19;
        }

        *(a1 + 592) = 0;
        v8 = "phLibNfc_NfceeDisableSE2: Secure Element Already disabled";
      }

      else
      {
        v8 = "phLibNfc_NfceeDisableSE2:Secure Element Handle not available";
      }

      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, v8);
      v5 = 0;
LABEL_19:
      *(a1 + 592) = 0;
      *(a1 + 2929) = 0;
      goto LABEL_20;
    }
  }

  sub_297E4E0B0(2, a1, 4u, 4u, "phLibNfc_NfceeDisableSE2:Invalid Context");
  v5 = 1;
LABEL_20:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_NfceeDisableSE2");
  return v5;
}

uint64_t sub_297EA5B80(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_staticFeatureCfgComplete");
  if (!v3)
  {
    goto LABEL_12;
  }

  *(v3 + 752) = 0;
  *(v3 + 744) = 0;
  v4 = *(v3 + 2936);
  if (v4)
  {
    v5 = v4 == 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v8 = *(v3 + 9792);
    phOsalNfc_Timer_Stop();
    sub_297E687D8(1, v3 + 9792, *(v3 + 2936), 4u, 4u, "phLibNfc_staticFeatureCfgComplete");
    v9 = *(v3 + 9792);
    v10 = *(v3 + 2936);
    phOsalNfc_Timer_Delete();
    *(v3 + 2936) = 0;
    v11 = &gphNfc_DebugInfo_Sec;
    if (!*(v3 + 9792))
    {
      v11 = &gphNfc_DebugInfo_Prim;
    }

    v11[1] &= ~0x2000000u;
    if (!a2)
    {
      goto LABEL_16;
    }

LABEL_8:
    if (*(v3 + 2931) == 1)
    {
      v6 = 137;
    }

    else
    {
      v6 = 255;
    }

    goto LABEL_11;
  }

  if (a2)
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_297E4E1B4(2, v3, 4u, 5u, "phLibNfc_VerifySEStatus");
  if (*(v3 + 6104))
  {
    if (*(v3 + 488))
    {
      v12 = *(v3 + 366);
      if (v12 != 2 && ((*(v3 + 488) & 2) == 0) == (v12 - 1) < 2)
      {
        goto LABEL_20;
      }
    }
  }

  else if ((*(v3 + 366) == 1) == ((*(v3 + 488) & 2) == 0))
  {
LABEL_20:
    sub_297E4DFAC(2, v3, 4u, 5u, "phLibNfc_VerifySEStatus");
    a2 = 255;
    if (*(v3 + 2931) == 1)
    {
      v6 = 137;
    }

    else
    {
      v6 = 255;
    }

LABEL_11:
    sub_297EA93C8(v3, v6);
    v3 = 0;
    goto LABEL_12;
  }

  sub_297E4DFAC(2, v3, 4u, 5u, "phLibNfc_VerifySEStatus");
  *(v3 + 2931) = 0;
  if (*(v3 + 3200) == 1)
  {
    if (!*(v3 + 3203) && *(v3 + 6568))
    {
      sub_297E54734(1, v3 + 9792, 4u, 4u, "phLibNfc_staticFeatureCfgComplete :pGenericNtfCb[PLLUnlock]");
      (*(v3 + 6568))(*(v3 + 9784), *(v3 + 6576), 70, 0);
    }

    *(v3 + 3200) = 0;
  }

  if (*(v3 + 3201) == 1)
  {
    if (!*(v3 + 3203) && *(v3 + 6568))
    {
      if (*(v3 + 2992) == 1)
      {
        sub_297E54734(1, v3 + 9792, 4u, 4u, "phLibNfc_staticFeatureCfgComplete :pGenericNtfCb[PLLLostlock]");
        (*(v3 + 6568))(*(v3 + 9784), *(v3 + 6576), 77, 0);
      }

      else
      {
        sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "Unknown ntf is received, and dropped ");
      }
    }

    *(v3 + 3201) = 0;
  }

  if (*(v3 + 3202) == 1)
  {
    if (*(v3 + 3203) != 1 && *(v3 + 6568))
    {
      sub_297E54734(1, v3 + 9792, 4u, 4u, "phLibNfc_staticFeatureCfgComplete :pGenericNtfCb[XTAL Start Error]");
      (*(v3 + 6568))(*(v3 + 9784), *(v3 + 6576), 90, 0);
    }

    *(v3 + 3202) = 0;
  }

  *(v3 + 3203) = 0;
  a2 = sub_297E4F450(*(v3 + 9784), 118, 0, v3 + 9784, v3);
  if (!a2)
  {
    sub_297EB9DE4(v3);
  }

LABEL_12:
  sub_297E4DFAC(2, v3, 4u, 5u, "phLibNfc_staticFeatureCfgComplete");
  return a2;
}

uint64_t sub_297EA5ED8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetRtngTableCfgs");
  if (!a1)
  {
    v9 = "Error: Routing table can only be configured in Initialized state";
    v8 = 1;
    v10 = 2;
    v11 = 0;
LABEL_9:
    sub_297E4E0B0(v10, v11, 4u, 1u, v9);
    goto LABEL_12;
  }

  v5 = *a3;
  v6 = *(a1 + 376);
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Error: Routing table Buffer is invalid or No Routing Entries");
    v8 = 255;
    goto LABEL_12;
  }

  v12 = sub_297F06AE8(*(a1 + 3088), v5, v6);
  v8 = v12;
  if (!v12)
  {
    v8 = sub_297F030D0(*(a1 + 3088), sub_297E5BA84, (a1 + 384), a1);
    if (v8 != 13)
    {
      v9 = "phLibNfc_SetRtngTableCfgs:Set Routing Config Sequence failed!";
      v11 = a1 + 9792;
      v10 = 1;
      goto LABEL_9;
    }
  }

LABEL_12:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetRtngTableCfgs");
  return v8;
}

uint64_t sub_297EA5FF0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConfigRoutingTableProc");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_ConfigRoutingTableProc: Routing Table configuration failed");
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_ConfigRoutingTableMoreProc: Routing Table configuration success");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConfigRoutingTableProc");
  return a2;
}

uint64_t sub_297EA6094(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetRtngTableCfgsMore");
  if (!a2)
  {
    if (a1 && *(a1 + 384) == 1)
    {
      a2 = sub_297F030D0(*(a1 + 3088), sub_297E5BA84, (a1 + 384), a1);
    }

    else
    {
      a2 = 0;
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetRtngTableCfgsMore");
  return a2;
}

uint64_t sub_297EA6134(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConfigRoutingTableMoreProc");
  if (!a1 || a2)
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_ConfigRoutingTableProc: Routing Table configuration failed");
  }

  else if (*(a1 + 384) == 1)
  {
    sub_297E79810(a1, *(a1 + 2960), 1u);
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_ConfigRoutingTableProc: Routing Table configuration success");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConfigRoutingTableMoreProc");
  return a2;
}

uint64_t sub_297EA61FC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConfigRoutingTableComplete");
  if (a1)
  {
    if (*(a1 + 376))
    {
      v4 = *(a1 + 9792);
      phOsalNfc_FreeMemory();
      *(a1 + 376) = 0;
    }

    if (a2)
    {
      v5 = 119;
    }

    else
    {
      v5 = 118;
    }

    v6 = sub_297E4F450(*(a1 + 9784), v5, a2, 0, 0);
  }

  else
  {
    v6 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConfigRoutingTableComplete");
  return v6;
}

uint64_t sub_297EA62A0(unsigned __int8 *a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetPowerMode");
  if (a1)
  {
    v2 = a1[1];
    if (*a1 == v2)
    {
      a1[2] = 1;
      sub_297E4E0B0(1, (a1 + 9792), 4u, 4u, "phLibNfc_SetPowerMode: Power mode already enabled");
      v3 = 0;
    }

    else
    {
      v3 = sub_297F05B7C(*(a1 + 386), v2, sub_297E5BA84, a1);
    }
  }

  else
  {
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetPowerMode");
  return v3;
}

uint64_t sub_297EA6368(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SetPowerModeComplete");
  if (a1 && !a2)
  {
    *(a1 + 3) = *a1;
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_SetPowerModeComplete: Success");
    v4 = 118;
LABEL_6:
    a2 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
    goto LABEL_7;
  }

  sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_SetPowerModeComplete: Failed");
  if (a1)
  {
    v4 = 119;
    goto LABEL_6;
  }

LABEL_7:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SetPowerModeComplete");
  return a2;
}

uint64_t sub_297EA643C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_DeInitialize");
  if (a1)
  {
    a2 = sub_297F080D4(*(a1 + 3088), 0, sub_297E5BA84, a1);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_DeInitialize");
  return a2;
}

uint64_t sub_297EA64C4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_DeInitializeProcess");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_DeInitializeProcess: MW DeInitialization failed");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_DeInitializeProcess");
  return a2;
}

uint64_t sub_297EA6544(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_DeInitializeComplete");
  if (a1)
  {
    if (*(a1 + 3224) == 1)
    {
      if (!a2)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (!a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_DeInitializeComplete:De-Init is successful");
      v4 = a1;
      v5 = 0;
      goto LABEL_12;
    }

    if (a2 != 81)
    {
LABEL_10:
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_DeInitializeComplete: MW DeInitialization failed");
LABEL_11:
      sub_297F080D4(*(a1 + 3088), 2, 0, a1);
      *(a1 + 3088) = 0;
      v4 = a1;
      v5 = a2;
LABEL_12:
      sub_297EAA3C4(v4, v5);
      goto LABEL_13;
    }

    a2 = sub_297F080D4(*(a1 + 3088), 0, sub_297EAA3C4, a1);
    if (a2 != 13)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_DeInitializeComplete: Invalid LIBNFC Context");
    a2 = 255;
  }

LABEL_13:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_DeInitializeComplete");
  return a2;
}

uint64_t sub_297EA668C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SpmiRstCrcConfig");
  if (a1)
  {
    v2 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    if (sub_297EA76A4(*(a1 + 9792), *(a1 + 3000)))
    {
      v3 = "phLibNfc_SpmiRstCrcConfig: Spmi Client reset failed";
    }

    else
    {
      v6 = *(a1 + 3088);
      if (v6)
      {
        v7 = *(a1 + 3000);
        phTmlNfc_ReadAbort();
        v8 = *(a1 + 3000);
        phTmlNfc_FlushTxRxBuffers();
        sub_297E54838(v6 + 936);
        v9 = *(a1 + 3000);
        phTmlNfc_IoCtl();
        sub_297F09BB4(*(a1 + 3088), 0);
        sub_297F09B18(*(a1 + 3088), 0);
        if (sub_297E4EE00(v6 + 936, 0, 3) == 13)
        {
          v4 = 0;
          *a1 = 256;
          goto LABEL_8;
        }

        v3 = "phLibNfc_SpmiRstCrcConfig: Tml Read Request Failed";
      }

      else
      {
        v3 = "phLibNfc_SpmiRstCrcConfig: Invalid NCI context";
      }
    }

    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, v3);
    if (*(a1 + 3224) == 1)
    {
      v4 = 288;
    }

    else
    {
      v4 = 255;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_SpmiRstCrcConfig: Invalid input parameters");
    v4 = 255;
  }

LABEL_8:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SpmiRstCrcConfig");
  return v4;
}

uint64_t sub_297EA6800(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_CoreResetCmd");
  if (a1)
  {
    v2 = sub_297F0A97C(*(a1 + 3088), sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CoreResetCmd");
  return v2;
}

uint64_t sub_297EA6888(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ProcessCoreResetRsp");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_ProcessCoreResetRsp:Core reset response failed");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ProcessCoreResetRsp");
  return a2;
}

uint64_t sub_297EA6908(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_CoreInitCmd");
  if (a1)
  {
    v2 = sub_297F0AAB0(*(a1 + 3088), sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_CoreInitCmd");
  return v2;
}

uint64_t sub_297EA6990(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ProcessCoreInitRsp");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_ProcessCoreInitRsp:Core init response failed");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ProcessCoreInitRsp");
  return a2;
}

uint64_t sub_297EA6A10(uint64_t a1, int a2, int a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Retrive_TagId");
  if (a1 && word_2A13A57C0[5 * a2 + a3] == 1)
  {
    v6 = word_2A13A57C0[5 * a2];
  }

  else
  {
    v6 = 0;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Retrive_TagId");
  return v6;
}

uint64_t sub_297EA6AB4(_BYTE *a1, unsigned int a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Get_TagIds");
  if (!a1)
  {
    goto LABEL_18;
  }

  if (a1[2984] == 1)
  {
    if (a2 == 1)
    {
      v4 = a1;
      v5 = 1;
      v6 = 1;
LABEL_17:
      v7 = sub_297EA6A10(v4, v5, v6);
      goto LABEL_19;
    }

    v6 = 1;
    goto LABEL_15;
  }

  if (a1[2985] == 1)
  {
    v6 = 2;
    goto LABEL_10;
  }

  if (a1[2986] == 1)
  {
    v6 = 3;
LABEL_10:
    if (a2 == 1)
    {
      goto LABEL_11;
    }

LABEL_15:
    if (a2 <= 0x2C)
    {
      v4 = a1;
      v5 = a2;
      goto LABEL_17;
    }

LABEL_18:
    v7 = 0;
    goto LABEL_19;
  }

  if (a1[2992] != 1)
  {
    goto LABEL_18;
  }

  if (a2 != 1)
  {
    v6 = 4;
    goto LABEL_15;
  }

LABEL_11:
  v7 = 40977;
LABEL_19:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Get_TagIds");
  return v7;
}

uint64_t sub_297EA6BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v13 = a1;
  v11 = 0;
  sub_297E4E1B4(0, &v13, 4u, 5u, "phLibNfc_NfccResetRecoveryCb");
  sub_297E4F0E8(v13, &v12);
  if (v12)
  {
    if (*(v12 + 9778) == 1 && *(v12 + 6280))
    {
      sub_297E4E0B0(0, &v13, 4u, 4u, "Invoking pClientNtfRegRespCB with Tag Removed status");
      sub_297E54734(0, &v13, 4u, 4u, "phLibNfc_NfccResetRecoveryCb :RemDevNtfCB[Tag removed Ntf]");
      (*(v12 + 6280))(*(v12 + 9784), *(v12 + 6288), 0, 0, 120);
      *(v12 + 9778) = 0;
    }

    sub_297E5D114(v13, &v11);
    if (v11)
    {
      if (*(v12 + 6104) || *(v11 + 24))
      {
        v5 = 119;
      }

      else if (*(v12 + 6120))
      {
        v5 = 119;
      }

      else
      {
        v5 = 118;
      }

      sub_297E4F450(*(v12 + 9784), v5, a3, a2, 0);
      v6 = v12;
      if (v12)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = *(&unk_2A18BDDC0 + 14 * v8 + 2);
          if (v7)
          {
            break;
          }

          v7 = 1;
          v8 = 1;
        }

        while (v9 != v12);
        if (v9 == v12 && *(v12 + 9798) == 1)
        {
          *(v12 + 9798) = 0;
          if (sub_297EA6D80(v13, v6) != 13)
          {
            sub_297E4E0B0(0, &v13, 4u, 1u, "phLibNfc_NfccResetRecoveryCb : Failed to resume Deinitialize!");
          }
        }
      }
    }
  }

  return sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_NfccResetRecoveryCb");
}

uint64_t sub_297EA6D80(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v29 = 0;
  sub_297E4E1B4(0, &v30, 4u, 5u, "phLibNfc_ResumeDeinit");
  if (a2)
  {
    v3 = *(a2 + 1496);
    if (v3)
    {
      v4 = v3 == 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v5 = *(a2 + 9792);
      phOsalNfc_Timer_Delete();
      *(a2 + 1496) = 0xFFFFFFFFFFFFLL;
    }

    v6 = *(a2 + 768);
    if (v6 && v6 != 0xFFFFFFFFFFFFLL)
    {
      v7 = *(a2 + 9792);
      phOsalNfc_Timer_Delete();
      *(a2 + 768) = 0xFFFFFFFFFFFFLL;
    }

    v8 = *(a2 + 512);
    if (v8)
    {
      v9 = *(v8 + 840);
      if (v9)
      {
        v10 = v9 == 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v11 = *(v8 + 956);
        phOsalNfc_Timer_Stop();
        v12 = *(v8 + 956);
        v13 = *(v8 + 840);
        phOsalNfc_Timer_Delete();
        *(v8 + 840) = 0xFFFFFFFFFFFFLL;
      }

      v14 = *(v8 + 856);
      if (v14)
      {
        v15 = v14 == 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        v16 = *(v8 + 956);
        phOsalNfc_Timer_Stop();
        v17 = *(v8 + 956);
        v18 = *(v8 + 856);
        phOsalNfc_Timer_Delete();
        *(v8 + 856) = 0xFFFFFFFFFFFFLL;
      }

      v19 = *(v8 + 872);
      if (v19 && v19 != 0xFFFFFFFFFFFFLL)
      {
        v20 = *(v8 + 956);
        phOsalNfc_Timer_Stop();
        v21 = *(v8 + 956);
        v22 = *(v8 + 872);
        phOsalNfc_Timer_Delete();
        sub_297E4E0B0(0, &v30, 4u, 4u, "phLibNfc_Mgt_DeInitialize : HCI Command Response timer deleted successfully");
        *(v8 + 872) = 0;
      }
    }

    sub_297EE165C(v30, 208);
    if (sub_297E4F450(v30, 112, 0, &v30, 0) == 13)
    {
      *(a2 + 6184) = *(a2 + 9800);
      *(a2 + 6192) = *(a2 + 9808);
      *(a2 + 9798) = 0;
      *(a2 + 488) = 16;
      *(a2 + 9800) = 0u;
      v23 = 13;
    }

    else
    {
      if (*(a2 + 3224) == 1)
      {
        v23 = 288;
      }

      else
      {
        v23 = 0;
      }

      *(a2 + 6184) = 0u;
      v24 = *(a2 + 9800);
      if (v24)
      {
        v24(v30, *(a2 + 9808), v23);
      }

      if (sub_297E4F450(v30, 113, v23, 0, &v29))
      {
        sub_297E4E0B0(0, &v30, 4u, 2u, "State Machine has rejected the event!!!");
        sub_297EE17E4(v30, 1);
        sub_297EE1720(v30, 0);
      }

      v25 = 0;
      v26 = 0;
      do
      {
        v27 = *(&unk_2A18BDDC0 + 14 * v26 + 2);
        if (v25)
        {
          break;
        }

        v25 = 1;
        v26 = 1;
      }

      while (v27 != a2);
      if (v27 == a2)
      {
        sub_297EA7418(a2);
        sub_297E5A3A8(v30, 0);
        sub_297F080D4(*(a2 + 3088), 2, 0, 0);
        *(a2 + 3088) = 0;
        sub_297EA9F80(a2);
        sub_297E9F3BC(v30, 0);
      }
    }
  }

  else
  {
    v23 = 255;
  }

  sub_297E4DFAC(0, &v30, 4u, 5u, "phLibNfc_ResumeDeinit");
  return v23;
}

uint64_t sub_297EA7040(uint64_t a1, uint64_t a2, _BYTE **a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ResetNtfHandler");
  if (a1 && a3)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "LibNfc Reset Handler: Received Reset Ntf from NFCC");
    if (*a3)
    {
      if (((**a3 + 96) & 0xFC) != 0)
      {
        v5 = 48;
      }

      else
      {
        v5 = (**a3 + 96) + 208;
      }

      sub_297E96818(*(a1 + 9784), v5);
    }

    if (sub_297E4F450(*(a1 + 9784), 114, 0, a3, 0) == 255)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(&unk_2A18BDDC0 + 14 * v7 + 2);
        if (v6)
        {
          break;
        }

        v6 = 1;
        v7 = 1;
      }

      while (v8 != a1);
      if (v8 == a1)
      {
        v9 = *(a1 + 9784);
        if (*(a1 + 3208) <= 1u)
        {
          sub_297EE165C(v9, 114);
          sub_297EE1720(*(a1 + 9784), 1);
          sub_297EE17E4(*(a1 + 9784), 11);
          sub_297EE18A8(*(a1 + 9784), 3);
          v9 = *(a1 + 9784);
        }

        sub_297EA6BB0(v9, a1, 0);
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ResetNtfHandler");
}

uint64_t sub_297EA71A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 8;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_LibNfcRecovery");
  if (!a1 || !a2)
  {
    v8 = 1;
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_LibNfcRecovery : Invalid Param!");
    goto LABEL_21;
  }

  v6 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  sub_297E4E0B0(1, a1 + 9792, 4u, 1u, " . Starting LibNfc recovery . ");
  sub_297EA7418(a1);
  *(a1 + 2930) = 0;
  sub_297F083E0(*(a1 + 3088));
  *(a1 + 6168) = a2;
  *(a1 + 6176) = a3;
  sub_297E5F164(*(a1 + 9784), &v16);
  if ((v16 & 0xFFFFFFFD) != 4)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_LibNfcRecovery: HSU baud rate different, changing it to the default baud rate (115200)");
    v7 = *(a1 + 3000);
    if (phTmlNfc_ConfigHsuBaudRate())
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_LibNfcRecovery: HSU Baud rate configuration failed");
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_LibNfcRecovery: Failed");
      v8 = 255;
      goto LABEL_21;
    }
  }

  v9 = *(a1 + 3000);
  if (*(a1 + 3224) != 1)
  {
    v10 = phTmlNfc_IoCtl();
    goto LABEL_11;
  }

  if (!phTmlNfc_IoCtl())
  {
    v10 = sub_297EA76A4(*(a1 + 9792), *(a1 + 3000));
LABEL_11:
    if (*(a1 + 9792) == 1 && !v10)
    {
      sub_297F09BB4(*(a1 + 3088), 0);
      sub_297F09B18(*(a1 + 3088), 0);
      v11 = *(a1 + 3000);
      v10 = phTmlNfc_IoCtl();
    }

    if (!v10)
    {
      goto LABEL_16;
    }
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_LibNfcRecovery: Failed to Hard reset the controller, proceeding to send core reset command even if SPMI/VEN Reset failed");
LABEL_16:
  *(a1 + 2960) = &qword_2A1A90CE8;
  *(a1 + 2952) = 0;
  *(a1 + 2954) = 0;
  v12 = qword_2A1A90CE8;
  if (qword_2A1A90CE8)
  {
    v12 = 0;
    v13 = off_2A1A90CF8;
    do
    {
      ++v12;
      v14 = *v13;
      v13 += 2;
    }

    while (v14);
  }

  *(a1 + 2953) = v12;
  v8 = sub_297E5588C(a1, 0, 0);
  if (v8 != 13)
  {
    *(a1 + 6168) = 0;
    *(a1 + 6176) = 0;
  }

LABEL_21:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_LibNfcRecovery");
  return v8;
}

uint64_t sub_297EA7418(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ReleaseTimers");
  if (a1)
  {
    v2 = *(a1 + 3240);
    if (v2)
    {
      v3 = v2 == 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      v4 = *(a1 + 9792);
      phOsalNfc_Timer_Stop();
      *(a1 + 6084) = 0;
      sub_297E687D8(1, a1 + 9792, *(a1 + 3240), 4u, 4u, "phLibNfc_ReleaseTimers");
      v5 = *(a1 + 9792);
      v6 = *(a1 + 3240);
      phOsalNfc_Timer_Delete();
      *(a1 + 3240) = 0xFFFFFFFFFFFFLL;
    }

    v7 = *(a1 + 3232);
    if (v7 && v7 != 0xFFFFFFFFFFFFLL)
    {
      v8 = *(a1 + 9792);
      phOsalNfc_Timer_Stop();
      v9 = *(a1 + 9792);
      v10 = *(a1 + 3232);
      phOsalNfc_Timer_Delete();
      *(a1 + 3232) = 0xFFFFFFFFFFFFLL;
    }

    v11 = *(a1 + 512);
    v12 = *(a1 + 2944);
    if (v12 && v12 != 0xFFFFFFFFFFFFLL)
    {
      v13 = *(a1 + 9792);
      phOsalNfc_Timer_Delete();
      *(a1 + 2944) = 0xFFFFFFFFFFFFLL;
    }

    v14 = *(a1 + 496);
    if (v14 && v14 != 0xFFFFFFFFFFFFLL)
    {
      v15 = *(a1 + 9792);
      phOsalNfc_Timer_Delete();
      *(a1 + 496) = 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v16 = *(v11 + 840);
      if (v16 && v16 != 0xFFFFFFFFFFFFLL)
      {
        v17 = *(v11 + 956);
        phOsalNfc_Timer_Delete();
        *(v11 + 840) = 0;
      }

      v18 = *(v11 + 936);
      if (v18 && v18 != 0xFFFFFFFFFFFFLL)
      {
        v19 = *(v11 + 956);
        phOsalNfc_Timer_Delete();
        *(v11 + 936) = 0;
      }

      v20 = *(v11 + 856);
      if (v20 && v20 != 0xFFFFFFFFFFFFLL)
      {
        v21 = *(v11 + 956);
        phOsalNfc_Timer_Delete();
        *(v11 + 856) = 0;
      }

      v22 = *(v11 + 872);
      if (v22 && v22 != 0xFFFFFFFFFFFFLL)
      {
        v23 = *(v11 + 956);
        phOsalNfc_Timer_Delete();
        *(v11 + 872) = 0;
        v24 = &gphNfc_DebugInfo_Sec;
        if (!*(v11 + 956))
        {
          v24 = &gphNfc_DebugInfo_Prim;
        }

        *v24 &= ~8u;
      }
    }

    v25 = *(a1 + 1496);
    if (v25 && v25 != 0xFFFFFFFFFFFFLL)
    {
      v26 = *(a1 + 9792);
      phOsalNfc_Timer_Delete();
      *(a1 + 1496) = 0xFFFFFFFFFFFFLL;
    }

    v27 = *(a1 + 768);
    if (v27 && v27 != 0xFFFFFFFFFFFFLL)
    {
      v28 = *(a1 + 9792);
      phOsalNfc_Timer_Delete();
      *(a1 + 768) = 0xFFFFFFFFFFFFLL;
    }

    v29 = *(a1 + 2936);
    if (v29 && v29 != 0xFFFFFFFFFFFFLL)
    {
      v30 = *(a1 + 9792);
      phOsalNfc_Timer_Delete();
      *(a1 + 2936) = 0xFFFFFFFFFFFFLL;
    }

    v31 = *(a1 + 584);
    if (v31 && v31 != 0xFFFFFFFFFFFFLL)
    {
      v32 = *(a1 + 9792);
      phOsalNfc_Timer_Delete();
      *(a1 + 584) = 0xFFFFFFFFFFFFLL;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "LibNFC Null Context -Timers Delete failed");
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ReleaseTimers");
}

uint64_t sub_297EA76A4(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  sub_297E4E1B4(0, &v5, 4u, 5u, "phLibNfc_SpmiRetryClientReset");
  phOsalNfc_SetMemory();
  v2 = phTmlNfc_IoCtl();
  if (v2 == 179 && (sub_297E96914(0, &v5, 4u, 3u, "phLibNfc_SpmiRetryClientReset: SPMI Reset Client Retry Status ="), sub_297E50EBC(0, &v5, 4u, 4u, "phLibNfc_SpmiRetryClientReset: SPMI Reset Client Retry Status ="), phOsalNfc_Delay(), v2 = phTmlNfc_IoCtl(), v2 == 179))
  {
    sub_297E96914(0, &v5, 4u, 3u, "phLibNfc_SpmiRetryClientReset: SPMI Reset Client Retry Status =");
    sub_297E50EBC(0, &v5, 4u, 4u, "phLibNfc_SpmiRetryClientReset: SPMI Reset Client Retry Status =");
    phOsalNfc_Delay();
    v3 = phTmlNfc_IoCtl();
    if (v3 == 179)
    {
      sub_297E96914(0, &v5, 4u, 3u, "phLibNfc_SpmiRetryClientReset: SPMI Reset Client Retry Status =");
      sub_297E50EBC(0, &v5, 4u, 4u, "phLibNfc_SpmiRetryClientReset: SPMI Reset Client Retry Status =");
      goto LABEL_8;
    }
  }

  else
  {
    v3 = v2;
  }

  sub_297E96914(0, &v5, 4u, 3u, "phLibNfc_SpmiRetryClientReset: SPMI Reset Client Retry Status =");
  if (!v3)
  {
    phOsalNfc_Delay();
  }

LABEL_8:
  sub_297E4DFAC(0, &v5, 4u, 5u, "phLibNfc_SpmiRetryClientReset");
  return v3;
}

uint64_t sub_297EA7878(uint64_t a1, int a2, uint64_t *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_InitCb");
  if (!a1)
  {
    goto LABEL_6;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(&unk_2A18BDDC0 + 14 * v7 + 2);
    if (v6)
    {
      break;
    }

    v6 = 1;
    v7 = 1;
  }

  while (v8 != a1);
  if (v8 != a1)
  {
LABEL_6:
    v9 = 1;
    sub_297E4E0B0(2, a1, 4u, 1u, "Invalid Libnfc context passed by lower layer");
    goto LABEL_7;
  }

  if (a2)
  {
    v11 = "NFCSTATUS_FAILED passed by lower layer";
LABEL_10:
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, v11);
    v9 = 255;
    goto LABEL_7;
  }

  if (!a3)
  {
    v11 = "Buffer passed by lower layer is NULL";
    goto LABEL_10;
  }

  v12 = *a3;
  *(a1 + 3088) = *a3;
  sub_297F0ACE0(v12, *(a1 + 9797));
  sub_297F0ADBC(*(a1 + 3088), *(a1 + 492));
  *(a1 + 556) = 0;
  v9 = sub_297EA79F8(a1, *(a1 + 3088));
  if (sub_297E7F0C8(*(a1 + 9784), *(a1 + 3036), *(a1 + 3040)) == 10)
  {
    *(a1 + 3204) = 1;
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Force No RF boot in case of SE300S");
  }

LABEL_7:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_InitCb");
  return v9;
}

uint64_t sub_297EA79F8(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v8 = 8;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetNfccFeatures");
  v4 = 255;
  if (a1 && a2 && !sub_297F06C90(a2, &v9))
  {
    sub_297E5F164(*(a1 + 3000), &v8);
    *(a1 + 3041) = BYTE1(v11);
    v5 = BYTE4(v10);
    *(a1 + 3036) = BYTE4(v10);
    *(a1 + 3073) = BYTE5(v10);
    *(a1 + 3028) = __rev16(HIWORD(v10));
    v6 = BYTE2(v11);
    *(a1 + 3136) = BYTE2(v11);
    *(a1 + 3182) = WORD2(v11);
    *(a1 + 2984) = 0;
    *(a1 + 2991) = 0;
    *(a1 + 2) = 1;
    if ((v5 - 162) < 3)
    {
      v4 = 0;
      *(a1 + 2985) = 1;
      goto LABEL_26;
    }

    if (v5 == 66)
    {
      v4 = 0;
      *(a1 + 2984) = 1;
      goto LABEL_26;
    }

    if ((v5 - 177) <= 1)
    {
      *(a1 + 2986) = 1;
      if (v6 == 1)
      {
        v4 = 0;
        *(a1 + 2987) = 1;
        goto LABEL_26;
      }

      if (v6 == 3 || (v8 & 0xFFFFFFFD) == 4)
      {
        *(a1 + 2987) = 1;
        if (v6 == 4)
        {
          v4 = 0;
          *(a1 + 2989) = 1;
          goto LABEL_26;
        }

        if (v6 == 3)
        {
          v4 = 0;
          *(a1 + 2988) = 1;
          goto LABEL_26;
        }
      }

LABEL_25:
      v4 = 0;
      goto LABEL_26;
    }

    if ((v5 - 208) < 4 || v5 == 96)
    {
      *(a1 + 2992) = 1;
      if ((v5 - 209) <= 2)
      {
        v4 = 0;
        *(a1 + 2993) = 1;
        goto LABEL_26;
      }

      if (v5 == 96)
      {
        v4 = 0;
        *(a1 + 2994) = 1;
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if (v5 == 186)
    {
      *(a1 + 2986) = 257;
      v4 = 0;
      if (v6 == 18)
      {
        *(a1 + 2991) = 1;
      }

      else
      {
        *(a1 + 2990) = 1;
      }
    }
  }

LABEL_26:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetNfccFeatures");
  return v4;
}

uint64_t sub_297EA7C10(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_297E4E1B4(2, a2, 4u, 5u, "phLibNfc_SpmiClientResetDelayCb");
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 2);
    if (v3)
    {
      break;
    }

    v3 = 1;
    v4 = 1;
  }

  while (v5 != v2);
  if (v5 != v2)
  {
LABEL_6:
    sub_297E4E0B0(2, v2, 4u, 1u, "phLibNfc_SpmiClientResetDelayCb:Invalid Context");
    goto LABEL_15;
  }

  *(v2 + 3216) = 0;
  v6 = *(v2 + 3232);
  if (!v6 || v6 == 0xFFFFFFFFFFFFLL)
  {
    v7 = "phLibNfc_SpmiClientResetDelayCb: Invalid Timer Id";
    v8 = v2 + 9792;
LABEL_10:
    sub_297E4E0B0(1, v8, 4u, 1u, v7);
    goto LABEL_11;
  }

  v14 = *(v2 + 9792);
  phOsalNfc_Timer_Stop();
  v15 = *(v2 + 3000);
  v16 = phTmlNfc_IoCtl();
  if (v16 == 179)
  {
    sub_297E96914(1, v2 + 9792, 4u, 3u, "phLibNfc_SpmiClientResetDelayCb: SPMI Reset Client Retry Status =");
    sub_297E50EBC(1, v2 + 9792, 4u, 4u, "phLibNfc_SpmiClientResetDelayCb: SPMI Reset Client Retry Status =");
    v17 = *(v2 + 9792);
    phOsalNfc_Delay();
    v18 = *(v2 + 3000);
    v16 = phTmlNfc_IoCtl();
    if (v16 == 179)
    {
      sub_297E96914(1, v2 + 9792, 4u, 3u, "phLibNfc_SpmiClientResetDelayCb: SPMI Reset Client Retry Status =");
      sub_297E50EBC(1, v2 + 9792, 4u, 4u, "phLibNfc_SpmiClientResetDelayCb: SPMI Reset Client Retry Status =");
      *(v2 + 3216) = sub_297EA9708;
      v19 = *(v2 + 9792);
      v20 = *(v2 + 3232);
      if (phOsalNfc_Timer_Start())
      {
        v7 = "phLibNfc_SpmiClientResetDelayCb: Client reset Nack Timer Start failed";
      }

      else
      {
        sub_297E4E0B0(1, v2 + 9792, 4u, 4u, "phLibNfc_SpmiClientResetDelayCb: Client reset NACK boot Timer Started");
        v26 = *(v2 + 6568);
        if (v26)
        {
          v26(*(v2 + 9784), *(v2 + 6576), 304, 0);
          goto LABEL_15;
        }

        v7 = "phLibNfc_SpmiClientResetDelayCb: NULL Generic notification callback";
      }

      goto LABEL_32;
    }
  }

  v21 = v16;
  sub_297E96914(1, v2 + 9792, 4u, 3u, "phLibNfc_SpmiClientResetDelayCb: SPMI Reset Client Retry Status =");
  if (v21 == 255)
  {
LABEL_11:
    v9 = *(v2 + 3232);
    if (v9 && v9 != 0xFFFFFFFFFFFFLL)
    {
      v10 = *(v2 + 9792);
      phOsalNfc_Timer_Stop();
      v11 = *(v2 + 9792);
      v12 = *(v2 + 3232);
      phOsalNfc_Timer_Delete();
      *(v2 + 3232) = 0xFFFFFFFFFFFFLL;
    }

    sub_297EA93C8(v2, 255);
    v2 = 0;
    goto LABEL_15;
  }

  if (!v21)
  {
    v22 = *(v2 + 9792);
    phOsalNfc_Delay();
    *(v2 + 3278) = 0;
    *(v2 + 2960) = off_2A1A90EA8;
    *(v2 + 2952) = 0;
    *(v2 + 2954) = 0;
    v23 = off_2A1A90EA8[0];
    if (off_2A1A90EA8[0])
    {
      v23 = 0;
      v24 = off_2A1A90EB8;
      do
      {
        ++v23;
        v25 = *v24;
        v24 += 2;
      }

      while (v25);
    }

    *(v2 + 2953) = v23;
    if (sub_297E5588C(v2, 0, v2 + 3278) != 13)
    {
      v7 = "phLibNfc_SpmiClientResetDelayCb:Init sequence failed";
LABEL_32:
      v8 = v2 + 9792;
      goto LABEL_10;
    }
  }

LABEL_15:

  return sub_297E4DFAC(2, v2, 4u, 5u, "phLibNfc_SpmiClientResetDelayCb");
}

uint64_t sub_297EA7F2C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetSEPipeStatus");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetSEPipeStatus - Invalid Lib COntext");
LABEL_15:
    v5 = 0;
    goto LABEL_20;
  }

  v2 = *(a1 + 512);
  if (*(a1 + 365) == 2 && *(a1 + 366) == 2 && *(a1 + 367) == 2)
  {
    goto LABEL_15;
  }

  v3 = *(a1 + 9792);
  phOsalNfc_SetMemory();
  v4 = *(*(a1 + 560) + 8);
  if (v4 == 1)
  {
    if (*(a1 + 2992) == 1)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_GetSEPipeStatus - Not required");
      v7 = sub_297EA80F4(a1);
LABEL_19:
      v5 = v7;
      goto LABEL_20;
    }

    v6 = 25165824;
LABEL_18:
    *(a1 + 3612) |= 0x1000u;
    *(a1 + 4188) |= v6;
    v7 = sub_297E60AC0(*(a1 + 3088), a1 + 3608, sub_297E5BA84, a1);
    goto LABEL_19;
  }

  if (v4 == 7)
  {
    v6 = 0x4000000;
    goto LABEL_18;
  }

  if (v4 != 2)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_GetSEPipeStatus - Not required");
    goto LABEL_15;
  }

  if (*(a1 + 2992) != 1)
  {
    v6 = 0x2000000;
    goto LABEL_18;
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_GetSEPipeStatus - Not required");
  v5 = 0;
  *(v2 + 832) = 16650;
LABEL_20:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetSEPipeStatus");
  return v5;
}

uint64_t sub_297EA80F4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_UpdateStaticPipeInfo");
  if (a1 && (v2 = *(a1 + 512)) != 0)
  {
    *(v2 + 816) = xmmword_297F132A0;
    sub_297EEAD30(v2, 25);
    sub_297EEAD30(v2, 39);
    sub_297EEAD30(v2, 40);
    sub_297EEAD30(v2, 41);
    sub_297EEAD30(v2, 22);
    sub_297EEAD30(v2, 43);
    sub_297EEAD30(v2, 44);
    sub_297EEAD30(v2, 45);
    v3 = 0;
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_UpdateStaticPipeInfo");
  return v3;
}

uint64_t sub_297EA81D4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SERecoveryGetPipeStatus");
  if (!a1 || (v2 = *(a1 + 512)) == 0)
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_GetSEPipeStatus - Invalid Lib or HCI COntext");
    goto LABEL_7;
  }

  if (*(a1 + 2992) != 1)
  {
    v6 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    v7 = *(*(a1 + 560) + 8);
    if (v7 == 1)
    {
      if (v2[818] == 255 && v2[816] == 255)
      {
        v8 = 25165824;
        goto LABEL_21;
      }

      sub_297EEAD30(v2, 25);
    }

    else if (v7 == 7)
    {
      if (v2[834] == 255)
      {
        v8 = 0x4000000;
        goto LABEL_21;
      }
    }

    else if (v7 == 2 && v2[832] == 255)
    {
      v8 = 0x2000000;
LABEL_21:
      *(a1 + 3612) |= 0x1000u;
      *(a1 + 4188) |= v8;
      v3 = sub_297E60AC0(*(a1 + 3088), a1 + 3608, sub_297E5BA84, a1);
      goto LABEL_5;
    }

    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_GetSEPipeStatus - Not required");
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_SERecoveryGetPipeStatus - Not required");
  v3 = sub_297EA80F4(a1);
LABEL_5:
  v4 = v3;
LABEL_8:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SERecoveryGetPipeStatus");
  return v4;
}

uint64_t sub_297EA8380(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetSEPipeStatusProc");
  if (!a1)
  {
    v9 = "phLibNfc_GetSEPipeStatusProc :Invalid Lib Context";
    v10 = 2;
    v11 = 0;
LABEL_22:
    sub_297E4E0B0(v10, v11, 4u, 1u, v9);
    a2 = 255;
    goto LABEL_23;
  }

  if (!a3 || (v6 = *(a1 + 512)) == 0)
  {
    v9 = "phLibNfc_GetSEPipeStatusProc :Invalid HCI Context/No Data";
LABEL_21:
    v11 = a1 + 9792;
    v10 = 1;
    goto LABEL_22;
  }

  v7 = *(*(a1 + 560) + 8);
  if (v7 == 7)
  {
    if ((a3[5] & 0x10) != 0)
    {
      if ((a3[583] & 4) == 0)
      {
        goto LABEL_23;
      }

      if (a3[1127])
      {
        if (a3[1127] == 1)
        {
          *(v6 + 834) = 16675;
          v12 = v6;
          v13 = 35;
          goto LABEL_28;
        }

LABEL_39:
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetSEPipeStatusProc:Unknwon Value in Pipe Status GetConfig");
        goto LABEL_23;
      }

      *(v6 + 834) = -1;
LABEL_31:
      v15 = "UICC Conn Pipe Updated Status- Deleted";
      goto LABEL_41;
    }

LABEL_20:
    v9 = "phLibNfc_GetSEPipeStatusProc :Invalid Length";
    goto LABEL_21;
  }

  if (v7 == 2)
  {
    if ((a3[5] & 0x10) != 0)
    {
      if ((a3[583] & 2) == 0)
      {
        goto LABEL_23;
      }

      if (a3[1126])
      {
        if (a3[1126] == 1)
        {
          *(v6 + 832) = 16650;
          v12 = v6;
          v13 = 10;
LABEL_28:
          sub_297EEAD30(v12, v13);
          v15 = "UICC Conn Pipe Updated Status- Open";
LABEL_41:
          sub_297E4E0B0(1, a1 + 9792, 4u, 4u, v15);
          goto LABEL_23;
        }

        goto LABEL_39;
      }

      *(v6 + 832) = -1;
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  if (v7 != 1 || (a3[5] & 0x10) == 0)
  {
    goto LABEL_20;
  }

  if ((a3[583] & 1) == 0)
  {
    goto LABEL_35;
  }

  if (!a3[1125])
  {
    *(v6 + 818) = -1;
    v8 = "eSE Conn Pipe Updated Status- Deleted";
    goto LABEL_33;
  }

  if (a3[1125] == 1)
  {
    *(v6 + 818) = 16662;
    v8 = "eSE Conn Pipe Updated Status- Open";
LABEL_33:
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, v8);
    goto LABEL_35;
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_GetSEPipeStatusProc:Unknwon Value in Pipe Status GetConfig");
LABEL_35:
  if ((a3[582] & 0x80) != 0)
  {
    if (!a3[1124])
    {
      *(v6 + 816) = -1;
      v15 = "eSE APDU Pipe Updated Status- Deleted";
      goto LABEL_41;
    }

    if (a3[1124] == 1)
    {
      *(v6 + 816) = -4071;
      sub_297EEAD30(v6, 25);
      v15 = "eSE APDU Pipe Updated Status- Open";
      goto LABEL_41;
    }

    goto LABEL_39;
  }

LABEL_23:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetSEPipeStatusProc");
  return a2;
}

uint64_t sub_297EA8610(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_OpenLogConn");
  if (!a2)
  {
    if (*(a1 + 362))
    {
      *(a1 + 557) = 0;
      a2 = sub_297EBB058(*(a1 + 3088), *(a1 + 392), sub_297E5BA84, a1);
    }

    else
    {
      a2 = 255;
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_OpenLogConn");
  return a2;
}

uint64_t sub_297EA86AC(uint64_t a1, int a2)
{
  v6 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_OpenLogConnProcess");
  v4 = 255;
  if (a1)
  {
    if (!a2)
    {
      *(a1 + 2929) = 0;
      *(a1 + 592) = 0;
      sub_297E99840(*(a1 + 512));
      v4 = sub_297E9903C(*(a1 + 512), *(a1 + 9792));
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phHciNfc_RegisterForEvents:Connectivity Pipe");
      LODWORD(v6) = 1;
      BYTE4(v6) = 22;
      sub_297E9D594(*(a1 + 512), &v6, sub_297E9EB60, *(a1 + 512));
      if (*(a1 + 2992) == 1 && *(a1 + 366) == 3)
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phHciNfc_RegisterForEvents:APDU Pipe");
        LODWORD(v6) = 1;
        BYTE4(v6) = 25;
        sub_297E9D594(*(a1 + 512), &v6, sub_297EEA5A4, *(a1 + 512));
        LODWORD(v6) = 1;
        BYTE4(v6) = 39;
        sub_297E9D594(*(a1 + 512), &v6, sub_297EEA5A4, *(a1 + 512));
        LODWORD(v6) = 1;
        BYTE4(v6) = 40;
        sub_297E9D594(*(a1 + 512), &v6, sub_297EEA5A4, *(a1 + 512));
        LODWORD(v6) = 1;
        BYTE4(v6) = 41;
        sub_297E9D594(*(a1 + 512), &v6, sub_297EEA5A4, *(a1 + 512));
      }
    }
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_OpenLogConnProcess");
  return v4;
}

uint64_t sub_297EA8860(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetNfceeSessionId");
  if (a1 && !a2)
  {
    if (*(a1 + 362) >= 2u)
    {
      v4 = *(a1 + 365);
      v5 = *(a1 + 366);
      v6 = *(a1 + 367);
      v7 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_GetNfceeSessionId: Se Count greater than 1");
      v8 = *(*(a1 + 560) + 8);
      if (v8 == 1)
      {
        if ((v5 & 0xFFFFFFFD) != 1)
        {
          goto LABEL_13;
        }

        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_GetNfceeSessionId: eSE is connected/power enabled");
        if (*(a1 + 552) != 1)
        {
          sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_GetNfceeSessionId: Poll for eSE Session ID enabled");
          *(a1 + 3612) |= 0x2000u;
          v9 = *(a1 + 4752) | 0x80;
          goto LABEL_21;
        }

        v10 = "phLibNfc_GetNfceeSessionId: EoOp already received";
      }

      else
      {
        if (v8 == 7)
        {
          if (!*(a1 + 554))
          {
            if (v6 == 1)
            {
              *(a1 + 3612) |= 0x2000u;
              *(a1 + 4752) |= 0x20u;
              sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_GetNfceeSessionId: Poll for SE2 Session ID enabled");
LABEL_22:
              a2 = sub_297E60AC0(*(a1 + 3088), a1 + 3608, sub_297E5BA84, a1);
              goto LABEL_14;
            }

            goto LABEL_13;
          }
        }

        else if (v8 == 2 && !*(a1 + 553))
        {
          if ((v4 & 0xFFFFFFFD) == 1)
          {
            sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_GetNfceeSessionId: Poll for UICC Session ID enabled");
            *(a1 + 3612) |= 0x2000u;
            v9 = *(a1 + 4752) | 0x40;
LABEL_21:
            *(a1 + 4752) = v9;
            goto LABEL_22;
          }

          goto LABEL_13;
        }

        v10 = "phLibNfc_GetNfceeSessionId: No NFCEE Ntf (UICC or eSE) received";
      }

      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, v10);
    }

LABEL_13:
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_GetNfceeSessionId: No need to poll for Session ID");
    sub_297E79734(a1, *(a1 + 2960), 1);
    a2 = 0;
  }

LABEL_14:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_GetNfceeSessionId");
  return a2;
}

uint64_t sub_297EA8AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_VerifyNfceeSessionId");
  if (!a1)
  {
    goto LABEL_21;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  if (!a3)
  {
    goto LABEL_21;
  }

  sub_297E79690(a1, 1);
  if (*(a1 + 362) < 2u)
  {
    goto LABEL_21;
  }

  v6 = *(*(a1 + 560) + 8);
  if (v6 != 1)
  {
    if (v6 == 7)
    {
      if ((*(a3 + 5) & 0x20) != 0 && (*(a3 + 1144) & 0x20) != 0)
      {
        v8 = *(a1 + 9792);
        if (phOsalNfc_MemCompare())
        {
          *(a1 + 554) = 1;
          goto LABEL_19;
        }

        goto LABEL_24;
      }
    }

    else if (v6 == 2 && (*(a3 + 5) & 0x20) != 0 && (*(a3 + 1144) & 0x40) != 0)
    {
      v7 = *(a1 + 9792);
      if (phOsalNfc_MemCompare())
      {
        *(a1 + 553) = 1;
LABEL_19:
        *(a1 + 2929) = 0;
LABEL_20:
        *(a1 + 592) = 0;
        goto LABEL_21;
      }

      goto LABEL_24;
    }

LABEL_18:
    *(a1 + 552) = 0;
    *(a1 + 554) = 0;
    goto LABEL_19;
  }

  if ((*(a3 + 5) & 0x20) == 0 || (*(a3 + 1144) & 0x80) == 0)
  {
    goto LABEL_18;
  }

  v11 = *(a1 + 9792);
  if (phOsalNfc_MemCompare())
  {
    *(a1 + 552) = 1;
    goto LABEL_19;
  }

LABEL_24:
  if (!*(a1 + 2929))
  {
    goto LABEL_20;
  }

  v12 = *(a1 + 2929) - 1;
  *(a1 + 2929) = v12;
  if (!v12)
  {
    *(a1 + 556) = 1;
  }

LABEL_21:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_VerifyNfceeSessionId");
  v9 = *MEMORY[0x29EDCA608];
  return a2;
}

uint64_t sub_297EA8C7C(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  memset(v8, 0, 512);
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ClearEseSessionIdSeq");
  if (a1 && (v2 = *(a1 + 512)) != 0)
  {
    if (*(v2 + 816) == 255 || *(v2 + 818) == 255)
    {
      v4 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      DWORD1(v8[0]) |= 0x2000u;
      v9 |= 0x80u;
      v5 = *(a1 + 9792);
      phOsalNfc_SetMemory();
      v3 = sub_297E64020(*(a1 + 3088), v8, sub_297E5BA84, a1);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ClearEseSessionIdSeq");
  v6 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t sub_297EA8DF4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ClearEseSessionIdProc");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_ClearEseSessionIdProc: Set Session ID Failed");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_ClearEseSessionIdProc: Set Session ID Successful");
      *(a1 + 557) = 1;
    }
  }

  else
  {
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ClearEseSessionIdProc");
  return a2;
}

uint64_t sub_297EA8EB4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_DisableNfceeDisc");
  if (a1)
  {
    if (*(a1 + 504) == 1)
    {
      v2 = sub_297F05720(*(a1 + 3088), sub_297E5BA84, a1);
    }

    else
    {
      *(a1 + 592) = 0;
      *(a1 + 2929) = 0;
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_DisableNfceeDisc:Set Mode Skipped as HCI Network is not Enabled");
      sub_297E79734(a1, *(a1 + 2960), 1);
      v2 = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_DisableNfceeDisc Invalid Lib Context");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_DisableNfceeDisc");
  return v2;
}

uint64_t sub_297EA8FA4(uint64_t a1, uint64_t a2)
{
  sub_297E687D8(2, a2, a1, 4u, 4u, "phLibNfc_NfceeNtfDelayCb");
  sub_297E4E1B4(2, a2, 4u, 5u, "phLibNfc_NfceeNtfDelayCb");
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(&unk_2A18BDDC0 + 14 * v4 + 2);
      if (v3)
      {
        break;
      }

      v3 = 1;
      v4 = 1;
    }

    while (v5 != a2);
    if (v5 == a2)
    {
      *(a2 + 753) = 0;
      sub_297E4E0B0(1, a2 + 9792, 4u, 4u, "phLibNfc_NfceeNtfDelayCb: Timer expired");
      v6 = *(a2 + 9792);
      phOsalNfc_Timer_Stop();
      v7 = *(a2 + 9792);
      phOsalNfc_Timer_Delete();
      *(a2 + 584) = 0xFFFFFFFFFFFFLL;
      sub_297E5588C(a2, 0, 0);
    }
  }

  return sub_297E4DFAC(2, a2, 4u, 5u, "phLibNfc_NfceeNtfDelayCb");
}

uint64_t sub_297EA90CC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_297E4E1B4(2, a2, 4u, 5u, "phLibNfc_MultiTagNtfWaitTimeOutCb");
  if (!v2)
  {
    goto LABEL_6;
  }

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

  while (v6 != v2);
  if (v6 != v2)
  {
LABEL_6:
    sub_297E4E0B0(2, v2, 4u, 1u, "phLibNfc_MultiTagNtfWaitTimeOutCb:Invalid Context");
    return sub_297E4DFAC(2, v2, 4u, 5u, "phLibNfc_MultiTagNtfWaitTimeOutCb");
  }

  if (!*(v2 + 6084))
  {
    v7 = *(v2 + 9792);
    v8 = *(v2 + 3240);
    phOsalNfc_Timer_Stop();
    v9 = *(v2 + 9792);
    v10 = *(v2 + 3240);
    if (!phOsalNfc_Timer_Start())
    {
      sub_297E4E0B0(1, v2 + 9792, 4u, 4u, "MultiTag Detection NTF Timer Restarted for extended time");
      *(v2 + 6084) = 1;
      return sub_297E4DFAC(2, v2, 4u, 5u, "phLibNfc_MultiTagNtfWaitTimeOutCb");
    }

    sub_297E4E0B0(1, v2 + 9792, 4u, 1u, "MultiTag Detection NTF Timer failed to start for extended time");
  }

  v11 = *(v2 + 9792);
  phOsalNfc_SetMemory();
  *(v2 + 6084) = 0;
  sub_297E687D8(2, v2, a1, 4u, 4u, "phLibNfc_MultiTagNtfWaitTimeOutCb");
  sub_297E4E0B0(1, v2 + 9792, 4u, 2u, "****** Multi-Tag Ntf Wait Timer Expired********");
  v12 = *(v2 + 3240);
  if (v12 && v12 != 0xFFFFFFFFFFFFLL)
  {
    v13 = *(v2 + 9792);
    phOsalNfc_Timer_Stop();
    v14 = *(v2 + 9792);
    v15 = *(v2 + 3240);
    phOsalNfc_Timer_Delete();
    *(v2 + 3240) = 0xFFFFFFFFFFFFLL;
  }

  sub_297F09BB4(*(v2 + 3088), 0);
  sub_297F09B18(*(v2 + 3088), 0);
  v16 = *(v2 + 3000);
  if (phTmlNfc_IoCtl())
  {
    goto LABEL_19;
  }

  v17 = *(v2 + 3000);
  if (*(v2 + 3224) == 1)
  {
    if (phTmlNfc_IoCtl())
    {
LABEL_19:
      v19 = "phLibNfc_MultiTagNtfWaitTimeOutCb:Power up failed";
LABEL_20:
      sub_297E4E0B0(1, v2 + 9792, 4u, 1u, v19);
      sub_297EA93C8(v2, 255);
      v2 = 0;
      return sub_297E4DFAC(2, v2, 4u, 5u, "phLibNfc_MultiTagNtfWaitTimeOutCb");
    }

    v18 = sub_297EA76A4(*(v2 + 9792), *(v2 + 3000));
  }

  else
  {
    v18 = phTmlNfc_IoCtl();
  }

  if (v18)
  {
    goto LABEL_19;
  }

  v21 = *(v2 + 3000);
  if (phTmlNfc_ReadAbort())
  {
    v19 = "phLibNfc_MultiTagNtfWaitTimeOutCb:Read Abort failed";
    goto LABEL_20;
  }

  *(v2 + 3278) = 1;
  *(v2 + 2960) = off_2A1A90EA8;
  *(v2 + 2952) = 0;
  *(v2 + 2954) = 0;
  v22 = off_2A1A90EA8[0];
  if (off_2A1A90EA8[0])
  {
    v22 = 0;
    v23 = off_2A1A90EB8;
    do
    {
      ++v22;
      v24 = *v23;
      v23 += 2;
    }

    while (v24);
  }

  *(v2 + 2953) = v22;
  if (sub_297E5588C(v2, 0, v2 + 3278) != 13)
  {
    v19 = "phLibNfc_MultiTagNtfWaitTimeOutCb:Init Failed";
    goto LABEL_20;
  }

  return sub_297E4DFAC(2, v2, 4u, 5u, "phLibNfc_MultiTagNtfWaitTimeOutCb");
}

uint64_t sub_297EA93C8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v16 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ReleaseLibNfcContext");
  if (v3)
  {
    v4 = *(v3 + 9784);
    sub_297E5D114(*(v3 + 3000), &v16);
    if (!*(v3 + 552) && *(v3 + 440))
    {
      --*(v3 + 362);
      *(v3 + 440) = 0;
      *(v3 + 448) = 0;
    }

    if (!*(v3 + 553) && *(v3 + 424))
    {
      --*(v3 + 362);
      *(v3 + 424) = 0;
      *(v3 + 432) = 0;
    }

    if (!*(v3 + 554) && *(v3 + 456))
    {
      --*(v3 + 362);
      *(v3 + 456) = 0;
      *(v3 + 464) = 0;
    }

    *(v3 + 744) = 0;
    v5 = *(v3 + 9792);
    phOsalNfc_SetMemory();
    if (a2)
    {
      sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "LibNfc Init/Re-init Failed");
      if (*(v3 + 2931) == 1)
      {
        goto LABEL_18;
      }

      if (*(v3 + 3224) == 1)
      {
        if (sub_297EA76A4(*(v3 + 9792), *(v3 + 3000)))
        {
LABEL_15:
          sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "phLibNfc_ReleaseLibNfcContext:Powering OFF NFCC Failed");
          goto LABEL_18;
        }
      }

      else
      {
        v6 = *(v3 + 3000);
        if (phTmlNfc_IoCtl())
        {
          goto LABEL_15;
        }
      }

      sub_297E4E0B0(1, v3 + 9792, 4u, 4u, "phLibNfc_ReleaseLibNfcContext:Powering OFF NFCC Success");
LABEL_18:
      if (*(v3 + 6104) || v16 && *(v16 + 16))
      {
        sub_297E4F450(*(v3 + 9784), 119, a2, 0, v3);
      }

      if (*(v3 + 6152))
      {
        sub_297E4F450(*(v3 + 9784), 119, a2, 0, 0);
        sub_297EF8C70(v3, a2);
      }

      if (*(v3 + 2931))
      {
        v7 = *(v3 + 2936);
        if (v7 && v7 != 0xFFFFFFFFFFFFLL)
        {
          v8 = *(v3 + 9792);
          phOsalNfc_Timer_Stop();
          sub_297E687D8(1, v3 + 9792, *(v3 + 2936), 4u, 4u, "phLibNfc_ReleaseLibNfcContext");
          v9 = *(v3 + 9792);
          v10 = *(v3 + 2936);
          phOsalNfc_Timer_Delete();
          *(v3 + 2936) = 0;
          *(v3 + 2928) = 0;
        }

        *(v3 + 2931) = 0;
      }

      else
      {
        v11 = (sub_297E55EF8(v3, *(v3 + 2960)) & 0x3F) << 11;
        if (*(v3 + 9792))
        {
          v12 = &gphNfc_DebugInfo_Sec;
        }

        else
        {
          v12 = &gphNfc_DebugInfo_Prim;
        }

        v13 = v11 | ((*(v3 + 2952) & 0x1F) << 6) | *v12 & 0xFFFE003F;
        v12[1] = ((*(v3 + 366) & 3) << 22) | ((*(v3 + 365) & 3) << 20) | v12[1] & 0xFF0FFFFF;
        if (*(v3 + 2984) == 1)
        {
          v14 = v13 & 0xFFFFFFCF | (16 * (*(v3 + 367) & 3));
        }

        else
        {
          v14 = v13 & 0xFFFFFFCF;
        }

        *v12 = v14;
        sub_297EA7418(v3);
        sub_297F080D4(*(v3 + 3088), 2, 0, 0);
        *(v3 + 3088) = 0;
        sub_297EA9F80(v3);
        sub_297E9F3BC(v4, 0);
        v3 = 0;
      }
    }
  }

  return sub_297E4DFAC(2, v3, 4u, 5u, "phLibNfc_ReleaseLibNfcContext");
}

uint64_t sub_297EA9708(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a2, 4u, 5u, "phLibNfc_BootVenResetTimeOutCb");
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 2);
    if (v3)
    {
      break;
    }

    v3 = 1;
    v4 = 1;
  }

  while (v5 != a2);
  if (v5 == a2)
  {
    v6 = *(a2 + 3232);
    if (v6 && v6 != 0xFFFFFFFFFFFFLL)
    {
      v7 = *(a2 + 9792);
      phOsalNfc_Timer_Stop();
      v8 = *(a2 + 9792);
      v9 = *(a2 + 3232);
      phOsalNfc_Timer_Delete();
      *(a2 + 3232) = 0xFFFFFFFFFFFFLL;
    }

    *(a2 + 3216) = 0;
    sub_297EA9800(a2, 307);
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a2, 4u, 1u, "phLibNfc_BootVenResetTimeOutCb:Invalid Context");
  }

  return sub_297E4DFAC(2, a2, 4u, 5u, "phLibNfc_BootVenResetTimeOutCb");
}

uint64_t sub_297EA9800(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_InitializeAfterVenReset");
  if (v3)
  {
    if (a2)
    {
      sub_297E4E0B0(1, v3 + 9792, 4u, 4u, "phLibNfc_InitializeAfterVenReset invoked with failure status");
      v4 = v3;
      v5 = a2;
LABEL_11:
      sub_297EA93C8(v4, v5);
      v6 = 0;
      v3 = 0;
      goto LABEL_12;
    }

    *(v3 + 3278) = 0;
    *(v3 + 2960) = off_2A1A90EA8;
    *(v3 + 2952) = 0;
    *(v3 + 2954) = 0;
    v7 = off_2A1A90EA8[0];
    if (off_2A1A90EA8[0])
    {
      v7 = 0;
      v8 = off_2A1A90EB8;
      do
      {
        ++v7;
        v9 = *v8;
        v8 += 2;
      }

      while (v9);
    }

    *(v3 + 2953) = v7;
    if (sub_297E5588C(v3, 0, v3 + 3278) != 13)
    {
      sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "phLibNfc_InitializeAfterVenReset:Init Failed");
      v4 = v3;
      v5 = 255;
      goto LABEL_11;
    }

    v6 = 0;
  }

  else
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_InitializeAfterVenReset:Invalid Context");
    v6 = 49;
  }

LABEL_12:
  sub_297E4DFAC(2, v3, 4u, 5u, "phLibNfc_InitializeAfterVenReset");
  return v6;
}

uint64_t sub_297EA9948(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a2, 4u, 5u, "phLibNfc_GetSessionVenResetTimeOutCb");
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 2);
    if (v3)
    {
      break;
    }

    v3 = 1;
    v4 = 1;
  }

  while (v5 != a2);
  if (v5 == a2)
  {
    v6 = *(a2 + 3232);
    if (v6 && v6 != 0xFFFFFFFFFFFFLL)
    {
      v7 = *(a2 + 9792);
      phOsalNfc_Timer_Stop();
      v8 = *(a2 + 9792);
      v9 = *(a2 + 3232);
      phOsalNfc_Timer_Delete();
      *(a2 + 3232) = 0xFFFFFFFFFFFFLL;
    }

    *(a2 + 3216) = 0;
    sub_297EA9A40(a2, 307);
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a2, 4u, 1u, "phLibNfc_BootVenResetTimeOutCb:Invalid Context");
  }

  return sub_297E4DFAC(2, a2, 4u, 5u, "phLibNfc_GetSessionVenResetTimeOutCb");
}

uint64_t sub_297EA9A40(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v13 = 0;
  v14 = 0;
  v12 = 8;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_GetSessionAfterVenReset");
  if (!v3)
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "phLibNfc_GetSessionAfterVenReset:Invalid Context");
    v6 = 49;
    goto LABEL_6;
  }

  if (a2)
  {
    sub_297E4E0B0(1, v3 + 9792, 4u, 4u, "phLibNfc_GetSessionAfterVenReset invoked with failure status");
    v4 = v3;
    v5 = a2;
LABEL_4:
    sub_297EA93C8(v4, v5);
    v6 = 0;
    v3 = 0;
    goto LABEL_6;
  }

  sub_297E5F164(*(v3 + 3000), &v12);
  sub_297ED0A64(*(v3 + 3000), v12);
  sub_297E67F6C(*(v3 + 3000), &v14);
  sub_297E5D114(*(v3 + 3000), &v13);
  v6 = 255;
  if (v14 && v13)
  {
    if (sub_297F0E83C(*(v14 + 48)) == 13)
    {
      v8 = v13;
      *(v13 + 91) = 1;
      *(v8 + 88) = 0;
      *(v3 + 2960) = off_2A1A92CC0;
      *(v3 + 2952) = 0;
      *(v3 + 2954) = 0;
      v9 = off_2A1A92CC0[0];
      if (off_2A1A92CC0[0])
      {
        v9 = 0;
        v10 = &qword_2A1A92CD0;
        do
        {
          ++v9;
          v11 = *v10;
          v10 += 2;
        }

        while (v11);
      }

      *(v3 + 2953) = v9;
      if (sub_297E5588C(v3, 0, 0) == 13)
      {
        v6 = 0;
        goto LABEL_6;
      }
    }

    sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "phLibNfc_GetSessionAfterVenReset:Get Session state sequence failed");
    sub_297E7EB8C(*(v3 + 3000));
    v4 = v3;
    v5 = 255;
    goto LABEL_4;
  }

LABEL_6:
  sub_297E4DFAC(2, v3, 4u, 5u, "phLibNfc_GetSessionAfterVenReset");
  return v6;
}

uint64_t sub_297EA9C00(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_StaticListenModeRouting");
  if (!a1)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(&unk_2A18BDDC0 + 14 * v3 + 2);
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
    *(a1 + 592) = 100;
    *(a1 + 2929) = 10;
    *(a1 + 2960) = off_2A1A90D58;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v7 = off_2A1A90D58[0];
    if (off_2A1A90D58[0])
    {
      v7 = 0;
      v8 = off_2A1A90D68;
      do
      {
        ++v7;
        v9 = *v8;
        v8 += 2;
      }

      while (v9);
    }

    *(a1 + 2953) = v7;
    v10 = sub_297E5588C(a1, 0, 0);
    v5 = v10;
    if (v10 != 13)
    {
      if (v10)
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_StaticListenModeRouting: Listen Mode Routing sequence could not start!");
        v5 = 255;
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "phLibNfc_StaticListenModeRouting: gphLibNfc_staticFeatureConfig returned SUCCESS");
        v5 = 13;
      }
    }
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_StaticListenModeRouting");
  return v5;
}

uint64_t sub_297EA9D50(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_NfceeInitializeComplete");
  if (!v3)
  {
    v5 = "phLibNfc_NfceeInitializeComplete:Invalid Context";
    v6 = 2;
    v7 = 0;
LABEL_8:
    sub_297E4E0B0(v6, v7, 4u, 1u, v5);
    a2 = 255;
    goto LABEL_9;
  }

  if (!a2)
  {
    if (*(v3 + 557) == 1)
    {
      sub_297E4E0B0(1, v3 + 9792, 4u, 4u, "eSE Re-initialization Sequence");
      *(v3 + 2960) = off_2A1A93210;
      *(v3 + 2952) = 0;
      *(v3 + 2954) = 0;
      v9 = off_2A1A93210[0];
      if (off_2A1A93210[0])
      {
        v9 = 0;
        v10 = off_2A1A93220;
        do
        {
          ++v9;
          v11 = *v10;
          v10 += 2;
        }

        while (v11);
      }

      *(v3 + 2953) = v9;
      if (sub_297E5588C(v3, 0, 0) != 13)
      {
        v5 = "phLibNfc_NfceeInitializeComplete:Could not start!";
        v7 = v3 + 9792;
        v6 = 1;
        goto LABEL_8;
      }

LABEL_26:
      a2 = 13;
      goto LABEL_9;
    }

    *(v3 + 370) = 2;
    v12 = *(v3 + 560);
    if (v12)
    {
      v13 = *(v12 + 8);
      if (v13 == 7)
      {
        goto LABEL_24;
      }

      if (v13 != 1)
      {
        goto LABEL_25;
      }

      if (*(v3 + 2984) == 1)
      {
        v14 = sub_297EECC30(v3, 4u);
        if (v14 != 255)
        {
          goto LABEL_30;
        }
      }

      if ((*(v3 + 2992) != 1 || *(v3 + 553) != 1) && *(v3 + 365) == 1)
      {
LABEL_24:
        v14 = sub_297EECC30(v3, 2u);
        if (v14 == 255)
        {
          goto LABEL_25;
        }

LABEL_30:
        a2 = v14;
        goto LABEL_9;
      }
    }

LABEL_25:
    if (sub_297EA9C00(v3) != 13)
    {
      sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "phLibNfc_NfceeInitializeComplete: Listen Mode Routing sequence could not start!");
      a2 = 255;
      if (*(v3 + 2931) == 1)
      {
        v4 = 137;
      }

      else
      {
        v4 = 255;
      }

      goto LABEL_6;
    }

    goto LABEL_26;
  }

  sub_297E4E0B0(1, v3 + 9792, 4u, 1u, "phLibNfc_NfceeInitializeComplete: HCI Child Device initialization Failed");
  if (*(v3 + 2931) == 1)
  {
    v4 = 137;
  }

  else
  {
    v4 = 255;
  }

LABEL_6:
  sub_297EA93C8(v3, v4);
  v3 = 0;
LABEL_9:
  sub_297E4DFAC(2, v3, 4u, 5u, "phLibNfc_NfceeInitializeComplete");
  return a2;
}

uint64_t sub_297EA9F80(uint64_t a1)
{
  v1 = a1;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ReleaseMemory");
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(&unk_2A18BDDC0 + 14 * v3 + 2);
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (v4 != v1);
  if (v4 == v1)
  {
    sub_297EE6F64(v1);
    sub_297EE905C(v1);
    if (*(v1 + 3096))
    {
      v5 = *(v1 + 9792);
      phOsalNfc_FreeMemory();
      *(v1 + 3096) = 0;
    }

    if (*(v1 + 6176))
    {
      v6 = *(v1 + 9792);
      phOsalNfc_FreeMemory();
      *(v1 + 6176) = 0;
    }

    if (*(v1 + 376))
    {
      v7 = *(v1 + 9792);
      phOsalNfc_FreeMemory();
      *(v1 + 376) = 0;
    }

    if (*(v1 + 5888))
    {
      v8 = *(v1 + 9792);
      phOsalNfc_FreeMemory();
      *(v1 + 5888) = 0;
    }

    if (*(v1 + 24))
    {
      v9 = *(v1 + 9792);
      phOsalNfc_FreeMemory();
      *(v1 + 24) = 0;
    }

    sub_297ECF904(v1);
    sub_297ECAE1C(v1);
    sub_297E56C78(*(v1 + 9784));
    if (*(v1 + 2664))
    {
      v10 = *(v1 + 9792);
      phOsalNfc_FreeMemory();
      *(v1 + 2664) = 0;
    }

    v11 = *(v1 + 2752);
    if (v11)
    {
      if (*(v11 + 32))
      {
        v12 = *(v1 + 9792);
        v13 = *(v11 + 32);
        phOsalNfc_FreeMemory();
        v11 = *(v1 + 2752);
        *(v11 + 32) = 0;
      }

      if (*(v11 + 48))
      {
        v14 = *(v1 + 9792);
        v15 = *(v11 + 48);
        phOsalNfc_FreeMemory();
        *(*(v1 + 2752) + 48) = 0;
      }

      v16 = *(v1 + 9792);
      phOsalNfc_FreeMemory();
      *(v1 + 2752) = 0;
    }

    v17 = *(v1 + 2744);
    if (v17)
    {
      if (*(v17 + 32))
      {
        v18 = *(v1 + 9792);
        v19 = *(v17 + 32);
        phOsalNfc_FreeMemory();
        v17 = *(v1 + 2744);
        *(v17 + 32) = 0;
      }

      if (*(v17 + 48))
      {
        v20 = *(v1 + 9792);
        v21 = *(v17 + 48);
        phOsalNfc_FreeMemory();
        *(*(v1 + 2744) + 48) = 0;
      }

      v22 = *(v1 + 9792);
      phOsalNfc_FreeMemory();
      *(v1 + 2744) = 0;
    }

    if (*(v1 + 320))
    {
      v23 = *(v1 + 9792);
      phOsalNfc_FreeMemory();
      *(v1 + 320) = 0;
    }

    if (*(v1 + 336))
    {
      v24 = *(v1 + 9792);
      phOsalNfc_FreeMemory();
      *(v1 + 336) = 0;
    }

    if (*(v1 + 288))
    {
      v25 = *(v1 + 9792);
      phOsalNfc_FreeMemory();
      *(v1 + 288) = 0;
    }

    if (*(v1 + 304))
    {
      v26 = *(v1 + 9792);
      phOsalNfc_FreeMemory();
      *(v1 + 304) = 0;
    }

    if (*(v1 + 6056))
    {
      v27 = *(v1 + 9792);
      phOsalNfc_FreeMemory();
      *(v1 + 6056) = 0;
    }

    if (*(v1 + 536))
    {
      v28 = *(v1 + 9792);
      phOsalNfc_FreeMemory();
      *(v1 + 536) = 0;
    }

    if (*(v1 + 3280))
    {
      v29 = *(v1 + 9792);
      phOsalNfc_FreeMemory();
      *(v1 + 3280) = 0;
    }

    v30 = *(v1 + 9792);
    phOsalNfc_FreeMemory();
    v1 = 0;
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, v1, 4u, 4u, "Releasing Lib context has already been done");
  }

  return sub_297E4DFAC(2, v1, 4u, 5u, "phLibNfc_ReleaseMemory");
}

uint64_t sub_297EAA214(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_StopSEInitTimer");
  v2 = *(a1 + 584);
  if (*(a1 + 2960) == off_2A1A93270 && v2 != 0xFFFFFFFFFFFFLL)
  {
    if (!*(a1 + 592))
    {
      goto LABEL_32;
    }

    v3 = *(a1 + 366) - 1;
    v4 = *(a1 + 365) - 1;
    v5 = *(a1 + 367) - 1;
    if (((v4 | v3 | v5) & 0xFD) == 0 && *(a1 + 2984) == 1)
    {
      if (*(a1 + 552) != 1)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    if (((v4 | v3) & 0xFD) != 0)
    {
      if (((v5 | v3) & 0xFD) == 0)
      {
        v9 = *(a1 + 552);
LABEL_28:
        if (v9 != 1)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      if (((v5 | v4) & 0xFD) != 0)
      {
        if ((v3 & 0xFD) == 0 && *(a1 + 552) == 1 || (v4 & 0xFD) == 0 && *(a1 + 553) == 1)
        {
LABEL_31:
          sub_297EA8FA4(v2, a1);
          goto LABEL_32;
        }

        if ((v5 & 0xFD) != 0)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

LABEL_24:
      v9 = *(a1 + 553);
      goto LABEL_28;
    }

    if (*(a1 + 552) != 1)
    {
      goto LABEL_32;
    }

LABEL_26:
    v8 = *(a1 + 553);
    goto LABEL_30;
  }

  if (v2 != 0xFFFFFFFFFFFFLL && *(a1 + 592))
  {
    v7 = *(*(a1 + 560) + 8);
    if (v7 == 7)
    {
LABEL_29:
      v8 = *(a1 + 554);
      goto LABEL_30;
    }

    if (v7 != 2)
    {
      if (v7 != 1)
      {
        goto LABEL_32;
      }

      v8 = *(a1 + 552);
LABEL_30:
      if (v8 != 1)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    goto LABEL_26;
  }

LABEL_32:

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_StopSEInitTimer");
}

uint64_t sub_297EAA3C4(uint64_t a1, int a2)
{
  v15 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ShutdownCb");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "Lower layer has passed Null Libnfc context");
    sub_297E4E0B0(2, 0, 4u, 1u, "Lower layer may have some issue");
    if (a2)
    {
      sub_297E4E0B0(2, 0, 4u, 1u, "Lower layer Reset Failed");
    }

    goto LABEL_16;
  }

  if (!a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(&unk_2A18BDDC0 + 14 * v9 + 2);
      if (v8)
      {
        break;
      }

      v8 = 1;
      v9 = 1;
    }

    while (v10 != a1);
    if (v10 == a1)
    {
      v7 = 0;
      goto LABEL_20;
    }

LABEL_16:
    v11 = "phLibNfc_ShutdownCb:Libnfc context is Null, Can't do anything";
    v12 = 2;
    v13 = a1;
LABEL_17:
    sub_297E4E0B0(v12, v13, 4u, 1u, v11);
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ShutdownCb");
  }

  sub_297E4E0B0(2, a1, 4u, 1u, "Lower layer Reset Failed");
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

  while (v6 != a1);
  if (v6 != a1)
  {
    goto LABEL_16;
  }

  if (*(a1 + 3224) == 1)
  {
    v7 = 288;
  }

  else
  {
    v7 = 0;
  }

LABEL_20:
  if (*(a1 + 6392))
  {
    *(a1 + 6392) = 0;
    *(a1 + 6400) = 0;
  }

  v15 = *(a1 + 9784);
  if (sub_297E4F450(v15, 118, v7, a1 + 9784, a1))
  {
    v11 = "State Machine has rejected the event!!!";
    v13 = &v15;
    v12 = 0;
    goto LABEL_17;
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ShutdownCb");
}

uint64_t sub_297EAA598(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_Invoke_Pending_Cb");
  if (a1)
  {
    if (sub_297EE6074(a1))
    {
      v2 = sub_297ECB9EC(a1);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_Invoke_Pending_Cb");
  return v2;
}

uint64_t sub_297EAA620(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4, unsigned __int8 *a5)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_UpdateRtngCfg");
  v10 = 1;
  if (a2)
  {
    if (a4)
    {
      if (a5)
      {
        *a5 = 0;
        if (a3)
        {
          v11 = 0;
          v12 = a3;
          v13 = 1;
          while (1)
          {
            v14 = *a4;
            if (!*a4)
            {
              break;
            }

            if (v14 != 255)
            {
              v15 = a2 + 32 * v11;
              v16 = *(v14 + 1);
              v17 = a1;
              v18 = a4;
LABEL_10:
              if (sub_297EAA760(v17, v15, v18, v16))
              {
                v10 = 1;
                sub_297E4E0B0(2, a1, 4u, 1u, "phLibNfc_UpdateRtngCfg:Update routing config failed!");
                goto LABEL_18;
              }

              v13 = 0;
              if (v11 < 0xFEu)
              {
                ++v11;
              }
            }

            a4 += 5;
            if (!--v12)
            {
              if (v13)
              {
                v10 = 1;
              }

              else
              {
                v10 = 0;
                *a5 = v11;
              }

              goto LABEL_18;
            }
          }

          v15 = a2 + 32 * v11;
          v17 = a1;
          v18 = a4;
          v16 = 0;
          goto LABEL_10;
        }
      }
    }
  }

LABEL_18:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_UpdateRtngCfg");
  return v10;
}

uint64_t sub_297EAA760(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_UpdateRtngInfo");
  v8 = 1;
  if (a2 && a3)
  {
    v9 = *(a3 + 8);
    if (v9 == 2)
    {
      *a2 = 2;
      *(a2 + 4) = a4;
      v15 = *(a2 + 8) & 0xFB | (4 * ((*(a3 + 12) >> 2) & 1));
      *(a2 + 8) = v15;
      v16 = v15 & 0xFFFFFFFD | (2 * ((*(a3 + 12) >> 1) & 1));
      *(a2 + 8) = v16;
      *(a2 + 8) = v16 & 0xFE | *(a3 + 12) & 1;
      if (*(a3 + 32) > 0x10u)
      {
        v13 = "Invalid input AID size";
        goto LABEL_16;
      }

      v17 = *(a1 + 9792);
      phOsalNfc_MemCopy();
      v8 = 0;
      *(a2 + 28) = *(a3 + 32);
    }

    else
    {
      if (v9 == 1)
      {
        *a2 = 1;
        *(a2 + 4) = a4;
        v14 = *(a2 + 8) & 0xFB | (4 * ((*(a3 + 12) >> 2) & 1));
        *(a2 + 8) = v14;
        LOBYTE(v14) = v14 & 0xFD | (2 * ((*(a3 + 12) & 2) != 0));
        *(a2 + 8) = v14;
        *(a2 + 8) = v14 & 0xFE | *(a3 + 12) & 1;
        v12 = *(a3 + 16);
        if (v12 - 3 >= 3 && v12 != 160)
        {
          v13 = "Invalid Protocol from Upper Layer";
          goto LABEL_16;
        }
      }

      else
      {
        if (v9)
        {
          v13 = "Input SE handle not valid!";
          goto LABEL_16;
        }

        *a2 = 0;
        *(a2 + 4) = a4;
        v10 = *(a2 + 8) & 0xFB | (4 * ((*(a3 + 12) >> 2) & 1));
        *(a2 + 8) = v10;
        v11 = v10 & 0xFFFFFFFD | (2 * ((*(a3 + 12) >> 1) & 1));
        *(a2 + 8) = v11;
        *(a2 + 8) = v11 & 0xFE | *(a3 + 12) & 1;
        v12 = *(a3 + 16);
        if (v12 > 2)
        {
          v13 = "Invalid Technology from Upper Layer";
LABEL_16:
          sub_297E4E0B0(2, a1, 4u, 1u, v13);
          goto LABEL_17;
        }
      }

      v8 = 0;
      *(a2 + 12) = v12;
    }
  }

LABEL_17:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_UpdateRtngInfo");
  return v8;
}

uint64_t sub_297EAA940(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ValidateInputRtngInfo");
  v6 = 1;
  if (a2 && a1 && a3)
  {
    v7 = 0;
    do
    {
      v8 = *(a3 + 40 * v7);
      if (v8)
      {
        v9 = 0;
        while (v8 != *(a1 + 392 + v9))
        {
          v9 += 16;
          if (v9 == 80)
          {
            v6 = 1;
            sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "Input SE handle not valid!");
            goto LABEL_12;
          }
        }
      }

      ++v7;
    }

    while (v7 != a2);
    v6 = 0;
  }

LABEL_12:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ValidateInputRtngInfo");
  return v6;
}

uint64_t sub_297EAAA30(uint64_t a1)
{
  v6 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SM_ProcessDeInit");
  if (a1)
  {
    v2 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    v3 = *(a1 + 9784);
    v6 = v3;
    sub_297EA7418(a1);
    if (*(a1 + 3224) != 1)
    {
      v4 = *(a1 + 3000);
      phTmlNfc_IoCtl();
    }

    sub_297EAA598(a1);
    sub_297EA9F80(a1);
    sub_297E9F3BC(v3, 0);
  }

  sub_297E4DFAC(0, &v6, 4u, 5u, "phLibNfc_SM_ProcessDeInit");
  return 0;
}

uint64_t sub_297EAAAFC(uint64_t a1, int a2)
{
  v23 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_Recv4BResp");
  if (!a1)
  {
    v23 = 1;
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
    goto LABEL_32;
  }

  if (a2 || (v4 = *(a1 + 3808)) == 0 || (v5 = *(a1 + 3800)) == 0)
  {
    v11 = 255;
    v23 = 255;
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Data Receive Failed..");
    goto LABEL_30;
  }

  v6 = *(a1 + 4600);
  v7 = *(a1 + 80);
  if (*(v7 + 4) != 25 || *(v7 + 12) != 1)
  {
    if (v4 >= v6)
    {
      v4 = *(a1 + 4600);
    }

    v23 = 0;
    v12 = *(a1 + 6524);
    v13 = *(a1 + 4592);
    phOsalNfc_MemCopy();
    v11 = 0;
    *(a1 + 4600) = v4;
    goto LABEL_30;
  }

  v8 = v4 - 1;
  v9 = *(v5 + v4 - 1);
  if (v9 > 0xB0)
  {
    switch(v9)
    {
      case 0xB1u:
        v23 = 183;
        v10 = " 3B_PICC XchgData,PH_NCINFC_STATUS_RF_PROTOCOL_ERROR Detected by NFCC during Data Exchange ";
        goto LABEL_28;
      case 0xB2u:
        v23 = 178;
        v10 = " 3B_PICC XchgData,PH_NCINFC_STATUS_RF_TIMEOUT_ERROR Detected by NFCC during Data Exchange ";
        goto LABEL_28;
      case 0xB3u:
        v23 = 184;
        v10 = " 3B_PICC XchgData,PH_NCINFC_STATUS_RF_UNEXPECTED_DAT Detected by NFCC during Data Exchange ";
        goto LABEL_28;
    }

LABEL_24:
    v23 = 185;
    sub_297E96818(*(a1 + 6528), v9);
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, " 3B_PICC XchgData,Unknown RF related error Detected by NFCC during Data Exchange ");
    if (v4 <= v6)
    {
      v14 = *(a1 + 6524);
      v15 = *(a1 + 4592);
      v16 = *(a1 + 3800);
      phOsalNfc_MemCopy();
      *(a1 + 4600) = v4;
    }

    goto LABEL_29;
  }

  if (!*(v5 + v4 - 1))
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " 3B_PICC XchgData Request is Successful!! ..");
    if (v8 <= v6)
    {
      v20 = *(a1 + 6524);
      v21 = *(a1 + 4592);
      v22 = *(a1 + 3800);
      phOsalNfc_MemCopy();
      *(a1 + 4600) = v8;
    }

    else
    {
      v23 = 8;
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Mf XchgData,More Data available than requested  ..");
    }

    goto LABEL_29;
  }

  if (v9 == 2)
  {
    v23 = 181;
    v10 = " 3B_PICC XchgData,PH_NCINFC_STATUS_RF_FRAME_CORRUPTED Detected by NFCC during Data Exchange ";
    goto LABEL_28;
  }

  if (v9 != 176)
  {
    goto LABEL_24;
  }

  v23 = 182;
  v10 = " 3B_PICC XchgData,PH_NCINFC_STATUS_RF_TRANSMISSION_ERROR Detected by NFCC during Data Exchange ";
LABEL_28:
  sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v10);
LABEL_29:
  sub_297EFF5D8(a1, &v23);
  v11 = v23;
LABEL_30:
  *(a1 + 4632) = v11;
  if (*(a1 + 4640))
  {
    *(a1 + 4648) = 0;
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Freeing Send Request Payload Buffer..");
    v17 = *(a1 + 6524);
    v18 = *(a1 + 4640);
    phOsalNfc_FreeMemory();
    *(a1 + 4640) = 0;
  }

LABEL_32:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_Recv4BResp");
  return v23;
}

uint64_t sub_297EAADF8(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_Send4BData");
  if (a1)
  {
    v2 = *(a1 + 4552);
    if (v2)
    {
      if (*(a1 + 4584))
      {
        v3 = *(a1 + 6524);
        phOsalNfc_SetMemory();
        LODWORD(v15) = 0;
        if (sub_297E8BB50(a1, v2, (&v15 | 0xC)))
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Couldn't Get ConnId..");
          v4 = 255;
        }

        else
        {
          v6 = *(a1 + 4584);
          *(a1 + 4648) = 0;
          *(a1 + 4640) = 0;
          v7 = *(a1 + 6524);
          Memory_Typed = phOsalNfc_GetMemory_Typed();
          *(a1 + 4640) = Memory_Typed;
          if (Memory_Typed)
          {
            *(a1 + 4648) = v6;
            v9 = *(a1 + 6524);
            phOsalNfc_SetMemory();
            if (v6)
            {
              v10 = *(a1 + 6524);
              v11 = *(a1 + 4640);
              v12 = *(a1 + 4576);
              phOsalNfc_MemCopy();
            }

            sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " 4B Payload created successfully..");
            *&v16 = *(a1 + 4640);
            DWORD2(v16) = *(a1 + 4648);
            v4 = sub_297E57BA8(a1 + 936, &v15, a1 + 3800, *(a1 + 4566), sub_297EFF2DC, a1);
            *(a1 + 4566) = 0;
            if (v4 != 13)
            {
              v13 = *(a1 + 6524);
              v14 = *(a1 + 4640);
              phOsalNfc_FreeMemory();
              *(a1 + 4640) = 0;
              *(a1 + 4648) = 0;
            }
          }

          else
          {
            sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Payload MemAlloc for Send request Failed..");
            v4 = 12;
          }
        }
      }

      else
      {
        v4 = 1;
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Invalid Length..");
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Invalid Device..");
      v4 = 6;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
    v4 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_Send4BData");
  return v4;
}

uint64_t sub_297EAB044(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, _DWORD *a5)
{
  v18 = a3;
  v7 = 1;
  sub_297E4E1B4(1, &v18, 4u, 5u, "phLibNfc_SM_ConfigDriverTrans");
  if (a4 && a5)
  {
    v8 = a5 + 10;
    v18 = a5[10];
    v9 = phOsalNfc_Init();
    if (v9)
    {
      LODWORD(v7) = v9;
      sub_297E4E0B0(1, &v18, 4u, 1u, "phLibNfc_SM_ConfigDriverTrans:OSAL initialization failed");
      if (v7 == 50)
      {
        v7 = 147;
      }

      else
      {
        v7 = v7;
      }
    }

    else
    {
      sub_297E964E8(a5[10], a5 + 20);
      v10 = a5[10];
      if (v10 <= 1)
      {
        v11 = *(&unk_2A18BDDC0 + 14 * v10 + 10);
        if (v11)
        {
          if (*(v11 + 104))
          {
            phOsalNfc_FreeMemory();
            *(v11 + 104) = 0;
          }

          phOsalNfc_SetMemory();
          v12 = a5[34];
          if ((v12 - 0x8000) <= 0xF2000)
          {
            *(v11 + 100) = v12;
            v13 = *v8;
            Memory_Typed = phOsalNfc_GetMemory_Typed();
            *(v11 + 104) = Memory_Typed;
            if (Memory_Typed)
            {
              *(v11 + 112) = 0;
              *(v11 + 96) = 0;
            }

            else
            {
              sub_297E4E0B0(1, (a5 + 10), 4u, 2u, "Failed to allocate memory for circular buffer");
              *(v11 + 100) = 0;
            }
          }
        }
      }

      v7 = phTmlNfc_Init();
      if (v7)
      {
        sub_297E4E0B0(1, &v18, 4u, 1u, "phLibNfc_SM_ConfigDriverTrans:TML initialization failed");
        v15 = *v8;
        phOsalNfc_DeInit();
      }

      else
      {
        v16 = *a4;
        sub_297E966F4(1, (a5 + 10), 4u, 4u, "phLibNfc_SM_ConfigDriverTrans: Driver Handle Returned");
        sub_297E966F4(1, (a5 + 10), 4u, 4u, "(uint64_t)pInDriverHandle");
      }
    }
  }

  sub_297E4DFAC(1, &v18, 4u, 5u, "phLibNfc_SM_ConfigDriverTrans");
  return v7;
}

uint64_t sub_297EAB250(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_SM_ConfigMwLoggingTrans");
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = &unk_2A18BDDC0 + 112 * v5;
    if (*v8 == v12)
    {
      v9 = *(v8 + 2);
      if (!a4)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  v9 = 255;
  if (!a4)
  {
LABEL_5:
    v10 = 1;
    goto LABEL_9;
  }

LABEL_7:
  v10 = sub_297E964E8(v9, a4);
  if (v10)
  {
    sub_297E4E0B0(0, &v12, 4u, 1u, "phLogNfc_ConfigureMwLogging failed");
  }

LABEL_9:
  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_SM_ConfigMwLoggingTrans");
  return v10;
}

uint64_t sub_297EAB334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4u, 5u, "phLibNfc_SM_IoctlVenResetTrans");
  if (!a3)
  {
    if (a4)
    {
      v6 = *a4;
      a3 = phTmlNfc_IoCtl();
    }

    else
    {
      a3 = 1;
    }
  }

  sub_297E4DFAC(0, &v8, 4u, 5u, "phLibNfc_SM_IoctlVenResetTrans");
  return a3;
}

uint64_t sub_297EAB3C4(uint64_t a1)
{
  v16 = 0;
  v17 = a1;
  sub_297E4E1B4(0, &v17, 4u, 5u, "phLibNfc_SM_InitTrans");
  sub_297E4F0E8(v17, &v16);
  v1 = v16;
  if (v16)
  {
    if (*(v16 + 9792) == 1 && *(v16 + 3204) == 2)
    {
      phOsalNfc_SetMemory();
      v2 = *(v16 + 3000);
      if (phTmlNfc_IoCtl())
      {
        sub_297E4E0B0(0, &v17, 4u, 1u, "MultiTag Detection failed to Enable CRC");
        v3 = 255;
LABEL_15:
        v11 = "phLibNfc_SM_InitTrans:MultiTag Detection MW initialization Failed";
LABEL_16:
        sub_297E4E0B0(0, &v17, 4u, 1u, v11);
        goto LABEL_17;
      }

      v7 = v16;
      *(v16 + 3278) = 2;
      v3 = sub_297EA1F0C(v7, 0, (v7 + 3278));
      sub_297F09BB4(*(v16 + 3088), 1);
      sub_297F09B18(*(v16 + 3088), 1);
      if (v3 != 13)
      {
        goto LABEL_15;
      }

      v8 = v16;
      *(v16 + 6084) = 0;
      v9 = *(v8 + 9792);
      v10 = phOsalNfc_Timer_Create();
      *(v16 + 3240) = v10;
      if (v10 != 0xFFFFFFFFFFFFLL && v10)
      {
        sub_297E4E0B0(0, &v17, 4u, 4u, "MultiTag Detection NTF Timer Created Successfully");
        sub_297F0642C(*(v16 + 3088), 19, sub_297EF9EA8, v16);
        v13 = *(v16 + 9792);
        v14 = *(v16 + 3240);
        v15 = phOsalNfc_Timer_Start();
        if (!v15)
        {
          sub_297E687D8(1, v16 + 9792, *(v16 + 3240), 4u, 4u, "phLibNfc_SM_InitTrans");
          sub_297E4E0B0(0, &v17, 4u, 4u, "MultiTag Detection NTF Timer Started");
          v3 = 13;
          goto LABEL_17;
        }

        v3 = v15;
        v11 = "MultiTag Detection NTF Timer Start failed";
        goto LABEL_16;
      }

      sub_297E4E0B0(0, &v17, 4u, 1u, "MultiTag Detection NTF Timer Create failed");
      v3 = 12;
    }

    else
    {
      *(v16 + 3278) = 0;
      *(v1 + 2960) = off_2A1A90EA8;
      *(v1 + 2952) = 0;
      *(v1 + 2954) = 0;
      v4 = off_2A1A90EA8[0];
      if (off_2A1A90EA8[0])
      {
        v4 = 0;
        v5 = off_2A1A90EB8;
        do
        {
          ++v4;
          v6 = *v5;
          v5 += 2;
        }

        while (v6);
      }

      *(v1 + 2953) = v4;
      v3 = sub_297E5588C(v1, 0, v1 + 3278);
    }
  }

  else
  {
    v3 = 1;
  }

LABEL_17:
  sub_297E4DFAC(0, &v17, 4u, 5u, "phLibNfc_SM_InitTrans");
  return v3;
}

uint64_t sub_297EAB680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_SM_UnConfigDriverTrans");
  if (a4)
  {
    v6 = 0;
    v7 = *a4;
    v16 = *a4;
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
        v11 = 0;
        goto LABEL_11;
      }
    }

    v12 = *(v10 + 2);
    if (v12 > 1)
    {
      v11 = 0;
    }

    else
    {
      v13 = *(&unk_2A18BDDC0 + 14 * v12 + 10);
      if (v13)
      {
        v11 = v13 + 96;
      }

      else
      {
        v11 = 0;
      }
    }

LABEL_11:
    if (phTmlNfc_ReadAbort())
    {
      sub_297E50DB0(0, &v16, 4u, 1u, "phTmlNfc_ReadAbort Status");
    }

    if (phTmlNfc_FlushTxRxBuffers())
    {
      sub_297E50DB0(0, &v16, 4u, 1u, "phTmlNfc_FlushTxRxBuffers Status");
    }

    if (phTmlNfc_WriteAbort())
    {
      sub_297E50DB0(0, &v16, 4u, 1u, "phTmlNfc_WriteAbort Status");
    }

    sub_297E5A3A8(v16, 0);
    v14 = phTmlNfc_Shutdown();
    a3 = v14;
    if (v14)
    {
      sub_297E50DB0(0, &v16, 4u, 1u, "phTmlNfc_Shutdown Status");
    }

    if (v11 && *(v11 + 8))
    {
      phOsalNfc_FreeMemory();
      *(v11 + 8) = 0;
    }

    sub_297E4D930(0, &v16, 4u, 1, "phLibNfc_SM_UnConfigDriverTrans");
    phOsalNfc_DeInit();
  }

  sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_SM_UnConfigDriverTrans");
  return a3;
}

uint64_t sub_297EAB878(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v28 = a1;
  v27 = 8;
  v26 = 0;
  sub_297E4E1B4(0, &v28, 4u, 5u, "phLibNfc_SM_CfgTestModeTrans");
  sub_297E5F164(v28, &v27);
  v8 = 0;
  v9 = 1;
  while (1)
  {
    v10 = v9;
    v11 = &unk_2A18BDDC0 + 112 * v8;
    if (*v11 == v28)
    {
      break;
    }

    v9 = 0;
    v8 = 1;
    if ((v10 & 1) == 0)
    {
      v12 = 255;
      goto LABEL_6;
    }
  }

  v12 = *(v11 + 2);
LABEL_6:
  sub_297E5D114(v28, &v26);
  v13 = 1;
  if (!a4 || !a5 || !v26)
  {
    goto LABEL_24;
  }

  phOsalNfc_SetMemory();
  if ((v27 & 0xFFFFFFFD) != 4)
  {
    a3 = phTmlNfc_ConfigHsuBaudRate();
  }

  if (a3)
  {
    sub_297E50EBC(0, &v28, 4u, 1u, "ConfigTestModeTrans- Set Default Baud Rate FAILED, Status");
    v13 = a3;
    goto LABEL_24;
  }

  sub_297E50EBC(0, &v28, 4u, 4u, "phLibNfc_SM_CfgTestModeTrans: TML HSU Baud rate Set to");
  if (*(v26 + 192) == 1)
  {
    if (!phTmlNfc_IoCtl())
    {
      v14 = 0;
      if (!sub_297EA76A4(v12, v28))
      {
        goto LABEL_16;
      }
    }

LABEL_23:
    sub_297E50EBC(0, &v28, 4u, 1u, "Failed to switch to Normal mode!");
    v13 = 255;
    goto LABEL_24;
  }

  v22 = phTmlNfc_IoCtl();
  v14 = v22 == 0;
  if (v22)
  {
    goto LABEL_23;
  }

LABEL_16:
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  if (Memory_Typed)
  {
    v16 = Memory_Typed;
    phOsalNfc_SetMemory();
    sub_297E9F3BC(v28, v16);
    *(v16 + 9752) = *a4;
    v17 = v28;
    *(v16 + 3000) = v28;
    *(v16 + 9784) = v17;
    *(v16 + 9792) = v12;
    *(v16 + 3224) = *(v26 + 192);
    *(v16 + 2960) = &qword_2A1A93920;
    *(v16 + 2952) = 0;
    *(v16 + 2954) = 0;
    v18 = qword_2A1A93920;
    if (qword_2A1A93920)
    {
      v18 = 0;
      v19 = off_2A1A93930;
      do
      {
        ++v18;
        v20 = *v19;
        v19 += 2;
      }

      while (v20);
    }

    *(v16 + 2953) = v18;
    v21 = sub_297E5588C(v16, 0, 0);
    if (v21 == 13)
    {
      *(v16 + 3088) = sub_297F052B0(*(v16 + 3000));
      sub_297E9F3BC(v28, v16);
      v13 = 13;
      goto LABEL_24;
    }

    v24 = v21;
    phOsalNfc_SetMemory();
    phOsalNfc_FreeMemory();
    sub_297E9F3BC(v28, 0);
    if (v24 == 143)
    {
      v25 = 143;
    }

    else
    {
      v25 = 255;
    }

    if (v24 == 179)
    {
      v13 = 180;
    }

    else
    {
      v13 = v25;
    }
  }

  else
  {
    sub_297E4E0B0(0, &v28, 4u, 1u, "phLibNfc_SM_ConfigTestModeTrans: INSUFFICIENT_RESOURCES");
    v13 = 12;
  }

  if (v14)
  {
    phTmlNfc_IoCtl();
  }

LABEL_24:
  sub_297E4DFAC(0, &v28, 4u, 5u, "phLibNfc_SM_CfgTestModeTrans");
  return v13;
}

uint64_t sub_297EABBC4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 **a4)
{
  v21 = 0;
  v22 = a1;
  v20 = 0;
  v19 = 8;
  sub_297E4E1B4(0, &v22, 4u, 5u, "phLibNfc_SM_ResetNtfTrans");
  sub_297E5F164(v22, &v19);
  sub_297E4F0E8(v22, &v21);
  sub_297E5D114(v22, &v20);
  v5 = 1;
  if (a4 && v21 && v20)
  {
    if (!*a4 || *(a4 + 2) < 2u)
    {
      goto LABEL_27;
    }

    *(v21 + 356) = **a4;
    v6 = **a4;
    if (v6 <= 0xA0)
    {
      if (**a4)
      {
        if (v6 == 160)
        {
          sub_297E4E0B0(0, &v22, 4u, 1u, "LibNfc Reset Handler: Received Proprietary reset notification");
          if (*(a4 + 2) == 6)
          {
            v7 = *(v21 + 9792);
            v8 = *a4;
            phOsalNfc_MemCopy();
          }

          goto LABEL_27;
        }

        goto LABEL_23;
      }

      v13 = "LibNfc Reset Handler: Received NCI reset notification";
LABEL_26:
      sub_297E4E0B0(0, &v22, 4u, 1u, v13);
LABEL_27:
      v14 = v21;
      if (*(v21 + 2984) == 1 || *(v21 + 2985) == 1 || *(v21 + 2986) == 1 || *(v21 + 2992) == 1)
      {
        sub_297F09BB4(*(v21 + 3088), 0);
        sub_297F09B18(*(v21 + 3088), 0);
        v14 = v21;
        *(v21 + 5452) = 0;
        if (v19 == 6)
        {
          v15 = *(v14 + 9792);
          phOsalNfc_SetMemory();
          v16 = *(v21 + 3000);
          phTmlNfc_IoCtl();
          v14 = v21;
        }
      }

      v17 = ++*(v14 + 3208);
      if (v17 <= 1 && sub_297EA71A0(v14, sub_297EA6BB0, 0) == 13)
      {
        v5 = 13;
        goto LABEL_38;
      }

      sub_297E4E0B0(0, &v22, 4u, 1u, "phLibNfc_ResetNtfHandler: NFCC Reset recovery failed");
LABEL_37:
      v5 = 255;
      goto LABEL_38;
    }

    if (v6 == 161)
    {
      v13 = "LibNfc Reset Handler: Received Proprietary reset notification triggered by over temperature";
      goto LABEL_26;
    }

    if (v6 != 165)
    {
LABEL_23:
      sub_297E50DB0(0, &v22, 4u, 1u, "LibNfc Reset Handler: Received NCI reset notification with reason code =");
      goto LABEL_27;
    }

    sub_297E4E0B0(0, &v22, 4u, 1u, "phLibNfc_SM_ResetNtfTrans: RESET NTF - NO Uart Message Received");
    if (*(v21 + 6104) || *(v21 + 6152) || *(v20 + 24) || *(v21 + 6120))
    {
      sub_297EA6BB0(*(v21 + 9784), v21, 132);
      if (v21)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = *(&unk_2A18BDDC0 + 14 * v10 + 2);
          if (v9)
          {
            break;
          }

          v9 = 1;
          v10 = 1;
        }

        while (v11 != v21);
        if (v11 == v21)
        {
          sub_297EA7418(v21);
          sub_297F080D4(*(v21 + 3088), 2, 0, 0);
          v12 = v21;
          *(v21 + 3088) = 0;
          sub_297EA9F80(v12);
          v21 = 0;
          sub_297E9F3BC(v22, 0);
        }
      }

      goto LABEL_37;
    }
  }

LABEL_38:
  sub_297E4DFAC(0, &v22, 4u, 5u, "phLibNfc_SM_ResetNtfTrans");
  return v5;
}

uint64_t sub_297EABF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  sub_297E4E1B4(0, &v22, 4u, 5u, "phLibNfc_SM_GetDebugInfoTrans");
  v4 = 0;
  v5 = 1;
  v6 = v22;
  while (1)
  {
    v7 = v5;
    v8 = &unk_2A18BDDC0 + 112 * v4;
    if (*v8 == v22)
    {
      break;
    }

    v5 = 0;
    v4 = 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v9 = *(v8 + 2);
  if (v9 <= 1)
  {
    v10 = *(&unk_2A18BDDC0 + 14 * v9 + 10);
    if (v10)
    {
      *(v10 + 113) = 1;
      if (*(v10 + 120))
      {
        if (v9)
        {
          v11 = &gphNfc_DebugInfo_Sec;
        }

        else
        {
          v11 = &gphNfc_DebugInfo_Prim;
        }

        sub_297E8D3F4(v6, v11);
        **(v10 + 120) = sub_297EFC3D8(v9);
        phOsalNfc_SetMemory();
      }

      v12 = *(v10 + 128);
      if (!v12)
      {
        goto LABEL_33;
      }

      if (*(v10 + 104))
      {
        v13 = *(v10 + 96);
        v14 = *(v12 + 2);
        if (*(v10 + 112))
        {
          v15 = v14 > v13;
        }

        else
        {
          v15 = 0;
        }

        if (v15)
        {
          if (v14 >= *(v10 + 100))
          {
            v14 = *(v10 + 100);
          }

          *(v12 + 2) = v14;
          if (*v12)
          {
            phOsalNfc_MemCopy();
          }

          else
          {
            sub_297E4E0B0(0, &v22, 4u, 1u, "NULL pointer access !!");
          }

          if (!**(v10 + 128) || !*(v10 + 104))
          {
            sub_297E4E0B0(0, &v22, 4u, 1u, "NULL pointer access !!");
            goto LABEL_33;
          }

          v18 = *(v10 + 96);
        }

        else
        {
          if (v13 >= v14)
          {
            v16 = *(v12 + 2);
          }

          else
          {
            v16 = *(v10 + 96);
          }

          *(v12 + 2) = v16;
          v17 = *v12;
        }

        phOsalNfc_MemCopy();
      }

      else
      {
        sub_297E4E0B0(0, &v22, 4u, 4u, "Circular buffer memory does not exist");
        *(*(v10 + 128) + 8) = 0;
      }

LABEL_33:
      v19 = *(v10 + 144);
      if (v19)
      {
        *v19 = *(v10 + 156);
        *(v10 + 156) = 137;
      }

      v20 = *(v10 + 136);
      if (v20)
      {
        *v20 = *(v10 + 152);
        *(v10 + 152) = 0;
      }

      *(v10 + 113) = 0;
    }
  }

LABEL_38:
  sub_297E4DFAC(0, &v22, 4u, 5u, "phLibNfc_SM_GetDebugInfoTrans");
  return a3;
}

uint64_t sub_297EAC158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v34 = a1;
  v33 = 8;
  v32 = 0;
  v31 = 0;
  sub_297E4E1B4(0, &v34, 4u, 5u, "phLibNfc_SM_IoctlSetSysConfigTrans");
  sub_297E9F888(v34, 0);
  sub_297E5D114(v34, &v31);
  sub_297E5F164(v34, &v33);
  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    v9 = &unk_2A18BDDC0 + 112 * v6;
    if (*v9 == v34)
    {
      break;
    }

    v7 = 0;
    v6 = 1;
    if ((v8 & 1) == 0)
    {
      v10 = 255;
      goto LABEL_6;
    }
  }

  v10 = *(v9 + 2);
LABEL_6:
  phOsalNfc_SetMemory();
  if (!a4 || !v34 || !v31)
  {
    sub_297E4E0B0(0, &v34, 4u, 1u, "phLibNfc_SM_IoctlSetSysConfigTrans: Failed");
    goto LABEL_14;
  }

  v11 = *(v31 + 824);
  sub_297E9F888(v34, 1);
  if (v11 != 1)
  {
    if (sub_297E5DAA0(v34, *a4, *(a4 + 8), &v32, 2) || !v32)
    {
      v13 = 1;
      sub_297E50EBC(0, &v34, 4u, 1u, "phLibNfc_SM_IoctlSetSysConfigTrans- Inconsistent Input buffer ");
      goto LABEL_15;
    }

    if ((v33 & 0xFFFFFFFD) != 4 && phTmlNfc_ConfigHsuBaudRate())
    {
      v12 = "phLibNfc_SM_IoctlSetSysConfigTrans- Set Default Baud Rate FAILED, Status";
      goto LABEL_12;
    }

    sub_297E50EBC(0, &v34, 4u, 4u, "phLibNfc_SM_IoctlSetSysConfigTrans: TML HSU Baud rate Set to");
    if (*(v31 + 192) == 1)
    {
      phTmlNfc_IoCtl();
      sub_297EA76A4(v10, v34);
      v15 = 0;
    }

    else
    {
      v15 = phTmlNfc_IoCtl() == 0;
    }

    Memory_Typed = phOsalNfc_GetMemory_Typed();
    if (Memory_Typed)
    {
      v23 = Memory_Typed;
      phOsalNfc_SetMemory();
      sub_297E9F3BC(v34, v23);
      v24 = v34;
      *(v23 + 3000) = v34;
      *(v23 + 9784) = v24;
      *(v23 + 9792) = v10;
      *(v23 + 3224) = *(v31 + 192);
      *(v23 + 3568) = v32;
      *(v23 + 3576) = *a4;
      *(v23 + 2960) = gphLibNfc_SysConfigSeq;
      *(v23 + 2952) = 0;
      *(v23 + 2954) = 0;
      v25 = gphLibNfc_SysConfigSeq[0];
      if (gphLibNfc_SysConfigSeq[0])
      {
        v25 = 0;
        v26 = off_2A1A909B8;
        do
        {
          ++v25;
          v27 = *v26;
          v26 += 2;
        }

        while (v27);
      }

      *(v23 + 2953) = v25;
      v28 = sub_297E5588C(v23, 0, 0);
      if (v28 == 13)
      {
        *(v23 + 3088) = sub_297F052B0(*(v23 + 3000));
        goto LABEL_40;
      }

      v30 = v28;
      phTmlNfc_ReadAbort();
      phOsalNfc_SetMemory();
      phOsalNfc_FreeMemory();
      sub_297E9F3BC(v34, 0);
      if (v30 == 143)
      {
        v13 = 143;
      }

      else
      {
        v13 = 255;
      }

      goto LABEL_49;
    }

LABEL_41:
    sub_297E4E0B0(Memory_Typed, &v34, 4u, 1u, "phLibNfc_SM_IoctlSetSysConfigTrans: INSUFFICIENT_RESOURCES");
    v13 = 12;
    if (!v15)
    {
      goto LABEL_15;
    }

LABEL_50:
    phTmlNfc_IoCtl();
    goto LABEL_15;
  }

  if (!a3)
  {
    if (*(v31 + 192) == 1)
    {
      phTmlNfc_IoCtl();
      sub_297EA76A4(v10, v34);
      v15 = 0;
    }

    else
    {
      v15 = phTmlNfc_IoCtl() == 0;
    }

    Memory_Typed = phOsalNfc_GetMemory_Typed();
    if (Memory_Typed)
    {
      v17 = Memory_Typed;
      phOsalNfc_SetMemory();
      sub_297E9F3BC(v34, v17);
      v18 = v34;
      *(v17 + 3000) = v34;
      *(v17 + 9784) = v18;
      *(v17 + 9792) = v10;
      *(v17 + 2960) = gphLibNfc_SysConfigSeq;
      *(v17 + 2952) = 0;
      *(v17 + 2954) = 0;
      v19 = gphLibNfc_SysConfigSeq[0];
      if (gphLibNfc_SysConfigSeq[0])
      {
        v19 = 0;
        v20 = off_2A1A909B8;
        do
        {
          ++v19;
          v21 = *v20;
          v20 += 2;
        }

        while (v21);
      }

      *(v17 + 2953) = v19;
      v22 = sub_297E5588C(v17, 0, 0);
      if (v22 == 13)
      {
        *(v17 + 3088) = sub_297F052B0(*(v17 + 3000));
LABEL_40:
        v13 = 13;
        goto LABEL_15;
      }

      v29 = v22;
      phTmlNfc_ReadAbort();
      phOsalNfc_SetMemory();
      phOsalNfc_FreeMemory();
      sub_297E9F3BC(v34, 0);
      if (v29 == 143)
      {
        v13 = 143;
      }

      else
      {
        v13 = 255;
      }

LABEL_49:
      sub_297E9F888(v34, 0);
      if (!v15)
      {
        goto LABEL_15;
      }

      goto LABEL_50;
    }

    goto LABEL_41;
  }

  v12 = "phLibNfc_SM_IoctlSetSysConfigTrans- Inconsistent Input buffer, Status";
LABEL_12:
  sub_297E50EBC(0, &v34, 4u, 1u, v12);
LABEL_14:
  v13 = 255;
LABEL_15:
  sub_297E4DFAC(0, &v34, 4u, 5u, "phLibNfc_SM_IoctlSetSysConfigTrans");
  return v13;
}

uint64_t sub_297EAC654(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v31 = 0;
  v32 = a1;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  sub_297E4E1B4(0, &v32, 4u, 5u, "phLibNfc_SM_Main_IdleTransComplete");
  sub_297E4F0E8(v32, &v29);
  sub_297E5D114(v32, &v28);
  if (a3)
  {
    sub_297E96818(v32, a3);
  }

  else
  {
    sub_297E5D398(v32, 0);
  }

  if (!v29)
  {
    goto LABEL_39;
  }

  v7 = *(v29 + 9792);
  phOsalNfc_SetMemory();
  if (a2 > 111)
  {
    if (a2 != 112)
    {
      if (a2 == 114)
      {
        sub_297EB9E80(v29, a3);
        goto LABEL_39;
      }

      if (a2 == 183)
      {
        v12 = v28;
        if (!v28)
        {
          v26 = "phLibNfc_SM_Main_IdleTransComplete: phLibNfc_SM_Dnld_eMemDump:Invalid IOCTL context!!";
          goto LABEL_38;
        }

        v13 = v28[3];
        v14 = *v28;
        v28[3] = 0;
        *v12 = 0;
        if (v13)
        {
          sub_297E50EBC(0, &v32, 4u, 4u, "Get Memory Dump:Invoking callback function, wStatus = ");
          sub_297E4D930(0, &v32, 4u, 10, "phLibNfc_SM_Main_IdleTransComplete");
          v13(v32, v14, a4, a3);
        }
      }

      goto LABEL_39;
    }

    v16 = *(v29 + 6184);
    v17 = *(v29 + 6192);
    v32 = *(v29 + 9784);
    sub_297EAAA30(v29);
    v29 = 0;
    if (!v16)
    {
      goto LABEL_39;
    }

    sub_297E50EBC(0, &v32, 4u, 4u, "ShutdownCb:Invoking callback function, wStatus = ");
    v18 = &v32;
    v19 = 0;
    v20 = 116;
LABEL_34:
    sub_297E4D930(v19, v18, 4u, v20, "phLibNfc_SM_Main_IdleTransComplete");
    v16(v32, v17, a3);
    goto LABEL_39;
  }

  if (a2 == 5)
  {
    v15 = v29;
    v16 = *(v29 + 6104);
    v17 = *(v29 + 6112);
    *(v29 + 6104) = 0u;
    v32 = *(v15 + 9784);
    if (!v16)
    {
      goto LABEL_39;
    }

    v18 = (v15 + 9792);
    v19 = 1;
    v20 = 3;
    goto LABEL_34;
  }

  if (a2 != 35)
  {
    if (a2 != 105)
    {
      goto LABEL_39;
    }

    if (v28)
    {
      sub_297E9F888(v32, 0);
      if (v28[2])
      {
        sub_297EA7418(v29);
        sub_297F080D4(*(v29 + 3088), 2, 0, 0);
        if (*(v28 + 48) != 1)
        {
          phTmlNfc_IoCtl();
        }

        v8 = v29;
        *(v29 + 3088) = 0;
        sub_297EA9F80(v8);
        v29 = 0;
        sub_297E9F3BC(v32, 0);
        v30 = 0;
        LODWORD(v31) = 0;
        v9 = v28;
        v10 = v28[2];
        v11 = *v28;
        v28[2] = 0;
        *v9 = 0;
        sub_297E4D930(0, &v32, 4u, 133, "phLibNfc_SM_Main_IdleTransComplete");
        v10(v32, v11, &v30, a3);
      }

      goto LABEL_39;
    }

    v26 = "phLibNfc_SM_Main_IdleTransComplete: phLibNfc_SM_eIoctlSetSysConfig:Invalid IOCTL context!!";
LABEL_38:
    sub_297E4E0B0(0, &v32, 4u, 1u, v26);
    goto LABEL_39;
  }

  v21 = v29;
  v16 = *(v29 + 6120);
  v17 = *(v29 + 6128);
  *(v29 + 6120) = 0u;
  if (a3)
  {
    v22 = *(v21 + 3088);
    if (v22)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v25 = *(&unk_2A18BDDC0 + 14 * v24 + 4);
        if (v23)
        {
          break;
        }

        v23 = 1;
        v24 = 1;
      }

      while (v25 != v22);
      if (v25 == v22)
      {
        sub_297F080D4(*(v21 + 3088), 2, 0, 0);
        v21 = v29;
      }
    }

    *(v21 + 3088) = 0;
    sub_297EFC5B0(v21);
    v29 = 0;
  }

  if (v16)
  {
    sub_297E50EBC(0, &v32, 4u, 4u, "ConfigTestModeCb:Invoking callback function, wStatus = ");
    v18 = &v32;
    v19 = 0;
    v20 = 33;
    goto LABEL_34;
  }

LABEL_39:
  sub_297E4DFAC(0, &v32, 4u, 5u, "phLibNfc_SM_Main_IdleTransComplete");
  return a3;
}

uint64_t sub_297EACA60(uint64_t a1)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 4u, 5u, "phLibNfc_SM_DeInitTrans");
  sub_297E4F0E8(v11, &v10);
  if (v10)
  {
    if (*(v10 + 2985) == 1 || *(v10 + 2986) == 1 || *(v10 + 2992) == 1)
    {
      sub_297E5A3A8(v11, 0);
      if (sub_297E56A50(v11, *(v10 + 3088)) == 111)
      {
        sub_297F08EEC(*(v10 + 3088), 3);
      }

      sub_297F0522C(*(v10 + 3088));
      v1 = v10;
      if (*(v10 + 3224) == 1)
      {
        *(v10 + 2960) = &qword_2A1A90FE8;
        v1[2952] = 0;
        v1[2954] = 0;
        v2 = qword_2A1A90FE8;
        if (qword_2A1A90FE8)
        {
          v2 = 0;
          v3 = off_2A1A90FF8;
          do
          {
            ++v2;
            v4 = *v3;
            v3 += 2;
          }

          while (v4);
        }
      }

      else
      {
        *(v10 + 2960) = &qword_2A1A91038;
        v1[2952] = 0;
        v1[2954] = 0;
        v2 = qword_2A1A91038;
        if (qword_2A1A91038)
        {
          v2 = 0;
          v6 = off_2A1A91048;
          do
          {
            ++v2;
            v7 = *v6;
            v6 += 2;
          }

          while (v7);
        }
      }

      v1[2953] = v2;
      v8 = sub_297E5588C(v1, 0, 0);
    }

    else
    {
      v8 = sub_297F080D4(*(v10 + 3088), 0, sub_297EAA3C4, v10);
    }

    v5 = v8;
  }

  else
  {
    v5 = 1;
  }

  sub_297E4DFAC(0, &v11, 4u, 5u, "phLibNfc_SM_DeInitTrans");
  return v5;
}

uint64_t sub_297EACBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v12 = 0;
  v13 = a1;
  sub_297E4E1B4(0, &v13, 4u, 5u, "phLibNfc_SM_MwResetTrans");
  sub_297E4F0E8(v13, &v12);
  if (v12)
  {
    v7 = *(v12 + 9792);
    phOsalNfc_SetMemory();
    if (a5 && *a5)
    {
      sub_297E4E0B0(0, &v13, 4u, 4u, "phLibNfc_SM_MwResetTrans NFCC is ON");
      sub_297EAA598(v12);
    }

    else if (*(v12 + 3224) == 1)
    {
      sub_297EA76A4(*(v12 + 9792), *(v12 + 3000));
    }

    else
    {
      v8 = *(v12 + 3000);
      phTmlNfc_IoCtl();
    }

    v9 = v12;
    *(v12 + 744) = 0;
    a3 = sub_297F080D4(*(v9 + 3088), 2, 0, 0);
    if (a3)
    {
      sub_297E4E0B0(0, &v13, 4u, 1u, "phLibNfc_SM_MwResetTrans failed");
    }

    else
    {
      sub_297E5A3A8(v13, 0);
      v10 = v12;
      *(v12 + 3088) = 0;
      sub_297EA7418(v10);
      sub_297EA9F80(v12);
      v12 = 0;
      sub_297E9F3BC(v13, 0);
    }
  }

  sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_SM_MwResetTrans");
  return a3;
}

uint64_t sub_297EACD60(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v15 = 0;
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_SM_ConfigHsuTrans");
  v5 = sub_297E4F0E8(v16, &v15);
  v6 = 1;
  if (a4)
  {
    v7 = v5;
    v8 = v15;
    if (!v7 && v15 != 0)
    {
      if (*(v15 + 2987) == 1 || *(v15 + 2992) == 1)
      {
        v6 = 0;
      }

      else
      {
        *(v15 + 2996) = *a4;
        *(v8 + 3209) = 0;
        *(v8 + 2960) = off_2A1A93630;
        *(v8 + 2952) = 0;
        *(v8 + 2954) = 0;
        v11 = off_2A1A93630[0];
        if (off_2A1A93630[0])
        {
          v11 = 0;
          v12 = off_2A1A93640;
          do
          {
            ++v11;
            v13 = *v12;
            v12 += 2;
          }

          while (v13);
        }

        *(v8 + 2953) = v11;
        v14 = sub_297E5588C(v8, 0, 0);
        v6 = v14;
        if (v14 && v14 != 13)
        {
          sub_297E4E0B0(0, &v16, 4u, 1u, "phLibNfc_SM_ConfigHsuTrans failed");
        }
      }
    }
  }

  sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_SM_ConfigHsuTrans");
  return v6;
}

uint64_t sub_297EACE88(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v14 = 0;
  v15 = a1;
  sub_297E4E1B4(0, &v15, 4u, 5u, "phLibNfc_SM_ConfigPowerModeTrans");
  sub_297E4F0E8(v15, &v14);
  v5 = 1;
  if (a4)
  {
    v6 = v14;
    if (v14)
    {
      v7 = *a4;
      if (*a4 <= 1)
      {
        v14[1] = v7;
        v6[2] = 1;
        v8 = 420;
        while (*&v6[v8] != 2)
        {
          v8 += 16;
          if (v8 == 500)
          {
            v9 = *v6;
            v6[3] = v9;
            v6[4] = 1;
            if (v9 == v7 || (v6[2985] == 1 || v6[2986] == 1 || v6[2992] == 1) && *(v6 + 799) == 2 && v7 == 1 && (v6[6076] & 3) == 3)
            {
              v5 = 0;
            }

            else
            {
              *(v6 + 370) = &qword_2A1A91068;
              v6[2952] = 0;
              v6[2954] = 0;
              v10 = qword_2A1A91068;
              if (qword_2A1A91068)
              {
                v10 = 0;
                v11 = &qword_2A1A91078;
                do
                {
                  ++v10;
                  v12 = *v11;
                  v11 += 2;
                }

                while (v12);
              }

              v6[2953] = v10;
              v5 = sub_297E5588C(v6, 0, 0);
            }

            goto LABEL_22;
          }
        }

        if (!v7)
        {
          v6[2] = 0;
        }

        v5 = 0;
        v6[3] = *v6;
        v6[4] = 1;
      }
    }
  }

LABEL_22:
  sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_SM_ConfigPowerModeTrans");
  return v5;
}

uint64_t sub_297EAD010(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  v18 = 0;
  v19 = a1;
  sub_297E4E1B4(0, &v19, 4u, 5u, "phLibNfc_SM_GetSEListTrans");
  sub_297E4F0E8(v19, &v18);
  if (a5)
  {
    if (a4)
    {
      v8 = v18;
      if (v18)
      {
        if (!*(v18 + 362))
        {
          v9 = 0;
          goto LABEL_8;
        }

        if (*(v18 + 6078) == 1)
        {
          a4[1] = *(v18 + 448);
          *a4 = *(v8 + 440);
          v9 = 1;
LABEL_8:
          *a5 = v9;
          goto LABEL_22;
        }

        v10 = 0;
        v11 = (v18 + 416);
        v12 = 5;
        while (v12 != 5 || *(v8 + 408) || *(v8 + 416) != 5)
        {
          v15 = *(v11 - 1);
          if (v15)
          {
            if (v10 < 0xFEu)
            {
              ++v10;
            }

            v16 = &a4[2 * v10];
            *(v16 - 1) = *v11;
            *(v16 - 2) = v15;
            goto LABEL_20;
          }

LABEL_21:
          v11 += 2;
          if (!--v12)
          {
            goto LABEL_22;
          }
        }

        if (v10 < 0xFEu)
        {
          ++v10;
        }

        v13 = *(v8 + 420);
        v14 = &a4[2 * v10];
        *(v14 - 2) = 5;
        *(v14 - 1) = v13;
        *(v14 - 2) = 0;
LABEL_20:
        *a5 = v10;
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  sub_297E4DFAC(0, &v19, 4u, 5u, "phLibNfc_SM_GetSEListTrans");
  return a3;
}

uint64_t sub_297EAD164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  sub_297E4E1B4(0, &v5, 4u, 5u, "phLibNfc_SM_CommonTrans");
  sub_297E4DFAC(0, &v5, 4u, 5u, "phLibNfc_SM_CommonTrans");
  return a3;
}

uint64_t sub_297EAD1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v22 = a1;
  sub_297E4E1B4(0, &v22, 4u, 5u, "phLibNfc_SM_SeGetRfParamsTrans");
  sub_297E4F0E8(v22, &v21);
  v6 = 1;
  if (!a4 || !v21)
  {
    goto LABEL_20;
  }

  v7 = (v21 + 400);
  v8 = 5;
  while (*(v7 - 1) != a4)
  {
    v7 += 16;
    if (!--v8)
    {
      if (!a3)
      {
        v9 = *(v21 + 9792);
        phOsalNfc_SetMemory();
        v10 = v21;
        goto LABEL_24;
      }

LABEL_19:
      sub_297E4E0B0(0, &v22, 4u, 1u, "phLibNfc_SM_SeGetRfParamsTrans :Failed");
      v6 = a3;
      goto LABEL_20;
    }
  }

  v11 = *v7;
  if (*(v21 + 2984) == 1 && v11 == 7)
  {
    a3 = 51;
    goto LABEL_19;
  }

  if ((v11 - 1) >= 2)
  {
    a3 = 255;
    goto LABEL_19;
  }

  v13 = *(v21 + 9792);
  phOsalNfc_SetMemory();
  v10 = v21;
  switch(v11)
  {
    case 7:
      *(v21 + 3612) |= 0x2000u;
      v14 = *(v10 + 4752) | 0x100;
      goto LABEL_23;
    case 2:
      *(v21 + 3612) |= 0x2000u;
      v14 = *(v10 + 4752) | 0x200;
      goto LABEL_23;
    case 1:
      *(v21 + 3612) |= 0x2000u;
      v14 = *(v10 + 4752) | 0x400;
LABEL_23:
      *(v10 + 4752) = v14;
      break;
  }

LABEL_24:
  *(v10 + 2960) = &qword_2A1A93520;
  *(v10 + 2952) = 0;
  *(v10 + 2954) = 0;
  v16 = qword_2A1A93520;
  if (qword_2A1A93520)
  {
    v16 = 0;
    v17 = &qword_2A1A93530;
    do
    {
      ++v16;
      v18 = *v17;
      v17 += 2;
    }

    while (v18);
  }

  *(v10 + 2953) = v16;
  v19 = sub_297E5588C(v10, 0, 0);
  if (v19 == 13)
  {
    v6 = 13;
  }

  else
  {
    v20 = v19;
    sub_297E4E0B0(0, &v22, 4u, 1u, "Set Rf Settings sequence could not start!");
    if (v20 == 143)
    {
      v6 = 143;
    }

    else
    {
      v6 = 255;
    }
  }

LABEL_20:
  sub_297E4DFAC(0, &v22, 4u, 5u, "phLibNfc_SM_SeGetRfParamsTrans");
  return v6;
}

uint64_t sub_297EAD3E4(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4u, 5u, "phLibNfc_SM_RemDevNtfRegTrans");
  sub_297E4F0E8(v10, &v9);
  v6 = 1;
  if (a4 && v9)
  {
    sub_297E4E0B0(0, &v10, 4u, 4u, "Registering Notification Handler");
    *a4 &= 0xFFFFE3FF;
    v7 = *(v9 + 9792);
    phOsalNfc_MemCopy();
    v6 = a3;
  }

  sub_297E4DFAC(0, &v10, 4u, 5u, "phLibNfc_SM_RemDevNtfRegTrans");
  return v6;
}

uint64_t sub_297EAD4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = a1;
  sub_297E4E1B4(0, &v7, 4u, 5u, "phLibNfc_SM_RemDevUnNtfRegTrans");
  sub_297E4F0E8(v7, &v6);
  if (v6)
  {
    sub_297E4E0B0(0, &v7, 4u, 4u, "phLibNfc_SM_RemDevUnNtfRegTrans:Un Registering Notification Handler");
    v4 = *(v6 + 9792);
    phOsalNfc_SetMemory();
  }

  else
  {
    a3 = 1;
  }

  sub_297E4DFAC(0, &v7, 4u, 5u, "phLibNfc_SM_RemDevUnNtfRegTrans");
  return a3;
}

uint64_t sub_297EAD570(uint64_t a1, uint64_t a2, uint64_t a3, int8x8_t *a4)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4u, 5u, "phLibNfc_SM_GetStackCapTrans");
  sub_297E4F0E8(v9, &v8);
  v6 = 1;
  if (a4 && v8)
  {
    sub_297E63D38(a4, v8);
    v6 = a3;
  }

  sub_297E4DFAC(0, &v9, 4u, 5u, "phLibNfc_SM_GetStackCapTrans");
  return v6;
}

uint64_t sub_297EAD60C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t *a5)
{
  v33 = a1;
  v32 = 0;
  v31 = 0;
  sub_297E4E1B4(0, &v33, 4u, 5u, "phLibNfc_SM_CofigRtngTrans");
  sub_297E4F0E8(v33, &v31);
  v7 = 1;
  if (!a5)
  {
    goto LABEL_28;
  }

  if (!a4)
  {
    goto LABEL_28;
  }

  v8 = v31;
  if (!v31)
  {
    goto LABEL_28;
  }

  v9 = *a4;
  if (*a4)
  {
    v10 = a5 + 12;
    v11 = *a4;
    do
    {
      *v10 &= ~4u;
      v10 += 40;
      --v11;
    }

    while (v11);
  }

  if (sub_297EAA940(v8, v9, a5))
  {
    v7 = 1;
    goto LABEL_26;
  }

  v12 = v31;
  *(v31 + 360) = v9 + 1;
  *(v12 + 376) = 0;
  v13 = *(v12 + 9792);
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  v15 = v31;
  *(v31 + 376) = Memory_Typed;
  if (Memory_Typed)
  {
    v16 = sub_297EAA620(v15, Memory_Typed, v9, a5, &v32);
    v7 = 1;
    if (v16)
    {
      goto LABEL_26;
    }

    v17 = *(v31 + 376) + 32 * v32;
    *v17 = 1;
    *(v17 + 4) = 0;
    v18 = *(v31 + 376) + 32 * v32;
    *(v18 + 8) &= ~2u;
    v19 = *(v31 + 376) + 32 * v32;
    *(v19 + 8) &= ~4u;
    v20 = *(v31 + 376) + 32 * v32;
    *(v20 + 8) |= 1u;
    v21 = v32;
    *(*(v31 + 376) + 32 * v32 + 12) = 5;
    if (v21 <= 0xFD)
    {
      v32 = v21 + 1;
    }

    v22 = v31;
    *(v31 + 2960) = off_2A1A91088;
    v22[2952] = 0;
    v22[2954] = 0;
    v23 = off_2A1A91088[0];
    if (off_2A1A91088[0])
    {
      v23 = 0;
      v24 = off_2A1A91098;
      do
      {
        ++v23;
        v25 = *v24;
        v24 += 2;
      }

      while (v25);
    }

    v22[2953] = v23;
    v26 = sub_297E5588C(v22, 0, (v22 + 360));
    if (v26 == 13)
    {
      v7 = 13;
      goto LABEL_28;
    }

    if ((v26 & 0xFFFFFFFB) == 0x8B)
    {
      v27 = "Max Routing Table Size Has Reached or Non-heap Memory access";
    }

    else
    {
      v27 = "Set Routing Table Config sequence could not start!";
    }

    if ((v26 & 0xFFFFFFFB) == 0x8B)
    {
      v7 = v26;
    }

    else
    {
      v7 = 255;
    }
  }

  else
  {
    v7 = 255;
    v27 = "Failed to allocate memory, Insufficient Resources";
  }

  sub_297E4E0B0(0, &v33, 4u, 1u, v27);
LABEL_26:
  if (*(v31 + 376))
  {
    sub_297E4E0B0(0, &v33, 4u, 1u, "Nci Set routing table failed!");
    v28 = *(v31 + 9792);
    v29 = *(v31 + 376);
    phOsalNfc_FreeMemory();
    *(v31 + 376) = 0;
  }

LABEL_28:
  sub_297E4DFAC(0, &v33, 4u, 5u, "phLibNfc_SM_CofigRtngTrans");
  return v7;
}

uint64_t sub_297EAD8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = a1;
  sub_297E4E1B4(0, &v14, 4u, 5u, "phLibNfc_SM_SetHceParamsTrans");
  sub_297E4F0E8(v14, &v13);
  v5 = 1;
  if (a4)
  {
    v6 = v13;
    if (v13)
    {
      *(v13 + 532) = 0;
      *(v6 + 2960) = off_2A1A90C18;
      *(v6 + 2952) = 0;
      *(v6 + 2954) = 0;
      v7 = off_2A1A90C18[0];
      if (off_2A1A90C18[0])
      {
        v7 = 0;
        v8 = off_2A1A90C28;
        do
        {
          ++v7;
          v9 = *v8;
          v8 += 2;
        }

        while (v9);
      }

      *(v6 + 2953) = v7;
      v10 = sub_297E5588C(v6, 0, a4);
      if (v10 == 13)
      {
        v5 = 13;
      }

      else
      {
        v11 = v10;
        sub_297E4E0B0(0, &v14, 4u, 1u, "phLibNfc_SM_SetHceParamsTrans:Set Host Card Emulation Config sequence could not start!");
        if (v11 == 143)
        {
          v5 = 143;
        }

        else
        {
          v5 = 255;
        }
      }
    }
  }

  sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_SM_SetHceParamsTrans");
  return v5;
}

uint64_t sub_297EAD9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  v15 = a1;
  sub_297E4E1B4(0, &v15, 4u, 5u, "phLibNfc_SM_AntennaTestTrans");
  sub_297E4F0E8(v15, &v14);
  v5 = 255;
  v6 = "phLibNfc_SM_AntennaTestTrans Failed";
  if (!a4 || !v14)
  {
    goto LABEL_8;
  }

  v7 = *(v14 + 9792);
  phOsalNfc_SetMemory();
  v8 = *(v14 + 9792);
  phOsalNfc_MemCopy();
  v9 = v14;
  *(v14 + 2960) = off_2A1A93680;
  v9[2952] = 0;
  v9[2954] = 0;
  v10 = off_2A1A93680[0];
  if (off_2A1A93680[0])
  {
    v10 = 0;
    v11 = off_2A1A93690;
    do
    {
      ++v10;
      v12 = *v11;
      v11 += 2;
    }

    while (v12);
  }

  v9[2953] = v10;
  v5 = sub_297E5588C(v9, 0, 0);
  if (v5 != 13)
  {
    v6 = "phLibNfc_SM_AntennaTestTrans failed";
LABEL_8:
    sub_297E4E0B0(0, &v15, 4u, 1u, v6);
  }

  sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_SM_AntennaTestTrans");
  return v5;
}

uint64_t sub_297EADADC(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v20 = a1;
  v19 = 0;
  v18 = 0;
  sub_297E4E1B4(0, &v20, 4u, 5u, "phLibNfc_SM_SetRfSettingTrans");
  sub_297E4F0E8(v20, &v18);
  v7 = 1;
  if (a5)
  {
    if (a4)
    {
      v8 = v18;
      if (v18)
      {
        *(v18 + 2932) = 0;
        v9 = *a5;
        if (*a5)
        {
          v10 = *(a5 + 8);
          if (v10)
          {
            if (*a4)
            {
              v11 = sub_297EFCC04(v8, v9, v10, &v19);
              v12 = off_2A1A93780;
            }

            else
            {
              v11 = sub_297E5DAA0(v20, v9, v10, &v19, 2);
              v12 = off_2A1A93750;
            }

            v13 = v18;
            if (v11 || !v19)
            {
              *(v18 + 3296) = 0;
              *(v13 + 3288) = 0;
              *(v13 + 3556) = 0;
            }

            else
            {
              *(v18 + 3296) = v19;
              *(v13 + 3288) = *a5;
              *(v13 + 3556) = *(a5 + 8);
              *(v13 + 3560) = 0;
              *(v13 + 2960) = v12;
              *(v13 + 2952) = 0;
              *(v13 + 2954) = 0;
              v14 = *v12;
              if (*v12)
              {
                LOBYTE(v14) = 0;
                v15 = (v12 + 2);
                do
                {
                  LOBYTE(v14) = v14 + 1;
                  v16 = *v15;
                  v15 += 2;
                }

                while (v16);
              }

              *(v13 + 2953) = v14;
              v7 = sub_297E5588C(v13, 0, 0);
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(0, &v20, 4u, 5u, "phLibNfc_SM_SetRfSettingTrans");
  return v7;
}

uint64_t sub_297EADC40(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v12 = 0;
  v13 = a1;
  sub_297E4E1B4(0, &v13, 4u, 5u, "phLibNfc_SM_SeSvddControlTrans");
  sub_297E4F0E8(v13, &v12);
  v6 = 1;
  if (a4)
  {
    v7 = v12;
    if (v12)
    {
      *(v12 + 371) = 1;
      *(v7 + 528) = *a4;
      *(v7 + 2960) = off_2A1A933E0;
      *(v7 + 2952) = 0;
      *(v7 + 2954) = 0;
      v8 = off_2A1A933E0[0];
      if (off_2A1A933E0[0])
      {
        v8 = 0;
        v9 = &qword_2A1A933F0;
        do
        {
          ++v8;
          v10 = *v9;
          v9 += 2;
        }

        while (v10);
      }

      *(v7 + 2953) = v8;
      v6 = sub_297E5588C(v7, a3, 0);
    }
  }

  sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_SM_SeSvddControlTrans");
  return v6;
}