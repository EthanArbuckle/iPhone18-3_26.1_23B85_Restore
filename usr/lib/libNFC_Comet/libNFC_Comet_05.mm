uint64_t sub_297E91834(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrintResetRespDescription");
  sub_297E4E0B0(2, a1, 3u, 4u, "Reset Response:");
  sub_297E4E0B0(2, a1, 3u, 4u, "====================================================");
  if (*a2)
  {
    v4 = "Reset status: FAILED";
  }

  else
  {
    v4 = "Reset status: SUCCESS";
  }

  sub_297E4E0B0(2, a1, 3u, 4u, v4);
  v5 = a2[1];
  sub_297E50DB0(2, a1, 3u, 4u, "Nci Version supported by NFCC:");
  v6 = "Configuration status: Invalid";
  if (a2[2] == 1)
  {
    v6 = "Configuration status: NCI RF Configuration has been reset";
  }

  if (a2[2])
  {
    v7 = v6;
  }

  else
  {
    v7 = "Configuration status: NCI RF Configuration has been kept";
  }

  sub_297E4E0B0(2, a1, 3u, 4u, v7);
  sub_297E4E0B0(2, a1, 3u, 4u, "====================================================");

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrintResetRespDescription");
}

uint64_t sub_297E91988(uint64_t a1, uint64_t a2, int a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrintInitRespDescription");
  sub_297E4E0B0(2, a1, 3u, 4u, "Init Response:");
  sub_297E4E0B0(2, a1, 3u, 4u, "====================================================");
  if (a3 != 255)
  {
    sub_297E4E0B0(2, a1, 3u, 4u, "Init status: SUCCESS");
    if (*a2)
    {
      v6 = "Discovery Frequency configuration: Supported";
    }

    else
    {
      v6 = "Discovery Frequency configuration: Not supported";
    }

    sub_297E4E0B0(2, a1, 3u, 4u, v6);
    v7 = "Discovery Configuration Mode: Invalid";
    if ((*a2 & 6) == 2)
    {
      v7 = "Discovery Configuration Mode: NFCC can receive configurations from the DH and other NFCEEs";
    }

    if ((*a2 & 6) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = "Discovery Configuration Mode: DH is the only entity that configures the NFCC";
    }

    sub_297E4E0B0(2, a1, 3u, 4u, v8);
    if ((*(a2 + 1) & 2) != 0)
    {
      v9 = "Technology based Routing: Supported";
    }

    else
    {
      v9 = "Technology based Routing: Not supported";
    }

    sub_297E4E0B0(2, a1, 3u, 4u, v9);
    if ((*(a2 + 1) & 4) != 0)
    {
      v10 = "Protocol based routing: Supported";
    }

    else
    {
      v10 = "Protocol based routing: Not supported";
    }

    sub_297E4E0B0(2, a1, 3u, 4u, v10);
    if ((*(a2 + 1) & 8) != 0)
    {
      v11 = "AID based routing: Supported";
    }

    else
    {
      v11 = "AID based routing: Not supported";
    }

    sub_297E4E0B0(2, a1, 3u, 4u, v11);
    if (*(a2 + 2))
    {
      v12 = "Battery Off state: Supported";
    }

    else
    {
      v12 = "Battery Off state: Not supported";
    }

    sub_297E4E0B0(2, a1, 3u, 4u, v12);
    if ((*(a2 + 2) & 2) != 0)
    {
      v13 = "Switched Off state: Supported";
    }

    else
    {
      v13 = "Switched Off state: Not supported";
    }

    sub_297E4E0B0(2, a1, 3u, 4u, v13);
    v14 = *(a2 + 4);
    sub_297E50DB0(2, a1, 3u, 4u, "Number of Rf intf's supported:");
    if (!*(a2 + 4))
    {
LABEL_46:
      v19 = *(a2 + 13);
      sub_297E50DB0(2, a1, 3u, 4u, "Max number of logical conn's supported:");
      if (*(a2 + 14))
      {
        sub_297E4E0B0(2, a1, 3u, 4u, "Listen mode routing: Supported");
        v20 = *(a2 + 14);
        sub_297E50DB0(2, a1, 3u, 4u, "Max Routing Table size:");
      }

      else
      {
        sub_297E4E0B0(2, a1, 3u, 4u, "Listen mode routing: Not supported");
      }

      v21 = *(a2 + 16);
      sub_297E50DB0(2, a1, 3u, 4u, "Max Control packet payload size:");
      if (*(a2 + 20))
      {
        sub_297E50DB0(2, a1, 3u, 4u, "Manufacturer ID:");
        v22 = *(a2 + 21);
        sub_297E50DB0(2, a1, 3u, 4u, "Manufacturer specific info - Byte0:");
        v23 = *(a2 + 22);
        sub_297E50DB0(2, a1, 3u, 4u, "Manufacturer specific info - Byte1:");
        v24 = *(a2 + 23);
        sub_297E50DB0(2, a1, 3u, 4u, "Manufacturer specific info - Byte2:");
        v25 = *(a2 + 24);
        sub_297E50DB0(2, a1, 3u, 4u, "Manufacturer specific info - Byte3:");
      }

      else
      {
        sub_297E4E0B0(2, a1, 3u, 4u, "Manufacturer ID: Not available");
      }

      v26 = *(a2 + 25);
      sub_297E50DB0(2, a1, 3u, 4u, "Build Number:");
      goto LABEL_53;
    }

    v15 = 0;
    v16 = a2 + 5;
    while (1)
    {
      v17 = *(v16 + v15);
      if (v17 <= 2)
      {
        if (*(v16 + v15))
        {
          if (v17 == 1)
          {
            v18 = "Rf interfaces supported: Frame Rf interface";
            goto LABEL_45;
          }

          if (v17 != 2)
          {
            goto LABEL_41;
          }

          v18 = "Rf interfaces supported: ISO-DEP Rf interface";
        }

        else
        {
          v18 = "Rf interfaces supported: Nfcee direct Rf interface";
        }
      }

      else if (*(v16 + v15) > 0x80u)
      {
        if (v17 == 129)
        {
          v18 = "Rf interfaces supported: HID Rf interface";
          goto LABEL_45;
        }

        if (v17 != 131)
        {
          goto LABEL_41;
        }

        v18 = "Rf interfaces supported: NFCEE DEP RF interface";
      }

      else
      {
        if (v17 == 3)
        {
          v18 = "Rf interfaces supported: NFC-DEP Rf interface";
          goto LABEL_45;
        }

        if (v17 != 128)
        {
LABEL_41:
          v18 = "Rf interfaces supported: Invalid";
          goto LABEL_45;
        }

        v18 = "Rf interfaces supported: TAG-CMD Rf interface";
      }

LABEL_45:
      sub_297E4E0B0(2, a1, 3u, 4u, v18);
      if (++v15 >= *(a2 + 4))
      {
        goto LABEL_46;
      }
    }
  }

  sub_297E4E0B0(2, a1, 3u, 4u, "Init status: FAILED");
LABEL_53:
  sub_297E4E0B0(2, a1, 3u, 4u, "====================================================");

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrintInitRespDescription");
}

uint64_t sub_297E91EA8(uint64_t a1, unsigned __int8 *a2, int a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrintGetRtngTableRespDescription");
  sub_297E4E0B0(2, a1, 3u, 4u, "Get Lstn mode Rtng Response:");
  sub_297E4E0B0(2, a1, 3u, 4u, "====================================================");
  v6 = *a2;
  sub_297E50DB0(2, a1, 3u, 4u, "Number of Rtng configs:");
  if (!a3)
  {
    sub_297E4E0B0(2, a1, 3u, 4u, "Get Lstn Rtng Table: SUCCESS");
    if (!*a2)
    {
      v7 = "No routing entries";
      goto LABEL_3;
    }

    v8 = 0;
    v9 = (*(a2 + 1) + 8);
    while (1)
    {
      v10 = *(v9 - 2);
      if (v10 == 2)
      {
        sub_297E4E0B0(2, a1, 3u, 4u, "----------Aid based routing----------");
        v23 = *(v9 - 4);
        sub_297E50DB0(2, a1, 3u, 4u, "Route                    :");
        v24 = *v9;
        sub_297E50DB0(2, a1, 3u, 4u, "Power State - Switch ON  :");
        v25 = *v9;
        sub_297E50DB0(2, a1, 3u, 4u, "Power State - Switch OFF :");
        v26 = (*v9 >> 2) & 1;
        v16 = a1;
        v17 = "Power State - Battery OFF:";
        goto LABEL_12;
      }

      if (v10 == 1)
      {
        break;
      }

      if (!v10)
      {
        sub_297E4E0B0(2, a1, 3u, 4u, "----------Technology based routing----------");
        v11 = *(v9 - 4);
        sub_297E50DB0(2, a1, 3u, 4u, "Route                    :");
        v12 = *v9;
        sub_297E50DB0(2, a1, 3u, 4u, "Power State - Switch ON  :");
        v13 = *v9;
        sub_297E50DB0(2, a1, 3u, 4u, "Power State - Switch OFF :");
        v14 = *v9;
        sub_297E50DB0(2, a1, 3u, 4u, "Power State - Battery OFF:");
        v15 = *(v9 + 2);
        v16 = a1;
        v17 = "Technology               :";
LABEL_12:
        sub_297E50DB0(2, v16, 3u, 4u, v17);
      }

      ++v8;
      v9 += 32;
      if (v8 >= *a2)
      {
        goto LABEL_14;
      }
    }

    sub_297E4E0B0(2, a1, 3u, 4u, "----------Protocol based routing----------");
    v18 = *(v9 - 4);
    sub_297E50DB0(2, a1, 3u, 4u, "Route                    :");
    v19 = *v9;
    sub_297E50DB0(2, a1, 3u, 4u, "Power State - Switch ON  :");
    v20 = *v9;
    sub_297E50DB0(2, a1, 3u, 4u, "Power State - Switch OFF :");
    v21 = *v9;
    sub_297E50DB0(2, a1, 3u, 4u, "Power State - Battery OFF:");
    v22 = *(v9 + 2);
    v16 = a1;
    v17 = "Protocol                 :";
    goto LABEL_12;
  }

  v7 = "Get Lstn Rtng Table: FAILED";
LABEL_3:
  sub_297E4E0B0(2, a1, 3u, 4u, v7);
LABEL_14:
  sub_297E4E0B0(2, a1, 3u, 4u, "====================================================");

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrintGetRtngTableRespDescription");
}

uint64_t sub_297E92264(uint64_t a1, unsigned __int8 *a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrintNfceeDiscreqNtfDescription");
  sub_297E4E0B0(2, a1, 3u, 4u, "====================================================");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 3u, 4u, "RF_NFCEE_DISCOVERY_REQ_NTF Payload Contents:");
    v4 = *a2;
    sub_297E50DB0(2, a1, 3u, 4u, "Number of Information Entries");
    LODWORD(v5) = 0;
    v6 = 0;
    while (1)
    {
      if (v6 >= *a2)
      {
        goto LABEL_13;
      }

      v7 = v5 + 1;
      v8 = &a2[v7];
      if (a2[v7] == 1)
      {
        break;
      }

      if (!a2[v7])
      {
        v9 = "Request is to add following discovery";
        goto LABEL_8;
      }

      sub_297E50DB0(2, a1, 3u, 4u, "Invalid or Proprietary TLV Type! It is");
      v18 = v8[1];
      v17 = v8 + 1;
      sub_297E4E880(2, a1, 3u, 4u, "Length and Value is:", v17);
      LODWORD(v5) = *v17 + v7;
LABEL_12:
      ++v6;
      if (v5 == 0xFF)
      {
        goto LABEL_13;
      }
    }

    v9 = "Request is to remove following discovery";
LABEL_8:
    sub_297E4E0B0(2, a1, 3u, 4u, v9);
    v10 = v5 + 2;
    v11 = &a2[v10];
    if (*v11 == 3)
    {
      v12 = v11[1];
      sub_297E50DB0(2, a1, 3u, 4u, "NFCEE ID               ");
      v13 = v11[2];
      sub_297E50DB0(2, a1, 3u, 4u, "RF Technology and Mode ");
      v5 = v10 + 3;
      v14 = a2[v5];
      sub_297E50DB0(2, a1, 3u, 4u, "RF Protocol            ");
    }

    else
    {
      v16 = v11[1];
      v15 = v11 + 1;
      sub_297E4E880(2, a1, 3u, 4u, "Invalid length of value! length and value is:", v15);
      LODWORD(v5) = *v15 + v10;
    }

    goto LABEL_12;
  }

LABEL_13:
  sub_297E4E0B0(2, a1, 3u, 4u, "====================================================");

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrintNfceeDiscreqNtfDescription");
}

uint64_t sub_297E924CC(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrintRfInterfaceDescription");
  if (a2 <= 2)
  {
    if (!a2)
    {
      v4 = "RF Interface: NFCEE Direct RF Interface";
      v5 = a1;
      goto LABEL_18;
    }

    if (a2 != 1)
    {
      if (a2 == 2)
      {
        v4 = "RF Interface: ISO-DEP RF Interface";
        v5 = a1;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v4 = "RF Interface: Frame RF Interface";
    v5 = a1;
  }

  else if (a2 > 128)
  {
    if (a2 != 129)
    {
      if (a2 == 131)
      {
        v4 = "Rf interfaces: NFCEE DEP RF interface";
        v5 = a1;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v4 = "RF Interface: Hid RF Interface";
    v5 = a1;
  }

  else
  {
    if (a2 != 3)
    {
      if (a2 == 128)
      {
        v4 = "RF Interface: Tag-Cmd RF Interface";
        v5 = a1;
        goto LABEL_18;
      }

LABEL_14:
      v4 = "RF Interface: Unknown Type RF Interface";
      v5 = a1;
      goto LABEL_18;
    }

    v4 = "RF Interface: NFC-DEP RF Interface";
    v5 = a1;
  }

LABEL_18:
  sub_297E50DB0(2, v5, 3u, 4u, v4);

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrintRfInterfaceDescription");
}

uint64_t sub_297E92678(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrintRfRfProtocolDescription");
  if (a2 <= 4)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v4 = "RF Protocol:PROTOCOL_T2T";
        v5 = a1;
      }

      else
      {
        if (a2 == 3)
        {
          v4 = "RF Protocol:PROTOCOL_T3T";
        }

        else
        {
          v4 = "RF Protocol:PROTOCOL_ISO_DEP";
        }

        v5 = a1;
      }

      goto LABEL_27;
    }

    if (!a2)
    {
      v4 = "RF Protocol:Unknown";
      v5 = a1;
      goto LABEL_27;
    }

    if (a2 == 1)
    {
      v4 = "RF Protocol:PROTOCOL_T1T";
      v5 = a1;
      goto LABEL_27;
    }
  }

  else if (a2 > 128)
  {
    switch(a2)
    {
      case 129:
        v4 = "RF Protocol:PROTOCOL_NFC_HID";
        v5 = a1;
        goto LABEL_27;
      case 130:
        v4 = "RF Protocol:PROTOCOL_NFC_EPCGEN2";
        v5 = a1;
        goto LABEL_27;
      case 138:
        v4 = "RF Protocol:PROTOCOL_NFC_KOVIO";
        v5 = a1;
        goto LABEL_27;
    }
  }

  else
  {
    switch(a2)
    {
      case 5:
        v4 = "RF Protocol:PROTOCOL_NFC_DEP";
        v5 = a1;
        goto LABEL_27;
      case 6:
        v4 = "RF Protocol:PROTOCOL_NFC_15693";
        v5 = a1;
        goto LABEL_27;
      case 128:
        v4 = "RF Protocol:PROTOCOL_NFC_MIFCLASSIC";
        v5 = a1;
        goto LABEL_27;
    }
  }

  v4 = "phNciNfc_PrintRfRfProtocolDescription: RFU or proprietary";
  v5 = a1;
LABEL_27:
  sub_297E50DB0(2, v5, 3u, 4u, v4);

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrintRfRfProtocolDescription");
}

uint64_t sub_297E928CC(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrintRfTechModeDescription");
  if (a2 <= 11)
  {
    if (a2 > 4)
    {
      if (a2 > 9)
      {
        if (a2 == 10)
        {
          v4 = "RF Tech and Mode:NFC_A_SILENT_NTAG_PASSIVE_POLL_MODE";
        }

        else
        {
          v4 = "RF Tech and Mode:NFC_A_SILENT_TAG1_PASSIVE_POLL_MODE";
        }

        v5 = a1;
        goto LABEL_43;
      }

      if (a2 == 5)
      {
        v4 = "RF Tech and Mode:NFC_F_ACTIVE_POLL_MODE";
        v5 = a1;
        goto LABEL_43;
      }

      if (a2 == 6)
      {
        v4 = "RF Tech and Mode:NFC_ISO15693_PASSIVE_POLL_MODE";
        v5 = a1;
        goto LABEL_43;
      }
    }

    else if (a2 > 1)
    {
      if (a2 == 2)
      {
        v4 = "RF Tech and Mode:NFC_F_PASSIVE_POLL_MODE";
        v5 = a1;
        goto LABEL_43;
      }

      if (a2 == 3)
      {
        v4 = "RF Tech and Mode:NFC_A_ACTIVE_POLL_MODE";
        v5 = a1;
        goto LABEL_43;
      }
    }

    else
    {
      if (!a2)
      {
        v4 = "RF Tech and Mode:NFC_A_PASSIVE_POLL_MODE";
        v5 = a1;
        goto LABEL_43;
      }

      if (a2 == 1)
      {
        v4 = "RF Tech and Mode:NFC_B_PASSIVE_POLL_MODE";
        v5 = a1;
        goto LABEL_43;
      }
    }
  }

  else if (a2 <= 127)
  {
    if (a2 > 112)
    {
      if (a2 == 113)
      {
        v4 = "RF Tech and Mode:NFC_HID_PASSIVE_POLL_MODE";
        v5 = a1;
        goto LABEL_43;
      }

      if (a2 == 114)
      {
        v4 = "RF Tech and Mode:NFC_EPCGEN2_PASSIVE_POLL_MODE";
        v5 = a1;
        goto LABEL_43;
      }
    }

    else
    {
      if (a2 == 12)
      {
        v4 = "RF Tech and Mode:NFC_A_SILENT_TAG2_PASSIVE_POLL_MODE";
        v5 = a1;
        goto LABEL_43;
      }

      if (a2 == 112)
      {
        v4 = "RF Tech and Mode:NFC_KOVIO_PASSIVE_POLL_MODE";
        v5 = a1;
        goto LABEL_43;
      }
    }
  }

  else
  {
    if (a2 <= 129)
    {
      if (a2 == 128)
      {
        v4 = "RF Tech and Mode:NFC_A_PASSIVE_LISTEN_MODE";
      }

      else
      {
        v4 = "RF Tech and Mode:NFC_B_PASSIVE_LISTEN_MODE";
      }

      v5 = a1;
      goto LABEL_43;
    }

    switch(a2)
    {
      case 130:
        v4 = "RF Tech and Mode:NFC_F_ACTIVE_LISTEN_MODE";
        v5 = a1;
        goto LABEL_43;
      case 131:
        v4 = "RF Tech and Mode:NFC_A_ACTIVE_LISTEN_MODE";
        v5 = a1;
        goto LABEL_43;
      case 133:
        v4 = "RF Tech and Mode:NFC_F_ACTIVE_LISTEN_MODE";
        v5 = a1;
        goto LABEL_43;
    }
  }

  v4 = "phNciNfc_PrintRfTechModeDescription:RF Tech and Mode: RFU or Proprietary";
  v5 = a1;
LABEL_43:
  sub_297E50DB0(2, v5, 3u, 4u, v4);

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrintRfTechModeDescription");
}

uint64_t sub_297E92C30(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrintTechNfcASpcfcParamsDescription");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 3u, 4u, "NFC A POLL Techn Specific Params - START");
    v4 = *(a2 + 4);
    if ((v4 - 5) < 7 || v4 == 14 || v4 == 3)
    {
      if (!*(a2 + 26))
      {
        v7 = *(a2 + 101);
        sub_297E50DB0(2, a1, 3u, 4u, "SENS_RES Byte 1");
        v8 = *(a2 + 102);
        sub_297E50DB0(2, a1, 3u, 4u, "SENS_RES Byte 2");
        v9 = *(a2 + 46);
        sub_297E50DB0(2, a1, 3u, 4u, "NFCID1 Length");
        if (*(a2 + 46) >= 0xBu)
        {
          *(a2 + 46) = 10;
          sub_297E4E0B0(2, a1, 3u, 2u, "Uid Length is greater than 10(0x0A) byte so only 10 bytes will be printed");
          v10 = *(a2 + 46);
        }

        sub_297E4E880(2, a1, 3u, 4u, "UID", a2 + 36);
        v11 = *(a2 + 103);
        sub_297E50DB0(2, a1, 3u, 4u, "SEL Response Length");
        if (*(a2 + 103))
        {
          v12 = *(a2 + 96);
          sub_297E50DB0(2, a1, 3u, 4u, "SEL Response");
        }

        goto LABEL_17;
      }

      v14 = "No Techn specific params available";
    }

    else
    {
      v14 = "No Dbg Info added for this Remote Device Type";
    }

    sub_297E4E0B0(2, a1, 3u, 4u, v14);
LABEL_17:
    sub_297E4E0B0(2, a1, 3u, 4u, "phNciNfc_PrintTechNfcASpcfcParamsDescription:NFC A POLL Tech Specific Params - END");
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrintTechNfcASpcfcParamsDescription");
}

uint64_t sub_297E92E1C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrintTechNfcFSpcfcParamsDescription");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 3u, 4u, "phNciNfc_PrintTechNfcFSpcfcParamsDescription:NFC F POLL Tech Specific Params - Start");
    if (*(a2 + 4) == 18)
    {
      if (!*(a2 + 26))
      {
        v6 = *(a2 + 56);
        sub_297E50DB0(2, a1, 3u, 4u, "SensF Resp Length");
        sub_297E4E0B0(2, a1, 3u, 4u, "BitRate");
        v7 = *(a2 + 55);
        v8 = "UnSupported BitRate!!";
        if (v7 == 2)
        {
          v8 = "424 kbps";
        }

        if (v7 == 1)
        {
          v9 = "212 kbps";
        }

        else
        {
          v9 = v8;
        }

        sub_297E4E0B0(2, a1, 3u, 4u, v9);
        if (*(a2 + 56))
        {
          sub_297E4E0B0(2, a1, 3u, 4u, "SensF Response:");
          sub_297E4E880(2, a1, 3u, 4u, "IDm ", a2 + 57);
          sub_297E4E880(2, a1, 3u, 4u, "PMm ", a2 + 65);
        }

        goto LABEL_7;
      }

      v4 = "No Techn specific params available";
    }

    else
    {
      v4 = "No Dbg Info added for this Remote Device Type";
    }

    sub_297E4E0B0(2, a1, 3u, 4u, v4);
LABEL_7:
    sub_297E4E0B0(2, a1, 3u, 4u, "NFC F POLL Techn Specific Params - END");
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrintTechNfcFSpcfcParamsDescription");
}

uint64_t sub_297E92FE8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrintTechNfcBSpcfcParamsDescription");
  sub_297E4E0B0(2, a1, 3u, 4u, "NFC B POLL Techn Specific Params - END");
  v4 = *(a2 + 62);
  sub_297E50DB0(2, a1, 3u, 4u, "SensB Resp Length");
  if (*(a2 + 62))
  {
    sub_297E4E880(2, a1, 3u, 4u, "SensB Response:", a2 + 63);
  }

  sub_297E4E0B0(2, a1, 3u, 4u, "NFC B POLL Techn Specific Params - END");

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrintTechNfcBSpcfcParamsDescription");
}

uint64_t sub_297E930D0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrintTechNfcALstnSpcfcParams");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 3u, 4u, "NFC A LISTEN Techn Specific Params - START");
    sub_297E4E0B0(2, a1, 3u, 4u, "No Dbg Info for this Remote Device Type");
    sub_297E4E0B0(2, a1, 3u, 4u, "NFC A LISTEN Techn Specific Params - END");
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrintTechNfcALstnSpcfcParams");
}

uint64_t sub_297E93190(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrintTechNfcFLstnSpcfcParams");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 3u, 4u, "NFC F LISTEN Techn Specific Params - START");
    sub_297E4E0B0(2, a1, 3u, 4u, "No Dbg Info added for this Remote Device Type");
    sub_297E4E0B0(2, a1, 3u, 4u, "NFC F LISTEN Techn Specific Params - END");
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrintTechNfcFLstnSpcfcParams");
}

uint64_t sub_297E93250(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrintNfceeProtocolDescription");
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v4 = "NFCEE Interface/Protocol: NFCEE APDU";
        v5 = a1;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v4 = "NFCEE Interface/Protocol: NFCEE APDU";
    v5 = a1;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v4 = "NFCEE Interface/Protocol: NFCEE APDU";
        v5 = a1;
        goto LABEL_11;
      }

LABEL_8:
      v4 = "NFCEE Interface/Protocol: UNKNOWN";
      v5 = a1;
      goto LABEL_11;
    }

    v4 = "NFCEE Interface/Protocol: NFCEE APDU";
    v5 = a1;
  }

LABEL_11:
  sub_297E50DB0(2, v5, 3u, 4u, v4);

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrintNfceeProtocolDescription");
}

uint64_t sub_297E9337C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrintfNfceeDiscNtfDescription");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 3u, 4u, "**********************NFCEE Discovery Notification*************************");
    v4 = *(a2 + 1);
    sub_297E50DB0(2, a1, 3u, 4u, "Nfcee Discovery Id");
    v5 = *(a2 + 4);
    if (v5 > 2)
    {
      v6 = "Nfcee status INVALID";
    }

    else
    {
      v6 = off_29EE86840[v5];
    }

    sub_297E4E0B0(2, a1, 3u, 4u, v6);
    v7 = *(a2 + 8);
    sub_297E50DB0(2, a1, 3u, 4u, "Number of supported protocols are");
    if (*(a2 + 8))
    {
      sub_297E4E0B0(2, a1, 3u, 4u, "Supported protocols are\n");
      if (*(a2 + 8))
      {
        v8 = 0;
        do
        {
          sub_297E93250(a1, *(a2 + 9 + v8++));
        }

        while (v8 < *(a2 + 8));
      }
    }

    v9 = *(a2 + 14);
    sub_297E50DB0(2, a1, 3u, 4u, "Number of TLVs are");
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrintfNfceeDiscNtfDescription");
}

uint64_t sub_297E934F4(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrintRfDevActNtfDescription");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 3u, 4u, "*************************Activation Notification*************************");
    v4 = *(a2 + 8);
    sub_297E50DB0(2, a1, 3u, 4u, "Discovery Id");
    sub_297E924CC(a1, *(a2 + 12));
    sub_297E92678(a1, *(a2 + 16));
    sub_297E928CC(a1, *(a2 + 20));
    v5 = *(a2 + 24);
    sub_297E50DB0(2, a1, 3u, 4u, "Max Packet Size");
    v6 = *(a2 + 25);
    sub_297E50DB0(2, a1, 3u, 4u, "Initial Credits");
    v7 = *(a2 + 26);
    sub_297E50DB0(2, a1, 3u, 4u, "RF Techn specific params length ");
    v8 = *(a2 + 20);
    if (v8 <= 111)
    {
      if (v8 <= 0xC)
      {
        if (((1 << v8) & 0x1C09) != 0)
        {
          sub_297E92C30(a1, a2);
LABEL_24:
          sub_297E4E0B0(2, a1, 3u, 4u, "**************************************************************************");
          goto LABEL_25;
        }

        if (((1 << v8) & 0x24) != 0)
        {
          sub_297E92E1C(a1, a2);
          goto LABEL_24;
        }

        if (v8 == 1)
        {
          v10 = *(a2 + 84);
          v11 = *(a2 + 116);
          v15[4] = *(a2 + 100);
          v16[0] = v11;
          *(v16 + 14) = *(a2 + 130);
          v12 = *(a2 + 52);
          v15[0] = *(a2 + 36);
          v15[1] = v12;
          v15[2] = *(a2 + 68);
          v15[3] = v10;
          sub_297E92FE8(a1, v15);
          goto LABEL_24;
        }
      }

      goto LABEL_26;
    }

    if (v8 <= 128)
    {
      if (v8 <= 114)
      {
        goto LABEL_16;
      }

      if (v8 != 128)
      {
LABEL_26:
        v9 = "Invalid Rf Techn and mode";
        goto LABEL_17;
      }

LABEL_21:
      sub_297E930D0(a1, a2);
      goto LABEL_24;
    }

    if (v8 > 130)
    {
      if (v8 == 131)
      {
        goto LABEL_21;
      }

      if (v8 != 133)
      {
        goto LABEL_26;
      }
    }

    else if (v8 == 129)
    {
LABEL_16:
      v9 = "No Debugging info provided for Techn specific params";
LABEL_17:
      sub_297E4E0B0(2, a1, 3u, 4u, v9);
      goto LABEL_24;
    }

    sub_297E93190(a1, a2);
    goto LABEL_24;
  }

