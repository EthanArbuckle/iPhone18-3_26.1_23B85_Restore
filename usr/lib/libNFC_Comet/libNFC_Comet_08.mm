uint64_t sub_297EBB630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  memset(v16, 0, sizeof(v16));
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v15 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_NfceeActionNtfHandler");
  if (!a1)
  {
    a3 = 49;
    goto LABEL_28;
  }

  if (!a2 || (v6 = *(a2 + 8)) == 0)
  {
    a3 = 1;
    goto LABEL_28;
  }

  v7 = *(a2 + 16);
  if (v7 < 3)
  {
    if (!a3)
    {
      goto LABEL_20;
    }

LABEL_26:
    v12 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    goto LABEL_27;
  }

  LOBYTE(v17[0]) = *v6;
  v8 = v6[1];
  DWORD1(v17[0]) = v8;
  a3 = 1;
  if (v8 <= 1)
  {
    if (!v8)
    {
LABEL_18:
      BYTE8(v17[0]) = v6[2];
      v9 = *(a1 + 6524);
      phOsalNfc_MemCopy();
      v10 = BYTE8(v17[0]) + 3;
      goto LABEL_19;
    }

    if (v6[2] != 1 || sub_297E5C390(a1, v6[3]))
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v8 != 2)
    {
      if (v8 != 32 && v8 != 16)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v6[2] != 1 || sub_297E6DCDC(a1, v6[3]))
    {
      goto LABEL_26;
    }
  }

  BYTE8(v17[0]) = v6[2];
  HIDWORD(v17[0]) = v6[3];
  v10 = 4;
LABEL_19:
  if (v7 != v10)
  {
    goto LABEL_26;
  }

LABEL_20:
  a3 = sub_297E5B838(a1, (a1 + 3984), *v6, &v15, 1u);
  if (a3)
  {
LABEL_27:
    v16[0] = v17;
    goto LABEL_28;
  }

  v18 = a1 + 104 * v15 + 4008;
  v16[0] = v17;
  v11 = *(a1 + 232);
  if (v11)
  {
    v11(*(a1 + 224), 3, v16, 0);
  }

  a3 = 0;
LABEL_28:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_NfceeActionNtfHandler");
  v13 = *MEMORY[0x29EDCA608];
  return a3;
}

uint64_t sub_297EBB888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x29EDCA608];
  v28 = 0;
  v29 = 0;
  v30 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_NfceeDiscReqNtfHandler");
  if (!a1)
  {
    a3 = 49;
    goto LABEL_56;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  sub_297E92264(a1, v6);
  if (v7 == 5 * *v6 + 1)
  {
    v31[0] = 0;
    sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_NfceeVerifyTlvParams");
    v8 = *v6;
    if (!*v6)
    {
      sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_NfceeVerifyTlvParams");
LABEL_20:
      v29 = v31;
      sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_NfceeStoreTlv");
      if (v7 < 6)
      {
        a3 = 255;
      }

      else
      {
        LOBYTE(v28) = *v6;
        v15 = v28;
        if (v28)
        {
          v16 = 0;
          v17 = 1;
          v18 = v31;
          do
          {
            if (v17 >= 0xFEu)
            {
              v19 = v17;
            }

            else
            {
              v19 = v17 + 1;
            }

            if (v17 >= 0xFEu)
            {
              LOBYTE(v17) = 0;
            }

            *v18 = v6[v17];
            if (v19 >= 0xFEu)
            {
              v20 = v19;
            }

            else
            {
              v20 = v19 + 1;
            }

            if (v20 >= 0xFEu)
            {
              v21 = v20;
            }

            else
            {
              v21 = v20 + 1;
            }

            if (v20 >= 0xFEu)
            {
              LOBYTE(v20) = 0;
            }

            v18[1] = v6[v20];
            if (v21 >= 0xFEu)
            {
              v22 = v21;
            }

            else
            {
              v22 = v21 + 1;
            }

            if (v21 >= 0xFEu)
            {
              v23 = 0;
            }

            else
            {
              v23 = v21;
            }

            *(v18 + 1) = v6[v23];
            if (v22 >= 0xFEu)
            {
              v17 = v22;
            }

            else
            {
              v17 = v22 + 1;
            }

            if (v22 >= 0xFEu)
            {
              v24 = 0;
            }

            else
            {
              v24 = v22;
            }

            *(v18 + 2) = v6[v24];
            ++v16;
            v18 += 12;
          }

          while (v16 < v15);
        }

        a3 = 0;
      }

      sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_NfceeStoreTlv");
      if (v7 >= 6)
      {
        v25 = *(a1 + 232);
        if (v25)
        {
          v25(*(a1 + 224), 2, &v28, 0);
          a3 = 0;
        }
      }

      goto LABEL_56;
    }

    v9 = 0;
    v10 = 1;
    while (v6[v10] <= 1u && v6[(v10 + 1)] == 3)
    {
      v11 = &v6[(v10 + 2)];
      v12 = sub_297E5B838(a1, (a1 + 3984), *v11, v31, 1u);
      if (v12)
      {
        a3 = v12;
        goto LABEL_55;
      }

      if (sub_297E6DCDC(a1, v11[1]))
      {
        break;
      }

      v13 = sub_297E5C390(a1, v11[2]);
      v14 = v13;
      if (v13)
      {
        v10 += 2;
      }

      else
      {
        v10 += 5;
      }

      if (++v9 >= v8 || v13)
      {
        sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_NfceeVerifyTlvParams");
        if (!v14)
        {
          goto LABEL_20;
        }

LABEL_16:
        a3 = 1;
        goto LABEL_56;
      }
    }

    a3 = 1;
LABEL_55:
    sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_NfceeVerifyTlvParams");
  }

LABEL_56:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_NfceeDiscReqNtfHandler");
  v26 = *MEMORY[0x29EDCA608];
  return a3;
}

uint64_t sub_297EBBBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RfRapduSentNtfHandler");
  if (!a1)
  {
    v6 = "phNciNfc_RfRapduSentNtfHandler:Cannot process RAPDU Sent Error Ntf - Invalid input parameters";
    v7 = 2;
    v8 = 0;
LABEL_6:
    sub_297E4E0B0(v7, v8, 3u, 1u, v6);
    goto LABEL_7;
  }

  v5 = *(a1 + 232);
  if (!v5)
  {
    v6 = "phNciNfc_RfRapduSentNtfHandler:Upper Layer CallBack Not Registered";
    v8 = a1 + 6524;
    v7 = 1;
    goto LABEL_6;
  }

  v5(*(a1 + 224), 15, a1 + 4008, 0);
LABEL_7:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RfRapduSentNtfHandler");
  return a3;
}

uint64_t sub_297EBBC7C(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_NfceeProcessRfActvtdNtf");
  v6 = 1;
  if (a1)
  {
    if (a2)
    {
      if (a3 >= 2 && !a2[1])
      {
        v6 = sub_297E5B838(a1, (a1 + 3984), *a2, &v16, 1u);
        if (!v6)
        {
          v7 = *(a1 + 6524);
          Memory_Typed = phOsalNfc_GetMemory_Typed();
          if (Memory_Typed)
          {
            v9 = Memory_Typed;
            v10 = *(a1 + 6524);
            phOsalNfc_SetMemory();
            *(v9 + 8) = *a2;
            *(v9 + 12) = a2[1];
            *v9 = 1;
            v11 = sub_297E780F0(a1, (a1 + 72), v9, 1);
            if (v11)
            {
              v6 = v11;
              v12 = *(a1 + 6524);
              phOsalNfc_FreeMemory();
              goto LABEL_12;
            }

            v13 = a1 + 104 * v16;
            *(v13 + 4008) = *(v13 + 4009);
            v17[0] = v13 + 4008;
            v14 = *(a1 + 232);
            if (v14)
            {
              v14(*(a1 + 224), 5, v17, 0);
            }
          }

          v6 = 0;
        }
      }
    }
  }

LABEL_12:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_NfceeProcessRfActvtdNtf");
  return v6;
}

uint64_t sub_297EBBDF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_eSeSvddOnCtrl");
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
        *(a1 + 904) = a3;
        *(a1 + 3776) = off_2A1A92858;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A92858);
        v13 = sub_297E5E830(a1, 0, 0);
        if (v13 == 13)
        {
          *(a1 + 3424) = a4;
          *(a1 + 3752) = a5;
        }

        else
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Svdd On Control Sequence failed!");
          v14 = *(a1 + 6524);
          v15 = *(a1 + 896);
          phOsalNfc_FreeMemory();
          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_eSeSvddOnCtrl, Memory allocation failed!");
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

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_eSeSvddOnCtrl");
  return v13;
}

uint64_t sub_297EBBF98(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_StopResponseTimer");
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
    v7 = *(a1 + 1920);
    v5 = 255;
    if (v7 && v7 != 0xFFFFFFFFFFFFLL)
    {
      v8 = *(a1 + 3396);
      phOsalNfc_Timer_Stop();
      *(a1 + 6512) = 0;
      *(a1 + 1928) = 0;
      v5 = 0;
      if (*(a1 + 3396))
      {
        v9 = &gphNfc_DebugInfo_Sec;
      }

      else
      {
        v9 = &gphNfc_DebugInfo_Prim;
      }

      v9[1] &= ~0x10u;
    }
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a1, 3u, 1u, "Stack not initialized (phNciNfc_StopResponseTimer)\n");
    v5 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_StopResponseTimer");
  return v5;
}

uint64_t sub_297EBC0B0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ClearSetModeNtfWaitTimer");
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
    v7 = *(a1 + 4704);
    v5 = 255;
    if (v7 && v7 != 0xFFFFFFFFFFFFLL)
    {
      v8 = *(a1 + 6524);
      phOsalNfc_Timer_Stop();
      v9 = *(a1 + 6524);
      v10 = *(a1 + 4704);
      phOsalNfc_Timer_Delete();
      v5 = 0;
      *(a1 + 4704) = 0xFFFFFFFFFFFFLL;
    }
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a1, 3u, 1u, "Stack not initialized (phNciNfc_ClearSetModeNtfWaitTimer)\n");
    v5 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ClearSetModeNtfWaitTimer");
  return v5;
}

uint64_t sub_297EBC1A8(uint64_t a1)
{
  v47 = 0u;
  v48 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SendMfReq");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
    v9 = 1;
    goto LABEL_62;
  }

  v2 = *(a1 + 4552);
  if (!v2)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Invalid Device..");
    v9 = 6;
    goto LABEL_62;
  }

  if (!*(a1 + 4584))
  {
    v9 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Invalid Length..");
    goto LABEL_62;
  }

  if (*(v2 + 12) == 128)
  {
    v3 = *(a1 + 4560);
    if (v3 <= 1)
    {
      if (v3)
      {
        if (v3 != 1)
        {
          goto LABEL_30;
        }

        v10 = *(a1 + 4564);
        sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_MfCreateWriteHdr");
        v11 = *(a1 + 4552);
        if (v11)
        {
          if ((v10 - 16) > 0xFFFFFFF1 || *(v11 + 4) != 8)
          {
            v26 = *(a1 + 6524);
            phOsalNfc_SetMemory();
            sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Creating Write Request Header ..");
            *(a1 + 4672) = 49;
            *(a1 + 4676) = 1;
            *(a1 + 4677) = v10;
            *(a1 + 4678) = -1;
            v8 = "phNciNfc_MfCreateWriteHdr";
            goto LABEL_42;
          }

          v12 = " Invalid Block Address ..";
          v13 = a1 + 6524;
        }

        else
        {
          v12 = " Invalid Device..";
          v13 = a1 + 6524;
        }

        sub_297E4E0B0(1, v13, 3u, 4u, v12);
        v22 = "phNciNfc_MfCreateWriteHdr";
      }

      else
      {
        sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_MfCreateXchgDataHdr");
        if (*(a1 + 4552))
        {
          v21 = *(a1 + 6524);
          phOsalNfc_SetMemory();
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Creating XchgData Request Header ..");
          *(a1 + 4672) = 16;
          *(a1 + 4676) = -256;
          *(a1 + 4678) = -1;
          v8 = "phNciNfc_MfCreateXchgDataHdr";
          goto LABEL_42;
        }

        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Invalid Device..");
        v22 = "phNciNfc_MfCreateXchgDataHdr";
      }
    }

    else
    {
      switch(v3)
      {
        case 2:
          v14 = *(a1 + 4564);
          v15 = *(a1 + 4565);
          sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_MfCreateReadHdr");
          v16 = *(a1 + 4552);
          if (v16)
          {
            if (v14 < 0x10 || *(v16 + 4) != 8)
            {
              v25 = *(a1 + 6524);
              phOsalNfc_SetMemory();
              *(a1 + 4584) = 0;
              sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Creating Read Request Header ..");
              *(a1 + 4672) = 50;
              *(a1 + 4676) = 2;
              *(a1 + 4677) = v14;
              *(a1 + 4678) = v15;
              v8 = "phNciNfc_MfCreateReadHdr";
              goto LABEL_42;
            }

            v17 = " Invalid Block Address ..";
            v18 = a1 + 6524;
          }

          else
          {
            v17 = " Invalid Device..";
            v18 = a1 + 6524;
          }

          sub_297E4E0B0(1, v18, 3u, 4u, v17);
          v22 = "phNciNfc_MfCreateReadHdr";
          break;
        case 3:
          v19 = *(a1 + 4564);
          sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_MfCreateSectorSelCmdHdr");
          if (*(a1 + 4552))
          {
            v20 = *(a1 + 6524);
            phOsalNfc_SetMemory();
            *(a1 + 4584) = 0;
            sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Creating Write Request Header ..");
            *(a1 + 4672) = 51;
            *(a1 + 4676) = 1;
            *(a1 + 4677) = v19;
            *(a1 + 4678) = -1;
            v8 = "phNciNfc_MfCreateSectorSelCmdHdr";
LABEL_42:
            sub_297E4DFAC(2, a1, 3u, 5u, v8);
            goto LABEL_43;
          }

          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Invalid Device..");
          v22 = "phNciNfc_MfCreateSectorSelCmdHdr";
          break;
        case 4:
          v4 = *(a1 + 4564);
          sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_MfCreateAuthCmdHdr");
          if (*(a1 + 4552))
          {
            *(a1 + 4584) = 0;
            v5 = *(a1 + 6524);
            phOsalNfc_SetMemory();
            sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Creating Write Request Header ..");
            *(a1 + 4672) = 64;
            *(a1 + 4676) = 2;
            *(a1 + 4677) = v4;
            v6 = *(*(a1 + 4576) + 2);
            *(a1 + 4678) = v6;
            if ((v6 & 0x10) != 0)
            {
              *(a1 + 4676) = 3;
              v7 = *(a1 + 6524);
              phOsalNfc_MemCopy();
            }

            v8 = "phNciNfc_MfCreateAuthCmdHdr";
            goto LABEL_42;
          }

          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Invalid Device..");
          v22 = "phNciNfc_MfCreateAuthCmdHdr";
          break;
        default:
LABEL_30:
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Invalid Transceive Type received ..");
LABEL_39:
          v23 = " Request Payload Header Creation Failed ..";
          v24 = a1 + 6524;
LABEL_60:
          sub_297E4E0B0(1, v24, 3u, 4u, v23);
          v42 = " Extension Payload Packet creation Failed..";
          v43 = a1 + 6524;
          goto LABEL_61;
      }
    }

    sub_297E4DFAC(2, a1, 3u, 5u, v22);
    goto LABEL_39;
  }

LABEL_43:
  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Creating Request Payload (Header + Data)..");
  if (*(v2 + 12) == 128)
  {
    v27 = *(a1 + 4676);
    if (*(a1 + 4560) == 4 && v27 == 3)
    {
      v28 = 9;
    }

    else
    {
      v28 = v27 + 1;
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = *(a1 + 4584);
  *(a1 + 4648) = 0;
  *(a1 + 4640) = 0;
  v30 = *(a1 + 6524);
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  *(a1 + 4640) = Memory_Typed;
  if (!Memory_Typed)
  {
    v23 = " Payload MemAlloc for Send request Failed..";
    v24 = a1 + 6524;
    goto LABEL_60;
  }

  *(a1 + 4648) = v29 + v28;
  v32 = *(a1 + 6524);
  phOsalNfc_SetMemory();
  if (*(v2 + 12) == 128)
  {
    **(a1 + 4640) = *(a1 + 4672);
    if (*(a1 + 4676))
    {
      if (*(a1 + 4560) == 4)
      {
        v33 = *(a1 + 4676) == 3;
      }

      v34 = *(a1 + 6524);
      v35 = *(a1 + 4640) + 1;
      phOsalNfc_MemCopy();
    }
  }

  if (v29)
  {
    v36 = *(a1 + 6524);
    v37 = *(a1 + 4640);
    v38 = *(a1 + 4576);
    phOsalNfc_MemCopy();
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Payload (Header + Data) created successfully..");
  v39 = *(a1 + 6524);
  phOsalNfc_SetMemory();
  LODWORD(v47) = 0;
  if (sub_297E8BB50(a1, v2, (&v47 | 0xC)))
  {
    v40 = *(a1 + 6524);
    v41 = *(a1 + 4640);
    phOsalNfc_FreeMemory();
    *(a1 + 4640) = 0;
    *(a1 + 4648) = 0;
    v42 = " Couldn't Get ConnId..";
    v43 = a1 + 6524;
LABEL_61:
    sub_297E4E0B0(1, v43, 3u, 4u, v42);
    v9 = 255;
    goto LABEL_62;
  }

  *&v48 = *(a1 + 4640);
  DWORD2(v48) = *(a1 + 4648);
  if (sub_297E57BA8(a1 + 936, &v47, a1 + 3800, *(a1 + 4566), sub_297EFF2DC, a1) == 13)
  {
    v9 = 13;
  }

  else
  {
    v45 = *(a1 + 6524);
    v46 = *(a1 + 4640);
    phOsalNfc_FreeMemory();
    *(a1 + 4640) = 0;
    *(a1 + 4648) = 0;
    v9 = 255;
  }

  *(a1 + 4566) = 0;
LABEL_62:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SendMfReq");
  return v9;
}

uint64_t sub_297EBC964(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RecvMfResp");
  if (!a1)
  {
    v43 = 1;
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
    goto LABEL_86;
  }

  if (a2 || (v4 = *(a1 + 3808)) == 0 || (v5 = *(a1 + 3800)) == 0)
  {
    v9 = 255;
    v43 = 255;
    v11 = " Mf Data Receive Failed..";
    goto LABEL_15;
  }

  v6 = *(a1 + 4552);
  if (!v6 || *(v6 + 12) != 128)
  {
    v12 = *(a1 + 4600);
    v13 = v4 - 1;
    v14 = v5[v4 - 1];
    if (v14 > 0xB0)
    {
      switch(v14)
      {
        case 0xB1u:
          v43 = 183;
          v15 = " Mf XchgData,PH_NCINFC_STATUS_RF_PROTOCOL_ERROR Detected by NFCC during Data Exchange ";
          goto LABEL_38;
        case 0xB2u:
          v43 = 178;
          v15 = " Mf XchgData,PH_NCINFC_STATUS_RF_TIMEOUT_ERROR Detected by NFCC during Data Exchange ";
          goto LABEL_38;
        case 0xB3u:
          v43 = 184;
          v15 = " Mf XchgData,PH_NCINFC_STATUS_RF_UNEXPECTED_DAT Detected by NFCC during Data Exchange ";
          goto LABEL_38;
      }
    }

    else
    {
      if (!v5[v4 - 1])
      {
        v43 = 0;
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Mf XchgData Request is Successful!! ..");
        if (v13 <= v12)
        {
          v27 = *(a1 + 6524);
          v28 = *(a1 + 4592);
          v29 = *(a1 + 3800);
          phOsalNfc_MemCopy();
          *(a1 + 4600) = v13;
        }

        else
        {
          v43 = 8;
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Mf XchgData,More Data available than requested  ..");
        }

        goto LABEL_39;
      }

      if (v14 == 2)
      {
        v43 = 181;
        v15 = " Mf XchgData,PH_NCINFC_STATUS_RF_FRAME_CORRUPTED Detected by NFCC during Data Exchange ";
        goto LABEL_38;
      }

      if (v14 == 176)
      {
        v43 = 182;
        v15 = " Mf XchgData,PH_NCINFC_STATUS_RF_TRANSMISSION_ERROR Detected by NFCC during Data Exchange ";
LABEL_38:
        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v15);
LABEL_39:
        sub_297EFF5D8(a1, &v43);
        v9 = v43;
        goto LABEL_84;
      }
    }

    v43 = 185;
    sub_297E96818(*(a1 + 6528), v14);
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, " Mf XchgData,Unknown RF related error Detected by NFCC during Data Exchange ");
    if (v4 <= v12)
    {
      v17 = *(a1 + 6524);
      v18 = *(a1 + 4592);
      v19 = *(a1 + 3800);
      phOsalNfc_MemCopy();
      *(a1 + 4600) = v4;
    }

    goto LABEL_39;
  }

  v7 = *v5;
  if (v7 <= 0x31)
  {
    if (v7 != 16)
    {
      if (v7 == 49)
      {
        if (*(a1 + 4672) == 49)
        {
          v16 = v5[1];
          *(a1 + 4677) = v16;
          if (v16)
          {
            v9 = 255;
            v43 = 255;
            v10 = " Mf WriteN Request Failed ..";
            goto LABEL_68;
          }

          v43 = 0;
          v34 = " Mf WriteN Request is Successful!! ..";
          goto LABEL_63;
        }

LABEL_46:
        v9 = 255;
        v43 = 255;
        v10 = " Unexpected Mf Write Response Received ..";
        goto LABEL_68;
      }

LABEL_52:
      v9 = 255;
      v43 = 255;
      v10 = "phNciNfc_RecvMfResp:Unknown Response ID Received ..";
      goto LABEL_68;
    }

    if (*(a1 + 4672) != 16)
    {
      v9 = 255;
      v43 = 255;
      v10 = " Unexpected Mf XchgData Response Received ..";
      goto LABEL_68;
    }

    v22 = v5[v4 - 1];
    *(a1 + 4677) = v22;
    if (v22 == 178)
    {
      if (*(v6 + 16) == 128)
      {
        v9 = 178;
        v43 = 178;
        v10 = " Mf XchgData Request Failed RF Time out..";
        goto LABEL_68;
      }
    }

    else if (!v22)
    {
      v43 = 0;
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Mf XchgData Request is Successful!! ..");
      v23 = *(a1 + 3808) - 2;
      if (v23 > *(a1 + 4600))
      {
        goto LABEL_59;
      }

      v24 = *(a1 + 6524);
      v25 = *(a1 + 4592);
      v26 = *(a1 + 3800) + 1;
      goto LABEL_89;
    }

    v9 = 255;
    v43 = 255;
    v10 = " Mf XchgData Request Failed ..";
    goto LABEL_68;
  }

  if (v7 == 50)
  {
    if (*(a1 + 4672) != 50)
    {
      v9 = 255;
      v43 = 255;
      v10 = " Unexpected Mf Read Response Received ..";
      goto LABEL_68;
    }

    v20 = v5[1];
    *(a1 + 4677) = v20;
    if (v20)
    {
      v9 = 255;
      v43 = 255;
      v10 = " Mf ReadN Request Failed ..";
      goto LABEL_68;
    }

    v43 = 0;
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Mf ReadN Request is Successful!! ..");
    v9 = 0;
    if ((*(a1 + 3808) - 2) > *(a1 + 4600))
    {
      goto LABEL_70;
    }

    v30 = *(a1 + 6524);
    v31 = *(a1 + 4592);
    v32 = *(a1 + 3800);
    phOsalNfc_MemCopy();
LABEL_64:
    v9 = 0;
    goto LABEL_70;
  }

  if (v7 != 51)
  {
    if (v7 == 64)
    {
      if (*(a1 + 4672) == 64)
      {
        v8 = v5[1];
        *(a1 + 4677) = v8;
        if (v8)
        {
          v9 = 255;
          v43 = 255;
          v10 = " Mf Auth Fail ..";
LABEL_68:
          v33 = a1 + 6524;
          goto LABEL_69;
        }

        v43 = 0;
        v34 = " Mf Auth Pass ..";
LABEL_63:
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, v34);
        goto LABEL_64;
      }

      goto LABEL_46;
    }

    goto LABEL_52;
  }

  if (*(a1 + 4672) != 51)
  {
    goto LABEL_46;
  }

  v21 = v5[1];
  *(a1 + 4677) = v21;
  if (v21)
  {
    v9 = 255;
    v43 = 255;
    v10 = " Mf WriteN Request Failed ..";
LABEL_60:
    v33 = a1 + 6524;
LABEL_69:
    sub_297E4E0B0(1, v33, 3u, 4u, v10);
    goto LABEL_70;
  }

  v43 = 0;
  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Mf Sector select Request is Successful!! ..");
  v23 = *(a1 + 3808) - 2;
  if (v23 > *(a1 + 4600))
  {
LABEL_59:
    v9 = 8;
    v43 = 8;
    v10 = " Mf XchgData,More Data available than requested  ..";
    goto LABEL_60;
  }

  v40 = *(a1 + 6524);
  v41 = *(a1 + 4592);
  v42 = *(a1 + 3800) + 2;
LABEL_89:
  phOsalNfc_MemCopy();
  v9 = 0;
  *(a1 + 4600) = v23;
LABEL_70:
  v35 = *(a1 + 4677);
  if (v35 > 0xB0)
  {
    if (v35 == 177)
    {
      v9 = 183;
      v43 = 183;
      v36 = "PH_NCINFC_STATUS_RF_PROTOCOL_ERROR Detected by NFCC during Data Exchange ";
      goto LABEL_83;
    }

    if (v35 != 178)
    {
      if (v35 == 179)
      {
        v9 = 184;
        v43 = 184;
        v36 = "PH_NCINFC_STATUS_RF_UNEXPECTED_DAT Detected by NFCC during Data Exchange ";
        goto LABEL_83;
      }

      goto LABEL_80;
    }

    v9 = 178;
    v43 = 178;
    v11 = "PH_NCINFC_STATUS_RF_TIMEOUT_ERROR Detected by NFCC during Data Exchange ";
LABEL_15:
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, v11);
    goto LABEL_84;
  }

  if (!*(a1 + 4677))
  {
    goto LABEL_84;
  }

  if (v35 == 2)
  {
    v9 = 181;
    v43 = 181;
    v36 = "PH_NCINFC_STATUS_RF_FRAME_CORRUPTED Detected by NFCC during Data Exchange ";
    goto LABEL_83;
  }

  if (v35 == 176)
  {
    v9 = 182;
    v43 = 182;
    v36 = "PH_NCINFC_STATUS_RF_TRANSMISSION_ERROR Detected by NFCC during Data Exchange ";
    goto LABEL_83;
  }

LABEL_80:
  if (v7 == 64)
  {
    goto LABEL_84;
  }

  v9 = 185;
  v43 = 185;
  sub_297E96818(*(a1 + 6528), v35);
  v36 = "Unknown RF related error Detected by NFCC during Data Exchange ";
LABEL_83:
  sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v36);
LABEL_84:
  *(a1 + 4632) = v9;
  if (*(a1 + 4640))
  {
    *(a1 + 4648) = 0;
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Freeing Send Request Payload Buffer..");
    v37 = *(a1 + 6524);
    v38 = *(a1 + 4640);
    phOsalNfc_FreeMemory();
    *(a1 + 4640) = 0;
  }

LABEL_86:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RecvMfResp");
  return v43;
}

uint64_t sub_297EBD044(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreInitRecverStateMachine");
  if (a1)
  {
    v2 = 0;
    *(a1 + 2264) = off_2A1A92878;
    *(a1 + 2272) = &unk_2A13A5CA0;
    *(a1 + 2280) = &unk_2A1A92898;
    *(a1 + 2256) = 0x500000000;
    v3 = *(a1 + 984);
    if (v3)
    {
      if (v3 != 0xFFFFFFFFFFFFLL)
      {
        v4 = *(a1 + 2460);
        v2 = phOsalNfc_Timer_Delete();
        if (v2)
        {
          sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "phNciNfc_CoreInitRecverStateMachine:Response Timer Delete failed");
        }
      }
    }

    *(a1 + 984) = 0xFFFFFFFFFFFFLL;
    v5 = *(a1 + 2460);
    v6 = phOsalNfc_Timer_Create();
    if (v6 != 0xFFFFFFFFFFFFLL && (v7 = v6) != 0)
    {
      sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "Response Timer Created Successfully");
      *(a1 + 984) = v7;
      *(a1 + 992) = 0;
      if (!v2)
      {
        sub_297E4E0B0(3, a1, 3u, 4u, "phNciNfc_CoreInitRecverStateMachine: SUCCESS");
        goto LABEL_12;
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "Response Timer Create failed");
      v2 = 12;
    }
  }

  else
  {
    v2 = 1;
  }

  sub_297E4E0B0(3, a1, 3u, 1u, "phNciNfc_CoreInitRecverStateMachine: FAILED");
LABEL_12:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreInitRecverStateMachine");
  return v2;
}

