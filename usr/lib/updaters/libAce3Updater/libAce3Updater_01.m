uint64_t uarpMsgRecvDownstreamEndpointMessageSendAck(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  result = UARPProtocolVersionRequiresDownstreamMessageACK(*(a2 + 48));
  if (result)
  {
    result = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Cu, 0xAu, 0);
    if (result)
    {
      v9 = result;
      v10 = *(result + 24);
      *(v10 + 6) = uarpHtons(a4);
      *(v10 + 8) = uarpHtons(a3);

      return uarpTransmitBuffer2(a1, a2, v9);
    }
  }

  return result;
}

__int16 *uarpOuiAppleGenericFeatures()
{
  result = &uarpOuiAppleGenericFeatures_myOui;
  uarpOuiAppleGenericFeatures_myOui = 2492;
  byte_2A14F0F05 = 99;
  return result;
}

uint64_t uarpApplePlatformEndpointRecvMessage(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, unsigned int *a5, unsigned int a6)
{
  result = 30;
  if (!a1 || !a2 || !a3 || !a5)
  {
    return result;
  }

  uarpOuiAppleGenericFeatures_myOui = 2492;
  byte_2A14F0F05 = 99;
  if (!uarpOuiCompare(a3, &uarpOuiAppleGenericFeatures_myOui))
  {
    return 9;
  }

  if (a4 != 33)
  {
    if (a4 == 32 && a6 >= 4)
    {
      v12 = *a2;
      v13 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xFFFFu, *a2, 0);
      if (!v13)
      {
        return 11;
      }

      v14 = v13;
      v15 = v13[3];
      uarpOuiAppleGenericFeatures_myOui = 2492;
      byte_2A14F0F05 = 99;
      *(v15 + 6) = 2492;
      *(v15 + 8) = 99;
      *(v15 + 9) = uarpHtons(0x21u);
      v16 = *(a1 + 40);
      v47 = 0;
      v17 = uarpNtohl(*a5);
      v18 = (v12 - 23);
      switch(v17)
      {
        case 1u:
          v19 = v16[1];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 1;
          goto LABEL_99;
        case 2u:
          v19 = v16[3];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 2;
          goto LABEL_99;
        case 3u:
          v19 = v16[5];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 3;
          goto LABEL_99;
        case 4u:
          v33 = v16[7];
          if (!v33)
          {
            goto LABEL_100;
          }

          v34 = v33(*(a1 + 608), 4, v15 + 23, v18, &v47);
          if (*(a2 + 48) < 4u)
          {
            break;
          }

          v35 = v47;
          if (v47 != 8)
          {
            goto LABEL_89;
          }

LABEL_72:
          *(v15 + 23) = uarpHtonll(*(v15 + 23));
          break;
        case 5u:
          v29 = v16[9];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 5;
          goto LABEL_87;
        case 6u:
          v29 = v16[11];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 6;
          goto LABEL_87;
        case 7u:
          v36 = v16[13];
          if (!v36)
          {
            goto LABEL_100;
          }

          v34 = v36(*(a1 + 608), 7, v15 + 23, v18, &v47);
          if (*(a2 + 48) >= 4u && v47 == 8)
          {
            goto LABEL_72;
          }

          break;
        case 8u:
          v29 = v16[17];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 8;
          goto LABEL_87;
        case 9u:
          v29 = v16[19];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 9;
          goto LABEL_87;
        case 0xAu:
          v29 = v16[21];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 10;
          goto LABEL_87;
        case 0xBu:
          v29 = v16[23];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 11;
          goto LABEL_87;
        case 0xCu:
          v19 = v16[25];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 12;
          goto LABEL_99;
        case 0xDu:
          v19 = v16[27];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 13;
          goto LABEL_99;
        case 0xEu:
          v19 = v16[29];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 14;
          goto LABEL_99;
        case 0xFu:
          v19 = v16[31];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 15;
          goto LABEL_99;
        case 0x10u:
          v29 = v16[33];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 16;
          goto LABEL_87;
        case 0x11u:
          v19 = v16[35];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 17;
          goto LABEL_99;
        case 0x12u:
          v19 = v16[37];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 18;
          goto LABEL_99;
        case 0x13u:
          v29 = v16[39];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 19;
          goto LABEL_87;
        case 0x14u:
          v29 = v16[41];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 20;
          goto LABEL_87;
        case 0x15u:
          v29 = v16[43];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 21;
          goto LABEL_87;
        case 0x16u:
          v29 = v16[45];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 22;
          goto LABEL_87;
        case 0x17u:
          v19 = v16[47];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 23;
          goto LABEL_99;
        case 0x18u:
          v19 = v16[49];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 24;
          goto LABEL_99;
        case 0x19u:
          v19 = v16[51];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 25;
          goto LABEL_99;
        case 0x1Au:
          v19 = v16[53];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 26;
          goto LABEL_99;
        case 0x1Bu:
          v19 = v16[55];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 27;
          goto LABEL_99;
        case 0x1Cu:
          v19 = v16[57];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 28;
          goto LABEL_99;
        case 0x1Du:
          v19 = v16[15];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 29;
          goto LABEL_99;
        case 0x1Eu:
          v19 = v16[59];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 30;
          goto LABEL_99;
        case 0x1Fu:
          v19 = v16[61];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 31;
          goto LABEL_99;
        case 0x20u:
          v19 = v16[63];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 32;
LABEL_99:
          v34 = v19(v20, v22, v21, v18, &v47);
          break;
        case 0x21u:
          v29 = v16[65];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 33;
LABEL_87:
          v34 = v29(v30, v32, v31, v18, &v47);
          if (*(a2 + 48) < 4u)
          {
            break;
          }

          v35 = v47;
LABEL_89:
          if (v35 == 4)
          {
            *(v15 + 23) = uarpHtonl(*(v15 + 23));
          }

          break;
        default:
LABEL_100:
          v34 = 26;
          break;
      }

      *(v15 + 11) = uarpHtonl(v34);
      *(v15 + 15) = uarpHtonl(v17);
      *(v15 + 19) = uarpHtonl(v47);
      v37 = v47 + 23;
      *(v15 + 2) = uarpHtons((v47 + 17));
      *(v14 + 18) = v37;
      return uarpTransmitBuffer2(a1, a2, v14);
    }

    return 9;
  }

  if (a6 < 4)
  {
    return 9;
  }

  if (a6 < 0xC)
  {
    return 8;
  }

  v23 = uarpNtohl(a5[1]);
  v24 = uarpNtohl(a5[2]);
  result = 8;
  if (v24 <= 0xFFFFFFF3 && v24 + 12 <= a6)
  {
    v25 = (a5 + 3);
    if (v24)
    {
      v26 = a5 + 3;
    }

    else
    {
      v26 = 0;
    }

    v27 = *(a1 + 40);
    switch(v23)
    {
      case 1:
        v28 = v27[2];
        if (v28)
        {
          goto LABEL_159;
        }

        return 1;
      case 2:
        v28 = v27[4];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 3:
        v28 = v27[6];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 4:
        v41 = v27[8];
        v38 = (v27 + 8);
        if (!v41)
        {
          return 1;
        }

        if (v24 == 8)
        {
          goto LABEL_149;
        }

        if (v24 != 4)
        {
          goto LABEL_158;
        }

        break;
      case 5:
        v39 = v27[10];
        v38 = (v27 + 10);
        v28 = v39;
        if (!v39)
        {
          return 1;
        }

        goto LABEL_156;
      case 6:
        v43 = v27[12];
        v38 = (v27 + 12);
        v28 = v43;
        if (!v43)
        {
          return 1;
        }

        goto LABEL_156;
      case 7:
        v44 = v27[14];
        v38 = (v27 + 14);
        v28 = v44;
        if (!v44)
        {
          return 1;
        }

        if (v24 != 8)
        {
          goto LABEL_159;
        }

LABEL_149:
        *v25 = uarpNtohll(*v25);
        goto LABEL_158;
      case 8:
        v42 = v27[18];
        v38 = (v27 + 18);
        v28 = v42;
        if (!v42)
        {
          return 1;
        }

        goto LABEL_156;
      case 9:
        v46 = v27[20];
        v38 = (v27 + 20);
        v28 = v46;
        if (v46)
        {
          goto LABEL_156;
        }

        return 1;
      case 10:
        v40 = v27[22];
        v38 = (v27 + 22);
        v28 = v40;
        if (!v40)
        {
          return 1;
        }

        goto LABEL_156;
      case 11:
        v45 = v27[24];
        v38 = (v27 + 24);
        v28 = v45;
        if (!v45)
        {
          return 1;
        }

LABEL_156:
        if (v24 == 4)
        {
          break;
        }

        goto LABEL_159;
      case 12:
        v28 = v27[26];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 13:
        v28 = v27[28];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 14:
        v28 = v27[30];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 15:
        v28 = v27[32];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 16:
        v28 = v27[34];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 34);
        break;
      case 17:
        v28 = v27[36];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 18:
        v28 = v27[38];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 19:
        v28 = v27[40];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 40);
        break;
      case 20:
        v28 = v27[42];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 42);
        break;
      case 21:
        v28 = v27[44];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 44);
        break;
      case 22:
        v28 = v27[46];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 46);
        break;
      case 23:
        v28 = v27[48];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 24:
        v28 = v27[50];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 25:
        v28 = v27[52];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 26:
        v28 = v27[54];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 27:
        v28 = v27[56];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 28:
        v28 = v27[58];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 29:
        v28 = v27[16];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 30:
        v28 = v27[60];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 31:
        v28 = v27[62];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 32:
        v28 = v27[64];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 33:
        v28 = v27[66];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 66);
        break;
      default:
        return 1;
    }

    *v25 = uarpNtohl(*v25);
LABEL_158:
    v28 = *v38;
LABEL_159:
    v28(*(a1 + 608), *(a2 + 40), v26, v24);
    return 0;
  }

  return result;
}

BOOL uarpApplePlatformMessageCheckExpectedResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a6 < 0xB)
  {
    return 0;
  }

  if (*(a5 + 6) != *(a3 + 6) || *(a5 + 8) != *(a3 + 8))
  {
    return 0;
  }

  uarpOuiAppleGenericFeatures_myOui = 2492;
  byte_2A14F0F05 = 99;
  v10 = *(a5 + 6) == 2492 && *(a5 + 8) == 99;
  if (!v10 || uarpNtohs(*(a5 + 9)) != 33)
  {
    return 0;
  }

  v12 = uarpNtohs(*(a3 + 9));
  result = 0;
  if (a6 >= 0x17 && v12 == 32)
  {
    return *(a5 + 15) == *(a3 + 11);
  }

  return result;
}