LABEL_25:
  result = sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrintRfDevActNtfDescription");
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297E937A8(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v8 = 0u;
  memset(v7, 0, sizeof(v7));
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_InitReset");
  if (a1)
  {
    if (*(a1 + 41) != 1)
    {
      BYTE5(v11) = 2;
      v10 = 3;
      LODWORD(v11) = 0;
      sub_297E59AEC(a1 + 936, &v10, sub_297E95BC8, a1);
      BYTE5(v11) = 2;
      v10 = 0x100000003;
      LODWORD(v11) = 33;
      sub_297E59AEC(a1 + 936, &v10, sub_297E70800, a1);
      BYTE5(v11) = 2;
      v10 = 0x100000003;
      LODWORD(v11) = 40;
      sub_297E59AEC(a1 + 936, &v10, sub_297E708A4, a1);
      BYTE5(v11) = 2;
      v10 = 0x100000003;
      LODWORD(v11) = 35;
      sub_297E59AEC(a1 + 936, &v10, sub_297E70948, a1);
      BYTE5(v11) = 2;
      v10 = 0x100000003;
      LODWORD(v11) = 44;
      sub_297E59AEC(a1 + 936, &v10, sub_297E70A38, a1);
      BYTE5(v11) = 2;
      v10 = 0x100000003;
      LODWORD(v11) = 36;
      sub_297E59AEC(a1 + 936, &v10, sub_297E70ADC, a1);
      BYTE5(v11) = 2;
      v10 = 0x100000003;
      LODWORD(v11) = 50;
      sub_297E59AEC(a1 + 936, &v10, sub_297E6F4F4, a1);
      BYTE5(v11) = 2;
      v10 = 3;
      LODWORD(v11) = 7;
      sub_297E59AEC(a1 + 936, &v10, sub_297E959D4, a1);
      BYTE5(v11) = 2;
      v10 = 0xF00000003;
      LODWORD(v11) = 50;
      sub_297E59AEC(a1 + 936, &v10, sub_297E50184, a1);
      BYTE5(v11) = 2;
      v10 = 0xF00000003;
      LODWORD(v11) = 3;
      sub_297E59AEC(a1 + 936, &v10, sub_297E71AC8, a1);
      BYTE5(v11) = 2;
      v10 = 0xF00000003;
      LODWORD(v11) = 58;
      sub_297E59AEC(a1 + 936, &v10, sub_297E70720, a1);
      BYTE5(v11) = 2;
      v10 = 0xF00000003;
      LODWORD(v11) = 12;
      sub_297E59AEC(a1 + 936, &v10, sub_297E70514, a1);
      BYTE5(v11) = 2;
      v10 = 0xF00000003;
      LODWORD(v11) = 16;
      sub_297E59AEC(a1 + 936, &v10, sub_297E7060C, a1);
    }

    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    v3 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v12 = 1;
    DWORD2(v12) = 0;
    *&v13 = a1 + 36;
    DWORD2(v13) = 1;
    BYTE14(v8) = 0;
    v4 = *(a1 + 6524);
    phOsalNfc_MemCopy();
    v5 = sub_297E57CC8(a1, 2, v7, sub_297E5E830, a1);
  }

  else
  {
    v5 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_InitReset");
  return v5;
}

uint64_t sub_297E93B68(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessResetRsp");
  if (a1)
  {
    if (a2 == 44 || *(a1 + 3808) != 3 || (sub_297E91834(a1, *(a1 + 3800)), v4 = *(a1 + 3800), *v4))
    {
      v5 = 255;
    }

    else
    {
      if (*(a1 + 6282) == 1)
      {
        if (*(a1 + 6283))
        {
          v5 = 0;
        }

        else
        {
          v7 = *(a1 + 6524);
          phOsalNfc_SetMemory();
          v8 = *(a1 + 6528);
          v5 = phTmlNfc_IoCtl();
          *(a1 + 6281) = *(a1 + 6283);
          v4 = *(a1 + 3800);
        }

        *(a1 + 6282) = 0;
      }

      else
      {
        v5 = 0;
      }

      *(a1 + 6280) = *(a1 + 6281);
      *(a1 + 28) = v4[1];
      v9 = v4[2];
      v10 = v9 != 0;
      if (v9)
      {
        v11 = "phNciNfc_ProcessResetRsp:Nfcc reset to 'phNciNfc_ResetType_ResetConfig'";
      }

      else
      {
        v11 = "phNciNfc_ProcessResetRsp:Nfcc reset to 'phNciNfc_ResetType_KeepConfig'";
      }

      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, v11);
      *(a1 + 32) = v10;
    }
  }

  else
  {
    v5 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessResetRsp");
  return v5;
}

uint64_t sub_297E93CCC(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_Init");
  v2 = *(a1 + 6524);
  phOsalNfc_SetMemory();
  *&v7 = 1;
  DWORD2(v7) = 1;
  *&v8 = a1 + 40;
  DWORD2(v8) = 0;
  v3 = sub_297E57BA8(a1 + 936, &v7, a1 + 3800, 2000, sub_297E5E830, a1);
  if (v3 == 111)
  {
    if (sub_297E5B294(a1))
    {
      v3 = 1;
    }

    else
    {
      v4 = *(a1 + 1568);
      v5 = phTmlNfc_WriteAbort();
      sub_297E5A3A8(*(a1 + 1568), 0);
      if (v5)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "NCI Inti command resend failed");
        v3 = 255;
      }

      else
      {
        v3 = sub_297E57BA8(a1 + 936, &v7, a1 + 3800, 2000, sub_297E5E830, a1);
      }
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_Init");
  return v3;
}

uint64_t sub_297E93E28(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessInitRsp");
  if (!a1)
  {
    goto LABEL_40;
  }

  if (*(a1 + 3808) < 0x11u)
  {
    a2 = 255;
    goto LABEL_41;
  }

  v4 = *(a1 + 3800);
  if (*v4 == 241)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_ProcessInitRsp:Suica/VAS express enabled/transaction in progress");
    a2 = 81;
LABEL_38:
    sub_297E91988(a1, a1, a2);
    goto LABEL_41;
  }

  if (*v4)
  {
    a2 = 255;
    goto LABEL_38;
  }

  *a1 = v4[1];
  *(a1 + 1) = v4[2];
  *(a1 + 2) = v4[3];
  *(a1 + 3) = v4[4];
  v5 = v4[5];
  *(a1 + 4) = v5;
  if (v5)
  {
    if (v5 > 8)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Received number of RF interface support exceeded max number of RF interfaces");
      a2 = 255;
    }

    else
    {
      v6 = *(a1 + 6524);
      phOsalNfc_MemCopy();
    }

    v7 = *(a1 + 4) + 6;
    v4 = *(a1 + 3800);
  }

  else
  {
    v7 = 6;
  }

  *(a1 + 13) = v4[v7];
  v8 = v4[(v7 + 1)];
  *(a1 + 14) = v8;
  *(a1 + 14) = v8 | (v4[(v7 + 2)] << 8);
  v9 = v4[(v7 + 3)];
  *(a1 + 16) = v9;
  v10 = v4[(v7 + 4)];
  *(a1 + 18) = v10;
  *(a1 + 18) = v10 | (v4[(v7 + 5)] << 8);
  v11 = v4[(v7 + 6)];
  *(a1 + 20) = v11;
  if (v11)
  {
    v12 = v4[(v7 + 7)];
    *(a1 + 21) = v12;
    *(a1 + 22) = v4[(v7 + 8)];
    *(a1 + 23) = v4[(v7 + 9)];
    *(a1 + 24) = v4[(v7 + 10)];
  }

  else
  {
    v12 = *(a1 + 21);
  }

  *(a1 + 4834) = 0;
  *(a1 + 4826) = 0;
  v13 = v12 + 94;
  if ((v12 - 162) > 0x31)
  {
LABEL_25:
    if (v12 != 96)
    {
      if (v12 == 66)
      {
        *(a1 + 4835) = 1;
      }

      goto LABEL_37;
    }

LABEL_28:
    *(a1 + 4828) = 1;
    if ((v12 - 209) >= 3)
    {
      if (v12 == 96)
      {
        *(a1 + 4826) = 1;
      }
    }

    else
    {
      *(a1 + 4827) = 1;
    }

    goto LABEL_37;
  }

  if (((1 << v13) & 0x3C00000000000) != 0)
  {
    goto LABEL_28;
  }

  if (((1 << v13) & 7) == 0)
  {
    if (((1 << v13) & 0x1018000) != 0)
    {
      *(a1 + 4833) = 1;
      v14 = *(a1 + 3);
      if (v12 == 186)
      {
        if (v14 == 18)
        {
          *(a1 + 4830) = 1;
        }

        else
        {
          *(a1 + 4829) = 1;
        }
      }

      else if (v14 == 4)
      {
        *(a1 + 4832) = 1;
      }

      else if (v14 == 3)
      {
        *(a1 + 4831) = 1;
      }

      goto LABEL_37;
    }

    goto LABEL_25;
  }

  *(a1 + 4834) = 1;
LABEL_37:
  if (a2 == 255)
  {
    goto LABEL_38;
  }

  v15 = sub_297F00D78(a1 + 936, v9);
  sub_297E91988(a1, a1, v15);
  if (v15)
  {
LABEL_40:
    a2 = 1;
    goto LABEL_41;
  }

  if (*(a1 + 41))
  {
    a2 = 0;
  }

  else
  {
    a2 = sub_297E94FB0(a1);
    if (!a2)
    {
      v17 = *(a1 + 4696);
      if (v17 && v17 != 0xFFFFFFFFFFFFLL)
      {
        v18 = *(a1 + 6524);
        a2 = phOsalNfc_Timer_Delete();
        if (a2)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "NCI dwNtfTimerId Timer Delete failed!!");
        }

        *(a1 + 4696) = 0xFFFFFFFFFFFFLL;
      }

      v19 = *(a1 + 6524);
      v20 = phOsalNfc_Timer_Create();
      *(a1 + 4696) = v20;
      if (v20 != 0xFFFFFFFFFFFFLL && v20)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Notification Timer Created Successfully");
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Notification Timer Create failed!!");
        a2 = 12;
      }
    }
  }

LABEL_41:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessInitRsp");
  return a2;
}

uint64_t sub_297E94234(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteInitSequence");
  if (a1)
  {
    *(a1 + 6688) = a1;
    *(a1 + 6704) = 0;
    *(a1 + 6696) = 0;
    if (*(a1 + 6282) == 1)
    {
      if (!*(a1 + 6283))
      {
        v4 = *(a1 + 6524);
        phOsalNfc_SetMemory();
        v5 = *(a1 + 6528);
        a2 = phTmlNfc_IoCtl();
        if (a2)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_CompleteInitSequence: Crc Configuration Failed");
        }

        *(a1 + 6281) = *(a1 + 6283);
      }

      *(a1 + 6282) = 0;
    }

    if (*(a1 + 4809))
    {
      a2 = 44;
      *(a1 + 6730) = 44;
      *(a1 + 6696) = a1 + 6730;
      *(a1 + 6522) = 1;
      v6 = *(a1 + 1568);
      phTmlNfc_ReadAbort();
      v7 = *(a1 + 1568);
      phTmlNfc_FlushTxRxBuffers();
      *(a1 + 4809) = 0;
    }

    else if (a2 == 44)
    {
      *(a1 + 6522) = 1;
      if (*(a1 + 3393) == 1 && (sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_CompleteInitSequence:Corrupted Pkt received from TML,Flush TML TxRx buffs and place hdr read req"), v8 = *(a1 + 1568), phTmlNfc_ReadAbort(), v9 = *(a1 + 1568), phTmlNfc_FlushTxRxBuffers(), sub_297E4EE00(a1 + 936, 0, 3) != 13))
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "TML Read req during boot retry failed");
        a2 = 255;
      }

      else
      {
        a2 = 44;
      }
    }

    else
    {
      *(a1 + 6696) = 0;
    }

    v11 = 3;
    LODWORD(v12) = 7;
    sub_297F00C28(a1 + 936, &v11, sub_297E959D4);
    sub_297E5B994(a1, a2, a1 + 6688);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CompleteInitSequence");
  return a2;
}

uint64_t sub_297E94444(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SendReset");
  v2 = 1;
  if (a1)
  {
    v3 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 1;
    DWORD2(v5) = 0;
    *&v6 = a1 + 36;
    DWORD2(v6) = 1;
    v2 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SendReset");
  return v2;
}

uint64_t sub_297E94514(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GenericCompleteSequence");
  if (a1)
  {
    sub_297E5B994(a1, a2, 0);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GenericCompleteSequence");
  return a2;
}

uint64_t sub_297E94588(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetFwInterfaceVersionCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 25;
    *&v6 = *(a1 + 896);
    DWORD2(v6) = *(a1 + 904);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetFwInterfaceVersionCmd");
  return v3;
}

uint64_t sub_297E94664(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetFwInterfaceVersionRsp");
  if (a1 && !a2)
  {
    v4 = *(a1 + 3800);
    if (!v4)
    {
      goto LABEL_13;
    }

    v5 = *v4;
    if (v5 != 5 && v5 != 1)
    {
      if (!*v4 && *(a1 + 3808) == 3)
      {
        *(a1 + 4824) = v4[1];
        *(a1 + 4825) = v4[2];
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Get FW interface version Successful");
        a2 = 0;
        goto LABEL_14;
      }

LABEL_13:
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Get FW interface version failed!");
      *(a1 + 3808) = 0;
      a2 = 255;
      goto LABEL_14;
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Get FW interface version Rejected/Syntax error, Hence this is OLD FW");
    *(a1 + 3808) = 0;
    a2 = 128;
  }

LABEL_14:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetFwInterfaceVersionRsp");
  return a2;
}

uint64_t sub_297E94784(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetFwIntVerCompleteSequence");
  if (a1)
  {
    if (*(a1 + 896))
    {
      v4 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    if (a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = a1 + 4824;
    }

    sub_297E5B994(a1, a2, v5);
  }

  else
  {
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetFwIntVerCompleteSequence");
  return a2;
}

uint64_t sub_297E94824(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteReleaseSequence");
  if (a1)
  {
    sub_297E5B994(a1, a2, 0);
    a2 = sub_297EBDFC0(a1);
  }

  sub_297E4DFAC(2, 0, 3u, 5u, "phNciNfc_CompleteReleaseSequence");
  return a2;
}

uint64_t sub_297E948A4(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SendStandbyCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 0;
    *&v6 = *(a1 + 896);
    DWORD2(v6) = *(a1 + 904);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E94F1C, a1);
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SendStandbyCmd");
  return v3;
}

uint64_t sub_297E9497C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteStandbySequence");
  if (a1)
  {
    if (*(a1 + 896))
    {
      v4 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    if (a2)
    {
      v5 = 1;
    }

    else
    {
      v5 = *(a1 + 3404);
    }

    *(a1 + 3400) = v5;
    sub_297E5B994(a1, a2, 0);
  }

  else
  {
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CompleteStandbySequence");
  return a2;
}

uint64_t sub_297E94A24(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ConfigHsuBrCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 3;
    *&v6 = *(a1 + 896);
    DWORD2(v6) = *(a1 + 904);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ConfigHsuBrCmd");
  return v3;
}

uint64_t sub_297E94B00(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ConfigHsuBrSeqComp");
  if (a1)
  {
    if (*(a1 + 896))
    {
      v4 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    *(a1 + 6730) = a2;
    sub_297E5B994(a1, 0, a1 + 6730);
  }

  else
  {
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ConfigHsuBrSeqComp");
  return a2;
}

uint64_t sub_297E94B9C(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetMultiTagInfoCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 60;
    *&v6 = 0;
    DWORD2(v6) = 0;
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetMultiTagInfoCmd");
  return v3;
}

uint64_t sub_297E94C70(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetMultiTagInfoRsp");
  if (a1 && !a2)
  {
    v4 = *(a1 + 3800);
    if (v4 && !*v4)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Get Multi tag Info Successful");
      a2 = 0;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Get Multi tag Info failed!");
      *(a1 + 3808) = 0;
      a2 = 255;
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetMultiTagInfoRsp");
  return a2;
}

uint64_t sub_297E94D38(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetMultiTagInfoSeqComp");
  v4 = 255;
  if (a1)
  {
    if (a2)
    {
      v5 = 255;
    }

    else
    {
      v5 = 0;
    }

    sub_297E5B994(a1, v5, a1 + 3800);
    v4 = a2;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetMultiTagInfoSeqComp");
  return v4;
}

uint64_t sub_297E94DC0(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ClearMultiTagListCmd");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 57;
    *&v6 = 0;
    DWORD2(v6) = 0;
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ClearMultiTagListCmd");
  return v3;
}

uint64_t sub_297E94E94(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ClearMultiTagListSeqComp");
  v4 = 255;
  if (a1)
  {
    if (a2)
    {
      v5 = 255;
    }

    else
    {
      v5 = 0;
    }

    sub_297E5B994(a1, v5, 0);
    v4 = a2;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ClearMultiTagListSeqComp");
  return v4;
}

uint64_t sub_297E94F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetPwrModeSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetPwrModeSequence");
  return v6;
}

uint64_t sub_297E94FB0(_BYTE *a1)
{
  v5 = 0;
  v6 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RegAllNtfs");
  if (a1)
  {
    LODWORD(v6) = 7;
    v5 = 0x100000003;
    v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E52DA0, a1);
    if (!v2)
    {
      sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for Rf-Nfcee Action Notification");
      LODWORD(v6) = 9;
      v5 = 0x100000003;
      v2 = sub_297E59AEC((a1 + 936), &v5, sub_297EBB630, a1);
      if (!v2)
      {
        LODWORD(v6) = 6;
        v5 = 0x100000003;
        v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E95CC4, a1);
        if (!v2)
        {
          sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for Interface Activated Notification");
          v5 = 0x100000003;
          LODWORD(v6) = 5;
          v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E78C24, a1);
          if (!v2)
          {
            sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for Discover Notification");
            v5 = 0x100000003;
            LODWORD(v6) = 3;
            v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E781D0, a1);
            if (!v2)
            {
              sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for Interface Error Notification");
              v5 = 3;
              LODWORD(v6) = 8;
              v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E6F96C, a1);
              if (!v2)
              {
                sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for Generic Error Notification");
                v5 = 3;
                LODWORD(v6) = 7;
                v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E6E990, a1);
                if (!v2)
                {
                  sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for relay attack detection/protection notification");
                  v5 = 0x100000003;
                  LODWORD(v6) = 45;
                  v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E72F6C, a1);
                  if (!v2)
                  {
                    sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for Rf Nfcee Discovery Request Notification");
                    LODWORD(v6) = 10;
                    v5 = 0x100000003;
                    v2 = sub_297E59AEC((a1 + 936), &v5, sub_297EBB888, a1);
                    if (!v2)
                    {
                      sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for NFCEE Power off Notification");
                      LODWORD(v6) = 24;
                      v5 = 0xF00000003;
                      v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E6F0C8, a1);
                      if (!v2)
                      {
                        sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for Suica/VAS Express Mode Transaction Happened Notification");
                        LODWORD(v6) = 35;
                        v5 = 0xF00000003;
                        v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E6F28C, a1);
                        if (!v2)
                        {
                          sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for Suica Mode Started Notification");
                          LODWORD(v6) = 36;
                          v5 = 0xF00000003;
                          v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E6F330, a1);
                          if (!v2)
                          {
                            sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "phNciNfc_RegAllNtfs:Registering for System End of operation Notification for Secure Elements");
                            LODWORD(v6) = 32;
                            v5 = 0xF00000003;
                            v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E6EEE8, a1);
                            if (!v2)
                            {
                              sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for System L1 Debug notification");
                              v5 = 0xF00000003;
                              LODWORD(v6) = 53;
                              v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E6F5BC, a1);
                              if (!v2)
                              {
                                sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for System L2 Debug notification");
                                v5 = 0xF00000003;
                                LODWORD(v6) = 54;
                                v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E6F690, a1);
                                if (!v2)
                                {
                                  sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for Chip Scope Debug notification");
                                  v5 = 0xF00000003;
                                  LODWORD(v6) = 34;
                                  v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E73090, a1);
                                  if (!v2)
                                  {
                                    if (a1[4834] != 1 && a1[4833] != 1 && a1[4828] != 1 || (sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for Chip Scope Debug notification"), v5 = 0xF00000003, LODWORD(v6) = 55, v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E73090, a1), !v2))
                                    {
                                      sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for Test Swp Notification");
                                      LODWORD(v6) = 62;
                                      v5 = 0xF00000003;
                                      v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E7A068, a1);
                                      if (!v2)
                                      {
                                        sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for MFW Raw API RF validation test Notification");
                                        LODWORD(v6) = 51;
                                        v5 = 0xF00000003;
                                        v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E731D4, a1);
                                        if (!v2)
                                        {
                                          sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for MFW Raw API RD LM decoder test Notification");
                                          LODWORD(v6) = 52;
                                          v5 = 0xF00000003;
                                          v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E732DC, a1);
                                          if (!v2)
                                          {
                                            sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "phNciNfc_RegAllNtfs:Registering for Prop Reader Ntf message notification");
                                            LODWORD(v6) = 32;
                                            v5 = 0x100000003;
                                            v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E70348, a1);
                                            if (!v2)
                                            {
                                              LODWORD(v6) = 34;
                                              v5 = 0x100000003;
                                              v2 = sub_297E59AEC((a1 + 936), &v5, sub_297EBBBC4, a1);
                                              if (!v2)
                                              {
                                                sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for RSSI statistics Notification");
                                                LODWORD(v6) = 56;
                                                v5 = 0xF00000003;
                                                v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E6FF30, a1);
                                                if (!v2)
                                                {
                                                  sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for FW Debug Info Notification");
                                                  LODWORD(v6) = 4;
                                                  v5 = 0xF00000003;
                                                  v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E71814, a1);
                                                  if (!v2)
                                                  {
                                                    sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for HLM Debug Info Notification");
                                                    LODWORD(v6) = 31;
                                                    v5 = 0xF00000003;
                                                    v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E71EB4, a1);
                                                    if (!v2)
                                                    {
                                                      sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for WTX Notification");
                                                      LODWORD(v6) = 23;
                                                      v5 = 0xF00000003;
                                                      v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E72970, a1);
                                                      if (!v2)
                                                      {
                                                        sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for Tag removal detection Notification");
                                                        LODWORD(v6) = 28;
                                                        v5 = 0xF00000003;
                                                        v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E72C60, a1);
                                                        if (!v2)
                                                        {
                                                          sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for LPCD Debug Notification");
                                                          LODWORD(v6) = 38;
                                                          v5 = 0xF00000003;
                                                          v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E72D0C, a1);
                                                          if (!v2)
                                                          {
                                                            sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for Prop Vas CW Ntf message notification");
                                                            LODWORD(v6) = 41;
                                                            v5 = 0x100000003;
                                                            v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E7044C, a1);
                                                            if (!v2)
                                                            {
                                                              sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "phNciNfc_RegAllNtfs:Registering for LPCD Assist successful Exit Notification");
                                                              LODWORD(v6) = 48;
                                                              v5 = 0x100000003;
                                                              v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E72DEC, a1);
                                                              if (!v2)
                                                              {
                                                                sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for Get prohibit timer status Notification");
                                                                LODWORD(v6) = 13;
                                                                v5 = 0xF00000003;
                                                                v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E710F8, a1);
                                                                if (!v2)
                                                                {
                                                                  LODWORD(v6) = 37;
                                                                  v5 = 0x100000003;
                                                                  v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E70B80, a1);
                                                                  if (!v2)
                                                                  {
                                                                    sub_297E4E0B0(1, (a1 + 6524), 3u, 4u, "Registering for Get power track data Notification");
                                                                    LODWORD(v6) = 46;
                                                                    v5 = 0xF00000003;
                                                                    v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E7131C, a1);
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RegAllNtfs");
  return v3;
}

uint64_t sub_297E959D4(uint64_t a1, uint64_t a2, int a3)
{
  memset(v17, 0, sizeof(v17));
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_InitGenErrorNtfCB");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 4u, "phNciNfc_InitGenErrorNtfCB:Invalid Context Param..");
    v7 = 1;
    goto LABEL_12;
  }

  if (!a2 || (v6 = *(a2 + 8)) == 0 || a3 || !*(a2 + 16))
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_InitGenErrorNtfCB:Notification invalid..");
    goto LABEL_10;
  }

  if (*(a1 + 6284))
  {
    sub_297E6E83C(a1, 0, 33);
LABEL_8:
    v7 = 0;
    goto LABEL_12;
  }

  if (!*(a1 + 4809))
  {
    v13 = *v6;
    if (v13 == 237)
    {
      v14 = *(a1 + 440);
      if (v14)
      {
        v14(*(a1 + 432), 30, 0, 154);
      }

      goto LABEL_8;
    }

    *(a1 + 6492) = v13;
    v15 = *(a1 + 248);
    if (v15)
    {
      HIDWORD(v17[0]) = v13;
      v15(*(a1 + 240), 49, v17, 133);
      goto LABEL_8;
    }

    v16 = *v6;
    sub_297E50DB0(1, a1 + 6524, 3u, 1u, "phNciNfc_InitGenErrorNtfCB - Unexpected Generic Error Ntf with Status");
LABEL_10:
    v7 = 255;
    goto LABEL_12;
  }

  if (*(a1 + 1928) != 1)
  {
    goto LABEL_8;
  }

  v9 = *(a1 + 3396);
  v10 = *(a1 + 1920);
  phOsalNfc_Timer_Stop();
  *(a1 + 6512) = 0;
  *(a1 + 1928) = 0;
  if (*(a1 + 3396))
  {
    v11 = &gphNfc_DebugInfo_Sec;
  }

  else
  {
    v11 = &gphNfc_DebugInfo_Prim;
  }

  v11[1] &= ~0x10u;
  v12 = *(a1 + 6524);
  phOsalNfc_Delay();
  v7 = sub_297E5E830(a1, 0, 44);
LABEL_12:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_InitGenErrorNtfCB");
  return v7;
}

uint64_t sub_297E95BC8(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ResetNtfCb");
  if (a1 && a2)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Received RESET notification from NFCC");
    sub_297E5B294(a1);
    v4 = *(a1 + 1568);
    phTmlNfc_WriteAbort();
    sub_297E5A3A8(*(a1 + 1568), 0);
    if (*(a1 + 896))
    {
      v5 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    v6 = *(a1 + 280);
    if (v6)
    {
      v8 = *(a2 + 8);
      LODWORD(v9) = *(a2 + 16);
      v6(*(a1 + 272), 4, &v8, 0);
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ResetNtfCb");
  return 0;
}

uint64_t sub_297E95CC4(uint64_t a1, uint64_t a2, int a3)
{
  memset(v18, 0, sizeof(v18));
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_DeActvNtfCb");
  v6 = 1;
  if (a1 && a2)
  {
    v7 = *(a2 + 8);
    if (v7 && *v7 == 1 && !v7[1] && (!*(a1 + 784) || *(a1 + 6521) == 1))
    {
      if (!a3 && *(a2 + 16) == 2)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Dropping Deactivate to sleep Ntf as Call back is not registered");
        v6 = 0;
        goto LABEL_53;
      }

LABEL_23:
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, " Invalid Notification!!");
      v6 = 255;
      goto LABEL_53;
    }

    *(a1 + 3360) = 0;
    sub_297F08EEC(a1, 0);
    v8 = *(a2 + 8);
    if (!v8 || a3 || *(a2 + 16) != 2)
    {
      goto LABEL_23;
    }

    if (!*v8 && *(a1 + 6640) == 1)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_DeActvNtfCb:RF DeActivate notification Dropped as there is Set Config or Discover Map command retry ongoing");
      goto LABEL_53;
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "RF DeActivate notification Received!!");
    v9 = *(a2 + 8);
    if (v9[1] <= 3u)
    {
      HIDWORD(v18[0]) = v9[1];
    }

    v10 = *v9;
    if (*(a1 + 3424))
    {
      if (!*v9)
      {
        *(a1 + 4776) = 0;
        *(a1 + 6515) = 1;
        *(a1 + 6658) = 0;
        if (*(a1 + 6514) == 1)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Dropping Deactivate Ntf to IdleMode as Restart Discovery is in progress..");
LABEL_52:
          *(a1 + 6514) = 0;
          goto LABEL_53;
        }

        if (!*(a1 + 816))
        {
          *(a1 + 6514) = 0;
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Deactivate Ntf to IdleMode..");
          *(a1 + 3424) = 0;
          sub_297E5B554(a1);
          sub_297F00E88(a1 + 936);
          sub_297E96818(*(a1 + 6528), 121);
          LODWORD(v18[0]) = 0;
          goto LABEL_49;
        }

        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Rf Deactivate Ntf to IdleMode..");
        sub_297E96818(*(a1 + 6528), 121);
        LODWORD(v18[0]) = 0;
        goto LABEL_38;
      }
    }

    else if (!*v9)
    {
      if (!*(a1 + 784))
      {
        if (*(a1 + 800) || *(a1 + 864))
        {
          *(a1 + 6515) = 1;
          *(a1 + 6658) = 0;
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Rf Deactivate Ntf to IdleMode..");
          sub_297E96818(*(a1 + 6528), 121);
          LODWORD(v18[0]) = 0;
          sub_297E5B554(a1);
          *(a1 + 784) = 0;
          *(a1 + 800) = 0;
          *(a1 + 864) = 0;
          v14 = *(a1 + 6524);
          v15 = *(a1 + 4696);
          phOsalNfc_Timer_Stop();
          *(a1 + 6512) = 0;
          sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3u, 4u, "phNciNfc_DeActvNtfCb");
          goto LABEL_49;
        }

        *(a1 + 7021) = 1;
        sub_297EBF738(a1 + 936);
        *(a1 + 6658) = 0;
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Rf Deactivate Ntf to IdleMode..");
        sub_297E96818(*(a1 + 6528), 121);
        LODWORD(v18[0]) = 0;
        if (*(a1 + 172) == 4)
        {
          *(a1 + 172) = 0;
        }

LABEL_38:
        sub_297E5B554(a1);
LABEL_49:
        v16 = *(a1 + 192);
        if (v16)
        {
          v16(*(a1 + 184), 7, v18, 121);
        }

        v6 = 0;
        goto LABEL_52;
      }

      *(a1 + 6515) = 1;
      *(a1 + 6658) = 0;
      goto LABEL_35;
    }

    if (v9[1] - 1 <= 1)
    {
      if ((v10 - 1) >= 2)
      {
        if (v10 != 3)
        {
          v6 = 255;
          goto LABEL_52;
        }

        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Rf LinkLoss in DiscMode..");
      }

      else
      {
        v11 = *(a1 + 4552);
        if (!v11 || (*(v11 + 20) & 0x80) != 0)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Device in listen Mode!!!");
          LODWORD(v18[0]) = **(a2 + 8);
          v12 = 7;
          goto LABEL_40;
        }

        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Endpoint Req to 'Sleep/SleepAF'...Converting to 'Discovery'");
      }

      LODWORD(v18[0]) = 3;
      v12 = 146;
LABEL_40:
      v6 = sub_297E5B554(a1);
      if (**(a2 + 8) == 3)
      {
        *(a1 + 176) = 1;
      }

      v13 = *(a1 + 192);
      if (v13)
      {
        v13(*(a1 + 184), 7, v18, v12);
      }

      goto LABEL_52;
    }

LABEL_35:
    v6 = sub_297E78A14(a1, a2, 0);
    goto LABEL_52;
  }

LABEL_53:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_DeActvNtfCb");
  return v6;
}

uint64_t sub_297E9618C(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  v21 = 26;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RdrBInit");
  if (a1 && a2 && a3 && a4)
  {
    if (a3[3] == 1)
    {
      v8 = a3[6];
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " NFC-B Passive Poll Mode Info being captured..");
      v9 = a3[7];
      *(a2 + 98) = v9;
      if ((v9 - 11) <= 1u)
      {
        v10 = *(a1 + 6524);
        phOsalNfc_SetMemory();
        v11 = *(a1 + 6524);
        phOsalNfc_MemCopy();
        v12 = *(a2 + 108);
        *(a2 + 145) = sub_297E772B8(a1, v12 >> 4);
        sub_297E6DD78(a1, v12, v9, a2, &v21);
        v13 = v21;
        *(a2 + 4) = v21;
        if (v13 == 16)
        {
          if (*(a2 + 12) == 2)
          {
            if (a3[v8 + 10])
            {
              v16 = a3[a3[v8 + 10] + 1];
              *(a2 + 111) = v16;
              if (v16)
              {
                v17 = *(a1 + 6524);
                phOsalNfc_SetMemory();
                v18 = *(a1 + 6524);
                v19 = *(a2 + 111);
                phOsalNfc_MemCopy();
              }
            }
          }
        }

        else if (v13 != 25)
        {
          v14 = *(a1 + 4800);
LABEL_18:
          v15 = 0;
          v14[2] = 0;
          v14[3] = sub_297EFF438;
          goto LABEL_19;
        }

        v14 = *(a1 + 4800);
        *v14 = sub_297EAADF8;
        v14[1] = sub_297EAAAFC;
        goto LABEL_18;
      }

      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Invalid SENSB_RES Length received..");
      v15 = 255;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, a1, 3u, 4u, " Invalid Params..");
    v15 = 1;
  }

LABEL_19:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RdrBInit");
  return v15;
}

uint64_t sub_297E963C0(unsigned int a1)
{
  if (a1 > 1)
  {
    return 255;
  }

  v1 = &unk_2A18BDDC0 + 112 * a1;
  v3 = *(v1 + 10);
  v2 = (v1 + 80);
  if (v3)
  {
    return 0;
  }

  result = phOsalNfc_GetMemory_Typed();
  if (result)
  {
    v5 = result;
    phOsalNfc_SetMemory();
    result = 0;
    *(v5 + 120) = 0;
    *(v5 + 128) = 0;
    *(v5 + 136) = 0;
    *(v5 + 152) = 255;
    *(v5 + 156) = 137;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_297E96474(unsigned int a1)
{
  if (a1 > 1)
  {
    return 255;
  }

  v1 = &unk_2A18BDDC0 + 112 * a1;
  v4 = *(v1 + 10);
  v3 = v1 + 80;
  v2 = v4;
  if (!v4)
  {
    return 0;
  }

  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 152) = 255;
  *(v2 + 156) = 137;
  phOsalNfc_FreeMemory();
  result = 0;
  *v3 = 0;
  return result;
}

uint64_t sub_297E964E8(unsigned int a1, int *a2)
{
  v16 = a1;
  if (a1 > 1)
  {
    return 1;
  }

  v3 = 1;
  if (a2)
  {
    v4 = *(&unk_2A18BDDC0 + 14 * a1 + 10);
    if (v4)
    {
      *v4 = *(a2 + 33);
      if (*(a2 + 32) == 1)
      {
        v5 = *a2;
        if (*a2 <= 5)
        {
          v6 = xmmword_297F13210;
          v7 = xmmword_297F13220;
          v8 = (v4 + 44);
          v9 = 16;
          v10 = vdupq_n_s64(0xFuLL);
          v11 = vdupq_n_s64(4uLL);
          do
          {
            if (vuzp1_s16(vmovn_s64(vcgtq_u64(v10, v7)), *v6.i8).u8[0])
            {
              *(v8 - 3) = v5;
            }

            if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&v7)), *&v6).i8[2])
            {
              *(v8 - 2) = v5;
            }

            if (vuzp1_s16(*&v6, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&v6))).i32[1])
            {
              *(v8 - 1) = v5;
              *v8 = v5;
            }

            v6 = vaddq_s64(v6, v11);
            v7 = vaddq_s64(v7, v11);
            v8 += 4;
            v9 -= 4;
          }

          while (v9);
          goto LABEL_18;
        }
      }

      else
      {
        v5 = *a2;
      }

      *(v4 + 36) = v5;
      *(v4 + 40) = a2[1];
      *(v4 + 44) = a2[2];
      *(v4 + 48) = a2[3];
      *(v4 + 52) = a2[7];
      *(v4 + 56) = a2[4];
      *(v4 + 64) = a2[6];
      *(v4 + 60) = a2[5];
LABEL_18:
      for (i = 1; i != 16; ++i)
      {
        *(v4 + i) = a2[9];
      }

      if (*(a2 + 6))
      {
        v3 = phOsalNfc_CloseLogFile();
        if (!v3)
        {
          v15 = *(a2 + 6);
          v3 = phOsalNfc_OpenLogFile();
        }
      }

      else
      {
        v3 = 0;
      }

      sub_297E4D930(1, &v16, 5u, 2, "phLogNfc_ConfigureMwLogging");
      for (j = 0; j != 15; ++j)
      {
        *(v4 + 16 + j) = a2[10];
      }
    }
  }

  return v3;
}