uint64_t sub_297EBD1D0(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreReleaseRecverStateMachine");
  if (a1)
  {
    v2 = *(a1 + 984);
    if (v2)
    {
      v3 = v2 == 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v4 = *(a1 + 2460);
      phOsalNfc_Timer_Delete();
      v5 = 0;
      *(a1 + 984) = 0xFFFFFFFFFFFFLL;
      *(a1 + 992) = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreReleaseRecverStateMachine");
  return v5;
}

uint64_t sub_297EBD270(uint64_t a1)
{
  v10 = 0;
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreRecvChkExptdPktType");
  if (!a1)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(&unk_2A18BDDC0 + 14 * v3 + 5);
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
    sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "Connector - Check Expected Packet Type");
    v6 = sub_297ED5B58(a1, &v10);
    v7 = v10;
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = v10 > 2u;
    }

    v5 = v8;
    if (v5)
    {
      v7 = -1;
    }

    *(a1 + 952) = v7;
  }

  else
  {
LABEL_6:
    v5 = 255;
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreRecvChkExptdPktType");
  return v5;
}

uint64_t sub_297EBD364(uint64_t a1)
{
  v7 = 0;
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreRecvChkNewEntry");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "Connector - Check New Entry");
    v2 = sub_297ED5C84(a1, &v7);
    v3 = v7;
    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = v7 > 2u;
    }

    v5 = v4;
    if (v5)
    {
      v3 = 0;
    }

    *(a1 + 952) = v3;
  }

  else
  {
    v5 = 0;
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreRecvChkNewEntry");
  return v5;
}

uint64_t sub_297EBD420(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_StateRecv2Recv");
  if (!a1)
  {
    goto LABEL_21;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(&unk_2A18BDDC0 + 14 * v3 + 5);
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (v4 != a1);
  if (v4 != a1 || *(a1 + 992) != 1)
  {
    goto LABEL_21;
  }

  v5 = 0;
  v6 = *(a1 + 968);
  if (v6 != *(a1 + 912))
  {
    goto LABEL_22;
  }

  v7 = *a1;
  if (!*a1)
  {
    goto LABEL_22;
  }

  v8 = *(v7 + 4800);
  if (!v8)
  {
    goto LABEL_21;
  }

  v5 = 0;
  v9 = *v8;
  v11 = v9 == sub_297EE81B0 || v9 == sub_297EAADF8;
  if (v6 || !v11)
  {
    goto LABEL_22;
  }

  if (*(a1 + 980) != *(a1 + 924))
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  v12 = *(a1 + 2460);
  v13 = *(a1 + 984);
  phOsalNfc_Timer_Stop();
  *(v7 + 6512) = 0;
  v14 = *(a1 + 2460);
  v15 = *(a1 + 984);
  v16 = *(a1 + 620);
  v5 = phOsalNfc_Timer_Start();
  if (v5)
  {
    *(a1 + 992) = 0;
    sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "Response Timer ReStart failed!!!");
  }

  else
  {
    v18 = &gphNfc_DebugInfo_Sec;
    if (!*(a1 + 2460))
    {
      v18 = &gphNfc_DebugInfo_Prim;
    }

    v18[1] &= ~0x10u;
    sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "Response timer re-started");
    *(a1 + 992) = 1;
  }

LABEL_22:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_StateRecv2Recv");
  return v5;
}

uint64_t sub_297EBD5EC(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  sub_297E4E1B4(3, a2, 3u, 5u, "phNciNfc_RspTimeOutCb");
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(&unk_2A18BDDC0 + 14 * v4 + 5);
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
      v7 = *a2;
      if (*a2)
      {
        v8 = 0;
        v9 = 0;
        do
        {
          v10 = *(&unk_2A18BDDC0 + 14 * v9 + 4);
          if (v8)
          {
            break;
          }

          v8 = 1;
          v9 = 1;
        }

        while (v10 != v7);
        if (v10 == v7)
        {
          if (!*(v7 + 6512))
          {
            v11 = *(a2 + 2460);
            v12 = *(a2 + 984);
            phOsalNfc_Timer_Stop();
            *(v7 + 5992);
            v13 = *(a2 + 2460);
            v14 = *(a2 + 984);
            if (!phOsalNfc_Timer_Start())
            {
              sub_297E4E0B0(1, a2 + 2460, 3u, 4u, "Response timer re-started with extended time");
              *(v7 + 6512) = 1;
              return sub_297E4DFAC(3, a2, 3u, 5u, "phNciNfc_RspTimeOutCb");
            }

            sub_297E4E0B0(1, a2 + 2460, 3u, 1u, "Response Timer extended time ReStart failed!!!");
          }

          *(v7 + 6512) = 0;
          *(a2 + 992) = 0;
          v15 = *(a2 + 968);
          if (v15)
          {
            if (v15 != 2)
            {
              v18 = 1;
              sub_297E4E0B0(1, a2 + 2460, 3u, 1u, "Timer expired - Should never enter here");
              sub_297E96818(*(a2 + 632), 1);
              v17 = 0;
              goto LABEL_22;
            }

            v16 = "phNciNfc_RspTimeOutCb: Timer expired before response is received!";
          }

          else
          {
            v16 = "phNciNfc_RspTimeOutCb: Timer expired before data is received!";
          }

          v17 = 1;
          sub_297E4E0B0(1, a2 + 2460, 3u, 1u, v16);
          sub_297E8CBD4(v7, 0);
          v18 = 44;
          sub_297E96818(*(a2 + 632), 44);
          v19 = *(a2 + 632);
          phTmlNfc_ReadAbort();
          v20 = *(a2 + 632);
          phTmlNfc_FlushTxRxBuffers();
          *(a2 + 2432) = 0;
          *(a2 + 2440) = 0;
          sub_297E54838(a2);
          if (sub_297E4EE00(a2, 0, 3) != 13)
          {
            sub_297E4E0B0(1, a2 + 2460, 3u, 1u, "phNciNfc_RspTimeOutCb: Tml Read request failed!");
          }

LABEL_22:
          if (*(v7 + 6616) != 1)
          {
            if (sub_297E5A99C(*(v7 + 6528), &v22))
            {
              sub_297E4E0B0(1, a2 + 2460, 3u, 1u, "phNciNfc_CoreRecvManager4-Failed to retrieve bIgnoreWkUpRet");
LABEL_25:
              v18 = 255;
              sub_297E96818(*(a2 + 632), 255);
              goto LABEL_26;
            }

            if (sub_297E5AA54(*(a2 + 632), 20))
            {
              if (v22 != 1)
              {
                sub_297E4E0B0(1, a2 + 2460, 3u, 1u, "phNciNfc_CoreRecvManager4-Fialed to De-Assert Wake Up Line");
                if ((v17 & 1) == 0)
                {
                  goto LABEL_25;
                }
              }
            }
          }

LABEL_26:
          if (*(a2 + 2460))
          {
            v21 = &gphNfc_DebugInfo_Sec;
          }

          else
          {
            v21 = &gphNfc_DebugInfo_Prim;
          }

          v21[1] |= 0x10u;
          *(a2 + 2288) = v18;
          sub_297E51240(a2, 2u);
        }
      }
    }
  }

  return sub_297E4DFAC(3, a2, 3u, 5u, "phNciNfc_RspTimeOutCb");
}

uint64_t sub_297EBD910(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_StateIdle2Recv");
  if (!a1)
  {
    goto LABEL_21;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(&unk_2A18BDDC0 + 14 * v3 + 5);
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (v4 != a1);
  if (v4 != a1 || *(a1 + 992) != 1)
  {
    goto LABEL_21;
  }

  v5 = 0;
  v6 = *(a1 + 968);
  if (v6 != *(a1 + 912))
  {
    goto LABEL_22;
  }

  v7 = *a1;
  if (!*a1)
  {
    goto LABEL_22;
  }

  v8 = *(v7 + 4800);
  if (!v8)
  {
    goto LABEL_21;
  }

  v5 = 0;
  v9 = *v8;
  v11 = v9 == sub_297EE81B0 || v9 == sub_297EAADF8;
  if (v6 || !v11)
  {
    goto LABEL_22;
  }

  if (*(a1 + 980) != *(a1 + 924))
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  v12 = *(a1 + 2460);
  v13 = *(a1 + 984);
  phOsalNfc_Timer_Stop();
  *(v7 + 6512) = 0;
  v14 = *(a1 + 2460);
  v15 = *(a1 + 984);
  v16 = *(a1 + 620);
  v5 = phOsalNfc_Timer_Start();
  if (v5)
  {
    *(a1 + 992) = 0;
    sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "Response Timer ReStart failed!!!");
  }

  else
  {
    v18 = &gphNfc_DebugInfo_Sec;
    if (!*(a1 + 2460))
    {
      v18 = &gphNfc_DebugInfo_Prim;
    }

    v18[1] &= ~0x10u;
    sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "Response timer re-started");
    *(a1 + 992) = 1;
  }

LABEL_22:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_StateIdle2Recv");
  return v5;
}

uint64_t sub_297EBDADC(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_StateRecv2Dummy");
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_StateRecv2Dummy");
  return 0;
}

uint64_t sub_297EBDB38(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_StateDummy2Recv");
  sub_297E4E0B0(3, a1, 3u, 4u, "Dummy to Receive Transition");
  v2 = sub_297E528A0(a1);
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_StateDummy2Recv");
  return v2;
}

uint64_t sub_297EBDBC4(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreInitialise");
  if (!a1)
  {
    v4 = "Invalid input parameter";
    v5 = 1;
    v7 = 3;
    v6 = 0;
    goto LABEL_5;
  }

  v2 = *(a1 + 2460);
  phOsalNfc_SetMemory();
  v3 = *(a1 + 2460);
  phOsalNfc_SetMemory();
  *(a1 + 2352) = 0;
  if (sub_297E75C94(a1))
  {
    v4 = "phNciNfc_CoreInitialise:phNciNfc_CoreRecvMgrInit failed!";
    v5 = 1;
    v6 = a1 + 2460;
    v7 = 1;
LABEL_5:
    sub_297E4E0B0(v7, v6, 3u, 1u, v4);
    goto LABEL_11;
  }

  v8 = sub_297ED6D60(*a1);
  if (v8)
  {
    v5 = v8;
    sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "Logical connection Init failed!");
    v9 = "phNciNfc_CoreInitialise:Releasing resources acquired by Receive Manager...";
LABEL_10:
    sub_297E4E0B0(1, a1 + 2460, 3u, 4u, v9);
    sub_297E75D54(a1);
    goto LABEL_11;
  }

  v10 = sub_297EBD044(a1);
  if (v10)
  {
    v5 = v10;
    sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "NCI Core Receiver State Machine Init Failed");
    v9 = "Releasing RecvMgr...";
    goto LABEL_10;
  }

  if (!sub_297E5B294(*a1))
  {
    v12 = sub_297EBDE58(a1);
    if (v12 == 13)
    {
      sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "NCI Core Initialization success!");
    }

    else
    {
      v5 = v12;
      sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "Releasing RecvMgr...");
      sub_297E75D54(a1);
      sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "phNciNfc_CoreInitialise:Receive State machine release...");
      sub_297EBD1D0(a1);
      sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "Sender State machine release...");
      sub_297E5B294(*a1);
      if (v5)
      {
        goto LABEL_11;
      }
    }

    v5 = sub_297F00D78(a1, 32);
    goto LABEL_11;
  }

  v5 = 1;
  sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "NCI Core Sender State Machine Init Failed");
  sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "Releasing RecvMgr...");
  sub_297E75D54(a1);
  sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "phNciNfc_CoreInitialise:Receive State machine release...");
  sub_297EBD1D0(a1);
LABEL_11:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreInitialise");
  return v5;
}

uint64_t sub_297EBDE58(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreReceiveManager_Init");
  if (a1)
  {
    v2 = sub_297E4EE00(a1, 0, 3);
    if (v2 != 13)
    {
      sub_297E4E0B0(1, a1 + 2460, 3u, 1u, "Tml Read request failed!");
      sub_297E54838(a1);
    }
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 3u, 1u, "Invalid Core context!");
  }

  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreReceiveManager_Init");
  return v2;
}

uint64_t sub_297EBDF1C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ReleaseNfceeCntx");
  v2 = *(a1 + 3984);
  if (*(a1 + 3984))
  {
    v3 = 0;
    v4 = (a1 + 4024);
    do
    {
      if (*v4)
      {
        v5 = *(a1 + 6524);
        phOsalNfc_FreeMemory();
        *v4 = 0;
        v2 = *(a1 + 3984);
      }

      ++v3;
      v4 += 13;
    }

    while (v3 < v2);
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ReleaseNfceeCntx");
}

uint64_t sub_297EBDFC0(uint64_t a1)
{
  v1 = a1;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ReleaseNciHandle");
  if (!v1)
  {
    sub_297ED7658(0);
LABEL_43:
    sub_297E4E0B0(2, v1, 3u, 4u, "Releasing NCI context has already been done");
    v45 = 49;
    goto LABEL_72;
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

  while (v4 != v1);
  v5 = sub_297ED7658(v1);
  if (v4 != v1)
  {
    goto LABEL_43;
  }

  v6 = v5;
  v7 = *(v1 + 1488);
  if (v7 && v7 != 0xFFFFFFFFFFFFLL)
  {
    v8 = *(v1 + 3396);
    phOsalNfc_Timer_Stop();
    v9 = *(v1 + 3396);
    v10 = *(v1 + 1488);
    phOsalNfc_Timer_Delete();
    *(v1 + 1488) = 0xFFFFFFFFFFFFLL;
  }

  v11 = *(v1 + 3384);
  if (v11 && v11 != 0xFFFFFFFFFFFFLL)
  {
    v12 = *(v1 + 3396);
    phOsalNfc_Timer_Stop();
    v13 = *(v1 + 3396);
    v14 = *(v1 + 3384);
    phOsalNfc_Timer_Delete();
    *(v1 + 3384) = 0xFFFFFFFFFFFFLL;
  }

  v15 = *(v1 + 1920);
  if (v15 && v15 != 0xFFFFFFFFFFFFLL)
  {
    v16 = *(v1 + 3396);
    phOsalNfc_Timer_Stop();
    v17 = *(v1 + 3396);
    v18 = *(v1 + 1920);
    phOsalNfc_Timer_Delete();
    *(v1 + 6512) = 0;
    *(v1 + 1920) = 0xFFFFFFFFFFFFLL;
    *(v1 + 1928) = 0;
  }

  v19 = *(v1 + 4704);
  if (v19 && v19 != 0xFFFFFFFFFFFFLL)
  {
    v20 = *(v1 + 6524);
    phOsalNfc_Timer_Stop();
    sub_297E687D8(1, v1 + 6524, *(v1 + 4704), 3u, 4u, "phNciNfc_ReleaseNciHandle");
    v21 = *(v1 + 6524);
    v22 = *(v1 + 4704);
    phOsalNfc_Timer_Delete();
    *(v1 + 4704) = 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v23 = *(v6 + 56);
    if (v23)
    {
      if (v23 != 0xFFFFFFFFFFFFLL)
      {
        v24 = *(v1 + 6524);
        phOsalNfc_Timer_Stop();
        v25 = *(v1 + 6524);
        v26 = *(v6 + 56);
        phOsalNfc_Timer_Delete();
        *(v1 + 6513) = 0;
        *(v6 + 64) = 0;
        *(v6 + 56) = 0;
        v27 = &gphNfc_DebugInfo_Sec;
        if (!*(v1 + 6524))
        {
          v27 = &gphNfc_DebugInfo_Prim;
        }

        v27[1] &= ~8u;
      }
    }
  }

  v28 = *(v1 + 4696);
  if (v28 && v28 != 0xFFFFFFFFFFFFLL)
  {
    v29 = *(v1 + 6524);
    phOsalNfc_Timer_Delete();
    *(v1 + 4696) = 0xFFFFFFFFFFFFLL;
  }

  v30 = *(v1 + 6504);
  if (v30 && v30 != 0xFFFFFFFFFFFFLL)
  {
    v31 = *(v1 + 6524);
    phOsalNfc_Timer_Stop();
    *(v1 + 6512) = 0;
    sub_297E687D8(1, v1 + 6524, *(v1 + 6504), 3u, 4u, "phNciNfc_ReleaseNciHandle");
    v32 = *(v1 + 6524);
    v33 = *(v1 + 6504);
    phOsalNfc_Timer_Delete();
    *(v1 + 6504) = 0xFFFFFFFFFFFFLL;
  }

  v34 = *(v1 + 6664);
  if (v34 && v34 != 0xFFFFFFFFFFFFLL)
  {
    v35 = *(v1 + 6524);
    phOsalNfc_Timer_Stop();
    *(v1 + 6512) = 0;
    sub_297E687D8(1, v1 + 6524, *(v1 + 6664), 3u, 4u, "phNciNfc_ReleaseNciHandle");
    v36 = *(v1 + 6524);
    v37 = *(v1 + 6664);
    phOsalNfc_Timer_Delete();
    *(v1 + 6664) = 0xFFFFFFFFFFFFLL;
  }

  v38 = *(v1 + 4872);
  if (v38 && v38 != 0xFFFFFFFFFFFFLL)
  {
    v39 = *(v1 + 6524);
    phOsalNfc_Timer_Stop();
    *(v1 + 6512) = 0;
    sub_297E687D8(1, v1 + 6524, *(v1 + 4872), 3u, 4u, "phNciNfc_ReleaseNciHandle");
    v40 = *(v1 + 6524);
    v41 = *(v1 + 4872);
    phOsalNfc_Timer_Delete();
    *(v1 + 4872) = 0xFFFFFFFFFFFFLL;
  }

  *(v1 + 6464) = 0;
  *(v1 + 6456) = 0;
  sub_297E7263C(v1);
  *(v1 + 172) = 0;
  sub_297E5B554(v1);
  sub_297EBDF1C(v1);
  v62 = 0;
  sub_297E4E1B4(2, v1, 3u, 5u, "phNciNfc_ReleaseMemory");
  v42 = 0;
  v43 = 0;
  do
  {
    v44 = *(&unk_2A18BDDC0 + 14 * v43 + 4);
    if (v42)
    {
      break;
    }

    v42 = 1;
    v43 = 1;
  }

  while (v44 != v1);
  if (v44 == v1)
  {
    v46 = *(v1 + 6528);
    v62 = v46;
    v47 = (v1 + 936);
    sub_297E4E1B4(3, v1 + 936, 3u, 5u, "phNciNfc_CoreRelease");
    if (sub_297E75D54(v1 + 936))
    {
      sub_297E4E0B0(1, v1 + 3396, 3u, 1u, "phNciNfc_CoreRelease:Notification Handler release failed");
      sub_297E4DFAC(3, v1 + 936, 3u, 5u, "phNciNfc_CoreRelease");
      sub_297E4E0B0(1, v1 + 6524, 3u, 1u, "Nci Core release failed!");
      v45 = 255;
    }

    else
    {
      sub_297E4E0B0(1, v1 + 3396, 3u, 4u, "Notification manager release success");
      v48 = *(v1 + 1568);
      phTmlNfc_ReadAbort();
      v49 = *(v1 + 1568);
      phTmlNfc_FlushTxRxBuffers();
      if (sub_297E56AFC(*(v1 + 1568)) == 1)
      {
        v50 = *(v1 + 1568);
        phTmlNfc_WriteAbort();
        sub_297E5A3A8(*(v1 + 1568), 0);
      }

      sub_297E4E1B4(3, v1 + 936, 3u, 5u, "phNciNfc_CoreReleaseSendRecvStateMachines");
      if (*v47)
      {
        if (sub_297E5B294(*v47))
        {
          sub_297E4E0B0(1, v1 + 3396, 3u, 1u, "Release Sender State Machine failed!");
        }

        if (sub_297EBD1D0(v1 + 936))
        {
          sub_297E4E0B0(1, v1 + 3396, 3u, 1u, "phNciNfc_CoreReleaseSendRecvStateMachines:Release Receiver State Machine failed!");
        }
      }

      sub_297E4DFAC(3, v1 + 936, 3u, 5u, "phNciNfc_CoreReleaseSendRecvStateMachines");
      sub_297E54838(v1 + 936);
      v51 = *(v1 + 1488);
      if (v51 && v51 != 0xFFFFFFFFFFFFLL)
      {
        v52 = *(v1 + 3396);
        phOsalNfc_Timer_Delete();
        *(v1 + 1488) = 0xFFFFFFFFFFFFLL;
      }

      sub_297E4DFAC(3, v1 + 936, 3u, 5u, "phNciNfc_CoreRelease");
      if (*(v1 + 3304))
      {
        v53 = *(v1 + 6524);
        phOsalNfc_FreeMemory();
        *(v1 + 3304) = 0;
      }

      if (*(v1 + 3336))
      {
        v54 = *(v1 + 6524);
        phOsalNfc_FreeMemory();
        *(v1 + 3336) = 0;
      }

      if (*(v1 + 896))
      {
        v55 = *(v1 + 6524);
        phOsalNfc_FreeMemory();
        *(v1 + 896) = 0;
      }

      if (*(v1 + 160))
      {
        v56 = *(v1 + 6524);
        phOsalNfc_FreeMemory();
        *(v1 + 160) = 0;
      }

      if (*(v1 + 4800))
      {
        v57 = *(v1 + 6524);
        phOsalNfc_FreeMemory();
        *(v1 + 4800) = 0;
      }

      if (*(v1 + 4640))
      {
        v58 = *(v1 + 6524);
        phOsalNfc_FreeMemory();
        *(v1 + 4640) = 0;
      }

      if (*(v1 + 4656))
      {
        v59 = *(v1 + 6524);
        phOsalNfc_FreeMemory();
        *(v1 + 4656) = 0;
      }

      sub_297E4E0B0(1, v1 + 6524, 3u, 4u, "Nci Release invoked - Release Nci Context handle");
      v60 = *(v1 + 6524);
      phOsalNfc_FreeMemory();
      sub_297E9F5D8(v46, 0);
      sub_297E9F688(v46, 0);
      v45 = 0;
    }
  }

  else
  {
    v45 = 1;
    sub_297E4E0B0(2, v1, 3u, 1u, "Invalid input parameter");
  }

  sub_297E4DFAC(0, &v62, 3u, 5u, "phNciNfc_ReleaseMemory");
  v1 = 0;
LABEL_72:
  sub_297E4DFAC(2, v1, 3u, 5u, "phNciNfc_ReleaseNciHandle");
  return v45;
}

BOOL sub_297EBE67C(uint64_t a1, uint64_t a2, int a3)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreValidateNfceeMgtCmd");
  if (a3 != 1)
  {
    if (!a3 && *(a2 + 24) == 1)
    {
      goto LABEL_4;
    }

LABEL_6:
    v6 = 1;
    goto LABEL_7;
  }

  if (*(a2 + 24) != 2)
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = *(a2 + 16) == 0;
LABEL_7:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreValidateNfceeMgtCmd");
  return v6;
}

uint64_t sub_297EBE720(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  sub_297E4E1B4(3, a2, 3u, 5u, "phNciNfc_DeAssertWakeUpTimerCb");
  if (!a2)
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

  while (v6 != a2);
  if (v6 != a2)
  {
LABEL_6:
    v7 = "phNciNfc_DeAssertWakeUpTimerCb-Invalid LIBNFC context";
LABEL_7:
    sub_297E4E0B0(3, a2, 3u, 1u, v7);
    return sub_297E4DFAC(3, a2, 3u, 5u, "phNciNfc_DeAssertWakeUpTimerCb");
  }

  if (sub_297E5A99C(*(a2 + 632), &v14))
  {
    v7 = "phNciNfc_DeAssertWakeUpTimerCb-Failed to retrieve gbIgnoreWkUpRet";
    goto LABEL_7;
  }

  v9 = *a2;
  if (*a2)
  {
    v10 = *(v9 + 6616) == 1 ? 0 : sub_297E5AA54(*(a2 + 632), 20);
    v11 = v14 == 1 ? 0 : v10;
    if (v11)
    {
      if (v11 == 179)
      {
        sub_297E96818(*(a2 + 632), 193);
        sub_297E4E0B0(1, v9 + 6524, 3u, 1u, "phNciNfc_DeAssertWakeUpTimerCb-Fialed to De-Assert Wake Up Line");
      }

      else
      {
        sub_297E96818(*(a2 + 632), 192);
      }
    }
  }

  if (a1 && a1 != 0xFFFFFFFFFFFFLL)
  {
    v12 = *(a2 + 2460);
    phOsalNfc_Timer_Stop();
    v13 = *(a2 + 2460);
    phOsalNfc_Timer_Delete();
    *(a2 + 2448) = 0xFFFFFFFFFFFFLL;
  }

  return sub_297E4DFAC(3, a2, 3u, 5u, "phNciNfc_DeAssertWakeUpTimerCb");
}

uint64_t sub_297EBE8B0(uint64_t a1)
{
  v8 = 0;
  v9 = a1;
  v7 = 0;
  sub_297E4E1B4(0, &v9, 3u, 5u, "phNciNfc_SpmiRetryWakeup");
  v1 = sub_297E5A99C(v9, &v7);
  if (v1)
  {
    v2 = v1;
    sub_297E4E0B0(0, &v9, 3u, 1u, "phNciNfc_SpmiRetryWakeup-Failed to retrieve gbIgnoreWkUpRet");
  }

  else
  {
    v4 = sub_297E5AA54(v9, 21);
    if (v7 == 1)
    {
      v2 = 0;
    }

    else
    {
      v2 = v4;
    }

    if (v2)
    {
      if (v2 == 179)
      {
        sub_297E50EBC(0, &v9, 3u, 4u, "phNciNfc_SpmiRetryWakeup: SPMI wakeup Retry Status =");
        if (!sub_297E9F51C(v9, &v8) && v8)
        {
          v5 = *(v8 + 6524);
        }

        phOsalNfc_Delay();
        v2 = sub_297E5AA54(v9, 21);
        if (v2 == 179)
        {
          phOsalNfc_Delay();
          v2 = sub_297E5AA54(v9, 21);
          if (v2)
          {
            sub_297E96818(v9, 193);
          }
        }
      }

      else
      {
        v6 = v4;
        sub_297E96914(0, &v9, 3u, 3u, "phNciNfc_SpmiRetryWakeup: SPMI wakeup Retry Status =");
        sub_297E96818(v9, 192);
        v2 = v6;
      }
    }
  }

  sub_297E4DFAC(0, &v9, 3u, 5u, "phNciNfc_SpmiRetryWakeup");
  return v2;
}