uint64_t uarpApplePlatformMessageCheckValidToSend(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    return 1;
  }

  uarpOuiAppleGenericFeatures_myOui = 2492;
  byte_2A14F0F05 = 99;
  if (*(a3 + 6) != 2492 || *(a3 + 8) != 99)
  {
    return 1;
  }

  v11 = uarpNtohs(*(a3 + 9));
  result = 1;
  if (a4 >= 0xF && v11 == 32)
  {
    if (uarpNtohl(*(a3 + 11)) == 2 && (*(a2 + 48) < 2u || *(a2 + 24)))
    {
      v12 = *(v4 + 32);
      if (v12)
      {
LABEL_14:
        v12(*(a1 + 608), *(a2 + 40), 0, 0);
      }
    }

    else
    {
      if (uarpNtohl(*(a3 + 11)) != 1 || *(a2 + 48) >= 2u && !*(a2 + 24))
      {
        return 1;
      }

      v12 = *(v4 + 16);
      if (v12)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

  return result;
}

uint64_t uarpApplePlatformMessageExceededRetries(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(result + 40);
  if (v4)
  {
    uarpOuiAppleGenericFeatures_myOui = 2492;
    byte_2A14F0F05 = 99;
    if (*(a3 + 6) == 2492 && *(a3 + 8) == 99)
    {
      v9 = result;
      result = uarpHtons(*(a3 + 9));
      if (a4 >= 0xF && result == 32)
      {
        result = uarpHtonl(*(a3 + 11));
        if (result == 1)
        {
          v10 = v4[2];
          if (!v10)
          {
            return result;
          }
        }

        else
        {
          result = uarpHtonl(*(a3 + 11));
          if (result == 2)
          {
            v10 = v4[4];
            if (!v10)
            {
              return result;
            }
          }

          else
          {
            result = uarpHtonl(*(a3 + 11));
            if (result == 3)
            {
              v10 = v4[6];
              if (!v10)
              {
                return result;
              }
            }

            else
            {
              result = uarpHtonl(*(a3 + 11));
              if (result == 4)
              {
                v10 = v4[8];
                if (!v10)
                {
                  return result;
                }
              }

              else
              {
                result = uarpHtonl(*(a3 + 11));
                if (result == 5)
                {
                  v10 = v4[10];
                  if (!v10)
                  {
                    return result;
                  }
                }

                else
                {
                  result = uarpHtonl(*(a3 + 11));
                  if (result == 6)
                  {
                    v10 = v4[12];
                    if (!v10)
                    {
                      return result;
                    }
                  }

                  else
                  {
                    result = uarpHtonl(*(a3 + 11));
                    if (result == 7)
                    {
                      v10 = v4[14];
                      if (!v10)
                      {
                        return result;
                      }
                    }

                    else
                    {
                      result = uarpHtonl(*(a3 + 11));
                      if (result == 29)
                      {
                        v10 = v4[16];
                        if (!v10)
                        {
                          return result;
                        }
                      }

                      else
                      {
                        result = uarpHtonl(*(a3 + 11));
                        if (result == 8)
                        {
                          v10 = v4[18];
                          if (!v10)
                          {
                            return result;
                          }
                        }

                        else
                        {
                          result = uarpHtonl(*(a3 + 11));
                          if (result == 9)
                          {
                            v10 = v4[20];
                            if (!v10)
                            {
                              return result;
                            }
                          }

                          else
                          {
                            result = uarpHtonl(*(a3 + 11));
                            if (result == 10)
                            {
                              v10 = v4[22];
                              if (!v10)
                              {
                                return result;
                              }
                            }

                            else
                            {
                              result = uarpHtonl(*(a3 + 11));
                              if (result == 11)
                              {
                                v10 = v4[24];
                                if (!v10)
                                {
                                  return result;
                                }
                              }

                              else
                              {
                                result = uarpHtonl(*(a3 + 11));
                                if (result == 12)
                                {
                                  v10 = v4[26];
                                  if (!v10)
                                  {
                                    return result;
                                  }
                                }

                                else
                                {
                                  result = uarpHtonl(*(a3 + 11));
                                  if (result == 13)
                                  {
                                    v10 = v4[28];
                                    if (!v10)
                                    {
                                      return result;
                                    }
                                  }

                                  else
                                  {
                                    result = uarpHtonl(*(a3 + 11));
                                    if (result == 14)
                                    {
                                      v10 = v4[30];
                                      if (!v10)
                                      {
                                        return result;
                                      }
                                    }

                                    else
                                    {
                                      result = uarpHtonl(*(a3 + 11));
                                      if (result == 15)
                                      {
                                        v10 = v4[32];
                                        if (!v10)
                                        {
                                          return result;
                                        }
                                      }

                                      else
                                      {
                                        result = uarpHtonl(*(a3 + 11));
                                        if (result == 16)
                                        {
                                          v10 = v4[34];
                                          if (!v10)
                                          {
                                            return result;
                                          }
                                        }

                                        else
                                        {
                                          result = uarpHtonl(*(a3 + 11));
                                          if (result == 17)
                                          {
                                            v10 = v4[36];
                                            if (!v10)
                                            {
                                              return result;
                                            }
                                          }

                                          else
                                          {
                                            result = uarpHtonl(*(a3 + 11));
                                            if (result == 18)
                                            {
                                              v10 = v4[38];
                                              if (!v10)
                                              {
                                                return result;
                                              }
                                            }

                                            else
                                            {
                                              result = uarpHtonl(*(a3 + 11));
                                              if (result == 19)
                                              {
                                                v10 = v4[40];
                                                if (!v10)
                                                {
                                                  return result;
                                                }
                                              }

                                              else
                                              {
                                                result = uarpHtonl(*(a3 + 11));
                                                if (result == 20)
                                                {
                                                  v10 = v4[42];
                                                  if (!v10)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                else
                                                {
                                                  result = uarpHtonl(*(a3 + 11));
                                                  if (result == 21)
                                                  {
                                                    v10 = v4[44];
                                                    if (!v10)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    result = uarpHtonl(*(a3 + 11));
                                                    if (result == 22)
                                                    {
                                                      v10 = v4[46];
                                                      if (!v10)
                                                      {
                                                        return result;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      result = uarpHtonl(*(a3 + 11));
                                                      if (result == 23)
                                                      {
                                                        v10 = v4[48];
                                                        if (!v10)
                                                        {
                                                          return result;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        result = uarpHtonl(*(a3 + 11));
                                                        if (result == 24)
                                                        {
                                                          v10 = v4[50];
                                                          if (!v10)
                                                          {
                                                            return result;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          result = uarpHtonl(*(a3 + 11));
                                                          if (result == 30)
                                                          {
                                                            v10 = v4[60];
                                                            if (!v10)
                                                            {
                                                              return result;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            result = uarpHtonl(*(a3 + 11));
                                                            if (result == 31)
                                                            {
                                                              v10 = v4[62];
                                                              if (!v10)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              result = uarpHtonl(*(a3 + 11));
                                                              if (result == 32)
                                                              {
                                                                v10 = v4[64];
                                                                if (!v10)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                result = uarpHtonl(*(a3 + 11));
                                                                if (result != 33)
                                                                {
                                                                  return result;
                                                                }

                                                                v10 = v4[66];
                                                                if (!v10)
                                                                {
                                                                  return result;
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

        v11 = *(v9 + 608);
        v12 = *(a2 + 40);

        return v10(v11, v12, 0, 0);
      }
    }
  }

  return result;
}

uint64_t uarpCompressionHeaderEndianSwap(unsigned __int16 *a1, uint64_t a2)
{
  *a2 = uarpHtons(*a1);
  *(a2 + 2) = uarpHtonl(*(a1 + 1));
  *(a2 + 6) = uarpHtons(a1[3]);
  result = uarpHtons(a1[4]);
  *(a2 + 8) = result;
  return result;
}

char *uarpAssetTagChdr4cc()
{
  result = uarpAssetTagChdr4cc_assetTag;
  uarpAssetTagChdr4cc_assetTag[4] = 0;
  return result;
}

int *uarpAssetTagStructChdr()
{
  uarpAssetTagChdr4cc_assetTag[4] = 0;
  result = &uarpAssetTagStructChdr_myTag;
  uarpAssetTagStructChdr_myTag = *uarpAssetTagChdr4cc_assetTag;
  return result;
}

uint64_t uarpPayloadTagUnpack(uint64_t result, char *a2)
{
  v2 = result >> 8;
  v3 = WORD1(result);
  if (result)
  {
    v4 = result;
  }

  else
  {
    v4 = 48;
  }

  if (!result)
  {
    LOBYTE(v2) = 48;
    LOBYTE(v3) = 48;
  }

  *a2 = v4;
  a2[1] = v2;
  if (result)
  {
    v5 = BYTE3(result);
  }

  else
  {
    v5 = 48;
  }

  a2[2] = v3;
  a2[3] = v5;
  return result;
}

_BYTE *uarpPayloadTagStructPack(_BYTE *result, _BYTE *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[2] = result[2];
  a2[3] = result[3];
  return result;
}

_BYTE *uarpPayloadTagStructUnpack(_BYTE *result, _BYTE *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[2] = result[2];
  a2[3] = result[3];
  return result;
}

uint64_t uarpVersionCompare(_DWORD *a1, _DWORD *a2)
{
  if (*a1 > *a2)
  {
    return 2;
  }

  if (*a1 < *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 > v4)
  {
    return 2;
  }

  if (v3 < v4)
  {
    return 1;
  }

  v5 = a1[2];
  v6 = a2[2];
  if (v5 > v6)
  {
    return 2;
  }

  if (v5 < v6)
  {
    return 1;
  }

  v7 = a1[3];
  v8 = a2[3];
  v9 = v7 >= v8;
  v10 = v7 == v8;
  v11 = v7 < v8;
  if (!v10 && v9)
  {
    return 2;
  }

  else
  {
    return v11;
  }
}

uint64_t uarpAssetCompare(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 46) == *(a2 + 46) && *(a1 + 48) == *(a2 + 48) && *(a1 + 49) == *(a2 + 49) && *(a1 + 50) == *(a2 + 50) && *(a1 + 51) == *(a2 + 51) && *(a1 + 68) == *(a2 + 68) && *(a1 + 448) == *(a2 + 448))
  {
    return uarpVersionCompare((a1 + 52), (a2 + 52));
  }

  else
  {
    return 3;
  }
}

uint64_t uarpVersionEndianSwap(unsigned int *a1, _DWORD *a2)
{
  *a2 = uarpNtohl(*a1);
  a2[1] = uarpNtohl(a1[1]);
  a2[2] = uarpNtohl(a1[2]);
  result = uarpNtohl(a1[3]);
  a2[3] = result;
  return result;
}

const char *uarpStatusCodeToString(unsigned int a1)
{
  if (a1 > 0x41)
  {
    return "<unknown>";
  }

  else
  {
    return off_29F28FB80[a1];
  }
}

int *uarpAssetTagStructSuperBinary()
{
  result = &uarpAssetTagStructSuperBinary_myTag;
  uarpAssetTagStructSuperBinary_myTag = 0;
  return result;
}

const char *uarpApplyFlagsToString(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "<unknown>";
  }

  else
  {
    return off_29F28FD90[a1 - 1];
  }
}

const char *uarpProcessingFlagsReasonToString(int a1)
{
  HIDWORD(v2) = a1 - 256;
  LODWORD(v2) = a1 - 256;
  v1 = v2 >> 8;
  if (v1 > 0xE)
  {
    return "<unknown>";
  }

  else
  {
    return off_29F28FDC0[v1];
  }
}

const char *uarpProcessingStatusToString(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "<unknown>";
  }

  else
  {
    return off_29F28FE38[(a1 - 1)];
  }
}

__int128 *uarpStageStatusToString(unsigned __int16 a1)
{
  if (a1 <= 2u)
  {
    if (a1 == 1)
    {
      result = uarpStageStatusToString_stageStatusString;
      strcpy(uarpStageStatusToString_stageStatusString, "Upload Complete");
      return result;
    }

    if (a1 == 2)
    {
      v1 = "Upload Denied";
      goto LABEL_13;
    }

LABEL_12:
    v1 = "<unknown>";
    goto LABEL_13;
  }

  if (a1 == 5)
  {
    v1 = "Asset Not Found";
    goto LABEL_13;
  }

  if (a1 == 4)
  {
    v1 = "Asset Corrupt";
    goto LABEL_13;
  }

  if (a1 != 3)
  {
    goto LABEL_12;
  }

  v1 = "Upload Abandoned";
LABEL_13:
  v3 = uarpProcessingFlagsReasonToString(a1 & 0xFF00);
  snprintf(uarpStageStatusToString_stageStatusString, 0x100uLL, "%s (%s)", v1, v3);
  return uarpStageStatusToString_stageStatusString;
}

const char *uarpEndpointRoleToString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "<unknown>";
  }

  else
  {
    return off_29F28FEA8[a1];
  }
}

const char *uarpLoggingCategoryToString(unsigned int a1)
{
  if (a1 > 8)
  {
    return "<unknown>";
  }

  else
  {
    return off_29F28FE60[a1];
  }
}

void *uarpProcessPayloadTLVInternal(void *result, uint64_t a2, uint64_t a3, signed int a4, size_t __size, unsigned int *a6)
{
  v10 = result;
  if (a4 != -858619624)
  {
    if (a4 == -858619625)
    {
      if (__size == 2)
      {
        v12 = uarpNtohs(*a6);
        *(a3 + 76) = v12;
        UARPLayer2HashInfo(v10, v12, (a3 + 88), (a3 + 104));
        v13 = *(a3 + 88);
        if (!v13 || !UARPLayer2RequestBuffer(v10, (a3 + 80), v13, 34952, 850) && *(a3 + 80))
        {
          v14 = *(a3 + 104);
          if (!v14 || !UARPLayer2RequestBuffer(v10, (a3 + 96), v14, 34952, 866) && *(a3 + 96))
          {
            v18 = *(a3 + 76);
            v19 = *(a3 + 80);

            return UARPLayer2HashInit(v10, v18, v19);
          }
        }

        *(a3 + 76) = 0;
      }

LABEL_11:

      return UARPLayer2AssetCorrupt(v10, a2);
    }

    if (*(a3 + 76))
    {
      v21 = uarpHtonl(a4);
      UARPLayer2HashUpdate(v10, *(a3 + 76), *(a3 + 80), &v21, 4);
      v20 = uarpHtonl(__size);
      UARPLayer2HashUpdate(v10, *(a3 + 76), *(a3 + 80), &v20, 4);
      result = UARPLayer2HashUpdate(v10, *(a3 + 76), *(a3 + 80), a6, __size);
    }

    if (a4 > -858619631)
    {
      if (a4 == -858619630)
      {
        if (__size == 2)
        {
          result = uarpNtohs(*a6);
          *(a3 + 56) = result;
          return result;
        }
      }

      else
      {
        if (a4 != -858619623)
        {
          return result;
        }

        if (__size == 4)
        {
          result = uarpNtohl(*a6);
          *(a3 + 128) = result;
          return result;
        }
      }
    }

    else if (a4 == -858619641)
    {
      *(a3 + 72) = __size;
      if (!UARPLayer2RequestBuffer(v10, (a3 + 64), __size, 34952, 966))
      {
        v17 = *(a3 + 64);
        if (v17)
        {
          return memcpy(v17, a6, *(a3 + 72));
        }
      }
    }

    else
    {
      if (a4 != -858619636)
      {
        return result;
      }

      if (__size == 4)
      {
        result = uarpNtohl(*a6);
        if (result)
        {
          *(a3 + 52) = 1;
          if (!*(a2 + 656))
          {
            result = UARPLayer2RequestBuffer(v10, (a2 + 656), *(a2 + 648), 34952, 942);
            if (*(a2 + 656))
            {
              *(a2 + 664) = *(a2 + 648);
              *(a2 + 668) = 0;
            }
          }

          return result;
        }
      }
    }

    return UARPLayer2AssetCorrupt(v10, a2);
  }

  *(a3 + 120) = __size;
  if (UARPLayer2RequestBuffer(result, (a3 + 112), __size, 34952, 887))
  {
    goto LABEL_11;
  }

  v15 = *(a3 + 112);
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = *(a3 + 120);

  return memcpy(v15, a6, v16);
}

uint64_t uarpAssetSuperBinaryVersionForProtocolVersion(unsigned int a1)
{
  if (a1 < 3)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t uarpDownstreamEndpointGetID(uint64_t a1, _WORD *a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 120);
    }
  }

  return result;
}

void uarpPrintDataResponseDetails(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6, int a7)
{
  v12 = *(a1 + 448);
  if (v12)
  {
    v13 = *(a1 + 608);
    v14 = *(a1 + 616);
    if (v14 > 2)
    {
      v15 = "<unknown>";
    }

    else
    {
      v15 = off_29F28FEA8[v14];
    }

    v18 = uarpStatusCodeToString(a4);
    v12(v13, 1, "<ROLE=%s> UARP.LAYER2.DATA.RESP status=<%s>, offset=0x%08x, requestedlength=%u, respondedlength=%u", v15, v18, a5, a6, a7);
  }

  else
  {
    v16 = *(a1 + 616);
    if (v16 > 2)
    {
      v17 = "<unknown>";
    }

    else
    {
      v17 = off_29F28FEA8[v16];
    }

    v19 = uarpStatusCodeToString(a4);
    uarpLogInfo(1u, "<ROLE=%s> UARP.LAYER2.DATA.RESP status=<%s>, offset=0x%08x, requestedlength=%u, respondedlength=%u", v17, v19, a5, a6, a7);
  }

  v20 = *(a1 + 448);
  if (v20)
  {
    v21 = *(a1 + 616);
    if (v21 > 2)
    {
      v22 = "<unknown>";
    }

    else
    {
      v22 = off_29F28FEA8[v21];
    }

    v20(*(a1 + 608), 1, "<ROLE=%s> UARP.LAYER2.DATA.RESP offset=0x%08x, requestedlength=%u", v22, *(a3 + 88), *(a3 + 92));
  }

  else
  {
    v23 = *(a1 + 616);
    if (v23 > 2)
    {
      v24 = "<unknown>";
    }

    else
    {
      v24 = off_29F28FEA8[v23];
    }

    uarpLogInfo(1u, "<ROLE=%s> UARP.LAYER2.DATA.RESP offset=0x%08x, requestedlength=%u", v24, *(a3 + 88), *(a3 + 92));
  }
}

uint64_t uarpCopyDefaultInfoString(_DWORD *a1, uint64_t a2)
{
  if (a2 < 7)
  {
    return 0;
  }

  *(a1 + 3) = 1314344782;
  *a1 = 1313558101;
  return a2;
}

uint64_t uarpMessageAdjustedForEndpointID(unsigned __int16 *a1, unsigned int a2, _WORD *a3, void *a4, unsigned int *a5)
{
  result = 30;
  if (a2 >= 6 && a1 && a3 && a4 && a5)
  {
    v10 = a2;
    if (uarpNtohs(*a1) == 27)
    {
      v11 = v10 >= 8;
      v10 -= 8;
      if (!v11)
      {
        return 30;
      }

      *a3 = uarpNtohs(a1[3]);
      *a4 = a1 + 4;
    }

    else
    {
      *a3 = 0;
      *a4 = a1;
    }

    result = 0;
    *a5 = v10;
  }

  return result;
}

const char *uarpMessageTypeToString(__int16 a1)
{
  if ((a1 + 1) > 0x27u)
  {
    return "<unknown>";
  }

  else
  {
    return off_29F28FEC0[(a1 + 1)];
  }
}

void *uarpAllocateTransmitBuffer2(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v12 = 0;
  v6 = UARPLayer2RequestBuffer(a1, &v12, 0x48uLL, 61166, 61);
  result = 0;
  if (!v6)
  {
    v8 = *a2 + *(a2 + 30) + 26;
    if (v8 <= a3)
    {
      v8 = a3;
    }

    v11 = v8;
    if (UARPLayer2RequestTransmitMsgBuffer(a1, a2, v12 + 1, &v11, 61166, 95))
    {
      UARPLayer2ReturnBuffer(a1, v12, 61166, 101);
      return 0;
    }

    else
    {
      v9 = v11;
      result = v12;
      *(v12 + 4) = v11;
      v10 = *(a2 + 30);
      result[3] = result[1] + v10;
      *(result + 8) = v9 - v10;
      *(result + 18) = 0;
    }
  }

  return result;
}

void *uarpAllocPrepareTransmitBuffer2(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v10 = *(a2 + 104);
  if (v10)
  {
    *(a2 + 104) = *v10;
    v11 = *(v10 + 8);
    if (v11 >= a4)
    {
      goto LABEL_6;
    }

    UARPLayer2ReturnTransmitMsgBuffer(a1, a2, v10[1], 61166, 128);
    UARPLayer2ReturnBuffer(a1, v10, 61166, 133);
  }

  TransmitBuffer2 = uarpAllocateTransmitBuffer2(a1, a2, a4);
  v10 = TransmitBuffer2;
  if (!TransmitBuffer2)
  {
    return v10;
  }

  v11 = *(TransmitBuffer2 + 8);
LABEL_6:
  *(v10 + 18) = a4;
  *(v10 + 40) = a5;
  if (a5)
  {
    v13 = *(a2 + 18) + 1;
  }

  else
  {
    v13 = 1;
  }

  *(v10 + 39) = v13;
  *(v10 + 32) = *(a2 + 16);
  bzero(v10[3], v11);
  v14 = uarpHtons(a3);
  v15 = v10[3];
  *v15 = v14;
  v15[1] = a4 - 6;
  v16 = uarpHtons((a4 - 6));
  v17 = v10[3];
  *(v17 + 2) = v16;
  *(v17 + 4) = 0;
  return v10;
}

uint64_t uarpAllocateTransmitBuffers(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 34))
  {
    v4 = 0;
    do
    {
      TransmitBuffer2 = uarpAllocateTransmitBuffer2(a1, a2, 0);
      bzero(TransmitBuffer2[1], *(TransmitBuffer2 + 4));
      *(TransmitBuffer2 + 42) = 0;
      *(TransmitBuffer2 + 9) = 0;
      *(TransmitBuffer2 + 40) = 0;
      TransmitBuffer2[6] = 0;
      TransmitBuffer2[7] = 0;
      *(TransmitBuffer2 + 32) = 0;
      *TransmitBuffer2 = *(a2 + 104);
      *(a2 + 104) = TransmitBuffer2;
      ++v4;
    }

    while (v4 < *(a2 + 34));
  }

  return 0;
}

uint64_t uarpTransmitBuffer2(uint64_t a1, uint64_t a2, void *a3)
{
  UARPLayer2MonotonicClockTime(a1, a3 + 6);
  *a3 = 0;
  v6 = (a2 + 112);
  for (i = *(a2 + 112); i; i = *i)
  {
    v6 = i;
  }

  *v6 = a3;
  if (!*(a2 + 54))
  {
    uarpTransmitQueueService(a1, a2);
  }

  return 0;
}

uint64_t uarpTransmitQueueService(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 644) == 1)
  {
    return 0;
  }

  v20[11] = v2;
  v20[12] = v3;
  UARPLayer2WatchdogCancel(a1, a2);
  v20[0] = 0;
  v6 = UARPLayer2MonotonicClockTime(a1, v20);
  v7 = *(a2 + 112);
  if (!v7)
  {
    uarpTransmitQueueReclaimEntries(v6, a2);
    return 0;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    if (*(v7 + 42) == 1)
    {
      goto LABEL_5;
    }

    v10 = v7[3];
    if (!v10)
    {
      v11 = *(a1 + 440);
      if (v11)
      {
        v6 = v11(*(a1 + 608), 6, "%s: ESPRESSO Corrupt Entry ? pBuffer = %p, pMsg = %p", "uarpTransmitEntryIsValidToSend", v7[1], 0);
      }

      else
      {
        uarpLogError(6u, "%s: ESPRESSO Corrupt Entry ? pBuffer = %p, pMsg = %p", "uarpTransmitEntryIsValidToSend", v7[1], 0);
      }

      goto LABEL_5;
    }

    v6 = uarpNtohs(*v10);
    if (v6 != 0xFFFF)
    {
      break;
    }

    v12 = v7[3];
    v13 = *(v7 + 18);
    v6 = UARPLayer2VendorSpecificCheckValidToSend(a1, a2);
    if (v6)
    {
      goto LABEL_17;
    }

LABEL_5:
    *(v7 + 38) = *(v7 + 39) + 1;
    v7[7] = v20[0];
LABEL_6:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_26;
    }
  }

  if (v6 == 3)
  {
    v6 = uarpNtohl(*(v7[3] + 6));
    if (v6 == 9 && *(a2 + 48) <= 2u)
    {
      v6 = UARPLayer2FriendlyNameResponse(a1, a2);
      goto LABEL_5;
    }
  }

LABEL_17:
  v14 = v20[0];
  if (v20[0] && v20[0] - v7[7] < ((8389 * (*(v7 + 32) >> 3)) >> 20))
  {
    goto LABEL_6;
  }

  v15 = *(v7 + 38);
  if (v15 >= *(v7 + 39))
  {
    goto LABEL_6;
  }

  *(v7 + 38) = v15 + 1;
  v7[7] = v14;
  *(v7[3] + 4) = uarpHtons(*(a2 + 62));
  ++*(a2 + 62);
  UARPLayer2SendMessage(a1, a2, v7[1], *(a2 + 30) + *(v7 + 18));
  v16 = v7[3];
  v17 = *(v7 + 18);
  v6 = UARPLayer2LogPacket(a1, a2);
  if (*(v7 + 40) == 1)
  {
    v9 = 1;
  }

  if (++v8 < *(a2 + 20) || !*(v7 + 40))
  {
    goto LABEL_6;
  }

LABEL_26:
  uarpTransmitQueueReclaimEntries(v6, a2);
  if (v8 >= 1 && v9 == 1)
  {
    v18 = *(a2 + 16);
    UARPLayer2WatchdogSet(a1, a2);
  }

  return 0;
}

void uarpTransmitQueueReclaimEntries(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 104);
    while (1)
    {
      v6 = *v3;
      *v3 = 0;
      if (!*(v3 + 40) && *(v3 + 38) >= *(v3 + 39))
      {
        break;
      }

      if (v4)
      {
        v7 = v4;
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
        goto LABEL_11;
      }

      v4 = v3;
LABEL_12:
      v3 = v6;
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    bzero(v3[1], *(v3 + 4));
    *(v3 + 42) = 0;
    *(v3 + 9) = 0;
    *(v3 + 40) = 0;
    v3[6] = 0;
    v3[7] = 0;
    *(v3 + 32) = 0;
    *v3 = *v5;
    v8 = (a2 + 104);
LABEL_11:
    *v8 = v3;
    goto LABEL_12;
  }

  v4 = 0;
LABEL_15:
  *(a2 + 112) = v4;
}

void uarpTransmitQueuesCleanup(uint64_t a1, uint64_t a2)
{
  UARPLayer2WatchdogCancel(a1, a2);
  v4 = *(a2 + 104);
  *(a2 + 104) = 0;
  if (v4)
  {
    do
    {
      v5 = *v4;
      UARPLayer2ReturnTransmitMsgBuffer(a1, a2, v4[1], 61166, 128);
      UARPLayer2ReturnBuffer(a1, v4, 61166, 133);
      v4 = v5;
    }

    while (v5);
  }

  v6 = *(a2 + 112);
  *(a2 + 112) = 0;
  if (v6)
  {
    do
    {
      v7 = *v6;
      UARPLayer2ReturnTransmitMsgBuffer(a1, a2, v6[1], 61166, 128);
      UARPLayer2ReturnBuffer(a1, v6, 61166, 133);
      v6 = v7;
    }

    while (v7);
  }
}

void uarpTransmitQueueAssetRescinded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a2 + 112);
    while (v3)
    {
      if (uarpNtohs(*v3[3]) == 6)
      {
        v5 = uarpNtohs(*(v3[3] + 6));
        if (!a3 || v5 == *(a3 + 44))
        {
          *(v3 + 42) = 1;
          v3 = *v3;
        }
      }
    }
  }
}

void uarpTransmitQueuePurge(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 112);
  *(a2 + 112) = 0;
  if (v2)
  {
    do
    {
      v4 = *v2;
      bzero(v2[1], *(v2 + 4));
      *(v2 + 42) = 0;
      *(v2 + 9) = 0;
      *(v2 + 40) = 0;
      v2[6] = 0;
      v2[7] = 0;
      *(v2 + 32) = 0;
      *v2 = *(a2 + 104);
      *(a2 + 104) = v2;
      v2 = v4;
    }

    while (v4);
  }
}

uint64_t uarpPlatformDarwinDecompressBuffer(int a1, const uint8_t *__src, size_t src_size, uint8_t *__dst, size_t __n)
{
  result = 50;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v7 = COMPRESSION_LZBITMAP;
    }

    else
    {
      if (a1 != 3)
      {
        return result;
      }

      v7 = COMPRESSION_LZ4;
    }

    goto LABEL_11;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    v7 = 1538;
LABEL_11:
    if (compression_decode_buffer(__dst, __n, __src, src_size, 0, v7) == __n)
    {
      return 0;
    }

    else
    {
      return 51;
    }
  }

  if (src_size != __n)
  {
    return 51;
  }

  memcpy(__dst, __src, __n);
  return 0;
}

uint64_t uarpPlatformDarwinHashInfo(uint64_t result, _DWORD *a2, int *a3)
{
  v3 = result - 1;
  if ((result - 1) > 2)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = *&aH[4 * v3];
    v5 = 16 * v3 + 32;
  }

  *a2 = v4;
  *a3 = v5;
  return result;
}

uint64_t uarpPlatformDarwinHashInit(uint64_t result, CC_SHA512_CTX *c)
{
  switch(result)
  {
    case 3:
      return CC_SHA512_Init(c);
    case 2:
      return CC_SHA384_Init(c);
    case 1:
      return CC_SHA256_Init(c);
  }

  return result;
}

uint64_t uarpPlatformDarwinHashUpdate(uint64_t result, CC_SHA512_CTX *c, void *data, CC_LONG len)
{
  switch(result)
  {
    case 3:
      return CC_SHA512_Update(c, data, len);
    case 2:
      return CC_SHA384_Update(c, data, len);
    case 1:
      return CC_SHA256_Update(c, data, len);
  }

  return result;
}

uint64_t uarpPlatformDarwinHashFinal(uint64_t result, CC_SHA512_CTX *a2, unsigned __int8 *md, int a4)
{
  if (result == 2)
  {
    if (a4 == 48)
    {
      return CC_SHA384_Final(md, a2);
    }
  }

  else if (result == 1)
  {
    if (a4 == 32)
    {
      return CC_SHA256_Final(md, a2);
    }
  }

  else if (result == 3 && a4 == 64)
  {
    return CC_SHA512_Final(md, a2);
  }

  return result;
}

void uarpLogError(unsigned int a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(uarpLogError_logBuffer, 0x200uLL, __format, va);
  v3 = uarpLogToken(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    uarpLogError_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

uint64_t uarpLogToken(unsigned int a1)
{
  for (i = 0; i != 9; ++i)
  {
    v3 = uarpLoggingCategoryToString(i);
    uarpLogToken_tokens[i] = os_log_create("com.apple.uarp.embedded", v3);
  }

  if (a1 <= 8)
  {
    return uarpLogToken_tokens[a1];
  }

  else
  {
    return MEMORY[0x29EDCA988];
  }
}

void uarpLogDebug(unsigned int a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(uarpLogDebug_logBuffer, 0x200uLL, __format, va);
  v3 = uarpLogToken(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    uarpLogDebug_cold_1(v3);
  }
}

void uarpLogInfo(unsigned int a1, char *__format, ...)
{
  va_start(va, __format);
  v7 = *MEMORY[0x29EDCA608];
  vsnprintf(uarpLogInfo_logBuffer, 0x200uLL, __format, va);
  v3 = uarpLogToken(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v6 = uarpLogInfo_logBuffer;
    _os_log_impl(&dword_299E58000, v3, OS_LOG_TYPE_INFO, "%s\n", buf, 0xCu);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void uarpLogFault(unsigned int a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(uarpLogFault_logBuffer, 0x200uLL, __format, va);
  v3 = uarpLogToken(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    uarpLogFault_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

void uarpPlatformDarwinLogError(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  vsnprintf(uarpPlatformDarwinLogError_logBuffer, 0x200uLL, a3, &a9);
  v10 = uarpLogToken(a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    uarpPlatformDarwinLogError_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

void uarpPlatformDarwinLogInfo(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v14 = *MEMORY[0x29EDCA608];
  vsnprintf(uarpPlatformDarwinLogInfo_logBuffer, 0x200uLL, a3, &a9);
  v10 = uarpLogToken(a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = uarpPlatformDarwinLogInfo_logBuffer;
    _os_log_impl(&dword_299E58000, v10, OS_LOG_TYPE_INFO, "%s\n", buf, 0xCu);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void uarpPlatformDarwinLogDebug(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  vsnprintf(uarpPlatformDarwinLogDebug_logBuffer, 0x200uLL, a3, &a9);
  v10 = uarpLogToken(a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    uarpPlatformDarwinLogDebug_cold_1(v10);
  }
}

void uarpPlatformDarwinLogFault(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  vsnprintf(uarpPlatformDarwinLogFault_logBuffer, 0x200uLL, a3, &a9);
  v10 = uarpLogToken(a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    uarpPlatformDarwinLogFault_cold_1(v10);
  }
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t UARPSuperBinarySetupHeader(uint64_t a1, uint64_t a2, unsigned int a3, __int128 *a4, int a5)
{
  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  result = 30;
  if (a3 >= 2)
  {
    if (v9)
    {
      v16 = 0x2C00000002;
      v18 = *a4;
      v20 = 0x2C00000000;
      v21 = 40 * a5;
      v19 = 40 * a5 + 44;
      v17 = v19;
      result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v9, &v16, 44, 0);
      if (!result)
      {
        if (a5)
        {
          v11 = 44;
          while (1)
          {
            v15 = 0;
            v14 = 0u;
            v13 = 0u;
            v12 = 40;
            result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v9, &v12, 40, v11);
            if (result)
            {
              break;
            }

            v11 = (v11 + 40);
            if (!--a5)
            {
              return 0;
            }
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t UARPSuperBinaryAddMetaData(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v9)
  {
    return 30;
  }

  v10 = v9;
  v16 = 0;
  LOWORD(__dst[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v9, &v16, 4, 0, __dst);
  v12 = result;
  if (LOWORD(__dst[0]) == 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v13;
  }

  if (v12 || LOWORD(__dst[0]) != 4)
  {
    return result;
  }

  if (v16 < 2)
  {
    return 30;
  }

  memset(__dst, 0, 44);
  v18 = 0;
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, __dst, 44, 0, &v18);
  if (!result)
  {
    if (v18 == 44)
    {
      v14 = HIDWORD(__dst[1]);
      v15 = __dst[2];
      v17[0] = uarpHtonl(a3);
      v17[1] = uarpHtonl(a4);
      result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v17, 8, (v15 + v14));
      if (!result)
      {
        LODWORD(__dst[2]) += 8;
        DWORD2(__dst[0]) += 8;
        result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, a5, a4, (HIDWORD(__dst[1]) + LODWORD(__dst[2])));
        if (!result)
        {
          LODWORD(__dst[2]) += a4;
          DWORD2(__dst[0]) += a4;
          return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, __dst, 44, 0);
        }
      }
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t UARPSuperBinaryPreparePayload(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, _OWORD *a5)
{
  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v9)
  {
    return 30;
  }

  v10 = v9;
  __dst = 0;
  LOWORD(v16[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v9, &__dst, 4, 0, v16);
  v12 = result;
  if (LOWORD(v16[0]) == 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v13;
  }

  if (v12 || LOWORD(v16[0]) != 4)
  {
    return result;
  }

  if (__dst < 2)
  {
    return 30;
  }

  v19 = 0;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, 44);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v16, 44, 0, &v19);
  if (!result)
  {
    if (v19 != 44)
    {
      return 11;
    }

    v14 = (DWORD1(v16[2]) + 40 * a3);
    result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v17, 40, v14, &v19);
    if (!result)
    {
      if (v19 == 40)
      {
        DWORD1(v17[0]) = uarpTagStructPack32(a4);
        *(v17 + 8) = *a5;
        return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v17, 40, v14);
      }

      return 11;
    }
  }

  return result;
}

uint64_t UARPSuperBinaryAddPayloadMetaData(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v11 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v11)
  {
    return 30;
  }

  v12 = v11;
  __dst = 0;
  LOWORD(v21[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v11, &__dst, 4, 0, v21);
  v14 = result;
  if (LOWORD(v21[0]) == 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v15;
  }

  if (v14 || LOWORD(v21[0]) != 4)
  {
    return result;
  }

  if (__dst < 2)
  {
    return 30;
  }

  v25 = 0;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  memset(v21, 0, 44);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v12, v21, 44, 0, &v25);
  if (result)
  {
    return result;
  }

  if (v25 != 44)
  {
    return 11;
  }

  v16 = (DWORD1(v21[2]) + 40 * a3);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v12, &v22, 40, v16, &v25);
  if (result)
  {
    return result;
  }

  if (v25 != 40)
  {
    return 11;
  }

  v17 = DWORD2(v23);
  if (!DWORD2(v23))
  {
    v17 = DWORD2(v21[0]);
    DWORD2(v23) = DWORD2(v21[0]);
  }

  v18 = HIDWORD(v23);
  v20[0] = uarpHtonl(a4);
  v20[1] = uarpHtonl(a5);
  result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, v20, 8, (v18 + v17));
  if (!result)
  {
    HIDWORD(v23) += 8;
    DWORD2(v21[0]) += 8;
    result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, a6, a5, (DWORD2(v23) + HIDWORD(v23)));
    if (!result)
    {
      HIDWORD(v23) += a5;
      DWORD2(v21[0]) += a5;
      result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, &v22, 40, v16);
      if (!result)
      {
        return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, v21, 44, 0);
      }
    }
  }

  return result;
}

uint64_t UARPSuperBinaryAddPayloadDataLarge(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  v10 = 0;
  while (a5)
  {
    if (a5 >= 0xFFFF)
    {
      v11 = 0xFFFF;
    }

    else
    {
      v11 = a5;
    }

    result = UARPSuperBinaryAddPayloadData(a1, a2, a3, a4 + v10, v11);
    v10 += v11;
    a5 -= v11;
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t UARPSuperBinaryAddPayloadData(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  if (HIWORD(a5))
  {
    return 39;
  }

  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v9)
  {
    return 30;
  }

  v10 = v9;
  __dst = 0;
  LOWORD(v17[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v9, &__dst, 4, 0, v17);
  v12 = result;
  if (LOWORD(v17[0]) == 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v13;
  }

  if (v12 || LOWORD(v17[0]) != 4)
  {
    return result;
  }

  if (__dst < 2)
  {
    return 30;
  }

  v20 = 0;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, 44);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v17, 44, 0, &v20);
  if (result)
  {
    return result;
  }

  if (v20 != 44)
  {
    return 11;
  }

  v14 = (DWORD1(v17[2]) + 40 * a3);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v18, 40, v14, &v20);
  if (result)
  {
    return result;
  }

  if (v20 != 40)
  {
    return 11;
  }

  v15 = v19;
  if (!v19)
  {
    v15 = DWORD2(v17[0]);
    LODWORD(v19) = DWORD2(v17[0]);
  }

  result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, a4, a5, (HIDWORD(v19) + v15));
  if (!result)
  {
    HIDWORD(v19) += a5;
    DWORD2(v17[0]) += a5;
    result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v18, 40, v14);
    if (!result)
    {
      return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v17, 44, 0);
    }
  }

  return result;
}

uint64_t UARPSuperBinaryFinalizeHeader(uint64_t a1, uint64_t a2)
{
  v3 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v3)
  {
    return 30;
  }

  v4 = v3;
  v12 = 0;
  __dst = 0;
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v3, &__dst, 4, 0, &v12);
  if (result)
  {
    return result;
  }

  if (v12 != 4)
  {
    return 11;
  }

  if (__dst < 2)
  {
    return 30;
  }

  v16 = 0;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, 44);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v4, v13, 44, 0, &v16);
  if (result)
  {
    return result;
  }

  if (v16 != 44)
  {
    return 11;
  }

  v6 = v13[0];
  v7 = v13[1];
  *(v4 + 28) = *(&v13[1] + 12);
  *v4 = v6;
  *(v4 + 16) = v7;
  uarpSuperBinaryHeaderEndianSwap(v13, v13);
  result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v4, v13, 44, 0);
  if (!result)
  {
    v8 = *(v4 + 40);
    if (v8 >= 0x28)
    {
      v9 = v8 / 0x28;
      v10 = *(v4 + 36);
      do
      {
        result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v4, v14, 40, v10, &v16);
        if (result)
        {
          break;
        }

        if (v16 != 40)
        {
          return 11;
        }

        uarpPayloadHeaderEndianSwap(v14, v14);
        result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v4, v14, 40, v10);
        if (result)
        {
          break;
        }

        v10 = (v10 + 40);
        --v9;
      }

      while (v9);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpSuperBinaryHeaderEndianSwap(unsigned int *a1, _DWORD *a2)
{
  *a2 = uarpHtonl(*a1);
  a2[1] = uarpHtonl(a1[1]);
  a2[2] = uarpHtonl(a1[2]);
  a2[3] = uarpHtonl(a1[3]);
  a2[4] = uarpHtonl(a1[4]);
  a2[5] = uarpHtonl(a1[5]);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  a2[9] = uarpHtonl(a1[9]);
  result = uarpHtonl(a1[10]);
  a2[10] = result;
  return result;
}

uint64_t uarpPayloadHeaderEndianSwap(unsigned int *a1, _DWORD *a2)
{
  v4 = uarpHtonl(*a1);
  v6 = a1[1];
  v5 = a1[2];
  *a2 = v4;
  a2[1] = v6;
  a2[2] = uarpHtonl(v5);
  a2[3] = uarpHtonl(a1[3]);
  a2[4] = uarpHtonl(a1[4]);
  a2[5] = uarpHtonl(a1[5]);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  result = uarpHtonl(a1[9]);
  a2[9] = result;
  return result;
}

uint64_t uarpPayloadHeader2EndianSwap(unsigned int *a1, _DWORD *a2)
{
  *a2 = uarpHtonl(*a1);
  a2[1] = a1[1];
  uarpVersionEndianSwap(a1 + 2, a2 + 2);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  result = uarpHtonl(a1[9]);
  a2[9] = result;
  return result;
}

uint64_t UARPSuperBinaryQueryAssetLength(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  memset(__dst, 0, 44);
  v5 = 0;
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, a2, __dst, 44, 0, &v5);
  if (!result)
  {
    if (v5 == 44)
    {
      uarpSuperBinaryHeaderEndianSwap(__dst, __dst);
      result = 0;
      *a3 = DWORD2(__dst[0]);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t UARPSuperBinaryPrepareDynamicAsset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 28) = 0u;
  *(a2 + 12) = a3;
  *(a2 + 20) = a4;
  *(a2 + 8) = 44;
  *a2 = 0x2C00000002;
  *(a2 + 28) = xmmword_299E7E840;
  *(a2 + 48) = a5;
  *(a2 + 448) = 0;
  *(a2 + 632) = 0;
  *(a2 + 720) = 0;
  *(a2 + 672) = 0u;
  return 0;
}

uint64_t UARPSuperBinaryAddSuperBinaryMetaData(uint64_t a1, uint64_t a2, int a3, unsigned int a4, const void *a5)
{
  v13 = 0;
  v9 = a4;
  UARPLayer2RequestBuffer(a1, &v13, a4 + 24, 39321, 827);
  v10 = v13;
  v11 = (v13 + 3);
  v13[1] = v13 + 3;
  *v10 = a3;
  *(v10 + 1) = a4;
  memcpy(v11, a5, v9);
  v10[2] = *(a2 + 720);
  *(a2 + 720) = v10;
  *(a2 + 8) += a4 + 8;
  *(a2 + 32) += a4 + 8;
  *(a2 + 46) |= 0x80u;
  return 0;
}

uint64_t UARPSuperBinaryAddPayload2(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, const void *a7, size_t a8, char a9)
{
  v21 = 0;
  UARPLayer2RequestBuffer(a1, &v21, 0xB8uLL, 39321, 881);
  v17 = v21;
  v21[22] = *(a2 + 632);
  *(a2 + 632) = v17;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[4] = 0;
  *v17 = 40;
  *(v17 + 1) = a4;
  v17[1] = a5;
  v17[2] = a6;
  *(v17 + 9) = a8;
  *(v17 + 7) = 0;
  *(v17 + 31) = a3;
  if (!a9)
  {
    __dst = 0;
    UARPLayer2RequestBuffer(a1, &__dst, a8, 39321, 906);
    v18 = __dst;
    v17[17] = __dst;
    memcpy(v18, a7, a8);
  }

  *(v17 + 148) = a9;
  *(v17 + 36) = a8;
  v17[21] = 0;
  *(a2 + 8) += a8 + 40;
  *(a2 + 40) += 40;
  *(a2 + 28) += 40;
  ++*(a2 + 448);
  return 0;
}

uint64_t UARPSuperBinaryAppendPayloadMetaData(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, const void *a6)
{
  v6 = *(a2 + 448);
  v7 = *(a2 + 632);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 11;
  }

  v14 = 1;
  while (*(v7 + 124) != a3)
  {
    v9 = 11;
    if (v14 < v6)
    {
      v7 = *(v7 + 176);
      ++v14;
      if (v7)
      {
        continue;
      }
    }

    return v9;
  }

  v18 = 0;
  UARPLayer2RequestBuffer(a1, &v18, a5 + 24, 39321, 950);
  v15 = v18;
  v16 = (v18 + 3);
  v18[1] = v18 + 3;
  *v15 = a4;
  *(v15 + 1) = a5;
  memcpy(v16, a6, a5);
  v9 = 0;
  v15[2] = *(v7 + 168);
  *(v7 + 168) = v15;
  *(v7 + 28) += a5 + 8;
  *(a2 + 8) += a5 + 8;
  *(a2 + 684) += a5 + 8;
  *(a2 + 46) |= 8u;
  return v9;
}

uint64_t UARPSuperBinaryAppendPayloadMetaDataBlob(uint64_t a1, uint64_t a2, int a3, const void *a4, size_t a5)
{
  v5 = *(a2 + 448);
  v6 = *(a2 + 632);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 11;
  }

  v12 = 1;
  result = 11;
  while (*(v6 + 124) != a3)
  {
    if (v12 < v5)
    {
      v6 = *(v6 + 176);
      ++v12;
      if (v6)
      {
        continue;
      }
    }

    return result;
  }

  if (*(v6 + 152))
  {
    return 27;
  }

  UARPLayer2ReturnBuffer(a1, 0, 39321, 1001);
  *(v6 + 152) = 0;
  *(v6 + 160) = 0;
  UARPLayer2RequestBuffer(a1, 0, a5, 39321, 1010);
  memcpy(*(v6 + 152), a4, a5);
  result = 0;
  *(v6 + 160) = a5;
  *(v6 + 28) += a5;
  *(a2 + 8) += a5;
  *(a2 + 684) += a5;
  *(a2 + 46) |= 8u;
  return result;
}

uint64_t UARPSuperBinaryBuildMetaData(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t **a4, unsigned int a5, unsigned int *a6)
{
  v8 = *a6;
  v9 = *a4;
  if (a3)
  {
    v11 = a3;
    while (1)
    {
      v12 = uarpNtohl(*v11);
      v13 = uarpNtohl(*(v11 + 4));
      v8 += *(v11 + 4) + 8;
      if (v8 > a5)
      {
        return 11;
      }

      *v9 = v12 | (v13 << 32);
      v14 = (v9 + 1);
      memcpy(v14, *(v11 + 8), *(v11 + 4));
      v9 = &v14[*(v11 + 4)];
      v11 = *(v11 + 16);
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = 0;
    *a6 = v8;
    *a4 = v9;
  }

  return result;
}

uint64_t UARPSuperBinaryFinalizeDynamicAsset(uint64_t a1, uint64_t a2)
{
  uarpSuperBinaryHeaderEndianSwap(a2, a2);
  result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, a2, 44, 0);
  if (!result)
  {
    uarpSuperBinaryHeaderEndianSwap(a2, a2);
    v5 = *(a2 + 4);
    v6 = *(a2 + 32);
    v7 = (a2 + 632);
    v8 = *(a2 + 448);
    if (v8)
    {
      v9 = 0;
      v10 = *(a2 + 40) + v5 + v6;
      v11 = v10 + *(a2 + 684);
      v12 = (a2 + 632);
      while (1)
      {
        v13 = *v12;
        v13[6] = v10;
        v13[8] = v11;
        uarpPayloadHeader2EndianSwap(v13, v13);
        result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, v13, 40, v5);
        if (result)
        {
          break;
        }

        uarpPayloadHeader2EndianSwap(v13, v13);
        v5 = *v13 + v5;
        v10 += v13[7];
        v11 += v13[9];
        v12 = (v13 + 44);
        ++v9;
        v8 = *(a2 + 448);
        if (v9 >= v8)
        {
          v6 = *(a2 + 32);
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      if (v6)
      {
        __dst = 0;
        v28 = 0;
        result = UARPLayer2RequestBuffer(a1, &__dst, v6, 39321, 1127);
        if (result)
        {
          return result;
        }

        v27 = __dst;
        result = UARPSuperBinaryBuildMetaData(result, v14, *(a2 + 720), &v27, *(a2 + 32), &v28);
        if (result)
        {
          return result;
        }

        v15 = __dst;
        *(a2 + 672) = __dst;
        v16 = v28;
        *(a2 + 680) = v28;
        result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, v15, v16, v5);
        if (result)
        {
          return result;
        }

        v5 = v16 + v5;
        v8 = *(a2 + 448);
      }

      if (!v8)
      {
        return 0;
      }

      v17 = 0;
      v18 = a2 + 632;
      do
      {
        v19 = *v18;
        v20 = *(*v18 + 28);
        if (v20)
        {
          __dst = 0;
          v28 = 0;
          result = UARPLayer2RequestBuffer(a1, &__dst, v20, 39321, 1171);
          if (result)
          {
            return result;
          }

          v21 = __dst;
          v27 = __dst;
          v22 = *(v19 + 152);
          if (v22)
          {
            v21 = memcpy(__dst, v22, *(v19 + 160));
            v28 = *(v19 + 160);
          }

          result = UARPSuperBinaryBuildMetaData(v21, v22, *(v19 + 168), &v27, *(v19 + 28), &v28);
          if (result)
          {
            return result;
          }

          v23 = __dst;
          *(v19 + 152) = __dst;
          v24 = v28;
          *(v19 + 160) = v28;
          result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, v23, v24, v5);
          if (result)
          {
            return result;
          }

          v5 = v24 + v5;
          v8 = *(a2 + 448);
        }

        v18 = v19 + 176;
        ++v17;
      }

      while (v17 < v8);
      if (v8)
      {
        for (i = 0; i < v8; ++i)
        {
          v26 = *v7;
          if (!*(v26 + 148))
          {
            result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, *(v26 + 136), *(v26 + 144), v5);
            if (result)
            {
              return result;
            }

            v8 = *(a2 + 448);
          }

          result = 0;
          v5 = (*(v26 + 144) + v5);
          v7 = (v26 + 176);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t UARPSuperBinaryGetInternalSuperBinaryMetaData(int a1, uint64_t a2, void *__dst, unsigned int a4, unsigned int a5, unsigned __int16 *a6)
{
  v7 = *(a2 + 32);
  if (v7 && ((v8 = *(a2 + 28), v9 = v7 + v8, v10 = a5 >= v8, v11 = a5 - v8, v10) ? (v12 = v9 > a5) : (v12 = 0), v12))
  {
    v15 = v7 - v11;
    if (a4 >= v15)
    {
      v13 = v15;
    }

    else
    {
      v13 = a4;
    }

    memcpy(__dst, (*(a2 + 672) + v11), v13);
    result = 0;
  }

  else
  {
    v13 = 0;
    result = 40;
  }

  *a6 = v13;
  return result;
}

uint64_t UARPSuperBinaryGetInternalPayloadMetaData(int a1, uint64_t a2, void *__dst, unsigned int a4, unsigned int a5, unsigned __int16 *a6)
{
  v7 = *(a2 + 632);
  if (!v7)
  {
LABEL_9:
    v14 = 0;
    result = 40;
    goto LABEL_14;
  }

  while (1)
  {
    v8 = *(v7 + 28);
    if (v8)
    {
      break;
    }

LABEL_8:
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v9 = *(v7 + 24);
  v10 = v8 + v9;
  v11 = a5 >= v9;
  v12 = a5 - v9;
  if (!v11 || v10 <= a5)
  {
    v7 = *(v7 + 176);
    goto LABEL_8;
  }

  v16 = v8 - v12;
  if (a4 >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = a4;
  }

  memcpy(__dst, (*(v7 + 152) + v12), v14);
  result = 0;
LABEL_14:
  *a6 = v14;
  return result;
}

uint64_t uarpPlatformEndpointInit(char *a1, uint64_t a2, unsigned int a3, __int128 *a4, const void *a5, uint64_t a6, uint64_t a7)
{
  result = 30;
  if (a3 <= 2 && a2 && a1 && a4 && a5)
  {
    bzero(a1, 0x2C8uLL);
    memcpy(a1 + 48, a5, 0x230uLL);
    *(a1 + 76) = a2;
    *(a1 + 5) = a6;
    *(a1 + 160) = 1;
    *(a1 + 82) = a7;
    v16 = *a4;
    v15 = a4[1];
    *(a1 + 4) = *(a4 + 4);
    *a1 = v16;
    *(a1 + 1) = v15;
    if (!*(a1 + 6))
    {
      *(a1 + 6) = 7;
    }

    *(a1 + 154) = a3;
    a1[644] = 0;
    *(a1 + 162) = 1;
    *(a1 + 340) = 1;
    *(a1 + 174) = 1024;
    v17 = calloc(0x20uLL, 0x400uLL);
    result = 0;
    *(a1 + 88) = v17;
  }

  return result;
}

void uarpPlatformEndpointDeinit(uint64_t a1)
{
  UARPLayer2ReturnBuffer(a1, *(a1 + 624), 43690, 85);
  *(a1 + 620) = 0;
  *(a1 + 624) = 0;

  uarpPlatformCleanupAssets(a1);
}

uint64_t uarpPlatformRemoteEndpointAdd(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        *(a2 + 40) = a4;
        v7 = *a1;
        v8 = *(a1 + 16);
        *(a2 + 32) = *(a1 + 32);
        *a2 = v7;
        *(a2 + 16) = v8;
        if (!a3 || (v10 = *a3, v9 = a3[1], *(a2 + 32) = *(a3 + 4), *a2 = v10, *(a2 + 16) = v9, (v11 = *(a2 + 4)) != 0) && *a2 && *(a2 + 8) >= v11)
        {
          if (!*(a2 + 12))
          {
            *(a2 + 12) = *(a1 + 12);
          }

          *(a2 + 48) = 0;
          v12 = *(a1 + 648);
          *(a1 + 648) = v12 + 1;
          *(a2 + 56) = v12;
          *(a2 + 60) = 1;
          *(a2 + 62) = 1;
          *(a2 + 28) = 0;
          *(a2 + 88) = 0;
          result = uarpPlatformRemoteEndpointAddEntry(a1, a2);
          if (!result)
          {
            if (!*(a2 + 20))
            {
              *(a2 + 20) = 1;
            }

            result = uarpAllocateTransmitBuffers(a1, a2);
            if (!result)
            {
              if ((*(a1 + 616) - 1) > 1)
              {
                return 0;
              }

              result = uarpPlatformEndpointSendSyncMsg(a1, a2);
              if (!result)
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformRemoteEndpointRemove(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    uarpTransmitQueuesCleanup(a1, a2);
    uarpPlatformCleanupAssetsForRemoteEndpoint(a1, a2, 1);
    uarpPlatformReleaseEndpointIDs(a1);
    v5 = *(a1 + 620);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(a1 + 624);
        if (*(v8 + v6) == a2)
        {
          *(v8 + v6) = 0;
        }

        v6 += 8;
      }

      while (v7 != v6);
    }

    uarpPlatformEndpointStreamingRecvDeinit(a1, a2);
    return 0;
  }

  return result;
}

uint64_t uarpPlatformEndpointRequestInfoProperty(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a1 && a2 && a3 - 13 >= 0xFFFFFFF4)
  {
    return uarpSendInformationRequest(a1, a2, a3);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointAssetIsAcceptable(void *a1, uint64_t a2, _BYTE *a3, __int16 *a4)
{
  ActiveFirmwareVersion = 30;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          *a3 = 1;
          *a4 = 0;
          v16[0] = 0;
          v16[1] = 0;
          ActiveFirmwareVersion = uarpPlatformEndpointQueryActiveFirmwareVersion(a1, a2, v16);
          if (!ActiveFirmwareVersion)
          {
            v9 = uarpVersionCompare(v16, (a2 + 52));
            if (v9 == 1)
            {
              v15[0] = 0;
              v15[1] = 0;
              ActiveFirmwareVersion = uarpPlatformEndpointQueryStagedFirmwareVersion(a1, a2, v15);
              if (ActiveFirmwareVersion)
              {
                return ActiveFirmwareVersion;
              }

              v10 = uarpVersionCompare(v15, (a2 + 52));
              if (v10 == 1)
              {
                return ActiveFirmwareVersion;
              }

              *a3 = 0;
              v11 = v10 == 0;
              v12 = 1280;
              v13 = 768;
            }

            else
            {
              ActiveFirmwareVersion = 0;
              *a3 = 0;
              v11 = v9 == 0;
              v12 = 1536;
              v13 = 1024;
            }

            if (v11)
            {
              v12 = v13;
            }

            *a4 = v12;
          }
        }
      }
    }
  }

  return ActiveFirmwareVersion;
}

uint64_t uarpPlatformEndpointAssetAcceptWithPayloadAndDecompressionWindows(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, unsigned int a7, uint64_t a8, unsigned int a9)
{
  result = 30;
  if (a1 && a2 && a3 && (!a6 || a7 && *(a2 + 8) <= a7) && (!a8 || a9 && *(a2 + 8) <= a9))
  {
    v15 = *(a1 + 632);
    if (v15)
    {
      v16 = *(a1 + 632);
      while (v16 != a3 || *(v16 + 304))
      {
        v16 = *(v16 + 712);
        if (!v16)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      *(a3 + 712) = v15;
      *(a1 + 632) = a3;
    }

    if (a4)
    {
      *(a3 + 704) = a4;
    }

    *(a3 + 72) = 0;
    if (!a5)
    {
      return 30;
    }

    v17 = a5[1];
    *(a3 + 80) = *a5;
    *(a3 + 96) = v17;
    v18 = a5[2];
    v19 = a5[3];
    v20 = a5[5];
    *(a3 + 144) = a5[4];
    *(a3 + 160) = v20;
    *(a3 + 112) = v18;
    *(a3 + 128) = v19;
    v21 = a5[6];
    v22 = a5[7];
    v23 = a5[9];
    *(a3 + 208) = a5[8];
    *(a3 + 224) = v23;
    *(a3 + 176) = v21;
    *(a3 + 192) = v22;
    v24 = a5[10];
    v25 = a5[11];
    v26 = a5[13];
    *(a3 + 272) = a5[12];
    *(a3 + 288) = v26;
    *(a3 + 240) = v24;
    *(a3 + 256) = v25;
    if (a6)
    {
      if (!*(a3 + 652))
      {
        UARPLayer2ReturnBuffer(a1, *(a3 + 640), 43690, 425);
      }

      *(a3 + 640) = a6;
      *(a3 + 648) = a7;
      *(a3 + 652) = 1;
    }

    else if (!*(a3 + 640))
    {
      v29 = (a3 + 640);
      *(a3 + 652) = 0;
      v30 = *(a2 + 8);
      *(a3 + 648) = v30;
      result = UARPLayer2RequestBuffer(a1, (a3 + 640), v30, 43690, 443);
      if (result)
      {
        return result;
      }

      if (!*v29)
      {
        return 11;
      }
    }

    if (a8)
    {
      if (!*(a3 + 668))
      {
        UARPLayer2ReturnBuffer(a1, *(a3 + 656), 43690, 462);
      }

      *(a3 + 656) = a8;
      *(a3 + 664) = a9;
      v27 = 1;
    }

    else
    {
      v27 = 0;
    }

    *(a3 + 668) = v27;
    if (uarpVersionCompare((a3 + 52), (a3 + 12)) || *(a3 + 68) != *(a3 + 8))
    {

      return uarpPlatformAssetSuperBinaryPullHeader(a1, a3);
    }

    else if (*(a3 + 688) == *(a3 + 32))
    {
      v28 = *(a3 + 452);
      if (v28 == -1)
      {
        UARPLayer2AssetMetaDataComplete(a1, a3);
        return 0;
      }

      else if (v28 == *(a3 + 456))
      {
        if (*(a3 + 512) == *(a3 + 492))
        {
          if (*(a3 + 508) || (result = uarpPlatformAssetPayloadPullData(a1, a3), !result))
          {

            return uarpPlatformAssetRequestData(a1, a3, (a3 + 312));
          }
        }

        else
        {

          return uarpPlatformAssetPayloadPullMetaData(a1, a3);
        }
      }

      else
      {

        return uarpPlatformAssetSuperBinaryPullProposedPayloadHeader(a1, a3);
      }
    }

    else
    {

      return uarpPlatformAssetSuperBinaryPullMetaData(a1, a3);
    }
  }

  return result;
}

__n128 uarpPlatformEndpointAssetSetCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      v3 = *(a3 + 16);
      *(a2 + 80) = *a3;
      *(a2 + 96) = v3;
      v4 = *(a3 + 32);
      v5 = *(a3 + 48);
      v6 = *(a3 + 80);
      *(a2 + 144) = *(a3 + 64);
      *(a2 + 160) = v6;
      *(a2 + 112) = v4;
      *(a2 + 128) = v5;
      v7 = *(a3 + 96);
      v8 = *(a3 + 112);
      v9 = *(a3 + 144);
      *(a2 + 208) = *(a3 + 128);
      *(a2 + 224) = v9;
      *(a2 + 176) = v7;
      *(a2 + 192) = v8;
      result = *(a3 + 160);
      v11 = *(a3 + 176);
      v12 = *(a3 + 208);
      *(a2 + 272) = *(a3 + 192);
      *(a2 + 288) = v12;
      *(a2 + 240) = result;
      *(a2 + 256) = v11;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetDeny(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, _OWORD *a6)
{
  v6 = 30;
  if (a1 && a2 && a3)
  {
    if (a5)
    {
      *(a3 + 704) = a5;
    }

    if (a6)
    {
      v8 = a6[1];
      *(a3 + 80) = *a6;
      *(a3 + 96) = v8;
      v9 = a6[2];
      v10 = a6[3];
      v11 = a6[5];
      *(a3 + 144) = a6[4];
      *(a3 + 160) = v11;
      *(a3 + 112) = v9;
      *(a3 + 128) = v10;
      v12 = a6[6];
      v13 = a6[7];
      v14 = a6[9];
      *(a3 + 208) = a6[8];
      *(a3 + 224) = v14;
      *(a3 + 176) = v12;
      *(a3 + 192) = v13;
      v15 = a6[10];
      v16 = a6[11];
      v17 = a6[13];
      *(a3 + 272) = a6[12];
      *(a3 + 288) = v17;
      *(a3 + 240) = v15;
      *(a3 + 256) = v16;
      v6 = uarpAssetProcessingComplete(a1, a2, a3, a4 | 2u);
      if (!v6)
      {
        *(a3 + 72) = 1;
      }
    }

    else
    {
      return 30;
    }
  }

  return v6;
}

uint64_t uarpPlatformEndpointAssetRelease(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = uarpPlatformAssetFindByAssetContext(a1, *(a3 + 704));

  return uarpPlatformAssetProcessingCompleteInternal(a1, 0, v4, 1u, 0, 1);
}

uint64_t uarpPlatformEndpointAssetRelease2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = uarpPlatformAssetFindByAssetContext(a1, a3);

  return uarpPlatformAssetProcessingCompleteInternal(a1, 0, v4, 1u, 0, 1);
}

uint64_t uarpPlatformAssetFindByAssetContext(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 632);
    if (v4)
    {
      result = v4;
      while (*(result + 304) != 1 || *(result + 704) != a2)
      {
        result = *(result + 712);
        if (!result)
        {
          while (v4)
          {
            if (!*(v4 + 304) && *(v4 + 704) == a2)
            {
              return v4;
            }

            v4 = *(v4 + 712);
          }

          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetQueryNumberOfPayloads(uint64_t a1, uint64_t a2, _WORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a2 + 448);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetQueryFormatVersion(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *a2;
    }
  }

  return result;
}

__n128 uarpPlatformEndpointAssetQueryAssetVersion(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      result = *(a2 + 52);
      *a3 = result;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetQueryAssetLength(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a2 + 68);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetQueryTag(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a2 + 48);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetSetPayloadIndex2(void *a1, uint64_t a2, int a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (*(a2 + 448) <= a3)
    {
      return 44;
    }

    else
    {
      *(a2 + 456) = a3;
      *(a2 + 508) = 0;
      if (*(a2 + 460) == 1)
      {
        v6 = *(a2 + 632);
        if (v6)
        {
          v7 = (a2 + 464);
          while (1)
          {
            v8 = *(v6 + 31);
            if (v8 == *(a2 + 456))
            {
              *(a2 + 452) = v8;
              v9 = *v6;
              v10 = v6[2];
              *(a2 + 480) = v6[1];
              *(a2 + 496) = v10;
              *v7 = v9;
              v11 = v6[3];
              v12 = v6[4];
              v13 = v6[6];
              *(a2 + 544) = v6[5];
              *(a2 + 560) = v13;
              *(a2 + 512) = v11;
              *(a2 + 528) = v12;
              v14 = v6[7];
              v15 = v6[8];
              v16 = v6[9];
              *(a2 + 624) = *(v6 + 20);
              *(a2 + 592) = v15;
              *(a2 + 608) = v16;
              *(a2 + 576) = v14;
              for (i = *(v6 + 21); i; i = *(i + 16))
              {
                uarpProcessPayloadTLVInternal(a1, a2, a2 + 464, *i, *(i + 4), *(i + 8));
              }

              v18 = *(v6 + 19);
              if (v18)
              {
                UARPLayer2HashFinal(a1, v18, *(v6 + 10), *(v6 + 12), *(v6 + 26));
                if (memcmp(*(v6 + 12), *(v6 + 14), *(v6 + 30)))
                {
                  return 54;
                }
              }
            }

            v6 = *(v6 + 22);
            if (!v6)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
LABEL_13:

          return uarpPlatformEndpointPayloadRequestData(a1, a2);
        }
      }

      else
      {

        return uarpPlatformAssetSuperBinaryPullProposedPayloadHeader(a1, a2);
      }
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointPayloadRequestData(uint64_t a1, uint64_t a2)
{
  v3 = 30;
  if (!a1 || !a2)
  {
    return v3;
  }

  v4 = *(a2 + 500);
  if (v4)
  {
    v4 -= *(a2 + 508);
  }

  if (v4 >= *(a2 + 648))
  {
    v4 = *(a2 + 648);
  }

  if (!v4)
  {
    UARPLayer2PayloadDataComplete2(a1, a2);
    return 0;
  }

  return uarpPlatformAssetPayloadPullData(a1, a2);
}

uint64_t uarpPlatformEndpointAssetPayloadVersion(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = 30;
  if (a1 && a2 && a3)
  {
    if (*(a2 + 452) == -1)
    {
      return 32;
    }

    else
    {
      result = 0;
      *a3 = *(a2 + 472);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetPayloadTag(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2 && a3)
  {
    if (*(a2 + 452) == -1)
    {
      return 32;
    }

    else
    {
      result = 0;
      *a3 = *(a2 + 468);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointPayloadRequestAllHeadersAndMetaData(uint64_t a1, uint64_t a2)
{
  *(a2 + 460) = 1;
  if (*(a2 + 448) < 1)
  {
    if (*(a2 + 32))
    {

      return uarpPlatformAssetPullAllMetaData(a1, a2);
    }

    else
    {
      UARPLayer2AssetAllHeadersAndMetaDataComplete(a1, *(a2 + 696), a2);
      return 0;
    }
  }

  else
  {

    return uarpPlatformAssetPullAllPayloadHeaders(a1, a2);
  }
}

uint64_t uarpPlatformEndpointAssetSetPayloadOffset(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  if (!a2)
  {
    return 30;
  }

  if (a2[113] == -1)
  {
    return 44;
  }

  if (a2[125] <= a3)
  {
    return 43;
  }

  result = 0;
  a2[127] = a3;
  return result;
}

uint64_t uarpPlatformEndpointPayloadRequestDataPause(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 73) = 1;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointPayloadRequestDataResume(uint64_t a1, uint64_t a2)
{
  v2 = 30;
  if (a1 && a2 && (v2 = *(a2 + 73), *(a2 + 73)) && (*(a2 + 73) = 0, (v2 = *(a2 + 696)) != 0))
  {
    return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
  }

  else
  {
    return v2;
  }
}

uint64_t uarpPlatformEndpointAssetFullyStaged(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return uarpAssetProcessingComplete(a1, *(a2 + 696), a2, 1u);
  }

  else
  {
    return 30;
  }
}

double uarpPlatformEndpointSuperBinaryMerge(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      v3 = *a2;
      v4 = a2[1];
      *(a3 + 28) = *(a2 + 28);
      *a3 = v3;
      *(a3 + 16) = v4;
      *(a2 + 72) = 1;
      *(a3 + 72) = 0;
      *(a3 + 73) = *(a2 + 73);
      *(a3 + 312) = *(a2 + 312);
      v5 = *(a2 + 328);
      v6 = *(a2 + 344);
      v7 = *(a2 + 376);
      *(a3 + 360) = *(a2 + 360);
      *(a3 + 376) = v7;
      *(a3 + 328) = v5;
      *(a3 + 344) = v6;
      v8 = *(a2 + 392);
      v9 = *(a2 + 408);
      v10 = *(a2 + 424);
      *(a3 + 440) = *(a2 + 55);
      *(a3 + 408) = v9;
      *(a3 + 424) = v10;
      *(a3 + 392) = v8;
      *(a3 + 452) = *(a2 + 113);
      *(a3 + 456) = *(a2 + 114);
      v11 = a2[29];
      v12 = a2[31];
      *(a3 + 480) = a2[30];
      *(a3 + 496) = v12;
      *(a3 + 464) = v11;
      v13 = a2[32];
      v14 = a2[33];
      v15 = a2[35];
      *(a3 + 544) = a2[34];
      *(a3 + 560) = v15;
      *(a3 + 512) = v13;
      *(a3 + 528) = v14;
      v16 = a2[36];
      v17 = a2[37];
      v18 = a2[38];
      *(a3 + 624) = *(a2 + 78);
      *(a3 + 592) = v17;
      *(a3 + 608) = v18;
      *(a3 + 576) = v16;
      *(a2 + 78) = 0;
      result = 0.0;
      a2[37] = 0u;
      a2[38] = 0u;
      a2[35] = 0u;
      a2[36] = 0u;
      a2[33] = 0u;
      a2[34] = 0u;
      a2[31] = 0u;
      a2[32] = 0u;
      a2[29] = 0u;
      a2[30] = 0u;
      *(a3 + 640) = *(a2 + 80);
      *(a2 + 80) = 0;
      *(a3 + 652) = *(a2 + 652);
      *(a3 + 648) = *(a2 + 162);
      *(a2 + 162) = 0;
      *(a3 + 656) = *(a2 + 82);
      *(a2 + 82) = 0;
      *(a3 + 668) = *(a2 + 668);
      *(a3 + 664) = *(a2 + 166);
      *(a2 + 166) = 0;
      *(a3 + 688) = *(a2 + 172);
    }
  }

  return result;
}

void uarpPlatformEndpointCleanupAssets(uint64_t a1)
{
  if (a1)
  {
    uarpPlatformCleanupAssetsForRemoteEndpoint(a1, 0, 0);
  }
}

void uarpPlatformEndpointCleanupAssets2(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    uarpPlatformCleanupAssetsForRemoteEndpoint(a1, a2, 0);
  }
}

uint64_t uarpPlatformEndpointOfferAsset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v6 = *(a1 + 632);
        if (v6)
        {
          while (*(v6 + 304) != 1 || *(v6 + 704) != a3)
          {
            v6 = *(v6 + 712);
            if (!v6)
            {
              return 30;
            }
          }

          memset(__dst, 0, 44);
          v7 = 0;
          result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, a2, v6, __dst, 44, 0, &v7);
          if (!result)
          {
            uarpSuperBinaryHeaderEndianSwap(__dst, v6);
            *(v6 + 52) = *(v6 + 12);
            *(v6 + 68) = *(v6 + 8);
            *(v6 + 448) = *(v6 + 40) / 0x28u;
            return uarpOfferAssetToRemoteEP(a1, a2, v6);
          }
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformAssetFindByAssetContextAndList(uint64_t result, uint64_t a2, int a3)
{
  if (result)
  {
    for (result = *(result + 632); result; result = *(result + 712))
    {
      if (*(result + 304) == a3 && *(result + 704) == a2)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetGetBytesAtOffset(uint64_t a1, uint64_t a2, uint64_t a3, void *__dst, uint64_t a5, uint64_t a6, unsigned __int16 *a7)
{
  result = 30;
  if (a1 && a3 && __dst && a5)
  {
    v15 = *(a3 + 46);
    if ((v15 & 0x80) != 0)
    {
      result = UARPSuperBinaryGetInternalSuperBinaryMetaData(a1, a3, __dst, a5, a6, a7);
      if (result != 40)
      {
        return result;
      }

      v15 = *(a3 + 46);
    }

    if ((v15 & 8) == 0 || (result = UARPSuperBinaryGetInternalPayloadMetaData(a1, a3, __dst, a5, a6, a7), result == 40))
    {

      return UARPLayer2AssetGetBytesAtOffset2(a1, a2, a3, __dst, a5, a6, a7);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointRemoveAssetPayloadWindow(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  result = 30;
  if (a3)
  {
    if (a4)
    {
      result = 0;
      *a3 = *(a2 + 640);
      *(a2 + 640) = 0;
      *a4 = *(a2 + 648);
      *(a2 + 648) = 0;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointProvideAssetPayloadWindow(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = 30;
  if (a3 && a4)
  {
    v9 = *(a2 + 640);
    if (v9)
    {
      if (!*(a2 + 652))
      {
        UARPLayer2ReturnBuffer(a1, v9, 43690, 1180);
      }
    }

    result = 0;
    *(a2 + 640) = a3;
    *(a2 + 648) = a4;
    *(a2 + 652) = 1;
  }

  return result;
}

uint64_t uarpPlatformEndpointDynamicAssetSolicitationDeny(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  if (a1 && a2 && a3)
  {
    return uarpSendDynamicAssetPreProcessingStatus(a1, a2, a3, 2u, a4);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointAssetSetBytesAtOffset(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && a3 && a4 && a5)
  {
    return UARPLayer2AssetSetBytesAtOffset2(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointWatchDogExpired(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      *(a2 + 54) = 0;
      uarpTransmitQueueService(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointRescindAsset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 30;
  }

  if (!a2)
  {
    return 30;
  }

  if (!a3)
  {
    return 30;
  }

  v3 = *(a1 + 632);
  if (!v3)
  {
    return 30;
  }

  while (*(v3 + 304) != 1 || *(v3 + 704) != a3)
  {
    v3 = *(v3 + 712);
    if (!v3)
    {
      return 30;
    }
  }

  return uarpAssetRescind(a1, a2, *(v3 + 44));
}

uint64_t uarpPlatformEndpointRescindAllAssets(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return uarpAssetRescind(a1, a2, 0xFFFFu);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointApplyStagedAssets(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    v5 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xAu, 6u, 1);
    if (v5)
    {

      return uarpTransmitBuffer2(a1, a2, v5);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointPauseAssetTransfers(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return uarpSendDataTransferNotificationPause(a1, a2);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointResumeAssetTransfers(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return uarpSendDataTransferNotificationResume(a1, a2);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointSolicitDynamicAsset(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (!a1)
  {
    return 30;
  }

  if (!a2)
  {
    return 30;
  }

  if (!a4)
  {
    return 30;
  }

  v4 = *(a1 + 632);
  if (!v4)
  {
    return 30;
  }

  while (*(v4 + 304) || *(v4 + 704) != a4)
  {
    v4 = *(v4 + 712);
    if (!v4)
    {
      return 30;
    }
  }

  return uarpSolicitDynamicAsset(a1, a2, a3);
}

uint64_t uarpPlatformEndpointSendVendorSpecific(uint64_t a1, uint64_t a2, __int16 *a3, unsigned int a4, const void *a5, unsigned int a6)
{
  if (a1 && a2 && a3 && a5)
  {
    return uarpSendVendorSpecific(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformDownstreamEndpointAdd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 30;
  }

  v6 = *(a1 + 680);
  do
  {
    if (!v6)
    {
      *(a1 + 680) = 1;
      return 11;
    }

    v7 = UARPPlatformDownstreamEndpointByID(a1, a2, v6);
    v8 = *(a1 + 680);
    v6 = v8 + 1;
    *(a1 + 680) = v8 + 1;
  }

  while (!v7 || !v8);

  return uarpPlatformDownstreamEndpointReachable(a1, a2, a3, v8);
}

uint64_t uarpPlatformDownstreamEndpointReachable(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  result = 30;
  if (a1 && a2 && a3)
  {
    v10 = 0;
    result = UARPLayer2RequestBuffer(a1, &v10, 0x20uLL, 43690, 1499);
    if (!result)
    {
      *v10 = a2;
      v9 = v10;
      v10[4] = a4;
      v9[2] = a3;
      v9[3] = 0;
      uarpPlatformDownstreamEndpointAddToList(a1, a2, v9);
      return uarpSendDownstreamEndpointReachable(a1, a2, v10[4]);
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointRemove(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = UARPPlatformDownstreamEndpointByDelegate(a1, a2, a3);
  if (!v5)
  {
    return 58;
  }

  v6 = *(v5 + 120);

  return uarpSendDownstreamEndpointUnreachable(a1, a2, v6);
}

uint64_t uarpPlatformDownstreamEndpointUnreachable(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, a4);
  if (!v6)
  {
    return 58;
  }

  v7 = v6;
  result = uarpSendDownstreamEndpointUnreachable(a1, a2, *(v6 + 8));
  if (!result)
  {
    v9 = uarpPlatformDownstreamEndpointRemoveFromList(a1, a2, *(v7 + 8));
    UARPLayer2ReturnBuffer(a1, v9, 43690, 1593);
    return 0;
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointSendMessage(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, unsigned int a5)
{
  v9 = uarpPlatformDownstreamEndpointFindOnListByDelegate(a1, a2, a3);
  if (!v9)
  {
    return 58;
  }

  v10 = *(v9 + 8);

  return uarpTransmitMessageToDownstreamEndpointID(a1, a2, v10, a4, a5);
}

uint64_t uarpPlatformDelegateForDownstreamID(uint64_t a1, uint64_t a2, int a3)
{
  result = UARPPlatformDownstreamEndpointByID(a1, a2, a3);
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t uarpPlatformNoFirmwareUpdateAvailable(uint64_t a1, uint64_t a2)
{
  v4 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Du, 6u, 1);
  if (!v4)
  {
    return 11;
  }

  return uarpTransmitBuffer2(a1, a2, v4);
}

uint64_t uarpPlatformEndpointDiscoverEndpointIDs(uint64_t a1, uint64_t a2)
{
  v4 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Fu, 6u, 1);
  if (!v4)
  {
    return 11;
  }

  return uarpTransmitBuffer2(a1, a2, v4);
}

uint64_t uarpPlatformQueryEndpointComponentDiscovery(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x21u, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpPlatformEndpointBulkInfoQuery(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, int a5, unsigned int *a6)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        LODWORD(v10) = a5;
        if (a5)
        {
          v11 = a6;
          if (a6)
          {
            v13 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x23u, (4 * a5 + 16) & 0xFFFC, 1);
            if (v13)
            {
              v14 = v13;
              v15 = v13[3];
              *(v15 + 6) = uarpHtons(a3);
              *(v15 + 8) = *a4;
              *(v15 + 12) = uarpNtohl(v10);
              v16 = (v15 + 16);
              v10 = v10;
              do
              {
                v17 = *v11++;
                *v16++ = uarpHtonl(v17);
                --v10;
              }

              while (v10);

              return uarpTransmitBuffer2(a1, a2, v14);
            }

            else
            {
              return 11;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointBulkInfoResponseAddTLV(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5, unsigned int a6, unsigned int a7, _DWORD *a8)
{
  v8 = *a5;
  v9 = a7 + 8;
  if (a7 + 8 > a4 - v8)
  {
    return 65;
  }

  v15 = (a3 + v8);
  *v15 = uarpHtonl(a6);
  v15[1] = uarpHtonl(a7);
  v16 = a6 + 2001563387;
  if (v16 <= 0x34)
  {
    if (((1 << (a6 - 5)) & 0x10000000000071) != 0)
    {
      goto LABEL_15;
    }

    if (((1 << (a6 - 5)) & 0x4000000080104) != 0)
    {
      goto LABEL_11;
    }

    if (v16 == 1)
    {
      if (a7 != 8)
      {
        return 39;
      }

      goto LABEL_19;
    }
  }

  if (a6 > 0xD)
  {
    goto LABEL_13;
  }

  if (((1 << a6) & 0x2E1E) != 0)
  {
LABEL_11:
    memcpy(v15 + 2, a8, a7);
    v17 = v9 + v8;
    goto LABEL_12;
  }

  if (((1 << a6) & 0x60) != 0)
  {
    if (a7 == 16)
    {
      v18 = 0uLL;
      uarpVersionEndianSwap(a8, &v18);
      *(v15 + 2) = v18;
      v17 = v8 + 24;
LABEL_12:
      result = 0;
      *a5 = v17;
      return result;
    }

    return 39;
  }

LABEL_13:
  if (a6 == -2001563388)
  {
    if (a7 != 8)
    {
LABEL_15:
      if (a7 == 4)
      {
        v15[2] = uarpHtonl(*a8);
        v17 = v8 + 12;
        goto LABEL_12;
      }

      return 39;
    }

LABEL_19:
    *(v15 + 1) = uarpHtonll(*a8);
    v17 = v8 + 16;
    goto LABEL_12;
  }

  return 10;
}

uint64_t uarpPlatformEndpointBulkInfoResponse(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, const void *a5, unsigned int a6)
{
  result = 30;
  if (a1 && a2 && a4 && a5 && a6)
  {
    v13 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x25u, (a6 + 12), 1);
    if (v13)
    {
      v14 = v13;
      v15 = v13[3];
      *(v15 + 6) = uarpHtons(a3);
      *(v15 + 8) = *a4;
      memcpy((v15 + 12), a5, a6);

      return uarpTransmitBuffer2(a1, a2, v14);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpRemoteEndpointID(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t uarpRemoteEndpointIDForAsset(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 696)) != 0)
  {
    return *(v1 + 56);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t uarpPlatformRemoteDelegateForAssetDelegate(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 696);
    if (v1)
    {
      return *(v1 + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpRemoteEndpointForAsset(uint64_t result)
{
  if (result)
  {
    return *(result + 696);
  }

  return result;
}

__n128 uarpPlatformAssetSelectedPayloadInfo(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && *(a1 + 452) != -1 && *(a1 + 460) != 1)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *a2 = *(a1 + 468);
    result = *(a1 + 472);
    *(a2 + 4) = result;
    v3 = *(a1 + 500);
    *(a2 + 20) = *(a1 + 492);
    *(a2 + 24) = v3;
  }

  return result;
}

uint64_t uarpAssetQuerySuperBinaryMetaData(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(a2 + 460))
    {
      return *(a2 + 720);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpAssetQueryPayloadMetaData(uint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(a2 + 460) && (v5 = *(a2 + 632)) != 0)
    {
      while (*(v5 + 124) != a3)
      {
        v5 = *(v5 + 176);
        if (!v5)
        {
          return 0;
        }
      }

      return *(v5 + 168);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpAssetQueryPayloadInfo(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = 30;
  if (a1 && a2)
  {
    if (!a4)
    {
      return 26;
    }

    if (*(a2 + 460))
    {
      v6 = *(a2 + 632);
      if (!v6)
      {
        return 54;
      }

      while (*(v6 + 124) != a3)
      {
        v6 = *(v6 + 176);
        if (!v6)
        {
          return 54;
        }
      }

      *a4 = *(v6 + 4);
      *(a4 + 4) = *(v6 + 8);
      v9 = *(v6 + 36);
      *(a4 + 20) = *(v6 + 28);
      *(a4 + 24) = v9;
      v8 = (v6 + 128);
    }

    else
    {
      if (*(a2 + 452) != a3)
      {
        return 44;
      }

      *a4 = *(a2 + 468);
      *(a4 + 4) = *(a2 + 472);
      v7 = *(a2 + 500);
      *(a4 + 20) = *(a2 + 492);
      *(a4 + 24) = v7;
      v8 = (a2 + 592);
    }

    result = 0;
    *(a4 + 28) = *v8;
  }

  return result;
}

uint64_t uarpPlatformAssetQueryAssetID(uint64_t a1, _WORD *a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 44);
    }
  }

  return result;
}

__n128 uarpPlatformAssetQueryAssetVersion(uint64_t a1, __n128 *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = *(a1 + 52);
      *a2 = result;
    }
  }

  return result;
}

uint64_t uarpPlatformSetMaxTxPayloadLength(uint64_t a1, _DWORD *a2, int a3)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = a3;
    }
  }

  return result;
}

uint64_t uarpPlatformGetMaxTxPayloadLength(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *a2;
    }
  }

  return result;
}

uint64_t uarpPlatformSetMaxRxPayloadLength(uint64_t a1, uint64_t a2, int a3)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 4) = a3;
    }
  }

  return result;
}

uint64_t uarpPlatformGetMaxRxPayloadLength(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a2 + 4);
    }
  }

  return result;
}

uint64_t uarpPlatformGetSupportsBulkInfoQueries(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = 0;
  result = 30;
  if (a1 && a2 && a3)
  {
    result = 0;
    v4 = *(a2 + 50);
  }

  *a3 = v4;
  return result;
}

uint64_t uarpPlatformGetUseHostPushModel(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = 0;
  result = 30;
  if (a1 && a2 && a3)
  {
    result = 0;
    v4 = *(a2 + 52);
  }

  *a3 = v4;
  return result;
}

uint64_t uarpPlatformConfigureEndpointIDs(uint64_t a1, uint64_t a2, unsigned int a3, __int16 *a4)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = a4;
        if (a4)
        {
          if (*(a1 + 672))
          {
            uarpPlatformReleaseEndpointIDs(a1);
          }

          v11 = 0;
          result = UARPLayer2RequestBuffer(a1, &v11, 16 * a3, 43690, 2424);
          if (!result)
          {
            v8 = v11;
            *(a1 + 672) = v11;
            *(a1 + 664) = a3;
            v9 = a3;
            do
            {
              v10 = *v7++;
              *v8 = v10;
              v8 += 8;
              --v9;
            }

            while (v9);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformConfigureEndpointTags(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        if (a5)
        {
          v9 = *(a1 + 664);
          if (*(a1 + 664))
          {
            for (i = *(a1 + 672); *i != a3; i += 8)
            {
              if (!--v9)
              {
                return 30;
              }
            }

            if (*(i + 1))
            {
              uarpPlatformReleaseEndpointTags(a1, a2, i);
            }

            v12 = 0;
            result = UARPLayer2RequestBuffer(a1, &v12, (4 * a4), 43690, 2486);
            if (!result)
            {
              v11 = 0;
              *(i + 1) = v12;
              i[1] = a4;
              do
              {
                *(*(i + 1) + 4 * v11) = *(a5 + 4 * v11);
                ++v11;
              }

              while (a4 != v11);
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t simulationBackendCreate(uint64_t *a1)
{
  v2 = uarpZalloc(0x40uLL);
  *a1 = v2;
  *v2 = -1;
  v2[4] = 119;
  *(v2 + 2) = 34;
  *(v2 + 3) = 65793;
  *(v2 + 2) = 0x123456789ABCDEFLL;
  *(v2 + 24) = xmmword_299E7E860;
  v3 = *a1;
  *(v3 + 40) = 1;
  *(v3 + 44) = 0;
  return 0;
}

uint64_t simulationBackendDestroy(void **a1)
{
  uarpFree(*a1);
  *a1 = 0;
  return 0;
}

uint64_t simulationBackendGetPersParam(int *a1, int a2, _OWORD *a3, uint64_t a4, int *a5)
{
  result = 26;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 != 5)
      {
        *a3 = *(a1 + 6);
        if (!a5)
        {
          return 0;
        }

        v9 = 16;
        goto LABEL_28;
      }

      v7 = *(a1 + 14);
    }

    else
    {
      switch(a2)
      {
        case 7:
          v7 = *(a1 + 12);
          break;
        case 8:
          v7 = *(a1 + 13);
          break;
        case 10:
          v8 = a1[10];
          goto LABEL_20;
        default:
          return result;
      }
    }

LABEL_26:
    *a3 = v7;
    if (a5)
    {
      v9 = 1;
      goto LABEL_28;
    }

    return 0;
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v8 = a1[2];
      goto LABEL_20;
    }

    v7 = *(a1 + 4);
    goto LABEL_26;
  }

  if (a2 == 2)
  {
    v8 = *a1;
LABEL_20:
    *a3 = v8;
    if (!a5)
    {
      return 0;
    }

    v9 = 4;
    goto LABEL_28;
  }

  if (a2 != 3)
  {
    v7 = *(a1 + 15);
    goto LABEL_26;
  }

  *a3 = *(a1 + 2);
  if (!a5)
  {
    return 0;
  }

  v9 = 8;
LABEL_28:
  result = 0;
  *a5 = v9;
  return result;
}

uint64_t simulationBackendFlash(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *(a1 + 44) = 1;
  *(a1 + 45) = *a4;
  return 0;
}

uint64_t simulationBackendGetFlags(uint64_t a1)
{
  if (*(a1 + 44))
  {
    return 6;
  }

  else
  {
    return 4;
  }
}

uint64_t simulationBackendGetActiveVersion(uint64_t a1, _DWORD *a2, _WORD *a3)
{
  *a2 = 0;
  *a3 = 0;
  return 0;
}

uint64_t personalizationBackendDestroy(void **a1)
{
  uarpFree(*a1);
  *a1 = 0;
  return 0;
}

uint64_t personalizationBackendGetFlags(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = 10;
  }

  else
  {
    v1 = 8;
  }

  if (*(a1 + 43))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2 | v1;
}

uint64_t personalizationBackendGetActiveVersion(uint64_t a1, _DWORD *a2, _WORD *a3)
{
  *a2 = 0;
  *a3 = 0;
  return 0;
}

uint64_t fAssetProcessingNotification2_1(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  DynamicAssetDestroy(&v5);
  if (inRestore == 1 && (logLevel & 2) != 0)
  {
    puts("USBCUpdate: Calling Asset Fully Staged from Processing Notification");
  }

  else
  {
    uarpLogInfo(3u, "USBCUpdate: Calling Asset Fully Staged from Processing Notification\n");
  }

  return uarpPlatformEndpointAssetFullyStaged(a1, **(a1 + 1520));
}

uint64_t BackendCreate(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = uarpZalloc(0x50uLL);
  v7 = v6;
  v8 = *(a2 + 3);
  if (!v8)
  {
    v12 = *(a2 + 2);
    if (v12)
    {
      v6[1] = personalizationBackendDestroy;
      v6[2] = personalizationBackendGetPersParam;
      v6[3] = personalizationBackendFlash;
      v6[4] = personalizationBackendGetFlags;
      v6[6] = personalizationBackendGetActiveVersion;
      v6[9] = personalizationBackendTagHint;
      v9 = personalizationBackendCreate(v6, v12, a3);
      if (!v9)
      {
        goto LABEL_3;
      }
    }

    else if (a2[2])
    {
      v6[1] = simulationBackendDestroy;
      v6[2] = simulationBackendGetPersParam;
      v6[3] = simulationBackendFlash;
      v6[4] = simulationBackendGetFlags;
      v6[6] = simulationBackendGetActiveVersion;
      v6[7] = simulationBackendGetStagedVersion;
      v9 = simulationBackendCreate(v6);
      if (!v9)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v6[1] = internalBackendDestroy;
      v6[2] = internalBackendGetPersParam;
      v6[3] = internalBackendFlash;
      v6[4] = internalBackendGetFlags;
      v6[6] = internalBackendGetActiveVersion;
      v6[7] = internalBackendGetStagedVersion;
      v6[8] = internalBackendApply;
      v9 = internalBackendCreate(v6, *a2, *(a2 + 1), a2[8], a2[1] != 0, a2[9], a2[10], *(a2 + 18));
      if (!v9)
      {
        goto LABEL_3;
      }
    }

LABEL_7:
    v10 = v9;
    uarpFree(v7);
    return v10;
  }

  v6[1] = externalBackendDestroy;
  v6[2] = externalBackendGetPersParam;
  v6[3] = externalBackendFlash;
  v6[4] = externalBackendGetFlags;
  v6[9] = externalBackendTagHint;
  v9 = externalBackendCreate(v6, v8, a3, a2[9]);
  if (v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  v10 = 0;
  *a1 = v7;
  return v10;
}

uint64_t BackendDestroy(void **a1)
{
  v2 = *a1;
  v3 = v2[1];
  if (v3)
  {
    v4 = v3();
    v2 = *a1;
  }

  else
  {
    v4 = 26;
  }

  uarpFree(v2);
  *a1 = 0;
  return v4;
}

uint64_t BackendGetPersParam(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 26;
  }
}

uint64_t BackendFlash(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 26;
  }
}

uint64_t BackendGetFlags(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t BackendGetActiveVersion(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 26;
  }
}

uint64_t BackendGetStagedVersion(void *a1)
{
  v1 = a1[7];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 26;
  }
}

uint64_t BackendApplyAssets(void *a1)
{
  v1 = a1[8];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 26;
  }
}

uint64_t BackendTagHint(void *a1)
{
  v1 = a1[9];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 26;
  }
}

uint64_t getAHPMAddressForRID(char a1, void *a2)
{
  valuePtr = a1;
  v3 = IOServiceMatching("AppleHPMDeviceHALType3");
  v4 = *MEMORY[0x29EDB8ED8];
  v5 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt8Type, &valuePtr);
  add_property_match(v3, @"RID", v5);
  existing = 0;
  MatchingServices = IOServiceGetMatchingServices(*MEMORY[0x29EDBB118], v3, &existing);
  if (MatchingServices)
  {
    CFProperty = 3758097136;
    if (inRestore == 1)
    {
      printf("Error finding IOKit service: 0x%x\n", MatchingServices);
    }

    else
    {
      uarpLogError(3u, "Error finding IOKit service: 0x%x\n");
    }

    return CFProperty;
  }

  if (!existing)
  {
    CFProperty = 3758097136;
    if (inRestore == 1)
    {
      puts("Found no matching services");
    }

    else
    {
      uarpLogError(3u, "Found no matching services\n");
    }

    return CFProperty;
  }

  v8 = IOIteratorNext(existing);
  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = v8;
  CFProperty = IORegistryEntryCreateCFProperty(v8, @"Address", v4, 0);
  IOObjectRelease(v9);
  if (!CFProperty)
  {
    if (inRestore == 1)
    {
      puts("Cannot find address");
    }

    else
    {
      uarpLogError(3u, "Cannot find address\n");
    }

LABEL_22:
    CFProperty = 0;
    goto LABEL_23;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(CFProperty))
  {
    if (inRestore != 1)
    {
      uarpLogError(3u, "Address not number type\n");
      goto LABEL_23;
    }

    v11 = "Address not number type";
    goto LABEL_20;
  }

  if (!CFNumberGetValue(CFProperty, kCFNumberSInt32Type, a2))
  {
    if (inRestore != 1)
    {
      uarpLogError(3u, "Couldn't get number value\n");
      goto LABEL_23;
    }

    v11 = "Couldn't get number value";
LABEL_20:
    puts(v11);
  }

LABEL_23:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  if (CFProperty)
  {
    CFRelease(CFProperty);
    return 0;
  }

  return CFProperty;
}

const __CFDictionary *add_property_match(const __CFDictionary *a1, const void *a2, const void *a3)
{
  v6 = CFDictionaryContainsKey(a1, @"IOPropertyMatch");
  v7 = *MEMORY[0x29EDB8ED8];
  if (v6)
  {
    Value = CFDictionaryGetValue(a1, @"IOPropertyMatch");
    MutableCopy = CFDictionaryCreateMutableCopy(v7, 2, Value);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  }

  v10 = MutableCopy;
  CFDictionaryAddValue(MutableCopy, a2, a3);
  CFDictionaryAddValue(a1, @"IOPropertyMatch", v10);
  CFRelease(v10);
  CFRelease(a3);
  return a1;
}

uint64_t getAHPMLibInterfaceForRID(int a1, void *a2)
{
  valuePtr = a1;
  if (inRestore == 1 && (logLevel & 2) != 0)
  {
    printf("Trying to find AHPMLibInterface for RID 0x%02x\n", a1);
  }

  else
  {
    uarpLogInfo(3u, "Trying to find AHPMLibInterface for RID 0x%02x\n", a1);
  }

  v3 = IOServiceMatching("AppleHPMARM");
  v4 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt8Type, &valuePtr);
  add_property_match(v3, @"RID", v4);
  v21 = 0;
  existing = 0;
  MatchingServices = IOServiceGetMatchingServices(*MEMORY[0x29EDBB118], v3, &existing);
  if (MatchingServices)
  {
    v6 = 3758097136;
    if (inRestore == 1)
    {
      printf("Error finding IOKit service: 0x%x\n", MatchingServices);
    }

    else
    {
      uarpLogError(3u, "Error finding IOKit service: 0x%x\n");
    }
  }

  else if (existing)
  {
    v7 = IOIteratorNext(existing);
    v6 = 3758097088;
    if (v7)
    {
      v8 = v7;
      v17 = a2;
      do
      {
        theScore = 0;
        theInterface = 0;
        v9 = CFUUIDGetConstantUUIDWithBytes(0, 0x12u, 0xA1u, 0xDCu, 0xCFu, 0xCFu, 0x7Au, 0x47u, 0x75u, 0xBEu, 0xE5u, 0x9Cu, 0x43u, 0x19u, 0xF4u, 0xCDu, 0x2Bu);
        v10 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
        if (!IOCreatePlugInInterfaceForService(v8, v9, v10, &theInterface, &theScore))
        {
          v11 = theInterface;
          QueryInterface = (*theInterface)->QueryInterface;
          v13 = CFUUIDGetConstantUUIDWithBytes(0, 0xC1u, 0x3Au, 0xCDu, 0xD9u, 0x20u, 0x9Eu, 0x4Bu, 1u, 0xB7u, 0xBEu, 0xE0u, 0x5Cu, 0xD8u, 0x83u, 0xC7u, 0xB1u);
          v14 = CFUUIDGetUUIDBytes(v13);
          v15 = (QueryInterface)(v11, *&v14.byte0, *&v14.byte8, &v21);
          if (v15)
          {
            if (inRestore == 1)
            {
              printf("QueryInterface returned 0x%08x\n", v15);
            }

            else
            {
              uarpLogError(3u, "QueryInterface returned 0x%08x\n", v15);
            }
          }

          ((*theInterface)->Release)(theInterface);
        }

        IOObjectRelease(v8);
        v8 = IOIteratorNext(existing);
      }

      while (v8);
      if (v21)
      {
        v6 = 0;
        *v17 = v21;
      }
    }

    if (existing)
    {
      IOObjectRelease(existing);
    }
  }

  else
  {
    v6 = 3758097136;
    if (inRestore == 1)
    {
      puts("Found no matching services");
    }

    else
    {
      uarpLogError(3u, "Found no matching services\n");
    }
  }

  return v6;
}

uint64_t destroyAHPMLibInterface(uint64_t *a1)
{
  if (!a1)
  {
    return 3758097090;
  }

  v2 = *a1;
  if (!v2)
  {
    return 3758097090;
  }

  result = (*(*v2 + 24))(v2);
  *a1 = 0;
  return result;
}

uint64_t readBootArg()
{
  if (os_parse_boot_arg_int())
  {
    return 0;
  }

  else
  {
    return 3758097136;
  }
}

uint64_t delay_ms(unsigned int a1)
{
  v1 = 1000 * a1;
  if ((v1 & 0xFFFFFFFF00000000) != 0)
  {
    return 3758097090;
  }

  usleep(v1);
  return 0;
}

uint64_t num_updatable_hpms()
{
  if ((ace_lookup_complete & 1) == 0)
  {
    lookup_updatable_aces();
  }

  return _MergedGlobals;
}

uint64_t get_rid_for_lun(int a1, _BYTE *a2)
{
  if ((ace_lookup_complete & 1) == 0)
  {
    lookup_updatable_aces();
  }

  result = 3758097090;
  if (a1 >= 1 && _MergedGlobals >= a1)
  {
    result = 0;
    *a2 = *(&_MergedGlobals + (a1 - 1) + 4);
  }

  return result;
}

uint64_t get_tag_for_rid(int a1, int *a2)
{
  v13 = 1;
  edt_matching_dict = get_edt_matching_dict();
  *bytes = a1;
  v5 = CFDataCreate(*MEMORY[0x29EDB8ED8], bytes, 4);
  add_property_match(edt_matching_dict, @"rid", v5);
  existing = 0;
  MatchingServices = IOServiceGetMatchingServices(*MEMORY[0x29EDBB118], edt_matching_dict, &existing);
  if (MatchingServices)
  {
    v7 = 3758097136;
    if (inRestore == 1)
    {
      printf("Error finding matching device tree nodes: 0x%x\n", MatchingServices);
    }

    else
    {
      uarpLogError(3u, "Error finding matching device tree nodes: 0x%x\n");
    }
  }

  else if (existing)
  {
    v8 = IOIteratorNext(existing);
    if (v8)
    {
      v9 = v8;
      do
      {
        get_u32_from_edt_prop(v9, @"tag-number", &v13);
        if (inRestore == 1 && (logLevel & 2) != 0)
        {
          printf("Found tag value %d for RID %d\n", v13, a1);
        }

        else
        {
          uarpLogInfo(3u, "Found tag value %d for RID %d\n", v13, a1);
        }

        IOObjectRelease(v9);
        v9 = IOIteratorNext(existing);
      }

      while (v9);
    }

    if (existing)
    {
      IOObjectRelease(existing);
    }

    v7 = 0;
    *a2 = v13;
  }

  else
  {
    v7 = 3758097136;
    if (inRestore == 1)
    {
      puts("Found no matching device tree nodes");
    }

    else
    {
      uarpLogError(3u, "Found no matching device tree nodes\n");
    }
  }

  return v7;
}

__CFDictionary *get_edt_matching_dict()
{
  Mutable = CFArrayCreateMutable(0, 2, MEMORY[0x29EDB9000]);
  CFArrayAppendValue(Mutable, @"usbc,sn201202x,spmi");
  CFArrayAppendValue(Mutable, @"usbc,sn201202x,iic");
  v1 = CFDictionaryCreateMutable(0, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionaryAddValue(v1, @"IONameMatch", Mutable);
  CFRelease(Mutable);
  return v1;
}

uint64_t get_retimer_service(int a1, _DWORD *a2)
{
  *a2 = 0;
  edt_matching_dict = get_edt_matching_dict();
  *bytes = a1;
  v5 = *MEMORY[0x29EDB8ED8];
  v6 = CFDataCreate(*MEMORY[0x29EDB8ED8], bytes, 4);
  add_property_match(edt_matching_dict, @"rid", v6);
  v7 = *MEMORY[0x29EDBB118];
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB118], edt_matching_dict);
  if (MatchingService)
  {
    v11 = MatchingService;
    v19 = 0;
    u32_from_edt_prop = get_u32_from_edt_prop(MatchingService, @"usbc-update-protocol", &v19);
    if (u32_from_edt_prop)
    {
      if (u32_from_edt_prop == -536870160)
      {
        return 0;
      }

      else
      {
        return u32_from_edt_prop;
      }
    }

    else if (v19 == 2)
    {
      v18 = 0;
      v9 = get_u32_from_edt_prop(v11, @"spi-flash-parent", &v18);
      *v21 = v18;
      v13 = IOServiceMatching("AppleARMIICDevice");
      Mutable = CFDictionaryCreateMutable(v5, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v15 = CFDataCreate(v5, v21, 4);
      if (v15)
      {
        v16 = v15;
        CFDictionaryAddValue(Mutable, @"AAPL,phandle", v15);
        CFRelease(v16);
      }

      CFDictionarySetValue(v13, @"IOPropertyMatch", Mutable);
      v17 = IOServiceGetMatchingService(v7, v13);
      if (v17)
      {
        *v21 = 0;
        IORegistryEntryGetChildEntry(v17, "IOService", v21);
        if (*v21)
        {
          *a2 = *v21;
        }

        else
        {
          v9 = 3758097088;
          if (inRestore == 1)
          {
            puts("Error finding the atcrt service (found the iic service)");
          }

          else
          {
            uarpLogError(3u, "Error finding the atcrt service (found the iic service)\n");
          }
        }
      }

      if (!*a2)
      {
        v9 = 3758097088;
        if (inRestore == 1)
        {
          puts("Error finding the spi-flash-parent");
        }

        else
        {
          uarpLogError(3u, "Error finding the spi-flash-parent\n");
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (inRestore == 1)
    {
      printf("Error finding matching device tree nodes: 0x%x\n", 0);
    }

    else
    {
      uarpLogError(3u, "Error finding matching device tree nodes: 0x%x\n", 0);
    }

    return 3758097088;
  }

  return v9;
}

uint64_t get_retimer_nor_access(io_service_t a1, unsigned int a2)
{
  connect = 0;
  v3 = IOServiceOpen(a1, *MEMORY[0x29EDCA6B0], 0, &connect);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    input = a2;
    outputCnt = 0;
    v4 = IOConnectCallScalarMethod(connect, 3u, &input, 1u, 0, &outputCnt);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (inRestore == 1)
  {
    printf("Retimer SPI NOR access failed, value = %u, status = 0x%X\n", a2, v4);
  }

  else
  {
    uarpLogError(3u, "Retimer SPI NOR access failed, value = %u, status = 0x%X\n", a2, v4);
  }

LABEL_7:
  if (connect)
  {
    IOServiceClose(connect);
  }

  return v4;
}

uint64_t lookup_updatable_aces()
{
  ace_lookup_complete = 0;
  _MergedGlobals = 0;
  edt_matching_dict = get_edt_matching_dict();
  existing = 0;
  result = IOServiceGetMatchingServices(*MEMORY[0x29EDBB118], edt_matching_dict, &existing);
  if (!result)
  {
    v2 = IOIteratorNext(existing);
    v3 = _MergedGlobals;
    if (v2)
    {
      v4 = _MergedGlobals > 7;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v10 = v2;
      while (1)
      {
        v17 = 0;
        if (os_parse_boot_arg_int() && v17 == 1)
        {
          break;
        }

        v16 = 0;
        if (get_u32_from_edt_prop(v10, @"usbc-update-protocol", &v16))
        {
          if (inRestore == 1)
          {
            printf("Error when reading usbc-update-protocol: 0x%x\n");
          }

          else
          {
            uarpLogError(3u, "Error when reading usbc-update-protocol: 0x%x\n");
          }
        }

        else
        {
          if ((v16 - 1) <= 1)
          {
            if (!inRestore || (logLevel & 2) == 0)
            {
              uarpLogInfo(3u, "Found updatable Ace based on usbc-update-protocol value\n");
              goto LABEL_37;
            }

            v12 = "Found updatable Ace based on usbc-update-protocol value";
LABEL_36:
            puts(v12);
LABEL_37:
            LODWORD(v17) = -1;
            if (get_u32_from_edt_prop(v10, @"rid", &v17) || v17 >= 0x100)
            {
              if (inRestore == 1)
              {
                puts("Couldn't find RID for service, skipping!");
              }

              else
              {
                uarpLogError(3u, "Couldn't find RID for service, skipping!\n");
              }
            }

            else
            {
              v13 = _MergedGlobals;
              *(&_MergedGlobals + _MergedGlobals + 4) = v17;
              _MergedGlobals = v13 + 1;
            }

            goto LABEL_45;
          }

          if (inRestore && (logLevel & 2) != 0)
          {
            printf("Unexpected usbc-update-protocol value %d\n");
          }

          else
          {
            uarpLogInfo(3u, "Unexpected usbc-update-protocol value %d\n", v16);
          }
        }

LABEL_45:
        IOObjectRelease(v10);
        v14 = IOIteratorNext(existing);
        v3 = _MergedGlobals;
        if (v14)
        {
          v10 = v14;
          if (_MergedGlobals < 8)
          {
            continue;
          }
        }

        goto LABEL_7;
      }

      if (inRestore != 1 || (logLevel & 2) == 0)
      {
        uarpLogInfo(3u, "Skipping updatable check due to bootarg\n");
        goto LABEL_37;
      }

      v12 = "Skipping updatable check due to bootarg";
      goto LABEL_36;
    }

LABEL_7:
    result = existing;
    if (existing)
    {
      result = IOObjectRelease(existing);
      v3 = _MergedGlobals;
    }

    if (v3 >= 2)
    {
      for (i = 1; i != v3; ++i)
      {
        v6 = 0;
        v7 = &byte_2A14F205D;
        v8 = byte_2A14F205C;
        do
        {
          v9 = *v7;
          if (v8 <= v9)
          {
            v8 = *v7;
          }

          else
          {
            *(v7 - 1) = v9;
            *v7 = v8;
          }

          ++v6;
          ++v7;
        }

        while (v6 < v3 - i);
      }
    }

    ace_lookup_complete = 1;
  }

  return result;
}

uint64_t get_u32_from_edt_prop(io_registry_entry_t a1, const __CFString *a2, UInt8 *a3)
{
  v4 = 3758097084;
  CFProperty = IORegistryEntryCreateCFProperty(a1, a2, *MEMORY[0x29EDB8ED8], 0);
  if (!CFProperty)
  {
    return 3758097136;
  }

  v6 = CFProperty;
  if (CFDataGetLength(CFProperty) >= 4)
  {
    v8.location = 0;
    v8.length = 4;
    CFDataGetBytes(v6, v8, a3);
    v4 = 0;
  }

  CFRelease(v6);
  return v4;
}

uint64_t DynamicAssetCreate(void *a1)
{
  v2 = uarpZalloc(0x10uLL);
  v2[1] = uarpZalloc(0x64uLL);
  *(v2 + 1) = 100;
  *a1 = v2;
  return 0;
}

uint64_t DynamicAssetDestroy(void **a1)
{
  uarpFree(*(*a1 + 1));
  uarpFree(*a1);
  *a1 = 0;
  return 0;
}

uint64_t DynamicAssetGetBytesAtOffset(uint64_t a1, void *__dst, unsigned int a3, unsigned int a4, _WORD *a5)
{
  v6 = *a1 - a4;
  if (*a1 >= a4)
  {
    if (v6 >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = v6;
    }

    memcpy(__dst, (*(a1 + 8) + a4), v7);
    result = 0;
  }

  else
  {
    LOWORD(v7) = 0;
    result = 43;
  }

  *a5 = v7;
  return result;
}

uint64_t handle_shared_spi(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 103))
    {
      return 0;
    }
  }

  else if (!*(a1 + 103))
  {
    return 0;
  }

  v4 = *(a1 + 2);
  if (v4)
  {
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_19:
    retimer_nor_access = get_retimer_nor_access(v4, 0);
    if (retimer_nor_access)
    {
      v16 = *(a1 + 102);
      if (inRestore == 1)
      {
        printf("Error when relinquishing shared SPI access on RID%u status=0x%X\n");
      }

      else
      {
        uarpLogError(3u, "Error when relinquishing shared SPI access on RID%u status=0x%X\n");
      }
    }

    else
    {
      *(a1 + 103) = 0;
    }

    return retimer_nor_access;
  }

  v18 = 0;
  retimer_nor_access = get_retimer_service(*(a1 + 102), &v18);
  if (retimer_nor_access)
  {
    return retimer_nor_access;
  }

  v4 = v18;
  if (!v18)
  {
    return retimer_nor_access;
  }

  *(a1 + 2) = v18;
  if (!a2)
  {
    goto LABEL_19;
  }

LABEL_7:
  v5 = *a1;
  v19 = 0;
  getAHPMAddressForRID(*(a1 + 102), &v19);
  v6 = (*(*v5 + 128))(v5, v19, a2, 0);
  if (v6)
  {
    retimer_nor_access = v6;
    v15 = *(a1 + 102);
    if (inRestore == 1)
    {
      printf("Error when powering on retimer on RID%u status=0x%X\n");
    }

    else
    {
      uarpLogError(3u, "Error when powering on retimer on RID%u status=0x%X\n");
    }
  }

  else
  {
    delay_ms(0x3E8u);
    v7 = 0;
    do
    {
      retimer_nor_access = get_retimer_nor_access(*(a1 + 2), 1u);
      if (!retimer_nor_access)
      {
        *(a1 + 103) = 1;
        return retimer_nor_access;
      }

      delay_ms(0x64u);
    }

    while (v7++ < 2);
    if (os_parse_boot_arg_string())
    {
      if (!*(a1 + 102))
      {
        if (inRestore)
        {
          printf("RID0 cannot get exlusive access from retimer, status=0x%X, will assume implicit permission\n", retimer_nor_access);
        }

        else
        {
          uarpLogError(3u, "RID0 cannot get exlusive access from retimer, status=0x%X, will assume implicit permission\n", retimer_nor_access);
        }

        return 0;
      }

      if (inRestore)
      {
        printf("Forcing retimer at RID%u into DFU due to failure to get exclusive access, status=0x%X\n", *(a1 + 102), retimer_nor_access);
      }

      else
      {
        uarpLogError(3u, "Forcing retimer at RID%u into DFU due to failure to get exclusive access, status=0x%X\n", *(a1 + 102), retimer_nor_access);
      }

      v11 = *a1;
      v20 = 0;
      getAHPMAddressForRID(*(a1 + 102), &v20);
      v12 = (*(*v11 + 120))(v11, v20, 1, 0);
      retimer_nor_access = v12;
      if (v12)
      {
        v13 = *(a1 + 102);
        if (inRestore == 1)
        {
          printf("Error when forcing ATCRT update on RID%u status=0x%X\n", *(a1 + 102), v12);
        }

        else
        {
          uarpLogError(3u, "Error when forcing ATCRT update on RID%u status=0x%X\n", *(a1 + 102), v12);
        }

        (*(*v11 + 120))(v11, v20, 0, 0);
        v17 = *(a1 + 102);
        if (inRestore == 1)
        {
          printf("Failed to force retimer at RID%u into DFU, status=0x%X\n");
        }

        else
        {
          uarpLogError(3u, "Failed to force retimer at RID%u into DFU, status=0x%X\n");
        }
      }
    }

    else
    {
      v10 = *(a1 + 102);
      if (inRestore == 1)
      {
        printf("RID%u not in restore and getting exclusive access failed, status=0%X\n");
      }

      else
      {
        uarpLogError(3u, "RID%u not in restore and getting exclusive access failed, status=0%X\n");
      }
    }
  }

  return retimer_nor_access;
}

int flash(void)
{
  v3 = v0;
  v38 = *MEMORY[0x29EDCA608];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  memset(v33, 0, sizeof(v33));
  v31 = v2;
  if (v2)
  {
    v4 = 1094993513;
  }

  else
  {
    v4 = 1397118825;
  }

  if (v2)
  {
    v5 = 1094993508;
  }

  else
  {
    v5 = 1397118820;
  }

  if (v2)
  {
    v6 = 1094993507;
  }

  else
  {
    v6 = 1397118819;
  }

  if (*(v0 + 85) == 1)
  {
    if (inRestore)
    {
      puts("verify_only set! Should not be attempting to flash!");
    }

    else
    {
      uarpLogError(3u, "verify_only set! Should not be attempting to flash!\n");
    }

    v8 = 30;
    goto LABEL_53;
  }

  v7 = v1;
  if (inRestore && (logLevel & 2) != 0)
  {
    printf("Preparing to flash 0x%x bytes of image to rid %d\n", v1, *(v0 + 102));
  }

  else
  {
    uarpLogInfo(3u, "Preparing to flash 0x%x bytes of image to rid %d\n", v1, *(v0 + 102));
  }

  if ((v31 & 1) == 0)
  {
    v9 = handle_shared_spi(v3, 1);
    if (v9)
    {
      goto LABEL_64;
    }
  }

  v10 = *v3;
  v32 = v4;
  LOWORD(v27) = 64;
  v9 = (*(*v10 + 104))(v10, 1, &v32, &v34, 0, v33, 0, 64, v27, 10, 0, 0);
  if (v9)
  {
    goto LABEL_64;
  }

  v11 = check_task_result(v33[0], v4);
  if ((v31 & 1) == 0 && v11 == 4)
  {
    flash_cold_1(v3);
  }

  else
  {
    HIDWORD(v30) = v6;
    if (!v11 && (BYTE2(v33[0]) & 0xC0) == 0x80)
    {
      if (v7)
      {
        v12 = 0;
        if (v31)
        {
          v13 = 4;
        }

        else
        {
          v13 = 3;
        }

        v14 = 0xFFFFFFFFLL;
        v15 = 1;
        while (1)
        {
          v16 = (v7 - v12) >= 0x40 ? 64 : v7 - v12;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          __memcpy_chk();
          v17 = CRCBuffer(&v34, 64, v14);
          v14 = v17;
          if (inRestore == 1 && (logLevel & 2) != 0)
          {
            printf("Flashing block %d, CRC = 0x%08x\n", v15, v17);
          }

          else
          {
            uarpLogInfo(3u, "Flashing block %d, CRC = 0x%08x\n", v15, v17);
          }

          v18 = *v3;
          v32 = v5;
          LODWORD(v30) = 0;
          LOWORD(v29) = 64;
          v19 = (*(*v18 + 104))(v18, 1, &v32, &v34, 0, v33, 0, 64, v29, 10, 0, v30);
          if (v19)
          {
            break;
          }

          if (check_task_result(v33[0], v5) || v14 != *(v33 + v13))
          {
            goto LABEL_56;
          }

          v20 = 1;
          if (v31)
          {
            v20 = 2;
          }

          if (*(v33 | v20) != v15)
          {
            goto LABEL_56;
          }

          v12 += v16;
          if ((v12 == v7) == SLOBYTE(v33[0]) < 0)
          {
            v21 = (SLOBYTE(v33[0]) >> 7) & 1;
            if (inRestore == 1 && (logLevel & 2) != 0)
            {
              printf("Expected more data: actual_more_data=0x%X, length=0x%X, (current_index + bytes_to_write) = 0x%X\n", v21, v7, v12);
            }

            else
            {
              uarpLogInfo(3u, "Expected more data: actual_more_data=0x%X, length=0x%X, (current_index + bytes_to_write) = 0x%X\n", v21, v7, v12);
            }
          }

          ++v15;
          if (v12 == v7)
          {
            goto LABEL_50;
          }
        }

        v8 = v19;
LABEL_62:
        handle_shared_spi(v3, 0);
        if (v8 != -536870167)
        {
          goto LABEL_54;
        }

        goto LABEL_57;
      }

LABEL_50:
      v22 = *v3;
      v23 = HIDWORD(v30);
      v32 = HIDWORD(v30);
      LODWORD(v30) = 0;
      LOWORD(v28) = 64;
      v9 = (*(*v22 + 104))(v22, 1, &v32, 0, 0, v33, 0, 0, v28, 10, 0, v30);
      if (!v9)
      {
        if (!check_task_result(v33[0], v23))
        {
          v8 = 0;
LABEL_53:
          handle_shared_spi(v3, 0);
          goto LABEL_54;
        }

        goto LABEL_56;
      }

LABEL_64:
      v8 = v9;
      goto LABEL_62;
    }
  }

LABEL_56:
  handle_shared_spi(v3, 0);
LABEL_57:
  v26 = *(v3 + 102);
  if (inRestore == 1)
  {
    printf("Device error RID=0x%d\n", *(v3 + 102));
  }

  else
  {
    uarpLogError(3u, "Device error RID=0x%d\n", *(v3 + 102));
  }

  v8 = -536870167;
  print_fw_update_regs(*v3);
LABEL_54:
  v24 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t check_task_result(char a1, unsigned int a2)
{
  v2 = a1 & 0xF;
  if ((a1 & 0xF) != 0)
  {
    if (inRestore == 1)
    {
      printf("Bad task result from %c%c%c%c 4CC: 0x%x\n", HIBYTE(a2), BYTE2(a2), BYTE1(a2), a2, a1 & 0xF);
    }

    else
    {
      uarpLogError(3u, "Bad task result from %c%c%c%c 4CC: 0x%x\n", HIBYTE(a2), BYTE2(a2), BYTE1(a2), a2, a1 & 0xF);
    }
  }

  return v2;
}

void print_fw_update_regs(uint64_t a1)
{
  v2 = uarpZalloc(0x34uLL);
  if (v2)
  {
    v3 = v2;
    v6 = 0;
    (*(*a1 + 40))(a1, 0, 45, v2, 52, 0, &v6);
    if (inRestore == 1)
    {
      puts("otpBuf:");
    }

    else
    {
      uarpLogError(3u, "otpBuf:\n");
    }

    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (inRestore == 1)
      {
        printf("%02X", v3[v4]);
      }

      else
      {
        uarpLogError(3u, "%02X", v3[v4]);
      }

      if ((++v4 & 0xF) == 0)
      {
        if (inRestore == 1)
        {
          putchar(10);
        }

        else
        {
          uarpLogError(3u, "\n");
        }
      }
    }

    while (v4 != 52);
    uarpFree(v3);
  }
}

uint64_t OUTLINED_FUNCTION_1()
{
  result = *v0;
  v2 = *(**v0 + 40);
  return result;
}

void OUTLINED_FUNCTION_12()
{
  v2 = *v1;
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1)
{

  return wait_for_mode(a1, 1095782432);
}

uint64_t wait_for_mode(uint64_t a1, int a2)
{
  v4 = 10;
  while (1)
  {
    mode = get_mode(a1);
    if (!mode)
    {
      break;
    }

    if (inRestore == 1)
    {
      printf("Warning: Received status 0x%x when reading mode, delaying 1000ms and trying again", mode);
    }

    else
    {
      uarpLogError(3u, "Warning: Received status 0x%x when reading mode, delaying 1000ms and trying again", mode);
    }

    delay_ms(0x3E8u);
    if (!--v4)
    {
      v6 = 3758097129;
      if (inRestore == 1)
      {
        printf("Ace never enterred mode 0x%x\n");
      }

      else
      {
        uarpLogError(3u, "Ace never enterred mode 0x%x\n");
      }

      return v6;
    }
  }

  if (!a2)
  {
    return 0;
  }

  v6 = 3758097129;
  if (inRestore)
  {
    printf("Ace in unexpected mode 0x%08x\n");
  }

  else
  {
    uarpLogError(3u, "Ace in unexpected mode 0x%08x\n");
  }

  return v6;
}

uint64_t get_pers_params(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v7 = 0;
  __s1 = 0;
  v9 = 0;
  if (*(a1 + 81))
  {
    v4 = 26;
  }

  else
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5();
    v3 = v2();
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      if (inRestore == 1)
      {
        printf("ERROR: Unexpected read length for register 0x2c: 0x%llx\n");
      }

      else
      {
        uarpLogError(3u, "ERROR: Unexpected read length for register 0x2c: 0x%llx\n");
      }

      v4 = 39;
    }
  }

  handle_shared_spi(a1, 0);
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t get_mode(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_9();
  result = v1();
  if (!result)
  {
    return 3758097129;
  }

  return result;
}

void flash_cold_1(uint64_t a1)
{
  v1 = *(a1 + 102);
  if (inRestore)
  {
    printf("Failed SFWi on RID %d with 'Flash Busy' error - check SPI flash seating\n", *(a1 + 102));
  }

  else
  {
    uarpLogError(3u, "Failed SFWi on RID %d with 'Flash Busy' error - check SPI flash seating\n", *(a1 + 102));
  }
}

uint64_t USBCUpdateBoardID(uint64_t a1, int a2, void *a3, unsigned int a4, int *a5)
{
  if (!a1 || a4 < 8 || BackendGetPersParam(*(a1 + 1536)))
  {
    generic_copyout(0, a3, a4, a5);
  }

  else
  {
    *a3 = 0;
    *a5 = 8;
  }

  return 0;
}

void generic_copyout(uint64_t a1, _DWORD *a2, int a3, int *a4)
{
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      *a2 = a1;
      goto LABEL_11;
    }

    if (a3 == 8)
    {
      *a2 = a1;
      goto LABEL_11;
    }

LABEL_8:
    bzero(a2, a3);
    goto LABEL_11;
  }

  if (a3 == 1)
  {
    *a2 = a1;
    goto LABEL_11;
  }

  if (a3 != 2)
  {
    goto LABEL_8;
  }

  *a2 = a1;
LABEL_11:
  *a4 = a3;
}

uint64_t USBCUpdateChipID(uint64_t a1, int a2, _DWORD *a3, unsigned int a4, int *a5)
{
  if (!a1 || a4 < 4 || BackendGetPersParam(*(a1 + 1536)))
  {
    generic_copyout(0, a3, a4, a5);
  }

  else
  {
    *a3 = 0;
    *a5 = 4;
  }

  return 0;
}

uint64_t USBCUpdateChipRevision(uint64_t a1, int a2, _DWORD *a3, unsigned int a4, int *a5)
{
  if (!a1 || a4 < 4 || BackendGetPersParam(*(a1 + 1536)))
  {
    generic_copyout(0, a3, a4, a5);
  }

  else
  {
    *a3 = 0;
    *a5 = 4;
  }

  return 0;
}

uint64_t USBCUpdateECID(uint64_t a1, int a2, void *a3, unsigned int a4, int *a5)
{
  if (!a1 || a4 < 8 || BackendGetPersParam(*(a1 + 1536)))
  {
    generic_copyout(0, a3, a4, a5);
  }

  else
  {
    *a3 = 0;
    *a5 = 8;
  }

  return 0;
}

uint64_t USBCUpdateSecurityDomain(uint64_t a1, int a2, _DWORD *a3, unsigned int a4, int *a5)
{
  if (!a1 || a4 < 4 || BackendGetPersParam(*(a1 + 1536)))
  {
    generic_copyout(0, a3, a4, a5);
  }

  else
  {
    *a3 = 0;
    *a5 = 4;
  }

  return 0;
}

uint64_t USBCUpdateSecurityMode(uint64_t a1, int a2, _DWORD *a3, unsigned int a4, int *a5)
{
  if (!a1 || a4 < 4 || BackendGetPersParam(*(a1 + 1536)))
  {
    generic_copyout(0, a3, a4, a5);
  }

  else
  {
    *a3 = 0;
    *a5 = 4;
  }

  return 0;
}

uint64_t USBCUpdateProductionMode(uint64_t a1, int a2, _DWORD *a3, unsigned int a4, int *a5)
{
  if (!a1 || a4 < 4 || BackendGetPersParam(*(a1 + 1536)))
  {
    generic_copyout(0, a3, a4, a5);
  }

  else
  {
    *a3 = 0;
    *a5 = 4;
  }

  return 0;
}

uint64_t USBCUpdateChipEpoch(uint64_t a1, int a2, _DWORD *a3, unsigned int a4, int *a5)
{
  if (!a1 || a4 < 4 || BackendGetPersParam(*(a1 + 1536)))
  {
    generic_copyout(0, a3, a4, a5);
  }

  else
  {
    *a3 = 0;
    *a5 = 4;
  }

  return 0;
}

uint64_t USBCUpdatePrefixNeedsLUN(int a1, int a2, _BYTE *a3, int a4, int *a5)
{
  if (a3 && a4)
  {
    *a3 = 1;
    *a5 = 1;
  }

  else
  {
    generic_copyout(0, a3, a4, a5);
  }

  return 0;
}

uint64_t USBCUpdateSuffixNeedsLUN(int a1, int a2, _BYTE *a3, int a4, int *a5)
{
  if (a3 && a4)
  {
    *a3 = 0;
    *a5 = 1;
  }

  else
  {
    generic_copyout(0, a3, a4, a5);
  }

  return 0;
}

uint64_t USBCUpdateTag(uint64_t a1, int a2, _DWORD *a3, unsigned int a4, int *a5)
{
  if (a1 && a3 && a4 >= 4 && !BackendGetPersParam(*(a1 + 1536)))
  {
    *a3 = 0;
    *a5 = 4;
  }

  else
  {
    generic_copyout(0, a3, a4, a5);
  }

  return 0;
}

uint64_t USBCUpdateRequiresPersonalization(uint64_t a1, int a2, BOOL *a3, int a4, int *a5)
{
  if (a1 && a3 && a4)
  {
    *a3 = (BackendGetFlags(*(a1 + 1536)) & 4) != 0;
    *a5 = 1;
  }

  else
  {
    generic_copyout(0, a3, a4, a5);
  }

  return 0;
}

uint64_t USBCUpdateAPBoardID(uint64_t a1, int a2, _DWORD *a3, unsigned int a4, int *a5)
{
  if (!a1 || a4 < 4 || BackendGetPersParam(*(a1 + 1536)))
  {
    generic_copyout(0, a3, a4, a5);
  }

  else
  {
    *a3 = 0;
    *a5 = 4;
  }

  return 0;
}

uint64_t USBCUpdateAPChipID(uint64_t a1, int a2, _DWORD *a3, unsigned int a4, int *a5)
{
  if (!a1 || a4 < 4 || BackendGetPersParam(*(a1 + 1536)))
  {
    generic_copyout(0, a3, a4, a5);
  }

  else
  {
    *a3 = 0;
    *a5 = 4;
  }

  return 0;
}

uint64_t USBCUpdateInfoUnsupported(int a1, int a2, _DWORD *a3, unsigned int a4, int *a5)
{
  if (a4 >= 4)
  {
    v6 = 4;
  }

  else
  {
    v6 = a4;
  }

  if (a2 == 22)
  {
    v7 = v6;
  }

  else
  {
    v7 = a4;
  }

  if (a2 != 21)
  {
    v6 = v7;
  }

  v8 = a4 != 0;
  v9 = v8;
  if (a2 != 13)
  {
    v9 = a4;
  }

  if (a2 != 12)
  {
    v8 = v9;
  }

  if (a2 <= 20)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  generic_copyout(0, a3, v10, a5);
  return 0;
}

uint64_t externalBackendGetFlags(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v1 = 10;
  }

  else
  {
    v1 = 8;
  }

  if (*(a1 + 60))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2 | v1;
}

uint64_t fAssetProcessingNotification2_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  DynamicAssetDestroy(&v5);
  if (inRestore == 1 && (logLevel & 2) != 0)
  {
    puts("USBCUpdate: Calling Asset Fully Staged from Processing Notification");
  }

  else
  {
    uarpLogInfo(3u, "USBCUpdate: Calling Asset Fully Staged from Processing Notification\n");
  }

  return uarpPlatformEndpointAssetFullyStaged(a1, **(a1 + 1520));
}

void OUTLINED_FUNCTION_2_0()
{
  v3 = v0[42];
  v4 = v0[43];
  v1 = v0[40];
  v2 = v0[41];
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return parse_serial_string_u64(v7, a2, va);
}

uint64_t fDynamicAssetOffered(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = uarpAssetTagStructPersonalization();
  if (uarpAssetTagCompare(v5, (a3 + 48)))
  {
    *(a1 + 1528) = a3;
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
    uarpZero(v7, 0xE0uLL);
    *&v7[0] = IM4MReady;
    *&v8 = IM4MData;
    *(&v10 + 1) = 0;
    *&v11 = 0;
    *&v9 = IM4MDataComplete;
    *(&v12 + 1) = IM4MReleased;
    *&v15 = IM4MHeadersAndMetadataComplete;
    *(&v13 + 1) = fAssetProcessingNotificationAck_2;
    return uarpPlatformEndpointAssetAccept(a1, a1 + 1248, a3, a3, v7);
  }

  else
  {
    if (inRestore == 1 && (logLevel & 2) != 0)
    {
      puts("WARNING: Unexpected tag for offered Dynamic Asset");
    }

    else
    {
      uarpLogInfo(3u, "WARNING: Unexpected tag for offered Dynamic Asset\n");
    }

    return uarpPlatformEndpointAssetDeny(a1, a1 + 1248, a3, 3072, a3, 0);
  }
}

uint64_t IM4MDataComplete(uint64_t a1, uint64_t a2)
{
  if (inRestore == 1 && (logLevel & 2) != 0)
  {
    puts("Received the whole IM4M");
  }

  else
  {
    uarpLogInfo(3u, "Received the whole IM4M\n");
  }

  v4 = buildAndStageImage(a1, *(a1 + 1520));
  if (v4)
  {
    if (inRestore)
    {
      printf("Failed to build and Stage personalized FW: 0x%x\n", v4);
    }

    else
    {
      uarpLogError(3u, "Failed to build and Stage personalized FW: 0x%x\n", v4);
    }

    return uarpPlatformEndpointAssetAbandon(a1, a1 + 1248, a2, 2560);
  }

  else
  {
    if (inRestore && (logLevel & 2) != 0)
    {
      puts("Built and Staged the personalized FW");
    }

    else
    {
      uarpLogInfo(3u, "Built and Staged the personalized FW\n");
    }

    return uarpPlatformEndpointAssetFullyStaged(a1, a2);
  }
}

uint64_t USBCUpdateQueryLogicalUnitNumber(int a1)
{
  memset(v8, 0, sizeof(v8));
  DWORD1(v8[0]) = a1;
  v7 = 0;
  v1 = uarpZalloc(0x6F0uLL);
  if (v1)
  {
    v2 = v1;
    if (BackendCreate(&v7, v8, v1))
    {
      USBCUpdateQueryLogicalUnitNumber_cold_1();
LABEL_15:
      uarpFree(v2);
      return 0;
    }

    v3 = uarpZalloc(0x12uLL);
    if (v3)
    {
      v4 = v3;
      if (BackendGetPersParam(v7))
      {
        USBCUpdateQueryLogicalUnitNumber_cold_2();
      }

      else
      {
        USBCUpdateQueryLogicalUnitNumber_cold_3();
      }

      uarpFree(v4);
      BackendDestroy(&v7);
      goto LABEL_15;
    }

    if (inRestore != 1)
    {
      uarpLogError(3u, "Error allocating info\n");
      return 0;
    }

    v6 = "Error allocating info";
  }

  else
  {
    if (inRestore != 1)
    {
      uarpLogError(3u, "Error allocating accessory\n");
      return 0;
    }

    v6 = "Error allocating accessory";
  }

  puts(v6);
  return 0;
}

void fPayloadData_1(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  if (inRestore == 1 && (logLevel & 2) != 0)
  {
    puts("Received some payload data");
  }

  else
  {
    uarpLogInfo(3u, "Received some payload data\n");
  }

  if ((*(a2 + 33) & 1) != 0 || *(a2 + 10) != *(a2 + 16))
  {
    if (FWImageAddBytes(*(a2 + 24), a3, a4))
    {
      v8 = *a2;

      uarpPlatformEndpointAssetAbandon(a1, a1 + 1248, v8, 2304);
    }
  }

  else if (inRestore == 1 && (logLevel & 2) != 0)
  {

    puts("Workaround: not putting any bits of the digest list into the image, due to no personalization");
  }

  else
  {

    uarpLogInfo(3u, "Workaround: not putting any bits of the digest list into the image, due to no personalization\n");
  }
}

void fPayloadDataComplete2_0(void *a1, uint64_t a2)
{
  if (inRestore == 1 && (logLevel & 2) != 0)
  {
    puts("Payload Data complete");
  }

  else
  {
    uarpLogInfo(3u, "Payload Data complete\n");
  }

  v4 = *(a2 + 10);
  if (v4 == *(a2 + 12))
  {
    if (inRestore == 1 && (logLevel & 2) != 0)
    {
      puts("Finished Patch");
    }

    else
    {
      uarpLogInfo(3u, "Finished Patch\n");
    }

    *(a2 + 10) = *(a2 + 14);
    v5 = *(a2 + 24);
    v6 = 1;
    goto LABEL_21;
  }

  if (v4 == *(a2 + 14))
  {
    if (inRestore == 1 && (logLevel & 2) != 0)
    {
      puts("Finished AC");
    }

    else
    {
      uarpLogInfo(3u, "Finished AC\n");
    }

    *(a2 + 10) = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = 3;
LABEL_21:
    if (!FWImageSetActiveComponent(v5, v6) && !uarpPlatformEndpointAssetSetPayloadIndex(a1, *a2, *(a2 + 10)))
    {
      return;
    }

    goto LABEL_26;
  }

  if (v4 == *(a2 + 16))
  {
    if (inRestore == 1 && (logLevel & 2) != 0)
    {
      puts("Finished DL");
    }

    else
    {
      uarpLogInfo(3u, "Finished DL\n");
    }

    if (stage4_beginning(a1, a2))
    {
LABEL_26:
      v7 = *a2;

      uarpPlatformEndpointAssetAbandon(a1, a1 + 1248, v7, 2304);
    }
  }
}

void fAssetAllHeadersAndMetaDataComplete_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v74 = *MEMORY[0x29EDCA608];
  v3 = 30;
  if (!a1)
  {
    goto LABEL_129;
  }

  v4 = a3;
  if (!a3)
  {
    goto LABEL_129;
  }

  v5 = a1;
  SuperBinaryMetaData = uarpAssetQuerySuperBinaryMetaData(a1, *a3);
  if (SuperBinaryMetaData)
  {
    v7 = SuperBinaryMetaData;
    do
    {
      if (*v7 == -858619645)
      {
        if (*(v7 + 4) != 4)
        {
          v3 = 0;
          goto LABEL_128;
        }

        *(v4 + 32) = uarpNtohl(**(v7 + 8)) != 0;
      }

      v7 = *(v7 + 16);
    }

    while (v7);
  }

  v8 = "False";
  if (inRestore == 1 && (logLevel & 2) != 0)
  {
    if (*(v4 + 32))
    {
      v8 = "True";
    }

    printf("Ignore Version = %s\n", v8);
  }

  else
  {
    if (*(v4 + 32))
    {
      v8 = "True";
    }

    uarpLogInfo(3u, "Ignore Version = %s\n", v8);
  }

  NumberOfPayloads = uarpPlatformEndpointAssetQueryNumberOfPayloads(v5, *v4, v4 + 4);
  if (NumberOfPayloads)
  {
LABEL_151:
    v3 = NumberOfPayloads;
LABEL_128:
    uarpPlatformEndpointAssetAbandon(v5, v5 + 1248, *v4, 2304);
LABEL_129:
    fAssetAllHeadersAndMetaDataComplete_cold_1(v3);
    goto LABEL_148;
  }

  if (!*(v5 + 1536))
  {
LABEL_152:
    v3 = 30;
    goto LABEL_128;
  }

  v10 = *(v4 + 4);
  v11 = uarpZalloc(4 * v10);
  if (!v11)
  {
    v3 = 11;
    goto LABEL_128;
  }

  v12 = v11;
  v70 = 0;
  v69 = 0;
  PersParam = BackendGetPersParam(*(v5 + 1536));
  if (PersParam)
  {
    v3 = PersParam;
    goto LABEL_127;
  }

  if (inRestore == 1 && (logLevel & 2) != 0)
  {
    printf("Searching for Board ID 0x%llx\n", v70);
    if (!v10)
    {
LABEL_107:
      v3 = 15;
LABEL_127:
      uarpFree(v12);
      goto LABEL_128;
    }
  }

  else
  {
    uarpLogInfo(3u, "Searching for Board ID 0x%llx\n", v70);
    if (!v10)
    {
      goto LABEL_107;
    }
  }

  v14 = 0;
  v15 = 0;
  v62 = 0;
  v63 = 0;
  v56 = 0xFFFF;
  v59 = v4;
  v60 = v5;
  v57 = v10;
  v58 = v12;
  do
  {
    memset(v68, 0, sizeof(v68));
    PayloadInfo = uarpAssetQueryPayloadInfo(v5, *v4, v15, v68);
    if (PayloadInfo)
    {
      goto LABEL_149;
    }

    v17 = uarpTagStructPack32(v68);
    *(v12 + v14) = uarpNtohl(v17);
    PayloadMetaData = uarpAssetQueryPayloadMetaData(v5, *v4, v15);
    v61 = v14;
    if (PayloadMetaData)
    {
      v19 = PayloadMetaData;
      v20 = 0;
      v21 = v14;
      v22 = PayloadMetaData;
      do
      {
        while (*v22 == -2001563365)
        {
          if (*(v22 + 4) != 8)
          {
LABEL_125:
            v3 = 15;
            goto LABEL_126;
          }

          v23 = uarpNtohll(**(v22 + 8));
          v24 = v23;
          if (inRestore == 1 && (logLevel & 2) != 0)
          {
            printf("Found Board ID 0x%llx\n", v23);
          }

          else
          {
            uarpLogInfo(3u, "Found Board ID 0x%llx\n", v23);
          }

          if (v24 != v70)
          {
            break;
          }

          v3 = 15;
          if (LOBYTE(v68[0]) != 68 || BYTE1(v68[0]) != 76 || v56 != 0xFFFF)
          {
            goto LABEL_126;
          }

          v22 = *(v22 + 16);
          v20 = 1;
          v56 = v21;
          if (!v22)
          {
            v56 = v21;
            goto LABEL_45;
          }
        }

        v22 = *(v22 + 16);
      }

      while (v22);
      if ((v20 & 1) == 0)
      {
        goto LABEL_97;
      }

LABEL_45:
      v67 = 0;
      v66 = 0;
      PayloadInfo = BackendGetPersParam(*(v5 + 1536));
      if (!PayloadInfo)
      {
        while (1)
        {
          v25 = *v19;
          if (*v19 == -2001563376)
          {
            if (v4[5])
            {
              goto LABEL_125;
            }

            v46 = uarpZalloc(*(v19 + 4));
            v4[5] = v46;
            if (!v46)
            {
              v3 = 11;
              goto LABEL_126;
            }

            v47 = *(v19 + 4);
            *(v4 + 12) = v47;
            memcpy(v46, *(v19 + 8), v47);
          }

          else if (v25 == -2001563355)
          {
            if (*(v19 + 4) != 4)
            {
              goto LABEL_125;
            }

            v43 = *(v19 + 8);
            if (!v43)
            {
              goto LABEL_125;
            }

            v44 = uarpNtohl(*v43);
            v45 = BackendTagHint(*(v5 + 1536));
            if (v45)
            {
              if (inRestore == 1)
              {
                printf("Non-Fatal error sending tag hint(0x%x) to backend: 0x%x\n", v44, v45);
              }

              else
              {
                uarpLogError(3u, "Non-Fatal error sending tag hint(0x%x) to backend: 0x%x\n", v44, v45);
              }
            }
          }

          else if (v25 == -2001563364)
          {
            v26 = *(v19 + 4);
            if (v26 >= 9)
            {
              v27 = 0;
              v28 = 0;
              v29 = 0;
              v30 = *(v19 + 8);
              v31 = 255;
              do
              {
                v32 = uarpNtohl(*v30);
                v33 = v26 - 8;
                v34 = uarpNtohl(*(v30 + 1));
                v26 = v26 - 8 - v34;
                if (v33 < v34)
                {
                  goto LABEL_95;
                }

                v35 = v34;
                v36 = (v30 + 8);
                switch(v32)
                {
                  case -2001563361:
                    if (v34 != 9)
                    {
                      goto LABEL_95;
                    }

                    v71 = *v36;
                    v72 = v30[16];
                    v73 = 0;
                    if (inRestore == 1 && (logLevel & 2) != 0)
                    {
                      printf("Found matching tags %s\n", &v71);
                    }

                    else
                    {
                      uarpLogInfo(3u, "Found matching tags %s\n", &v71);
                    }

                    v37 = *(v30 + 13);
                    v29 = uarpNtohl(*(v30 + 2));
                    v28 = uarpNtohl(v37);
                    break;
                  case -2001563362:
                    if (v34 != 4)
                    {
                      goto LABEL_95;
                    }

                    v27 = uarpNtohl(*v36);
                    break;
                  case -2001563363:
                    if (v34 != 4)
                    {
                      goto LABEL_95;
                    }

                    v31 = uarpNtohl(*v36);
                    break;
                }

                v30 = v36 + v35;
              }

              while (v26 > 8);
              if (v31 > v27)
              {
LABEL_95:
                v4 = v59;
                v5 = v60;
                goto LABEL_93;
              }

              if (v29)
              {
                if (v28)
                {
                  v39 = v67 < v31 || v67 > v27;
                  v40 = !v39;
                  if (v39)
                  {
                    v41 = v63;
                  }

                  else
                  {
                    v41 = v29;
                  }

                  v42 = v62;
                  if (v40)
                  {
                    v42 = v28;
                  }

                  v62 = v42;
                  v63 = v41;
                }

                v4 = v59;
                v5 = v60;
              }

              else
              {
                v4 = v59;
                v5 = v60;
              }
            }
          }

LABEL_93:
          v19 = *(v19 + 16);
          if (!v19)
          {
            goto LABEL_97;
          }
        }
      }

LABEL_149:
      v3 = PayloadInfo;
LABEL_126:
      v12 = v58;
      goto LABEL_127;
    }

LABEL_97:
    v14 = v61 + 1;
    v15 = v61 + 1;
    v12 = v58;
  }

  while (v61 + 1 != v57);
  if (!v63)
  {
    goto LABEL_107;
  }

  v48 = 0;
  while (*(v58 + v48) != v63)
  {
    if (v57 == ++v48)
    {
      goto LABEL_107;
    }
  }

  *(v4 + 6) = v48;
  if (!v62)
  {
    goto LABEL_107;
  }

  v49 = 0;
  while (*(v58 + v49) != v62)
  {
    if (v57 == ++v49)
    {
      goto LABEL_107;
    }
  }

  *(v4 + 7) = v49;
  if (v56 == 0xFFFF)
  {
    goto LABEL_107;
  }

  *(v4 + 8) = v56;
  uarpFree(v58);
  memset(v65, 0, sizeof(v65));
  NumberOfPayloads = uarpAssetQueryPayloadInfo(v5, *v4, *(v4 + 6), v65);
  if (NumberOfPayloads)
  {
    goto LABEL_151;
  }

  NumberOfPayloads = FWImageSetComponentSize(v4[3], 0, DWORD2(v65[1]));
  if (NumberOfPayloads)
  {
    goto LABEL_151;
  }

  *(v4 + 52) = *(v65 + 4);
  v64 = 0;
  NumberOfPayloads = uarpVersionToAceVersion(v65 + 1, &v64, 0);
  if (NumberOfPayloads)
  {
    goto LABEL_151;
  }

  NumberOfPayloads = FWImageSetFWVersion(v4[3], v64);
  if (NumberOfPayloads)
  {
    goto LABEL_151;
  }

  NumberOfPayloads = uarpAssetQueryPayloadInfo(v5, *v4, *(v4 + 7), v65);
  if (NumberOfPayloads)
  {
    goto LABEL_151;
  }

  v50 = DWORD2(v65[1]);
  *(v4 + 16) = BYTE4(v65[0]) | (BYTE8(v65[0]) << 8);
  NumberOfPayloads = FWImageSetComponentSize(v4[3], 1u, v50);
  if (NumberOfPayloads)
  {
    goto LABEL_151;
  }

  if (*(v5 + 1450) == 1)
  {
    v51 = *(v5 + 1536);
    if (!v51)
    {
      goto LABEL_152;
    }

    v68[0] = 0uLL;
    LODWORD(v71) = 0;
    LOWORD(v70) = 0;
    NumberOfPayloads = BackendGetActiveVersion(v51);
    if (!NumberOfPayloads)
    {
      NumberOfPayloads = aceVersionToUARPVersion(v71, v70, v68);
      if (!NumberOfPayloads)
      {
        if (inRestore == 1 && (logLevel & 2) != 0)
        {
          printf("validate_same_version: existing = %d.%d.%d.%d, new = %d.%d.%d.%d\n", LODWORD(v68[0]), DWORD1(v68[0]), DWORD2(v68[0]), HIDWORD(v68[0]), *(v4 + 13), *(v4 + 14), *(v4 + 15), *(v4 + 16));
        }

        else
        {
          uarpLogInfo(3u, "validate_same_version: existing = %d.%d.%d.%d, new = %d.%d.%d.%d\n", LODWORD(v68[0]), DWORD1(v68[0]), DWORD2(v68[0]), HIDWORD(v68[0]), *(v4 + 13), *(v4 + 14), *(v4 + 15), *(v4 + 16));
        }

        if (uarpVersionCompare(v68, v4 + 13))
        {
          v3 = 24;
        }

        else
        {
          v54 = uarpPlatformEndpointAssetFullyStaged(v5, *v4);
          if (!v54)
          {
            goto LABEL_148;
          }

          v3 = v54;
          if (inRestore == 1)
          {
            printf("Failed to mark asset as fully staged when verifying version: 0x%x\n", v54);
          }

          else
          {
            uarpLogError(3u, "Failed to mark asset as fully staged when verifying version: 0x%x\n", v54);
          }
        }

        goto LABEL_128;
      }
    }

    goto LABEL_151;
  }

  NumberOfPayloads = uarpAssetQueryPayloadInfo(v5, *v4, *(v4 + 8), v65);
  if (NumberOfPayloads)
  {
    goto LABEL_151;
  }

  if (*(v4 + 33))
  {
    v52 = v4[3];
    v53 = DWORD2(v65[1]);
  }

  else
  {
    if (inRestore == 1 && (logLevel & 2) != 0)
    {
      puts("Workaround: setting digest list length to 0 because we aren't doing personalization");
    }

    else
    {
      uarpLogInfo(3u, "Workaround: setting digest list length to 0 because we aren't doing personalization\n");
    }

    v52 = v4[3];
    v53 = 0;
  }

  v3 = FWImageSetComponentSize(v52, 3u, v53);
  if (v3)
  {
    goto LABEL_128;
  }

  *(v4 + 5) = *(v4 + 6);
  NumberOfPayloads = FWImageSetActiveComponent(v4[3], 0);
  if (NumberOfPayloads)
  {
    goto LABEL_151;
  }

  if (inRestore == 1 && (logLevel & 2) != 0)
  {
    puts("Setting payload index");
  }

  else
  {
    uarpLogInfo(3u, "Setting payload index\n");
  }

  NumberOfPayloads = uarpPlatformEndpointAssetSetPayloadIndex(v5, *v4, *(v4 + 5));
  if (NumberOfPayloads)
  {
    goto LABEL_151;
  }

LABEL_148:
  v55 = *MEMORY[0x29EDCA608];
}

uint64_t fAssetProcessingNotificationAck_2()
{
  if (inRestore == 1 && (logLevel & 2) != 0)
  {
    puts("fAssetProcessingNotificationAck called");
  }

  else
  {
    uarpLogInfo(3u, "fAssetProcessingNotificationAck called\n");
  }

  return 0;
}

uint64_t stage4_beginning(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 33) == 1)
  {
    if (inRestore && (logLevel & 2) != 0)
    {
      puts("Begin Manifest Request");
    }

    else
    {
      uarpLogInfo(3u, "Begin Manifest Request\n");
    }

    return USBCUpdateSendManifestRequest(a1, a2);
  }

  else
  {
    if (inRestore && (logLevel & 2) != 0)
    {
      puts("Stage image");
    }

    else
    {
      uarpLogInfo(3u, "Stage image\n");
    }

    return buildAndStageImage(a1, a2);
  }
}

uint64_t fSendMessage(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = 30;
  if (a1 && a3 && a4)
  {
    result = (*(a1 + 1416))(*(a1 + 1432), a1, a3);
    if (!result)
    {
      uarpPlatformEndpointSendMessageComplete(a1, a1 + 1248, a3);
      return 0;
    }
  }

  return result;
}

uint64_t fSuperBinaryOffered(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (a3)
    {
      v4 = result;
      result = uarpZalloc(0x48uLL);
      if (result)
      {
        v5 = result;
        v6 = *(v4 + 1520);
        if (v6)
        {
          FWImageDestroy((v6 + 24));
          uarpFree(*(v4 + 1520));
        }

        *(v4 + 1520) = v5;
        *v5 = a3;
        result = FWImageCreate((v5 + 24));
        if (!result)
        {
          *(v5 + 32) = 0;
          bzero(v7 + 8, 0xD8uLL);
          *&v7[0] = fAssetReady_1;
          *&v7[4] = fPayloadData_1;
          *&v7[5] = fPayloadDataComplete2_0;
          *(&v7[8] + 1) = fAssetReleased2_0;
          *&v7[11] = fAssetAllHeadersAndMetaDataComplete_0;
          *(&v7[9] + 1) = fAssetProcessingNotificationAck_2;
          memcpy((v4 + 1544), v7, 0xE0uLL);
          return uarpPlatformEndpointAssetAccept(v4, v4 + 1248, a3, v5, v7);
        }
      }
    }
  }

  return result;
}

uint64_t fApplyStagedAssets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3)
  {
    return BackendApplyAssets(*(a1 + 1536));
  }

  else
  {
    return 30;
  }
}

uint64_t fActiveFirmwareVersion2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a3)
  {
    result = BackendGetActiveVersion(*(a1 + 1536));
    if (!result)
    {
      return aceVersionToUARPVersion(0, 0, a3);
    }
  }

  return result;
}

uint64_t fStagedFirmwareVersion2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3)
  {
    BackendGetStagedVersion(*(a1 + 1536));
  }

  return 0;
}

uint64_t _sendMsgToAccessory(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = 30;
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        v7 = uarpPlatformEndpointRecvMessage(a2, (a2 + 1248), a3, a4);
        v4 = v7;
        if (v7)
        {
          if (inRestore == 1)
          {
            printf("Failed to recv message, status = 0x%x\n", v7);
          }

          else
          {
            uarpLogError(3u, "Failed to recv message, status = 0x%x\n", v7);
          }

          if (a4 >= 6)
          {
            v8 = *a3;
            v9 = *(a3 + 1);
            v10 = *(a3 + 2);
            v11 = *(a3 + 3);
            v12 = *(a3 + 4);
            v13 = *(a3 + 5);
            if (inRestore == 1)
            {
              printf("Failing message: 0x%02x%02x%02x%02x%02x%02x", v8, v9, v10, v11, *(a3 + 4), v13);
            }

            else
            {
              uarpLogError(3u, "Failing message: 0x%02x%02x%02x%02x%02x%02x", v8, v9, v10, v11, *(a3 + 4), v13);
            }
          }
        }
      }
    }
  }

  return v4;
}

uint64_t _USBCUpdateFinalize(int a1, void **a2)
{
  if (!a2)
  {
    return 30;
  }

  if (a2[192])
  {
    BackendDestroy(a2 + 192);
  }

  v3 = a2[190];
  if (v3)
  {
    if (v3[3])
    {
      FWImageDestroy(v3 + 3);
      v3 = a2[190];
    }

    if (v3[5])
    {
      uarpFree(v3[5]);
      v3 = a2[190];
      v3[5] = 0;
      *(v3 + 12) = 0;
    }

    uarpFree(v3);
    a2[190] = 0;
  }

  uarpFree(a2);
  OUTLINED_FUNCTION_0_3();
  if (v4 && (logLevel & 2) != 0)
  {
    puts("libUSBCUpdate: Fully torn down");
  }

  else
  {
    uarpLogInfo(3u, "libUSBCUpdate: Fully torn down\n");
  }

  return 0;
}

uint64_t buildAndStageImage(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v11 = 0;
  v4 = FWImageCreateImageBuffer(*(a2 + 24), &v12, &v11);
  if (v4)
  {
    return v4;
  }

  v5 = BackendFlash(*(a1 + 1536));
  if (v5)
  {
    v6 = v5;
    if (inRestore == 1)
    {
      printf("Error staging FW: 0x%x, abandoning asset\n", v5);
    }

    else
    {
      uarpLogError(3u, "Error staging FW: 0x%x, abandoning asset\n", v5);
    }

    uarpPlatformEndpointAssetAbandon(a1, a1 + 1248, *a2, 2560);
  }

  else
  {
    if ((BackendGetFlags(*(a1 + 1536)) & 2) != 0)
    {
      if ((BackendGetFlags(*(a1 + 1536)) & 8) != 0)
      {
        if (inRestore == 1 && (logLevel & 2) != 0)
        {
          puts("Waiting for processing notification before closing");
        }

        else
        {
          uarpLogInfo(3u, "Waiting for processing notification before closing\n");
        }

        v6 = 0;
        *(a1 + 1768) = 1;
        goto LABEL_17;
      }

      v7 = uarpPlatformEndpointAssetFullyStaged(a1, *a2);
    }

    else
    {
      v7 = stage4_beginning(a1, a2);
    }

    v6 = v7;
  }

LABEL_17:
  if (!v12)
  {
    return v6;
  }

  v8 = FWImageDestroyImageBuffer(&v12);
  if (!v8)
  {
    return v6;
  }

  v9 = v8;
  if (inRestore == 1)
  {
    printf("Failed to free FW Image buffer, stageImage status = 0x%x, DestroyImageBuffer status = 0x%x\n", v6, v8);
  }

  else
  {
    uarpLogError(3u, "Failed to free FW Image buffer, stageImage status = 0x%x, DestroyImageBuffer status = 0x%x\n", v6, v8);
  }

  return v9;
}

uint64_t fAssetReady_1(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    v3 = result;
    if (BackendGetFlags(*(result + 1536)))
    {
      v6 = *a2;

      return uarpPlatformEndpointAssetFullyStaged(v3, v6);
    }

    else
    {
      if ((BackendGetFlags(*(v3 + 1536)) & 4) != 0)
      {
        *(a2 + 33) = 1;
      }

      OUTLINED_FUNCTION_0_3();
      if (v4 && (logLevel & 2) != 0)
      {
        if (*(a2 + 33))
        {
          v7 = "True";
        }

        else
        {
          v7 = "False";
        }

        printf("Require Personalization = %s\n", v7);
      }

      else
      {
        if (*(a2 + 33))
        {
          v5 = "True";
        }

        else
        {
          v5 = "False";
        }

        uarpLogInfo(3u, "Require Personalization = %s\n", v5);
      }

      result = uarpPlatformEndpointPayloadRequestAllHeadersAndMetaData(v3, *a2);
      if (result)
      {
        v8 = *a2;

        return uarpPlatformEndpointAssetAbandon(v3, v3 + 1248, v8, 2304);
      }
    }
  }

  return result;
}

void fAssetReleased2_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && !FWImageDestroy((a3 + 24)))
  {
    OUTLINED_FUNCTION_0_3();
    if (v4 && (logLevel & 2) != 0)
    {

      puts("fAssetReleased2 called");
    }

    else
    {

      uarpLogInfo(3u, "fAssetReleased2 called\n");
    }
  }
}

uint64_t IM4MHeadersAndMetadataComplete(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  result = uarpPlatformEndpointAssetQueryNumberOfPayloads(a1, a3, &v8);
  if (!result && v8 == 1)
  {
    v6 = 0u;
    v7 = 0u;
    result = uarpAssetQueryPayloadInfo(a1, a3, 0, &v6);
    if (!result)
    {
      FWImageSetComponentSize(*(a1[190] + 24), 2u, DWORD2(v7));
      FWImageSetActiveComponent(*(a1[190] + 24), 2);
      return uarpPlatformEndpointAssetSetPayloadIndex(a1, a1[191], 0);
    }
  }

  return result;
}

void USBCUpdateQueryLogicalUnitNumber_cold_1()
{
  OUTLINED_FUNCTION_0_3();
  if (v1)
  {
    printf("Error creating backend: 0x%x\n", v0);
  }

  else
  {
    uarpLogError(3u, "Error creating backend: 0x%x\n", v0);
  }
}

void USBCUpdateQueryLogicalUnitNumber_cold_2()
{
  OUTLINED_FUNCTION_0_3();
  if (v1)
  {
    printf("Error querying RID: 0x%x\n", v0);
  }

  else
  {
    uarpLogError(3u, "Error querying RID: 0x%x\n", v0);
  }
}

void USBCUpdateQueryLogicalUnitNumber_cold_3()
{
  OUTLINED_FUNCTION_0_3();
  if (v1)
  {
    printf("Unexpected RID size: 0x%x\n", v0);
  }

  else
  {
    uarpLogError(3u, "Unexpected RID size: 0x%x\n", v0);
  }
}

void USBCUpdateQueryLogicalUnitNumber_cold_4()
{
  OUTLINED_FUNCTION_0_3();
  if (v1)
  {
    printf("Error getting active version: 0x%x\n", v0);
  }

  else
  {
    uarpLogError(3u, "Error getting active version: 0x%x\n", v0);
  }
}

void USBCUpdateQueryLogicalUnitNumber_cold_5()
{
  OUTLINED_FUNCTION_0_3();
  if (v1)
  {
    printf("Error converting to UARP version: 0x%x\n", v0);
  }

  else
  {
    uarpLogError(3u, "Error converting to UARP version: 0x%x\n", v0);
  }
}

void fAssetAllHeadersAndMetaDataComplete_cold_1(unsigned int a1)
{
  v2 = inRestore;
  v3 = uarpStatusCodeToString(a1);
  if (v2 == 1)
  {
    printf("ERROR: failed in fAssetAllHeadersAndMetaDataComplete, status = 0x%x (%s)\n", a1, v3);
  }

  else
  {
    uarpLogError(3u, "ERROR: failed in fAssetAllHeadersAndMetaDataComplete, status = 0x%x (%s)\n", a1, v3);
  }
}

uint64_t CRCByte(unsigned int a1, uint64_t a2)
{
  for (i = 0; i != 8; ++i)
  {
    v3 = (a1 >> i) & 1;
    v4 = v3 ^ (a2 >> 31) | (2 * a2);
    if (a2 >> 31 == v3)
    {
      a2 = v4;
    }

    else
    {
      a2 = v4 ^ 0x4C11DB6;
    }
  }

  return a2;
}

uint64_t CRCBuffer(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      for (j = 0; j != 8; ++j)
      {
        v5 = (*(a1 + i) >> j) & 1;
        v6 = v5 ^ (a3 >> 31) | (2 * a3);
        if (a3 >> 31 == v5)
        {
          a3 = v6;
        }

        else
        {
          a3 = v6 ^ 0x4C11DB6;
        }
      }
    }
  }

  return a3;
}