uint64_t sub_297E966F4(int a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  result = sub_297E4E2B8(a1, a2, a3);
  if (result == 1)
  {
    if (!qword_2A18BDE80)
    {
      return result;
    }

    v11 = 0;
    v10 = qword_2A18BDE80 + 32;
    goto LABEL_25;
  }

  if (!result)
  {
    v9 = qword_2A18BDE10;
    if (!qword_2A18BDE10)
    {
      return result;
    }

    v10 = 0;
LABEL_12:
    v12 = *(v9 + 4 * a3 + 32);
    if (v12 >= a4 && v12 != 0 && a5 != 0 && v12 < 6)
    {
      goto LABEL_31;
    }

    goto LABEL_23;
  }

  if (qword_2A18BDE80)
  {
    v10 = qword_2A18BDE80 + 32;
  }

  else
  {
    v10 = 0;
  }

  if (result == 255)
  {
    v9 = qword_2A18BDE10;
    if (qword_2A18BDE10)
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  if (!v10)
  {
    goto LABEL_30;
  }

  v11 = result == 255;
  if (result != 255)
  {
    return result;
  }

LABEL_25:
  v16 = *(v10 + 4 * a3);
  if (v16 < a4 || v16 == 0)
  {
LABEL_30:
    if (result != 255)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (a5)
  {
    v18 = v16 >= 6;
  }

  else
  {
    v18 = 1;
  }

  v19 = !v18 || v11;
  if (v19)
  {
LABEL_31:

    return MEMORY[0x2A1C6E630]();
  }

  return result;
}

uint64_t sub_297E96818(uint64_t result, int a2)
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
      if (a2 == 80 || a2 == 44 && *(v7 + 152) != 80)
      {
        goto LABEL_10;
      }

      if (*(v7 + 152))
      {
        if (*(v7 + 152) != 80)
        {
          v8 = *(v7 + 152) > 0x2Cu || ((1 << *(v7 + 152)) & 0x100600000000) == 0;
          if (v8 && ((a2 - 208) <= 6 && ((1 << (a2 + 48)) & 0x4F) != 0 || a2 == 48))
          {
            goto LABEL_10;
          }
        }
      }

      else if (a2 && (a2 != 185 || (*(v7 + 156) & 0xFFFFFFFE) != 0x1E))
      {
LABEL_10:
        *(v7 + 152) = a2;
      }
    }
  }

  return result;
}

uint64_t sub_297E96914(int a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  result = sub_297E4E2B8(a1, a2, a3);
  if (result == 1)
  {
    if (!qword_2A18BDE80)
    {
      return result;
    }

    v10 = qword_2A18BDE80 + 16;
    goto LABEL_25;
  }

  if (!result)
  {
    v9 = qword_2A18BDE10;
    if (!qword_2A18BDE10)
    {
      return result;
    }

    v10 = 0;
LABEL_12:
    v11 = *(v9 + a3 + 16);
    if (v11 >= 3 && v11 >= a4 && a5 != 0 && v11 < 5)
    {
      goto LABEL_37;
    }

    goto LABEL_23;
  }

  if (qword_2A18BDE80)
  {
    v10 = qword_2A18BDE80 + 16;
  }

  else
  {
    v10 = 0;
  }

  if (result == 255)
  {
    v9 = qword_2A18BDE10;
    if (qword_2A18BDE10)
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  if (!v10 || result != 255)
  {
    return result;
  }

LABEL_25:
  v15 = *(v10 + a3);
  if (v15 >= 3 && v15 >= a4 && a5 != 0 && v15 <= 4)
  {
LABEL_37:

    return MEMORY[0x2A1C6E688]();
  }

  return result;
}

uint64_t sub_297E96A20(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v22 = 0;
  v23 = 0;
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_T5T_H_ReadWrite");
  *(a1 + 48) = sub_297E96C5C;
  *(a1 + 56) = a1;
  v8 = 32;
  *(a1 + 232) = 32;
  v9 = *(a1 + 640);
  if (v9 >= 0x100)
  {
    if (*(a1 + 664) != 226)
    {
      v19 = 27;
      goto LABEL_22;
    }

    v10 = 0;
    LOBYTE(a2) = a2 | 0x10;
    v8 = 32;
  }

  else if (a2 == 33)
  {
    if ((*(a1 + 663) & 0x10) != 0)
    {
      v8 = 96;
    }

    else
    {
      v8 = 32;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 266) = v8;
  *(a1 + 267) = a2;
  v11 = *(a1 + 2720);
  v12 = *(*(a1 + 224) + 16);
  phOsalNfc_MemCopy();
  v13 = *(a1 + 224);
  v14 = *(v13 + 16);
  v15 = *(a1 + 640);
  *(a1 + 266 + (v14 + 2)) = v15;
  v16 = v14 + 3;
  if (v9 >= 0x100)
  {
    *(a1 + 266 + (v14 + 3)) = HIBYTE(v15);
    v16 = v14 + 4;
  }

  v17 = (((a2 - 33) >> 1) | ((a2 - 33) << 7));
  if (v17 <= 9 && ((1 << v17) & 0x303) != 0)
  {
    if (a3 && a4)
    {
      v18 = *(a1 + 2720);
      phOsalNfc_MemCopy();
      v16 += a4;
      v13 = *(a1 + 224);
    }

    sub_297E9FDA4(*(a1 + 2712), v13 + 8, &v22);
    if (v10 && (HIDWORD(v23) - 3) <= 3)
    {
      *(a1 + 266) |= 0x42u;
      *(a1 + 232) = 1;
      *(a1 + 576) = 20;
    }
  }

  *(a1 + 264) = 260;
  *(a1 + 526) = v16;
  v19 = sub_297E98D38(a1, sub_297E97B88);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_T5T_H_ReadWrite");
LABEL_22:
  v20 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t sub_297E96C5C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v141 = *MEMORY[0x29EDCA608];
  v138 = a1;
  sub_297E4E1B4(0, &v138, 8u, 5u, "phFriNfc_T5T_Process");
  if (a3)
  {
LABEL_2:
    if (a3 == 13)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!a2[266])
  {
    v7 = *a2;
    if (v7 <= 2)
    {
      if (v7 != 1)
      {
        if (v7 != 2)
        {
          goto LABEL_2;
        }

        sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_T5T_H_ProcessReadNdef");
        if (*(a2 + 132))
        {
          v8 = (*(a2 + 132) - 1);
        }

        else
        {
          v8 = 0;
        }

        if (a2[560] || (LOWORD(v17) = a2[659]) == 0)
        {
          v9 = a2[658];
          v10 = *(a2 + 323);
          if (v10 <= 0xFE)
          {
            v11 = v9 + 1;
          }

          else
          {
            v11 = v9 + 3;
          }

          v12 = v11 + 1;
          v13 = a2[662];
          v14 = v12 >= v13;
          v15 = *(a2 + 328);
          if (v14)
          {
            ++v15;
          }

          if (v15 == *(a2 + 320))
          {
            if (v10 <= 0xFE)
            {
              v16 = v9 + 1;
            }

            else
            {
              v16 = v9 + 3;
            }

            v17 = (v16 + 1) % v13;
          }

          else
          {
            LOWORD(v17) = 0;
          }
        }

        a2[659] = 0;
        v58 = *(a2 + 330);
        v59 = *(a2 + 62) - *(a2 + 126);
        if (v59 >= v58)
        {
          v61 = v8 - v17;
          if (v61 >= v58)
          {
            v60 = *(a2 + 330);
          }

          else
          {
            v60 = v61;
          }
        }

        else
        {
          v60 = v8 - v17;
          if (v59 < (v8 - v17))
          {
            a2[659] = (v59 + v17) % a2[662];
            v60 = v59;
          }
        }

        v62 = *(a2 + 680);
        v63 = *(a2 + 30);
        phOsalNfc_MemCopy();
        v64 = *(a2 + 126) + v60;
        *(a2 + 126) = v64;
        v65 = *(a2 + 330);
        *(a2 + 330) = v65 - v60;
        v66 = *(a2 + 320);
        if (a2[663])
        {
          v67 = v66 + a2[666];
          *(a2 + 320) = v67;
          v68 = v64;
          if (*(a2 + 62) > v64 && v65 != v60)
          {
            v69 = sub_297E97C20(a2);
            goto LABEL_124;
          }
        }

        else
        {
          v67 = v66 + 1;
          *(a2 + 320) = v67;
          v68 = v64;
          if (*(a2 + 62) > v64 && v65 != v60)
          {
            v69 = sub_297E96A20(a2, 32, 0, 0);
LABEL_124:
            a3 = v69;
LABEL_128:
            v53 = "phFriNfc_T5T_H_ProcessReadNdef";
LABEL_301:
            sub_297E4DFAC(2, a2, 8u, 5u, v53);
            goto LABEL_2;
          }
        }

        if (a2[659])
        {
          *(a2 + 320) = v67 - 1;
        }

        a3 = 0;
        **(a2 + 69) = v68;
        goto LABEL_128;
      }

      v21 = a2[644];
      v22 = a2 + 267;
      sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_T5T_H_ProcessCheckNdef");
      if (*(a2 + 132))
      {
        v23 = *(a2 + 132) - 1;
      }

      else
      {
        LOBYTE(v23) = 0;
      }

      v24 = a2[665];
      if (a2[665])
      {
        v25 = 0;
LABEL_37:
        if (v25 >= v23 || v21 == 2)
        {
          if (v21 == 2)
          {
            a3 = 0;
            goto LABEL_293;
          }

LABEL_290:
          if (v21 == 4)
          {
            v133 = *(a2 + 328);
            *(a2 + 320) = v133;
            v134 = a2[662];
            if (v134 - 1 == a2[658])
            {
              LOBYTE(v21) = 0;
              *(a2 + 320) = ++v133;
            }

            else
            {
              LOBYTE(v21) = 4;
            }
          }

          else
          {
            v133 = *(a2 + 320) + 1;
            *(a2 + 320) = v133;
            v134 = a2[662];
          }

          v135 = 0;
          v136 = *(a2 + 162);
          v137 = a2[665];
          a3 = 22;
          if (v136 <= ~v137 && v136 + v137 > v134 * v133)
          {
            a3 = sub_297E96A20(a2, 32, 0, 0);
            v135 = v21;
          }

LABEL_300:
          a2[644] = v135;
          v53 = "phFriNfc_T5T_H_ProcessCheckNdef";
          goto LABEL_301;
        }

        v26 = (a2 + 646);
        v27 = word_2A18BE710;
        v28 = word_2A18BE712;
        v29 = ~v24;
        a3 = 245;
        while (1)
        {
          v30 = v25;
          if (v21 > 2)
          {
            if (v21 != 3)
            {
              if (v21 != 4)
              {
                goto LABEL_287;
              }

              v21 = 0;
              LOBYTE(v25) = a2[658];
              goto LABEL_76;
            }

            if (v27 == 2)
            {
              v28 |= v22[v25];
              word_2A18BE712 = v28;
              word_2A18BE710 = 0;
              if (v28 < 0xFFu)
              {
                a3 = 22;
LABEL_279:
                v21 = 3;
                goto LABEL_287;
              }
            }

            else
            {
              if (v27 == 1)
              {
                v28 = v22[v25] << 8;
                word_2A18BE712 = v28;
                v27 = 2;
                word_2A18BE710 = 2;
                goto LABEL_64;
              }

              if (v27)
              {
                a3 = 245;
                goto LABEL_279;
              }

              v21 = v22[v25];
              if (!v22[v25])
              {
                v27 = 0;
                goto LABEL_76;
              }

              if (v21 == 255)
              {
                v27 = 1;
                word_2A18BE710 = 1;
LABEL_64:
                v21 = 3;
                goto LABEL_76;
              }

              word_2A18BE712 = v22[v25];
              word_2A18BE710 = 0;
              v28 = v21;
            }

            v33 = *(a2 + 162);
            v34 = v33 + v24;
            if (v33 > v29)
            {
              v34 = 0;
            }

            v35 = a2[662];
            v36 = v30 + v35 * *(a2 + 320);
            if (v34 > v36 && v34 + ~v36 < v28)
            {
              a3 = 22;
              v21 = 4;
              goto LABEL_287;
            }

            v27 = 0;
            v37 = v28 + v36;
            a2[658] = v37 % v35;
            *(a2 + 328) = v37 / v35;
            v25 = v28 + v30;
            if (v25 >= v23)
            {
              LOBYTE(v25) = v23;
            }

            v21 = 4;
          }

          else
          {
            if (v21)
            {
              if (v21 != 1)
              {
                goto LABEL_287;
              }

              if (v27)
              {
                if (v27 != 1)
                {
                  if (v27 == 2)
                  {
                    v94 = *v26;
                    v95 = v22[v25];
                    v32 = v94 | v95;
                    *v26 = v94 | v95;
                    word_2A18BE710 = 0;
                    if ((v94 | v95) > 0xFE)
                    {
                      v96 = 0;
                      goto LABEL_182;
                    }

                    a3 = 22;
                  }

                  else
                  {
                    a3 = 245;
                  }

                  v21 = 1;
                  goto LABEL_287;
                }

                *v26 = v22[v25] << 8;
                v27 = 2;
              }

              else
              {
                v32 = v22[v25];
                if (v32 != 255)
                {
                  if (v22[v25])
                  {
                    *v26 = v32;
                    v26 = &word_2A18BE710;
                  }

                  *v26 = 0;
                  v96 = 1;
LABEL_182:
                  v97 = *(a2 + 162);
                  v98 = v97 + v24;
                  if (v97 > v29)
                  {
                    v98 = 0;
                  }

                  v99 = v25 + a2[662] * *(a2 + 320);
                  if (v98 <= v99)
                  {
                    v100 = 0;
                  }

                  else
                  {
                    v100 = v98 + ~v99;
                  }

                  *(a2 + 162) = v100;
                  if (v100 >= v32)
                  {
                    if (a2[545] == 1)
                    {
                      v104 = 1;
                    }

                    else
                    {
                      v104 = 2 * (v32 != 0);
                    }

                    a2[545] = v104;
                    if (v100 >= 0xFFFF)
                    {
                      v105 = 0xFFFF;
                    }

                    else
                    {
                      v105 = v100;
                    }

                    *(a2 + 162) = v105;
                    v106 = v96 ^ 1;
                    if (v100 < 0xFF)
                    {
                      v106 = 1;
                    }

                    if (v106)
                    {
                      a3 = 0;
                    }

                    else
                    {
                      a3 = 0;
                      if (v100 == 255)
                      {
                        v107 = 254;
                      }

                      else
                      {
                        v107 = v105 - 2;
                      }

                      *(a2 + 162) = v107;
                    }

                    v21 = 2;
                  }

                  else
                  {
                    v21 = 2;
                    sub_297E4E0B0(2, a2, 8u, 2u, "phFriNfc_T5T_H_ProcessCheckNdef: Current NDEF message exceeds the Maximum Tag NDEF size");
                    v101 = *(a2 + 323);
                    sub_297E50EBC(2, a2, 8u, 2u, "phFriNfc_T5T_H_ProcessCheckNdef:Current Ndef Message size");
                    v102 = *(a2 + 162);
                    sub_297E50EBC(2, a2, 8u, 2u, "phFriNfc_T5T_H_ProcessCheckNdef:Maximum Ndef Message size");
                    *(a2 + 323) = 0;
                    a2[545] = 0;
                    a3 = 25;
                  }

LABEL_287:
                  if (a3 != 25 && a3)
                  {
                    v135 = 0;
                  }

                  else
                  {
                    if (v21 != 2)
                    {
                      goto LABEL_290;
                    }

LABEL_293:
                    v135 = 0;
                    a2[544] = 9;
                  }

                  goto LABEL_300;
                }

                v27 = 1;
              }

              word_2A18BE710 = v27;
            }

            else
            {
              v31 = v22[v25];
              if (v31 != 3)
              {
                if (v31 == 254)
                {
                  v21 = 0;
                  goto LABEL_249;
                }

                goto LABEL_64;
              }

              a2[658] = v25;
              *(a2 + 328) = *(a2 + 320);
            }

            v21 = 1;
          }

LABEL_76:
          LOBYTE(v25) = v25 + 1;
          if (v25 >= v23)
          {
            goto LABEL_290;
          }
        }
      }

      word_2A18BE712 = 0;
      sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_T5T_H_CheckCCBytes");
      v70 = *(a2 + 320);
      if (v70 == 1)
      {
        goto LABEL_212;
      }

      if (!*(a2 + 320))
      {
        v71 = *v22;
        if ((v71 - 225) > 1)
        {
          v93 = 0;
          a3 = 22;
          goto LABEL_215;
        }

        v72 = *(a2 + 132);
        if (v72)
        {
          v73 = v72 - 1;
          a2[662] = v72 - 1;
        }

        else
        {
          v73 = a2[662];
        }

        v93 = 0;
        v108 = (((v73 - 4) >> 2) | ((v73 - 4) << 6));
        a3 = 22;
        if (v108 > 7 || ((1 << v108) & 0x8B) == 0)
        {
LABEL_215:
          v111 = a2[665];
          if (v111 != 8)
          {
            goto LABEL_218;
          }

          goto LABEL_216;
        }

        a2[664] = v71;
        a2[663] = a2[270];
        v109 = a2[269];
        if (a2[269])
        {
          a3 = 0;
          a2[665] = 4;
          v110 = 8 * v109;
          *(a2 + 162) = v110;
          *(a2 + 163) = v110;
LABEL_214:
          v93 = 1;
          goto LABEL_215;
        }

        if (v73 > 7u)
        {
LABEL_212:
          a3 = 0;
          a2[665] = 8;
          v93 = 1;
LABEL_216:
          v112 = (v22[6u % a2[662]] << 11) | (8 * v22[6u % a2[662] + 1]);
          *(a2 + 162) = v112;
          if (!v112)
          {
            a3 = 22;
            goto LABEL_240;
          }

          *(a2 + 163) = v112;
          v111 = 8;
LABEL_218:
          if (v93 && v111)
          {
            v113 = *(*(a2 + 28) + 14);
            if (v113 == 7 || v113 == 4)
            {
              a3 = 0;
              v114 = *(a2 + 162) - v111;
              *(a2 + 162) = v114;
              *(a2 + 163) = v114;
            }

            else
            {
              a3 = 0;
            }
          }

          if (v111)
          {
            v115 = a2[664] == 225;
          }

          else
          {
            v115 = 0;
          }

          if (!v115)
          {
            v93 = 0;
          }

          if (v93 == 1)
          {
            v116 = *(a2 + 162) + v111;
            v117 = a2[662];
            v118 = v116 / v117;
            v119 = v116 / v117 - 1;
            v120 = v116 % v117;
            if (v118)
            {
              v121 = v118;
            }

            else
            {
              v121 = 0;
            }

            if (v120)
            {
              v122 = v121;
            }

            else
            {
              v122 = v119;
            }

            if ((v122 & 0xFF00) != 0)
            {
              a3 = 22;
            }

            else
            {
              a3 = a3;
            }
          }

LABEL_240:
          if (a3 | v70)
          {
            goto LABEL_241;
          }

          v123 = a2[268];
          if ((v123 & 0x80000000) == 0)
          {
            v124 = v123 & 0xF;
            if (!v124)
            {
              v125 = 2;
              goto LABEL_251;
            }

            if (v124 == 3)
            {
              v125 = 1;
LABEL_251:
              a2[545] = v125;
LABEL_241:
              sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_T5T_H_CheckCCBytes");
              if (a3)
              {
                goto LABEL_287;
              }

              v24 = a2[665];
              v25 = v24;
              if (!a2[665])
              {
                ++*(a2 + 320);
                a3 = sub_297E96A20(a2, 32, 0, 0);
                goto LABEL_2;
              }

              goto LABEL_37;
            }
          }

          sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_T5T_H_CheckCCBytes");
LABEL_249:
          a3 = 22;
          goto LABEL_287;
        }
      }

      a3 = 0;
      goto LABEL_214;
    }

    if (v7 != 3)
    {
      if (v7 != 4)
      {
        goto LABEL_2;
      }

      LODWORD(v139[0]) = 0;
      sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_T5T_H_ProcessRdOnlyNdef");
      v18 = *(a2 + 132);
      if (v18 - 1 == a2[665])
      {
        v19 = *(a2 + 680);
        phOsalNfc_MemCopy();
        if (sub_297E8EA44(*(a2 + 339)) == 1)
        {
          v20 = 0;
        }

        else
        {
          v20 = 3;
        }

        BYTE1(v139[0]) = BYTE1(v139[0]) & 0xFC | v20;
        a3 = sub_297E96A20(a2, 33, v139, 4);
      }

      else if (v18 == 1)
      {
        a3 = 0;
      }

      else
      {
        a3 = 255;
      }

      v53 = "phFriNfc_T5T_H_ProcessRdOnlyNdef";
      goto LABEL_301;
    }

    v38 = a2[644];
    v140 = 0;
    memset(v139, 0, sizeof(v139));
    v39 = a2[662];
    sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_T5T_H_ProcessWriteNdef");
    v40 = 0;
    v41 = 1;
    if (v38 > 2)
    {
      if (v38 <= 4)
      {
        if (v38 == 3)
        {
          v41 = 0;
          v40 = 0;
          a3 = 0;
          ++*(a2 + 320);
          LOBYTE(v139[0]) = -2;
          v42 = 1;
          LOBYTE(v38) = 2;
          goto LABEL_267;
        }

        v42 = 0;
        v43 = (*(a2 + 132) - 1);
        if (*(a2 + 132))
        {
          v44 = (*(a2 + 132) - 1);
        }

        else
        {
          v44 = 0;
        }

        a3 = 27;
        v41 = 1;
        v40 = 1;
        if (v39 && v44 == v39)
        {
          v45 = *(a2 + 680);
          phOsalNfc_MemCopy();
          v46 = a2[658];
          v47 = (v46 + 1) % v43;
          v48 = *(a2 + 62);
          if (v48 < 0xFF)
          {
            v49 = 1;
          }

          else
          {
            v49 = 3;
          }

          v50 = a2[662] - 1 <= v46;
          v51 = *(a2 + 328);
          if (v50)
          {
            ++v51;
          }

          if (v51 == *(a2 + 320))
          {
            if (v49 + v47 > v39)
            {
              LOBYTE(v38) = 5;
            }

            else
            {
              LOBYTE(v38) = 6;
            }

            if (v49 + v47 > v39)
            {
              LOBYTE(v49) = v39 - v47;
            }

            if (v48 > 0xFE)
            {
              *(v139 + v47) = -1;
              v52 = v47 + 1;
            }

            else
            {
              *(v139 + v47) = v48;
              v52 = v47;
            }

            LOBYTE(v103) = v49 - 1;
          }

          else
          {
            v52 = 0;
            v103 = (v47 + v49) % v43;
            LOBYTE(v38) = 6;
          }

          if (v103 == 2 || (v103 == 1 ? (v128 = v52 == 0) : (v128 = 1), !v128))
          {
            *(v139 + v52++) = a2[253];
            LOBYTE(v103) = v103 - 1;
          }

          if (v103 == 1)
          {
            v41 = 0;
            v40 = 0;
            a3 = 0;
            *(v139 + v52) = a2[252];
            goto LABEL_266;
          }

LABEL_265:
          v41 = 0;
          v40 = 0;
          a3 = 0;
          goto LABEL_266;
        }

LABEL_267:
        if (*(a2 + 126))
        {
          if (**(a2 + 32) == *(a2 + 126))
          {
            v40 = 1;
          }

          if (v40)
          {
            goto LABEL_277;
          }
        }

        else if (!v42)
        {
LABEL_277:
          a2[644] = v38;
          v53 = "phFriNfc_T5T_H_ProcessWriteNdef";
          goto LABEL_301;
        }

        if (v41)
        {
          v129 = a2;
          v130 = 32;
          v131 = 0;
          v132 = 0;
        }

        else
        {
          v131 = v139;
          v129 = a2;
          v130 = 33;
          v132 = v39;
        }

        a3 = sub_297E96A20(v129, v130, v131, v132);
        goto LABEL_277;
      }

      if (v38 != 5)
      {
        v42 = 1;
        a3 = 0;
        if (v38 != 6)
        {
          goto LABEL_267;
        }

        v40 = 0;
        a3 = 0;
        v74 = *(a2 + 126);
        **(a2 + 32) = v74;
        *(a2 + 323) = v74;
        goto LABEL_172;
      }

      v40 = 0;
      a3 = 0;
      v57 = *(a2 + 320) + 1;
LABEL_170:
      *(a2 + 320) = v57;
      v41 = 1;
      LOBYTE(v38) = 4;
LABEL_266:
      v42 = 1;
      goto LABEL_267;
    }

    if (v38)
    {
      if (v38 == 1)
      {
        LOBYTE(v38) = 0;
        v40 = 0;
        a3 = 0;
        ++*(a2 + 320);
LABEL_172:
        v41 = 1;
        goto LABEL_266;
      }

      v54 = *(a2 + 62);
      v55 = *(a2 + 126);
      v56 = v54 - v55;
      if (v54 == v55)
      {
        v40 = 0;
        a3 = 0;
        v57 = *(a2 + 328);
        if (v39 - 1 <= a2[658])
        {
          ++v57;
        }

        goto LABEL_170;
      }

      ++*(a2 + 320);
      if (v56 >= v39)
      {
        LOBYTE(v38) = 2;
        if (v56 == v39)
        {
          if (v54 >= *(a2 + 162))
          {
            LOBYTE(v38) = 2;
          }

          else
          {
            LOBYTE(v38) = 3;
          }
        }

        v90 = v39;
      }

      else
      {
        *(v139 + v56) = -2;
        LOBYTE(v38) = 2;
        v90 = v54 - v55;
      }

      v126 = *(a2 + 680);
      v127 = *(a2 + 30) + v55;
    }

    else
    {
      if (*(a2 + 132))
      {
        v75 = (*(a2 + 132) - 1);
      }

      else
      {
        v75 = 0;
      }

      a3 = 27;
      v41 = 1;
      v40 = 1;
      v42 = 0;
      if (!v39 || v75 != v39)
      {
        goto LABEL_267;
      }

      v76 = *(a2 + 680);
      phOsalNfc_MemCopy();
      v77 = a2[658];
      v78 = (v77 + 1) % v39;
      if (*(a2 + 62) <= 0xFEu)
      {
        v79 = 1;
      }

      else
      {
        v79 = 3;
      }

      v50 = a2[662] - 1 <= v77;
      v80 = *(a2 + 328);
      if (v50)
      {
        ++v80;
      }

      v81 = *(a2 + 320);
      v82 = v39 - v78;
      if (v79 + v78 <= v39)
      {
        v82 = v79;
      }

      v83 = v80 == v81;
      v84 = v80 == v81 && v79 + v78 > v39;
      if (v83)
      {
        LOBYTE(v85) = v82;
      }

      else
      {
        v85 = (v78 + v79) % v39;
      }

      if (v83)
      {
        v86 = v78;
      }

      else
      {
        v86 = 0;
      }

      if (v86 + v79 <= v39)
      {
        LOBYTE(v38) = 2;
      }

      else
      {
        LOBYTE(v38) = v84;
      }

      v87 = *(a2 + 680);
      phOsalNfc_SetMemory();
      v88 = v85 + v86;
      if (v39 <= (v85 + v86))
      {
        goto LABEL_265;
      }

      v89 = *(a2 + 126);
      if (*(a2 + 62) - v89 >= (v39 - v88))
      {
        v90 = v39 - v88;
      }

      else
      {
        v90 = a2[248] - v89;
      }

      v91 = *(a2 + 680);
      v92 = *(a2 + 30) + v89;
    }

    phOsalNfc_MemCopy();
    v41 = 0;
    v40 = 0;
    a3 = 0;
    *(a2 + 126) += v90;
    goto LABEL_266;
  }

  a3 = 255;
LABEL_6:
  sub_297E97D6C(a2, a3);
LABEL_7:
  result = sub_297E4DFAC(0, &v138, 8u, 5u, "phFriNfc_T5T_Process");
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297E97B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 8u, 5u, "phFriNfc_T5T_CB_Transceive");
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

  return sub_297E4DFAC(0, &v10, 8u, 5u, "phFriNfc_T5T_CB_Transceive");
}

uint64_t sub_297E97C20(uint64_t a1)
{
  v17 = 0;
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_T5T_ReadRemainingInMultiple");
  v2 = *(a1 + 248) - *(a1 + 252);
  v3 = *(a1 + 658);
  v4 = *(a1 + 646);
  if (v4 <= 0xFE)
  {
    v5 = v3 + 1;
  }

  else
  {
    v5 = v3 + 3;
  }

  v6 = *(a1 + 662);
  if (v5 + 1 < v6)
  {
    v7 = *(a1 + 656);
  }

  else
  {
    v7 = *(a1 + 656) + 1;
  }

  v8 = *(a1 + 640);
  if (v7 == v8)
  {
    if (v4 <= 0xFE)
    {
      v9 = v3 + 1;
    }

    else
    {
      v9 = v3 + 3;
    }

    v2 += (v9 + 1) % v6;
  }

  if (v2 <= v6)
  {
    v13 = 0;
    *(a1 + 666) = 1;
    v14 = 32;
  }

  else
  {
    if (*(a1 + 662))
    {
      v10 = *(a1 + 662);
      if (v2 >= 0xFE)
      {
        v11 = 254;
      }

      else
      {
        v11 = v2;
      }

      v12 = v11 / v10;
      *(a1 + 666) = v11 / v10;
      if (v11 + v6 <= 0xFE && v11 != v12 * v6)
      {
        LOBYTE(v12) = v12 + 1;
        *(a1 + 666) = v12;
      }
    }

    else
    {
      LOBYTE(v12) = *(a1 + 666);
    }

    LOBYTE(v17) = v12 - 1;
    if (v8 <= 0xFF)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v14 = 35;
  }

  v15 = sub_297E96A20(a1, v14, &v17, v13);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_T5T_ReadRemainingInMultiple");
  return v15;
}

uint64_t sub_297E97D6C(unsigned __int8 *a1, uint64_t a2)
{
  v10 = 0;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v4 = *a1;
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_T5T_H_Complete");
  *a1 = 0;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      a1[545] = 2 * (**(a1 + 32) != 0);
      (*(a1 + 3))(*(a1 + 5), a2);
    }

    else if (v4 == 4)
    {
      if (!a2)
      {
        a1[545] = 1;
      }

      (*(a1 + 4))(*(a1 + 5), a2);
    }
  }

  else if (v4 == 1)
  {
    if (a2 != 25 && a2)
    {
      a1[546] = 0;
      LOBYTE(v9) = 3;
      if (a2 == 22)
      {
        a2 = 152;
      }

      else
      {
        a2 = a2;
      }
    }

    else
    {
      a1[546] = 1;
      v5 = *(a1 + 162);
      HIDWORD(v9) = *(a1 + 323);
      v10 = v5;
      LOBYTE(v9) = a1[545];
    }

    (*(a1 + 1))(*(a1 + 5), a2, &v9);
  }

  else if (v4 == 2)
  {
    if (!a2)
    {
      LODWORD(v8) = **(a1 + 69);
      v7 = *(a1 + 30);
    }

    (*(a1 + 2))(*(a1 + 5), a2, &v7);
  }

  return sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_T5T_H_Complete");
}