uint64_t sub_297EBEA38(uint64_t a1, int a2)
{
  v43 = 0;
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreReSend");
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
    v7 = 1;
    goto LABEL_7;
  }

  v9 = *a1;
  v10 = sub_297ED7658(*a1);
  v7 = sub_297E9144C(*a1);
  if (!v7 && v10)
  {
    if (*(a1 + 544) <= 4u)
    {
      *(v9 + 6496) = 0;
      *(a1 + 560) = a2;
      sub_297E4E0B0(1, v9 + 6524, 3u, 4u, "Syntax/Interface error received, Re-transmitting pkt..");
      if (*(v10 + 49) == 1)
      {
        *(v9 + 6273) = 1;
        if (*(v10 + 64) == 1)
        {
          sub_297E4E0B0(1, v9 + 6524, 3u, 1u, "Resend - Stopping Credit await timer..");
          v11 = *(v10 + 56);
          if (v11 && v11 != 0xFFFFFFFFFFFFLL)
          {
            v12 = *(a1 + 2460);
            phOsalNfc_Timer_Stop();
            v13 = *(a1 + 2460);
            v14 = *(v10 + 56);
            phOsalNfc_Timer_Delete();
          }

          *(v9 + 6513) = 0;
          *(v10 + 64) = 0;
          *(v10 + 56) = 0;
          *(v10 + 9) = -1;
          *(v10 + 32) = 0;
          *(v10 + 40) = 0;
          v15 = &gphNfc_DebugInfo_Sec;
          if (!*(v9 + 6524))
          {
            v15 = &gphNfc_DebugInfo_Prim;
          }

          v15[1] &= ~8u;
        }

        *(v10 + 49) = 0;
      }

      if (*(a1 + 552) == 0xFFFFFFFFFFFFLL)
      {
        sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "Creating resend timer");
      }

      else
      {
        sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "Resend timer active, restarting resend timer");
        v19 = *(a1 + 2460);
        v20 = *(a1 + 552);
        if (!phOsalNfc_Timer_Stop())
        {
          v17 = *(a1 + 552);
LABEL_31:
          if (v17 != 0xFFFFFFFFFFFFLL)
          {
            v23 = *(a1 + 2460);
            if (!phOsalNfc_Timer_Start())
            {
              sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "Resend timer started");
              v7 = 13;
              goto LABEL_7;
            }

            sub_297E4E0B0(1, v9 + 6524, 3u, 1u, "Failed to start resend timer");
            v24 = *(a1 + 2460);
            v25 = *(a1 + 552);
            phOsalNfc_Timer_Delete();
            *(a1 + 552) = 0xFFFFFFFFFFFFLL;
LABEL_60:
            v7 = 255;
            goto LABEL_7;
          }

LABEL_32:
          sub_297E4E0B0(1, v9 + 6524, 3u, 1u, "Failed to created resend timer");
          goto LABEL_60;
        }

        sub_297E4E0B0(1, v9 + 6524, 3u, 1u, "Failed to stop resend timer, proceed deleting and creating it");
        v21 = *(a1 + 2460);
        v22 = *(a1 + 552);
        if (phOsalNfc_Timer_Delete())
        {
          sub_297E4E0B0(1, v9 + 6524, 3u, 1u, "Unable to delete resend timer");
          *(a1 + 552) = 0xFFFFFFFFFFFFLL;
          goto LABEL_32;
        }
      }

      v16 = *(a1 + 2460);
      v17 = phOsalNfc_Timer_Create();
      *(a1 + 552) = v17;
      goto LABEL_31;
    }

    if (*(v9 + 6616) == 1)
    {
LABEL_45:
      sub_297E5B294(*a1);
      v31 = 1;
      sub_297E4E0B0(1, v9 + 6524, 3u, 1u, "Resend Count Reached");
      v32 = *(v10 + 56);
      if (v32 && v32 != 0xFFFFFFFFFFFFLL)
      {
        v33 = *(a1 + 2460);
        phOsalNfc_Timer_Stop();
        v34 = *(a1 + 2460);
        v35 = *(v10 + 56);
        phOsalNfc_Timer_Delete();
      }

      v36 = 0;
      *(v9 + 6513) = 0;
      *(v10 + 64) = 0;
      *(v10 + 56) = 0;
      *(v10 + 49) = 0;
      v37 = &gphNfc_DebugInfo_Sec;
      if (*(v9 + 6524))
      {
        v38 = &gphNfc_DebugInfo_Sec;
      }

      else
      {
        v38 = &gphNfc_DebugInfo_Prim;
      }

      v38[1] &= ~8u;
      *(v9 + 6496) = 1;
      if (!*(a1 + 2460))
      {
        v37 = &gphNfc_DebugInfo_Prim;
      }

      v37[1] = v37[1] & 0xFFFFFFFB | (4 * (*(a1 + 544) & 1));
      v7 = 255;
      while (1)
      {
        v39 = &unk_2A18BDDC0 + 112 * v36;
        if (*v39 == *(a1 + 632))
        {
          break;
        }

        v40 = v31;
        v31 = 0;
        v36 = 1;
        if ((v40 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v41 = *(v39 + 2);
      if (v41 <= 1)
      {
        v42 = *(&unk_2A18BDDC0 + 14 * v41 + 10);
        if (v42)
        {
          *(v42 + 152) = 80;
        }
      }

      goto LABEL_60;
    }

    if (sub_297E5AA54(*(a1 + 632), 20))
    {
      if (sub_297E5A99C(*(a1 + 632), &v43))
      {
        v18 = "phNciNfc_CoreReSend-Failed to retrieve bIgnoreWkUpRet";
LABEL_38:
        sub_297E4E0B0(1, v9 + 6524, 3u, 1u, v18);
        goto LABEL_39;
      }

      if (v43 != 1)
      {
        v18 = "phNciNfc_CoreReSend-Fialed to De-Assert Wake Up Line";
        goto LABEL_38;
      }
    }

LABEL_39:
    v26 = *(a1 + 2448);
    if (v26 && v26 != 0xFFFFFFFFFFFFLL)
    {
      v27 = *(a1 + 2460);
      if (phOsalNfc_Timer_Stop())
      {
        sub_297E4E0B0(1, v9 + 6524, 3u, 1u, "phNciNfc_CoreReSend Failed to Stop Timer");
      }

      v28 = *(a1 + 2460);
      v29 = *(a1 + 2448);
      v30 = phOsalNfc_Timer_Delete();
      *(a1 + 2448) = 0xFFFFFFFFFFFFLL;
      if (v30)
      {
        sub_297E4E0B0(1, v9 + 6524, 3u, 1u, "Failed to Delete De-Assert Wake Up Line Timer");
      }
    }

    goto LABEL_45;
  }

LABEL_7:
  sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreReSend");
  return v7;
}

uint64_t sub_297EBEF6C(uint64_t a1, uint64_t a2)
{
  v49 = 0;
  sub_297E4E1B4(3, a2, 3u, 5u, "phNciNfc_ResendTimerCb");
  if (!a2)
  {
    return sub_297E4DFAC(3, a2, 3u, 5u, "phNciNfc_ResendTimerCb");
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 5);
    if (v3)
    {
      break;
    }

    v3 = 1;
    v4 = 1;
  }

  while (v5 != a2);
  if (v5 != a2)
  {
    return sub_297E4DFAC(3, a2, 3u, 5u, "phNciNfc_ResendTimerCb");
  }

  v6 = *a2;
  v7 = *(a2 + 2460);
  phOsalNfc_Timer_Stop();
  v8 = *(a2 + 2460);
  phOsalNfc_Timer_Delete();
  *(a2 + 552) = 0xFFFFFFFFFFFFLL;
  v9 = *(a2 + 560);
  if (v9)
  {
    if (v9 != 1)
    {
      v15 = *(a2 + 560);
      sub_297E50EBC(1, a2 + 2460, 3u, 1u, "Unknown Msg Type");
      v16 = "phNciNfc_ResendTimerCb:Resend Failed, Unknown Message Type";
      v17 = v6 + 6524;
LABEL_28:
      sub_297E4E0B0(1, v17, 3u, 1u, v16);
      return sub_297E4DFAC(3, a2, 3u, 5u, "phNciNfc_ResendTimerCb");
    }

    v9 = 2;
    v10 = 540;
    v11 = 276;
  }

  else
  {
    v10 = 272;
    v11 = 8;
  }

  v12 = *(a2 + v10);
  if (*(v6 + 6524))
  {
    v13 = &gphNfc_DebugInfo_Sec;
  }

  else
  {
    v13 = &gphNfc_DebugInfo_Prim;
  }

  v13[1] |= 0x8000000u;
  sub_297E4E880(1, a2 + 2460, 3u, 4u, "Re Sending packet->->", a2 + v11);
  if (sub_297E5A824(a2))
  {
    if (sub_297E5A99C(*(v6 + 6528), &v49))
    {
      v14 = "phNciNfc_ResendTimerCb1-Failed to retrieve bIgnoreWkUpRet";
LABEL_19:
      sub_297E4E0B0(1, v6 + 6524, 3u, 1u, v14);
      goto LABEL_20;
    }

    if (v49 != 1)
    {
      v14 = "phNciNfc_ResendTimerCb1-Failed to Assert Wake Up Line";
      goto LABEL_19;
    }
  }

LABEL_20:
  v18 = *(a2 + 2448);
  if (v18 && v18 != 0xFFFFFFFFFFFFLL)
  {
    v19 = *(a2 + 2460);
    if (phOsalNfc_Timer_Stop())
    {
      sub_297E4E0B0(1, v6 + 6524, 3u, 1u, "phNciNfc_ResendTimerCb Failed to Stop Timer");
    }

    v20 = *(a2 + 2460);
    v21 = *(a2 + 2448);
    v22 = phOsalNfc_Timer_Delete();
    *(a2 + 2448) = 0xFFFFFFFFFFFFLL;
    if (v22)
    {
      sub_297E4E0B0(1, v6 + 6524, 3u, 1u, "Failed to Delete De-Assert Wake Up Line Timer");
    }
  }

  v23 = *(a2 + 2460);
  *(a2 + 2448) = phOsalNfc_Timer_Create();
  v24 = *(a2 + 2460);
  if (phOsalNfc_Timer_Start())
  {
    v16 = "phNciNfc_ResendTimerCb-Failed to Start De-Assert Wake Up Timer";
    v17 = v6 + 6524;
    goto LABEL_28;
  }

  if (!*(a2 + 616))
  {
    v26 = *(a2 + 984);
    if (v26 != 0xFFFFFFFFFFFFLL && *(a2 + 992) == 1)
    {
      sub_297E5A304(*(a2 + 2460), v26);
      *(v6 + 6512) = 0;
      v27 = *(a2 + 2460);
      v28 = *(a2 + 984);
      v29 = *(a2 + 620);
      if (phOsalNfc_Timer_Start())
      {
        sub_297E4E0B0(1, a2 + 2460, 3u, 4u, "Response timer start failed");
      }

      else
      {
        sub_297E4E0B0(1, a2 + 2460, 3u, 4u, "Response timer started");
        v30 = *(a2 + 2460);
        phOsalNfc_MemCopy();
        *(a2 + 992) = 1;
        if (*(a2 + 2460))
        {
          v31 = &gphNfc_DebugInfo_Sec;
        }

        else
        {
          v31 = &gphNfc_DebugInfo_Prim;
        }

        v31[1] &= ~0x10u;
        *(a2 + 968) = v9;
      }
    }
  }

  *(v6 + 6280);
  v32 = *(a2 + 632);
  v33 = phTmlNfc_Write();
  v34 = *(v6 + 6524);
  if (v34)
  {
    v35 = &gphNfc_DebugInfo_Sec;
  }

  else
  {
    v35 = &gphNfc_DebugInfo_Prim;
  }

  v35[1] &= ~0x8000000u;
  if (v33 == 13)
  {
    v38 = v33;
    if (!v34)
    {
      dword_2A18BE76C |= 1u;
    }

    v39 = sub_297E5ACA0(v6, (a2 + v11));
    if (*(v6 + 6524))
    {
      v40 = &gphNfc_DebugInfo_Sec;
    }

    else
    {
      v40 = &gphNfc_DebugInfo_Prim;
    }

    v40[1] = v40[1] & 0xFFFFFC1F | (32 * v39);
    ++*(a2 + 544);
    if (v38 == -1)
    {
      goto LABEL_55;
    }

    return sub_297E4DFAC(3, a2, 3u, 5u, "phNciNfc_ResendTimerCb");
  }

  if (v33 != 111)
  {
    v41 = "TML Write failed";
LABEL_54:
    sub_297E4E0B0(1, v6 + 6524, 3u, 1u, v41);
    sub_297E96818(*(v6 + 6528), 194);
LABEL_55:
    *(a2 + 544) = 0;
    if (!*(a2 + 568))
    {
      sub_297E8C964(*a2, *(a2 + 580), 1);
    }

    return sub_297E4DFAC(3, a2, 3u, 5u, "phNciNfc_ResendTimerCb");
  }

  v36 = *(a2 + 632);
  v37 = phTmlNfc_WriteAbort();
  sub_297E5A3A8(*(a2 + 632), 0);
  if (v37)
  {
    sub_297E4E0B0(1, v6 + 6524, 3u, 1u, "TML Write Abort Failed");
    goto LABEL_55;
  }

  if (*(v6 + 6524))
  {
    v42 = &gphNfc_DebugInfo_Sec;
  }

  else
  {
    v42 = &gphNfc_DebugInfo_Prim;
  }

  v42[1] |= 0x8000000u;
  if (sub_297E5A824(a2))
  {
    if (sub_297E5A99C(*(v6 + 6528), &v49))
    {
      v43 = "phNciNfc_ResendTimerCb1-Failed to retrieve bIgnoreWkUpRet";
LABEL_65:
      sub_297E4E0B0(1, v6 + 6524, 3u, 1u, v43);
      goto LABEL_66;
    }

    if (v49 != 1)
    {
      v43 = "phNciNfc_ResendTimerCb1-Failed to Assert Wake Up Line";
      goto LABEL_65;
    }
  }

LABEL_66:
  v44 = *(a2 + 632);
  v45 = phTmlNfc_Write();
  if (*(v6 + 6524))
  {
    dword_2A18BE764 &= ~0x8000000u;
    if (v45 != 13)
    {
      goto LABEL_75;
    }
  }

  else
  {
    v46 = dword_2A18BE76C & 0xF7FFFFFF;
    dword_2A18BE76C &= ~0x8000000u;
    if (v45 != 13)
    {
LABEL_75:
      v41 = "TML Write Failed";
      goto LABEL_54;
    }

    dword_2A18BE76C = v46 | 1;
  }

  v47 = sub_297E5ACA0(v6, (a2 + v11));
  if (*(a2 + 2460))
  {
    v48 = &gphNfc_DebugInfo_Sec;
  }

  else
  {
    v48 = &gphNfc_DebugInfo_Prim;
  }

  v48[1] = v48[1] & 0xFFFFFC1F | (32 * v47);
  sub_297E4E0B0(1, a2 + 2460, 3u, 4u, "Re Sending packet when TML BUSY");
  ++*(a2 + 544);
  return sub_297E4DFAC(3, a2, 3u, 5u, "phNciNfc_ResendTimerCb");
}

uint64_t sub_297EBF550(uint64_t *a1, unsigned __int16 *a2)
{
  if (a2)
  {
    v4 = *(a2 + 1);
    if (v4 <= 1)
    {
      sub_297E5A3A8(*(&unk_2A18BDDC0 + 14 * v4), 0);
    }
  }

  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_CoreReSendCb");
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
  if (v7 != a1 || !*a1)
  {
LABEL_9:
    sub_297E4E0B0(3, a1, 3u, 2u, "phNciNfc_CoreReSendCb:Nci context cleared, received send callback!");
    goto LABEL_10;
  }

  sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "phNciNfc_CoreReSendCb:Resend command send callback received");
  *(*a1 + 5992) = 0;
  if (*(a1 + 615))
  {
    if (a2)
    {
      goto LABEL_16;
    }

LABEL_20:
    v10 = "phNciNfc_CoreReSendCb:Invalid 'pInfo' from TML!";
LABEL_23:
    sub_297E4E0B0(1, a1 + 2460, 3u, 1u, v10);
    goto LABEL_24;
  }

  dword_2A18BE76C &= ~1u;
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_16:
  v9 = *a2;
  sub_297E50DB0(1, a1 + 2460, 3u, 4u, "phNciNfc_CoreReSendCb: Send status");
  if (*a2 == 179)
  {
    sub_297E4E0B0(1, a1 + 2460, 3u, 2u, "phNciNfc_CoreReSendCb: SPMI Nack");
    goto LABEL_24;
  }

  if (*a2)
  {
    v10 = "phNciNfc_CoreSendCb: Tml write error!";
    goto LABEL_23;
  }

  sub_297E4E0B0(1, a1 + 2460, 3u, 4u, "phNciNfc_CoreReSendCb: Send success");
LABEL_24:
  sub_297E5B1DC(*a1, a2);
LABEL_10:

  return sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_CoreReSendCb");
}

uint64_t sub_297EBF738(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3u, 5u, "phNciNfc_AbortCoreReSend");
  if (a1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(&unk_2A18BDDC0 + 14 * v3 + 5);
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
      v6 = *(a1 + 552);
      if (v6)
      {
        if (v6 != 0xFFFFFFFFFFFFLL)
        {
          v7 = *(a1 + 2460);
          phOsalNfc_Timer_Stop();
          v8 = *(a1 + 2460);
          v9 = *(a1 + 552);
          phOsalNfc_Timer_Delete();
          *(a1 + 552) = 0xFFFFFFFFFFFFLL;
          *(a1 + 560) = 4;
        }
      }
    }
  }

  return sub_297E4DFAC(3, a1, 3u, 5u, "phNciNfc_AbortCoreReSend");
}

uint64_t sub_297EBF810(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HGetMaximumBlksToRead");
  v2 = *(a1 + 700);
  v3 = (v2 | (*(a1 + 699) << 8)) >> 4;
  if ((v2 & 0xF) != 0)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = v3;
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HGetMaximumBlksToRead");
  return v4;
}