uint64_t parse_serial_string(char *a1, const char *a2, unsigned __int8 *a3, uint64_t a4, uint64_t *a5)
{
  v8 = strstr(a1, a2);
  if (!v8)
  {
    if (inRestore != 1)
    {
      uarpLogError(3u, "Cannot find start_of_needle\n");
      return 30;
    }

    v9 = "Cannot find start_of_needle";
LABEL_7:
    puts(v9);
    return 30;
  }

  v10 = strchr(v8, 58);
  if (!v10)
  {
    if (inRestore != 1)
    {
      uarpLogError(3u, "Cannot find start of buffer\n");
      return 30;
    }

    v9 = "Cannot find start of buffer";
    goto LABEL_7;
  }

  v11 = v10;
  v12 = v10 + 1;
  v13 = strchr(v10 + 1, 32);
  if (v13)
  {
    v14 = v13 - v12;
    if (((v13 - v12) & 1) == 0)
    {
LABEL_11:
      v15 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v14 = strlen(v12);
    if ((v14 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v19 = 0;
  if (sscanf(v12, "%1hhx", &v19) != 1)
  {
    if (inRestore == 1)
    {
      puts("Reading of start_of_buffer failed");
    }

    else
    {
      uarpLogError(3u, "Reading of start_of_buffer failed\n");
    }
  }

  if (sscanf(v12, "%1hhx", &v19) != 1)
  {
    return 54;
  }

  *a3++ = v19;
  --a4;
  v12 = v11 + 2;
  --v14;
  v15 = 1;
LABEL_21:
  if (!v14)
  {
LABEL_36:
    result = 0;
    *a5 = v15;
    return result;
  }

  while (1)
  {
    v18 = 0;
    if (sscanf(v12, "%2hhx", &v18) != 1)
    {
      v17 = *a3;
      if (inRestore == 1)
      {
        printf("Reading bytes failed, nibbles_in_field=0x%zX, buffer=%p, *buffer=0x%hhX, buffer_size=0x%zX, count=0x%zX, start_of_buf=%s\n", v14, a3, v17, a4, v15, v12);
      }

      else
      {
        uarpLogError(3u, "Reading bytes failed, nibbles_in_field=0x%zX, buffer=%p, *buffer=0x%hhX, buffer_size=0x%zX, count=0x%zX, start_of_buf=%s\n", v14, a3, v17, a4, v15, v12);
      }
    }

    if (sscanf(v12, "%2hhx", &v18) != 1)
    {
      return 54;
    }

    if (!a3)
    {
      if (inRestore == 1)
      {
        printf("Buffer size = 0! ");
      }

      else
      {
        uarpLogError(3u, "Buffer size = 0! ");
      }

      if (inRestore == 1)
      {
        printf("nibbles_in_field=0x%zX, buffer=%p, *buffer=0x%hhX, buffer_size=0x%zX, count=0x%zX, start_of_buf=%s\n", v14, 0, 0, a4, v15, v12);
      }

      else
      {
        uarpLogError(3u, "nibbles_in_field=0x%zX, buffer=%p, *buffer=0x%hhX, buffer_size=0x%zX, count=0x%zX, start_of_buf=%s\n", v14, 0, 0, a4, v15, v12);
      }
    }

    if (!a4)
    {
      return 39;
    }

    *a3++ = v18;
    --a4;
    ++v15;
    v12 += 2;
    v14 -= 2;
    if (!v14)
    {
      goto LABEL_36;
    }
  }
}

uint64_t apBoardForAceBoard(uint64_t a1)
{
  if (a1 == 90190080)
  {
    v1 = &apBoardForAceBoard_lookup;
    return *(v1 + 2);
  }

  else
  {
    v2 = -1;
    v1 = &apBoardForAceBoard_lookup;
    while (v2 != 6)
    {
      v3 = v1[2];
      v1 += 2;
      ++v2;
      if (v3 == a1)
      {
        if (v2 <= 6)
        {
          return *(v1 + 2);
        }

        return BYTE3(a1);
      }
    }

    return BYTE3(a1);
  }
}

uint64_t apChipForAceBoard(uint64_t a1)
{
  if (a1 == 1612777216)
  {
    v1 = 0;
  }

  else
  {
    v2 = 0;
    v3 = &qword_299E7E9B0;
    do
    {
      v4 = v2;
      if (v2 == 3)
      {
        break;
      }

      v5 = *v3;
      v3 += 2;
      ++v2;
    }

    while (v5 != a1);
    v1 = v4 > 2;
  }

  if (v1)
  {
    return (a1 >> 8);
  }

  else
  {
    return 24609;
  }
}

void UarpRestoreLayer3LogError_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 136315138;
  v4 = a1;
  _os_log_error_impl(&dword_299E58000, a2, OS_LOG_TYPE_ERROR, "%s", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

void UarpRestoreLayer3LogDebug_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 136315138;
  v4 = a1;
  _os_log_debug_impl(&dword_299E58000, a2, OS_LOG_TYPE_DEBUG, "%s", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

void UarpRestoreLayer3LogFault_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 136315138;
  v4 = a1;
  _os_log_fault_impl(&dword_299E58000, a2, OS_LOG_TYPE_FAULT, "%s", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

void uarpLogError_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0(&dword_299E58000, a1, a3, "%s\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x29EDCA608];
}

void uarpLogDebug_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 136315138;
  v3 = &uarpLogDebug_logBuffer;
  _os_log_debug_impl(&dword_299E58000, log, OS_LOG_TYPE_DEBUG, "%s\n", &v2, 0xCu);
  v1 = *MEMORY[0x29EDCA608];
}

void uarpLogFault_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0(&dword_299E58000, a1, a3, "%s\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x29EDCA608];
}

void uarpPlatformDarwinLogError_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0(&dword_299E58000, a1, a3, "%s\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x29EDCA608];
}

void uarpPlatformDarwinLogDebug_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 136315138;
  v3 = &uarpPlatformDarwinLogDebug_logBuffer;
  _os_log_debug_impl(&dword_299E58000, log, OS_LOG_TYPE_DEBUG, "%s\n", &v2, 0xCu);
  v1 = *MEMORY[0x29EDCA608];
}

void uarpPlatformDarwinLogFault_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 136315138;
  v3 = &uarpPlatformDarwinLogFault_logBuffer;
  _os_log_fault_impl(&dword_299E58000, log, OS_LOG_TYPE_FAULT, "%s\n", &v2, 0xCu);
  v1 = *MEMORY[0x29EDCA608];
}

uint64_t personalizationBackendCreate(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 30;
  }

  v6 = uarpZalloc(0x40uLL);
  if (!v6)
  {
    return 11;
  }

  *v6 = *a2;
  *(v6 + 4) = *(a2 + 8);
  *(v6 + 2) = *(a2 + 16);
  v7.i32[0] = *(a2 + 40);
  v8 = vmovl_u8(v7).u64[0];
  v9 = vext_s8(v8, vuzp1_s16(v8, vdup_lane_s16(v8, 1)), 6uLL);
  *(v6 + 10) = vuzp1_s8(v9, v9).u32[0];
  *(v6 + 11) = *(a2 + 44);
  v10 = *(a2 + 32);
  if (v10)
  {
    if (v10 <= 0xF)
    {
      uarpFree(v6);
      return 30;
    }

    *(v6 + 24) = **(a2 + 24);
  }

  else
  {
    *(v6 + 3) = 0;
    *(v6 + 4) = 0;
  }

  v11 = 0;
  *(v6 + 7) = a3;
  *a1 = v6;
  return v11;
}

uint64_t personalizationBackendGetPersParam(_DWORD *__src, int a2, void *__dst, unsigned int a4, unsigned int *a5)
{
  result = 30;
  if (__src && __dst)
  {
    result = 26;
    v10 = 8;
    switch(a2)
    {
      case 0:
        __src += 10;
        goto LABEL_11;
      case 1:
        __src += 2;
        v10 = 2;
        goto LABEL_12;
      case 2:
        goto LABEL_12;
      case 3:
        __src += 4;
        goto LABEL_12;
      case 4:
        __src = (__src + 41);
        goto LABEL_11;
      case 5:
        __src = (__src + 43);
        goto LABEL_11;
      case 6:
        __src += 6;
        v10 = 16;
        goto LABEL_12;
      case 8:
        __src = (__src + 42);
LABEL_11:
        v10 = 1;
        goto LABEL_12;
      case 10:
        v11 = __src[11];
        __src += 11;
        if (!v11)
        {
          if (inRestore == 1 && (logLevel & 2) != 0)
          {
            puts("Overriding LUN to 1 since it was 0 or unspecified");
          }

          else
          {
            uarpLogInfo(3u, "Overriding LUN to 1 since it was 0 or unspecified\n");
          }

          *__src = 1;
        }

        v10 = 4;
LABEL_12:
        if (v10 > a4)
        {
          result = 30;
        }

        else
        {
          memcpy(__dst, __src, v10);
          result = 0;
          if (a5)
          {
            *a5 = v10;
          }
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t personalizationBackendFlash(uint64_t a1, uint64_t a2, unsigned int a3, _OWORD *a4)
{
  if (inRestore == 1 && (logLevel & 2) != 0)
  {
    puts("Staging FW in personalization backend");
  }

  else
  {
    uarpLogInfo(3u, "Staging FW in personalization backend\n");
  }

  v8 = *(a1 + 56);
  v9 = *(v8 + 1520);
  v17 = 0;
  result = DynamicAssetCreate(&v17);
  if (!result)
  {
    bzero(v13, 0xE0uLL);
    uarpZero(v13, 0xE0uLL);
    v14 = DynamicAssetUARPGetBytes;
    v15 = DynamicAssetUARPSetBytes;
    v16 = fAssetProcessingNotification2_1;
    v12 = 1297238342;
    uarpPlatformEndpointPrepareDynamicAsset(v8, v8 + 1248, v17, &v12, v13);
    result = uarpPersonalizationRequestAssetInitialize(v8, v17, 1);
    if (!result)
    {
      v11 = 0;
      result = uarpPlatformAssetQueryAssetID(*v9, &v11);
      if (!result)
      {
        result = uarpPersonalizationRequestAddRemoteAssetID(v8, v17, v11);
        if (!result)
        {
          result = UARPSuperBinaryPreparePayload(v8, v17, 0, &v12, a4);
          if (!result)
          {
            result = UARPSuperBinaryAddPayloadMetaData(v8, v17, 0, 0xCCD28111, 4u, &v12);
            if (!result)
            {
              result = UARPSuperBinaryAddPayloadDataLarge(v8, v17, 0, a2, a3);
              if (!result)
              {
                result = UARPSuperBinaryFinalizeHeader(v8, v17);
                if (!result)
                {
                  if (inRestore == 1 && (logLevel & 2) != 0)
                  {
                    puts("Offering FIRM to controller");
                  }

                  else
                  {
                    uarpLogInfo(3u, "Offering FIRM to controller\n");
                  }

                  result = uarpPlatformEndpointOfferAsset(v8, v8 + 1248, v17);
                  if (!result)
                  {
                    *(a1 + 48) = 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t personalizationBackendTagHint(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 30;
  }

  v4 = *(a1 + 44);
  if (v4)
  {
    if (v4 != a2)
    {
      if (inRestore == 1)
      {
        printf("Warning: Frontend expects tag to be %d, but Backend is using tag %d\n", a2, v4);
      }

      else
      {
        uarpLogError(3u, "Warning: Frontend expects tag to be %d, but Backend is using tag %d\n", a2, v4);
      }
    }

    return 0;
  }

  else
  {
    if (inRestore == 1 && (logLevel & 2) != 0)
    {
      printf("Switching to using LUN %d based on hint\n", a2);
    }

    else
    {
      uarpLogInfo(3u, "Switching to using LUN %d based on hint\n", a2);
    }

    result = 0;
    *(a1 + 44) = a2;
  }

  return result;
}