uint64_t sub_297E97ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 8u, 5u, "phFriNfc_T5T_ChkNdef");
  sub_297E57170(v11, &v10);
  v5 = v10;
  if (v10)
  {
    v6 = 1;
    if (a2 && a3)
    {
      if (*v10)
      {
        v6 = 111;
      }

      else
      {
        *(v10 + 8) = a2;
        *(v5 + 40) = a3;
        v8 = *(v5 + 2720);
        phOsalNfc_SetMemory();
        v9 = v10;
        *v10 = 1;
        v6 = sub_297E96A20(v9, 32, 0, 0);
        if (v6 != 13)
        {
          *v10 = 0;
        }
      }
    }
  }

  else
  {
    v6 = 49;
  }

  sub_297E4DFAC(0, &v11, 8u, 5u, "phFriNfc_T5T_ChkNdef");
  return v6;
}

uint64_t sub_297E97FD0(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v21 = 0;
  v22 = a1;
  sub_297E4E1B4(0, &v22, 8u, 5u, "phFriNfc_T5T_RdNdef");
  sub_297E57170(v22, &v21);
  v11 = v21;
  if (!v21)
  {
    v12 = 49;
    goto LABEL_35;
  }

  v12 = 1;
  if (a4 <= 1 && a3 && a2 && a5)
  {
    if (!v21[546])
    {
      v12 = 152;
      goto LABEL_35;
    }

    if (*v21)
    {
      v12 = 111;
      goto LABEL_35;
    }

    if (v21[545] == 3)
    {
      v12 = 28;
      goto LABEL_34;
    }

    *v21 = 2;
    *(v11 + 240) = a2;
    *(v11 + 248) = *a3;
    *(v11 + 552) = a3;
    *a3 = 0;
    *(v11 + 252) = 0;
    *(v11 + 560) = a4;
    *(v11 + 16) = a5;
    *(v11 + 40) = a6;
    if (a4 == 1 && !*(v11 + 65))
    {
      *(v11 + 644) = 0;
      *(v11 + 642) = *(v11 + 665) / *(v11 + 662);
      v13 = sub_297E981BC(v11);
LABEL_32:
      v12 = v13;
      if (v13 == 13)
      {
        goto LABEL_35;
      }

      v11 = v21;
LABEL_34:
      *v11 = 0;
      goto LABEL_35;
    }

    v14 = *(v11 + 248);
    v15 = *(v11 + 646);
    if (v14 > v15)
    {
      *(v11 + 248) = v15;
      v14 = v15;
    }

    v16 = *(v11 + 660);
    if (*(v11 + 660))
    {
      if (!a4)
      {
        if (v14 > v16)
        {
          *(v11 + 248) = v16;
        }

LABEL_29:
        if (*(v11 + 663))
        {
          v13 = sub_297E97C20(v11);
        }

        else
        {
          v13 = sub_297E96A20(v11, 32, 0, 0);
        }

        goto LABEL_32;
      }
    }

    else if (!a4)
    {
      v12 = 26;
      goto LABEL_34;
    }

    *(v11 + 660) = v15;
    if (v15 <= 0xFE)
    {
      v17 = 2;
    }

    else
    {
      v17 = 4;
    }

    v18 = v17 + *(v11 + 658) >= *(v11 + 662);
    v19 = *(v11 + 656);
    if (v18)
    {
      ++v19;
    }

    *(v11 + 640) = v19;
    goto LABEL_29;
  }

LABEL_35:
  sub_297E4DFAC(0, &v22, 8u, 5u, "phFriNfc_T5T_RdNdef");
  return v12;
}

uint64_t sub_297E981BC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_T5T_RdDynamicNdef");
  *(a1 + 56) = a1;
  *(a1 + 232) = 32;
  v2 = *(a1 + 642);
  v3 = 32;
  if (v2 >= 0x100)
  {
    if (*(a1 + 664) != 226)
    {
      return 27;
    }

    v3 = 48;
  }

  *(a1 + 266) = 32;
  *(a1 + 267) = v3;
  v4 = *(a1 + 2720);
  v5 = *(*(a1 + 224) + 16);
  phOsalNfc_MemCopy();
  v6 = *(*(a1 + 224) + 16);
  v7 = *(a1 + 642);
  *(a1 + 266 + (v6 + 2)) = v7;
  v8 = v6 + 3;
  if (v2 >= 0x100)
  {
    *(a1 + 266 + (v6 + 3)) = HIBYTE(v7);
    v8 = v6 + 4;
  }

  *(a1 + 264) = 260;
  *(a1 + 526) = v8;
  v9 = sub_297E98D38(a1, sub_297E98634);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_T5T_RdDynamicNdef");
  return v9;
}

uint64_t sub_297E982D8(uint64_t a1, uint64_t a2, _DWORD *a3, char a4, uint64_t a5, uint64_t a6)
{
  v34 = *MEMORY[0x29EDCA608];
  v31 = a1;
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v30 = 0;
  v29 = 208;
  v28 = 0;
  sub_297E4E1B4(0, &v31, 8u, 5u, "phFriNfc_T5T_WrNdef");
  sub_297E57170(v31, &v28);
  v11 = v28;
  if (v28)
  {
    v12 = 1;
    if (a3 && a5)
    {
      if (*(v28 + 546))
      {
        if (*v28)
        {
          v12 = 111;
        }

        else if (*a3 <= *(v28 + 648))
        {
          if (*(v28 + 545) == 1)
          {
            *(v28 + 256) = a3;
            *a3 = 0;
            v12 = 58;
          }

          else
          {
            v13 = *(v28 + 662);
            v14 = *(v28 + 2720);
            phOsalNfc_MemCopy();
            v15 = v28;
            v16 = (v28 + 2740);
            *(v28 + 2740) = 3;
            if (*a3)
            {
              v16 = a3;
              v17 = a2;
            }

            else
            {
              v17 = v15 + 2736;
            }

            *(v15 + 256) = v16;
            *v15 = 3;
            *(v15 + 240) = v17;
            *(v15 + 248) = *v16;
            *(v15 + 552) = v16;
            *v16 = 0;
            *(v15 + 252) = 0;
            *(v15 + 560) = a4;
            *(v15 + 24) = a5;
            *(v15 + 40) = a6;
            v18 = *(v11 + 658);
            v19 = *(v11 + 656);
            if ((v13 - 1) <= v18)
            {
              ++v19;
            }

            *(v11 + 640) = v19;
            if ((v18 + 1) % v13)
            {
              *(v11 + 644) = 0;
              v12 = sub_297E96A20(v15, 32, 0, 0);
            }

            else
            {
              v20 = *(v15 + 248);
              *(v11 + 644) = 2;
              v21 = *(v15 + 2720);
              if (v20 <= 0xFE)
              {
                v22 = 1;
              }

              else
              {
                v22 = 3;
              }

              phOsalNfc_SetMemory();
              v23 = *(v28 + 2720);
              v24 = *(v28 + 240);
              v25 = v13 - v22;
              phOsalNfc_MemCopy();
              v12 = sub_297E96A20(v28, 33, v32, v13);
              *(v28 + 252) += v25;
            }

            if (v12 != 13)
            {
              *v28 = 0;
            }
          }
        }

        else
        {
          v12 = 31;
        }
      }

      else
      {
        v12 = 152;
      }
    }
  }

  else
  {
    v12 = 49;
  }

  sub_297E4DFAC(0, &v31, 8u, 5u, "phFriNfc_T5T_WrNdef");
  v26 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t sub_297E9855C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 8u, 5u, "phFriNfc_T5T_ConvertToReadOnlyNdef");
  sub_297E57170(v9, &v8);
  v5 = v8;
  if (v8)
  {
    if (a2)
    {
      if (*(v8 + 665) == 4)
      {
        *(v8 + 32) = a2;
        *(v5 + 40) = a3;
        *v5 = 4;
        *(v5 + 640) = 0;
        v6 = sub_297E96A20(v5, 32, 0, 0);
        if (v6 != 13)
        {
          *v8 = 0;
        }
      }

      else
      {
        v6 = 51;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 49;
  }

  sub_297E4DFAC(0, &v9, 8u, 5u, "phFriNfc_T5T_ConvertToReadOnlyNdef");
  return v6;
}

uint64_t sub_297E98634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v56 = 0;
  v57 = a1;
  sub_297E4E1B4(0, &v57, 8u, 5u, "phFriNfc_T5T_H_ProcessDynamicRdNdef");
  sub_297E57170(v57, &v56);
  if (!a4)
  {
    return sub_297E4DFAC(0, &v57, 8u, 5u, "phFriNfc_T5T_H_ProcessDynamicRdNdef");
  }

  v7 = v56;
  if (!v56)
  {
    return sub_297E4DFAC(0, &v57, 8u, 5u, "phFriNfc_T5T_H_ProcessDynamicRdNdef");
  }

  if (a5)
  {
    goto LABEL_4;
  }

  v10 = *(a4 + 8);
  *(v56 + 264) = v10;
  v8 = *(v7 + 644);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (*(v7 + 266))
  {
    a5 = 255;
  }

  v12 = v11;
  if (v11)
  {
    v13 = a5 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13 && v8 != 2)
  {
    v15 = 0;
    LOBYTE(v16) = 0;
    v17 = v7 + 267;
    v18 = word_2A18BE716;
    v19 = word_2A18BE714;
    v20 = (v7 + 646);
    a5 = 245;
    while (1)
    {
      if (v8 > 2)
      {
        if (v8 != 3)
        {
          if (v8 != 4)
          {
            goto LABEL_83;
          }

          v8 = 0;
          LOBYTE(v16) = *(v7 + 658);
          goto LABEL_60;
        }

        if (v19 == 2)
        {
          v18 |= *(v17 + v16);
          word_2A18BE716 = v18;
          word_2A18BE714 = 0;
          if (v18 < 0xFFu)
          {
            goto LABEL_81;
          }
        }

        else
        {
          if (v19 == 1)
          {
            v18 = *(v17 + v16) << 8;
            word_2A18BE716 = v18;
            v19 = 2;
            word_2A18BE714 = 2;
            goto LABEL_47;
          }

          if (v19)
          {
            goto LABEL_82;
          }

          v8 = *(v17 + v16);
          if (!*(v17 + v16))
          {
            v19 = 0;
            goto LABEL_60;
          }

          if (v8 == 255)
          {
            v19 = 1;
            word_2A18BE714 = 1;
LABEL_47:
            v8 = 3;
            goto LABEL_60;
          }

          word_2A18BE716 = *(v17 + v16);
          word_2A18BE714 = 0;
          v18 = v8;
        }

        v23 = *(v7 + 652);
        v24 = *(v7 + 665);
        v25 = __CFADD__(v24, v23);
        v26 = v23 + v24;
        if (v25)
        {
          v27 = 0;
        }

        else
        {
          v27 = v26;
        }

        v28 = *(v7 + 662);
        v29 = v15 + v28 * *(v7 + 642);
        if (v27 > v29 && v27 + ~v29 < v18)
        {
          goto LABEL_81;
        }

        v19 = 0;
        v30 = v18 + v29;
        *(v7 + 658) = v30 % v28;
        *(v7 + 656) = v30 / v28;
        v16 = v18 + v15;
        if (v16 >= v12)
        {
          LOBYTE(v16) = v12;
        }

        v8 = 4;
      }

      else
      {
        if (v8)
        {
          if (v8 != 1)
          {
            goto LABEL_83;
          }

          if (v19)
          {
            if (v19 != 1)
            {
              if (v19 == 2)
              {
                v35 = *v20;
                v36 = *(v17 + v16);
                v22 = v35 | v36;
                *v20 = v35 | v36;
                word_2A18BE714 = 0;
                if ((v35 | v36) > 0xFE)
                {
                  v37 = 0;
                  goto LABEL_75;
                }

                goto LABEL_81;
              }

LABEL_82:
              a5 = 245;
              goto LABEL_83;
            }

            *v20 = *(v17 + v16) << 8;
            v19 = 2;
          }

          else
          {
            v22 = *(v17 + v16);
            if (v22 != 255)
            {
              if (*(v17 + v16))
              {
                *v20 = v22;
                v20 = &word_2A18BE714;
              }

              *v20 = 0;
              v37 = 1;
LABEL_75:
              v38 = *(v7 + 652);
              v39 = *(v7 + 665);
              v25 = __CFADD__(v39, v38);
              v40 = v38 + v39;
              if (v25)
              {
                v40 = 0;
              }

              v41 = v15 + *(v7 + 662) * *(v7 + 642);
              if (v40 <= v41)
              {
                v42 = 0;
              }

              else
              {
                v42 = v40 + ~v41;
              }

              *(v7 + 648) = v42;
              if (v42 < v22)
              {
LABEL_81:
                a5 = 22;
                goto LABEL_83;
              }

              if (*(v7 + 545) == 1)
              {
                v52 = 1;
              }

              else
              {
                v52 = 2 * (v22 != 0);
              }

              *(v7 + 545) = v52;
              if (*(v7 + 660) >= v22)
              {
                *(v7 + 660) = 0;
              }

              if (v42 >= 0xFFFF)
              {
                v53 = 0xFFFF;
              }

              else
              {
                v53 = v42;
              }

              *(v7 + 648) = v53;
              v54 = v37 ^ 1;
              if (v42 < 0xFF)
              {
                v54 = 1;
              }

              if ((v54 & 1) == 0)
              {
                v55 = v53 - 2;
                if (v42 == 255)
                {
                  v55 = 254;
                }

                *(v7 + 648) = v55;
              }

LABEL_22:
              a5 = 0;
              *(v7 + 544) = 9;
              goto LABEL_83;
            }

            v19 = 1;
          }

          word_2A18BE714 = v19;
        }

        else
        {
          v21 = *(v17 + v16);
          if (v21 != 3)
          {
            if (v21 == 254)
            {
              goto LABEL_81;
            }

            goto LABEL_47;
          }

          *(v7 + 658) = v16;
          *(v7 + 656) = *(v7 + 642);
        }

        v8 = 1;
      }

LABEL_60:
      LOBYTE(v16) = v16 + 1;
      v15 = v16;
      if (v16 >= v12)
      {
        goto LABEL_61;
      }
    }
  }

  if (a5)
  {
LABEL_4:
    LOBYTE(v8) = 0;
    v9 = v7;
    goto LABEL_5;
  }

  if (v8 == 2)
  {
    goto LABEL_22;
  }

LABEL_61:
  if (v8 == 4)
  {
    v31 = *(v7 + 656);
    *(v7 + 642) = v31;
    v32 = *(v7 + 662);
    if (v32 - 1 == *(v7 + 658))
    {
      LOBYTE(v8) = 0;
      *(v7 + 642) = ++v31;
    }

    else
    {
      LOBYTE(v8) = 4;
    }
  }

  else
  {
    v31 = *(v7 + 642) + 1;
    *(v7 + 642) = v31;
    v32 = *(v7 + 662);
  }

  v33 = *(v7 + 652);
  v34 = *(v7 + 665);
  a5 = 22;
  if (v33 > ~v34 || v33 + v34 <= v32 * v31)
  {
LABEL_83:
    *(v7 + 644) = 0;
    v9 = v7;
    goto LABEL_84;
  }

  a5 = sub_297E981BC(v7);
  v9 = v56;
LABEL_5:
  *(v9 + 644) = v8;
  if (a5 == 13)
  {
    return sub_297E4DFAC(0, &v57, 8u, 5u, "phFriNfc_T5T_H_ProcessDynamicRdNdef");
  }

LABEL_84:
  v43 = *(v7 + 646);
  if (*(v7 + 646))
  {
    v44 = a5;
  }

  else
  {
    v44 = 157;
  }

  if (v44)
  {
    goto LABEL_107;
  }

  v45 = *(v9 + 248);
  if (v45 > v43)
  {
    *(v9 + 248) = v43;
    v45 = v43;
  }

  v46 = *(v7 + 660);
  v47 = *(v9 + 560);
  if (*(v7 + 660))
  {
    if (!*(v9 + 560))
    {
      if (v45 > v46)
      {
        *(v9 + 248) = v46;
      }

      goto LABEL_101;
    }
  }

  else if (!*(v9 + 560))
  {
    v44 = 26;
    goto LABEL_107;
  }

  *(v7 + 660) = v43;
  if (v43 <= 0xFE)
  {
    v48 = 2;
  }

  else
  {
    v48 = 4;
  }

  v25 = v48 + *(v7 + 658) >= *(v7 + 662);
  v49 = *(v7 + 656);
  if (v25)
  {
    ++v49;
  }

  *(v7 + 640) = v49;
LABEL_101:
  if (*(v7 + 663))
  {
    v50 = sub_297E97C20(v9);
  }

  else
  {
    v50 = sub_297E96A20(v9, 32, 0, 0);
  }

  v44 = v50;
  if (v50 != 13)
  {
    v9 = v56;
LABEL_107:
    sub_297E97D6C(v9, v44);
  }

  return sub_297E4DFAC(0, &v57, 8u, 5u, "phFriNfc_T5T_H_ProcessDynamicRdNdef");
}