uint64_t sub_297EBF88C(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v23 = 0;
  v24 = a1;
  sub_297E4E1B4(0, &v24, 8u, 5u, "phFriNfc_Felica_RdNdef");
  sub_297E57170(v24, &v23);
  v11 = 1;
  if (a4 <= 1)
  {
    if (a3)
    {
      if (a2)
      {
        if (a5)
        {
          v12 = v23;
          if (v23)
          {
            if (a4 == 1 || v23[540] != 3)
            {
              *(v23 + 2) = a5;
              *(v12 + 5) = a6;
              *(v12 + 62) = *a3;
              *(v12 + 30) = a2;
              *(v12 + 69) = a3;
              *a3 = 0;
              *(v12 + 126) = 0;
              v12[540] = 2;
              v12[686] = a4;
              if (a4 == 1)
              {
                v12[640] = 0;
                *(v12 + 338) = 0;
                v12[659] = 0;
                *(v12 + 682) = 285212672;
                sub_297EBFB18(v12, v12 + 660);
                v13 = v23;
                if (v23[65])
                {
                  sub_297E4E1B4(2, v23, 8u, 5u, "phFriNfc_Felica_HNdefRdAttrInfo");
                  *(v13 + 58) = 240;
                  v13[208] &= 0xFCu;
                  *(v13 + 133) = 1536;
                  v14 = *(v13 + 680);
                  v15 = *(v13 + 28);
                  phOsalNfc_MemCopy();
                  *(v13 + 69) = 251660545;
                  v16 = v13 + 281;
                  v17 = 1;
                  do
                  {
                    *(v16 - 1) = 0x80;
                    *v16 = v17;
                    v16 += 2;
                  }

                  while (v17++ < 0xF);
                  v13[266] = 44;
                  *(v13 + 132) = 260;
                  *(v13 + 263) = 44;
                  *v13 = 4;
                  *(v13 + 6) = sub_297EC0534;
                  *(v13 + 7) = v13;
                  v11 = sub_297E98D38(v13, sub_297EC0B0C);
                  sub_297E4DFAC(2, v13, 8u, 5u, "phFriNfc_Felica_HNdefRdAttrInfo");
                }

                else
                {
                  v11 = sub_297EBFB8C(v23);
                }

                if (v11 != 13)
                {
                  sub_297EBFC80(v23, 0, v11);
                }
              }

              else
              {
                v19 = sub_297EBF810(v12);
                v20 = v23;
                v21 = v23[640];
                if (v19 == v21 && v23[684] == 4)
                {
                  v11 = 26;
                }

                else
                {
                  *(v23 + 341) = 16 * v21 - v23[659];
                  v11 = sub_297EBFDEC(v20, v20[686]);
                }
              }
            }

            else
            {
              v11 = 245;
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(0, &v24, 8u, 5u, "phFriNfc_Felica_RdNdef");
  return v11;
}

uint64_t sub_297EBFB18(uint64_t a1, void *a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HInitInternalBuf");
  *a2 = 0;
  a2[1] = 0;

  return sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HInitInternalBuf");
}

uint64_t sub_297EBFB8C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HRdAttrInfo");
  *(a1 + 232) = 240;
  *(a1 + 208) &= 0xFCu;
  *(a1 + 266) = 1536;
  v2 = *(a1 + 2720);
  v3 = *(a1 + 224);
  phOsalNfc_MemCopy();
  *(a1 + 276) = 16780033;
  *(a1 + 280) = 128;
  *(a1 + 266) = 16;
  *(a1 + 264) = 260;
  *(a1 + 526) = 16;
  *a1 = 4;
  *(a1 + 48) = sub_297EC0534;
  *(a1 + 56) = a1;
  v4 = sub_297E98D38(a1, sub_297EC0B0C);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HRdAttrInfo");
  return v4;
}

uint64_t sub_297EBFC80(unsigned __int8 *a1, int a2, uint64_t a3)
{
  v13 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v6 = *a1;
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HCrHandler");
  *a1 = 0;
  if (a2 == 4)
  {
    (*(a1 + 4))(*(a1 + 5), a3);
    return sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HCrHandler");
  }

  if ((v6 - 1) < 4)
  {
    if (!a3)
    {
      goto LABEL_9;
    }

    if (a3 == 157)
    {
LABEL_19:
      (*(a1 + 1))(*(a1 + 5), a3, &v12);
      return sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HCrHandler");
    }

    if (a3 != 25)
    {
      a1[546] = 0;
      v8 = 3;
    }

    else
    {
LABEL_9:
      a1[546] = 1;
      v13 = 16 * *(a1 + 347);
      if (a3 == 25)
      {
        v7 = 0;
      }

      else
      {
        v7 = (a1[698] << 24) | (a1[699] << 8) | a1[700];
      }

      HIDWORD(v12) = v7;
      v8 = a1[545];
    }

    LOBYTE(v12) = v8;
    goto LABEL_19;
  }

  if ((v6 - 6) >= 3)
  {
    if (v6 == 5)
    {
      if (!a3)
      {
        LODWORD(v11) = **(a1 + 69);
        v10 = *(a1 + 30);
      }

      (*(a1 + 2))(*(a1 + 5), a3, &v10);
    }
  }

  else
  {
    (*(a1 + 3))(*(a1 + 5), a3);
  }

  return sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HCrHandler");
}

uint64_t sub_297EBFDEC(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HReadData");
  v4 = sub_297EBF810(a1);
  v5 = v4;
  if (*(a1 + 248) > *(a1 + 252) && v4 > *(a1 + 640))
  {
    if (!*(a1 + 659))
    {
      goto LABEL_7;
    }

    sub_297EC0028(a1);
  }

  v6 = sub_297EC0344(a1);
  if (v6 && *(a1 + 680) == 1)
  {
LABEL_7:
    v7 = sub_297EC0474(a1, v5);
    sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HSetTransceiveForRead");
    *(a1 + 232) = 240;
    *a1 = 5;
    *(a1 + 48) = sub_297EC0534;
    *(a1 + 56) = a1;
    *(a1 + 208) &= 0xFCu;
    v8 = a1 + 266;
    *(a1 + 266) = 1536;
    v9 = *(a1 + 2720);
    v10 = *(a1 + 224);
    phOsalNfc_MemCopy();
    *(a1 + 276) = 2817;
    *(a1 + 278) = 0;
    v11 = v7 >> 4;
    *(a1 + 279) = v7 >> 4;
    if (a2 == 1)
    {
      if (v7 >= 0x10)
      {
        v12 = 0;
        v13 = 14;
        do
        {
          *(v8 + v13) = 0x80;
          v14 = v13 + 1;
          *(v8 + (v13 + 1)) = ++v12;
          v13 += 2;
          if (v14 == -1)
          {
            v13 = 0;
          }
        }

        while (v11 > v12);
        goto LABEL_20;
      }
    }

    else if (v7 >= 0x10)
    {
      v15 = 14;
      v16 = 1;
      do
      {
        *(v8 + v15) = 0x80;
        v17 = v15 + 1;
        *(v8 + (v15 + 1)) = *(a1 + 640) + v16;
        v15 += 2;
        if (v17 == -1)
        {
          v15 = 0;
        }

        v18 = v11 > v16++;
        v13 = v15;
      }

      while (v18);
      goto LABEL_20;
    }

    v13 = 14;
LABEL_20:
    *(a1 + 266) = v13;
    *(a1 + 526) = v13;
    *(a1 + 264) = 260;
    v6 = sub_297E98D38(a1, sub_297EC0B0C);
    sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HSetTransceiveForRead");
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HReadData");
  return v6;
}

uint64_t sub_297EC0028(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HAfterRead_CopyDataToBuff");
  v2 = *(a1 + 659);
  v3 = *(a1 + 252);
  v4 = *(a1 + 248) - v3;
  if (!*(a1 + 659))
  {
    v10 = *(a1 + 700);
    v11 = (*(a1 + 698) << 24) | (*(a1 + 699) << 8) | v10;
    v12 = *(a1 + 688);
    v13 = *(a1 + 682);
    v14 = v13 + v12;
    if (v12 <= v4)
    {
      v22 = *(a1 + 2720);
      v23 = *(a1 + 240);
      if (v14 <= v11)
      {
        v34 = *(a1 + 688);
        phOsalNfc_MemCopy();
        v35 = *(a1 + 688);
        *(a1 + 252) += v35;
        *(a1 + 682) += v35;
        goto LABEL_21;
      }
    }

    else
    {
      if (v14 <= v11)
      {
        *(a1 + 659) = v12 - v4;
        v26 = *(a1 + 2720);
        v27 = *(a1 + 240);
        phOsalNfc_MemCopy();
        v28 = a1 + *(a1 + 248) - *(a1 + 252) + 13;
        v29 = *(a1 + 2720);
        v30 = *(a1 + 659);
        phOsalNfc_MemCopy();
        *(a1 + 676) = 1;
        v31 = *(a1 + 248);
        v32 = *(a1 + 252);
        *(a1 + 682) += v31 - v32;
        v33 = v32 + (v31 - v32);
        *(a1 + 252) = v33;
        if (v11 > v31 - v33)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      v15 = *(a1 + 2720);
      v16 = *(a1 + 240) + v3;
      if (v4 <= v11 - v13)
      {
        phOsalNfc_MemCopy();
        v37 = *(a1 + 682);
        v38 = *(a1 + 248);
        v39 = *(a1 + 252);
        *(a1 + 659) = v39 - v38 + v10 - v37;
        if (v39 - v38 + v10 - v37)
        {
          v40 = *(a1 + 2720);
          phOsalNfc_MemCopy();
          *(a1 + 676) = 1;
          v38 = *(a1 + 248);
          v39 = *(a1 + 252);
          v37 = *(a1 + 682);
        }

        v41 = v38 - v39;
        *(a1 + 682) = v41 + v37;
        v25 = v39 + v41;
        goto LABEL_17;
      }
    }

    phOsalNfc_MemCopy();
    *(a1 + 252) += v11 - *(a1 + 682);
    *(a1 + 682) = v11;
LABEL_19:
    *(a1 + 684) = 4;
    goto LABEL_21;
  }

  if (v4 < v2)
  {
    *(a1 + 659) = v2 - v4;
    v5 = *(a1 + 2720);
    v6 = *(a1 + 240);
    if (*(a1 + 676) == 1)
    {
      v7 = *(a1 + 677);
      phOsalNfc_MemCopy();
      v8 = *(a1 + 248);
      v9 = *(a1 + 252);
      *(a1 + 677) += v8 - v9;
      *(a1 + 676) = 1;
      if (!*(a1 + 659))
      {
        *(a1 + 684) = 4;
      }
    }

    else
    {
      phOsalNfc_MemCopy();
      v8 = *(a1 + 248);
      v9 = *(a1 + 252);
    }

    v24 = v8 - v9;
    *(a1 + 682) += v24;
    v25 = v9 + v24;
LABEL_17:
    *(a1 + 252) = v25;
    goto LABEL_21;
  }

  v17 = *(a1 + 2720);
  if (*(a1 + 676) == 1)
  {
    v18 = a1 + 660 + *(a1 + 677);
  }

  v19 = *(a1 + 240) + v3;
  v20 = *(a1 + 659);
  phOsalNfc_MemCopy();
  v21 = *(a1 + 659);
  *(a1 + 252) += v21;
  *(a1 + 682) += v21;
  *(a1 + 659) = 0;
  *(a1 + 676) = 0;
LABEL_21:

  return sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HAfterRead_CopyDataToBuff");
}

uint64_t sub_297EC0344(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HChkApduBuff_Size");
  v2 = sub_297EBF810(a1);
  v3 = *(a1 + 248);
  v4 = *(a1 + 252);
  if (v3 == v4)
  {
    v5 = *(a1 + 640);
    if (v2 <= v5)
    {
      if (v2 == v5)
      {
        if (!*(a1 + 659))
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }

      if (v3 != 16 * v2)
      {
        v6 = 0;
        goto LABEL_19;
      }

      goto LABEL_8;
    }

LABEL_17:
    v6 = 0;
    **(a1 + 552) = v3;
    goto LABEL_18;
  }

  if (v4 == 16 * v2)
  {
    goto LABEL_7;
  }

  if (v2 != *(a1 + 640))
  {
    *(a1 + 680) = 1;
    v6 = 13;
    goto LABEL_19;
  }

  if (!*(a1 + 659))
  {
LABEL_7:
    v3 = *(a1 + 252);
    goto LABEL_8;
  }

  if (*(a1 + 684) == 1)
  {
    v6 = 0;
    **(a1 + 552) = v4;
LABEL_18:
    *(a1 + 252) = 0;
    goto LABEL_19;
  }

  sub_297EC0028(a1);
  v3 = *(a1 + 252);
  if (*(a1 + 659))
  {
    goto LABEL_17;
  }

LABEL_8:
  v6 = 0;
  **(a1 + 552) = v3;
  *(a1 + 252) = 0;
  *(a1 + 659) = 0;
  *(a1 + 684) = 4;
LABEL_19:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HChkApduBuff_Size");
  return v6;
}

uint64_t sub_297EC0474(uint64_t a1, unsigned int a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HSetTrxLen");
  v4 = *(a1 + 248);
  v5 = *(a1 + 252);
  v6 = ((v4 - v5) & 0xF) != 0 && v4 >= v5;
  v7 = (v4 - v5) >> 4;
  if (v6)
  {
    LOWORD(v7) = v7 + 1;
  }

  if (a2 >= v7)
  {
    v8 = *(a1 + 640);
    if ((a2 - v8) >= v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    LOWORD(v8) = *(a1 + 640);
  }

  LOWORD(v7) = a2 - v8;
LABEL_10:
  v7 = v7;
  if (v7 >= *(a1 + 691))
  {
    v7 = *(a1 + 691);
  }

  if (v7 >= a2)
  {
    v7 = a2;
  }

  v9 = 16 * v7;
  *(a1 + 688) = 16 * v7;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HSetTrxLen");
  return v9;
}

uint64_t sub_297EC0534(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Felica_Process");
  if (a3)
  {
    if (a2[540] == 6)
    {
      v5 = a2;
      v6 = 4;
LABEL_21:
      v9 = a3;
LABEL_22:
      sub_297EBFC80(v5, v6, v9);
      goto LABEL_23;
    }

    v10 = *a2;
    if ((v10 - 1) < 4)
    {
      v5 = a2;
      v6 = 0;
      goto LABEL_21;
    }

    if ((v10 - 6) < 3)
    {
      v5 = a2;
      v6 = 2;
      goto LABEL_21;
    }

    if (v10 == 5)
    {
      v5 = a2;
      v6 = 1;
      goto LABEL_21;
    }

LABEL_32:
    v5 = a2;
    v6 = 5;
    v9 = 245;
    goto LABEL_22;
  }

  v7 = *a2;
  if (v7 <= 5)
  {
    if (v7 != 2)
    {
      if (v7 != 4)
      {
        if (v7 != 5)
        {
          goto LABEL_32;
        }

        v11 = sub_297EC210C(a2);
        if (v11)
        {
LABEL_19:
          v9 = v11;
          goto LABEL_91;
        }

        if (a2[267] != 7 || (v19 = sub_297EBF810(a2), v20 = sub_297EC0474(a2, v19), a2[276]))
        {
          *(a2 + 126) = 0;
          v9 = 20;
          goto LABEL_91;
        }

        if (v20 != 16 * a2[278])
        {
          *(a2 + 126) = 0;
          a2[659] = 0;
          v9 = 27;
          goto LABEL_91;
        }

        a2[640] += v20 >> 4;
        sub_297EC0028(a2);
        v11 = sub_297EBFDEC(a2, 0);
LABEL_83:
        if (v11 == 13)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }

      if (a2[276])
      {
        v9 = 20;
        goto LABEL_55;
      }

      v21 = sub_297EC210C(a2);
      if (v21 || (v21 = sub_297EC21D4(a2), v21 != 25) && v21)
      {
        v9 = v21;
        goto LABEL_55;
      }

      v33 = (a2[698] << 24) | (a2[699] << 8) | a2[700];
      v34 = a2[685];
      v9 = 245;
      if (v34 <= 0x11)
      {
        if (v34 == 16)
        {
          v8 = sub_297EC127C(a2);
          goto LABEL_10;
        }

        if (v34 == 17)
        {
          if (!v33 && !a2[65])
          {
            v5 = a2;
            v6 = 1;
            v9 = 157;
            goto LABEL_22;
          }

          v11 = sub_297EC13A4(a2, v33);
          goto LABEL_83;
        }

LABEL_55:
        if (a2[540] == 6)
        {
          goto LABEL_56;
        }

LABEL_91:
        v5 = a2;
        v6 = 1;
        goto LABEL_22;
      }

      if (v34 != 18)
      {
        if (v34 == 20)
        {
          v39 = sub_297EC10C4(a2);
          if (v39 == 13)
          {
            goto LABEL_23;
          }

          v9 = v39;
LABEL_56:
          v5 = a2;
          v6 = 4;
          goto LABEL_22;
        }

        goto LABEL_55;
      }

      if (v21 == 25)
      {
        v9 = 25;
      }

      else
      {
        v9 = sub_297E9C0B8(a2, v33);
      }

      a2[544] = 3;
      *(a2 + 126) = 0;
      a2[685] = 15;
LABEL_63:
      v5 = a2;
      v6 = 0;
      goto LABEL_22;
    }

    sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Felica_HUpdateManufIdDetails");
    v13 = *(a2 + 132);
    if (a2[65])
    {
      if (v13 <= 0x11)
      {
        goto LABEL_62;
      }
    }

    else if (v13 < 0x14)
    {
      goto LABEL_62;
    }

    v14 = *(a2 + 680);
    v15 = *(a2 + 28);
    phOsalNfc_MemCopy();
    v16 = *(a2 + 680);
    v17 = *(a2 + 28);
    phOsalNfc_MemCopy();
    if (a2[65])
    {
      *(*(a2 + 28) + 28) = 18;
      v18 = -4;
    }

    else
    {
      *(*(a2 + 28) + 28) = a2[284];
      v18 = a2[285];
    }

    *(*(a2 + 28) + 27) = v18;
    *(*(a2 + 28) + 18) = 8;
    v22 = *(a2 + 680);
    v23 = *(a2 + 28);
    phOsalNfc_MemCopy();
    v24 = *(a2 + 680);
    v25 = *(a2 + 28);
    phOsalNfc_MemCopy();
    v26 = *(a2 + 28);
    if (*(v26 + 28) == 18 && *(v26 + 27) == 252)
    {
      sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_Felica_HUpdateManufIdDetails");
      a2[685] = 18;
      v9 = sub_297EBFB8C(a2);
      if (v9 == 13)
      {
        goto LABEL_23;
      }

      goto LABEL_63;
    }

LABEL_62:
    sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_Felica_HUpdateManufIdDetails");
    v9 = 22;
    goto LABEL_63;
  }

  if (*a2 > 7u)
  {
    if (v7 == 8)
    {
      if (a2[276])
      {
        v9 = 21;
      }

      else
      {
        v9 = 0;
      }

LABEL_43:
      v5 = a2;
      v6 = 2;
      goto LABEL_22;
    }

    if (v7 != 10)
    {
      goto LABEL_32;
    }

    if (a2[276])
    {
      v9 = 21;
    }

    else
    {
      v9 = 0;
      a2[545] = 1;
    }

    goto LABEL_56;
  }

  if (v7 != 6)
  {
    if (v7 != 7)
    {
      goto LABEL_32;
    }

    if (!a2[276])
    {
      goto LABEL_9;
    }

LABEL_39:
    v5 = a2;
    v6 = 2;
    v9 = 21;
    goto LABEL_22;
  }

  if (a2[267] != 9 || a2[276])
  {
    *(a2 + 126) = 0;
    a2[642] = 0;
    *(a2 + 62) = 0;
    goto LABEL_39;
  }

  if (a2[679] != 1)
  {
    v35 = *(a2 + 126) + *(a2 + 108);
    *(a2 + 126) = v35;
    **(a2 + 32) = v35;
    if (a2[684])
    {
      v36 = a2[640];
      v37 = *(a2 + 347);
      if (v37 > v36)
      {
        LOBYTE(v36) = a2[641] + v36;
        a2[640] = v36;
        v36 = v36;
      }

      if (v37 == v36)
      {
        v38 = 16 * v37;
        if (v38 == v35 || ((a2[698] << 24) | (a2[699] << 8) | a2[700]) + v35 == v38)
        {
          a2[684] = 4;
          v8 = sub_297EC0EEC(a2, 1);
          goto LABEL_10;
        }
      }
    }

    else
    {
      a2[640] += a2[641];
    }

LABEL_9:
    v8 = sub_297EC1444(a2);
LABEL_10:
    if (v8 == 13)
    {
      goto LABEL_23;
    }

    v9 = v8;
    goto LABEL_43;
  }

  v27 = *(a2 + 680);
  v28 = &a2[a2[642]];
  v29 = *(a2 + 30);
  v30 = *(a2 + 108);
  phOsalNfc_MemCopy();
  v31 = *(a2 + 108);
  a2[642] += v31;
  v32 = *(a2 + 126) + v31;
  *(a2 + 126) = v32;
  **(a2 + 32) = v32;
  a2[679] = 0;
  sub_297EC1444(a2);
LABEL_23:

  return sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_Felica_Process");
}

uint64_t sub_297EC0B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 8u, 5u, "phFriNfc_Felica_CB_Transceive");
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

  return sub_297E4DFAC(0, &v10, 8u, 5u, "phFriNfc_Felica_CB_Transceive");
}

uint64_t sub_297EC0BA4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  v21 = a1;
  v20 = 0;
  v19 = 208;
  v18 = 0;
  sub_297E4E1B4(0, &v21, 8u, 5u, "phFriNfc_Felica_WrNdef");
  sub_297E57170(v21, &v18);
  v11 = 1;
  if (a3 && a5 && v18)
  {
    v12 = *(v18 + 680);
    phOsalNfc_MemCopy();
    v13 = v18;
    v14 = v18 + 2740;
    *(v18 + 685) = 3;
    if (*a3)
    {
      v14 = a3;
      v15 = a2;
    }

    else
    {
      v15 = v13 + 2736;
    }

    *(v13 + 3) = a5;
    *(v13 + 5) = a6;
    *(v13 + 126) = 0;
    **(v13 + 66) = 0;
    *(v13 + 62) = *v14;
    *(v13 + 30) = v15;
    *(v13 + 32) = v14;
    *v14 = 0;
    v13[540] = 3;
    v13[686] = a4;
    v13[685] = 16;
    if (v13[65])
    {
      v16 = sub_297EC0D00(v13);
    }

    else
    {
      v16 = sub_297EBFB8C(v13);
    }

    v11 = v16;
    if (v16 != 13)
    {
      sub_297EBFC80(v18, 0, v16);
    }
  }

  sub_297E4DFAC(0, &v21, 8u, 5u, "phFriNfc_Felica_WrNdef");
  return v11;
}

uint64_t sub_297EC0D00(uint64_t a1)
{
  v2 = a1 + 276;
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HNdefWrAttrInfo");
  *(a1 + 232) = 240;
  *(a1 + 208) &= 0xFCu;
  *(a1 + 266) = 2048;
  v3 = *(a1 + 2720);
  v4 = *(a1 + 224);
  phOsalNfc_MemCopy();
  *v2 = 0xF10008001000901;
  *(a1 + 284) = 12;
  *(a1 + 286) = -109;
  *(v2 + 11) = 0;
  *(v2 + 15) = 271;
  *(a1 + 295) = 496;
  *(a1 + 297) = -67;
  *(a1 + 266) = 32;
  *(a1 + 264) = 260;
  *(a1 + 526) = 32;
  *a1 = 7;
  *(a1 + 48) = sub_297EC0534;
  *(a1 + 56) = a1;
  v5 = sub_297E98D38(a1, sub_297EC0B0C);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HNdefWrAttrInfo");
  return v5;
}

uint64_t sub_297EC0E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 8u, 5u, "phFriNfc_Felica_ConvertToRdOnlyNdef");
  sub_297E57170(v9, &v8);
  v5 = 1;
  if (a2)
  {
    v6 = v8;
    if (v8)
    {
      *(v8 + 4) = a2;
      *(v6 + 5) = a3;
      v6[540] = 6;
      v6[685] = 20;
      v5 = sub_297EBFB8C(v6);
      if (v5 != 13)
      {
        sub_297EBFC80(v8, 0, v5);
      }
    }
  }

  sub_297E4DFAC(0, &v9, 8u, 5u, "phFriNfc_Felica_ConvertToRdOnlyNdef");
  return v5;
}

uint64_t sub_297EC0EEC(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HUpdateAttrBlkForWrOp");
  if (a2)
  {
    v4 = 8;
  }

  else
  {
    v4 = 7;
  }

  *a1 = v4;
  *(a1 + 232) = 240;
  *(a1 + 266) = 2048;
  v5 = *(a1 + 2720);
  v6 = *(a1 + 224);
  phOsalNfc_MemCopy();
  *(a1 + 276) = 16779521;
  *(a1 + 280) = 128;
  *(a1 + 282) = *(a1 + 690);
  *(a1 + 283) = *(a1 + 691);
  v7 = *(a1 + 694);
  *(a1 + 285) = HIBYTE(v7);
  *(a1 + 286) = v7;
  *(a1 + 287) = 0;
  if (a2)
  {
    v8 = *(a1 + 642);
    if (*(a1 + 642))
    {
      v9 = *(a1 + 640);
      if (!*(a1 + 640))
      {
        v15 = 1;
        goto LABEL_16;
      }

      *(a1 + 291) = 0;
      *(a1 + 292) = *(a1 + 697);
      v10 = v8 + 16 * v9 - 16;
    }

    else
    {
      *(a1 + 291) = 0;
      *(a1 + 292) = *(a1 + 697);
      v10 = 16 * *(a1 + 640);
    }

    *(a1 + 293) = 0;
    *(a1 + 294) = HIBYTE(v10);
  }

  else
  {
    *(a1 + 291) = 15;
    *(a1 + 292) = *(a1 + 697);
    *(a1 + 293) = *(a1 + 698);
    LOBYTE(v10) = *(a1 + 700);
  }

  v11 = 0;
  *(a1 + 295) = v10;
  for (i = 282; i != 296; ++i)
  {
    v13 = *(a1 + i);
    v14 = v13 + v11;
    v11 += v13;
    if (v14 >= 0x10000)
    {
      v11 = 0;
    }
  }

  *(a1 + 296) = bswap32(v11) >> 16;
  *(a1 + 266) = 32;
  *(a1 + 264) = 260;
  *(a1 + 526) = 32;
  *(a1 + 48) = sub_297EC0534;
  *(a1 + 56) = a1;
  *(a1 + 208) &= 0xFCu;
  v15 = sub_297E98D38(a1, sub_297EC0B0C);
LABEL_16:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HUpdateAttrBlkForWrOp");
  return v15;
}

uint64_t sub_297EC10C4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HUpdateAttrBlkForRdOnlyOp");
  if (!a1)
  {
    goto LABEL_12;
  }

  v2 = *(a1 + 697);
  if (v2 == 1)
  {
    if (!sub_297E8EA44(*(a1 + 2712)))
    {
      goto LABEL_7;
    }

    v2 = *(a1 + 697);
  }

  if (v2 || sub_297E8EA44(*(a1 + 2712)) != 1)
  {
LABEL_12:
    v11 = 4341;
    goto LABEL_13;
  }

LABEL_7:
  *a1 = 10;
  *(a1 + 232) = 240;
  *(a1 + 266) = 2048;
  v3 = *(a1 + 2720);
  v4 = *(a1 + 224);
  phOsalNfc_MemCopy();
  *(a1 + 276) = 16779521;
  *(a1 + 280) = 128;
  *(a1 + 282) = *(a1 + 690);
  *(a1 + 283) = *(a1 + 691);
  v5 = *(a1 + 694);
  *(a1 + 285) = HIBYTE(v5);
  *(a1 + 286) = v5;
  *(a1 + 287) = 0;
  *(a1 + 291) = 0;
  v6 = sub_297E8EA44(*(a1 + 2712));
  v7 = 0;
  *(a1 + 292) = v6 == 1;
  *(a1 + 293) = *(a1 + 698);
  *(a1 + 294) = *(a1 + 699);
  for (i = 282; i != 296; ++i)
  {
    v9 = *(a1 + i);
    v10 = v9 + v7;
    v7 += v9;
    if (v10 >= 0x10000)
    {
      v7 = 0;
    }
  }

  *(a1 + 296) = bswap32(v7) >> 16;
  *(a1 + 266) = 32;
  *(a1 + 264) = 260;
  *(a1 + 526) = 32;
  *(a1 + 48) = sub_297EC0534;
  *(a1 + 56) = a1;
  *(a1 + 208) &= 0xFCu;
  v11 = sub_297E98D38(a1, sub_297EC0B0C);
LABEL_13:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HUpdateAttrBlkForRdOnlyOp");
  return v11;
}

uint64_t sub_297EC127C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HChkAttrBlkForWrOp");
  if (*(a1 + 697))
  {
    if (*(a1 + 686) == 1 || *(a1 + 540) == 2)
    {
      *(a1 + 684) = 2 * (*(a1 + 248) > 16 * *(a1 + 694));
      *(a1 + 642) = 0;
      *(a1 + 640) = 0;
      sub_297EBFB18(a1, (a1 + 643));
    }

    else
    {
      if (*(a1 + 686))
      {
        v2 = 13;
        goto LABEL_9;
      }

      v4 = (*(a1 + 698) << 24) | (*(a1 + 699) << 8) | *(a1 + 700);
      v5 = *(a1 + 248);
      v6 = 16 * *(a1 + 694);
      if (v5 <= ~v4 && v4 + v5 > v6)
      {
        if (v4 == v6)
        {
          v2 = 26;
          goto LABEL_9;
        }

        *(a1 + 684) = 3;
      }

      *(a1 + 252) = 0;
      *(a1 + 641) = 0;
    }

    v2 = sub_297EC0EEC(a1, 0);
  }

  else
  {
    v2 = 245;
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HChkAttrBlkForWrOp");
  return v2;
}

uint64_t sub_297EC13A4(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HChkAttrBlkForRdOp");
  if (*(a1 + 696) == 15)
  {
    **(a1 + 552) = 0;
    v4 = 20;
  }

  else
  {
    v4 = sub_297E9C0B8(a1, a2);
    if (!v4)
    {
      v4 = sub_297EBFDEC(a1, *(a1 + 686));
    }
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HChkAttrBlkForRdOp");
  return v4;
}

uint64_t sub_297EC1444(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HUpdateData");
  if (*(a1 + 248) > *(a1 + 252))
  {
    v2 = a1 + 266;
    *(a1 + 266) = 2048;
    v3 = *(a1 + 2720);
    v4 = *(a1 + 224);
    phOsalNfc_MemCopy();
    *(a1 + 276) = 2305;
    *(a1 + 278) = 0;
    v5 = *(a1 + 684);
    if (v5 == 3)
    {
      sub_297EBF810(a1);
      v12 = *(a1 + 642);
      v13 = 16 * *(a1 + 640);
      v14 = v13 - (16 - v12);
      if (v13 < 16 - v12)
      {
        v14 = 0;
      }

      if (*(a1 + 642))
      {
        v15 = v14;
      }

      else
      {
        v15 = 16 * *(a1 + 640);
      }

      v16 = 16 * *(a1 + 694);
      v9 = v16 >= v15;
      v10 = v16 - v15;
    }

    else
    {
      v6 = 0;
      if (v5 != 2)
      {
        goto LABEL_15;
      }

      v7 = 16 * *(a1 + 694);
      v8 = *(a1 + 640);
      v9 = v7 >= 16 * v8;
      v10 = v7 - 16 * v8;
    }

    if (v9)
    {
      v6 = v10;
    }

    else
    {
      v6 = 0;
    }

LABEL_15:
    v17 = *(a1 + 642);
    if (*(a1 + 642))
    {
      *(a1 + 279) = 0;
      v18 = *(a1 + 248);
      v19 = 16 - v17;
      if (v18 <= 16 - v17)
      {
        v21 = 0;
        v27 = 0;
        v26 = 0;
        *(a1 + 641) = 0;
      }

      else
      {
        v20 = *(a1 + 684);
        v21 = *(a1 + 248) - v19;
        if (*(a1 + 248) < v19)
        {
          v21 = 0;
        }

        if (*(a1 + 684))
        {
          v22 = v6;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          if (*(a1 + 684))
          {
            v23 = (v6 - (16 - v17)) >> 4;
            if (v6 < (16 - v17))
            {
              LOBYTE(v23) = 0;
            }

            v24 = *(a1 + 692);
            if (v24 > v23)
            {
              if (!(v6 & 0xF | v23))
              {
                LOBYTE(v23) = 1;
              }

              if (((v6 + v17) & 0xF) != 0)
              {
                v25 = 16 * (v23 + 1);
                if (v25 >= v6)
                {
                  v26 = v25 - v6;
                }

                else
                {
                  v26 = 0;
                }

                *(a1 + 678) = 1;
                *(a1 + 641) = v23 + 1;
                LOBYTE(v24) = v23 + 2;
                if (v23 == 0xFE)
                {
                  LOBYTE(v24) = 0;
                  v27 = 0;
                  LOBYTE(v54) = 14;
                  goto LABEL_79;
                }

                v27 = 0;
              }

              else
              {
                if (v17 - 16 + v6)
                {
                  LOBYTE(v24) = v23 + 1;
                }

                else
                {
                  LOBYTE(v24) = 1;
                }

                v27 = 0;
                v26 = 0;
                if (*(a1 + 678))
                {
                  *(a1 + 641) = v24 - 1;
                }
              }

              goto LABEL_237;
            }

            v26 = 0;
            if (*(a1 + 692))
            {
              *(a1 + 641) = v24 - 1;
              v27 = 1;
LABEL_237:
              v21 = v6;
              goto LABEL_68;
            }

            LOBYTE(v24) = 1;
            v21 = v6;
          }

          else
          {
            v89 = v21 >> 4;
            v24 = *(a1 + 692);
            if (*(a1 + 248) <= v19)
            {
              v90 = 1;
            }

            else
            {
              v90 = v21 >> 4;
            }

            if ((v21 & 0xF) != 0 && v89 < v24)
            {
              v27 = 0;
              if (16 * (v90 + 1) >= v21)
              {
                v26 = 16 * (v90 + 1) - v21;
              }

              else
              {
                v26 = 0;
              }

              *(a1 + 678) = 1;
              *(a1 + 641) = v90 + 1;
              LOBYTE(v24) = v90 + 2;
LABEL_68:
              v51 = 0;
              v52 = *(a1 + 678);
              v53 = *(a1 + 640);
              v54 = 14;
              do
              {
                *(v2 + v54) = 0x80;
                if (v52 == 1)
                {
                  *(v2 + (v54 + 1)) = v53 + v51;
                  if (v54 == 0xFE)
                  {
                    v54 = 0;
                  }

                  else
                  {
                    v54 += 2;
                  }

                  ++v51;
                }

                else
                {
                  *(v2 + (v54 + 1)) = v53 + ++v51;
                  if (v54 == 0xFE)
                  {
                    v54 = 0;
                  }

                  else
                  {
                    v54 += 2;
                  }
                }
              }

              while (v51 < v24);
              v6 = v21;
LABEL_79:
              v55 = *(a1 + 252);
              v9 = v18 >= v55;
              v56 = v18 - v55;
              if (v9)
              {
                v57 = v56;
              }

              else
              {
                v57 = 0;
              }

              v58 = *(a1 + 2720);
              phOsalNfc_MemCopy();
              if (*(a1 + 642) + v54 >= 0x100)
              {
                v59 = 0;
              }

              else
              {
                v59 = *(a1 + 642) + v54;
              }

              if (v57 >= v19)
              {
                v69 = *(a1 + 2720);
                v70 = *(a1 + 240);
                v71 = *(a1 + 252);
                phOsalNfc_MemCopy();
                v72 = *(a1 + 642);
                *(a1 + 216) = 16 - v72;
                if (v59 + 16 >= v72)
                {
                  v65 = v59 + 16 - v72;
                }

                else
                {
                  v65 = 0;
                }

                if (!v6)
                {
                  goto LABEL_162;
                }

                v73 = *(a1 + 2720);
                v74 = *(a1 + 240);
                if (!*(a1 + 684))
                {
                  if (v27)
                  {
                    v91 = 16 * *(a1 + 692);
                    phOsalNfc_MemCopy();
                    v92 = 16 * *(a1 + 692) - 16;
                    if ((v92 & 0xF0) + v65 >= 0x100)
                    {
                      v65 = 0;
                    }

                    else
                    {
                      v65 += v92;
                    }

                    *(a1 + 642) = 0;
                    v93 = *(a1 + 216);
                    v94 = (v92 & 0xFFF0) + v93;
                    v95 = v93 + v92;
                    if (v94 >= 0x10000)
                    {
                      v95 = 0;
                    }

                    *(a1 + 216) = v95;
                    *(a1 + 678) = 0;
                  }

                  else
                  {
                    v128 = *(a1 + 248);
                    phOsalNfc_MemCopy();
                    v129 = *(a1 + 248);
                    v130 = *(a1 + 642);
                    *(a1 + 216) = v129 + v130 + *(a1 + 216) - 16;
                    v131 = 16 - v130;
                    v132 = v129 - v131;
                    v133 = v129 >= v131;
                    if (v129 >= v131)
                    {
                      v134 = (v129 - v131);
                    }

                    else
                    {
                      v134 = 0;
                    }

                    v135 = v134 + v65;
                    if (!v133)
                    {
                      v132 = 0;
                    }

                    v136 = v132 + v65;
                    if (v135 >= 0x100)
                    {
                      v65 = 0;
                    }

                    else
                    {
                      v65 = v136;
                    }

                    if (v26)
                    {
                      v137 = 0;
                      do
                      {
                        *(v2 + v65++) = 0;
                        ++v137;
                      }

                      while (v137 < v26);
                      *(a1 + 642) = 16 - v26;
                      v138 = *(a1 + 2720);
                      v9 = v129 >= (16 - v26);
                      LODWORD(v139) = v129 - (16 - v26);
                      if (v9)
                      {
                        v139 = v139;
                      }

                      else
                      {
                        v139 = 0;
                      }

                      v140 = *(a1 + 240) + v139;
                      phOsalNfc_MemCopy();
                    }

                    else
                    {
                      *(a1 + 642) = 0;
                    }
                  }

                  goto LABEL_163;
                }

                if (v27)
                {
                  v75 = 16 * *(a1 + 692);
                  phOsalNfc_MemCopy();
                  v76 = *(a1 + 692);
                  v77 = 16 * v76 - 16;
                  v78 = (v77 & 0xF0) + v65;
                  v79 = v65 + v77;
                  if (v78 >= 0x100)
                  {
                    v65 = 0;
                  }

                  else
                  {
                    v65 = v79;
                  }

                  v80 = *(a1 + 216);
                  v81 = 16 * v76 - 16;
                  v82 = (v81 & 0xFFF0) + v80;
                  v83 = v80 + v81;
                  if (v82 >= 0x10000)
                  {
                    v83 = 0;
                  }

                  *(a1 + 642) = 0;
                  *(a1 + 216) = v83 + 16 * v76 - 16;
                  goto LABEL_163;
                }

                phOsalNfc_MemCopy();
                v97 = *(a1 + 642);
                *(a1 + 216) = v6 + v97 + *(a1 + 216) - 16;
                v97 = 16 - v97;
                v98 = v6 >= v97;
                v99 = v6 - v97;
                v100 = v99;
                if (!v98)
                {
                  v100 = 0;
                }

                v101 = v100 + v65;
                if (!v98)
                {
                  v99 = 0;
                }

                v102 = v99 + v65;
                v65 = v101 >= 0x100 ? 0 : v102;
                if (v26)
                {
                  v103 = 0;
                  do
                  {
                    *(v2 + v65++) = 0;
                    ++v103;
                  }

                  while (v103 < v26);
                  *(a1 + 642) = 16 - v26;
                  v104 = *(a1 + 2720);
                  v105 = *(a1 + 248);
                  v9 = v105 >= (16 - v26);
                  LODWORD(v106) = v105 - (16 - v26);
                  if (v9)
                  {
                    v106 = v106;
                  }

                  else
                  {
                    v106 = 0;
                  }

                  v107 = *(a1 + 240) + v106;
                  phOsalNfc_MemCopy();
                }

                else
                {
LABEL_162:
                  *(a1 + 642) = 0;
                }
              }

              else
              {
                v60 = *(a1 + 2720);
                v61 = *(a1 + 240);
                v62 = *(a1 + 252);
                v63 = *(a1 + 248);
                phOsalNfc_MemCopy();
                v64 = *(a1 + 248);
                if (v64 + v59 >= 0x100)
                {
                  v65 = 0;
                }

                else
                {
                  v65 = v64 + v59;
                }

                v66 = *(a1 + 642);
                v9 = __CFADD__(v64, v66);
                v67 = v64 + v66;
                if (v9)
                {
                  v67 = 0;
                }

                if (v67 <= 0x10)
                {
                  for (i = (16 - v67); i; --i)
                  {
                    *(v2 + v65++) = 0;
                  }
                }

                *(a1 + 216) = v64;
                *(a1 + 679) = 1;
                if (*(a1 + 678))
                {
                  *(a1 + 641) = 0;
                }
              }

LABEL_163:
              *(a1 + 266) = v65;
              *(a1 + 526) = v65;
              *(a1 + 279) = v24;
LABEL_225:
              sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HWriteDataBlk");
              *(a1 + 208) &= 0xFCu;
              *(a1 + 232) = 240;
              *a1 = 6;
              *(a1 + 264) = 260;
              v11 = sub_297E98D38(a1, sub_297EC0B0C);
              sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HWriteDataBlk");
              goto LABEL_226;
            }

            if (v89 < v24)
            {
              if (v17 - 16 + v21)
              {
                LOBYTE(v24) = v90 + 1;
              }

              else
              {
                LOBYTE(v24) = 1;
              }

              v27 = 0;
              v26 = 0;
              if (*(a1 + 678))
              {
                *(a1 + 641) = v24 - 1;
              }

              goto LABEL_68;
            }

            v26 = 0;
            if (*(a1 + 692))
            {
              *(a1 + 641) = v24 - 1;
            }

            else
            {
              LOBYTE(v24) = 1;
            }
          }

          v27 = 1;
          goto LABEL_68;
        }

        v21 = 0;
        v27 = 0;
        v26 = 0;
      }

      LOBYTE(v24) = 1;
      goto LABEL_68;
    }

    v28 = *(a1 + 248);
    v29 = *(a1 + 252);
    v30 = v28 - v29;
    if (v28 >= v29)
    {
      v31 = v28 - v29;
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a1 + 692);
    if (v31 >= 16 * v32)
    {
      v36 = *(a1 + 694);
      v37 = *(a1 + 640);
      if ((v36 - v37) >= v32)
      {
        *(a1 + 279) = v32;
        if (v32)
        {
          v84 = (v32 + 1);
          if (v84 <= 2)
          {
            v84 = 2;
          }

          v85 = v84 - 1;
          v86 = v37 + 1;
          v87 = 14;
          do
          {
            *(v2 + v87) = 0x80;
            if (v86 >= 0x100)
            {
              v88 = 0;
            }

            else
            {
              v88 = v86;
            }

            *(v2 + (v87 + 1)) = v88;
            if (v87 == 0xFE)
            {
              v87 = 0;
            }

            else
            {
              v87 += 2;
            }

            ++v86;
            --v85;
          }

          while (v85);
        }

        else
        {
          v87 = 14;
        }

        v141 = *(a1 + 2720);
        v142 = *(a1 + 240);
        phOsalNfc_MemCopy();
        v143 = *(a1 + 692);
        if (((16 * v143) & 0xF0) + v87 >= 0x100)
        {
          v144 = 0;
        }

        else
        {
          v144 = v87 + 16 * v143;
        }

        *(a1 + 266) = v144;
        *(a1 + 642) = 0;
        *(a1 + 216) = 16 * v143;
        *(a1 + 641) = v143;
        *(a1 + 526) = v144;
        *(a1 + 678) = 0;
      }

      else
      {
        *(a1 + 279) = v36 - v37;
        v38 = v36 - v37;
        if (v36 < v37)
        {
          v38 = 0;
        }

        v39 = 14;
        if (v36 > v37)
        {
          v40 = 1;
          do
          {
            *(v2 + v39) = 0x80;
            *(v2 + (v39 + 1)) = v40 + v37;
            if (v39 == 0xFE)
            {
              v39 = 0;
            }

            else
            {
              v39 += 2;
            }

            ++v40;
          }

          while (v38 >= v40);
        }

        v41 = *(a1 + 2720);
        v42 = *(a1 + 240) + v29;
        phOsalNfc_MemCopy();
        v43 = *(a1 + 694);
        v44 = *(a1 + 640);
        v45 = v43 >= v44;
        v46 = v43 - v44;
        v47 = 16 * v46;
        v48 = (16 * v46) & 0xF0;
        if (!v45)
        {
          v48 = 0;
        }

        v49 = v48 + v39;
        if (!v45)
        {
          v47 = 0;
          LOBYTE(v46) = 0;
        }

        if (v49 >= 0x100)
        {
          v50 = 0;
        }

        else
        {
          v50 = v47 + v39;
        }

        *(a1 + 266) = v50;
        *(a1 + 216) = v47;
        *(a1 + 641) = v46;
        *(a1 + 526) = v50;
        *(a1 + 678) = 0;
        *(a1 + 642) = 0;
      }

      goto LABEL_225;
    }

    v33 = *(a1 + 684);
    if (*(a1 + 684))
    {
      v34 = v6 >> 4;
      if ((v6 & 0xF) != 0)
      {
        if ((~v6 & 0xFF0) != 0)
        {
          LOBYTE(v34) = v34 + 1;
        }

        else
        {
          LOBYTE(v34) = 0;
        }

        if (16 * v34 >= v6)
        {
          v35 = 16 * v34 - v6;
        }

        else
        {
          v35 = 0;
        }

        *(a1 + 678) = 1;
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      v35 = 0;
      v96 = v28 >= v29;
      if (v28 >= v29)
      {
        v34 = v30 >> 4;
      }

      else
      {
        v34 = 0;
      }

      if (v96 && (v30 & 0xF) != 0)
      {
        ++v34;
        *(a1 + 678) = 1;
        if (16 * v34 >= v30)
        {
          v35 = 16 * v34 - v30;
        }

        else
        {
          v35 = 0;
        }

        *(a1 + 279) = v34;
        *(a1 + 641) = v34;
        goto LABEL_167;
      }
    }

    *(a1 + 279) = v34;
    *(a1 + 641) = v34;
    if (!v34)
    {
      v109 = 14;
LABEL_176:
      v112 = *(a1 + 2720);
      v113 = v109;
      v114 = *(a1 + 240) + v29;
      if (v33)
      {
        phOsalNfc_MemCopy();
        if (v113 + v6 >= 0x100)
        {
          v115 = 0;
        }

        else
        {
          v115 = v113 + v6;
        }

        v116 = v6;
      }

      else
      {
        phOsalNfc_MemCopy();
        v117 = *(a1 + 248);
        v118 = *(a1 + 252);
        v119 = v117 >= v118;
        v116 = v117 - v118;
        v120 = v116;
        if (!v119)
        {
          v120 = 0;
        }

        v121 = v120 + v113;
        if (!v119)
        {
          v116 = 0;
        }

        if (v121 >= 0x100)
        {
          v115 = 0;
        }

        else
        {
          v115 = v116 + v113;
        }
      }

      *(a1 + 216) = v116;
      if (v35)
      {
        v122 = 0;
        do
        {
          *(v2 + v115++) = 0;
          ++v122;
        }

        while (v122 < v35);
        v123 = 16 - v35;
        *(a1 + 642) = 16 - v35;
        v124 = *(a1 + 2720);
        if (*(a1 + 684))
        {
          v125 = v6 & 0xFFFFFFF0;
        }

        else
        {
          v126 = *(a1 + 248);
          v9 = v126 >= v123;
          LODWORD(v125) = v126 - v123;
          if (v9)
          {
            v125 = v125;
          }

          else
          {
            v125 = 0;
          }
        }

        v127 = *(a1 + 240) + v125;
        phOsalNfc_MemCopy();
      }

      else
      {
        *(a1 + 642) = 0;
        *(a1 + 678) = 0;
      }

      *(a1 + 266) = v115;
      *(a1 + 526) = v115;
      goto LABEL_225;
    }

    v34 = v34;
LABEL_167:
    v108 = (*(a1 + 640) + 1);
    v109 = 14;
    do
    {
      *(v2 + v109) = 0x80;
      v110 = v109 + 1;
      if (v108 >= 0x100)
      {
        v111 = 0;
      }

      else
      {
        v111 = v108;
      }

      *(v2 + (v109 + 1)) = v111;
      v109 += 2;
      if (v110 == -1)
      {
        v109 = 0;
      }

      ++v108;
      --v34;
    }

    while (v34);
    goto LABEL_176;
  }

  v11 = sub_297EC0EEC(a1, 1);
LABEL_226:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HUpdateData");
  return v11;
}

uint64_t sub_297EC1F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9 = -1006;
  v8 = 0;
  sub_297E4E1B4(0, &v10, 8u, 5u, "phFriNfc_Felica_ChkNdef");
  sub_297E57170(v10, &v8);
  v5 = 1;
  if (a3)
  {
    if (a2)
    {
      v6 = v8;
      if (v8)
      {
        *(v8 + 8) = a2;
        *(v6 + 40) = a3;
        v5 = sub_297EC2024(v6, &v9, 2);
      }
    }
  }

  sub_297E4DFAC(0, &v10, 8u, 5u, "phFriNfc_Felica_ChkNdef");
  return v5;
}

uint64_t sub_297EC2024(uint64_t a1, _BYTE *a2, char a3)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HPollCard");
  *(a1 + 266) = 6;
  *(a1 + 268) = *a2;
  *(a1 + 269) = a2[1];
  if (*(a1 + 65))
  {
    v6 = 0;
  }

  else
  {
    v6 = 3;
  }

  *(a1 + 270) = *(a1 + 65) == 0;
  *(a1 + 271) = v6;
  *(a1 + 526) = 6;
  *(a1 + 48) = sub_297EC0534;
  *(a1 + 56) = a1;
  *a1 = a3;
  *(a1 + 232) = 240;
  *(a1 + 208) &= 0xFCu;
  v7 = sub_297E98D38(a1, sub_297EC0B0C);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HPollCard");
  return v7;
}

uint64_t sub_297EC210C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HCheckManufId");
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_MemCompare");
  v2 = 0;
  do
  {
    v3 = *(a1 + v2 + 268);
    v4 = *(a1 + v2 + 702);
    if (v2 == 7)
    {
      break;
    }

    ++v2;
  }

  while (v3 == v4);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_MemCompare");
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HCheckManufId");
  if (v3 == v4)
  {
    return 0;
  }

  else
  {
    return 29;
  }
}

uint64_t sub_297EC21D4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HUpdateAttrInfo");
  v2 = sub_297E9C178(a1, 0xDu);
  if (v2)
  {
    goto LABEL_2;
  }

  v3 = __rev16(*(a1 + 282));
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *(a1 + 280);
  if (v3 < v4)
  {
    goto LABEL_14;
  }

  v5 = *(a1 + 281);
  if (v3 < v5)
  {
    goto LABEL_14;
  }

  v6 = *(a1 + 288);
  if (v6 != 15)
  {
    if (*(a1 + 288))
    {
      goto LABEL_14;
    }
  }

  v7 = *(a1 + 289);
  if (v7 > 1 || *(a1 + 284) || *(a1 + 285) || *(a1 + 286) || *(a1 + 287))
  {
    goto LABEL_14;
  }

  v10 = *(a1 + 292);
  v11 = (v10 | (*(a1 + 291) << 8)) >> 4;
  if ((v10 & 0xF) != 0)
  {
    ++v11;
  }

  if (v11 > v3 && *(a1 + 685) == 18)
  {
    sub_297E4E0B0(2, a1, 8u, 2u, "phFriNfc_Felica_HUpdateAttrInfo: Current NDEF message exceeds the Maximum Tag NDEF size");
    sub_297E50EBC(2, a1, 8u, 2u, "phFriNfc_Felica_HUpdateAttrInfo:Current Ndef Message size");
    sub_297E50EBC(2, a1, 8u, 2u, "phFriNfc_Felica_HUpdateAttrInfo:Maximum Ndef Message size");
    *(a1 + 545) = 0;
    *(a1 + 694) = v3;
    v8 = 25;
    goto LABEL_15;
  }

  *(a1 + 690) = *(a1 + 279);
  *(a1 + 691) = v4;
  *(a1 + 692) = v5;
  *(a1 + 694) = v3;
  *(a1 + 696) = v6;
  *(a1 + 697) = v7;
  v2 = sub_297EC23D4(a1, a1 + 266, bswap32(*(a1 + 293)) >> 16);
  if (v2)
  {
LABEL_2:
    if (v2 == 28)
    {
      *(a1 + 545) = 3;
    }

LABEL_14:
    v8 = 28;
    goto LABEL_15;
  }

  v8 = 0;
  if (*(a1 + 697) == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  if (*(a1 + 697))
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  *(a1 + 545) = v13;
  *(a1 + 698) = *(a1 + 290);
  *(a1 + 699) = *(a1 + 291);
LABEL_15:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HUpdateAttrInfo");
  return v8;
}

uint64_t sub_297EC23D4(uint64_t a1, uint64_t a2, int a3)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Felica_HCalCheckSum");
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(a2 + 13 + v6);
    v9 = v8 + v7;
    v10 = v7 + v8;
    if (v9 >= 0x10000)
    {
      v7 = 0;
    }

    else
    {
      v7 = v10;
    }

    ++v6;
  }

  while (v6 != 14);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Felica_HCalCheckSum");
  if (a3 == v7)
  {
    return 0;
  }

  else
  {
    return 28;
  }
}

uint64_t sub_297EC2474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_FelicaReqResCmd");
  if (a1 && a3)
  {
    v6 = *(a1 + 9792);
    phOsalNfc_SetMemory();
    *(a1 + 1535) = 4;
    v7 = *(a1 + 9792);
    v8 = *(a3 + 18);
    phOsalNfc_MemCopy();
    *(a1 + 1534) = *(a3 + 18) + 2;
    LODWORD(v10) = 0;
    *&v11 = a1 + 1534;
    DWORD2(v11) = *(a3 + 18) + 2;
    *&v12 = a1 + 2064;
    DWORD2(v12) = 530;
    WORD3(v10) = 500;
    a2 = sub_297F06F3C(*(a1 + 3088), *(a1 + 1504), &v10, sub_297E5BA84, a1);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_FelicaReqResCmd");
  return a2;
}

uint64_t sub_297EC2594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_FelicaReqResResp");
  if (!a1)
  {
    v7 = 1;
    goto LABEL_15;
  }

  v5 = sub_297ECD484(a1, &v12, (a1 + 1504), 0);
  if (!a3 || v5)
  {
    v10 = "Felica Request Response no response received";
LABEL_14:
    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, v10);
    v7 = 255;
    goto LABEL_15;
  }

  if (!v12 || (v6 = *a3) == 0 || *(a3 + 8) != 11)
  {
    v10 = "Felica Invalid response buffer or response length";
    goto LABEL_14;
  }

  v7 = 255;
  if (*v6 == 11)
  {
    v8 = *(a1 + 9792);
    v9 = *(v12 + 18);
    if (phOsalNfc_MemCompare())
    {
      v7 = 255;
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_15:
  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_FelicaReqResResp");
  return v7;
}

uint64_t sub_297EC26A8(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_FelicaChkPresComplete");
  sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Completing T3t Connect sequence");
  if (a2)
  {
    *(a1 + 2960) = &qword_2A1A928E0;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v6 = qword_2A1A928E0;
    if (qword_2A1A928E0)
    {
      v6 = 0;
      v7 = &qword_2A1A928F0;
      do
      {
        ++v6;
        v8 = *v7;
        v7 += 2;
      }

      while (v8);
    }

    *(a1 + 2953) = v6;
    if (sub_297E5588C(a1, 0, a3) == 13)
    {
      v9 = 13;
    }

    else
    {
      v9 = 255;
    }
  }

  else
  {
    sub_297ECF0FC(a1, 0);
    v9 = 0;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_FelicaChkPresComplete");
  return v9;
}

uint64_t sub_297EC27A8(uint64_t a1)
{
  v4 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SendT3tPollCmd");
  if (a1 && *(a1 + 1504))
  {
    v4 = 0xFFFF;
    v2 = sub_297E9B40C(*(a1 + 3088), &v4, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SendT3tPollCmd");
  return v2;
}

uint64_t sub_297EC2850(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_T3tCmdResp");
  if (!a1 || a2)
  {
    sub_297E4E0B0(2, a1, 4u, 1u, "Discovery select command failed!");
    a2 = 255;
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Discovery select command success");
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_T3tCmdResp");
  return a2;
}

uint64_t sub_297EC28FC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_T3tChkPresComplete");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Completing T3t Connect sequence");
    sub_297ECF0FC(a1, a2);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_T3tChkPresComplete");
  return a2;
}

uint64_t sub_297EC299C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_T3tConnectComplete");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Completing T3t Connect sequence");
    sub_297EC2A2C(a1, a2);
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_T3tConnectComplete");
  return a2;
}

uint64_t sub_297EC2A2C(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ConnectExtensionFelica_Cb");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 4u, 1u, "Lower layer has returned invalid LibNfc context");
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConnectExtensionFelica_Cb");
  }

  if (!a2)
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "State machine has returned NFCSTATUS_SUCCESS");
    if (sub_297E55558(*(a1 + 3088), *(a1 + 1512)))
    {
      v4 = 0;
      *(a1 + 1504) = 0u;
    }

    else
    {
      v4 = *(a1 + 1512);
    }

    v14 = v4;
    v5 = sub_297ECD484(a1, &v15, &v14, 0);
    if (v5)
    {
      a2 = v5;
      v6 = "Mapping of Nci RemoteDev Handle to LibNfc RemoteDev handle Failed";
    }

    else
    {
      a2 = sub_297ECFA10(a1, v15, &v13);
      if (!a2)
      {
        v11 = v14;
        v12 = v15;
        *(a1 + 1504) = v14;
        *v12 = *v11;
        v7 = 118;
        goto LABEL_13;
      }

      v6 = "Getting LibNfc RemoteDev Info by using LibNfc Handle Failed";
    }

    sub_297E4E0B0(1, a1 + 9792, 4u, 1u, v6);
  }

  sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "phLibNfc_ConnectExtensionFelica_Cb: Lower layer has returned failure status");
  *(a1 + 1504) = 0;
  v7 = 119;
LABEL_13:
  if (*(a1 + 1488) == 1 && (v8 = *(a1 + 6200)) != 0)
  {
    v9 = *(a1 + 6208);
    *(a1 + 6200) = 0;
    *(a1 + 6208) = 0;
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Invoking upper layer callback");
    sub_297E4D930(1, a1 + 9792, 4u, 15, "phLibNfc_ConnectExtensionFelica_Cb");
    v8(*(a1 + 9784), v9, v15, v15, a2);
  }

  else
  {
    sub_297E4F450(*(a1 + 9784), v7, a2, v15, v15);
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ConnectExtensionFelica_Cb");
}

uint64_t sub_297EC2C48(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_TlvUtilsParseTLV");
  v6 = 1;
  v7 = "phNciNfc_TlvUtilsParseTLV: Invalid input parameter";
  if (!a2 || a3 < 2)
  {
    goto LABEL_8;
  }

  v8 = 0;
  do
  {
    v8 = (v8 + *(a2 + 1 + v8) + 2);
  }

  while (v8 < a3);
  if (v8 != a3)
  {
    v6 = 255;
    v7 = "phNciNfc_TlvUtilsParseTLV: Inconsistent tlv's!";
LABEL_8:
    sub_297E4E0B0(2, a1, 3u, 1u, v7);
    goto LABEL_9;
  }

  v6 = 0;
LABEL_9:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_TlvUtilsParseTLV");
  return v6;
}

uint64_t sub_297EC2D1C(uint64_t a1, uint64_t *a2, _BYTE *a3, _BYTE *a4, void *a5)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_TlvUtilsGetNxtTlv");
  if (a2 && a3 && a4)
  {
    v10 = *a2;
    if (*a2 && (v11 = *(a2 + 3), v11 >= 2))
    {
      v12 = *(a2 + 2);
      if (v12 + 2 <= v11)
      {
        v14 = 0;
        *(a2 + 2) = v12 + 1;
        *a3 = *(v10 + v12);
        v16 = *a2;
        v17 = *(a2 + 2);
        *(a2 + 2) = v17 + 1;
        *a4 = *(v16 + v17);
        *a5 = *a2 + *(a2 + 2);
        *(a2 + 2) += *a4;
        goto LABEL_11;
      }

      v13 = "phNciNfc_TlvUtilsGetNxtTlv: Invalid Tlv buffer offset";
    }

    else
    {
      v13 = "phNciNfc_TlvUtilsGetNxtTlv: Invalid tlv buffer or its length";
    }

    sub_297E4E0B0(2, a1, 3u, 1u, v13);
    v14 = 255;
  }

  else
  {
    v14 = 1;
    sub_297E4E0B0(2, a1, 3u, 1u, "phNciNfc_TlvUtilsGetNxtTlv: Invalid input parameter");
  }

LABEL_11:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_TlvUtilsGetNxtTlv");
  return v14;
}

void *phLibNfc_Mgt_GetMwVersionStr()
{
  phOsalNfc_MemCopy();
  strcpy(byte_2A18BE741, " 5.1_R4.10");
  return &unk_2A18BE737;
}

uint64_t phLibNfc_Mgt_ConfigureDriver(uint64_t a1, uint64_t *a2)
{
  v25 = 0;
  v26 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, sizeof(v18));
  sub_297E4E1B4(0, &v25, 4u, 5u, "phLibNfc_Mgt_ConfigureDriver");
  if (!a1 || !a2 || *(a1 + 8) == 8)
  {
    v4 = "ConfigureDriver:Invalid Parameter";
LABEL_5:
    v5 = 1;
    sub_297E4E0B0(0, &v25, 4u, 1u, v4);
LABEL_6:
    sub_297E5AE60(v25, 1);
    sub_297E96818(v25, v5);
    goto LABEL_7;
  }

  v8 = (a1 + 24);
  v7 = *(a1 + 24);
  if (v7 >= 2)
  {
    v4 = "ConfigureDriver:Invalid Controller type";
    goto LABEL_5;
  }

  sub_297E963C0(v7);
  sub_297E4D930(1, a1 + 24, 4u, 0, "phLibNfc_Mgt_ConfigureDriver");
  v9 = *(a1 + 24);
  phOsalNfc_SetMemory();
  LODWORD(v10) = *(a1 + 8);
  if (v10 > 3)
  {
    if (v10 <= 5)
    {
      if (v10 == 4)
      {
        v11 = 0;
        *&v18[1] = 0;
        *(&v18[1] + 1) = "/dev/tty.p2m";
        LOBYTE(v10) = 4;
      }

      else
      {
        v11 = "/dev/tty.p2m";
        *&v18[1] = "/dev/tty.p2m";
        *(&v18[1] + 1) = "/dev/tty.p2m";
      }

      goto LABEL_25;
    }

    if (v10 == 6)
    {
      v11 = *(a1 + 16);
      *&v18[1] = v11;
      *(&v18[1] + 8) = *(a1 + 32);
      goto LABEL_25;
    }

    if (v10 == 7)
    {
      v11 = *(a1 + 16);
      v10 = *(a1 + 32);
      *&v18[1] = v11;
      *(&v18[1] + 1) = v10;
      LOBYTE(v10) = 7;
      goto LABEL_25;
    }

    goto LABEL_40;
  }

  if (v10 > 1)
  {
    v11 = *(a1 + 16);
    *&v18[1] = v11;
    goto LABEL_25;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v11 = *(a1 + 16);
      v10 = *(a1 + 32);
      *&v18[1] = v11;
      *(&v18[1] + 1) = v10;
      LOBYTE(v10) = 1;
LABEL_25:
      BYTE8(v19) = v10;
      goto LABEL_26;
    }

LABEL_40:
    v11 = *&v18[1];
    goto LABEL_26;
  }

  v11 = "/dev/tty.p2m";
  *&v18[1] = "/dev/tty.p2m";
LABEL_26:
  v12 = BYTE8(v19);
  v13 = *(a1 + 68);
  DWORD2(v18[2]) = *(a1 + 24);
  DWORD2(v20) = v13;
  byte_2A18BD388 = 1;
  if (BYTE8(v19) == 1 && v11)
  {
    if (!strcmp(v11, "I2C") || !strcmp(v11, "ZYNQ_SPMI") || !strcmp(v11, "ZYNQ_SPMI_GOANNA") || !strcmp(v11, "SPMI"))
    {
      v12 = 6;
    }

    else
    {
      v12 = 1;
    }
  }

  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  *&v18[0] = *a1;
  *(&v18[0] + 1) = v14;
  *&v19 = v15;
  phOsalNfc_SetMemory();
  *(&v23 + 4) = 0;
  LOBYTE(v23) = 1;
  LODWORD(v21) = 2;
  sub_297EE07F8(0, *(a1 + 24));
  v16 = sub_297E4F450(0, 1, *(a1 + 24), a2, v18);
  if (v16)
  {
    v5 = v16;
    sub_297E4E0B0(1, a1 + 24, 4u, 1u, "State Transition failed");
    sub_297E96474(*v8);
    sub_297E4D930(0, &v25, 4u, 0, "phLibNfc_Mgt_ConfigureDriver");
    goto LABEL_6;
  }

  v17 = *a2;
  sub_297E966F4(1, a1 + 24, 4u, 4u, "phLibNfc_Mgt_ConfigureDriver: Driver Handle Returned");
  v25 = *a2;
  sub_297E966F4(1, a1 + 24, 4u, 4u, "hDriverHandle");
  sub_297E9F198(*a2, *v8, v12);
  sub_297E8F848(*v8);
  sub_297E5D114(*a2, &v26);
  if (v26)
  {
    *(v26 + 192) = *(a1 + 68);
  }

  else
  {
    sub_297E4E0B0(0, &v25, 4u, 1u, "Invalid input parameter");
  }

  sub_297E4D930(0, &v25, 4u, 0, "phLibNfc_Mgt_ConfigureDriver");
  v5 = 0;
LABEL_7:
  sub_297E4DFAC(0, &v25, 4u, 5u, "phLibNfc_Mgt_ConfigureDriver");
  return v5;
}

uint64_t phLibNfc_Mgt_UnConfigureDriver(uint64_t a1)
{
  v11 = a1;
  v10 = 0;
  sub_297E4D930(0, &v11, 4u, 1, "phLibNfc_Mgt_UnConfigureDriver");
  sub_297E4E1B4(0, &v11, 4u, 5u, "phLibNfc_Mgt_UnConfigureDriver");
  sub_297E966F4(0, &v11, 4u, 4u, "phLibNfc_Mgt_UnConfigureDriver:hDriverHandle");
  v1 = sub_297E9F738(v11);
  if (v11)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    sub_297E4E0B0(0, &v11, 4u, 1u, "Invalid input parameter");
    if (!v1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = sub_297E4F450(v11, 2, 0, &v11, 0);
  if (v3 == 147)
  {
    v1 = 138;
LABEL_10:
    sub_297E5AE60(v11, 2);
    sub_297E96818(v11, v1);
    goto LABEL_11;
  }

  v1 = v3;
  if (v3)
  {
    goto LABEL_10;
  }

  v5 = 0;
  v10 = 255;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    v8 = &unk_2A18BDDC0 + 112 * v5;
    if (*v8 == v11)
    {
      break;
    }

    v6 = 0;
    v5 = 1;
    if ((v7 & 1) == 0)
    {
      v9 = 255;
      goto LABEL_17;
    }
  }

  v9 = *(v8 + 2);
  v10 = v9;
LABEL_17:
  sub_297E96474(v9);
  sub_297E8F978(v11);
  sub_297E9F198(0, v9, 8);
  v1 = 0;
LABEL_11:
  sub_297E4DFAC(1, &v10, 4u, 5u, "phLibNfc_Mgt_UnConfigureDriver");
  return v1;
}