uint64_t sub_297E98B4C(uint64_t a1, uint64_t a2)
{
  Memory_Typed = 0;
  v13 = a1;
  v11 = 0;
  sub_297E4E1B4(0, &v13, 8u, 5u, "phFriNfc_NDEF_Init");
  sub_297E57170(v13, &Memory_Typed);
  sub_297E4F0E8(v13, &v11);
  v3 = 1;
  if (a2)
  {
    if (v13)
    {
      v4 = v11;
      if (v11)
      {
        if (!Memory_Typed)
        {
          v5 = *(v11 + 9792);
          Memory_Typed = phOsalNfc_GetMemory_Typed();
          if (!Memory_Typed)
          {
            v3 = 12;
            goto LABEL_8;
          }

          v4 = v11;
        }

        v6 = *(v4 + 9792);
        phOsalNfc_SetMemory();
        v8 = Memory_Typed;
        v7 = v13;
        *(Memory_Typed + 224) = a2;
        *(v8 + 2712) = v7;
        v9 = v11;
        *(v8 + 2720) = *(v11 + 9792);
        *(v8 + 2728) = v9;
        sub_297E9F46C(v7, v8);
        v3 = 0;
      }
    }
  }

LABEL_8:
  sub_297E4DFAC(0, &v13, 8u, 5u, "phFriNfc_NDEF_Init");
  return v3;
}

uint64_t sub_297E98C58(uint64_t a1, char a2)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 8u, 5u, "phFriNfc_NDEF_Reset");
  sub_297E57170(v11, &v10);
  v3 = v10;
  if (v10)
  {
    *(v10 + 240) = v10 + 266;
    *(v3 + 248) = 260;
    *(v3 + 264) = 260;
    v4 = *(*(v3 + 224) + 4);
    v5 = v4 > 0x13;
    v6 = (1 << v4) & 0x8E800;
    if (!v5 && v6 != 0)
    {
      *(v3 + 672) = v3 + 536;
      *(v3 + 536) = 0;
      *(v3 + 664) = 0;
    }

    v8 = 0;
    *(v3 + 528) = v3 + 536;
    *(v3 + 65) = a2;
  }

  else
  {
    v8 = 49;
  }

  sub_297E4DFAC(0, &v11, 8u, 5u, "phFriNfc_NDEF_Reset");
  return v8;
}

uint64_t sub_297E98D38(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_NDEF_SendData");
  if (a1 && (v4 = *(a1 + 264), *(a1 + 264)) && (v5 = *(a1 + 526), *(a1 + 526)) && (v6 = *(a1 + 224)) != 0)
  {
    v7 = *(a1 + 232);
    *(a1 + 568) = v7;
    v8 = *(v6 + 4);
    if (v8 == 16 || v8 == 12)
    {
      *(a1 + 572) = *(a1 + 266);
      v13 = v5 - 1;
      if ((v7 & 0xFFFFFFFE) == 0x60)
      {
        v10 = *(v6 + 18);
        *(a1 + 600) = a1 + 2765;
        if (v10 != 7 && v10 != 4)
        {
          *(a1 + 608) = v13;
          v11 = 20;
          goto LABEL_15;
        }

        v14 = *(a1 + 2720);
        phOsalNfc_MemCopy();
        v15 = *(a1 + 2720);
        phOsalNfc_MemCopy();
        v13 = v5 + 3;
        v4 = *(a1 + 264);
        v6 = *(a1 + 224);
      }

      else
      {
        *(a1 + 600) = a1 + 267;
      }
    }

    else
    {
      *(a1 + 600) = a1 + 266;
      v13 = v5;
    }

    *(a1 + 608) = v13;
    *(a1 + 616) = a1 + 266;
    *(a1 + 624) = v4;
    *(a1 + 574) = 500;
    v11 = sub_297EA14F4(v6, a1 + 568, a2, *(a1 + 2728));
  }

  else
  {
    v11 = 1;
  }

LABEL_15:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_NDEF_SendData");
  return v11;
}

uint64_t sub_297E98EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_NDEF_Reconnect");
  v6 = 1;
  if (a1 && a2 && a3)
  {
    v7 = *(a1 + 2728);
    if (v7 && ((v8 = v7 + 188, !sub_297E55558(v7[386], v7[188])) ? (v9 = *v8) : (v9 = 0, *v8 = 0, v7[189] = 0), v12 = v9, !sub_297ECD484(*(a1 + 2728), &v11, &v12, 0)))
    {
      v6 = phLibNfc_RemoteDev_Connect(v7[1223], v11, a2, a1);
    }

    else
    {
      v6 = 255;
    }
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_NDEF_Reconnect");
  return v6;
}

uint64_t sub_297E98F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_NDEF_Connect");
  v6 = 1;
  if (a1 && a2 && a3)
  {
    v7 = *(a1 + 2728);
    if (v7)
    {
      v6 = phLibNfc_RemoteDev_Connect(*(v7 + 9784), a3, a2, a1);
    }

    else
    {
      v6 = 255;
    }
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_NDEF_Connect");
  return v6;
}

uint64_t sub_297E9903C(uint64_t a1, int a2)
{
  v15 = a2;
  v14 = 0;
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_CoreInit");
  if (a1)
  {
    sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_CoreInitialiseContext");
    v4 = *(a1 + 956);
    phOsalNfc_SetMemory();
    *(a1 + 52) = 0;
    *(a1 + 56) = 0;
    *a1 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 47) = 0;
    sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_CoreInitRxData");
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 64) = 0u;
    memset_pattern16((a1 + 112), &unk_297F13230, 0xCuLL);
    *(a1 + 132) = 0;
    *(a1 + 124) = 0;
    *(a1 + 140) = 0;
    sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_CoreInitRxData");
    *(a1 + 840) = 0;
    *(a1 + 852) = 10000;
    *(a1 + 848) = 0;
    *(a1 + 856) = 0;
    *(a1 + 868) = 2000;
    *(a1 + 864) = 0;
    *(a1 + 872) = 0;
    *(a1 + 884) = 2000;
    *(a1 + 880) = 0;
    v5 = &gphNfc_DebugInfo_Sec;
    if (!*(a1 + 956))
    {
      v5 = &gphNfc_DebugInfo_Prim;
    }

    *v5 &= ~8u;
    phOsalNfc_SetMemory();
    v6 = *(a1 + 956);
    phOsalNfc_SetMemory();
    v7 = *(a1 + 956);
    phOsalNfc_SetMemory();
    *(a1 + 952) = 0;
    sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_CoreInitialiseContext");
    *(a1 + 956) = a2;
    v8 = sub_297F07378(*(a1 + 792), *(a1 + 800), 0, sub_297E99340, a1);
    if (v8)
    {
      v9 = v8;
      v10 = "phHciNfc_CoreInit:Failed to register HCI Receive Callback with NCI";
    }

    else
    {
      sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_CoreInit:Receive Data Registration Successful with NCI");
      LODWORD(v14) = 0;
      BYTE4(v14) = 1;
      v12 = sub_297E9D594(a1, &v14, sub_297E9E6C4, a1);
      if (v12)
      {
        v9 = v12;
        v10 = "phHciNfc_CoreInit:Failed to register Callback for Admin pipe commands!";
      }

      else
      {
        sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_CoreInit:Adm pipe Callback for Rx Cmds registered!");
        LODWORD(v14) = 1;
        BYTE4(v14) = 1;
        v9 = sub_297E9D594(a1, &v14, sub_297E9E2C4, a1);
        if (!v9)
        {
          sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_CoreInit:Adm pipe Callback for Rx Events registered!");
          goto LABEL_13;
        }

        v10 = "phHciNfc_CoreInit:Failed to register Callback for Admin pipe events!";
      }
    }

    v11 = (a1 + 956);
  }

  else
  {
    v10 = "phHciNfc_CoreInit:Invalid Context";
    v9 = 1;
    v11 = &v15;
  }

  sub_297E4E0B0(1, v11, 7u, 1u, v10);
LABEL_13:
  sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_CoreInit");
  return v9;
}

uint64_t sub_297E99340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = 0;
  Memory_Typed = 0;
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_CoreRecvCB");
  if (!a1 || (v6 = *(a1 + 960)) == 0)
  {
    v9 = "phHciNfc_CoreRecvCB:Invalid HCI Context received from Lower Layer ";
    v10 = 2;
    v11 = a1;
    goto LABEL_10;
  }

  v7 = (a1 + 956);
  if (!a2)
  {
    v9 = "phHciNfc_CoreRecvCB:Invalid Information received from lower layer ";
    goto LABEL_9;
  }

  if (a3)
  {
    sub_297E4E0B0(1, a1 + 956, 7u, 1u, " phHciNfc_CoreRecvCB:Failed Status from lower layer");
    sub_297EEAEB4(a1);
    v8 = *(a1 + 184);
    if (v8)
    {
      *(a1 + 184) = 0;
      v8(*(a1 + 192), a3, 0);
    }

    goto LABEL_11;
  }

  v13 = *(a1 + 956);
  v14 = **(a2 + 8);
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_GetHciPipeIndex");
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(a1 + 8 * v15 + 64);
    if (v17)
    {
      break;
    }

LABEL_17:
    if (++v15 == 6)
    {
      goto LABEL_20;
    }
  }

  if (((*v17 ^ v14) & 0x7F) != 0)
  {
    ++v16;
    goto LABEL_17;
  }

  v16 = v15;
LABEL_20:
  sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_GetHciPipeIndex");
  v18 = *(a2 + 16);
  if (v18 > 0x104)
  {
    v32 = " phHciNfc_CoreRecvCB:HCP Packet is bigger than PHHCI_HCP_MAX_PACKET_SIZE";
    goto LABEL_37;
  }

  v19 = sub_297ED646C(a1, a1, v18, v16);
  if (!v19)
  {
    v32 = " phHciNfc_CoreRecvCB:HCI Core Receive- Failed To Allocate Memory for Node";
LABEL_37:
    sub_297E4E0B0(1, a1 + 956, 7u, 1u, v32);
    if ((v14 & 0x80) != 0)
    {
      goto LABEL_23;
    }

LABEL_38:
    sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_CoreRecvCB:Buffered Received Chained HCI packets");
    v33 = *(v6 + 6344);
    if ((v33 || *(v6 + 6360)) && *(a1 + 968) == 1)
    {
      *(a1 + 968) = 0;
      v34 = *(a1 + 840);
      if (!v34 || v34 == 0xFFFFFFFFFFFFLL)
      {
        v9 = "phHciNfc_CoreRecvCB: SE Transceive Timer Already deleted";
        goto LABEL_9;
      }

      if (!v33 || (v35 = *(v6 + 756), v35 < 0x7D0))
      {
        v35 = *(v6 + 640);
        if (v35 >> 4 < 0x271)
        {
          v35 = 10000;
        }
      }

      *(a1 + 852) = v35;
      if (*(v6 + 492) == 1 && *(v6 + 2992) == 1 && v35 <= 0xAFC7 && !*(v6 + 2994))
      {
        *(a1 + 852) = 45000;
      }

      sub_297EFD338(*(a1 + 956), v34);
      v36 = *(a1 + 956);
      v37 = *(a1 + 840);
      v38 = *(a1 + 852);
      if (phOsalNfc_Timer_Start())
      {
        v39 = *(a1 + 956);
        v40 = *(a1 + 840);
        phOsalNfc_Timer_Delete();
        *(a1 + 840) = 0xFFFFFFFFFFFFLL;
        v9 = "phHciNfc_CoreRecvCB: SE TxRx Timer Start Failed";
        goto LABEL_9;
      }

      v41 = *(a1 + 852);
      sub_297E50EBC(1, a1 + 956, 7u, 4u, "phHciNfc_CoreRecvCB:Hci Response Timer Restarted for Timeout");
    }

    goto LABEL_11;
  }

  v20 = v19;
  v21 = *v7;
  v22 = *(a2 + 8);
  v23 = *(a2 + 16);
  phOsalNfc_MemCopy();
  *(v20 + 260) = *(a2 + 16);
  if ((v14 & 0x80) == 0)
  {
    goto LABEL_38;
  }

LABEL_23:
  *(a1 + 968) = 1;
  Memory_Typed = 0;
  if (*(a1 + 4 * v16 + 124) && (v24 = *v7, (Memory_Typed = phOsalNfc_GetMemory_Typed()) == 0))
  {
    sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_AnySetParameter:Memory Allocation Failed");
    return 12;
  }

  else
  {
    v25 = sub_297ED6614(a1, a1, &v42, v16);
    if (BYTE2(v42) == 2)
    {
      v26 = *(a1 + 872);
      if (v26)
      {
        if (v26 != 0xFFFFFFFFFFFFLL)
        {
          v27 = *(a1 + 956);
          phOsalNfc_Timer_Stop();
          v28 = *(a1 + 956);
          v29 = *(a1 + 872);
          phOsalNfc_Timer_Delete();
          sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_CoreRecvCB : HCI Cmd Rsp Timer deleted successfully");
          *(a1 + 872) = 0;
          v30 = &gphNfc_DebugInfo_Sec;
          if (!*(a1 + 956))
          {
            v30 = &gphNfc_DebugInfo_Prim;
          }

          *v30 &= ~8u;
        }
      }
    }

    if (v25)
    {
      if (Memory_Typed)
      {
        v31 = *v7;
        phOsalNfc_FreeMemory();
        Memory_Typed = 0;
      }

      v9 = " phHciNfc_CoreRecvCB:HCI Core - HCI Packet Extraction Failed";
LABEL_9:
      v10 = 1;
      v11 = a1 + 956;
LABEL_10:
      sub_297E4E0B0(v10, v11, 7u, 1u, v9);
    }

    else
    {
      sub_297ED62FC(a1, a1, v16);
      sub_297E50DB0(1, a1 + 956, 7u, 4u, "Rx HCP:PipeID");
      sub_297E50DB0(1, a1 + 956, 7u, 4u, "Rx HCP:MsgType");
      sub_297E50DB0(1, a1 + 956, 7u, 4u, "Rx HCP:Ins");
      sub_297E4E880(1, a1 + 956, 7u, 4u, "Rx HCP:Data", Memory_Typed);
      sub_297EEB1EC(a1, &v42, 0);
      if (Memory_Typed)
      {
        phOsalNfc_FreeMemory();
        Memory_Typed = 0;
      }
    }

LABEL_11:
    sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_CoreRecvCB");
  }

  return a3;
}

uint64_t sub_297E99840(uint64_t a1)
{
  v11 = 0;
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_CoreDeInit");
  if (a1)
  {
    sub_297E99A28(a1);
    if (*(a1 + 152))
    {
      sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_CoreDeInit: Releasing HCI send buffer memory");
      v2 = *(a1 + 152);
      if (*(v2 + 8))
      {
        v3 = *(a1 + 956);
        v4 = *(v2 + 8);
        phOsalNfc_FreeMemory();
        *(*(a1 + 152) + 8) = 0;
      }

      v5 = *(a1 + 956);
      phOsalNfc_FreeMemory();
      *(a1 + 152) = 0;
    }

    v6 = *(a1 + 792);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *(&unk_2A18BDDC0 + 14 * v8 + 4);
        if (v7)
        {
          break;
        }

        v7 = 1;
        v8 = 1;
      }

      while (v9 != v6);
      if (v9 == v6)
      {
        sub_297F07378(v6, *(a1 + 800), 1, sub_297E99340, a1);
      }
    }

    sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_CoreDeInit:phHciNfc_CoreRecvCB unregistered with NCI");
    LODWORD(v11) = 0;
    BYTE4(v11) = 1;
    sub_297E9DCD0(a1, &v11, sub_297E9E6C4);
    sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_CoreDeInit:phHciNfc_ReceiveAdminNotifyCmd unregistered for ADM Cmds");
    LODWORD(v11) = 1;
    BYTE4(v11) = 1;
    sub_297E9DCD0(a1, &v11, sub_297E9E2C4);
    sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_CoreDeInit:phHciNfc_ReceiveAdminNotifyEvt unregistered for ADM Events");
    sub_297E9E0F8(a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 7u, 1u, "phHciNfc_CoreDeInit:Failed,Invalid Context");
  }

  return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_CoreDeInit");
}

uint64_t sub_297E99A28(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_CoreAbortAllTran");
  if (a1)
  {
    v2 = *(a1 + 956);
    phOsalNfc_SetMemory();
    *a1 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    if (*(a1 + 944))
    {
      v3 = *(a1 + 956);
      phOsalNfc_FreeMemory();
      *(a1 + 944) = 0;
    }

    sub_297E99BD8(a1);
    v4 = *(a1 + 936);
    if (v4 && v4 != 0xFFFFFFFFFFFFLL)
    {
      v5 = *(a1 + 956);
      phOsalNfc_Timer_Stop();
      v6 = *(a1 + 956);
      v7 = *(a1 + 936);
      phOsalNfc_Timer_Delete();
      v8 = *(a1 + 956);
      phOsalNfc_SetMemory();
      *(a1 + 904) = 0;
      *(a1 + 936) = 0;
      *(a1 + 892) = -86;
    }

    *(a1 + 953) = 0;
  }

  else
  {
    sub_297E4E0B0(2, 0, 7u, 1u, "phHciNfc_CoreAbortAllTran: Invalid HCI Context");
  }

  return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_CoreAbortAllTran");
}

uint64_t sub_297E99B38(uint64_t a1, uint64_t a2, int a3)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_GetAllocatedPipeIndex");
  if (a2)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(a2 + 64 + 8 * v6);
      if (v7)
      {
        if ((*v7 & 0x7F) == a3)
        {
          break;
        }
      }

      if (++v6 == 6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    LOBYTE(v6) = -1;
  }

  sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_GetAllocatedPipeIndex");
  return v6;
}

uint64_t sub_297E99BD8(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_CoreClearRxBuffers");
  if (a1)
  {
    for (i = 0; i != 6; ++i)
    {
      sub_297ED62FC(a1, a1, i);
      *(a1 + 8 * i + 64) = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 7u, 1u, "phHciNfc_CoreClearRxBuffers: Invalid HCI Context");
  }

  return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_CoreClearRxBuffers");
}

uint64_t sub_297E99C88(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v46 = 0;
  v47 = 0;
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_CoreSend");
  if (!a1 || !a2)
  {
    v21 = "phHciNfc_CoreSend:Invalid HCI Context or Send params";
    v14 = 1;
    v22 = 2;
    v23 = a1;
    goto LABEL_28;
  }

  v8 = a2[1];
  BYTE1(v46) = a2[1];
  v9 = a2[2];
  BYTE2(v46) = a2[2];
  LOBYTE(v46) = *a2;
  HIDWORD(v46) = *(a2 + 1);
  v47 = *(a2 + 1);
  if (v46 == 1 && v9 == 1 && v8 == 12)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  v13 = sub_297E76A8C(*(a1 + 792), &v46, *(a1 + 800), sub_297E9A1F0, a1, *(a1 + 953), v12);
  if (v13 != 111)
  {
    v14 = v13;
    if (v13 == 13)
    {
      *(a1 + 10) = BYTE2(v46);
      *(a1 + 8) = v46;
      *(a1 + 12) = HIDWORD(v46);
      *(a1 + 16) = v47;
      if (!a2[2])
      {
        *(a1 + 884) = 2000;
        sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_CreateHCICmdRspTimer");
        v15 = *(a1 + 956);
        v16 = phOsalNfc_Timer_Create();
        *(a1 + 872) = v16;
        if (v16 != 0xFFFFFFFFFFFFLL && v16)
        {
          sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_CreateHCICmdRspTimer : HCI Cmd Rsp Timer Created successfully");
          sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_CreateHCICmdRspTimer");
          v38 = &gphNfc_DebugInfo_Sec;
          if (!*(a1 + 956))
          {
            v38 = &gphNfc_DebugInfo_Prim;
          }

          *v38 &= ~8u;
          v39 = *(a1 + 872);
          v40 = *(a1 + 884);
          v41 = *(a1 + 960);
          if (phOsalNfc_Timer_Start())
          {
            sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phLibNfc_HciDataSend: HCI Cmd Rsp Timer Start Failed");
            v42 = *(a1 + 956);
            v43 = *(a1 + 872);
            v44 = phOsalNfc_Timer_Delete();
            *(a1 + 872) = 0;
            if (v44)
            {
              sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phLibNfc_HciDataSend: HCI Cmd Rsp Timer Delete Failed");
            }

            v14 = 255;
            goto LABEL_19;
          }

          v45 = *(a1 + 884);
          sub_297E50DB0(1, a1 + 956, 7u, 4u, "phLibNfc_HciDataSend: HCI Cmd Rsp Timer Started with Timeout");
        }

        else
        {
          sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_CreateHCICmdRspTimer : HCI Cmd Rsp Timer Create failed");
          sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_CreateHCICmdRspTimer");
        }
      }

      v14 = 13;
LABEL_19:
      *(a1 + 32) = a3;
      *(a1 + 40) = a4;
      sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_CoreSend:HCP Packet Sent to NCI ");
      v17 = *a2;
      sub_297E50DB0(1, a1 + 956, 7u, 4u, "Tx HCP:PipeID");
      v18 = a2[2];
      sub_297E50DB0(1, a1 + 956, 7u, 4u, "Tx HCP:MsgType");
      v19 = a2[1];
      sub_297E50DB0(1, a1 + 956, 7u, 4u, "Tx HCP:Ins");
      v20 = *(a2 + 1);
      sub_297E4E880(1, a1 + 956, 7u, 4u, "Tx HCP:Data", *(a2 + 1));
      *(a1 + 952) = 0;
      goto LABEL_29;
    }

    v21 = "phHciNfc_CoreSend: HCI packet Send Failed ";
    v23 = a1 + 956;
    v22 = 1;
LABEL_28:
    sub_297E4E0B0(v22, v23, 7u, 1u, v21);
    goto LABEL_29;
  }

  *a1 = 0;
  *(a1 + 892) = 85;
  v24 = *(a1 + 936);
  if (v24 && v24 != 0xFFFFFFFFFFFFLL)
  {
    v25 = *(a1 + 956);
    phOsalNfc_Timer_Delete();
    *(a1 + 936) = 0xFFFFFFFFFFFFLL;
  }

  v26 = *(a1 + 956);
  v27 = phOsalNfc_Timer_Create();
  *(a1 + 936) = v27;
  if (v27 != 0xFFFFFFFFFFFFLL && v27)
  {
    v29 = *(a1 + 952);
    sub_297E50EBC(1, a1 + 956, 7u, 4u, "phHciNfc:NCI BUSY,Retry Cnt=");
    if (*(a1 + 952) > 4u)
    {
      v36 = &gphNfc_DebugInfo_Sec;
      if (!*(a1 + 956))
      {
        v36 = &gphNfc_DebugInfo_Prim;
      }

      v36[1] |= 0x4000000u;
      sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_CoreSend:Maximum HCI Send Retry Count reached");
      *(a1 + 952) = 0;
      v37 = *(a1 + 960);
      if (v37)
      {
        sub_297E96818(*(v37 + 9784), 202);
      }
    }

    else
    {
      sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_CacheHciPacket");
      *(a1 + 920) = a3;
      *(a1 + 928) = a4;
      v30 = *a2;
      *(a1 + 912) = *(a2 + 2);
      *(a1 + 896) = v30;
      *(a1 + 904) = *(a2 + 1);
      sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_CacheHciPacket");
      v31 = *(a1 + 956);
      v32 = *(a1 + 936);
      v33 = *(a1 + 960);
      if (!phOsalNfc_Timer_Start())
      {
        sub_297E50DB0(1, a1 + 956, 7u, 4u, "phHciNfc_CoreSend:dwHciResendPacketTimerId Started, Timeout");
        v14 = 13;
        goto LABEL_29;
      }

      sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_CoreSend:HCI Resend Packet Timer Start failed");
      v34 = *(a1 + 956);
      v35 = *(a1 + 936);
      phOsalNfc_Timer_Delete();
      *(a1 + 936) = 0;
      *(a1 + 952) = 0;
    }

    v14 = 255;
  }

  else
  {
    sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_CoreSend:HCI Resend Packet Timer Create failed");
    *(a1 + 952) = 0;
    v14 = 12;
  }

LABEL_29:
  sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_CoreSend");
  return v14;
}

uint64_t sub_297E9A1F0(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_HciCoreLowerLayerSendCb");
  if (a1)
  {
    if (a2)
    {
      v4 = "phHciNfc_HciCoreLowerLayerSendCb: HCI Tx Failed";
    }

    else
    {
      v4 = "phHciNfc_HciCoreLowerLayerSendCb: HCI Send Complete";
    }

    sub_297E4E0B0(1, a1 + 956, 7u, 4u, v4);
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    *a1 = 0;
    *(a1 + 12) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    if (v6)
    {
      if (a2)
      {
        v7 = 255;
      }

      else
      {
        v7 = 0;
      }

      v6(v5, v7);
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 7u, 1u, "phHciNfc_HciCoreLowerLayerSendCb:Invalid HCI Context received from Lower Layer ");
  }

  return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_HciCoreLowerLayerSendCb");
}

uint64_t sub_297E9A2CC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a2, 4u, 5u, "phHciNfc_HciCmdRspCb");
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
  if (v5 != a2)
  {
LABEL_6:
    v6 = "phHciNfc_HciCmdRspCb :Invalid Context";
LABEL_7:
    sub_297E4E0B0(2, a2, 4u, 1u, v6);
    goto LABEL_8;
  }

  v8 = *(a2 + 512);
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = *(&unk_2A18BDDC0 + 14 * v10 + 13);
    if (v9)
    {
      break;
    }

    v9 = 1;
    v10 = 1;
  }

  while (v11 != v8);
  if (v11 != v8)
  {
LABEL_16:
    v6 = "phHciNfc_HciCmdRspCb :Invalid or NULL pHciContext";
    goto LABEL_7;
  }

  v12 = &gphNfc_DebugInfo_Sec;
  if (!*(v8 + 956))
  {
    v12 = &gphNfc_DebugInfo_Prim;
  }

  *v12 |= 8u;
  sub_297E4E0B0(1, v8 + 956, 7u, 1u, "phHciNfc_HciCmdRspCb : HCI Command Response Packet Timer Expired");
  v13 = *(v8 + 956);
  phOsalNfc_Timer_Stop();
  v14 = *(v8 + 956);
  phOsalNfc_Timer_Delete();
  sub_297E4E0B0(1, v8 + 956, 7u, 1u, "phHciNfc_HciCmdRspCb : HCI Command Response timer deleted successfully");
  *(v8 + 884) = 2000;
  *(v8 + 872) = 0xFFFFFFFFFFFFLL;
  v16 = *(v8 + 184);
  v15 = *(v8 + 192);
  *(v8 + 953) = 0;
  *(v8 + 184) = 0;
  *(v8 + 192) = 0;
  sub_297E96818(*(a2 + 9784), 44);
  if (*(a2 + 754) == 1)
  {
    *(a2 + 754) = 0;
    v17 = 218;
  }

  else
  {
    sub_297E8CBD4(*(a2 + 3088), 0);
    v17 = 255;
  }

  if (v16)
  {
    v16(v15, v17, 0);
  }

LABEL_8:

  return sub_297E4DFAC(2, a2, 4u, 5u, "phHciNfc_HciCmdRspCb");
}

uint64_t sub_297E9A4B0(uint64_t a1, uint64_t a2)
{
  v19 = 0uLL;
  v20 = 0;
  sub_297E4E1B4(2, a2, 4u, 5u, "phHciNfc_HciResendPacketCb");
  sub_297E4E0B0(2, a2, 4u, 2u, "******HCI Resend Packet Timer Expired********");
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
    v7 = *(a2 + 512);
    if (!v7)
    {
      goto LABEL_13;
    }

    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(&unk_2A18BDDC0 + 14 * v9 + 13);
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
      v11 = *(v7 + 956);
      v12 = *(v7 + 936);
      phOsalNfc_Timer_Stop();
      v13 = *(v7 + 956);
      v14 = *(v7 + 936);
      phOsalNfc_Timer_Delete();
      *(v7 + 936) = 0;
      *(v7 + 892) = -86;
      v19 = *(v7 + 896);
      v15 = *(v7 + 912);
      *(&v19 + 1) = *(v7 + 904);
      v20 = v15;
      v16 = *(v7 + 920);
      v17 = *(v7 + 928);
      if (sub_297E99C88(v7, &v19, v16, v17) == 13)
      {
        if (*(v7 + 897) == 12 && *(v7 + 898) == 1 && *(v7 + 896) == 1)
        {
          *(v7 + 184) = sub_297EED56C;
        }

        ++*(v7 + 952);
      }

      else
      {
        sub_297E4E0B0(1, v7 + 956, 7u, 4u, "phHciNfc_HciResendPacketCb:Failed to resend HCP packet");
        sub_297EEAEB4(v7);
        *(v7 + 920) = 0;
        *(v7 + 928) = 0;
        if (v16)
        {
          *(v7 + 952) = 0;
          v16(v17, 255);
          v18 = *(v7 + 956);
          phOsalNfc_SetMemory();
          *(v7 + 904) = 0;
        }
      }
    }

    else
    {
LABEL_13:
      sub_297E4E0B0(2, a2, 4u, 1u, "phHciNfc_HciResendPacketCb:Invalid or NULL pHciContext");
    }
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a2, 4u, 4u, "phHciNfc_HciResendPacketCb:Invalid Context");
  }

  return sub_297E4DFAC(2, a2, 4u, 5u, "phHciNfc_HciResendPacketCb");
}

uint64_t sub_297E9A6EC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_CoreReleaseMemory");
  if (a1)
  {
    if (*(a1 + 944))
    {
      v2 = *(a1 + 956);
      phOsalNfc_FreeMemory();
      *(a1 + 944) = 0;
    }

    v3 = *(a1 + 152);
    if (v3)
    {
      if (*(v3 + 8))
      {
        v4 = *(a1 + 956);
        v5 = *(v3 + 8);
        phOsalNfc_FreeMemory();
        *(*(a1 + 152) + 8) = 0;
      }

      v6 = *(a1 + 956);
      phOsalNfc_FreeMemory();
      *(a1 + 152) = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 7u, 1u, "phHciNfc_CoreDeInit:Failed,Invalid Context");
  }

  return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_CoreReleaseMemory");
}

uint64_t sub_297E9A7B8(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SendT3TPollCmd");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_SendT3TPollCmd:Setting up Command Info to be sent to lower layer ..");
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *&v5 = 0x100000001;
    DWORD2(v5) = 8;
    *&v6 = *(a1 + 896);
    DWORD2(v6) = *(a1 + 904);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E9B670, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SendT3TPollCmd");
  return v3;
}

uint64_t sub_297E9A8CC(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_T3TPollResp");
  if (a1)
  {
    v4 = 255;
    v5 = " T3T Poll Req Failed ..";
    if (!a2 && *(a1 + 3808))
    {
      if (*(a1 + 3800))
      {
        v5 = " T3TPoll Req sent successfully..";
        v4 = 0;
      }

      else
      {
        v4 = 255;
      }
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, v5);
    *(a1 + 4632) = v4;
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
    v4 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_T3TPollResp");
  return v4;
}

uint64_t sub_297E9A9AC(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteT3TPollSequence");
  if (a1)
  {
    if (*(a1 + 896))
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Freeing T3TPollReq Buff..");
      sub_297F0522C(a1);
    }

    if (a2)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, " Error in T3TPollReq handling ");
      sub_297E5B994(a1, a2, 0);
    }

    else
    {
      *(a1 + 800) = *(a1 + 3424);
      *(a1 + 808) = *(a1 + 3752);
      v10 = 0x100000003;
      LODWORD(v11) = 8;
      v4 = sub_297E59AEC(a1 + 936, &v10, sub_297E9B1D0, a1);
      if (v4)
      {
        a2 = v4;
        v5 = "T3T Ntf Registration failed";
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "T3T Ntf successfully Registered");
        v6 = *(a1 + 4696);
        if (v6 == 0xFFFFFFFFFFFFLL)
        {
          a2 = 0;
          goto LABEL_14;
        }

        sub_297E5A304(*(a1 + 6524), v6);
        *(a1 + 6512) = 0;
        v7 = *(a1 + 6524);
        v8 = *(a1 + 4696);
        a2 = phOsalNfc_Timer_Start();
        if (a2)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "T3T Ntf timer start failed\n");
          goto LABEL_14;
        }

        sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3u, 4u, "phNciNfc_CompleteT3TPollSequence");
        *(a1 + 3424) = 0;
        v5 = "T3T Ntf timer started\n";
      }

      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, v5);
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
    a2 = 1;
  }

LABEL_14:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CompleteT3TPollSequence");
  return a2;
}

uint64_t sub_297E9ABE8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RdrFInit");
  if (a1 && a2 && a3 && a4)
  {
    v8 = *(a2 + 12);
    if (*(a2 + 20) == 2)
    {
      if (v8 == 3 && *(a2 + 16) == 5)
      {
        v9 = 23;
LABEL_13:
        *(a2 + 4) = v9;
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid remote device!");
LABEL_16:
        v10 = 255;
LABEL_23:
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Sequence operations not set!");
        goto LABEL_24;
      }
    }

    else if (v8 == 3 && *(a2 + 16) == 5)
    {
      v9 = 24;
      goto LABEL_13;
    }

    *(a2 + 4) = 18;
    v11 = *(a3 + 7);
    *(a2 + 55) = v11;
    if ((v11 - 3) <= 0xFFFFFFFD)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Invalid BitRate..");
      goto LABEL_16;
    }

    v12 = *(a3 + 8);
    *(a2 + 56) = v12;
    if ((v12 & 0xFFFFFFFD) == 0x10)
    {
      v13 = *(a1 + 6524);
      phOsalNfc_SetMemory();
      v14 = *(a1 + 6524);
      phOsalNfc_MemCopy();
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " SensFResResp.not present.");
    }

    if (*(a2 + 4) != 18)
    {
      v10 = 0;
      goto LABEL_23;
    }

    v10 = 0;
    v15 = *(a1 + 4800);
    *v15 = sub_297E9AE08;
    v15[1] = sub_297E9AFA8;
    v15[2] = 0;
    v15[3] = sub_297EFF438;
  }

  else
  {
    sub_297E4E0B0(2, a1, 3u, 4u, " Invalid Params..");
    v10 = 1;
  }

LABEL_24:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RdrFInit");
  return v10;
}

uint64_t sub_297E9AE08(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SendFelicaReq");
  if (a1)
  {
    if (*(a1 + 4552))
    {
      v2 = *(a1 + 6524);
      phOsalNfc_SetMemory();
      if (*(a1 + 4584) && **(a1 + 4576) == *(a1 + 4584))
      {
        v3 = *(a1 + 4552);
        LODWORD(v6) = 0;
        if (sub_297E8BB50(a1, v3, (&v6 | 0xC)))
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Couldn't Get ConnId..");
          v4 = 255;
        }

        else
        {
          *&v7 = *(a1 + 4576);
          DWORD2(v7) = *(a1 + 4584);
          v4 = sub_297E57BA8(a1 + 936, &v6, a1 + 3800, *(a1 + 4566), sub_297EFF2DC, a1);
          *(a1 + 4566) = 0;
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

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SendFelicaReq");
  return v4;
}

uint64_t sub_297E9AFA8(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RecvFelicaResp");
  if (a1)
  {
    if (a2 || (v4 = *(a1 + 3808)) == 0 || (v5 = *(a1 + 3800)) == 0)
    {
      v9 = 255;
      v16 = 255;
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Data Receive Failed..");
LABEL_28:
      *(a1 + 4632) = v9;
      goto LABEL_29;
    }

    *(a1 + 4664) = v4 - 1;
    v6 = *(a1 + 4600);
    v7 = *(v5 + v4 - 1);
    if (v7 > 0xB0)
    {
      switch(v7)
      {
        case 0xB1u:
          v16 = 183;
          v8 = " Felica XchgData,PH_NCINFC_STATUS_RF_PROTOCOL_ERROR Detected by NFCC during Data Exchange ";
          goto LABEL_26;
        case 0xB2u:
          v16 = 178;
          v8 = " Felica XchgData,PH_NCINFC_STATUS_RF_TIMEOUT_ERROR Detected by NFCC during Data Exchange ";
          goto LABEL_26;
        case 0xB3u:
          v16 = 184;
          v8 = " Felica XchgData,PH_NCINFC_STATUS_RF_UNEXPECTED_DAT Detected by NFCC during Data Exchange ";
          goto LABEL_26;
      }
    }

    else
    {
      if (!*(v5 + v4 - 1))
      {
        if (v4 - 1 >= v6)
        {
          v4 = *(a1 + 4600);
        }

        else
        {
          --v4;
        }

        v16 = 0;
        v10 = *(a1 + 6524);
        v11 = *(a1 + 4592);
        goto LABEL_23;
      }

      if (v7 == 2)
      {
        v16 = 181;
        v8 = " Felica XchgData,PH_NCINFC_STATUS_RF_FRAME_CORRUPTED Detected by NFCC during Data Exchange ";
        goto LABEL_26;
      }

      if (v7 == 176)
      {
        v16 = 182;
        v8 = " Felica XchgData,PH_NCINFC_STATUS_RF_TRANSMISSION_ERROR Detected by NFCC during Data Exchange ";
LABEL_26:
        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v8);
        goto LABEL_27;
      }
    }

    v16 = 185;
    sub_297E96818(*(a1 + 6528), v7);
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, " Felica XchgData,Unknown RF related error Detected by NFCC during Data Exchange ");
    if (v4 > v6)
    {
LABEL_27:
      sub_297EFF5D8(a1, &v16);
      v9 = v16;
      goto LABEL_28;
    }

    v12 = *(a1 + 6524);
    v13 = *(a1 + 4592);
    v14 = *(a1 + 3800);
LABEL_23:
    phOsalNfc_MemCopy();
    *(a1 + 4600) = v4;
    goto LABEL_27;
  }

  v16 = 1;
  sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
LABEL_29:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RecvFelicaResp");
  return v16;
}

uint64_t sub_297E9B1D0(uint64_t a1, uint64_t a2, int a3)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_T3TPollNtf");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
    v9 = 1;
    goto LABEL_13;
  }

  v6 = *(a1 + 6524);
  v7 = *(a1 + 4696);
  phOsalNfc_Timer_Stop();
  *(a1 + 6512) = 0;
  sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3u, 4u, "phNciNfc_T3TPollNtf");
  if (!a2 || !*(a2 + 8) || a3 || !*(a2 + 16))
  {
    v8 = " T3T Notification invalid..";
    goto LABEL_9;
  }

  *(&v19 + 1) = 2049;
  v20 = a1;
  v21 = sub_297E9B1D0;
  sub_297E75DFC(a1 + 936, &v19, 3);
  if (**(a2 + 8))
  {
    v8 = " T3T Resp Not Recvd..";
LABEL_9:
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, v8);
    v9 = 255;
    goto LABEL_10;
  }

  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_UpdateRemDevInf");
  v12 = *(a2 + 8);
  if (v12)
  {
    if (*(v12 + 1))
    {
      v13 = *(a1 + 4552);
      if (v13)
      {
        v14 = *(v12 + 2);
        *(v13 + 56) = v14;
        if ((v14 & 0xFFFFFFFD) != 0x10)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " SensFResResp.not present in T3T Poll Ntf recvd.");
          v9 = 255;
          goto LABEL_20;
        }

        v15 = *(a1 + 6524);
        v16 = *(a1 + 4552);
        phOsalNfc_SetMemory();
        v17 = *(a1 + 6524);
        v18 = *(a1 + 4552);
        phOsalNfc_MemCopy();
      }
    }
  }

  v9 = 0;
LABEL_20:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_UpdateRemDevInf");
LABEL_10:
  v10 = *(a1 + 800);
  if (v10)
  {
    *(a1 + 800) = 0;
    v10(*(a1 + 808), v9, 0);
  }

LABEL_13:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_T3TPollNtf");
  return v9;
}

uint64_t sub_297E9B40C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_T3TPollReq");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
LABEL_9:
    v10 = 1;
    goto LABEL_11;
  }

  if (!a2 || !a3)
  {
    v10 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Invalid T3T Poll Req Param(s)..");
    goto LABEL_11;
  }

  if (sub_297E9B5A8(*(a1 + 6524), a2))
  {
    goto LABEL_9;
  }

  v8 = *(a1 + 6524);
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  if (Memory_Typed)
  {
    *Memory_Typed = *a2;
    Memory_Typed[1] = a2[1];
    Memory_Typed[2] = a2[2];
    Memory_Typed[3] = a2[3];
    *(a1 + 896) = Memory_Typed;
    *(a1 + 904) = 4;
    *(a1 + 3776) = off_2A1A90BD8;
    *(a1 + 3976) = 0;
    *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90BD8);
    v10 = sub_297E9B670(a1, 0, 0);
    if (v10 == 13)
    {
      *(a1 + 3424) = a3;
      *(a1 + 3752) = a4;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "T3t poll Sequence failed!");
      sub_297F0522C(a1);
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_11:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_T3TPollReq");
  return v10;
}

uint64_t sub_297E9B5A8(int a1, uint64_t a2)
{
  v5 = a1;
  sub_297E4E1B4(1, &v5, 3u, 5u, "phNciNfc_ValidateT3TReqParams");
  if (phOsalNfc_MemCompare() || *(a2 + 2) > 2u || *(a2 + 3) >= 0x10u)
  {
    v3 = 1;
    sub_297E4E0B0(1, &v5, 3u, 4u, " Invalid SystemCode/RequestCode/TSN Specified..");
  }

  else
  {
    v3 = 0;
  }

  sub_297E4DFAC(1, &v5, 3u, 5u, "phNciNfc_ValidateT3TReqParams");
  return v3;
}

uint64_t sub_297E9B670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_T3TPollSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_T3TPollSequence");
  return v6;
}

uint64_t sub_297E9B704(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a2, 3u, 5u, "phNciNfc_T3tNtfTimeoutHandler");
  if (!a2)
  {
    goto LABEL_6;
  }

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

  while (v6 != a2);
  if (v6 != a2)
  {
LABEL_6:
    sub_297E4E0B0(2, a2, 3u, 1u, "phNciNfc_T3tNtfTimeoutHandler: Invalid or NULL pNciContext");
    goto LABEL_11;
  }

  if (*(a2 + 6512))
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 6524);
  v8 = *(a2 + 4696);
  phOsalNfc_Timer_Stop();
  v9 = *(a2 + 6524);
  v10 = *(a2 + 4696);
  if (phOsalNfc_Timer_Start())
  {
    sub_297E4E0B0(1, a2 + 6524, 3u, 1u, "T3T Ntf timer failed to start for extended time\n");
LABEL_10:
    sub_297E687D8(2, a2, a1, 3u, 4u, "phNciNfc_T3tNtfTimeoutHandler");
    v11 = *(a2 + 6524);
    v12 = *(a2 + 4696);
    phOsalNfc_Timer_Stop();
    *(a2 + 6512) = 0;
    sub_297E9B1D0(a2, 0, 255);
    goto LABEL_11;
  }

  sub_297E4E0B0(1, a2 + 6524, 3u, 4u, "T3T Ntf timer restarted for extended time\n");
  *(a2 + 6512) = 1;
LABEL_11:

  return sub_297E4DFAC(2, a2, 3u, 5u, "phNciNfc_T3tNtfTimeoutHandler");
}

uint64_t sub_297E9B8A8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_H_MRTCalculate");
  v4 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_16;
  }

  v5 = *(a2 + 24);
  if (v5 < 2)
  {
    goto LABEL_15;
  }

  v6 = *(a2 + 16);
  v7 = *(v6 + 1);
  if (v7 == 6)
  {
    v8 = 70;
    goto LABEL_8;
  }

  if (v7 != 8)
  {
LABEL_15:
    v4 = 0;
    goto LABEL_16;
  }

  v8 = 71;
LABEL_8:
  if (v5 < 0xB || v5 <= (2 * *(v6 + 10) + 11))
  {
    goto LABEL_15;
  }

  v9 = *(*(a1 + 4552) + v8);
  v10 = *(v6 + (2 * *(v6 + 10) + 11));
  v11 = v9 & 7;
  v12 = (v9 >> 3) & 7;
  v13 = 1.0;
  if (v9 >= 0x40)
  {
    v14 = v9 >> 6;
    v15 = 1;
    do
    {
      v15 *= 4;
      --v14;
    }

    while (v14);
    v13 = v15;
  }

  v4 = ((v11 + v10 + v10 * v12 + 1) * 302.064897 * v13 / 1000.0);
  sub_297E50DB0(1, a1 + 6524, 3u, 4u, "Calculated Timeout value from MRTI is ");
LABEL_16:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_H_MRTCalculate");
  return v4;
}

uint64_t sub_297E9BA08(uint64_t a1, _BYTE *a2)
{
  v5 = a1;
  sub_297E4E1B4(0, &v5, 3u, 5u, "phNciNfc_JewelInit");
  v3 = 255;
  if (!*a2)
  {
    if ((a2[1] & 0xF) == 0xC)
    {
      v3 = 0;
    }

    else
    {
      v3 = 255;
    }
  }

  sub_297E4DFAC(0, &v5, 3u, 5u, "phNciNfc_JewelInit");
  return v3;
}

uint64_t sub_297E9BA8C(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RecvJewelResp");
  if (!a1)
  {
    v23 = 1;
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
    goto LABEL_28;
  }

  if (a2 || (v4 = *(a1 + 3808)) == 0 || (v5 = *(a1 + 3800)) == 0)
  {
    v23 = 255;
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Data Receive Failed..");
    goto LABEL_26;
  }

  *(a1 + 6497) = 0;
  v6 = *(a1 + 4600);
  v7 = v4 - 1;
  v8 = *(v5 + v4 - 1);
  if (v8 > 0xB0)
  {
    switch(v8)
    {
      case 0xB1u:
        v23 = 183;
        v9 = " Jewel XchgData,PH_NCINFC_STATUS_RF_PROTOCOL_ERROR Detected by NFCC during Data Exchange ";
        goto LABEL_24;
      case 0xB2u:
        v23 = 178;
        v9 = " Jewel XchgData,PH_NCINFC_STATUS_RF_TIMEOUT_ERROR Detected by NFCC during Data Exchange ";
        goto LABEL_24;
      case 0xB3u:
        v23 = 184;
        v9 = " Jewel XchgData,PH_NCINFC_STATUS_RF_UNEXPECTED_DAT Detected by NFCC during Data Exchange ";
        goto LABEL_24;
    }

LABEL_20:
    v23 = 185;
    sub_297E96818(*(a1 + 6528), v8);
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, " Jewel XchgData,Unknown RF related error Detected by NFCC during Data Exchange ");
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
      v23 = 181;
      v9 = " Jewel XchgData,PH_NCINFC_STATUS_RF_FRAME_CORRUPTED Detected by NFCC during Data Exchange ";
      goto LABEL_24;
    }

    if (v8 == 176)
    {
      v23 = 182;
      v9 = " Jewel XchgData,PH_NCINFC_STATUS_RF_TRANSMISSION_ERROR Detected by NFCC during Data Exchange ";
LABEL_24:
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v9);
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if (v4 < 2)
  {
    v23 = 255;
    v10 = " Jewel XchgData Failed ..";
  }

  else
  {
    v23 = 0;
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Jewel XchgData Request is Successful!! ..");
    if (v7 <= v6)
    {
      if (v4 == 7 || v4 == 123)
      {
        v17 = *(a1 + 6524);
        v18 = *(a1 + 4592);
        v19 = *(a1 + 3800);
        phOsalNfc_MemCopy();
        *(a1 + 4600) = v7;
        if (*(a1 + 4608) == 1)
        {
          *(a1 + 6497) = 1;
        }
      }

      else
      {
        v20 = *(a1 + 6524);
        v21 = *(a1 + 4592);
        v22 = *(a1 + 3800);
        phOsalNfc_MemCopy();
        *(a1 + 4600) = v4 - 2;
      }

      goto LABEL_25;
    }

    v23 = 8;
    v10 = " Jewel XchgData,More Data available than requested  ..";
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, v10);
LABEL_25:
  sub_297EFF5D8(a1, &v23);
LABEL_26:
  if (*(a1 + 4640))
  {
    *(a1 + 4648) = 0;
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Freeing Send Request Payload Buffer..");
    v14 = *(a1 + 6524);
    v15 = *(a1 + 4640);
    phOsalNfc_FreeMemory();
    *(a1 + 4640) = 0;
    *(a1 + 4632) = v23;
  }

LABEL_28:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RecvJewelResp");
  return v23;
}

uint64_t sub_297E9BDB8(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SendJewelReq");
  if (a1)
  {
    v2 = *(a1 + 4552);
    if (v2)
    {
      if (*(a1 + 4584))
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Creating Request Payload (Header + Data)..");
        *(a1 + 4648) = *(a1 + 4584);
        v3 = *(a1 + 6524);
        Memory_Typed = phOsalNfc_GetMemory_Typed();
        *(a1 + 4640) = Memory_Typed;
        if (Memory_Typed)
        {
          v5 = *(a1 + 6524);
          v6 = *(a1 + 4648);
          phOsalNfc_SetMemory();
          v7 = *(a1 + 6524);
          v8 = *(a1 + 4640);
          v9 = *(a1 + 4576);
          phOsalNfc_MemCopy();
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Payload (Header + Data) created successfully..");
          v10 = *(a1 + 6524);
          phOsalNfc_SetMemory();
          LODWORD(v18) = 0;
          if (!sub_297E8BB50(a1, v2, (&v18 | 0xC)))
          {
            *&v19 = *(a1 + 4640);
            DWORD2(v19) = *(a1 + 4648);
            if (sub_297E57BA8(a1 + 936, &v18, a1 + 3800, *(a1 + 4566), sub_297EFF2DC, a1) == 13)
            {
              v14 = 13;
              goto LABEL_13;
            }

            v16 = *(a1 + 6524);
            v17 = *(a1 + 4640);
            phOsalNfc_FreeMemory();
            *(a1 + 4640) = 0;
            *(a1 + 4648) = 0;
            goto LABEL_12;
          }

          v11 = *(a1 + 6524);
          v12 = *(a1 + 4640);
          phOsalNfc_FreeMemory();
          *(a1 + 4640) = 0;
          *(a1 + 4648) = 0;
          v13 = " Couldn't Get ConnId..";
        }

        else
        {
          v13 = " Payload MemAlloc for Send request Failed..";
        }

        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, v13);
LABEL_12:
        v14 = 255;
        goto LABEL_13;
      }

      v14 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Invalid Length..");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, " Invalid Device..");
      v14 = 6;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 4u, " Invalid Context Param..");
    v14 = 1;
  }

LABEL_13:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SendJewelReq");
  return v14;
}