uint64_t phLibNfc_Mgt_ConfigureMwLogging(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v3 = 1;
  sub_297E4D930(0, &v12, 4u, 2, "phLibNfc_Mgt_ConfigureMwLogging");
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_Mgt_ConfigureMwLogging");
  v4 = 0;
  while (1)
  {
    v5 = &unk_2A18BDDC0 + 112 * v4;
    if (*v5 == v12)
    {
      break;
    }

    v6 = v3;
    v3 = 0;
    v4 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v7 = *(v5 + 2);
  if (v7 > 1)
  {
LABEL_11:
    v9 = 0;
    if (!a2)
    {
LABEL_10:
      v10 = 1;
      sub_297E4E0B0(0, &v12, 4u, 1u, "Invalid input parameter");
      goto LABEL_13;
    }
  }

  else
  {
    v8 = *(&unk_2A18BDDC0 + 14 * v7 + 10);
    if (v8)
    {
      v9 = v8 + 120;
    }

    else
    {
      v9 = 0;
    }

    if (!a2)
    {
      goto LABEL_10;
    }
  }

  v10 = sub_297E4F450(v12, 3, 0, a2, 0);
LABEL_13:
  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_Mgt_ConfigureMwLogging");
  sub_297E4D930(0, &v12, 4u, 2, "phLibNfc_Mgt_ConfigureMwLogging");
  if (v10 && v9)
  {
    *(v9 + 36) = 2;
    sub_297E96818(v12, v10);
  }

  return v10;
}

uint64_t phLibNfc_Mgt_Initialize(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  Memory_Typed = 0;
  v33 = a1;
  v31 = 8;
  v30 = 0;
  v7 = 1;
  sub_297E4D930(0, &v33, 4u, 3, "phLibNfc_Mgt_Initialize");
  sub_297E4E1B4(0, &v33, 4u, 5u, "phLibNfc_Mgt_Initialize");
  v8 = 0;
  while (1)
  {
    v9 = &unk_2A18BDDC0 + 112 * v8;
    if (*v9 == v33)
    {
      break;
    }

    v10 = v7;
    v7 = 0;
    v8 = 1;
    if ((v10 & 1) == 0)
    {
      v11 = 255;
      goto LABEL_6;
    }
  }

  v11 = *(v9 + 2);
LABEL_6:
  sub_297E5F164(v33, &v31);
  sub_297E4F0E8(v33, &Memory_Typed);
  sub_297E5D114(v33, &v30);
  phOsalNfc_SetMemory();
  if (!a2 || !a3 || !v33 || *a2 > 0xF || a2[6] > 1 || (v12 = a2[7], v12 >= 3))
  {
    v13 = 1;
    sub_297E4E0B0(0, &v33, 4u, 1u, "Invalid input parameter");
    sub_297E4D930(0, &v33, 4u, 3, "phLibNfc_Mgt_Initialize");
    goto LABEL_19;
  }

  if (v11 == 1)
  {
    if (v12 != 1)
    {
      goto LABEL_14;
    }

LABEL_22:
    sub_297E4E0B0(0, &v33, 4u, 1u, "Feature not supported");
    sub_297E4D930(0, &v33, 4u, 3, "phLibNfc_Mgt_Initialize");
    v13 = 51;
    goto LABEL_19;
  }

  if (v12 == 2)
  {
    goto LABEL_22;
  }

LABEL_14:
  if (!v30)
  {
    sub_297E4E0B0(0, &v33, 4u, 1u, "Invalid IOCTL context");
LABEL_40:
    v13 = 255;
    goto LABEL_19;
  }

  if (!Memory_Typed)
  {
    sub_297E50EBC(0, &v33, 4u, 4u, "**** LibNfc Major version **** ");
    sub_297E50EBC(0, &v33, 4u, 4u, "**** LibNfc Minor version **** ");
    sub_297E50EBC(0, &v33, 4u, 4u, "**** MW major version **** ");
    sub_297E50EBC(0, &v33, 4u, 4u, "**** MW Minor version **** ");
    if ((v31 & 0xFFFFFFFD) != 4 && phTmlNfc_ConfigHsuBaudRate())
    {
      v15 = "Init- Set Default Baud Rate FAILED,ConfigHsuBaudRate Status";
LABEL_39:
      sub_297E50EBC(0, &v33, 4u, 1u, v15);
      sub_297E4D930(0, &v33, 4u, 3, "phLibNfc_Mgt_Initialize");
      goto LABEL_40;
    }

    sub_297E9F888(v33, 0);
    sub_297E50EBC(0, &v33, 4u, 4u, "phLibNfc_Mgt_Initialize : Success Config Hsu Baud Rate = ");
    if (v11 == 1 && a2[7])
    {
      v16 = 0;
    }

    else
    {
      if (*(v30 + 192) == 1)
      {
        v18 = phTmlNfc_IoCtl();
        v16 = 0;
      }

      else
      {
        v18 = phTmlNfc_IoCtl();
        v16 = v18 == 0;
      }

      if (v18)
      {
        v15 = "phLibNfc_Mgt_Initialize:NFCC Power On Failed!!,phTmlNfc_IoCtl Return Status =";
        goto LABEL_39;
      }
    }

    if (a2[8])
    {
      phOsalNfc_Delay();
    }

    Memory_Typed = phOsalNfc_GetMemory_Typed();
    if (Memory_Typed)
    {
      if (v11 == 1)
      {
        v19 = "####Secondary NFCC, DriverHandle";
      }

      else
      {
        v19 = "####Primary NFCC, DriverHandle";
      }

      if (v11 == 1)
      {
        v20 = "####Secondary NFCC, LIBNFC context";
      }

      else
      {
        v20 = "####Primary NFCC, LIBNFC context";
      }

      sub_297E966F4(0, &v33, 4u, 4u, v19);
      sub_297E966F4(0, &v33, 4u, 4u, v20);
      sub_297E9F3BC(v33, Memory_Typed);
      phOsalNfc_SetMemory();
      v21 = Memory_Typed;
      v22 = Memory_Typed + 9782;
      v23 = Memory_Typed + 5448;
      *(Memory_Typed + 1048) |= 0x40000u;
      *(v21 + 1055) = 1;
      *(v21 + 1472) = 0;
      *(v21 + 1036) = 0;
      *(v21 + 3196) = 3;
      *(v21 + 765) = 3;
      *v21 = 514;
      v24 = v33;
      *(v21 + 3000) = v33;
      *(v21 + 3104) = 2;
      v25 = *a2;
      *(v21 + 3112) = a2[1];
      *(v21 + 488) = v25 & 0xB;
      *(v21 + 584) = 0xFFFFFFFFFFFFLL;
      *(v21 + 756) = 0;
      *(v21 + 512) = 0;
      *(v21 + 745) = 0;
      *(v21 + 2976) = 0;
      *(v21 + 492) = *(a2 + 37) == 1;
      *(v21 + 744) = 0;
      v26 = a2[7];
      *(v21 + 5452) = a2[6];
      *(v21 + 3204) = v26;
      *(v21 + 3224) = *(v30 + 192);
      *(v21 + 2932) = 1;
      *v23 = 0;
      *(v23 + 8) = 0;
      *(v21 + 3209) = 0;
      *(v21 + 3264) = 0;
      *(v23 + 629) = 0;
      *v22 = 0;
      *(v21 + 9784) = v24;
      *(v21 + 9792) = v11;
      *(v22 + 15) = *(a2 + 36);
      v27 = sub_297E4F450(v24, 5, 0, &v33, 0);
      if (v27 == 13)
      {
        v28 = Memory_Typed;
        *(Memory_Typed + 6104) = a3;
        *(v28 + 6112) = a4;
        *(v28 + 6568) = *(a2 + 2);
        sub_297ECABF8(v28);
        *(Memory_Typed + 9784) = v33;
        v13 = 13;
        goto LABEL_20;
      }

      v29 = v27;
      phTmlNfc_ReadAbort();
      sub_297E50EBC(0, &v33, 4u, 1u, "phLibNfc_Mgt_Initialize: received other than NFCSTATUS_PENDING, Status Rxd=");
      if (Memory_Typed)
      {
        phOsalNfc_FreeMemory();
        sub_297E9F3BC(v33, 0);
      }

      Memory_Typed = 0;
      if (v29 == 179)
      {
        v13 = 180;
      }

      else
      {
        v13 = 255;
      }
    }

    else
    {
      sub_297E4E0B0(0, &v33, 4u, 1u, "Failed to allocate memory, Insufficient Resources");
      v13 = 12;
    }

    sub_297E4D930(0, &v33, 4u, 3, "phLibNfc_Mgt_Initialize");
    if (v16)
    {
      phTmlNfc_IoCtl();
    }

    goto LABEL_19;
  }

  if (*(Memory_Typed + 6104))
  {
    sub_297E4E0B0(0, &v33, 4u, 2u, "Libnfc Stack busy - Init callback pending");
    sub_297E4D930(0, &v33, 4u, 3, "phLibNfc_Mgt_Initialize");
    v13 = 111;
  }

  else
  {
    if (*(Memory_Typed + 6078) == 1 || *(Memory_Typed + 6079) == 1)
    {
      v17 = "phLibNfc_Mgt_Initialize:ESE in Download mode has to be disabled before MW Init";
    }

    else
    {
      if (*(Memory_Typed + 6081) != 1 && *(Memory_Typed + 6082) != 1)
      {
        sub_297E4E0B0(0, &v33, 4u, 4u, "Stack already initialized");
        sub_297E4D930(0, &v33, 4u, 3, "phLibNfc_Mgt_Initialize");
        v13 = 50;
        goto LABEL_19;
      }

      v17 = "phLibNfc_Mgt_Initialize:SMB logging in Download mode has to be disabled before MW Init";
    }

    sub_297E4E0B0(0, &v33, 4u, 1u, v17);
    sub_297E4D930(0, &v33, 4u, 3, "phLibNfc_Mgt_Initialize");
    v13 = 147;
  }

LABEL_19:
  sub_297E5AE60(v33, 5);
  sub_297E96818(v33, v13);
LABEL_20:
  sub_297E4DFAC(0, &v33, 4u, 5u, "phLibNfc_Mgt_Initialize");
  return v13;
}

uint64_t phLibNfc_Mgt_DeInitialize(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v38 = a1;
  v37 = a3;
  v36 = 0;
  v35 = 8;
  sub_297E4D930(0, &v38, 4u, 116, "phLibNfc_Mgt_DeInitialize");
  sub_297E4E1B4(0, &v38, 4u, 5u, "phLibNfc_Mgt_DeInitialize");
  sub_297E5F164(v38, &v35);
  v7 = sub_297E4F050(v38, &v36);
  v8 = v38;
  if (!v38)
  {
    v7 = 1;
    sub_297E4E0B0(0, &v38, 4u, 1u, "Invalid input parameter");
    goto LABEL_46;
  }

  if (!v7)
  {
    v9 = v36;
    if (v36)
    {
      if (*(v36 + 6078) == 1 || *(v36 + 6081) == 1 || *(v36 + 6082) == 1 || *(v36 + 6079) == 1)
      {
        v7 = 49;
LABEL_46:
        sub_297E4D930(0, &v38, 4u, 116, "phLibNfc_Mgt_DeInitialize");
        sub_297E5AE60(v38, 112);
        sub_297E96818(v38, v7);
        goto LABEL_47;
      }

      *(v36 + 9778) = 0;
      if (!a3 || (v7 = 0, (v35 & 0xFFFFFFFD) != 4))
      {
        v28 = sub_297E4F450(v8, 112, 0, &v38, 0);
        if (v28 == 13)
        {
          v9 = v36;
          if (*(v36 + 9798) == 1)
          {
            v7 = 13;
            v10 = 1;
LABEL_41:
            if (!a2 && (v10 & 1) != 0)
            {
              v7 = 0;
              goto LABEL_46;
            }

            if (v10)
            {
              goto LABEL_45;
            }

            v9 = v36;
LABEL_49:
            if (*(v9 + 3224) == 1)
            {
              v7 = 288;
            }

            else
            {
              v7 = 0;
            }

            *(v9 + 6184) = a2;
            *(v9 + 6192) = a4;
            if (sub_297E4F450(v38, 113, v7, 0, &v37))
            {
              sub_297E4E0B0(0, &v38, 4u, 2u, "State Machine has rejected the event!!!");
              sub_297EE17E4(v38, 1);
              sub_297EE1720(v38, 0);
              v31 = v36;
              if (v36)
              {
                v32 = 0;
                v33 = 0;
                do
                {
                  v34 = *(&unk_2A18BDDC0 + 14 * v33 + 2);
                  if (v32)
                  {
                    break;
                  }

                  v32 = 1;
                  v33 = 1;
                }

                while (v34 != v36);
                if (v34 == v36)
                {
                  sub_297EA7418(v36);
                  sub_297E5A3A8(v38, 0);
                  sub_297F080D4(*(v36 + 3088), 2, 0, 0);
                  v31 = v36;
                  *(v36 + 3088) = 0;
                }
              }
            }

            else
            {
              v31 = v36;
            }

            sub_297EA9F80(v31);
            v36 = 0;
            sub_297E9F3BC(v38, 0);
            goto LABEL_46;
          }

          *(v36 + 6184) = a2;
          *(v9 + 6192) = a4;
          *(v9 + 488) = 16;
          v7 = 13;
          v10 = 1;
LABEL_14:
          v11 = *(v9 + 1496);
          if (v11 && v11 != 0xFFFFFFFFFFFFLL)
          {
            v12 = *(v9 + 9792);
            phOsalNfc_Timer_Delete();
            v9 = v36;
            *(v36 + 1496) = 0xFFFFFFFFFFFFLL;
          }

          v13 = *(v9 + 768);
          if (v13 && v13 != 0xFFFFFFFFFFFFLL)
          {
            v14 = *(v9 + 9792);
            phOsalNfc_Timer_Delete();
            v9 = v36;
            *(v36 + 768) = 0xFFFFFFFFFFFFLL;
          }

          v15 = *(v9 + 512);
          if (v15)
          {
            v16 = *(v15 + 840);
            if (v16 && v16 != 0xFFFFFFFFFFFFLL)
            {
              v17 = *(v15 + 956);
              phOsalNfc_Timer_Stop();
              v18 = *(v15 + 956);
              v19 = *(v15 + 840);
              phOsalNfc_Timer_Delete();
              *(v15 + 840) = 0xFFFFFFFFFFFFLL;
            }

            v20 = *(v15 + 856);
            if (v20 && v20 != 0xFFFFFFFFFFFFLL)
            {
              v21 = *(v15 + 956);
              phOsalNfc_Timer_Stop();
              v22 = *(v15 + 956);
              v23 = *(v15 + 856);
              phOsalNfc_Timer_Delete();
              *(v15 + 856) = 0xFFFFFFFFFFFFLL;
            }

            v24 = *(v15 + 872);
            if (v24 && v24 != 0xFFFFFFFFFFFFLL)
            {
              v25 = *(v15 + 956);
              phOsalNfc_Timer_Stop();
              v26 = *(v15 + 956);
              v27 = *(v15 + 872);
              phOsalNfc_Timer_Delete();
              sub_297E4E0B0(0, &v38, 4u, 4u, "phLibNfc_Mgt_DeInitialize : HCI Command Response timer deleted successfully");
              *(v15 + 872) = 0;
            }
          }

          goto LABEL_41;
        }

        v7 = v28;
        if (v28 == 49)
        {
          goto LABEL_46;
        }

        if (v28 == 111)
        {
          v29 = v36;
          if (!*(v36 + 3208) || *(v36 + 9798) == 1)
          {
            v7 = 111;
            goto LABEL_46;
          }

          v10 = 1;
          *(v36 + 9798) = 1;
          *(v29 + 9800) = a2;
          *(v29 + 9808) = a4;
          v7 = 13;
          goto LABEL_41;
        }

        v9 = v36;
      }

      if (*(v9 + 9798) == 1)
      {
        goto LABEL_49;
      }

      v10 = 0;
      goto LABEL_14;
    }
  }

LABEL_45:
  if (v7 != 13)
  {
    goto LABEL_46;
  }

LABEL_47:
  sub_297E4DFAC(0, &v38, 4u, 5u, "phLibNfc_Mgt_DeInitialize");
  return v7;
}

uint64_t phLibNfc_Mgt_VenResetStatus(uint64_t a1, unsigned int a2)
{
  v27 = 0;
  v28 = a1;
  v26 = 0;
  v3 = 1;
  sub_297E4D930(0, &v28, 4u, 129, "phLibNfc_Mgt_VenResetStatus");
  sub_297E4E1B4(0, &v28, 4u, 5u, "phLibNfc_Mgt_VenResetStatus");
  v4 = 0;
  while (1)
  {
    v5 = &unk_2A18BDDC0 + 112 * v4;
    if (*v5 == v28)
    {
      break;
    }

    v6 = v3;
    v3 = 0;
    v4 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v7 = *(v5 + 2);
  if (v7 > 1)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v8 = *(&unk_2A18BDDC0 + 14 * v7 + 10);
  if (v8)
  {
    v9 = v8 + 120;
  }

  else
  {
    v9 = 0;
  }

LABEL_10:
  sub_297E67F6C(v28, &v26);
  v10 = 49;
  if (!sub_297E4F050(v28, &v27))
  {
    v11 = v27;
    if (v27)
    {
      v12 = *(v27 + 3232);
      if (v12)
      {
        v13 = v12 == 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        v14 = *(v27 + 9792);
        phOsalNfc_Timer_Stop();
        v15 = *(v27 + 9792);
        v16 = *(v27 + 3232);
        phOsalNfc_Timer_Delete();
        v11 = v27;
        *(v27 + 3232) = 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        v17 = *(v26 + 48);
        if (v17)
        {
          v18 = *(v17 + 72);
          if (v18 && v18 != 0xFFFFFFFFFFFFLL)
          {
            v20 = *(v11 + 9792);
            phOsalNfc_Timer_Stop();
          }
        }
      }

      v21 = 0x133013201310000uLL >> (16 * a2);
      if (a2 >= 4)
      {
        LOWORD(v21) = 1;
      }

      v22 = v27;
      v23 = *(v27 + 3216);
      if (v23 == sub_297EA9708)
      {
        *(v27 + 3216) = 0;
        v24 = sub_297EA9800(v22, v21);
      }

      else if (v23 == sub_297EA9948)
      {
        *(v27 + 3216) = 0;
        v24 = sub_297EA9A40(v22, v21);
      }

      else if (v23 == sub_297E89A5C)
      {
        *(v27 + 3216) = 0;
        v24 = sub_297E8A420(v22, v21);
      }

      else if (v23 == sub_297E89B74)
      {
        *(v27 + 3216) = 0;
        v24 = sub_297E8A594(v22, v21);
      }

      else if (v23 == sub_297E89C8C)
      {
        *(v27 + 3216) = 0;
        v24 = sub_297E8A708(v22, v21);
      }

      else if (v23 == sub_297E89DA4)
      {
        *(v27 + 3216) = 0;
        v24 = sub_297E8A87C(v22, v21);
      }

      else if (v23 == sub_297E89EBC)
      {
        *(v27 + 3216) = 0;
        v24 = sub_297E8A9F4(v22, v21);
      }

      else if (v23 == phDnldNfc_eSEPwrCfgVenResetTimeoutCb)
      {
        *(v27 + 3216) = 0;
        v24 = phDnldNfc_eSEPwrCfgAfterVenReset(v22, v21);
      }

      else
      {
        if (v23 != phDnldNfc_eSESmbCfgVenResetTimeoutCb)
        {
          v10 = 255;
          goto LABEL_46;
        }

        *(v27 + 3216) = 0;
        v24 = phDnldNfc_eSESmbCfgAfterVenReset(v22, v21);
      }

      v10 = v24;
    }
  }

LABEL_46:
  sub_297E4D930(0, &v28, 4u, 129, "phLibNfc_Mgt_VenResetStatus");
  sub_297E4DFAC(0, &v28, 4u, 5u, "phLibNfc_Mgt_VenResetStatus");
  if (v10 && v9)
  {
    *(v9 + 36) = 129;
    sub_297E96818(v28, v10);
  }

  return v10;
}

uint64_t phLibNfc_Mgt_ConfigureHsuParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = a1;
  sub_297E4D930(0, &v12, 4u, 4, "phLibNfc_Mgt_ConfigureHsuParams");
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_Mgt_ConfigureHsuParams");
  v7 = sub_297E4F050(v12, &v11);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v11 == 0;
  }

  if (!v8)
  {
    if (!a2 || !a3)
    {
      sub_297E4E0B0(0, &v12, 4u, 2u, "phLibNfc_Mgt_ConfigureHsuParams: Invalid param");
      sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_Mgt_ConfigureHsuParams");
      sub_297E4D930(0, &v12, 4u, 4, "phLibNfc_Mgt_ConfigureHsuParams");
      v7 = 1;
LABEL_14:
      sub_297E5AE60(v12, 6);
      sub_297E96818(v12, v7);
      return v7;
    }

    v7 = sub_297E4F450(v12, 6, 0, a2, 0);
    if (v7 == 13)
    {
      v9 = v11;
      *(v11 + 6552) = a3;
      *(v9 + 6560) = a4;
      sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_Mgt_ConfigureHsuParams");
      return v7;
    }
  }

  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_Mgt_ConfigureHsuParams");
  if (v7 != 13)
  {
    sub_297E4D930(0, &v12, 4u, 4, "phLibNfc_Mgt_ConfigureHsuParams");
    if (v7)
    {
      goto LABEL_14;
    }
  }

  return v7;
}

uint64_t phLibNfc_Mgt_ConfigurePowerMode(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = 0;
  sub_297E4D930(0, &v12, 4u, 5, "phLibNfc_Mgt_ConfigurePowerMode");
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_Mgt_ConfigurePowerMode");
  v6 = sub_297E4F050(v12, &v10);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v10 == 0;
  }

  if (!v7)
  {
    if (!a3)
    {
      v6 = 1;
      sub_297E4E0B0(0, &v12, 4u, 1u, "phLibNfc_Mgt_ConfigurePowerMode: Invalid call back function passed");
      goto LABEL_16;
    }

    if (v10[817] || v10[793] || v10[795] || v10[835])
    {
      sub_297E4E0B0(0, &v12, 4u, 2u, "phLibNfc_Mgt_ConfigurePowerMode: Wired mode/SetMode API in progress");
      v6 = 111;
LABEL_16:
      sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_Mgt_ConfigurePowerMode");
      sub_297E4D930(0, &v12, 4u, 5, "phLibNfc_Mgt_ConfigurePowerMode");
LABEL_17:
      sub_297E5AE60(v12, 7);
      sub_297E96818(v12, v6);
      return v6;
    }

    v6 = sub_297E4F450(v12, 7, 0, &v11, 0);
    if (v6 == 13)
    {
      v9 = v10;
      v10[829] = a3;
      v9[830] = a4;
      sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_Mgt_ConfigurePowerMode");
      return v6;
    }
  }

  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_Mgt_ConfigurePowerMode");
  if (v6 != 13)
  {
    sub_297E4D930(0, &v12, 4u, 5, "phLibNfc_Mgt_ConfigurePowerMode");
    if (v6)
    {
      goto LABEL_17;
    }
  }

  return v6;
}

uint64_t phLibNfc_Mgt_GeneralNtfRegister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = a1;
  sub_297E4D930(0, &v12, 4u, 43, "phLibNfc_Mgt_GeneralNtfRegister");
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_Mgt_GeneralNtfRegister");
  v5 = sub_297E4F050(v12, &v11);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v11 == 0;
  }

  if (v6)
  {
    v7 = v5;
    v8 = "phLibNfc_Mgt_GeneralNtfRegister: LIBNFC Not Initialized";
LABEL_11:
    sub_297E4E0B0(0, &v12, 4u, 1u, v8);
    goto LABEL_12;
  }

  if (!a2)
  {
    v8 = "phLibNfc_Mgt_GeneralNtfRegister: Invalid input parameters";
    v7 = 1;
    goto LABEL_11;
  }

  v7 = sub_297E4F450(v12, 46, 0, 0, 0);
  if (!v7)
  {
    v9 = v11;
    *(v11 + 6568) = a2;
    *(v9 + 6576) = a3;
  }

LABEL_12:
  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_Mgt_GeneralNtfRegister");
  sub_297E4D930(0, &v12, 4u, 43, "phLibNfc_Mgt_GeneralNtfRegister");
  if (v7)
  {
    sub_297E5AE60(v12, 46);
    sub_297E96818(v12, v7);
  }

  return v7;
}

uint64_t phLibNfc_Mgt_ConfigRoutingTable(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  sub_297E4D930(0, &v15, 4u, 38, "phLibNfc_Mgt_ConfigRoutingTable");
  sub_297E4E1B4(0, &v15, 4u, 5u, "phLibNfc_Mgt_ConfigRoutingTable");
  v9 = sub_297E4F050(v15, &v13);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v13 == 0;
  }

  if (v10)
  {
    goto LABEL_6;
  }

  if (!a2 || !a3 || !a4)
  {
    v9 = 1;
    sub_297E4E0B0(0, &v15, 4u, 1u, "Invalid input parameters received");
    goto LABEL_14;
  }

  if (*(v13 + 2994) != 1)
  {
    v9 = sub_297E4F450(v15, 40, 0, &v14, a3);
    if (v9 == 147)
    {
      sub_297E4E0B0(0, &v15, 4u, 2u, "State machine status is NFCSTATUS_REJECTED");
      v9 = 255;
      goto LABEL_14;
    }

    if (v9 == 13)
    {
      v12 = v13;
      *(v13 + 6504) = a4;
      *(v12 + 6512) = a5;
      sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_Mgt_ConfigRoutingTable");
      return v9;
    }

LABEL_6:
    sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_Mgt_ConfigRoutingTable");
    if (v9 == 13)
    {
      return v9;
    }

    goto LABEL_15;
  }

  sub_297E4E0B0(0, &v15, 4u, 1u, "phLibNfc_Mgt_ConfigRoutingTable: Feature not supported");
  v9 = 51;
LABEL_14:
  sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_Mgt_ConfigRoutingTable");
LABEL_15:
  sub_297E4D930(0, &v15, 4u, 38, "phLibNfc_Mgt_ConfigRoutingTable");
  sub_297E5AE60(v15, 40);
  sub_297E96818(v15, v9);
  return v9;
}

uint64_t phLibNfc_Mgt_GetstackCapabilities(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = a1;
  sub_297E4D930(0, &v7, 4u, 32, "phLibNfc_Mgt_GetstackCapabilities");
  sub_297E4E1B4(0, &v7, 4u, 5u, "phLibNfc_Mgt_GetstackCapabilities");
  v3 = sub_297E4F050(v7, &v6);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v6 == 0;
  }

  if (!v4)
  {
    if (a2)
    {
      v3 = sub_297E4F450(v7, 34, 0, a2, 0);
    }

    else
    {
      sub_297E4E0B0(0, &v7, 4u, 4u, "Invalid parameters passed");
      v3 = 1;
    }
  }

  sub_297E4DFAC(0, &v7, 4u, 5u, "phLibNfc_Mgt_GetstackCapabilities");
  sub_297E4D930(0, &v7, 4u, 32, "phLibNfc_Mgt_GetstackCapabilities");
  if (v3)
  {
    sub_297E5AE60(v7, 34);
    sub_297E96818(v7, v3);
  }

  return v3;
}

uint64_t phLibNfc_Mgt_ValidateEepromSettings(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = a1;
  sub_297E4D930(0, &v11, 4u, 49, "phLibNfc_Mgt_ValidateEepromSettings");
  sub_297E4E1B4(0, &v11, 4u, 5u, "phLibNfc_Mgt_ValidateEepromSettings");
  v5 = sub_297E4F050(v11, &v10);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v10 == 0;
  }

  if (v6)
  {
    v7 = v5;
    sub_297E4E0B0(0, &v11, 4u, 1u, "phLibNfc_Mgt_ValidateEepromSettings: LIBNFC Not Initialized");
    sub_297E4DFAC(0, &v11, 4u, 5u, "phLibNfc_Mgt_ValidateEepromSettings");
    if (v7 == 13)
    {
      return v7;
    }

    goto LABEL_13;
  }

  if (!a2)
  {
    v7 = 1;
    sub_297E4E0B0(0, &v11, 4u, 1u, "phLibNfc_Mgt_ValidateEepromSettings: Invalid call back function passed");
    goto LABEL_12;
  }

  *(v10 + 744) = 0;
  v7 = sub_297E4F450(v11, 52, 0, 0, 0);
  if (v7 != 13)
  {
LABEL_12:
    sub_297E4DFAC(0, &v11, 4u, 5u, "phLibNfc_Mgt_ValidateEepromSettings");
LABEL_13:
    sub_297E4D930(0, &v11, 4u, 49, "phLibNfc_Mgt_ValidateEepromSettings");
    sub_297E5AE60(v11, 52);
    sub_297E96818(v11, v7);
    return v7;
  }

  v8 = v10;
  *(v10 + 6664) = a2;
  *(v8 + 6672) = a3;
  sub_297E4DFAC(0, &v11, 4u, 5u, "phLibNfc_Mgt_ValidateEepromSettings");
  return v7;
}

uint64_t phLibNfc_Mgt_SetRfSettings(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v15 = a2;
  v14 = 0;
  sub_297E4D930(0, &v16, 4u, 40, "phLibNfc_Mgt_SetRfSettings");
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_Mgt_SetRfSettings");
  v9 = sub_297E4F050(v16, &v14);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v14 == 0;
  }

  if (v10)
  {
LABEL_6:
    sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_Mgt_SetRfSettings");
    if (v9 == 13)
    {
      return v9;
    }

    goto LABEL_16;
  }

  if (a3 && *a3)
  {
    v9 = 1;
    v11 = "phLibNfc_Mgt_SetRfSettings: Invalid input parameter";
    if (a4 && *(a3 + 8))
    {
      if (*(v14 + 2994) != 1 && (*(v14 + 2984) == 1 || *(v14 + 2985) == 1 || *(v14 + 2986) == 1 || a2 != 1 || *(v14 + 2992) == 1))
      {
        *(v14 + 744) = 0;
        v9 = sub_297E4F450(v16, 43, 0, &v15, a3);
        if (v9 == 13)
        {
          v13 = v14;
          *(v14 + 6152) = a4;
          *(v13 + 6160) = a5;
          sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_Mgt_SetRfSettings");
          return v9;
        }

        goto LABEL_6;
      }

      v9 = 51;
      v11 = "phLibNfc_Mgt_SetRfSettings: Feature Not Supported by NFCC";
    }
  }

  else
  {
    v9 = 1;
    v11 = "phLibNfc_Mgt_SetRfSettings: Invalid input parameter";
  }

  sub_297E4E0B0(0, &v16, 4u, 1u, v11);
  sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_Mgt_SetRfSettings");
LABEL_16:
  sub_297E4D930(0, &v16, 4u, 40, "phLibNfc_Mgt_SetRfSettings");
  sub_297E5AE60(v16, 43);
  sub_297E96818(v16, v9);
  return v9;
}

uint64_t phLibNfc_Mgt_eSeSvddControl(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  sub_297E4D930(0, &v13, 4u, 41, "phLibNfc_Mgt_eSeSvddControl");
  sub_297E4E1B4(0, &v13, 4u, 5u, "phLibNfc_Mgt_eSeSvddControl");
  v7 = sub_297E4F050(v13, &v11);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v11 == 0;
  }

  if (v8)
  {
    goto LABEL_6;
  }

  if (a2 > 1 || !a3)
  {
    sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_Mgt_eSeSvddControl");
    v7 = 1;
LABEL_13:
    sub_297E4D930(0, &v13, 4u, 41, "phLibNfc_Mgt_eSeSvddControl");
    sub_297E5AE60(v13, 44);
    sub_297E96818(v13, v7);
    return v7;
  }

  v7 = sub_297E4F450(v13, 44, 0, &v12, 0);
  if (v7 != 13)
  {
LABEL_6:
    sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_Mgt_eSeSvddControl");
    if (v7 == 13)
    {
      return v7;
    }

    goto LABEL_13;
  }

  v9 = v11;
  *(v11 + 6136) = a3;
  *(v9 + 6144) = a4;
  sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_Mgt_eSeSvddControl");
  return v7;
}

uint64_t phLibNfc_Mgt_GetFwVersion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  v18 = a1;
  v15 = 0;
  v16 = 0;
  sub_297E4D930(0, &v18, 4u, 12, "phLibNfc_Mgt_GetFwVersion");
  sub_297E4E1B4(0, &v18, 4u, 5u, "phLibNfc_Mgt_GetFwVersion");
  v7 = sub_297E4F050(v18, &v17);
  sub_297E5D114(v18, &v16);
  sub_297E67EB0(v18, &v15);
  if (!v7 && !v15)
  {
    v8 = 147;
    v9 = "This API will be handled only in Libnfc uninitialized state";
LABEL_4:
    sub_297E4E0B0(0, &v18, 4u, 1u, v9);
    goto LABEL_5;
  }

  v8 = 1;
  v9 = "phLibNfc_Mgt_GetFwVersion: Invalid input parameter";
  if (!a2 || !a3 || !v18 || !v16)
  {
    goto LABEL_4;
  }

  v8 = sub_297E4F450(v18, 181, 0, &v18, 0);
  if (v8 == 13)
  {
    v11 = v16;
    *(v16 + 32) = a3;
    *v11 = a4;
    v12 = v16;
    *(v16 + 64) = a2;
    *(v12 + 8) = v18;
    sub_297E4DFAC(0, &v18, 4u, 5u, "phLibNfc_Mgt_GetFwVersion");
    return v8;
  }

  v13 = v17;
  if (v17 && !v17[6078] && !v17[6081] && !v17[6082] && !v17[6079])
  {
    *(v16 + 91) = 0;
    v14 = *(v13 + 2448);
    phOsalNfc_FreeMemory();
    v17 = 0;
    sub_297E9F3BC(v18, 0);
  }

LABEL_5:
  sub_297E4DFAC(0, &v18, 4u, 5u, "phLibNfc_Mgt_GetFwVersion");
  sub_297E4D930(0, &v18, 4u, 12, "phLibNfc_Mgt_GetFwVersion");
  sub_297E5AE60(v18, 181);
  sub_297E96818(v18, v8);
  return v8;
}

uint64_t phLibNfc_AntennaSelfTest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v14 = a1;
  v15 = a2;
  v13 = 0;
  sub_297E4D930(0, &v14, 4u, 42, "phLibNfc_AntennaSelfTest");
  sub_297E4E1B4(0, &v14, 4u, 5u, "phLibNfc_AntennaSelfTest");
  v7 = sub_297E4F050(v14, &v13);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v13 == 0;
  }

  if (v8)
  {
    v9 = v7;
    sub_297E4E0B0(0, &v14, 4u, 1u, "phLibNfc_AntennaSelfTest: Stack Not Initialized");
LABEL_7:
    if (v9 == 13)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v9 = 1;
  v10 = "phLibNfc_AntennaSelfTest: Invalid Params";
  if (a3 && (v6 & 1) != 0)
  {
    if (*(v13 + 2994) != 1 && (*(v13 + 2985) == 1 || *(v13 + 2986) == 1 || *(v13 + 2992) == 1))
    {
      v9 = sub_297E4F450(v14, 45, 0, &v15, 0);
      if (v9 == 13)
      {
        v12 = v13;
        *(v13 + 6792) = a3;
        *(v12 + 6800) = a4;
        goto LABEL_15;
      }

      goto LABEL_7;
    }

    v9 = 51;
    v10 = "phLibNfc_AntennaSelfTest: Feature Not Supported";
  }

  sub_297E4E0B0(0, &v14, 4u, 1u, v10);
LABEL_14:
  sub_297E4D930(0, &v14, 4u, 42, "phLibNfc_AntennaSelfTest");
  sub_297E5AE60(v14, 45);
  sub_297E96818(v14, v9);
LABEL_15:
  sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_AntennaSelfTest");
  return v9;
}

uint64_t phLibNfc_GetMemoryDump(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  v16 = a1;
  v13 = 0;
  v14 = 0;
  v7 = 1;
  sub_297E4D930(0, &v16, 4u, 10, "phLibNfc_GetMemoryDump");
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_GetMemoryDump");
  sub_297E4F0E8(v16, &v15);
  sub_297E5D114(v16, &v14);
  sub_297E67EB0(v16, &v13);
  v8 = "phLibNfc_GetMemoryDump: INVALID_PARAMETER ";
  if ((a2 - 3) < 0xFFFFFFFE)
  {
    goto LABEL_8;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  v9 = v16;
  if (!v16)
  {
    goto LABEL_8;
  }

  v10 = v14;
  if (!v14)
  {
    goto LABEL_8;
  }

  if (v15 && !v13)
  {
    v7 = 147;
    v8 = "phLibNfc_GetMemoryDump: This API will only be handled only in the Libnfc uninitialized state";
LABEL_8:
    sub_297E4E0B0(0, &v16, 4u, 1u, v8);
    goto LABEL_9;
  }

  *(v14 + 112) = a2;
  *(v10 + 8) = v9;
  v7 = sub_297E4F450(v9, 183, 0, 0, 0);
  if (v7 == 13)
  {
    v12 = v14;
    *(v14 + 24) = a3;
    *v12 = a4;
    sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_GetMemoryDump");
    return v7;
  }

LABEL_9:
  sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_GetMemoryDump");
  sub_297E4D930(0, &v16, 4u, 10, "phLibNfc_GetMemoryDump");
  sub_297E5AE60(v16, 183);
  sub_297E96818(v16, v7);
  return v7;
}

uint64_t phLibNfc_Mgt_TriggerNfccAssertion(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v19 = a1;
  v17 = a3;
  v18 = a2;
  v16 = 0;
  sub_297E4D930(0, &v19, 4u, 44, "phLibNfc_Mgt_TriggerNfccAssertion");
  sub_297E4E1B4(0, &v19, 4u, 5u, "phLibNfc_Mgt_TriggerNfccAssertion");
  v9 = sub_297E4F050(v19, &v16);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v16 == 0;
  }

  if (v10)
  {
    v11 = v9;
    sub_297E4E0B0(0, &v19, 4u, 1u, "phLibNfc_Mgt_TriggerNfccAssertion: LIBNFC Not Initialized");
    sub_297E4DFAC(0, &v19, 4u, 5u, "phLibNfc_Mgt_TriggerNfccAssertion");
    if (v11 == 13)
    {
      return v11;
    }

    goto LABEL_22;
  }

  if (!a4)
  {
    v11 = 1;
    sub_297E4E0B0(0, &v19, 4u, 1u, "phLibNfc_Mgt_TriggerNfccAssertion: Invalid input parameters");
LABEL_21:
    sub_297E4DFAC(0, &v19, 4u, 5u, "phLibNfc_Mgt_TriggerNfccAssertion");
LABEL_22:
    sub_297E4D930(0, &v19, 4u, 44, "phLibNfc_Mgt_TriggerNfccAssertion");
    sub_297E5AE60(v19, 47);
    sub_297E96818(v19, v11);
    return v11;
  }

  if (*(v16 + 2992) == 1 && a3 && a2 == 1 && !*(v16 + 2994) && *(v16 + 3196) == 2)
  {
    if ((a3 - 961) <= 0xFFFFFC48)
    {
      v17 = 10;
    }

    v12 = v19;
    v13 = &v17;
  }

  else
  {
    v12 = v19;
    v13 = 0;
  }

  v11 = sub_297E4F450(v12, 47, 0, &v18, v13);
  if (v11 != 13)
  {
    goto LABEL_21;
  }

  v14 = v16;
  *(v16 + 6584) = a4;
  *(v14 + 6592) = a5;
  sub_297E4DFAC(0, &v19, 4u, 5u, "phLibNfc_Mgt_TriggerNfccAssertion");
  return v11;
}

uint64_t phLibNfc_Mgt_GetClrAssertRegs(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  sub_297E4D930(0, &v15, 4u, 45, "phLibNfc_Mgt_GetClrAssertRegs");
  sub_297E4E1B4(0, &v15, 4u, 5u, "phLibNfc_Mgt_GetClrAssertRegs");
  v8 = sub_297E4F050(v15, &v13);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v13 == 0;
  }

  if (v9)
  {
    v10 = v8;
    sub_297E4E0B0(0, &v15, 4u, 1u, "phLibNfc_Mgt_GetClrAssertRegs: LIBNFC Not Initialized");
    sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_Mgt_GetClrAssertRegs");
    if (v10 == 13)
    {
      return v10;
    }

    goto LABEL_13;
  }

  if (!a4)
  {
    v10 = 1;
    goto LABEL_12;
  }

  v10 = sub_297E4F450(v15, 48, 0, &v14, a3);
  if (v10 != 13)
  {
LABEL_12:
    sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_Mgt_GetClrAssertRegs");
LABEL_13:
    sub_297E4D930(0, &v15, 4u, 45, "phLibNfc_Mgt_GetClrAssertRegs");
    sub_297E5AE60(v15, 48);
    sub_297E96818(v15, v10);
    return v10;
  }

  v11 = v13;
  *(v13 + 6088) = a4;
  *(v11 + 6096) = a5;
  sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_Mgt_GetClrAssertRegs");
  return v10;
}

uint64_t phLibNfc_Mgt_ConfigureLogging(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  v13 = 0;
  v14 = a1;
  sub_297E4D930(0, &v14, 4u, 46, "phLibNfc_Mgt_ConfigureLogging");
  sub_297E4E1B4(0, &v14, 4u, 5u, "phLibNfc_Mgt_ConfigureLogging");
  v7 = sub_297E4F050(v14, &v13);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v13 == 0;
  }

  if (v8)
  {
    v9 = v7;
    sub_297E4E0B0(0, &v14, 4u, 1u, "phLibNfc_Mgt_ConfigureLogging: LIBNFC Not Initialized");
    sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_Mgt_ConfigureLogging");
    if (v9 == 13)
    {
      return v9;
    }

    goto LABEL_12;
  }

  if (*(v13 + 2994) == 1)
  {
    v9 = 51;
    v10 = "phLibNfc_Mgt_ConfigureLogging: Feature not supported";
  }

  else
  {
    v9 = 1;
    v10 = "phLibNfc_Mgt_ConfigureLogging: Invalid input parameters";
    if (a3 && (a2 & 0xFFFF2080) == 0)
    {
      v9 = sub_297E4F450(v14, 49, 0, &v15, 0);
      if (v9 == 13)
      {
        v12 = v13;
        *(v13 + 6600) = a3;
        *(v12 + 6608) = a4;
        sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_Mgt_ConfigureLogging");
        return v9;
      }

      goto LABEL_11;
    }
  }

  sub_297E4E0B0(0, &v14, 4u, 1u, v10);
LABEL_11:
  sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_Mgt_ConfigureLogging");
LABEL_12:
  sub_297E4D930(0, &v14, 4u, 46, "phLibNfc_Mgt_ConfigureLogging");
  sub_297E5AE60(v14, 49);
  sub_297E96818(v14, v9);
  return v9;
}

uint64_t phLibNfc_Mgt_ConfigureAssertionLogging(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  sub_297E4D930(0, &v13, 4u, 47, "phLibNfc_Mgt_ConfigureAssertionLogging");
  sub_297E4E1B4(0, &v13, 4u, 5u, "phLibNfc_Mgt_ConfigureAssertionLogging");
  v6 = sub_297E4F050(v13, &v11);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v11 == 0;
  }

  if (v7)
  {
    v8 = v6;
    sub_297E4E0B0(0, &v13, 4u, 1u, "phLibNfc_Mgt_ConfigureAssertionLogging: LIBNFC Not Initialized");
    sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_Mgt_ConfigureAssertionLogging");
    if (v8 == 13)
    {
      return v8;
    }

    goto LABEL_13;
  }

  if (!a3)
  {
    v8 = 1;
    sub_297E4E0B0(0, &v13, 4u, 1u, "phLibNfc_Mgt_ConfigureAssertionLogging: Invalid input parameters");
    goto LABEL_12;
  }

  v8 = sub_297E4F450(v13, 50, 0, &v12, 0);
  if (v8 != 13)
  {
LABEL_12:
    sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_Mgt_ConfigureAssertionLogging");
LABEL_13:
    sub_297E4D930(0, &v13, 4u, 47, "phLibNfc_Mgt_ConfigureAssertionLogging");
    sub_297E5AE60(v13, 50);
    sub_297E96818(v13, v8);
    return v8;
  }

  v9 = v11;
  *(v11 + 6616) = a3;
  *(v9 + 6624) = a4;
  sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_Mgt_ConfigureAssertionLogging");
  return v8;
}

uint64_t phLibNfc_TriggerRfFieldOnNtf(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = a1;
  sub_297E4D930(0, &v14, 4u, 48, "phLibNfc_TriggerRfFieldOnNtf");
  sub_297E4E1B4(0, &v14, 4u, 5u, "phLibNfc_TriggerRfFieldOnNtf");
  v7 = sub_297E4F050(v14, &v13);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v13 == 0;
  }

  if (v8)
  {
    v9 = v7;
    sub_297E4E0B0(0, &v14, 4u, 1u, "phLibNfc_TriggerRfFieldOnNtf: LIBNFC Not Initialized");
    sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_TriggerRfFieldOnNtf");
    if (v9 == 13)
    {
      return v9;
    }

    goto LABEL_14;
  }

  if (a3)
  {
    if (*(v13 + 2994) != 1)
    {
      *(v13 + 766) = a2;
      v9 = sub_297E4F450(v14, 51, 0, 0, 0);
      if (v9 == 13)
      {
        v12 = v13;
        *(v13 + 6648) = a3;
        *(v12 + 6656) = a4;
        sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_TriggerRfFieldOnNtf");
        return v9;
      }

      goto LABEL_13;
    }

    v9 = 51;
    v10 = "phLibNfc_TriggerRfFieldOnNtf: Feature not supported";
  }

  else
  {
    v9 = 1;
    v10 = "phLibNfc_TriggerRfFieldOnNtf: pRspCb not defined";
  }

  sub_297E4E0B0(0, &v14, 4u, 1u, v10);
LABEL_13:
  sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_TriggerRfFieldOnNtf");
LABEL_14:
  sub_297E4D930(0, &v14, 4u, 48, "phLibNfc_TriggerRfFieldOnNtf");
  sub_297E5AE60(v14, 51);
  sub_297E96818(v14, v9);
  return v9;
}

uint64_t phLibNfc_Mgt_GetDebugInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a1;
  sub_297E4D930(0, &v19, 4u, 50, "phLibNfc_Mgt_GetDebugInfo");
  sub_297E4E1B4(0, &v19, 4u, 5u, "phLibNfc_Mgt_GetDebugInfo");
  if (!a3 && !a2 && !a4 && !a5)
  {
    v9 = "phLibNfc_Mgt_GetDebugInfo: Invalid parameter";
LABEL_14:
    v15 = 1;
    sub_297E4E0B0(0, &v19, 4u, 1u, v9);
    goto LABEL_19;
  }

  if (a3 && (!*a3 || !*(a3 + 8)))
  {
    v9 = "phLibNfc_Mgt_GetDebugInfo: Invalid parameter for Circular buffer";
    goto LABEL_14;
  }

  v10 = 0;
  v11 = 1;
  v12 = v19;
  while (1)
  {
    v13 = v11;
    v14 = &unk_2A18BDDC0 + 112 * v10;
    if (*v14 == v19)
    {
      break;
    }

    v11 = 0;
    v10 = 1;
    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v16 = *(v14 + 2);
  if (v16 <= 1)
  {
    v17 = *(&unk_2A18BDDC0 + 14 * v16 + 10);
    if (v17)
    {
      v17[15] = a2;
      v17[16] = a3;
      v17[17] = a4;
      v17[18] = a5;
      v15 = sub_297E4F450(v12, 53, 0, a2, a3);
      goto LABEL_19;
    }
  }

LABEL_18:
  v15 = 0;
LABEL_19:
  sub_297E4DFAC(0, &v19, 4u, 5u, "phLibNfc_Mgt_GetDebugInfo");
  sub_297E4D930(0, &v19, 4u, 50, "phLibNfc_Mgt_GetDebugInfo");
  return v15;
}

uint64_t phLibNfc_RemoteDev_Connect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = a1;
  sub_297E4D930(0, &v14, 4u, 15, "phLibNfc_RemoteDev_Connect");
  sub_297E4E1B4(0, &v14, 4u, 5u, "phLibNfc_RemoteDev_Connect");
  v7 = sub_297E4F050(v14, &v13);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v13 == 0;
  }

  if (v8)
  {
    v9 = v7;
    goto LABEL_7;
  }

  if (!a2 || !a3)
  {
    v9 = 1;
    sub_297E4E0B0(0, &v14, 4u, 1u, "Invalid input Parameter");
LABEL_16:
    sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_RemoteDev_Connect");
    sub_297E4D930(0, &v14, 4u, 15, "phLibNfc_RemoteDev_Connect");
LABEL_17:
    sub_297E5AE60(v14, 17);
    sub_297E96818(v14, v9);
    return v9;
  }

  *(v13 + 1488) = 0;
  v10 = sub_297E4F450(v14, 17, 0, a2, 0);
  if (v10 == 147)
  {
    if (*(v13 + 1504))
    {
      v9 = 147;
    }

    else
    {
      sub_297E4E0B0(0, &v14, 4u, 2u, "State machine status is NFCSTATUS_REJECTED");
      v9 = 1;
    }

    goto LABEL_16;
  }

  v9 = v10;
  if (v10 == 13)
  {
    v11 = v13;
    *(v13 + 6200) = a3;
    *(v11 + 6208) = a4;
    sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_RemoteDev_Connect");
    return v9;
  }

LABEL_7:
  sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_RemoteDev_Connect");
  if (v9 != 13)
  {
    sub_297E4D930(0, &v14, 4u, 15, "phLibNfc_RemoteDev_Connect");
    if (v9)
    {
      goto LABEL_17;
    }
  }

  return v9;
}

uint64_t phLibNfc_GetTagInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = a1;
  sub_297E4D930(0, &v15, 4u, 16, "phLibNfc_GetTagInfo");
  sub_297E4E1B4(0, &v15, 4u, 5u, "phLibNfc_GetTagInfo");
  v9 = sub_297E4F050(v15, &v14);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v14 == 0;
  }

  if (v10)
  {
LABEL_6:
    sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_GetTagInfo");
    if (v9 == 13)
    {
      return v9;
    }

    goto LABEL_20;
  }

  v9 = 1;
  v11 = "phLibNfc_GetTagInfo: Invalid param";
  if (!a3 || !a2 || !a4 || !*(a3 + 8))
  {
    goto LABEL_18;
  }

  v9 = sub_297E4F450(v15, 18, 0, a2, a3);
  if (v9 == 147)
  {
    if (*(v14 + 1504))
    {
      v9 = 147;
LABEL_19:
      sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_GetTagInfo");
LABEL_20:
      sub_297E4D930(0, &v15, 4u, 16, "phLibNfc_GetTagInfo");
      sub_297E5AE60(v15, 18);
      sub_297E96818(v15, v9);
      return v9;
    }

    v9 = 148;
    v11 = "State machine status is NFCSTATUS_REJECTED";
LABEL_18:
    sub_297E4E0B0(0, &v15, 4u, 2u, v11);
    goto LABEL_19;
  }

  if (v9 != 13)
  {
    goto LABEL_6;
  }

  v12 = v14;
  *(v14 + 6216) = a4;
  *(v12 + 6224) = a5;
  sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_GetTagInfo");
  return v9;
}

uint64_t phLibNfc_RemoteDev_Transceive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = a1;
  sub_297E4D930(0, &v15, 4u, 17, "phLibNfc_RemoteDev_Transceive");
  sub_297E4E1B4(0, &v15, 4u, 5u, "phLibNfc_RemoteDev_Transceive");
  v9 = sub_297E4F050(v15, &v14);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v14 == 0;
  }

  if (v10)
  {
LABEL_6:
    sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_RemoteDev_Transceive");
    if (v9 == 13)
    {
      return v9;
    }

    goto LABEL_19;
  }

  v9 = 1;
  v11 = "phLibNfc_RemoteDev_Transceive: Invalid param";
  if (!a2 || !a3 || !a4)
  {
    goto LABEL_17;
  }

  v9 = sub_297E4F450(v15, 19, 0, a2, a3);
  if (v9 == 147)
  {
    if (*(v14 + 1504))
    {
      v9 = 147;
LABEL_18:
      sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_RemoteDev_Transceive");
LABEL_19:
      sub_297E4D930(0, &v15, 4u, 17, "phLibNfc_RemoteDev_Transceive");
      sub_297E5AE60(v15, 19);
      sub_297E96818(v15, v9);
      return v9;
    }

    v9 = 148;
    v11 = "phLibNfc_RemoteDev_Transceive: State machine status is NFCSTATUS_REJECTED";
LABEL_17:
    sub_297E4E0B0(0, &v15, 4u, 2u, v11);
    goto LABEL_18;
  }

  if (v9 != 13)
  {
    goto LABEL_6;
  }

  v12 = v14;
  *(v14 + 6232) = a4;
  *(v12 + 6240) = a5;
  *(v12 + 2600) = *(a3 + 48);
  *(v12 + 1528) = 0;
  sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_RemoteDev_Transceive");
  return v9;
}

uint64_t phLibNfc_RemoteDev_Disconnect(uint64_t a1, _BYTE *a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v26 = 0;
  v27 = a1;
  v10 = 1;
  while (1)
  {
    v11 = v10;
    v12 = &unk_2A18BDDC0 + 112 * v9;
    if (*v12 == a1)
    {
      break;
    }

    v10 = 0;
    v9 = 1;
    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v13 = *(v12 + 2);
  if (v13 > 1)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v14 = *(&unk_2A18BDDC0 + 14 * v13 + 10);
  if (v14)
  {
    v15 = v14 + 120;
  }

  else
  {
    v15 = 0;
  }

LABEL_10:
  v25 = 0;
  sub_297E4D930(0, &v27, 4u, 130, "phLibNfc_RemoteDev_Disconnect");
  sub_297E4E1B4(0, &v27, 4u, 5u, "phLibNfc_RemoteDev_Disconnect");
  v16 = sub_297E4F050(v27, &v26);
  if (v16 || (v17 = v26) == 0)
  {
    if (v15)
    {
      *(v15 + 36) = 130;
      sub_297E96818(v27, v16);
      LODWORD(v15) = 0;
    }

LABEL_26:
    sub_297E4DFAC(0, &v27, 4u, 5u, "phLibNfc_RemoteDev_Disconnect");
    if (v16 == 13)
    {
      return v16;
    }

    goto LABEL_35;
  }

  if (!a2 || !a4)
  {
    v18 = "Invalid parameters passed by upper layer";
LABEL_29:
    v16 = 1;
    sub_297E4E0B0(0, &v27, 4u, 1u, v18);
    if (!v15)
    {
      goto LABEL_34;
    }

    *(v15 + 36) = 130;
    v19 = v27;
    v20 = 1;
LABEL_33:
    sub_297E96818(v19, v20);
    LODWORD(v15) = 0;
    goto LABEL_34;
  }

  if (!*(v26 + 1504))
  {
    sub_297E4E0B0(0, &v27, 4u, 1u, "Target not connected");
    if (!v15)
    {
      v16 = 148;
      goto LABEL_34;
    }

    *(v15 + 36) = 130;
    v19 = v27;
    v16 = 148;
    v20 = 148;
    goto LABEL_33;
  }

  if ((a3 & 0xFFFFFFFB) == 0)
  {
    v18 = "Invalid Release type passed ";
    goto LABEL_29;
  }

  if ((a3 & 0xFFFFFFFE) == 6 && *(v26 + 2985) != 1 && *(v26 + 2986) != 1 && *(v26 + 2992) != 1)
  {
    sub_297E4E0B0(0, &v27, 4u, 1u, "Feature not supported for this platform ");
    if (!v15)
    {
      v16 = 51;
      goto LABEL_34;
    }

    *(v15 + 36) = 130;
    v19 = v27;
    v16 = 51;
    v20 = 51;
    goto LABEL_33;
  }

  if (a3 > 4)
  {
    switch(a3)
    {
      case 5:
        v25 = 5;
        v15 = 22;
        break;
      case 6:
        v25 = 5;
        v15 = 23;
        break;
      case 7:
        v25 = 5;
        v15 = 24;
        break;
      default:
LABEL_44:
        v22 = 5;
        goto LABEL_50;
    }

    *(v26 + 1032) = 5;
    *(v17 + 1036) = a3;
    goto LABEL_55;
  }

  if (a3 != 1)
  {
    if (a3 == 2)
    {
      if (*a2 == 1)
      {
        v22 = 4;
      }

      else
      {
        v22 = 3;
      }

      goto LABEL_50;
    }

    goto LABEL_44;
  }

  v22 = 3;
LABEL_50:
  v25 = v22;
  *(v26 + 1032) = v22;
  *(v17 + 1036) = a3;
  if (sub_297EE7E94(v17, v22))
  {
    v15 = 20;
  }

  else
  {
    v15 = 21;
  }

LABEL_55:
  v16 = sub_297E4F450(v27, v15, 0, &v25, a2);
  if (v16 - 111 <= 0x26 && ((1 << (v16 - 111)) & 0x4500000001) != 0 || v16 == 1)
  {
    sub_297E50DB0(0, &v27, 4u, 1u, "State machine has returned ");
    goto LABEL_26;
  }

  if (v16 == 13)
  {
    sub_297E4E0B0(0, &v27, 4u, 4u, "State machine has returned NFCSTATUS_PENDING");
    v23 = v26;
    *(v26 + 6264) = a4;
    *(v23 + 6272) = a5;
    v24 = *(v23 + 3088);
    if (v24)
    {
      *(v24 + 6514) = v15 == 21;
    }

    goto LABEL_26;
  }

  sub_297E4E0B0(0, &v27, 4u, 1u, "State machine has returned NFCSTATUS_FAILED");
  v16 = 255;
LABEL_34:
  sub_297E4DFAC(0, &v27, 4u, 5u, "phLibNfc_RemoteDev_Disconnect");
LABEL_35:
  sub_297E4D930(0, &v27, 4u, 130, "phLibNfc_RemoteDev_Disconnect");
  if (v15)
  {
    sub_297E5AE60(v27, v15);
    sub_297E96818(v27, v16);
  }

  return v16;
}

uint64_t phLibNfc_RemoteDev_NtfRegister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = a1;
  sub_297E4D930(0, &v13, 4u, 13, "phLibNfc_RemoteDev_NtfRegister");
  sub_297E4E1B4(0, &v13, 4u, 5u, "phLibNfc_RemoteDev_NtfRegister");
  v7 = sub_297E4F050(v13, &v12);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v12 == 0;
  }

  if (!v8)
  {
    if (a2 && a3)
    {
      v9 = sub_297E4F450(v13, 15, 0, a2, 0);
      v7 = v9;
      if (!v9)
      {
        v10 = v12;
        *(v12 + 6280) = a3;
        *(v10 + 6288) = a4;
      }
    }

    else
    {
      v7 = 1;
      sub_297E4E0B0(0, &v13, 4u, 1u, "Invalid input parameter");
    }
  }

  sub_297E4DFAC(0, &v13, 4u, 5u, "phLibNfc_RemoteDev_NtfRegister");
  sub_297E4D930(0, &v13, 4u, 13, "phLibNfc_RemoteDev_NtfRegister");
  if (v7)
  {
    sub_297E5AE60(v13, 15);
    sub_297E96818(v13, v7);
  }

  return v7;
}

uint64_t phLibNfc_RemoteDev_NtfUnregister(uint64_t a1)
{
  v5 = 0;
  v6 = a1;
  sub_297E4D930(0, &v6, 4u, 14, "phLibNfc_RemoteDev_NtfUnregister");
  sub_297E4E1B4(0, &v6, 4u, 5u, "phLibNfc_RemoteDev_NtfUnregister");
  v1 = sub_297E4F050(v6, &v5);
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v5 == 0;
  }

  if (!v2)
  {
    v3 = sub_297E4F450(v6, 16, 0, 0, 0);
    v1 = v3;
    if (!v3)
    {
      *(v5 + 6280) = 0u;
    }
  }

  sub_297E4DFAC(0, &v6, 4u, 5u, "phLibNfc_RemoteDev_NtfUnregister");
  sub_297E4D930(0, &v6, 4u, 14, "phLibNfc_RemoteDev_NtfUnregister");
  if (v1)
  {
    sub_297E5AE60(v6, 16);
    sub_297E96818(v6, v1);
  }

  return v1;
}

uint64_t phLibNfc_RemoteDev_CheckPresence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = a1;
  sub_297E4D930(0, &v14, 4u, 22, "phLibNfc_RemoteDev_CheckPresence");
  sub_297E4E1B4(0, &v14, 4u, 5u, "phLibNfc_RemoteDev_CheckPresence");
  v7 = sub_297E4F050(v14, &v13);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v13 == 0;
  }

  if (v8)
  {
    v9 = v7;
    goto LABEL_7;
  }

  if (!a2 || !a3)
  {
    v9 = 1;
    sub_297E4E0B0(0, &v14, 4u, 1u, "Invalid parameters passed by upper layer");
LABEL_16:
    sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_RemoteDev_CheckPresence");
    sub_297E4D930(0, &v14, 4u, 22, "phLibNfc_RemoteDev_CheckPresence");
LABEL_17:
    sub_297E5AE60(v14, 25);
    sub_297E96818(v14, v9);
    return v9;
  }

  *(v13 + 1489) = 0;
  v10 = sub_297E4F450(v14, 25, 0, a2, 0);
  if (v10 == 147)
  {
    if (*(v13 + 1504))
    {
      v9 = 147;
    }

    else
    {
      sub_297E4E0B0(0, &v14, 4u, 2u, "State machine status is NFCSTATUS_REJECTED");
      v9 = 148;
    }

    goto LABEL_16;
  }

  v9 = v10;
  if (v10 == 13)
  {
    v11 = v13;
    *(v13 + 6472) = a3;
    *(v11 + 6480) = a4;
    sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_RemoteDev_CheckPresence");
    return v9;
  }

LABEL_7:
  sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_RemoteDev_CheckPresence");
  if (v9 != 13)
  {
    sub_297E4D930(0, &v14, 4u, 22, "phLibNfc_RemoteDev_CheckPresence");
    if (v9)
    {
      goto LABEL_17;
    }
  }

  return v9;
}