uint64_t sub_297E9C010(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_UpdateUidInfo");
  if (a1)
  {
    a2[49] = *a3;
    a2[50] = a3[1];
    a2[46] = 7;
    v6 = *(a1 + 6524);
    phOsalNfc_MemCopy();
    v7 = 0;
  }

  else
  {
    v7 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_UpdateUidInfo");
  return v7;
}

uint64_t sub_297E9C0B8(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MapTool_NDEF_SetCardState");
  v4 = *(a1 + 545);
  if (a2)
  {
    if (v4 == 2 || v4 == 1)
    {
      v5 = 0;
    }

    else
    {
      if (*(a1 + 545))
      {
        *(a1 + 545) = 3;
        v5 = 22;
        goto LABEL_15;
      }

      v5 = 0;
      LOBYTE(v4) = 2;
    }

    *(a1 + 545) = v4;
  }

  else
  {
    v6 = (v4 & 0xFFFFFFFD) == 1;
    if ((v4 & 0xFFFFFFFD) == 1)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 545) = v7;
    if (v6)
    {
      v5 = 22;
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_15:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MapTool_NDEF_SetCardState");
  return v5;
}

uint64_t sub_297E9C178(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + a2 + 266);
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_MapTool_NDEF_ChkSpcVer");
  sub_297E4E0B0(0, a1 + 2712, 8u, 4u, "phFriNfc_MapTool_NDEF_ChkSpcVer:Checking the Ndef version supported by the card...");
  if (v3)
  {
    v4 = *(a1 + 544);
    if ((v4 - 7) < 2)
    {
      if (((v3 & 0x70) == 64) | ((v3 & 0x30) != 0) & (v3 >> 6))
      {
        v5 = 0;
      }

      else
      {
        v5 = 28;
      }
    }

    else if (v4 == 2 || v4 == 6)
    {
      if (v3 >= 0x30)
      {
        v5 = 28;
      }

      else
      {
        v5 = 0;
      }
    }

    else if (v3 == 18)
    {
      v5 = 0;
    }

    else if (((v3 & 0xF) < 3 || (v3 & 0xF0) != 16) && v3 > 0x1F)
    {
      v5 = 28;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 28;
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_MapTool_NDEF_ChkSpcVer");
  return v5;
}

uint64_t sub_297E9C28C(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "sortLockResByteInfoArray");
  if (a3)
  {
    v6 = 0;
    v7 = a2;
    v8 = a3;
    do
    {
      v9 = &a2[v6];
      v10 = v7;
      v11 = v8;
      do
      {
        if (*v9 > *v10)
        {
          v12 = *v9;
          *v9 = *v10;
          *v10 = v12;
        }

        ++v10;
        --v11;
      }

      while (v11);
      ++v6;
      --v8;
      ++v7;
    }

    while (v6 != a3);
  }

  return sub_297E4DFAC(2, a1, 8u, 5u, "sortLockResByteInfoArray");
}

uint64_t sub_297E9C360(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_SendDeactDiscCmd");
  if (a1)
  {
    sub_297E56C78(*(a1 + 9784));
    v2 = sub_297E56D18(*(a1 + 3088), 3, sub_297E5BA84, a1);
    if (v2 == 13)
    {
      *(a1 + 9778) = 0;
    }
  }

  else
  {
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_SendDeactDiscCmd");
  return v2;
}

uint64_t sub_297E9C404(uint64_t a1, int a2, unsigned int *a3, uint64_t a4)
{
  v39 = 0;
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_DeActvNtfRegister_Resp_Cb");
  if (!a1 || !a3)
  {
    v17 = "Invalid Params received!!";
    v18 = 2;
    v19 = a1;
LABEL_20:
    sub_297E4E0B0(v18, v19, 4u, 1u, v17);
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_DeActvNtfRegister_Resp_Cb");
  }

  sub_297EE6F64(a1);
  v9 = a4 == 146 || a4 == 7;
  if (a2 == 7 && v9)
  {
    v10 = sub_297EE14CC(*(a1 + 9784));
    if (v10 != 2)
    {
      sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phLibNfc_DeActvNtfRegister_Resp_Cb: State transition flag status is ");
    }

    v11 = sub_297EE1404(*(a1 + 9784));
    if (v11 != 12)
    {
      sub_297E50EBC(1, a1 + 9792, 4u, 4u, "phLibNfc_DeActvNtfRegister_Resp_Cb: State transition target state is ");
    }

    v12 = *(a1 + 1032);
    if (a3[1] - 1 <= 1)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "eRfDeactvReason -> phNciNfc_e_RfLinkLoss or phNciNfc_e_EndPoint");
      sub_297EE1720(*(a1 + 9784), 0);
    }

    v13 = *a3;
    if (v13 > 3)
    {
      v16 = 123;
      v15 = 2;
      v14 = "eRfDeactvType Other";
    }

    else
    {
      v14 = off_29EE86858[v13];
      v15 = dword_297F13250[v13];
      v16 = dword_297F13260[v13];
    }

    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, v14);
    *(a1 + 1032) = v15;
    v39 = 0;
    sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_ListenModeDeactvNtfHandler");
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "In phLibNfc_ListenModeDeactvNtfHandler");
    v25 = *(a1 + 762);
    sub_297E50EBC(1, a1 + 9792, 4u, 4u, "pLibNfcHandle->dev_cnt == ");
    if (*(a1 + 6744) && *(a1 + 762))
    {
      v38 = v16;
      v26 = v11;
      v27 = v10;
      v28 = v12;
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "RemDevType -> phNfc_eNfcIP1_Initiator");
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "pClientNfcIpRxCb is valid, invoking...");
      v29 = *(a1 + 6744);
      v30 = *(a1 + 6752);
      *(a1 + 6744) = 0;
      *(a1 + 6752) = 0;
      sub_297E4D930(1, a1 + 9792, 4u, 30, "phLibNfc_ListenModeDeactvNtfHandler");
      v29(*(a1 + 9784), v30, 0, a4);
    }

    else
    {
      if (!*(a1 + 6728) || !*(a1 + 762))
      {
LABEL_34:
        sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_ListenModeDeactvNtfHandler");
        sub_297E4F450(*(a1 + 9784), v16, a4, a1 + 1032, &v39);
        if (*(a1 + 2933) && *a3 == 1 && *(a1 + 762) && (v33 = *(*(a1 + 880) + 4), v33 <= 0x1B) && ((1 << v33) & 0x8000006) != 0)
        {
          sub_297EE1720(*(a1 + 9784), 0);
          sub_297EE18A8(*(a1 + 9784), 12);
          sub_297EE17E4(*(a1 + 9784), 4);
          *(a1 + 1032) = 0;
        }

        else if (v39 != 1)
        {
          sub_297EE1720(*(a1 + 9784), v10);
          sub_297EE18A8(*(a1 + 9784), v11);
          *(a1 + 1032) = v12;
        }

        return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_DeActvNtfRegister_Resp_Cb");
      }

      v38 = v16;
      v26 = v11;
      v27 = v10;
      v28 = v12;
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "pClientNfcIpTxCb is valid, invoking...");
      sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "RemDevType -> phNfc_eNfcIP1_Initiator");
      v31 = *(a1 + 6728);
      v32 = *(a1 + 6736);
      *(a1 + 6728) = 0;
      *(a1 + 6736) = 0;
      sub_297E4D930(1, a1 + 9792, 4u, 31, "phLibNfc_ListenModeDeactvNtfHandler");
      v31(*(a1 + 9784), v32, a4);
    }

    v39 = 1;
    v12 = v28;
    v10 = v27;
    v11 = v26;
    v16 = v38;
    goto LABEL_34;
  }

  if (a4 == 121)
  {
    *(a1 + 9777) = 0;
    v34 = 120;
    if (*(a1 + 1136) != 3)
    {
      if (*(a1 + 1036) == 7)
      {
        v34 = 120;
      }

      else
      {
        v34 = 121;
      }
    }

    *(a1 + 1032) = 2;
    v21 = *(a1 + 9784);
    v23 = v34;
    v24 = a1 + 1032;
    v22 = 123;
    goto LABEL_47;
  }

  if (a4 != 120)
  {
    v17 = "Irrelevant notification received!!";
    v19 = a1 + 9792;
    v18 = 1;
    goto LABEL_20;
  }

  if (*(a1 + 6200))
  {
    sub_297ECF904(a1);
    sub_297EE1720(*(a1 + 9784), 0);
    v21 = *(a1 + 9784);
    v22 = 127;
    v23 = 255;
    v24 = 0;
LABEL_47:
    sub_297E4F450(v21, v22, v23, v24, &v39);
    return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_DeActvNtfRegister_Resp_Cb");
  }

  sub_297EE1720(*(a1 + 9784), 0);
  *(a1 + 1032) = 2;
  v35 = sub_297E4F450(*(a1 + 9784), 123, 0, a1 + 1032, &v39);
  if (v35)
  {
    if (v35 == 111)
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 2u, "State machine has returned NFCSTATUS_BUSY ");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4u, 1u, "State machine has returned NFCSTATUS_FAILED ");
      sub_297E8D804(a1);
    }
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "State machine has returned NFCSTATUS_SUCCESS ");
    sub_297E4E0B0(1, a1 + 9792, 4u, 4u, "Invoking upper layer callback function ");
    v36 = *(a1 + 6264);
    if (v36)
    {
      v37 = *(a1 + 6272);
      *(a1 + 6264) = 0;
      *(a1 + 6272) = 0;
      sub_297E4D930(1, a1 + 9792, 4u, 130, "phLibNfc_DeActvNtfRegister_Resp_Cb");
      v36(*(a1 + 9784), v37, 0, 121);
      sub_297ECF904(a1);
    }
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_DeActvNtfRegister_Resp_Cb");
}

uint64_t sub_297E9CA38(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_297E4E1B4(2, a1, 4u, 5u, "phLibNfc_RfIntfErrNtf_Resp_Cb");
  if (a1 && *(a1 + 6728) && *(a1 + 762))
  {
    sub_297EE6F64(a1);
    sub_297E4F450(*(a1 + 9784), 119, a4, 0, 0);
  }

  return sub_297E4DFAC(2, a1, 4u, 5u, "phLibNfc_RfIntfErrNtf_Resp_Cb");
}

uint64_t sub_297E9CAD4(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_AnyOkCb");
  if (!a1 || a2)
  {
    sub_297E4E0B0(2, 0, 7u, 1u, "phHciNfc_AnyOkCb:Invalid Context received");
  }

  else
  {
    sub_297E50DB0(1, a1 + 956, 7u, 4u, "phHciNfc_AnyOkCb:");
    v4 = *(a1 + 152);
    if (v4)
    {
      if (*(v4 + 8))
      {
        v5 = *(a1 + 956);
        v6 = *(v4 + 8);
        phOsalNfc_FreeMemory();
        *(*(a1 + 152) + 8) = 0;
      }

      v7 = *(a1 + 956);
      phOsalNfc_FreeMemory();
      *(a1 + 152) = 0;
    }
  }

  return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_AnyOkCb");
}

uint64_t sub_297E9CBB4(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_CmdSendCb");
  if (a1)
  {
    v4 = *(a1 + 184);
    if (v4)
    {
      if (a2)
      {
        sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_CmdSendCb: Send Failed");
        v4(*(a1 + 192), 255, 0);
      }

      else
      {
        sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_CmdSendCb: Send success");
      }
    }
  }

  return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_CmdSendCb");
}

uint64_t sub_297E9CC80(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_RawCmdSendCb");
  if (a1)
  {
    v4 = *(a1 + 184);
    if (v4)
    {
      *(a1 + 184) = 0;
      if (a2)
      {
        sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_RawCmdSendCb: Send Failed");
      }

      else
      {
        sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_RawCmdSendCb: Send success");
      }

      v4(*(a1 + 192), a2, 0);
    }
  }

  return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_RawCmdSendCb");
}

uint64_t sub_297E9CD50(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_AnySetParameterCb");
  if (a1)
  {
    if (*(a1 + 152))
    {
      sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_AnySetParameterCb: Releasing memory");
      v6 = *(a1 + 152);
      if (*(v6 + 8))
      {
        v7 = *(a1 + 956);
        v8 = *(v6 + 8);
        phOsalNfc_FreeMemory();
        *(*(a1 + 152) + 8) = 0;
      }

      v9 = *(a1 + 956);
      phOsalNfc_FreeMemory();
      *(a1 + 152) = 0;
    }

    v10 = *(a1 + 184);
    if (!a2)
    {
      v11 = (a1 + 956);
      if (!*(a3 + 1))
      {
        sub_297E4E0B0(1, v11, 7u, 4u, "phHciNfc_AnySetParameterCb:Sucessfull");
        v13 = 0;
        if (v10)
        {
LABEL_15:
          *(a1 + 184) = 0;
          v10(*(a1 + 192), v13, 0);
          goto LABEL_16;
        }

LABEL_11:
        sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_AnySetParameterCb:Uppler Layer Callback not defined");
        goto LABEL_16;
      }

      if (*v11)
      {
        v12 = &gphNfc_DebugInfo_Sec;
      }

      else
      {
        v12 = &gphNfc_DebugInfo_Prim;
      }

      v12[1] |= 0x40000000u;
    }

    v13 = 255;
    if (v10)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_16:

  return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_AnySetParameterCb");
}

uint64_t sub_297E9CEAC(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_AnyGetParameterCb");
  if (a1)
  {
    v6 = *(a1 + 960);
    if (*(a1 + 152))
    {
      sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_AnyGetParameterCb: Releasing memory");
      v7 = *(a1 + 152);
      if (*(v7 + 8))
      {
        v8 = *(a1 + 956);
        v9 = *(v7 + 8);
        phOsalNfc_FreeMemory();
        *(*(a1 + 152) + 8) = 0;
      }

      v10 = *(a1 + 956);
      phOsalNfc_FreeMemory();
      *(a1 + 152) = 0;
    }

    if (v6 && *(v6 + 6536))
    {
      if (a2 || *(a3 + 1))
      {
        if (*(a1 + 956))
        {
          v11 = &gphNfc_DebugInfo_Sec;
        }

        else
        {
          v11 = &gphNfc_DebugInfo_Prim;
        }

        v11[1] |= 0x40000000u;
      }

      else
      {
        sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_AnyGetParameterCb:Sucessfull");
        sub_297EED6C0(*(a1 + 960), 0, a3);
      }

      goto LABEL_25;
    }

    v12 = *(a1 + 184);
    if (!a2)
    {
      v13 = (a1 + 956);
      if (!*(a3 + 1))
      {
        sub_297E4E0B0(1, v13, 7u, 4u, "phHciNfc_AnyGetParameterCb:Sucessfull");
        v15 = 0;
        if (v12)
        {
LABEL_24:
          *(a1 + 184) = 0;
          v12(*(a1 + 192), v15, a3);
          goto LABEL_25;
        }

LABEL_19:
        sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_AnyGetParameterCb:Uppler Layer Callback not defined");
        goto LABEL_25;
      }

      if (*v13)
      {
        v14 = &gphNfc_DebugInfo_Sec;
      }

      else
      {
        v14 = &gphNfc_DebugInfo_Prim;
      }

      v14[1] |= 0x40000000u;
    }

    v15 = 255;
    if (v12)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_25:

  return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_AnyGetParameterCb");
}

uint64_t sub_297E9D080(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_OpenPipeCb");
  if (a1)
  {
    if (*(a1 + 152))
    {
      sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_OpenPipeCb: Releasing memory");
      v6 = *(a1 + 152);
      if (*(v6 + 8))
      {
        v7 = *(a1 + 956);
        v8 = *(v6 + 8);
        phOsalNfc_FreeMemory();
        *(*(a1 + 152) + 8) = 0;
      }

      v9 = *(a1 + 956);
      phOsalNfc_FreeMemory();
      *(a1 + 152) = 0;
    }

    v10 = *(a1 + 184);
    if (a2)
    {
      v11 = 0;
    }

    else
    {
      if (!*(a3 + 1))
      {
        if (*(a3 + 4))
        {
          v11 = **(a3 + 8);
        }

        else
        {
          v11 = 0;
        }

        sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_OpenPipeCb:Sucessfull");
        v13 = 0;
        if (v10)
        {
          goto LABEL_16;
        }

LABEL_19:
        sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_OpenPipeCb:Uppler Layer Callback not defined");
        goto LABEL_20;
      }

      v11 = 0;
      if (*(a1 + 956))
      {
        v12 = &gphNfc_DebugInfo_Sec;
      }

      else
      {
        v12 = &gphNfc_DebugInfo_Prim;
      }

      v12[1] |= 0x40000000u;
    }

    v13 = 255;
    if (v10)
    {
LABEL_16:
      *(a1 + 184) = 0;
      *(a1 + 1237) = v11;
      v10(*(a1 + 192), v13, a1 + 1237);
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_20:

  return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_OpenPipeCb");
}

uint64_t sub_297E9D208(uint64_t a1, int a2, unsigned int a3, char a4, uint64_t a5, uint64_t a6)
{
  v33 = 0;
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_AnyGetParameter");
  if (a1)
  {
    *(a1 + 1236) = 0;
    *(a1 + 1232) = 0;
    switch(a2)
    {
      case 1:
        if (a3 <= 4)
        {
LABEL_21:
          v14 = *(a1 + 152);
          if (v14)
          {
            if (*(v14 + 8))
            {
              v15 = *(a1 + 956);
              v16 = *(v14 + 8);
              phOsalNfc_FreeMemory();
              *(*(a1 + 152) + 8) = 0;
            }

            v17 = *(a1 + 956);
            phOsalNfc_FreeMemory();
            *(a1 + 152) = 0;
          }

          v18 = *(a1 + 956);
          Memory_Typed = phOsalNfc_GetMemory_Typed();
          if (!Memory_Typed)
          {
            sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_AnyGetParameter:Invalid input parameters");
            v12 = 0;
            goto LABEL_34;
          }

          v20 = Memory_Typed;
          v21 = *(a1 + 956);
          phOsalNfc_SetMemory();
          *(a1 + 152) = v20;
          *v20 = a4;
          *(v20 + 1) = 2;
          v22 = *(a1 + 956);
          v23 = phOsalNfc_GetMemory_Typed();
          *(a1 + 1224) = v23;
          if (!v23)
          {
            sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_AnyGetParameter:Memory Allocation failed");
            *(*(a1 + 152) + 8) = 0;
            v28 = *(a1 + 956);
            phOsalNfc_FreeMemory();
            v12 = 0;
            *(a1 + 152) = 0;
            goto LABEL_34;
          }

          *v23 = a3;
          *(v20 + 8) = *(a1 + 1224);
          *(v20 + 4) = 1;
          *(a1 + 953) = 0;
          v24 = sub_297E99C88(a1, v20, sub_297E9CBB4, a1);
          if (v24 == 13)
          {
            *(a1 + 184) = a5;
            *(a1 + 192) = a6;
            LODWORD(v33) = 2;
            BYTE4(v33) = *v20;
            if (!sub_297E9D594(a1, &v33, sub_297E9CEAC, a1))
            {
              v12 = 13;
              goto LABEL_34;
            }

            sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_AnyGetParameter: Failed to register phHciNfc_OpenPipeCb function");
            *(*(a1 + 152) + 8) = 0;
            v25 = *(a1 + 956);
            phOsalNfc_FreeMemory();
            v26 = *(a1 + 956);
            v27 = *(a1 + 1224);
            phOsalNfc_FreeMemory();
            *(a1 + 152) = 0;
            goto LABEL_8;
          }

          v12 = v24;
          v29 = *(a1 + 956);
          v30 = *(*(a1 + 152) + 8);
          phOsalNfc_FreeMemory();
          *(*(a1 + 152) + 8) = 0;
          v31 = *(a1 + 956);
          phOsalNfc_FreeMemory();
          *(a1 + 152) = 0;
          v13 = "phHciNfc_AnyGetParameter:Failed Status from lower layer";
LABEL_20:
          sub_297E4E0B0(1, a1 + 956, 7u, 1u, v13);
          goto LABEL_34;
        }

        break;
      case 5:
        if (a3 <= 6)
        {
          goto LABEL_21;
        }

        break;
      case 4:
        if (a3 == 1)
        {
          goto LABEL_21;
        }

        break;
      default:
        sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_CheckPropGate");
        if (*(a1 + 817) == a2)
        {
          v12 = 0;
        }

        else if (*(a1 + 819) == a2)
        {
          v12 = 0;
        }

        else
        {
          v12 = 255;
        }

        sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_CheckPropGate");
        sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_AnyGetParameter: checking for Prop Gate");
        if (!v12)
        {
          goto LABEL_21;
        }

LABEL_19:
        v13 = "phHciNfc_AnyGetParameter:Failed Gate ID Evaluation";
        goto LABEL_20;
    }

    v12 = 255;
    goto LABEL_19;
  }

  sub_297E4E0B0(2, 0, 7u, 1u, "phHciNfc_AnyGetParameter:Invalid HCI Context");
LABEL_8:
  v12 = 255;
LABEL_34:
  sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_AnyGetParameter");
  return v12;
}

uint64_t sub_297E9D594(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_RegisterCmdRspEvt");
  if (a2 && a1 && a3)
  {
    v8 = *a2;
    if (*a2 == 2)
    {
      v9 = 0;
      v10 = a1 + 360;
      goto LABEL_12;
    }

    if (v8 == 1)
    {
      v9 = 0;
      v10 = a1 + 504;
      v14 = 12;
      goto LABEL_13;
    }

    if (!v8)
    {
      v9 = 0;
      v10 = a1 + 216;
LABEL_12:
      v14 = 6;
      v8 = 1;
      goto LABEL_13;
    }

    v11 = "phHciNfc_RegisterCmdRspEvt:Failed, Invalid HCI bMsgType";
    v9 = 1;
    v13 = a1 + 956;
    v12 = 1;
  }

  else
  {
    v11 = "phHciNfc_RegisterCmdRspEvt:Failed, Invalid Context or Input params";
    v9 = 1;
    v12 = 2;
    v13 = a1;
  }

  sub_297E4E0B0(v12, v13, 7u, 1u, v11);
  v10 = 0;
  v8 = 0;
  v14 = 0;
LABEL_13:
  if (v10 && v8 && a4 && a3 && a2)
  {
    v15 = *(a2 + 4);
    sub_297E50DB0(1, a1 + 956, 7u, 4u, "phHciNfc_RegisterCmdRspEvt:Registering for Pipe ID");
    v16 = *a2;
    sub_297E50DB0(1, a1 + 956, 7u, 4u, "phHciNfc_RegisterCmdRspEvt:Registering for Msg Type");
    v9 = sub_297E9DE10(a1, v10, v14, *(a2 + 4), a3, a4);
  }

  else
  {
    sub_297E4E0B0(2, a1, 7u, 1u, "phHciNfc_RegisterCmdRspEvt:Failed, Invalid HCI bMsgType or Input params");
  }

  sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_RegisterCmdRspEvt");
  return v9;
}

uint64_t sub_297E9D740(uint64_t a1, int a2, char a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_AnySetParameter");
  if (!a1 || a4 >= 0xFD)
  {
    v19 = "phHciNfc_AnySetParameter:Invalid HCI Context";
    v20 = 2;
    v21 = a1;
LABEL_20:
    sub_297E4E0B0(v20, v21, 7u, 1u, v19);
    return 255;
  }

  v13 = *(a1 + 152);
  if (v13)
  {
    if (*(v13 + 8))
    {
      v14 = *(a1 + 956);
      v15 = *(v13 + 8);
      phOsalNfc_FreeMemory();
      *(*(a1 + 152) + 8) = 0;
    }

    v16 = *(a1 + 956);
    phOsalNfc_FreeMemory();
  }

  *(a1 + 152) = 0;
  v17 = *(a1 + 956);
  phOsalNfc_SetMemory();
  *(a1 + 160) = a3;
  *(a1 + 161) = 1;
  if (a2 == 3)
  {
    v18 = a4 + 1;
    goto LABEL_13;
  }

  if (a2 != 1)
  {
    v19 = "phHciNfc_AnySetParameter:Failed Invalid Registry Identifier";
LABEL_19:
    v21 = a1 + 956;
    v20 = 1;
    goto LABEL_20;
  }

  if (a4 != 8)
  {
    v19 = "phHciNfc_AnySetParameter:Failed Invalid Set Data Length";
    goto LABEL_19;
  }

  v18 = 9;
LABEL_13:
  *(a1 + 164) = v18;
  v26 = 0;
  *(a1 + 168) = a1 + 969;
  *(a1 + 969) = a2;
  v22 = *(a1 + 956);
  phOsalNfc_MemCopy();
  *(a1 + 953) = 0;
  v23 = sub_297E99C88(a1, (a1 + 160), sub_297E9CBB4, a1);
  if (v23 == 13)
  {
    *(a1 + 184) = a6;
    *(a1 + 192) = a7;
    LODWORD(v26) = 2;
    BYTE4(v26) = *(a1 + 160);
    if (sub_297E9D594(a1, &v26, sub_297E9CD50, a1))
    {
      sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_AnySetParameter: Failed to register phHciNfc_OpenPipeCb function");
      v24 = 255;
    }

    else
    {
      v24 = 13;
    }
  }

  else
  {
    v24 = v23;
    sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_AnySetParameter:Failed to send to lower layer");
  }

  sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_AnySetParameter");
  return v24;
}

uint64_t sub_297E9D970(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v21 = -1;
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_OpenPipe");
  if (!a1)
  {
    v15 = "phHciNfc_OpenPipe:Invalid HCI Context";
    v16 = 2;
    v17 = 0;
LABEL_13:
    sub_297E4E0B0(v16, v17, 7u, 1u, v15);
    goto LABEL_14;
  }

  if (*(a1 + 152))
  {
    v8 = *(a1 + 956);
    phOsalNfc_FreeMemory();
    *(a1 + 152) = 0;
  }

  v9 = *(a1 + 956);
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  if (!Memory_Typed)
  {
    v15 = "phHciNfc_OpenPipe:Invalid Input Params";
    v17 = a1 + 956;
    v16 = 1;
    goto LABEL_13;
  }

  v11 = Memory_Typed;
  v12 = *(a1 + 956);
  phOsalNfc_SetMemory();
  *(a1 + 152) = v11;
  *v11 = a2;
  *(v11 + 1) = 3;
  *(v11 + 8) = 0;
  *(v11 + 4) = 0;
  *(a1 + 953) = 0;
  v13 = sub_297E99C88(a1, v11, sub_297E9CBB4, a1);
  if (v13 != 13)
  {
    v18 = v13;
    v19 = *(a1 + 956);
    phOsalNfc_FreeMemory();
    *(a1 + 152) = 0;
    sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_OpenPipe:Failed to send to lower layer");
    goto LABEL_17;
  }

  *(a1 + 184) = a3;
  *(a1 + 192) = a4;
  if (!sub_297E9DBD0(a1, 240, &v21) && v21 != 255)
  {
    sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_UnRegisterCmdRspEvt:eSE APDU Pipe");
    LODWORD(v22) = 2;
    BYTE4(v22) = v21;
    sub_297E9DCD0(a1, &v22, sub_297EE93FC);
  }

  LODWORD(v22) = 2;
  BYTE4(v22) = *v11;
  if (!sub_297E9D594(a1, &v22, sub_297E9D080, a1))
  {
    v18 = 13;
    goto LABEL_17;
  }

  sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_OpenPipe: Failed to register phHciNfc_OpenPipeCb function");
  v14 = *(a1 + 956);
  phOsalNfc_FreeMemory();
  *(a1 + 152) = 0;
LABEL_14:
  v18 = 255;
LABEL_17:
  sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_OpenPipe");
  return v18;
}

uint64_t sub_297E9DBD0(unsigned __int8 *a1, int a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_GetPipeId");
  if (a1 && a3)
  {
    if (a1[817] == a2)
    {
      v6 = a1 + 816;
LABEL_8:
      v7 = 0;
      *a3 = *v6;
      goto LABEL_9;
    }

    if (a1[819] == a2)
    {
      v6 = a1 + 818;
      goto LABEL_8;
    }

    v7 = 1;
    if (a1[891] == 1)
    {
      sub_297E4E0B0(1, (a1 + 956), 7u, 2u, "phHciNfc_GetPipeId: ADM_NOTIFY_ALL_PIPE_CLEARED cleared the pipes!!!");
    }
  }

  else
  {
    v7 = 1;
    sub_297E4E0B0(2, a1, 7u, 1u, "phHciNfc_GetPipeId:Invalid Context or PipeId");
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_GetPipeId");
  return v7;
}

uint64_t sub_297E9DCD0(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_UnRegisterCmdRspEvt");
  if (!a2 || !a1 || !a3)
  {
    v12 = "phHciNfc_UnRegisterCmdRspEvt:Failed, Invalid Context or Callback";
    v11 = 1;
    v13 = 2;
    v14 = a1;
LABEL_8:
    sub_297E4E0B0(v13, v14, 7u, 1u, v12);
    goto LABEL_9;
  }

  v6 = *a2;
  if (v6 >= 3)
  {
    v12 = "phHciNfc_UnRegisterCmdRspEvt:Failed, Invalid Msg Type";
    v11 = 1;
    v14 = a1 + 956;
    v13 = 1;
    goto LABEL_8;
  }

  v7 = qword_297F13270[v6];
  v8 = 0x60C06u >> (8 * v6);
  v9 = *(a2 + 4);
  sub_297E50DB0(1, a1 + 956, 7u, 4u, "phHciNfc_UnRegisterCmdRspEvt:Removing Registration for Pipe ID");
  v10 = *a2;
  sub_297E50DB0(1, a1 + 956, 7u, 4u, "phHciNfc_UnRegisterCmdRspEvt:Removing Registration for MsgType");
  v11 = sub_297E9E004(a1, a1 + v7, v8 & 0xE, *(a2 + 4), a3);
LABEL_9:
  sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_UnRegisterCmdRspEvt");
  return v11;
}

uint64_t sub_297E9DE10(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_AddRegistration");
  if (a2 && a5)
  {
    v12 = sub_297E9DF18(a6, a2, a3, a4, a5);
    if (v12 && a3)
    {
      v13 = a3;
      while (*a2)
      {
        a2 += 24;
        if (!--v13)
        {
          goto LABEL_10;
        }
      }

      v12 = 0;
      *(a2 + 1) = a4;
      *(a2 + 8) = a6;
      *(a2 + 16) = a5;
      *a2 = 1;
    }
  }

  else
  {
    v12 = 1;
    sub_297E4E0B0(2, a1, 7u, 1u, "phHciNfc_AddRegistration:Failed, Invalid List or Callback");
  }

LABEL_10:
  sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_AddRegistration");
  return v12;
}

uint64_t sub_297E9DF18(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_VerifyIfRegistered");
  if (a2 && a5)
  {
    if (a3)
    {
      v10 = a3;
      while (*a2 != 1 || *(a2 + 1) != a4 || *(a2 + 16) != a5)
      {
        a2 += 24;
        if (!--v10)
        {
          goto LABEL_9;
        }
      }

      v11 = 0;
    }

    else
    {
LABEL_9:
      v11 = 255;
    }
  }

  else
  {
    v11 = 1;
    sub_297E4E0B0(2, a1, 7u, 1u, "phHciNfc_VerifyIfRegistered:Failed, Invalid List or Callback");
  }

  sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_VerifyIfRegistered");
  return v11;
}

uint64_t sub_297E9E004(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_RemoveRegistration");
  if (a2 && a5)
  {
    if (a3)
    {
      v10 = a3;
      while (*a2 != 1 || *(a2 + 1) != a4 || *(a2 + 16) != a5)
      {
        a2 += 24;
        if (!--v10)
        {
          goto LABEL_9;
        }
      }

      v11 = 0;
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    else
    {
LABEL_9:
      v11 = 255;
    }
  }

  else
  {
    v11 = 1;
    sub_297E4E0B0(2, a1, 7u, 1u, "phHciNfc_RemoveRegistration:Failed, Invalid Callback or List Empty");
  }

  sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_RemoveRegistration");
  return v11;
}

uint64_t sub_297E9E0F8(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_UnRegAllRspCb");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_UnRegAllRspEvts: Clearing all response call back function registrations");
    v2 = a1 + 360;
    v3 = 6;
    do
    {
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      *v2 = -256;
      v2 += 24;
      --v3;
    }

    while (v3);
  }

  else
  {
    sub_297E4E0B0(2, 0, 7u, 1u, "phHciNfc_UnRegAllRspEvts: Failed, Invalid Context or Callback");
  }

  return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_UnRegAllRspCb");
}

uint64_t sub_297E9E1B8(uint64_t a1, uint64_t a2, int a3, int a4, _BYTE *a5)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_GetPipeIndex");
  if (a2 && a5)
  {
    if (a3)
    {
      v10 = 0;
      v11 = (a2 + 1);
      while (*(v11 - 1) != 1 || *v11 != a4)
      {
        ++v10;
        v11 += 24;
        if (a3 == v10)
        {
          goto LABEL_8;
        }
      }

      v12 = 0;
      *a5 = v10;
    }

    else
    {
LABEL_8:
      sub_297E4E0B0(2, a1, 7u, 4u, "phHciNfc_GetPipeIndex:Enabled slot is not found");
      v12 = 255;
    }
  }

  else
  {
    v12 = 1;
    sub_297E4E0B0(2, a1, 7u, 1u, "phHciNfc_GetPipeIndex:Failed, Invalid Index or List Empty");
  }

  sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_GetPipeIndex");
  return v12;
}

uint64_t sub_297E9E2C4(uint64_t a1, int a2, unsigned __int8 *a3)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_ReceiveAdminNotifyEvt");
  if (!a1 || !a3 || (v6 = *(a1 + 960)) == 0)
  {
    v8 = "phHciNfc_ReceiveAdminNotifyEvt:Failed, Invalid Context or Info received";
    v9 = 2;
    v10 = a1;
LABEL_10:
    sub_297E4E0B0(v9, v10, 7u, 1u, v8);
    goto LABEL_11;
  }

  sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_ReceiveAdminNotifyEvt:Process notification event received on Admin pipe");
  if (a2)
  {
    goto LABEL_11;
  }

  v7 = a3[1];
  switch(v7)
  {
    case 1:
      sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_ReceiveAdminNotifyEvt:Rxd Event End Of Operation");
      sub_297EED988(*(a1 + 960));
      break;
    case 32:
      sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_ReceiveAdminNotifyEvt:Received OS Reset Ntf on Admin Pipe");
      if (!*(v6 + 6184))
      {
        sub_297EED100(a1, 0, a3);
      }

      break;
    case 3:
      sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_ReceiveAdminNotifyEvt:Rxd phHciNfc_e_EvtHotPlug");
      break;
    default:
      v8 = "phHciNfc_ReceiveAdminNotifyEvt: Not processing the event";
      v10 = a1 + 956;
      v9 = 1;
      goto LABEL_10;
  }

LABEL_11:

  return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_ReceiveAdminNotifyEvt");
}

uint64_t sub_297E9E434(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v24 = 0;
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_ReceiveOpenPipeNotifyCmd");
  if (!a1 || !a3)
  {
    v6 = "phHciNfc_ReceiveOpenPipeNotifyCmd:Failed Invalid Params Received";
    v7 = 2;
    v8 = a1;
LABEL_18:
    sub_297E4E0B0(v7, v8, 7u, 1u, v6);
    return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_ReceiveOpenPipeNotifyCmd");
  }

  if (a2)
  {
    v6 = "phHciNfc_ReceiveOpenPipeNotifyCmd:Failed Status received from lower layer";
LABEL_17:
    v8 = a1 + 956;
    v7 = 1;
    goto LABEL_18;
  }

  if (a3[1] != 3)
  {
    v6 = "phHciNfc_ReceiveOpenPipeNotifyCmd:Invalid Ins received from lower layer";
    goto LABEL_17;
  }

  LODWORD(v24) = 0;
  BYTE4(v24) = *a3;
  sub_297E9DCD0(a1, &v24, sub_297E9E434);
  v9 = *(a1 + 152);
  if (v9)
  {
    if (*(v9 + 8))
    {
      v10 = *(a1 + 956);
      v11 = *(v9 + 8);
      phOsalNfc_FreeMemory();
      *(*(a1 + 152) + 8) = 0;
    }

    v12 = *(a1 + 956);
    phOsalNfc_FreeMemory();
    *(a1 + 152) = 0;
  }

  v13 = *(a1 + 956);
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  if (!Memory_Typed)
  {
    sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_ReceiveOpenPipeNotifyCmd: Failed to allocate memory for pSendParams");
LABEL_24:
    *(a1 + 152) = 0;
    return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_ReceiveOpenPipeNotifyCmd");
  }

  v15 = Memory_Typed;
  v16 = *(a1 + 956);
  phOsalNfc_SetMemory();
  *(a1 + 152) = v15;
  *v15 = *a3;
  *(v15 + 1) = 512;
  v17 = *(a1 + 956);
  v18 = phOsalNfc_GetMemory_Typed();
  *(v15 + 8) = v18;
  if (!v18)
  {
    sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_ReceiveOpenPipeNotifyCmd:Failed to send to lower layer");
    *(*(a1 + 152) + 8) = 0;
LABEL_23:
    v23 = *(a1 + 956);
    phOsalNfc_FreeMemory();
    goto LABEL_24;
  }

  *v18 = 0;
  *(v15 + 4) = 1;
  *(a1 + 953) = 0;
  if (sub_297E99C88(a1, v15, sub_297E9CAD4, a1) != 13)
  {
    sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_ReceiveOpenPipeNotifyCmd:Failed to send to lower layer");
    v21 = *(a1 + 956);
    v22 = *(v15 + 8);
    phOsalNfc_FreeMemory();
    *(v15 + 8) = 0;
    goto LABEL_23;
  }

  v19 = *a3;
  if (v19 != *(a1 + 816))
  {
    LODWORD(v24) = 1;
    BYTE4(v24) = v19;
    sub_297E9D594(a1, &v24, sub_297E9EB60, a1);
  }

  return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_ReceiveOpenPipeNotifyCmd");
}

uint64_t sub_297E9E6C4(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_ReceiveAdminNotifyCmd");
  if (!a1 || a2 || !a3)
  {
    v15 = "phHciNfc_ReceiveAdminNotifyCmd:Failed Invalid Params Received";
    v16 = 2;
    v17 = a1;
    goto LABEL_18;
  }

  v6 = *(a3 + 1);
  if ((v6 - 20) < 2)
  {
    sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_ProcessClearAllPipeNotifyCmd");
    if (**(a3 + 8) != 192)
    {
      goto LABEL_26;
    }

    v18 = *(a1 + 960);
    if (!v18)
    {
      goto LABEL_26;
    }

    sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_ProcessClearAllPipeNotifyCmd:eSE");
    if (*(v18 + 2992) != 1)
    {
      *(a1 + 816) = -1;
      *(a1 + 891) = 1;
    }

    if (**(a3 + 8) == 2)
    {
      sub_297E4E0B0(1, v18 + 9792, 7u, 4u, "phHciNfc_ProcessClearAllPipeNotifyCmd:UICC");
      if (*(v18 + 2992) != 1)
      {
        *(a1 + 832) = -1;
      }
    }

    else
    {
LABEL_26:
      sub_297E4E0B0(2, a1, 7u, 4u, "phHciNfc_ProcessClearAllPipeNotifyCmd:unkown NFCEE ID");
    }

    sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_ProcessClearAllPipeNotifyCmd");
    sub_297E4E0B0(1, a1 + 956, 7u, 4u, "phHciNfc_ReceiveAdminNotifyCmd:Received Clear All Pipes Sending Any OK!!!");
  }

  else if (v6 != 19)
  {
    if (v6 == 18)
    {
      v29 = 0;
      sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_ProcessPipeCreateNotifyCmd");
      if (!*(a1 + 960) || (v7 = *(a3 + 8)) == 0 || *(a3 + 4) != 5)
      {
        sub_297E4E0B0(2, a1, 7u, 1u, "phHciNfc_ProcessPipeCreateNotifyCmd:Failed Invalid Params Received");
        sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_ProcessPipeCreateNotifyCmd");
        goto LABEL_40;
      }

      v8 = v7[3];
      v9 = v7[4];
      v10 = *v7;
      BYTE4(v29) = v9;
      v11 = sub_297E9D594(a1, &v29, sub_297E9E434, a1);
      if (v11)
      {
        sub_297E4E0B0(1, a1 + 956, 7u, 2u, "phHciNfc_ProcessPipeCreateNotifyCmd: Failed to register phHciNfc_ReceiveOpenPipeNotifyCmd");
      }

      if (v10 == 2)
      {
        if (v8 != 65)
        {
          goto LABEL_50;
        }

        *(a1 + 832) = v9;
        v12 = "phHciNfc_ProcessPipeCreateNotifyCmd:UICC Conn Pipe Info Updated";
        v13 = 65;
        v14 = 833;
      }

      else
      {
        if (v10 != 192)
        {
          v12 = "phHciNfc_ProcessPipeCreateNotifyCmd:Unkown Source Host ID";
LABEL_49:
          sub_297E4E0B0(1, a1 + 956, 7u, 4u, v12);
LABEL_50:
          *(a1 + 893) = 1;
          sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_ProcessPipeCreateNotifyCmd");
          if (v11)
          {
            goto LABEL_40;
          }

          goto LABEL_28;
        }

        if (v8 == 65)
        {
          *(a1 + 818) = v9;
          v12 = "phHciNfc_ProcessPipeCreateNotifyCmd:eSE Connectivity Pipe Info Updated";
          v13 = 65;
          v14 = 819;
        }

        else
        {
          if (v8 != 240)
          {
            v12 = "phHciNfc_ProcessPipeCreateNotifyCmd:eSE Unknown Source Gate ID";
            goto LABEL_49;
          }

          *(a1 + 816) = v9;
          v12 = "phHciNfc_ProcessPipeCreateNotifyCmd:eSE APDU Pipe Info Updated";
          v13 = -16;
          v14 = 817;
        }
      }

      *(a1 + v14) = v13;
      goto LABEL_49;
    }

    v15 = "phHciNfc_ReceiveAdminNotifyCmd:Unknown Instruction";
    v17 = a1 + 956;
    v16 = 1;
LABEL_18:
    sub_297E4E0B0(v16, v17, 7u, 1u, v15);
    goto LABEL_40;
  }

LABEL_28:
  v19 = *(a1 + 152);
  if (v19)
  {
    if (*(v19 + 8))
    {
      v20 = *(a1 + 956);
      v21 = *(v19 + 8);
      phOsalNfc_FreeMemory();
      *(*(a1 + 152) + 8) = 0;
    }

    v22 = *(a1 + 956);
    phOsalNfc_FreeMemory();
    *(a1 + 152) = 0;
  }

  v23 = *(a1 + 956);
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  if (Memory_Typed)
  {
    v25 = Memory_Typed;
    v26 = *(a1 + 956);
    phOsalNfc_SetMemory();
    *(a1 + 152) = v25;
    *v25 = 1;
    *(v25 + 2) = 2;
    *(v25 + 8) = 0;
    *(v25 + 4) = 0;
    *(a1 + 953) = 0;
    if (sub_297E99C88(a1, v25, sub_297E9CAD4, a1) == 13)
    {
      sub_297E4E0B0(1, a1 + 956, 7u, 4u, "ReceiveAdminNotifyCmd: ANY_OK Sent to NCI");
      goto LABEL_40;
    }

    sub_297E4E0B0(1, a1 + 956, 7u, 1u, "ReceiveAdminNotifyCmd: Failed to send ANY_OK to NFCC");
    v27 = *(a1 + 956);
    phOsalNfc_FreeMemory();
  }

  else
  {
    sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_ReceiveAdminNotifyCmd: Failed to allocate memory for pSendParams");
  }

  *(a1 + 152) = 0;
LABEL_40:

  return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_ReceiveAdminNotifyCmd");
}

uint64_t sub_297E9EB60(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_ProcessEventsOnPipe");
  if (a1)
  {
    if (!a2)
    {
      if (a3)
      {
        v6 = *(a1 + 960);
        if (v6)
        {
          v7 = sub_297E9EFAC(*(a1 + 956), *a3);
          LODWORD(v28) = v7;
          v8 = a3[1];
          if (v8 <= 0x12)
          {
            if (v8 == 16)
            {
              v17 = *(a3 + 2);
              if (*(a3 + 2) && *(a3 + 1))
              {
                *&v27 = *(a3 + 1);
              }

              else
              {
                v17 = 0;
                *&v27 = 0;
              }

              DWORD2(v27) = v17;
              DWORD2(v26) = 0;
              *&v26 = 0;
              v20 = *a3;
              v21 = a1;
              v12 = 0;
              v16 = 3;
              goto LABEL_39;
            }

            if (v8 == 18)
            {
              if (!*(a3 + 2) || (v9 = *(a3 + 1)) == 0 || *v9 != 129)
              {
                sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_ProcessEventsOnPipe:Failed, error in packet");
                v19 = 0;
                LODWORD(v11) = 0;
                v12 = 255;
LABEL_26:
                if (v19 + v11 != *(a3 + 2))
                {
                  DWORD2(v27) = 0;
                  DWORD2(v26) = 0;
                  sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_ProcessEventsOnPipe:Failed,BER TLV parsing, Length Mismatch");
                  v12 = 255;
                }

                v20 = *a3;
                v21 = a1;
                v16 = 2;
                goto LABEL_39;
              }

              v10 = v9[1];
              DWORD2(v26) = v9[1];
              *&v26 = v9 + 2;
              v11 = v10 + 2;
              if ((v10 - 17) > 0xFFFFFFF3)
              {
                v12 = 0;
              }

              else
              {
                sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_ProcessEventsOnPipe:Failed AID Length Evaluation");
                v9 = *(a3 + 1);
                v12 = 255;
              }

              if (v9[v11] != 130)
              {
                sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_ProcessEventsOnPipe:Failed, PARAMETER Field is not available");
                v19 = 0;
                v12 = 255;
                goto LABEL_26;
              }

              LODWORD(v11) = v10 + 3;
              v19 = v9[v10 + 3];
              if ((v19 & 0x80000000) == 0)
              {
                LODWORD(v11) = v10 + 4;
LABEL_45:
                DWORD2(v27) = v19;
LABEL_46:
                *&v27 = *(a3 + 1) + v11;
                goto LABEL_26;
              }

              if (v19 == -126)
              {
                v24 = &v9[v10];
                LODWORD(v11) = v10 + 6;
                if (v24[4])
                {
                  v19 = v24[5] | (v24[4] << 8);
                  goto LABEL_45;
                }

                v23 = "phHciNfc_ProcessEventsOnPipe:Failed Parsing BER TLV Two BYTE";
              }

              else
              {
                if (v9[v10 + 3] != 129)
                {
                  sub_297E4E0B0(1, a1 + 956, 7u, 1u, "phHciNfc_ProcessEventsOnPipe:Failed Parsing BER TLV");
                  v19 = 0;
                  v12 = 255;
                  goto LABEL_46;
                }

                LODWORD(v11) = v10 + 4;
                if (v9[v10 + 4] < 0)
                {
                  v19 = v9[v10 + 4];
                  LODWORD(v11) = v10 + 5;
                  goto LABEL_45;
                }

                v23 = "phHciNfc_ProcessEventsOnPipe:Failed Parsing BER TLV One BYTE";
              }

              sub_297E4E0B0(1, a1 + 956, 7u, 1u, v23);
              v19 = 0;
              v12 = 255;
              goto LABEL_46;
            }

LABEL_20:
            sub_297E50DB0(1, a1 + 956, 7u, 1u, "phHciNfc_ProcessEventsOnPipe: Unknown HCI Event, Dropped Ins");
            return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_ProcessEventsOnPipe");
          }

          if (v8 == 19)
          {
            *&v26 = 0;
            DWORD2(v26) = 0;
            *&v27 = 0;
            DWORD2(v27) = 0;
            sub_297EEDAE0(a1, &v26, 0, *a3, 17);
            v18 = a3[1];
            sub_297E50DB0(1, a1 + 956, 7u, 4u, "phHciNfc_ProcessEventsOnPipe: phLibNfc_eSE_EvtEndOfOperation, Ins");
            return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_ProcessEventsOnPipe");
          }

          if (v8 != 32)
          {
            goto LABEL_20;
          }

          v13 = *(a3 + 2);
          if (*(a3 + 2) && (v14 = *(a3 + 1)) != 0)
          {
            v15 = v7;
            if (*v14 == 1)
            {
              v16 = 23;
            }

            else if (*v14)
            {
              sub_297E4E0B0(1, a1 + 956, 7u, 1u, " SE restricted mode Unknown Event\n");
              v14 = *(a3 + 1);
              v13 = *(a3 + 2);
              v16 = 255;
            }

            else
            {
              v15 = 255;
              LODWORD(v28) = 255;
              v16 = 4;
            }

            *&v27 = v14;
            DWORD2(v27) = v13;
            DWORD2(v26) = 0;
            *&v26 = 0;
          }

          else
          {
            v15 = 255;
            *&v26 = 0;
            DWORD2(v26) = 0;
            *&v27 = 0;
            v16 = 4;
            LODWORD(v28) = 255;
            DWORD2(v27) = 0;
          }

          if (!*(v6 + 6104))
          {
            v20 = *a3;
            v21 = a1;
            v12 = 0;
LABEL_39:
            sub_297EEDAE0(v21, &v26, v12, v20, v16);
            return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_ProcessEventsOnPipe");
          }

          if (*(v6 + 6568))
          {
            v25 = __PAIR64__(v15, v16);
            sub_297E54734(1, a1 + 956, 7u, 4u, "phHciNfc_ProcessEventsOnPipe :pGenericNtfCb[RestrictedMode]");
            (*(v6 + 6568))(*(v6 + 9784), *(v6 + 6576), 216, &v25);
          }
        }
      }
    }
  }

  return sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_ProcessEventsOnPipe");
}

uint64_t sub_297E9EFAC(int a1, unsigned int a2)
{
  v6 = a1;
  sub_297E4E1B4(1, &v6, 7u, 5u, "phHciNfc_GetEseOsType");
  if (a2 > 0x2D)
  {
    goto LABEL_6;
  }

  if (((1 << a2) & 0x88000000000) != 0)
  {
    v3 = 1;
    goto LABEL_14;
  }

  if (((1 << a2) & 0x110000000000) != 0)
  {
    v3 = 2;
    goto LABEL_14;
  }

  if (((1 << a2) & 0x220000000000) != 0)
  {
    v3 = 3;
  }

  else
  {
LABEL_6:
    if (a2 == 25)
    {
      v4 = 0;
    }

    else
    {
      v4 = 255;
    }

    if (a2 == 22)
    {
      v3 = 0;
    }

    else
    {
      v3 = v4;
    }
  }

LABEL_14:
  sub_297E4DFAC(1, &v6, 7u, 5u, "phHciNfc_GetEseOsType");
  return v3;
}

uint64_t sub_297E9F088(uint64_t a1, uint64_t a2, char *a3)
{
  sub_297E4E1B4(2, a1, 7u, 5u, "phHciNfc_MultiOSGetPipeId");
  if (a1 && a3 && (v6 = *(a1 + 960)) != 0)
  {
    if (*(v6 + 2992) == 1)
    {
      if (a2 > 1)
      {
        if (a2 == 2)
        {
          a2 = 0;
          v7 = *(a1 + 824);
          goto LABEL_18;
        }

        if (a2 == 3)
        {
          a2 = 0;
          v7 = *(a1 + 828);
          goto LABEL_18;
        }
      }

      else
      {
        if (!a2)
        {
          v7 = *(a1 + 816);
          goto LABEL_18;
        }

        if (a2 == 1)
        {
          a2 = 0;
          v7 = *(a1 + 820);
LABEL_18:
          *a3 = v7;
          goto LABEL_10;
        }
      }

      a2 = 0;
      v7 = -1;
      goto LABEL_18;
    }

    a2 = 147;
  }

  else
  {
    a2 = 1;
    sub_297E4E0B0(2, a1, 7u, 1u, "phHciNfc_MultiOSGetPipeId:Invalid Context or PipeId");
  }

LABEL_10:
  sub_297E4DFAC(2, a1, 7u, 5u, "phHciNfc_MultiOSGetPipeId");
  return a2;
}

uint64_t sub_297E9F198(uint64_t a1, unsigned int a2, int a3)
{
  v9 = a2;
  sub_297E4E1B4(1, &v9, 5u, 5u, "phUtilNfc_SetDriverHandle");
  v5 = v9;
  if (v9 > 1)
  {
    v6 = 255;
  }

  else
  {
    v6 = 0;
    v7 = &unk_2A18BDDC0 + 112 * v9;
    *v7 = a1;
    *(v7 + 2) = v5;
    *(v7 + 3) = a3;
    *(v7 + 2) = 0;
    *(v7 + 4) = 0;
  }

  sub_297E4DFAC(1, &v9, 5u, 5u, "phUtilNfc_SetDriverHandle");
  return v6;
}

uint64_t sub_297E9F244(uint64_t a1, void *a2)
{
  v10 = a1;
  sub_297E4E1B4(0, &v10, 5u, 5u, "phUtilNfc_RetrieveDnldCoreCtx");
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
      *a2 = *(&unk_2A18BDDC0 + 14 * v9 + 12);
    }
  }

  else
  {
LABEL_5:
    v7 = 255;
  }

  sub_297E4DFAC(0, &v10, 5u, 5u, "phUtilNfc_RetrieveDnldCoreCtx");
  return v7;
}

uint64_t sub_297E9F31C(unsigned int a1, void *a2)
{
  v5 = a1;
  sub_297E4E1B4(1, &v5, 5u, 5u, "phUtilNfc_GetLibNfcContextFromCtrlType");
  if (a2 && (*a2 = 0, v5 <= 1))
  {
    v3 = 0;
    *a2 = *(&unk_2A18BDDC0 + 14 * v5 + 2);
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(1, &v5, 5u, 5u, "phUtilNfc_GetLibNfcContextFromCtrlType");
  return v3;
}

uint64_t sub_297E9F3BC(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5u, 5u, "phUtilNfc_SetLibNfcContext");
  v3 = 0;
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
      v7 = 255;
      goto LABEL_6;
    }
  }

  v7 = 0;
  v6[2] = a2;
LABEL_6:
  sub_297E4DFAC(0, &v9, 5u, 5u, "phUtilNfc_SetLibNfcContext");
  return v7;
}

uint64_t sub_297E9F46C(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5u, 5u, "phUtilNfc_SetNdefNfcContext");
  v3 = 0;
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
      v7 = 255;
      goto LABEL_6;
    }
  }

  v7 = 0;
  v6[3] = a2;
LABEL_6:
  sub_297E4DFAC(0, &v9, 5u, 5u, "phUtilNfc_SetNdefNfcContext");
  return v7;
}

uint64_t sub_297E9F51C(uint64_t a1, void *a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5u, 5u, "phUtilNfc_GetNciNfcContext");
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
    *a2 = v6[4];
  }

  else
  {
LABEL_5:
    v7 = 255;
  }

  sub_297E4DFAC(0, &v9, 5u, 5u, "phUtilNfc_GetNciNfcContext");
  return v7;
}

uint64_t sub_297E9F5D8(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5u, 5u, "phUtilNfc_SetNciNfcContext");
  v3 = 0;
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
      v7 = 255;
      goto LABEL_6;
    }
  }

  v7 = 0;
  v6[4] = a2;
LABEL_6:
  sub_297E4DFAC(0, &v9, 5u, 5u, "phUtilNfc_SetNciNfcContext");
  return v7;
}

uint64_t sub_297E9F688(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5u, 5u, "phUtilNfc_SetNciNfcCoreContext");
  v3 = 0;
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
      v7 = 255;
      goto LABEL_6;
    }
  }

  v7 = 0;
  v6[5] = a2;
LABEL_6:
  sub_297E4DFAC(0, &v9, 5u, 5u, "phUtilNfc_SetNciNfcCoreContext");
  return v7;
}

uint64_t sub_297E9F738(uint64_t a1)
{
  v6 = a1;
  sub_297E4E1B4(0, &v6, 5u, 5u, "phUtilNfc_ValidateDriverHandle");
  v1 = 0;
  v2 = 0;
  v3 = v6;
  do
  {
    v4 = *(&unk_2A18BDDC0 + 14 * v2);
    if (v1)
    {
      break;
    }

    v1 = 1;
    v2 = 1;
  }

  while (v6 != v4);
  sub_297E4DFAC(0, &v6, 5u, 5u, "phUtilNfc_ValidateDriverHandle");
  if (v3 == v4)
  {
    return 0;
  }

  else
  {
    return 255;
  }
}

uint64_t sub_297E9F7D8(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5u, 5u, "phUtilNfc_SetDnldNfcContext");
  v3 = 0;
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
      v7 = 255;
      goto LABEL_6;
    }
  }

  v7 = 0;
  v6[6] = a2;
LABEL_6:
  sub_297E4DFAC(0, &v9, 5u, 5u, "phUtilNfc_SetDnldNfcContext");
  return v7;
}

uint64_t sub_297E9F888(uint64_t a1, char a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5u, 5u, "phUtilNfc_SetIgnoreWkUpRet");
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
  v6[57] = a2;
LABEL_6:
  sub_297E4DFAC(0, &v9, 5u, 5u, "phUtilNfc_SetIgnoreWkUpRet");
  return v7;
}

uint64_t sub_297E9F938(unsigned int a1, uint64_t a2)
{
  v5 = a1;
  sub_297E4E1B4(1, &v5, 5u, 5u, "phUtilNfc_SetIoctlContext");
  if (v5 > 1)
  {
    v3 = 255;
  }

  else
  {
    v3 = 0;
    *(&unk_2A18BDDC0 + 14 * v5 + 11) = a2;
  }

  sub_297E4DFAC(1, &v5, 5u, 5u, "phUtilNfc_SetIoctlContext");
  return v3;
}

uint64_t sub_297E9F9CC(unsigned int a1, uint64_t a2)
{
  v5 = a1;
  sub_297E4E1B4(1, &v5, 5u, 5u, "phUtilNfc_SetdnldCoreContext");
  if (v5 > 1)
  {
    v3 = 255;
  }

  else
  {
    v3 = 0;
    *(&unk_2A18BDDC0 + 14 * v5 + 12) = a2;
  }

  sub_297E4DFAC(1, &v5, 5u, 5u, "phUtilNfc_SetdnldCoreContext");
  return v3;
}

uint64_t sub_297E9FA60(unsigned int a1, uint64_t a2)
{
  v5 = a1;
  sub_297E4E1B4(1, &v5, 5u, 5u, "phUtilNfc_SetdnldEseCoreContext");
  if (v5 > 1)
  {
    v3 = 255;
  }

  else
  {
    v3 = 0;
    *(&unk_2A18BDDC0 + 14 * v5 + 8) = a2;
  }

  sub_297E4DFAC(1, &v5, 5u, 5u, "phUtilNfc_SetdnldEseCoreContext");
  return v3;
}