uint64_t phLibNfc_RemoteDev_FormatNdef(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = a1;
  sub_297E4D930(0, &v15, 4u, 26, "phLibNfc_RemoteDev_FormatNdef");
  sub_297E4E1B4(0, &v15, 4u, 5u, "phLibNfc_RemoteDev_FormatNdef");
  v9 = sub_297E4F050(v15, &v14);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v14 == 0;
  }

  if (v10)
  {
    goto LABEL_6;
  }

  v9 = 1;
  if (!a2 || !a3 || !a4 || !a5)
  {
    goto LABEL_23;
  }

  v11 = sub_297E4F450(v15, 29, 0, a2, a3);
  v9 = v11;
  if (v11 == 147)
  {
    if (*(v14 + 1504))
    {
      v9 = 147;
    }

    else
    {
      sub_297E4E0B0(0, &v15, 4u, 2u, "State machine status is NFCSTATUS_REJECTED");
      v9 = 148;
    }

    goto LABEL_23;
  }

  if (v11 != 13)
  {
    if ((v11 & 0xFB) != 0x91 && v11 && v11 != 49 && v11 != 111)
    {
      sub_297E50DB0(0, &v15, 4u, 2u, "Internal LibNfc status = ");
      v9 = 255;
LABEL_23:
      sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_RemoteDev_FormatNdef");
LABEL_24:
      sub_297E4D930(0, &v15, 4u, 26, "phLibNfc_RemoteDev_FormatNdef");
      sub_297E5AE60(v15, 29);
      sub_297E96818(v15, v9);
      return v9;
    }

LABEL_6:
    sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_RemoteDev_FormatNdef");
    if (v9 == 13)
    {
      return v9;
    }

    goto LABEL_24;
  }

  v12 = v14;
  *(v14 + 6824) = a4;
  *(v12 + 6832) = a5;
  *(v12 + 2934) = 1;
  sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_RemoteDev_FormatNdef");
  return v9;
}

uint64_t phLibNfc_Ndef_CheckNdef(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v15 = a3;
  v14 = 0;
  sub_297E4D930(0, &v16, 4u, 23, "phLibNfc_Ndef_CheckNdef");
  sub_297E4E1B4(0, &v16, 4u, 5u, "phLibNfc_Ndef_CheckNdef");
  v8 = sub_297E4F050(v16, &v14);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v14 == 0;
  }

  if (v9)
  {
    goto LABEL_6;
  }

  v8 = 1;
  if (!a2 || !a4)
  {
    goto LABEL_22;
  }

  v10 = sub_297E4F450(v16, 26, 0, a2, &v15);
  v8 = v10;
  if (v10 > 0x6Eu)
  {
    v11 = v10 - 111;
    if (v11 > 0x26)
    {
      goto LABEL_19;
    }

    if (((1 << (v10 - 111)) & 0x4500000001) == 0)
    {
      if (v11 == 36)
      {
        if (*(v14 + 1504))
        {
          v8 = 147;
        }

        else
        {
          sub_297E4E0B0(0, &v16, 4u, 2u, "State machine status is NFCSTATUS_REJECTED");
          v8 = 148;
        }

        goto LABEL_22;
      }

LABEL_19:
      sub_297E50DB0(0, &v16, 4u, 2u, "Internal LibNfc status = ");
      v8 = 255;
LABEL_22:
      sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_Ndef_CheckNdef");
LABEL_23:
      sub_297E4D930(0, &v16, 4u, 23, "phLibNfc_Ndef_CheckNdef");
      sub_297E5AE60(v16, 26);
      sub_297E96818(v16, v8);
      return v8;
    }

LABEL_6:
    sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_Ndef_CheckNdef");
    if (v8 == 13)
    {
      return v8;
    }

    goto LABEL_23;
  }

  if (!v10)
  {
    goto LABEL_6;
  }

  if (v10 != 13)
  {
    if (v10 != 49)
    {
      goto LABEL_19;
    }

    goto LABEL_6;
  }

  v12 = v14;
  *(v14 + 6312) = a4;
  *(v12 + 6320) = a5;
  *(v12 + 2934) = 1;
  sub_297E4DFAC(0, &v16, 4u, 5u, "phLibNfc_Ndef_CheckNdef");
  return v8;
}

uint64_t phLibNfc_Ndef_Read(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v17 = 0;
  v18 = a1;
  sub_297E4D930(0, &v18, 4u, 24, "phLibNfc_Ndef_Read");
  sub_297E4E1B4(0, &v18, 4u, 5u, "phLibNfc_Ndef_Read");
  v11 = sub_297E4F050(v18, &v17);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v17 == 0;
  }

  if (v12)
  {
    goto LABEL_6;
  }

  v11 = 1;
  if (!a3 || !a5 || !*a3 || !a2 || !*(a3 + 8))
  {
    goto LABEL_27;
  }

  *(v17 + 6856) = a4 == 1;
  v13 = sub_297E4F450(v18, 27, 0, a2, a3);
  v11 = v13;
  if (v13 > 48)
  {
    v14 = (v13 - 111);
    if (v14 <= 0x26)
    {
      if (((1 << (v13 - 111)) & 0x4500000001) != 0)
      {
        goto LABEL_6;
      }

      if (v14 == 36)
      {
        if (*(v17 + 1504))
        {
          v11 = 147;
        }

        else
        {
          sub_297E4E0B0(0, &v18, 4u, 2u, "State machine status is NFCSTATUS_REJECTED");
          v11 = 148;
        }

        goto LABEL_27;
      }
    }

    if (v13 != 49)
    {
LABEL_25:
      sub_297E50DB0(0, &v18, 4u, 2u, "Internal LibNfc status = ");
      v11 = 255;
LABEL_27:
      sub_297E4DFAC(0, &v18, 4u, 5u, "phLibNfc_Ndef_Read");
LABEL_28:
      sub_297E4D930(0, &v18, 4u, 24, "phLibNfc_Ndef_Read");
      sub_297E5AE60(v18, 27);
      sub_297E96818(v18, v11);
      return v11;
    }

LABEL_6:
    sub_297E4DFAC(0, &v18, 4u, 5u, "phLibNfc_Ndef_Read");
    if (v11 == 13)
    {
      return v11;
    }

    goto LABEL_28;
  }

  if (!v13)
  {
    goto LABEL_6;
  }

  if (v13 != 13)
  {
    if (v13 != 26)
    {
      goto LABEL_25;
    }

    goto LABEL_6;
  }

  v15 = v17;
  *(v17 + 6408) = a5;
  *(v15 + 6416) = a6;
  *(v15 + 2934) = 1;
  sub_297E4DFAC(0, &v18, 4u, 5u, "phLibNfc_Ndef_Read");
  return v11;
}

uint64_t phLibNfc_Ndef_Write(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v18 = 0;
  v19 = a1;
  sub_297E4D930(0, &v19, 4u, 25, "phLibNfc_Ndef_Write");
  sub_297E4E1B4(0, &v19, 4u, 5u, "phLibNfc_Ndef_Write");
  v11 = sub_297E4F050(v19, &v18);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v18 == 0;
  }

  if (v12)
  {
    goto LABEL_6;
  }

  v11 = 1;
  if (!a3 || !a5)
  {
    goto LABEL_30;
  }

  v13 = *a3;
  if (*(a3 + 8))
  {
    if (!a2 || !v13)
    {
      goto LABEL_30;
    }
  }

  else if (!a2 || v13)
  {
    goto LABEL_30;
  }

  *(v18 + 6868) = a4;
  v14 = sub_297E4F450(v19, 28, 0, a2, a3);
  v11 = v14;
  if (v14 > 48)
  {
    v15 = (v14 - 111);
    if (v15 <= 0x26)
    {
      if (((1 << (v14 - 111)) & 0x4500000001) != 0)
      {
        goto LABEL_6;
      }

      if (v15 == 36)
      {
        if (*(v18 + 1504))
        {
          v11 = 147;
        }

        else
        {
          sub_297E4E0B0(0, &v19, 4u, 2u, "State machine status is NFCSTATUS_REJECTED");
          v11 = 148;
        }

        goto LABEL_30;
      }
    }

    if (v14 != 49)
    {
LABEL_28:
      sub_297E50DB0(0, &v19, 4u, 2u, "Internal LibNfc status = ");
      v11 = 255;
LABEL_30:
      sub_297E4DFAC(0, &v19, 4u, 5u, "phLibNfc_Ndef_Write");
LABEL_31:
      sub_297E4D930(0, &v19, 4u, 25, "phLibNfc_Ndef_Write");
      sub_297E5AE60(v19, 28);
      sub_297E96818(v19, v11);
      return v11;
    }

LABEL_6:
    sub_297E4DFAC(0, &v19, 4u, 5u, "phLibNfc_Ndef_Write");
    if (v11 == 13)
    {
      return v11;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_6;
  }

  if (v14 != 13)
  {
    if (v14 != 31)
    {
      goto LABEL_28;
    }

    goto LABEL_6;
  }

  v16 = v18;
  *(v18 + 6424) = a5;
  *(v16 + 6432) = a6;
  *(v16 + 2934) = 1;
  sub_297E4DFAC(0, &v19, 4u, 5u, "phLibNfc_Ndef_Write");
  return v11;
}

uint64_t phLibNfc_ConvertToReadOnlyNdef(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = a1;
  sub_297E4D930(0, &v15, 4u, 27, "phLibNfc_ConvertToReadOnlyNdef");
  sub_297E4E1B4(0, &v15, 4u, 5u, "phLibNfc_ConvertToReadOnlyNdef");
  v9 = sub_297E4F050(v15, &v14);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v14 == 0;
  }

  if (!v10)
  {
    if (!a2 || !a4)
    {
      v9 = 1;
      sub_297E4E0B0(0, &v15, 4u, 1u, "Invalid input parameters");
      goto LABEL_16;
    }

    v9 = sub_297E4F450(v15, 30, 0, a2, a3);
    v11 = (v9 - 111);
    if (v11 <= 0x29)
    {
      if (((1 << (v9 - 111)) & 0x24500000001) != 0)
      {
        goto LABEL_6;
      }

      if (v11 == 36)
      {
        if (*(v14 + 1504))
        {
          v9 = 147;
        }

        else
        {
          sub_297E4E0B0(0, &v15, 4u, 2u, "State machine status is NFCSTATUS_REJECTED");
          v9 = 148;
        }

        goto LABEL_16;
      }
    }

    if (v9 > 0x3A)
    {
LABEL_22:
      sub_297E50DB0(0, &v15, 4u, 2u, "Internal LibNfc status = ");
      v9 = 255;
      goto LABEL_16;
    }

    if (((1 << v9) & 0x40A000000000001) == 0)
    {
      if (v9 == 13)
      {
        v13 = v14;
        *(v14 + 6440) = a4;
        *(v13 + 6448) = a5;
        *(v13 + 2934) = 1;
        goto LABEL_17;
      }

      goto LABEL_22;
    }
  }

LABEL_6:
  if (v9 != 13)
  {
LABEL_16:
    sub_297E4D930(0, &v15, 4u, 27, "phLibNfc_ConvertToReadOnlyNdef");
    sub_297E5AE60(v15, 30);
    sub_297E96818(v15, v9);
    goto LABEL_17;
  }

  v9 = 13;
LABEL_17:
  sub_297E4DFAC(0, &v15, 4u, 5u, "phLibNfc_ConvertToReadOnlyNdef");
  return v9;
}

uint64_t phLibNfc_RemoteDev_Receive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = a1;
  sub_297E4D930(0, &v12, 4u, 30, "phLibNfc_RemoteDev_Receive");
  sub_297E4E1B4(0, &v12, 4u, 5u, "phLibNfc_RemoteDev_Receive");
  v7 = sub_297E4F050(v12, &v11);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v11 == 0;
  }

  if (v8)
  {
LABEL_6:
    sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_RemoteDev_Receive");
    if (v7 == 13)
    {
      return v7;
    }

    goto LABEL_15;
  }

  v7 = 1;
  if (!a2 || !a3)
  {
LABEL_14:
    sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_RemoteDev_Receive");
LABEL_15:
    sub_297E4D930(0, &v12, 4u, 30, "phLibNfc_RemoteDev_Receive");
    sub_297E5AE60(v12, 32);
    sub_297E96818(v12, v7);
    return v7;
  }

  v7 = sub_297E4F450(v12, 32, 0, a2, 0);
  if (v7 == 147)
  {
    sub_297E4E0B0(0, &v12, 4u, 2u, "State machine status is NFCSTATUS_REJECTED");
    v7 = 56;
    goto LABEL_14;
  }

  if (v7 != 13)
  {
    goto LABEL_6;
  }

  v9 = v11;
  *(v11 + 6744) = a3;
  *(v9 + 6752) = a4;
  sub_297E4DFAC(0, &v12, 4u, 5u, "phLibNfc_RemoteDev_Receive");
  return v7;
}

uint64_t phLibNfc_RemoteDev_Send(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = 0;
  v14 = a1;
  sub_297E4D930(0, &v14, 4u, 31, "phLibNfc_RemoteDev_Send");
  sub_297E4E1B4(0, &v14, 4u, 5u, "phLibNfc_RemoteDev_Send");
  v9 = sub_297E4F050(v14, &v13);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v13 == 0;
  }

  if (v10)
  {
LABEL_6:
    sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_RemoteDev_Send");
    if (v9 == 13)
    {
      return v9;
    }

    goto LABEL_18;
  }

  v9 = 1;
  if (!a3 || !a2 || !a4 || !*a3 || !*(a3 + 8))
  {
LABEL_17:
    sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_RemoteDev_Send");
LABEL_18:
    sub_297E4D930(0, &v14, 4u, 31, "phLibNfc_RemoteDev_Send");
    sub_297E5AE60(v14, 33);
    sub_297E96818(v14, v9);
    return v9;
  }

  v9 = sub_297E4F450(v14, 33, 0, a2, a3);
  if (v9 == 147)
  {
    sub_297E4E0B0(0, &v14, 4u, 2u, "State machine status is NFCSTATUS_REJECTED");
    v9 = 56;
    goto LABEL_17;
  }

  if (v9 != 13)
  {
    goto LABEL_6;
  }

  v11 = v13;
  *(v13 + 6728) = a4;
  *(v11 + 6736) = a5;
  sub_297E4DFAC(0, &v14, 4u, 5u, "phLibNfc_RemoteDev_Send");
  return v9;
}

uint64_t phLibNfc_SE_GetSecureElementList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v18 = a1;
  sub_297E4D930(0, &v18, 4u, 6, "phLibNfc_SE_GetSecureElementList");
  sub_297E4E1B4(0, &v18, 4u, 5u, "phLibNfc_SE_GetSecureElementList");
  v5 = sub_297E4F050(v18, &v17);
  v6 = v17;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v17 == 0;
  }

  if (v7)
  {
    goto LABEL_11;
  }

  v5 = 1;
  if (!a2 || !a3)
  {
    goto LABEL_11;
  }

  if (*(v17 + 6079) == 1 || *(v17 + 6082) == 1 || *(v17 + 6083) == 1)
  {
    v5 = 111;
    goto LABEL_11;
  }

  if (!*(v17 + 6078))
  {
    v9 = sub_297E56FC8(v18);
    v6 = v17;
    if (v9 <= 2 && !*(v17 + 6104))
    {
LABEL_23:
      v5 = 147;
      goto LABEL_11;
    }
  }

  v10 = v6 + 4096;
  if (*(v10 + 1982) != 1)
  {
    if (*(v10 + 1985) != 1)
    {
      v5 = sub_297E4F450(v18, 8, 0, a2, a3);
      goto LABEL_11;
    }

    goto LABEL_23;
  }

  v5 = sub_297EE0FE8(v18, 8, 0, a2, a3);
  v11 = 0;
  v12 = 1;
  while (1)
  {
    v13 = v12;
    v14 = &unk_2A18BDDC0 + 112 * v11;
    if (*v14 == v18)
    {
      break;
    }

    v12 = 0;
    v11 = 1;
    if ((v13 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v15 = *(v14 + 2);
  if (v15 <= 1)
  {
    v16 = *(&unk_2A18BDDC0 + 14 * v15 + 10);
    if (v16)
    {
      sub_297E5AE60(v18, 8);
      *(v16 + 152) = v5;
    }
  }

LABEL_11:
  sub_297E4DFAC(0, &v18, 4u, 5u, "phLibNfc_SE_GetSecureElementList");
  sub_297E4D930(0, &v18, 4u, 6, "phLibNfc_SE_GetSecureElementList");
  if (v5)
  {
    sub_297E5AE60(v18, 8);
    sub_297E96818(v18, v5);
  }

  return v5;
}

uint64_t phLibNfc_SE_SetMode(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v25 = 0;
  v26 = a1;
  v24 = 135;
  v9 = 1;
  sub_297E4D930(0, &v26, 4u, 134, "phLibNfc_SE_SetMode");
  sub_297E4E1B4(0, &v26, 4u, 5u, "phLibNfc_SE_SetMode");
  v10 = 0;
  while (1)
  {
    v11 = &unk_2A18BDDC0 + 112 * v10;
    if (*v11 == v26)
    {
      break;
    }

    v12 = v9;
    v9 = 0;
    v10 = 1;
    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v13 = *(v11 + 2);
  if (v13 > 1)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v14 = *(&unk_2A18BDDC0 + 14 * v13 + 10);
  if (v14)
  {
    v15 = v14 + 120;
  }

  else
  {
    v15 = 0;
  }

LABEL_10:
  v16 = sub_297E4F050(v26, &v25);
  if (v16 || (v17 = v25) == 0)
  {
    if (v15)
    {
      *(v15 + 36) = 134;
      sub_297E96818(v26, v16);
    }

    goto LABEL_20;
  }

  if (!*(v25 + 6344) && !*(v25 + 6536) && !*(v25 + 6360))
  {
    if (a3 > 4 || !a4)
    {
      if (!v15)
      {
        v16 = 1;
        goto LABEL_23;
      }

      *(v15 + 36) = 134;
      v18 = v26;
      v16 = 1;
      v19 = 1;
      goto LABEL_17;
    }

    v21 = 0;
    while (1)
    {
      v22 = v25 + v21;
      if (*(v25 + v21 + 408) == a2)
      {
        break;
      }

      v21 += 16;
      if (v21 == 80)
      {
        v16 = 1;
        goto LABEL_55;
      }
    }

    *(v25 + 560) = v22 + 408;
    if (*(v22 + 416) == 1)
    {
      if (a3 == 2)
      {
        *(v17 + 1) = 0;
        *(v17 + 555) = 0;
        goto LABEL_51;
      }

      v23 = *(v17 + 2) & 1;
    }

    else
    {
      sub_297E4E0B0(0, &v26, 4u, 4u, "\nMode set requested for UICC, no change in power state\n");
      v17 = v25;
      v23 = *v25;
    }

    *(v17 + 1) = v23;
    *(v17 + 555) = 0;
    if (a3 == 3)
    {
      if ((*(v17 + 2985) == 1 || *(v17 + 2986) == 1 || *(v17 + 2992) == 1) && *(*(v17 + 560) + 8) == 1)
      {
        a3 = 3;
      }

      else
      {
        a3 = 1;
      }
    }

LABEL_51:
    *(v17 + 572) = a3;
    sub_297EECFCC(v17, *(*(v17 + 560) + 8), a3, &v24);
    v16 = sub_297E4F450(v26, v24, 0, 0, 0);
    v17 = v25;
    if (v16)
    {
      if (v16 == 13)
      {
        *(v25 + 6680) = a4;
        *(v17 + 6688) = a5;
        **(v17 + 560) = a2;
        v17 = v25;
        *(v25 + 576) = 127;
      }
    }

    else
    {
      *(*(v25 + 560) + 12) = *(v25 + 572);
    }

LABEL_55:
    if (!*(v17 + 560))
    {
      sub_297E4E0B0(0, &v26, 4u, 1u, "Invalid input Se Handle");
    }

LABEL_20:
    sub_297E4DFAC(0, &v26, 4u, 5u, "phLibNfc_SE_SetMode");
    if (v16 == 13)
    {
      return v16;
    }

    goto LABEL_24;
  }

  if (!v15)
  {
    v16 = 111;
    goto LABEL_23;
  }

  *(v15 + 36) = 134;
  v18 = v26;
  v16 = 111;
  v19 = 111;
LABEL_17:
  sub_297E96818(v18, v19);
LABEL_23:
  sub_297E4DFAC(0, &v26, 4u, 5u, "phLibNfc_SE_SetMode");
LABEL_24:
  sub_297E4D930(0, &v26, 4u, 134, "phLibNfc_SE_SetMode");
  if (v24 == 135)
  {
    if (v15)
    {
      *(v15 + 36) = 134;
    }
  }

  else
  {
    sub_297E5AE60(v26, v24);
  }

  sub_297E96818(v26, v16);
  return v16;
}

uint64_t phLibNfc_eSE_Transceive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = 0;
  v29 = a1;
  v27 = 0;
  sub_297E4D930(0, &v29, 4u, 124, "phLibNfc_eSE_Transceive");
  sub_297E4E1B4(0, &v29, 4u, 5u, "phLibNfc_eSE_Transceive");
  sub_297E67EB0(v29, &v27);
  v11 = sub_297E4F050(v29, &v28);
  v12 = v11;
  v13 = v28;
  if (!v28)
  {
    LODWORD(v14) = 135;
    goto LABEL_18;
  }

  LODWORD(v14) = 135;
  if (v11 == 49 || v11 == 145)
  {
    goto LABEL_25;
  }

  v15 = 1;
  v16 = "phLibNfc_eSE_Transceive: Invalid input parameters";
  if (!a3 || !a2 || !a4)
  {
    goto LABEL_24;
  }

  if (!*a3 && !*(a3 + 8) && !*(a3 + 16) && !*(a3 + 24))
  {
    v16 = "phLibNfc_eSE_Transceive: Send or Receive data invalid";
    goto LABEL_24;
  }

  if (*(v28 + 555) != 1 && *(v28 + 6079) != 1 && *(v28 + 6083) != 1 && *(v28 + 6082) != 1 && *(v28 + 6080) != 1)
  {
    v17 = *(v28 + 6078);
    if (v17 == 1)
    {
      if (*(v28 + 440) != a2)
      {
        v16 = "phLibNfc_eSE_Transceive: Invalid SE Handle";
LABEL_24:
        sub_297E4E0B0(0, &v29, 4u, 1u, v16);
        v12 = v15;
        goto LABEL_25;
      }

      v14 = 187;
      if (!v11)
      {
LABEL_45:
        v22 = sub_297E4F450(v29, v14, 0, a3, 0);
        v12 = v22;
        if ((v22 - 111) <= 0x24 && ((1 << (v22 - 111)) & 0x1500000001) != 0)
        {
          goto LABEL_25;
        }

        if (v22 != 13)
        {
          v15 = 255;
          v16 = "phLibNfc_eSE_Transceive:Hci Transceive sequence could not start!";
          goto LABEL_24;
        }

        if (v17 == 1 && (v24 = v27) != 0)
        {
          v27[81] = a4;
          v24[82] = a6;
          if (a5)
          {
            v24[83] = a5;
            v25 = v24 + 84;
LABEL_60:
            *v25 = a6;
          }
        }

        else
        {
          v26 = v28;
          *(v28 + 6344) = a4;
          v26[794] = a6;
          if (a5)
          {
            v26[799] = a5;
            v25 = v26 + 800;
            goto LABEL_60;
          }
        }

        sub_297E4DFAC(0, &v29, 4u, 5u, "phLibNfc_eSE_Transceive");
        return 13;
      }
    }

    else
    {
      if (*(v28 + 6081) == 1)
      {
        v12 = 147;
        goto LABEL_25;
      }

      *(v28 + 560) = 0;
      v20 = v13 + 408;
      v21 = 4;
      v16 = "phLibNfc_eSE_Transceive: Invalid SE Handle";
      while (*v20 != a2)
      {
        v20 += 16;
        if (!--v21)
        {
          goto LABEL_24;
        }
      }

      *(v13 + 560) = v20;
      if (*(v20 + 8) == 1)
      {
        if (*(a3 + 40) == 1 && !*(v20 + 12))
        {
          v14 = 143;
          if (!v11)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v14 = 142;
          if (!v11)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        v14 = 135;
        if (!v11)
        {
          goto LABEL_45;
        }
      }
    }

LABEL_18:
    sub_297E4DFAC(0, &v29, 4u, 5u, "phLibNfc_eSE_Transceive");
    if (v12 == 13)
    {
      return v12;
    }

    goto LABEL_26;
  }

  v12 = 111;
LABEL_25:
  sub_297E4DFAC(0, &v29, 4u, 5u, "phLibNfc_eSE_Transceive");
LABEL_26:
  sub_297E4D930(0, &v29, 4u, 124, "phLibNfc_eSE_Transceive");
  if (v14 == 135)
  {
    v18 = 142;
  }

  else
  {
    v18 = v14;
  }

  sub_297E5AE60(v29, v18);
  sub_297E96818(v29, v12);
  return v12;
}

uint64_t phLibNfc_SE_RawTranseive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = 0;
  v22 = a1;
  sub_297E4D930(0, &v22, 4u, 125, "phLibNfc_SE_RawTranseive");
  sub_297E4E1B4(0, &v22, 4u, 5u, "phLibNfc_SE_RawTranseive");
  v11 = sub_297E4F050(v22, &v21);
  v12 = v11;
  if (!v21)
  {
    goto LABEL_28;
  }

  if (v11 == 49 || v11 == 145)
  {
    goto LABEL_32;
  }

  v12 = 1;
  v13 = "phLibNfc_SE_RawTranseive: Invalid input parameters";
  if (!a2 || !a3 || !a4)
  {
    goto LABEL_31;
  }

  if (*(a3 + 16) && (!*(a3 + 32) || *(a3 + 28) < 2u))
  {
    v13 = "phLibNfc_SE_RawTranseive: Receive data invalid";
LABEL_31:
    sub_297E4E0B0(0, &v22, 4u, 1u, v13);
    goto LABEL_32;
  }

  if (*(v21 + 555) != 1)
  {
    v14 = v21 + 408;
    v15 = 4;
    do
    {
      if (*v14 == a2)
      {
        *(v21 + 560) = v14;
        goto LABEL_19;
      }

      v14 += 16;
      --v15;
    }

    while (v15);
    v14 = *(v21 + 560);
    if (!v14)
    {
      v12 = 255;
      v13 = "phLibNfc_SE_RawTranseive: Invalid SE Handle";
      goto LABEL_31;
    }

LABEL_19:
    if (*(v14 + 8) != 1)
    {
      v12 = 51;
      v13 = "phLibNfc_SE_RawTranseive:Wrong handle, eSE is supported in raw mode";
      goto LABEL_31;
    }

    v16 = sub_297E4F450(v22, 144, 0, a3, 0);
    v12 = v16;
    if (((v16 - 111) > 0x24 || ((1 << (v16 - 111)) & 0x1500000001) == 0) && v16 != 1)
    {
      if (v16 == 13)
      {
        v20 = v21;
        *(v21 + 6360) = a4;
        v20[796] = a6;
        v20[799] = a5;
        v20[800] = a6;
        sub_297E4DFAC(0, &v22, 4u, 5u, "phLibNfc_SE_RawTranseive");
        return v12;
      }

      v12 = 255;
      v13 = "phLibNfc_SE_RawTranseive:Hci Transceive sequence could not start!";
      goto LABEL_31;
    }

LABEL_28:
    sub_297E4DFAC(0, &v22, 4u, 5u, "phLibNfc_SE_RawTranseive");
    if (v12 == 13)
    {
      return v12;
    }

    goto LABEL_33;
  }

  v12 = 111;
LABEL_32:
  sub_297E4DFAC(0, &v22, 4u, 5u, "phLibNfc_SE_RawTranseive");
LABEL_33:
  sub_297E4D930(0, &v22, 4u, 125, "phLibNfc_SE_RawTranseive");
  sub_297E5AE60(v22, 144);
  sub_297E96818(v22, v12);
  return v12;
}

uint64_t phLibNfc_SE_NtfRegister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = a1;
  sub_297E4D930(0, &v11, 4u, 8, "phLibNfc_SE_NtfRegister");
  sub_297E4E1B4(0, &v11, 4u, 5u, "phLibNfc_SE_NtfRegister");
  v5 = sub_297E4F050(v11, &v10);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v10 == 0;
  }

  if (!v6)
  {
    if (a2)
    {
      v7 = sub_297E4F450(v11, 13, 0, 0, 0);
      v5 = v7;
      if (!v7)
      {
        v8 = v10;
        *(v10 + 6696) = a2;
        *(v8 + 6704) = a3;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  sub_297E4DFAC(0, &v11, 4u, 5u, "phLibNfc_SE_NtfRegister");
  sub_297E4D930(0, &v11, 4u, 8, "phLibNfc_SE_NtfRegister");
  if (v5)
  {
    sub_297E5AE60(v11, 13);
    sub_297E96818(v11, v5);
  }

  return v5;
}

uint64_t phLibNfc_SE_NtfUnregister(uint64_t a1)
{
  v5 = 0;
  v6 = a1;
  sub_297E4D930(0, &v6, 4u, 9, "phLibNfc_SE_NtfUnregister");
  sub_297E4E1B4(0, &v6, 4u, 5u, "phLibNfc_SE_NtfUnregister");
  v1 = sub_297E4F050(v6, &v5);
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v5 == 0;
  }

  if (!v2)
  {
    v3 = sub_297E4F450(v6, 14, 0, 0, 0);
    v1 = v3;
    if (!v3)
    {
      *(v5 + 6696) = 0u;
    }
  }

  sub_297E4DFAC(0, &v6, 4u, 5u, "phLibNfc_SE_NtfUnregister");
  sub_297E4D930(0, &v6, 4u, 9, "phLibNfc_SE_NtfUnregister");
  if (v1)
  {
    sub_297E5AE60(v6, 14);
    sub_297E96818(v6, v1);
  }

  return v1;
}