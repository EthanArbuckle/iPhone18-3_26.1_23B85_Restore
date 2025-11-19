uint64_t AWDIDSWiProxDidConnectToPeerReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v31 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) == 3)
      {
        v25 = 0;
        v26 = 0;
        v15 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v32 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v32 & 0x7F) << v25;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v18 = v26++ > 8;
          if (v18)
          {
            v19 = 0;
            v20 = &OBJC_IVAR___AWDIDSWiProxDidConnectToPeer__resultCode;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDIDSWiProxDidConnectToPeer__resultCode;
        goto LABEL_52;
      }

      if (v12 == 2)
      {
        break;
      }

      if (v12 == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 32) |= 4u;
        while (1)
        {
          v34 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v34 & 0x7F) << v13;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v18 = v14++ > 8;
          if (v18)
          {
            v19 = 0;
            v20 = &OBJC_IVAR___AWDIDSWiProxDidConnectToPeer__timestamp;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDIDSWiProxDidConnectToPeer__timestamp;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = 0;
    v22 = 0;
    v15 = 0;
    *(a1 + 32) |= 1u;
    while (1)
    {
      v33 = 0;
      v23 = [a2 position] + 1;
      if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v33 & 0x7F) << v21;
      if ((v33 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v18 = v22++ > 8;
      if (v18)
      {
        v19 = 0;
        v20 = &OBJC_IVAR___AWDIDSWiProxDidConnectToPeer__duration;
        goto LABEL_55;
      }
    }

    v20 = &OBJC_IVAR___AWDIDSWiProxDidConnectToPeer__duration;
LABEL_52:
    if ([a2 hasError])
    {
      v19 = 0;
    }

    else
    {
      v19 = v15;
    }

LABEL_55:
    *(a1 + *v20) = v19;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSWiProxDidDisconnectFromPeerReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v31 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) == 3)
      {
        v25 = 0;
        v26 = 0;
        v15 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v32 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v32 & 0x7F) << v25;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v18 = v26++ > 8;
          if (v18)
          {
            v19 = 0;
            v20 = &OBJC_IVAR___AWDIDSWiProxDidDisconnectFromPeer__resultCode;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDIDSWiProxDidDisconnectFromPeer__resultCode;
        goto LABEL_52;
      }

      if (v12 == 2)
      {
        break;
      }

      if (v12 == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 32) |= 4u;
        while (1)
        {
          v34 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v34 & 0x7F) << v13;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v18 = v14++ > 8;
          if (v18)
          {
            v19 = 0;
            v20 = &OBJC_IVAR___AWDIDSWiProxDidDisconnectFromPeer__timestamp;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDIDSWiProxDidDisconnectFromPeer__timestamp;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = 0;
    v22 = 0;
    v15 = 0;
    *(a1 + 32) |= 1u;
    while (1)
    {
      v33 = 0;
      v23 = [a2 position] + 1;
      if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v33 & 0x7F) << v21;
      if ((v33 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v18 = v22++ > 8;
      if (v18)
      {
        v19 = 0;
        v20 = &OBJC_IVAR___AWDIDSWiProxDidDisconnectFromPeer__duration;
        goto LABEL_55;
      }
    }

    v20 = &OBJC_IVAR___AWDIDSWiProxDidDisconnectFromPeer__duration;
LABEL_52:
    if ([a2 hasError])
    {
      v19 = 0;
    }

    else
    {
      v19 = v15;
    }

LABEL_55:
    *(a1 + *v20) = v19;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSWiProxDidSendDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v11 >> 3) == 2)
      {
        break;
      }

      if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v28 = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v14 |= (v28 & 0x7F) << v12;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v17 = v13++ > 8;
          if (v17)
          {
            v18 = 0;
            v19 = &OBJC_IVAR___AWDIDSWiProxDidSendData__timestamp;
            goto LABEL_44;
          }
        }

        v19 = &OBJC_IVAR___AWDIDSWiProxDidSendData__timestamp;
LABEL_41:
        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v14;
        }

LABEL_44:
        *(a1 + *v19) = v18;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v24 = [a2 position];
      if (v24 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v20 = 0;
    v21 = 0;
    v14 = 0;
    *(a1 + 24) |= 1u;
    while (1)
    {
      v27 = 0;
      v22 = [a2 position] + 1;
      if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v14 |= (v27 & 0x7F) << v20;
      if ((v27 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v17 = v21++ > 8;
      if (v17)
      {
        v18 = 0;
        v19 = &OBJC_IVAR___AWDIDSWiProxDidSendData__resultCode;
        goto LABEL_44;
      }
    }

    v19 = &OBJC_IVAR___AWDIDSWiProxDidSendData__resultCode;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIMessageAttachmentDownloadReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v89 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v89 & 0x7F) << v5;
        if ((v89 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          String = PBReaderReadString();

          v13 = String;
          v14 = 64;
          goto LABEL_113;
        case 2u:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 116) |= 1u;
          while (1)
          {
            v90 = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v90 & 0x7F) << v58;
            if ((v90 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v10 = v59++ >= 9;
            if (v10)
            {
              v63 = 0;
              goto LABEL_178;
            }
          }

          if ([a2 hasError])
          {
            v63 = 0;
          }

          else
          {
            v63 = v60;
          }

LABEL_178:
          *(a1 + 8) = v63;
          goto LABEL_196;
        case 3u:
          v42 = 0;
          v43 = 0;
          v44 = 0;
          *(a1 + 116) |= 0x40u;
          while (1)
          {
            v97 = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v44 |= (v97 & 0x7F) << v42;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v10 = v43++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_166;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v44;
          }

LABEL_166:
          v87 = 56;
          goto LABEL_195;
        case 4u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 116) |= 0x200u;
          while (1)
          {
            v102 = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v50 |= (v102 & 0x7F) << v48;
            if ((v102 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v10 = v49++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_170;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v50;
          }

LABEL_170:
          v87 = 76;
          goto LABEL_195;
        case 5u:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 116) |= 0x1000u;
          while (1)
          {
            v101 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v101 & 0x7F) << v27;
            if ((v101 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v10 = v28++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_154;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v29;
          }

LABEL_154:
          v87 = 112;
          goto LABEL_195;
        case 6u:
          v65 = 0;
          v66 = 0;
          v67 = 0;
          *(a1 + 116) |= 0x80u;
          while (1)
          {
            v96 = 0;
            v68 = [a2 position] + 1;
            if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v67 |= (v96 & 0x7F) << v65;
            if ((v96 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            v10 = v66++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_182;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v67;
          }

LABEL_182:
          v87 = 60;
          goto LABEL_195;
        case 7u:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          *(a1 + 116) |= 8u;
          while (1)
          {
            v100 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v100 & 0x7F) << v71;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v10 = v72++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_186;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v73;
          }

LABEL_186:
          v87 = 24;
          goto LABEL_195;
        case 8u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          *(a1 + 116) |= 0x100u;
          while (1)
          {
            v95 = 0;
            v56 = [a2 position] + 1;
            if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v55 |= (v95 & 0x7F) << v53;
            if ((v95 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v10 = v54++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_174;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v55;
          }

LABEL_174:
          v87 = 72;
          goto LABEL_195;
        case 9u:
          v82 = 0;
          v83 = 0;
          v84 = 0;
          *(a1 + 116) |= 4u;
          while (1)
          {
            v99 = 0;
            v85 = [a2 position] + 1;
            if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v84 |= (v99 & 0x7F) << v82;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v82 += 7;
            v10 = v83++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_194;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v84;
          }

LABEL_194:
          v87 = 20;
          goto LABEL_195;
        case 0xAu:
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 116) |= 2u;
          while (1)
          {
            v98 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v98 & 0x7F) << v37;
            if ((v98 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v10 = v38++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_162;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v39;
          }

LABEL_162:
          v87 = 16;
          goto LABEL_195;
        case 0xBu:
          v77 = 0;
          v78 = 0;
          v79 = 0;
          *(a1 + 116) |= 0x10u;
          while (1)
          {
            v94 = 0;
            v80 = [a2 position] + 1;
            if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v79 |= (v94 & 0x7F) << v77;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v77 += 7;
            v10 = v78++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_190;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v79;
          }

LABEL_190:
          v87 = 28;
          goto LABEL_195;
        case 0xCu:
          v26 = PBReaderReadString();

          v13 = v26;
          v14 = 32;
          goto LABEL_113;
        case 0xDu:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 116) |= 0x400u;
          while (1)
          {
            v93 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v93 & 0x7F) << v32;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v10 = v33++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_158;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v34;
          }

LABEL_158:
          v87 = 80;
          goto LABEL_195;
        case 0xEu:
          v70 = PBReaderReadString();

          v13 = v70;
          v14 = 88;
          goto LABEL_113;
        case 0xFu:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 116) |= 0x800u;
          while (1)
          {
            v92 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v92 & 0x7F) << v21;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v10 = v22++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_150;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_150:
          v87 = 96;
          goto LABEL_195;
        case 0x10u:
          v47 = PBReaderReadString();

          v13 = v47;
          v14 = 104;
          goto LABEL_113;
        case 0x11u:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 116) |= 0x20u;
          break;
        case 0x12u:
          v64 = PBReaderReadString();

          v13 = v64;
          v14 = 48;
LABEL_113:
          *(a1 + v14) = v13;
          goto LABEL_196;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_196;
      }

      while (1)
      {
        v91 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v91 & 0x7F) << v15;
        if ((v91 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v10 = v16++ >= 9;
        if (v10)
        {
          v20 = 0;
          goto LABEL_146;
        }
      }

      v20 = [a2 hasError] ? 0 : v17;
LABEL_146:
      v87 = 40;
LABEL_195:
      *(a1 + v87) = v20;
LABEL_196:
      v88 = [a2 position];
    }

    while (v88 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIMessageAttachmentUploadReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v99 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v99 & 0x7F) << v5;
        if ((v99 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          String = PBReaderReadString();

          v13 = String;
          v14 = 64;
          goto LABEL_160;
        case 2u:
          v62 = 0;
          v63 = 0;
          v64 = 0;
          *(a1 + 124) |= 1u;
          while (1)
          {
            v99 = 0;
            v65 = [a2 position] + 1;
            if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v64 |= (v99 & 0x7F) << v62;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v62 += 7;
            v10 = v63++ >= 9;
            if (v10)
            {
              v67 = 0;
              goto LABEL_200;
            }
          }

          if ([a2 hasError])
          {
            v67 = 0;
          }

          else
          {
            v67 = v64;
          }

LABEL_200:
          *(a1 + 8) = v67;
          goto LABEL_222;
        case 3u:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 124) |= 0x20u;
          while (1)
          {
            v99 = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v99 & 0x7F) << v46;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v10 = v47++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_188;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v48;
          }

LABEL_188:
          v97 = 56;
          goto LABEL_221;
        case 4u:
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 124) |= 0x200u;
          while (1)
          {
            v99 = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v99 & 0x7F) << v52;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v10 = v53++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_192;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v54;
          }

LABEL_192:
          v97 = 80;
          goto LABEL_221;
        case 5u:
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 124) |= 0x2000u;
          while (1)
          {
            v99 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v99 & 0x7F) << v31;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v10 = v32++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_176;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v33;
          }

LABEL_176:
          v97 = 116;
          goto LABEL_221;
        case 6u:
          v70 = 0;
          v71 = 0;
          v72 = 0;
          *(a1 + 124) |= 0x40u;
          while (1)
          {
            v99 = 0;
            v73 = [a2 position] + 1;
            if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v72 |= (v99 & 0x7F) << v70;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v10 = v71++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_204;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v72;
          }

LABEL_204:
          v97 = 60;
          goto LABEL_221;
        case 7u:
          v76 = 0;
          v77 = 0;
          v78 = 0;
          *(a1 + 124) |= 0x4000u;
          while (1)
          {
            v99 = 0;
            v79 = [a2 position] + 1;
            if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v78 |= (v99 & 0x7F) << v76;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v10 = v77++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_208;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v78;
          }

LABEL_208:
          v97 = 120;
          goto LABEL_221;
        case 8u:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          *(a1 + 124) |= 0x100u;
          while (1)
          {
            v99 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v99 & 0x7F) << v57;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v10 = v58++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_196;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v59;
          }

LABEL_196:
          v97 = 76;
          goto LABEL_221;
        case 9u:
          v91 = 0;
          v92 = 0;
          v93 = 0;
          *(a1 + 124) |= 4u;
          while (1)
          {
            v99 = 0;
            v94 = [a2 position] + 1;
            if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v93 |= (v99 & 0x7F) << v91;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v91 += 7;
            v10 = v92++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_220;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v93;
          }

LABEL_220:
          v97 = 20;
          goto LABEL_221;
        case 0xAu:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 124) |= 2u;
          while (1)
          {
            v99 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v99 & 0x7F) << v41;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v10 = v42++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_184;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v43;
          }

LABEL_184:
          v97 = 16;
          goto LABEL_221;
        case 0xBu:
          v86 = 0;
          v87 = 0;
          v88 = 0;
          *(a1 + 124) |= 0x1000u;
          while (1)
          {
            v99 = 0;
            v89 = [a2 position] + 1;
            if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v88 |= (v99 & 0x7F) << v86;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v86 += 7;
            v10 = v87++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_216;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v88;
          }

LABEL_216:
          v97 = 112;
          goto LABEL_221;
        case 0xCu:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 124) |= 0x80u;
          while (1)
          {
            v99 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v99 & 0x7F) << v26;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v10 = v27++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_172;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v28;
          }

LABEL_172:
          v97 = 72;
          goto LABEL_221;
        case 0xDu:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 124) |= 8u;
          while (1)
          {
            v99 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v99 & 0x7F) << v36;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v10 = v37++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_180;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v38;
          }

LABEL_180:
          v97 = 24;
          goto LABEL_221;
        case 0xEu:
          v75 = PBReaderReadString();

          v13 = v75;
          v14 = 32;
          goto LABEL_160;
        case 0xFu:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 124) |= 0x400u;
          while (1)
          {
            v99 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v99 & 0x7F) << v21;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v10 = v22++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_168;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_168:
          v97 = 84;
          goto LABEL_221;
        case 0x10u:
          v51 = PBReaderReadString();

          v13 = v51;
          v14 = 88;
          goto LABEL_160;
        case 0x11u:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 124) |= 0x800u;
          while (1)
          {
            v99 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v99 & 0x7F) << v15;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v10 = v16++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_164;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v17;
          }

LABEL_164:
          v97 = 96;
          goto LABEL_221;
        case 0x12u:
          v68 = PBReaderReadString();

          v13 = v68;
          v14 = 104;
          goto LABEL_160;
        case 0x13u:
          v81 = 0;
          v82 = 0;
          v83 = 0;
          *(a1 + 124) |= 0x10u;
          break;
        case 0x14u:
          v96 = PBReaderReadString();

          v13 = v96;
          v14 = 48;
LABEL_160:
          *(a1 + v14) = v13;
          goto LABEL_222;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_222;
      }

      while (1)
      {
        v99 = 0;
        v84 = [a2 position] + 1;
        if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v83 |= (v99 & 0x7F) << v81;
        if ((v99 & 0x80) == 0)
        {
          break;
        }

        v81 += 7;
        v10 = v82++ >= 9;
        if (v10)
        {
          v20 = 0;
          goto LABEL_212;
        }
      }

      v20 = [a2 hasError] ? 0 : v83;
LABEL_212:
      v97 = 40;
LABEL_221:
      *(a1 + v97) = v20;
LABEL_222:
      v98 = [a2 position];
    }

    while (v98 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIMessageCloudKitAttachmentDownloadFailedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v48 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v48 & 0x7F) << v5;
        if ((v48 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 4)
      {
        if (v12 > 6)
        {
          if (v12 == 7)
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 64) |= 4u;
            while (1)
            {
              v53 = 0;
              v43 = [a2 position] + 1;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v42 |= (v53 & 0x7F) << v40;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v10 = v41++ >= 9;
              if (v10)
              {
                v21 = 0;
                goto LABEL_90;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v42;
            }

LABEL_90:
            v46 = 28;
          }

          else
          {
            if (v12 != 8)
            {
LABEL_77:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_100;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              v52 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v52 & 0x7F) << v23;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v10 = v24++ >= 9;
              if (v10)
              {
                v21 = 0;
                goto LABEL_98;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v25;
            }

LABEL_98:
            v46 = 24;
          }
        }

        else if (v12 == 5)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            v51 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v51 & 0x7F) << v34;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
            if (v10)
            {
              v21 = 0;
              goto LABEL_86;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v36;
          }

LABEL_86:
          v46 = 32;
        }

        else
        {
          if (v12 != 6)
          {
            goto LABEL_77;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            v50 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v50 & 0x7F) << v16;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v10 = v17++ >= 9;
            if (v10)
            {
              v21 = 0;
              goto LABEL_94;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v18;
          }

LABEL_94:
          v46 = 48;
        }

        *(a1 + v46) = v21;
      }

      else
      {
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            String = PBReaderReadString();

            v14 = String;
            v15 = 16;
          }

          else
          {
            if (v12 != 4)
            {
              goto LABEL_77;
            }

            v22 = PBReaderReadString();

            v14 = v22;
            v15 = 40;
          }
        }

        else
        {
          if (v12 == 1)
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              v49 = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v49 & 0x7F) << v28;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v10 = v29++ >= 9;
              if (v10)
              {
                v33 = 0;
                goto LABEL_82;
              }
            }

            if ([a2 hasError])
            {
              v33 = 0;
            }

            else
            {
              v33 = v30;
            }

LABEL_82:
            *(a1 + 8) = v33;
            goto LABEL_100;
          }

          if (v12 != 2)
          {
            goto LABEL_77;
          }

          v13 = PBReaderReadString();

          v14 = v13;
          v15 = 56;
        }

        *(a1 + v15) = v14;
      }

LABEL_100:
      v47 = [a2 position];
    }

    while (v47 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIMessageCloudKitSyncFailedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 3)
      {
        switch(v12)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              v44 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v44 & 0x7F) << v23;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v10 = v24++ >= 9;
              if (v10)
              {
                v28 = 0;
                goto LABEL_71;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v25;
            }

LABEL_71:
            *(a1 + 8) = v28;
            goto LABEL_85;
          case 2:
            String = PBReaderReadString();

            v14 = String;
            v15 = 32;
            break;
          case 3:
            v16 = PBReaderReadString();

            v14 = v16;
            v15 = 48;
            break;
          default:
            goto LABEL_46;
        }
      }

      else
      {
        if (v12 > 5)
        {
          if (v12 == 6)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            *(a1 + 56) |= 4u;
            while (1)
            {
              v46 = 0;
              v38 = [a2 position] + 1;
              if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v37 |= (v46 & 0x7F) << v35;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v10 = v36++ >= 9;
              if (v10)
              {
                v22 = 0;
                goto LABEL_79;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v37;
            }

LABEL_79:
            v41 = 20;
          }

          else
          {
            if (v12 != 7)
            {
LABEL_46:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_85;
            }

            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 56) |= 2u;
            while (1)
            {
              v45 = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v45 & 0x7F) << v17;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v10 = v18++ >= 9;
              if (v10)
              {
                v22 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v19;
            }

LABEL_83:
            v41 = 16;
          }

          goto LABEL_84;
        }

        if (v12 == 4)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 56) |= 8u;
          while (1)
          {
            v47 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v47 & 0x7F) << v30;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v10 = v31++ >= 9;
            if (v10)
            {
              v22 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v32;
          }

LABEL_75:
          v41 = 40;
LABEL_84:
          *(a1 + v41) = v22;
          goto LABEL_85;
        }

        if (v12 != 5)
        {
          goto LABEL_46;
        }

        v13 = PBReaderReadString();

        v14 = v13;
        v15 = 24;
      }

      *(a1 + v15) = v14;
LABEL_85:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIMessageCloudKitValidatePurgeableAttachmentReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v57 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v57 & 0x7F) << v5;
        if ((v57 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 4)
      {
        if (v12 <= 2)
        {
          if (v12 == 1)
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              v58 = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v58 & 0x7F) << v28;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v10 = v29++ >= 9;
              if (v10)
              {
                v33 = 0;
                goto LABEL_104;
              }
            }

            if ([a2 hasError])
            {
              v33 = 0;
            }

            else
            {
              v33 = v30;
            }

LABEL_104:
            *(a1 + 8) = v33;
            goto LABEL_126;
          }

          if (v12 != 2)
          {
            goto LABEL_95;
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 56) |= 0x20u;
          while (1)
          {
            v63 = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v63 & 0x7F) << v19;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_100;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v21;
          }

LABEL_100:
          v55 = 40;
          goto LABEL_125;
        }

        if (v12 == 3)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 56) |= 2u;
          while (1)
          {
            v62 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v62 & 0x7F) << v34;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_108;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v36;
          }

LABEL_108:
          v55 = 16;
          goto LABEL_125;
        }

        if (v12 != 4)
        {
          goto LABEL_95;
        }

        String = PBReaderReadString();

        v25 = String;
        v26 = 32;
      }

      else
      {
        if (v12 > 6)
        {
          switch(v12)
          {
            case 7:
              v39 = 0;
              v40 = 0;
              v41 = 0;
              *(a1 + 56) |= 0x40u;
              while (1)
              {
                v60 = 0;
                v42 = [a2 position] + 1;
                if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v41 |= (v60 & 0x7F) << v39;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v39 += 7;
                v10 = v40++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_112;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v41;
              }

LABEL_112:
              v55 = 44;
              break;
            case 8:
              v49 = 0;
              v50 = 0;
              v51 = 0;
              *(a1 + 56) |= 8u;
              while (1)
              {
                v64 = 0;
                v52 = [a2 position] + 1;
                if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v51 |= (v64 & 0x7F) << v49;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                v10 = v50++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_124;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v51;
              }

LABEL_124:
              v55 = 24;
              break;
            case 9:
              v13 = 0;
              v14 = 0;
              v15 = 0;
              *(a1 + 56) |= 4u;
              while (1)
              {
                v59 = 0;
                v16 = [a2 position] + 1;
                if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v15 |= (v59 & 0x7F) << v13;
                if ((v59 & 0x80) == 0)
                {
                  break;
                }

                v13 += 7;
                v10 = v14++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_120;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v15;
              }

LABEL_120:
              v55 = 20;
              break;
            default:
              goto LABEL_95;
          }

          goto LABEL_125;
        }

        if (v12 == 5)
        {
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 56) |= 0x10u;
          while (1)
          {
            v61 = 0;
            v47 = [a2 position] + 1;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v46 |= (v61 & 0x7F) << v44;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v10 = v45++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_116;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v46;
          }

LABEL_116:
          v55 = 28;
LABEL_125:
          *(a1 + v55) = v18;
          goto LABEL_126;
        }

        if (v12 != 6)
        {
LABEL_95:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_126;
        }

        v27 = PBReaderReadString();

        v25 = v27;
        v26 = 48;
      }

      *(a1 + v26) = v25;
LABEL_126:
      v56 = [a2 position];
    }

    while (v56 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIMessageDeduplicatedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v28 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v28 & 0x7F) << v5;
        if ((v28 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) == 3)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v30 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v30 & 0x7F) << v20;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v10 = v21++ >= 9;
          if (v10)
          {
            v25 = 0;
            goto LABEL_48;
          }
        }

        v25 = [a2 hasError] ? 0 : v22;
LABEL_48:
        *(a1 + 16) = v25;
      }

      else if (v12 == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v29 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v29 & 0x7F) << v14;
          if ((v29 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v10 = v15++ >= 9;
          if (v10)
          {
            v19 = 0;
            goto LABEL_44;
          }
        }

        v19 = [a2 hasError] ? 0 : v16;
LABEL_44:
        *(a1 + 8) = v19;
      }

      else if (v12 == 1)
      {
        String = PBReaderReadString();

        *(a1 + 24) = String;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIMessageDeliveredMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v28 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v28 & 0x7F) << v5;
        if ((v28 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) == 3)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v30 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v30 & 0x7F) << v20;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v10 = v21++ >= 9;
          if (v10)
          {
            v25 = 0;
            goto LABEL_48;
          }
        }

        v25 = [a2 hasError] ? 0 : v22;
LABEL_48:
        *(a1 + 16) = v25;
      }

      else if (v12 == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v29 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v29 & 0x7F) << v14;
          if ((v29 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v10 = v15++ >= 9;
          if (v10)
          {
            v19 = 0;
            goto LABEL_44;
          }
        }

        v19 = [a2 hasError] ? 0 : v16;
LABEL_44:
        *(a1 + 8) = v19;
      }

      else if (v12 == 1)
      {
        String = PBReaderReadString();

        *(a1 + 24) = String;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIMessageDowngradeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v34 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 2)
      {
        if (v12 == 3)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v37 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v37 & 0x7F) << v27;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v10 = v28++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_63;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v29;
          }

LABEL_63:
          v32 = 16;
        }

        else
        {
          if (v12 != 4)
          {
LABEL_40:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_65;
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            v36 = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v36 & 0x7F) << v19;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_59;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v21;
          }

LABEL_59:
          v32 = 32;
        }

        *(a1 + v32) = v24;
      }

      else if (v12 == 1)
      {
        String = PBReaderReadString();

        *(a1 + 24) = String;
      }

      else
      {
        if (v12 != 2)
        {
          goto LABEL_40;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          v35 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v35 & 0x7F) << v13;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_55;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v15;
        }

LABEL_55:
        *(a1 + 8) = v18;
      }

LABEL_65:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIMessageHealthCheckPerformedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = &OBJC_IVAR___AWDIDSRegistrationProfileHandleOperation__has;
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v84) = 0;
        v9 = [a2 position] + 1;
        if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v8 |= (v84 & 0x7F) << v6;
        if ((v84 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v11 = v7++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_16;
        }
      }

      v12 = [a2 hasError] ? 0 : v8;
LABEL_16:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v14 > 6)
        {
          if (v14 == 7)
          {
            if (v13 != 2)
            {
              v68 = 0;
              v69 = 0;
              v70 = 0;
              while (1)
              {
                LOBYTE(v84) = 0;
                v71 = [a2 position] + 1;
                if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v70 |= (v84 & 0x7F) << v68;
                if ((v84 & 0x80) == 0)
                {
                  goto LABEL_181;
                }

                v68 += 7;
                v11 = v69++ >= 9;
                if (v11)
                {
                  goto LABEL_182;
                }
              }
            }

            v84 = 0;
            v85 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v56 = [a2 position];
              if (v56 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v57 = 0;
              v58 = 0;
              v59 = 0;
              while (1)
              {
                v86 = 0;
                v60 = [a2 position] + 1;
                if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v59 |= (v86 & 0x7F) << v57;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v57 += 7;
                v11 = v58++ >= 9;
                if (v11)
                {
                  goto LABEL_124;
                }
              }

              [a2 hasError];
LABEL_124:
              PBRepeatedUInt32Add();
            }

LABEL_125:
            PBReaderRecallMark();
            goto LABEL_183;
          }

          if (v14 == 8)
          {
            if (v13 != 2)
            {
              v78 = 0;
              v79 = 0;
              v80 = 0;
              while (1)
              {
                LOBYTE(v84) = 0;
                v81 = [a2 position] + 1;
                if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v80 |= (v84 & 0x7F) << v78;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v78 += 7;
                v11 = v79++ >= 9;
                if (v11)
                {
                  goto LABEL_182;
                }
              }

LABEL_181:
              [a2 hasError];
LABEL_182:
              PBRepeatedUInt32Add();
              v5 = &OBJC_IVAR___AWDIDSRegistrationProfileHandleOperation__has;
              goto LABEL_183;
            }

            v84 = 0;
            v85 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v33 = [a2 position];
              if (v33 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_125;
              }

              v34 = 0;
              v35 = 0;
              v36 = 0;
              while (1)
              {
                v86 = 0;
                v37 = [a2 position] + 1;
                if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v36 |= (v86 & 0x7F) << v34;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v34 += 7;
                v11 = v35++ >= 9;
                if (v11)
                {
                  goto LABEL_76;
                }
              }

              [a2 hasError];
LABEL_76:
              PBRepeatedUInt32Add();
            }
          }
        }

        else
        {
          if (v14 == 5)
          {
            if (v13 != 2)
            {
              v63 = 0;
              v64 = 0;
              v65 = 0;
              while (1)
              {
                LOBYTE(v84) = 0;
                v66 = [a2 position] + 1;
                if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v65 |= (v84 & 0x7F) << v63;
                if ((v84 & 0x80) == 0)
                {
                  goto LABEL_181;
                }

                v63 += 7;
                v11 = v64++ >= 9;
                if (v11)
                {
                  goto LABEL_182;
                }
              }
            }

            v84 = 0;
            v85 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v45 = [a2 position];
              if (v45 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_125;
              }

              v46 = 0;
              v47 = 0;
              v48 = 0;
              while (1)
              {
                v86 = 0;
                v49 = [a2 position] + 1;
                if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v48 |= (v86 & 0x7F) << v46;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                v11 = v47++ >= 9;
                if (v11)
                {
                  goto LABEL_100;
                }
              }

              [a2 hasError];
LABEL_100:
              PBRepeatedUInt32Add();
            }
          }

          if (v14 == 6)
          {
            if (v13 != 2)
            {
              v73 = 0;
              v74 = 0;
              v75 = 0;
              while (1)
              {
                LOBYTE(v84) = 0;
                v76 = [a2 position] + 1;
                if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v75 |= (v84 & 0x7F) << v73;
                if ((v84 & 0x80) == 0)
                {
                  goto LABEL_181;
                }

                v73 += 7;
                v11 = v74++ >= 9;
                if (v11)
                {
                  goto LABEL_182;
                }
              }
            }

            v84 = 0;
            v85 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v22 = [a2 position];
              if (v22 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_125;
              }

              v23 = 0;
              v24 = 0;
              v25 = 0;
              while (1)
              {
                v86 = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v86 & 0x7F) << v23;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v11 = v24++ >= 9;
                if (v11)
                {
                  goto LABEL_48;
                }
              }

              [a2 hasError];
LABEL_48:
              PBRepeatedUInt32Add();
            }
          }
        }
      }

      else if (v14 > 2)
      {
        if (v14 == 3)
        {
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + v5[266]) |= 8u;
          while (1)
          {
            LOBYTE(v84) = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v84 & 0x7F) << v51;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v11 = v52++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_135;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v53;
          }

LABEL_135:
          v62 = 120;
          goto LABEL_144;
        }

        if (v14 == 4)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + v5[266]) |= 2u;
          while (1)
          {
            LOBYTE(v84) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v84 & 0x7F) << v28;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_143;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v30;
          }

LABEL_143:
          v62 = 112;
          goto LABEL_144;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + v5[266]) |= 1u;
          while (1)
          {
            LOBYTE(v84) = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v84 & 0x7F) << v39;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v44 = 0;
              goto LABEL_131;
            }
          }

          if ([a2 hasError])
          {
            v44 = 0;
          }

          else
          {
            v44 = v41;
          }

LABEL_131:
          *(a1 + 104) = v44;
          goto LABEL_183;
        }

        if (v14 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + v5[266]) |= 4u;
          while (1)
          {
            LOBYTE(v84) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v84 & 0x7F) << v15;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_139;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v17;
          }

LABEL_139:
          v62 = 116;
LABEL_144:
          *(a1 + v62) = v20;
          goto LABEL_183;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_183:
      v83 = [a2 position];
    }

    while (v83 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIMessageNicknamePublishedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v67 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v67 & 0x7F) << v5;
        if ((v67 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 5)
      {
        if (v12 <= 2)
        {
          if (v12 == 1)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              v68 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v34 |= (v68 & 0x7F) << v32;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v10 = v33++ >= 9;
              if (v10)
              {
                v37 = 0;
                goto LABEL_120;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v34;
            }

LABEL_120:
            *(a1 + 8) = v37;
            goto LABEL_154;
          }

          if (v12 != 2)
          {
LABEL_115:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_154;
          }

          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 64) |= 0x100u;
          while (1)
          {
            v75 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v75 & 0x7F) << v27;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v10 = v28++ >= 9;
            if (v10)
            {
              v21 = 0;
              goto LABEL_124;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v29;
          }

LABEL_124:
          v65 = 60;
        }

        else
        {
          switch(v12)
          {
            case 3:
              v53 = 0;
              v54 = 0;
              v55 = 0;
              *(a1 + 64) |= 4u;
              while (1)
              {
                v74 = 0;
                v56 = [a2 position] + 1;
                if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v55 |= (v74 & 0x7F) << v53;
                if ((v74 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                v10 = v54++ >= 9;
                if (v10)
                {
                  v21 = 0;
                  goto LABEL_144;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v55;
              }

LABEL_144:
              v65 = 20;
              break;
            case 4:
              v38 = 0;
              v39 = 0;
              v40 = 0;
              *(a1 + 64) |= 0x80u;
              while (1)
              {
                v73 = 0;
                v41 = [a2 position] + 1;
                if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v40 |= (v73 & 0x7F) << v38;
                if ((v73 & 0x80) == 0)
                {
                  break;
                }

                v38 += 7;
                v10 = v39++ >= 9;
                if (v10)
                {
                  v21 = 0;
                  goto LABEL_128;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v40;
              }

LABEL_128:
              v65 = 56;
              break;
            case 5:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              *(a1 + 64) |= 0x20u;
              while (1)
              {
                v72 = 0;
                v19 = [a2 position] + 1;
                if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v18 |= (v72 & 0x7F) << v16;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v10 = v17++ >= 9;
                if (v10)
                {
                  v21 = 0;
                  goto LABEL_140;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v18;
              }

LABEL_140:
              v65 = 40;
              break;
            default:
              goto LABEL_115;
          }
        }

        goto LABEL_153;
      }

      if (v12 > 8)
      {
        break;
      }

      switch(v12)
      {
        case 6:
          String = PBReaderReadString();

          v14 = String;
          v15 = 48;
          break;
        case 7:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 64) |= 0x40u;
          while (1)
          {
            v71 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v71 & 0x7F) << v43;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v10 = v44++ >= 9;
            if (v10)
            {
              v21 = 0;
              goto LABEL_132;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v45;
          }

LABEL_132:
          v65 = 44;
LABEL_153:
          *(a1 + v65) = v21;
          goto LABEL_154;
        case 8:
          v13 = PBReaderReadString();

          v14 = v13;
          v15 = 32;
          break;
        default:
          goto LABEL_115;
      }

      *(a1 + v15) = v14;
LABEL_154:
      v66 = [a2 position];
      if (v66 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v12)
    {
      case 9:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 64) |= 0x10u;
        while (1)
        {
          v70 = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v70 & 0x7F) << v59;
          if ((v70 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v10 = v60++ >= 9;
          if (v10)
          {
            v21 = 0;
            goto LABEL_152;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v61;
        }

LABEL_152:
        v65 = 28;
        break;
      case 0xA:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 64) |= 8u;
        while (1)
        {
          v76 = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v76 & 0x7F) << v48;
          if ((v76 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v10 = v49++ >= 9;
          if (v10)
          {
            v21 = 0;
            goto LABEL_136;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v50;
        }

LABEL_136:
        v65 = 24;
        break;
      case 0xB:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 64) |= 2u;
        while (1)
        {
          v69 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v69 & 0x7F) << v22;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v10 = v23++ >= 9;
          if (v10)
          {
            v21 = 0;
            goto LABEL_148;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v24;
        }

LABEL_148:
        v65 = 16;
        break;
      default:
        goto LABEL_115;
    }

    goto LABEL_153;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIMessageNicknameRetrievedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v60 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v60 & 0x7F) << v5;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 4)
      {
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 56) |= 0x80u;
            while (1)
            {
              v67 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v67 & 0x7F) << v36;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v10 = v37++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_120;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v38;
            }

LABEL_120:
            v58 = 52;
          }

          else
          {
            if (v12 != 4)
            {
              goto LABEL_102;
            }

            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 56) |= 8u;
            while (1)
            {
              v66 = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v66 & 0x7F) << v25;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v10 = v26++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_111;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v27;
            }

LABEL_111:
            v58 = 28;
          }

          goto LABEL_137;
        }

        if (v12 == 1)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 56) |= 2u;
          while (1)
          {
            v62 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v62 & 0x7F) << v31;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v10 = v32++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_115;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v33;
          }

LABEL_115:
          v57 = 16;
        }

        else
        {
          if (v12 != 2)
          {
            goto LABEL_102;
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 56) |= 1u;
          while (1)
          {
            v61 = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v61 & 0x7F) << v19;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_107;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v21;
          }

LABEL_107:
          v57 = 8;
        }

        *(a1 + v57) = v24;
      }

      else
      {
        if (v12 > 6)
        {
          switch(v12)
          {
            case 7:
              v41 = 0;
              v42 = 0;
              v43 = 0;
              *(a1 + 56) |= 0x20u;
              while (1)
              {
                v64 = 0;
                v44 = [a2 position] + 1;
                if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v43 |= (v64 & 0x7F) << v41;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                v10 = v42++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_124;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v43;
              }

LABEL_124:
              v58 = 36;
              break;
            case 8:
              v51 = 0;
              v52 = 0;
              v53 = 0;
              *(a1 + 56) |= 0x10u;
              while (1)
              {
                v68 = 0;
                v54 = [a2 position] + 1;
                if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v53 |= (v68 & 0x7F) << v51;
                if ((v68 & 0x80) == 0)
                {
                  break;
                }

                v51 += 7;
                v10 = v52++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_136;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v53;
              }

LABEL_136:
              v58 = 32;
              break;
            case 9:
              v13 = 0;
              v14 = 0;
              v15 = 0;
              *(a1 + 56) |= 4u;
              while (1)
              {
                v63 = 0;
                v16 = [a2 position] + 1;
                if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v15 |= (v63 & 0x7F) << v13;
                if ((v63 & 0x80) == 0)
                {
                  break;
                }

                v13 += 7;
                v10 = v14++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_132;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v15;
              }

LABEL_132:
              v58 = 24;
              break;
            default:
              goto LABEL_102;
          }

          goto LABEL_137;
        }

        if (v12 == 5)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 56) |= 0x40u;
          while (1)
          {
            v65 = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v65 & 0x7F) << v46;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v10 = v47++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_128;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v48;
          }

LABEL_128:
          v58 = 48;
LABEL_137:
          *(a1 + v58) = v18;
          goto LABEL_138;
        }

        if (v12 != 6)
        {
LABEL_102:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_138;
        }

        String = PBReaderReadString();

        *(a1 + 40) = String;
      }

LABEL_138:
      v59 = [a2 position];
    }

    while (v59 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIMessageQueryFinishedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v74 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v74 & 0x7F) << v5;
        if ((v74 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 6)
      {
        break;
      }

      if (v12 > 3)
      {
        switch(v12)
        {
          case 4:
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              v80 = 0;
              v43 = [a2 position] + 1;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v42 |= (v80 & 0x7F) << v40;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v10 = v41++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_157;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v42;
            }

LABEL_157:
            v72 = 16;
            break;
          case 5:
            v61 = 0;
            v62 = 0;
            v63 = 0;
            *(a1 + 64) |= 0x40u;
            while (1)
            {
              v79 = 0;
              v64 = [a2 position] + 1;
              if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v63 |= (v79 & 0x7F) << v61;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              v10 = v62++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_173;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v63;
            }

LABEL_173:
            v72 = 44;
            break;
          case 6:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 64) |= 0x10u;
            while (1)
            {
              v78 = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v78 & 0x7F) << v24;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v10 = v25++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_145;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v26;
            }

LABEL_145:
            v72 = 36;
            break;
          default:
            goto LABEL_132;
        }

LABEL_178:
        *(a1 + v72) = v18;
        goto LABEL_179;
      }

      if (v12 != 1)
      {
        if (v12 == 2)
        {
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 64) |= 1u;
          while (1)
          {
            v75 = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v75 & 0x7F) << v50;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v10 = v51++ >= 9;
            if (v10)
            {
              v55 = 0;
              goto LABEL_165;
            }
          }

          if ([a2 hasError])
          {
            v55 = 0;
          }

          else
          {
            v55 = v52;
          }

LABEL_165:
          *(a1 + 8) = v55;
          goto LABEL_179;
        }

        if (v12 != 3)
        {
          goto LABEL_132;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 64) |= 0x100u;
        while (1)
        {
          v81 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v81 & 0x7F) << v13;
          if ((v81 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_137;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v15;
        }

LABEL_137:
        v72 = 52;
        goto LABEL_178;
      }

      String = PBReaderReadString();

      *(a1 + 24) = String;
LABEL_179:
      v73 = [a2 position];
      if (v73 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 > 9)
    {
      switch(v12)
      {
        case 0xA:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 64) |= 0x200u;
          while (1)
          {
            v83 = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v83 & 0x7F) << v45;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v10 = v46++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_161;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v47;
          }

LABEL_161:
          v72 = 56;
          break;
        case 0xB:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          *(a1 + 64) |= 0x20u;
          while (1)
          {
            v82 = 0;
            v69 = [a2 position] + 1;
            if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v68 |= (v82 & 0x7F) << v66;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v10 = v67++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_177;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v68;
          }

LABEL_177:
          v72 = 40;
          break;
        case 0xC:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 64) |= 0x400u;
          while (1)
          {
            v76 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v76 & 0x7F) << v29;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_149;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v31;
          }

LABEL_149:
          v72 = 60;
          break;
        default:
LABEL_132:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_179;
      }
    }

    else
    {
      switch(v12)
      {
        case 7:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            v77 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v77 & 0x7F) << v35;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v10 = v36++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_153;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v37;
          }

LABEL_153:
          v72 = 32;
          break;
        case 8:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          *(a1 + 64) |= 0x80u;
          while (1)
          {
            v85 = 0;
            v59 = [a2 position] + 1;
            if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v58 |= (v85 & 0x7F) << v56;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v10 = v57++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_169;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v58;
          }

LABEL_169:
          v72 = 48;
          break;
        case 9:
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            v84 = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v84 & 0x7F) << v19;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_141;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v21;
          }

LABEL_141:
          v72 = 20;
          break;
        default:
          goto LABEL_132;
      }
    }

    goto LABEL_178;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIMessageReceivedMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v59 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v59 & 0x7F) << v5;
        if ((v59 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 4)
      {
        break;
      }

      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 56) |= 2u;
          while (1)
          {
            v61 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v61 & 0x7F) << v36;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v10 = v37++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_119;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v38;
          }

LABEL_119:
          v57 = 16;
        }

        else
        {
          if (v12 != 4)
          {
            goto LABEL_102;
          }

          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 56) |= 0x80u;
          while (1)
          {
            v67 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v67 & 0x7F) << v25;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v10 = v26++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_111;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v27;
          }

LABEL_111:
          v57 = 52;
        }

LABEL_136:
        *(a1 + v57) = v18;
        goto LABEL_137;
      }

      if (v12 == 1)
      {
        String = PBReaderReadString();

        *(a1 + 24) = String;
      }

      else
      {
        if (v12 != 2)
        {
          goto LABEL_102;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 56) |= 1u;
        while (1)
        {
          v60 = 0;
          v22 = [a2 position] + 1;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v21 |= (v60 & 0x7F) << v19;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_107;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v21;
        }

LABEL_107:
        *(a1 + 8) = v24;
      }

LABEL_137:
      v58 = [a2 position];
      if (v58 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 <= 6)
    {
      if (v12 == 5)
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 56) |= 0x40u;
        while (1)
        {
          v66 = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v66 & 0x7F) << v46;
          if ((v66 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v10 = v47++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_127;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v48;
        }

LABEL_127:
        v57 = 48;
      }

      else
      {
        if (v12 != 6)
        {
LABEL_102:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_137;
        }

        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 56) |= 0x20u;
        while (1)
        {
          v65 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v65 & 0x7F) << v30;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v10 = v31++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_115;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v32;
        }

LABEL_115:
        v57 = 44;
      }
    }

    else
    {
      switch(v12)
      {
        case 7:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 56) |= 0x10u;
          while (1)
          {
            v64 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v64 & 0x7F) << v41;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v10 = v42++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_123;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v43;
          }

LABEL_123:
          v57 = 40;
          break;
        case 8:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 56) |= 8u;
          while (1)
          {
            v63 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v63 & 0x7F) << v51;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v10 = v52++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_135;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v53;
          }

LABEL_135:
          v57 = 36;
          break;
        case 9:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            v62 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v62 & 0x7F) << v13;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_131;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v15;
          }

LABEL_131:
          v57 = 32;
          break;
        default:
          goto LABEL_102;
      }
    }

    goto LABEL_136;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIMessageSentMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v69 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v69 & 0x7F) << v5;
        if ((v69 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 5)
      {
        break;
      }

      if (v12 > 2)
      {
        switch(v12)
        {
          case 3:
            v51 = 0;
            v52 = 0;
            v53 = 0;
            *(a1 + 60) |= 4u;
            while (1)
            {
              v71 = 0;
              v54 = [a2 position] + 1;
              if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v53 |= (v71 & 0x7F) << v51;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v10 = v52++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_147;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v53;
            }

LABEL_147:
            v67 = 20;
            break;
          case 4:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 60) |= 0x100u;
            while (1)
            {
              v79 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v79 & 0x7F) << v36;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v10 = v37++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_131;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v38;
            }

LABEL_131:
            v67 = 52;
            break;
          case 5:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 60) |= 0x80u;
            while (1)
            {
              v78 = 0;
              v22 = [a2 position] + 1;
              if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v21 |= (v78 & 0x7F) << v19;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v10 = v20++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_143;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v21;
            }

LABEL_143:
            v67 = 48;
            break;
          default:
            goto LABEL_122;
        }

LABEL_164:
        *(a1 + v67) = v18;
        goto LABEL_165;
      }

      if (v12 == 1)
      {
        String = PBReaderReadString();

        *(a1 + 24) = String;
      }

      else
      {
        if (v12 != 2)
        {
LABEL_122:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_165;
        }

        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 60) |= 1u;
        while (1)
        {
          v70 = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v70 & 0x7F) << v29;
          if ((v70 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v10 = v30++ >= 9;
          if (v10)
          {
            v34 = 0;
            goto LABEL_127;
          }
        }

        if ([a2 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v31;
        }

LABEL_127:
        *(a1 + 8) = v34;
      }

LABEL_165:
      v68 = [a2 position];
      if (v68 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 > 8)
    {
      switch(v12)
      {
        case 9:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 60) |= 8u;
          while (1)
          {
            v74 = 0;
            v64 = [a2 position] + 1;
            if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v63 |= (v74 & 0x7F) << v61;
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v10 = v62++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_163;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v63;
          }

LABEL_163:
          v67 = 32;
          break;
        case 0xA:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 60) |= 0x200u;
          while (1)
          {
            v73 = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v73 & 0x7F) << v46;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v10 = v47++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_139;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v48;
          }

LABEL_139:
          v67 = 56;
          break;
        case 0xB:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 60) |= 2u;
          while (1)
          {
            v72 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v72 & 0x7F) << v24;
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_155;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v26;
          }

LABEL_155:
          v67 = 16;
          break;
        default:
          goto LABEL_122;
      }
    }

    else
    {
      switch(v12)
      {
        case 6:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          *(a1 + 60) |= 0x10u;
          while (1)
          {
            v77 = 0;
            v59 = [a2 position] + 1;
            if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v58 |= (v77 & 0x7F) << v56;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v10 = v57++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_159;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v58;
          }

LABEL_159:
          v67 = 36;
          break;
        case 7:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 60) |= 0x40u;
          while (1)
          {
            v76 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v76 & 0x7F) << v41;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v10 = v42++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_135;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v43;
          }

LABEL_135:
          v67 = 44;
          break;
        case 8:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 60) |= 0x20u;
          while (1)
          {
            v75 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v75 & 0x7F) << v13;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_151;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v15;
          }

LABEL_151:
          v67 = 40;
          break;
        default:
          goto LABEL_122;
      }
    }

    goto LABEL_164;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDSMSReceivedMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v54 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v54 & 0x7F) << v5;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 4)
      {
        break;
      }

      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 48) |= 4u;
          while (1)
          {
            v57 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v57 & 0x7F) << v41;
            if ((v57 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v10 = v42++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_101;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v43;
          }

LABEL_101:
          v52 = 20;
        }

        else
        {
          if (v12 != 4)
          {
            goto LABEL_92;
          }

          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            v56 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v56 & 0x7F) << v25;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v10 = v26++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_117;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v27;
          }

LABEL_117:
          v52 = 16;
        }

LABEL_122:
        *(a1 + v52) = v24;
        goto LABEL_123;
      }

      if (v12 == 1)
      {
        String = PBReaderReadString();

        *(a1 + 24) = String;
      }

      else
      {
        if (v12 != 2)
        {
          goto LABEL_92;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          v55 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v55 & 0x7F) << v13;
          if ((v55 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_109;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v15;
        }

LABEL_109:
        *(a1 + 8) = v18;
      }

LABEL_123:
      v53 = [a2 position];
      if (v53 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 > 6)
    {
      if (v12 == 7)
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 48) |= 0x10u;
        while (1)
        {
          v59 = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v59 & 0x7F) << v46;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v10 = v47++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_105;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v48;
        }

LABEL_105:
        v52 = 36;
      }

      else
      {
        if (v12 != 8)
        {
LABEL_92:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_123;
        }

        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 48) |= 8u;
        while (1)
        {
          v58 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v58 & 0x7F) << v30;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v10 = v31++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_121;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v32;
        }

LABEL_121:
        v52 = 32;
      }
    }

    else if (v12 == 5)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      *(a1 + 48) |= 0x40u;
      while (1)
      {
        v61 = 0;
        v39 = [a2 position] + 1;
        if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v38 |= (v61 & 0x7F) << v36;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v36 += 7;
        v10 = v37++ >= 9;
        if (v10)
        {
          v24 = 0;
          goto LABEL_97;
        }
      }

      if ([a2 hasError])
      {
        v24 = 0;
      }

      else
      {
        v24 = v38;
      }

LABEL_97:
      v52 = 44;
    }

    else
    {
      if (v12 != 6)
      {
        goto LABEL_92;
      }

      v19 = 0;
      v20 = 0;
      v21 = 0;
      *(a1 + 48) |= 0x20u;
      while (1)
      {
        v60 = 0;
        v22 = [a2 position] + 1;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v21 |= (v60 & 0x7F) << v19;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        v10 = v20++ >= 9;
        if (v10)
        {
          v24 = 0;
          goto LABEL_113;
        }
      }

      if ([a2 hasError])
      {
        v24 = 0;
      }

      else
      {
        v24 = v21;
      }

LABEL_113:
      v52 = 40;
    }

    goto LABEL_122;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDSMSSentMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v59 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v59 & 0x7F) << v5;
        if ((v59 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 4)
      {
        break;
      }

      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 52) |= 4u;
          while (1)
          {
            v62 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v62 & 0x7F) << v36;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v10 = v37++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_119;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v38;
          }

LABEL_119:
          v57 = 20;
        }

        else
        {
          if (v12 != 4)
          {
            goto LABEL_102;
          }

          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 52) |= 2u;
          while (1)
          {
            v61 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v61 & 0x7F) << v25;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v10 = v26++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_111;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v27;
          }

LABEL_111:
          v57 = 16;
        }

LABEL_136:
        *(a1 + v57) = v18;
        goto LABEL_137;
      }

      if (v12 == 1)
      {
        String = PBReaderReadString();

        *(a1 + 24) = String;
      }

      else
      {
        if (v12 != 2)
        {
          goto LABEL_102;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 52) |= 1u;
        while (1)
        {
          v60 = 0;
          v22 = [a2 position] + 1;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v21 |= (v60 & 0x7F) << v19;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_107;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v21;
        }

LABEL_107:
        *(a1 + 8) = v24;
      }

LABEL_137:
      v58 = [a2 position];
      if (v58 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 <= 6)
    {
      if (v12 == 5)
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 52) |= 0x10u;
        while (1)
        {
          v67 = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v67 & 0x7F) << v46;
          if ((v67 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v10 = v47++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_127;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v48;
        }

LABEL_127:
        v57 = 36;
      }

      else
      {
        if (v12 != 6)
        {
LABEL_102:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_137;
        }

        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 52) |= 0x40u;
        while (1)
        {
          v66 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v66 & 0x7F) << v30;
          if ((v66 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v10 = v31++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_115;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v32;
        }

LABEL_115:
        v57 = 44;
      }
    }

    else
    {
      switch(v12)
      {
        case 7:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 52) |= 0x20u;
          while (1)
          {
            v65 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v65 & 0x7F) << v41;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v10 = v42++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_123;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v43;
          }

LABEL_123:
          v57 = 40;
          break;
        case 8:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 52) |= 8u;
          while (1)
          {
            v64 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v64 & 0x7F) << v51;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v10 = v52++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_135;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v53;
          }

LABEL_135:
          v57 = 32;
          break;
        case 9:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 52) |= 0x80u;
          while (1)
          {
            v63 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v63 & 0x7F) << v13;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_131;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v15;
          }

LABEL_131:
          v57 = 48;
          break;
        default:
          goto LABEL_102;
      }
    }

    goto LABEL_136;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIMRemoteURLLoadCompletedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v70 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v70 & 0x7F) << v5;
        if ((v70 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          *(a1 + 112) |= 0x1000u;
          while (1)
          {
            v83 = 0;
            v15 = [a2 position] + 1;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v83 & 0x7F) << v12;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v17 = v13++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__timestamp;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__timestamp;
          goto LABEL_150;
        case 2u:
          v48 = 0;
          v49 = 0;
          v14 = 0;
          *(a1 + 112) |= 0x40u;
          while (1)
          {
            v82 = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v82 & 0x7F) << v48;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v17 = v49++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__navigationStartToRedirectStartMillis;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__navigationStartToRedirectStartMillis;
          goto LABEL_150;
        case 3u:
          v36 = 0;
          v37 = 0;
          v14 = 0;
          *(a1 + 112) |= 0x100u;
          while (1)
          {
            v81 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v81 & 0x7F) << v36;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v17 = v37++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__redirectStartToRedirectEndMillis;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__redirectStartToRedirectEndMillis;
          goto LABEL_150;
        case 4u:
          v40 = 0;
          v41 = 0;
          v14 = 0;
          *(a1 + 112) |= 0x80u;
          while (1)
          {
            v80 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v80 & 0x7F) << v40;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v17 = v41++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__redirectEndToFetchStartMillis;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__redirectEndToFetchStartMillis;
          goto LABEL_150;
        case 5u:
          v24 = 0;
          v25 = 0;
          v14 = 0;
          *(a1 + 112) |= 0x20u;
          while (1)
          {
            v79 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v79 & 0x7F) << v24;
            if ((v79 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v17 = v25++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__fetchStartToDomainLookupStartMillis;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__fetchStartToDomainLookupStartMillis;
          goto LABEL_150;
        case 6u:
          v52 = 0;
          v53 = 0;
          v14 = 0;
          *(a1 + 112) |= 0x10u;
          while (1)
          {
            v78 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v78 & 0x7F) << v52;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v17 = v53++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__domainLookupStartToDomainLookupEndMillis;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__domainLookupStartToDomainLookupEndMillis;
          goto LABEL_150;
        case 7u:
          v56 = 0;
          v57 = 0;
          v14 = 0;
          *(a1 + 112) |= 8u;
          while (1)
          {
            v77 = 0;
            v58 = [a2 position] + 1;
            if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v77 & 0x7F) << v56;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v17 = v57++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__domainLookupEndToConnectStartMillis;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__domainLookupEndToConnectStartMillis;
          goto LABEL_150;
        case 8u:
          v44 = 0;
          v45 = 0;
          v14 = 0;
          *(a1 + 112) |= 4u;
          while (1)
          {
            v76 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v76 & 0x7F) << v44;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v17 = v45++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__connectStartToSecureConnectionStartMillis;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__connectStartToSecureConnectionStartMillis;
          goto LABEL_150;
        case 9u:
          v64 = 0;
          v65 = 0;
          v14 = 0;
          *(a1 + 112) |= 2u;
          while (1)
          {
            v75 = 0;
            v66 = [a2 position] + 1;
            if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v75 & 0x7F) << v64;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v17 = v65++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__connectStartToConnectEndMillis;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__connectStartToConnectEndMillis;
          goto LABEL_150;
        case 0xAu:
          v32 = 0;
          v33 = 0;
          v14 = 0;
          *(a1 + 112) |= 0x800u;
          while (1)
          {
            v74 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v74 & 0x7F) << v32;
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v17 = v33++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__secureConnectionStartToConnectEndMillis;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__secureConnectionStartToConnectEndMillis;
          goto LABEL_150;
        case 0xBu:
          v60 = 0;
          v61 = 0;
          v14 = 0;
          *(a1 + 112) |= 1u;
          while (1)
          {
            v73 = 0;
            v62 = [a2 position] + 1;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v73 & 0x7F) << v60;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v17 = v61++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__connectEndToRequestStartMillis;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__connectEndToRequestStartMillis;
          goto LABEL_150;
        case 0xCu:
          v20 = 0;
          v21 = 0;
          v14 = 0;
          *(a1 + 112) |= 0x200u;
          while (1)
          {
            v72 = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v72 & 0x7F) << v20;
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v17 = v21++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__requestStartToResponseStartMillis;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__requestStartToResponseStartMillis;
          goto LABEL_150;
        case 0xDu:
          v28 = 0;
          v29 = 0;
          v14 = 0;
          *(a1 + 112) |= 0x400u;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_154;
          }

          return 0;
      }

      while (1)
      {
        v71 = 0;
        v30 = [a2 position] + 1;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v14 |= (v71 & 0x7F) << v28;
        if ((v71 & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v17 = v29++ > 8;
        if (v17)
        {
          v18 = 0;
          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__responseStartToResponseEndMillis;
          goto LABEL_153;
        }
      }

      v19 = &OBJC_IVAR___AWDIMRemoteURLLoadCompleted__responseStartToResponseEndMillis;
LABEL_150:
      v18 = [a2 hasError] ? 0 : v14;
LABEL_153:
      *(a1 + *v19) = v18;
LABEL_154:
      v68 = [a2 position];
    }

    while (v68 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIMRemoteURLLoadFailedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v74 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v74 & 0x7F) << v5;
        if ((v74 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x2000u;
          while (1)
          {
            v87 = 0;
            v15 = [a2 position] + 1;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v87 & 0x7F) << v12;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v17 = v13++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__timestamp;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__timestamp;
          goto LABEL_160;
        case 2u:
          v48 = 0;
          v49 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x80u;
          while (1)
          {
            v86 = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v86 & 0x7F) << v48;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v17 = v49++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__navigationStartToRedirectStartMillis;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__navigationStartToRedirectStartMillis;
          goto LABEL_160;
        case 3u:
          v36 = 0;
          v37 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x200u;
          while (1)
          {
            v85 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v85 & 0x7F) << v36;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v17 = v37++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__redirectStartToRedirectEndMillis;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__redirectStartToRedirectEndMillis;
          goto LABEL_160;
        case 4u:
          v40 = 0;
          v41 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x100u;
          while (1)
          {
            v84 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v84 & 0x7F) << v40;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v17 = v41++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__redirectEndToFetchStartMillis;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__redirectEndToFetchStartMillis;
          goto LABEL_160;
        case 5u:
          v24 = 0;
          v25 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x40u;
          while (1)
          {
            v83 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v83 & 0x7F) << v24;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v17 = v25++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__fetchStartToDomainLookupStartMillis;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__fetchStartToDomainLookupStartMillis;
          goto LABEL_160;
        case 6u:
          v52 = 0;
          v53 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x10u;
          while (1)
          {
            v82 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v82 & 0x7F) << v52;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v17 = v53++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__domainLookupStartToDomainLookupEndMillis;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__domainLookupStartToDomainLookupEndMillis;
          goto LABEL_160;
        case 7u:
          v60 = 0;
          v61 = 0;
          v14 = 0;
          *(a1 + 120) |= 8u;
          while (1)
          {
            v81 = 0;
            v62 = [a2 position] + 1;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v81 & 0x7F) << v60;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v17 = v61++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__domainLookupEndToConnectStartMillis;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__domainLookupEndToConnectStartMillis;
          goto LABEL_160;
        case 8u:
          v44 = 0;
          v45 = 0;
          v14 = 0;
          *(a1 + 120) |= 4u;
          while (1)
          {
            v80 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v80 & 0x7F) << v44;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v17 = v45++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__connectStartToSecureConnectionStartMillis;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__connectStartToSecureConnectionStartMillis;
          goto LABEL_160;
        case 9u:
          v68 = 0;
          v69 = 0;
          v14 = 0;
          *(a1 + 120) |= 2u;
          while (1)
          {
            v79 = 0;
            v70 = [a2 position] + 1;
            if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v79 & 0x7F) << v68;
            if ((v79 & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            v17 = v69++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__connectStartToConnectEndMillis;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__connectStartToConnectEndMillis;
          goto LABEL_160;
        case 0xAu:
          v32 = 0;
          v33 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x1000u;
          while (1)
          {
            v78 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v78 & 0x7F) << v32;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v17 = v33++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__secureConnectionStartToConnectEndMillis;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__secureConnectionStartToConnectEndMillis;
          goto LABEL_160;
        case 0xBu:
          v64 = 0;
          v65 = 0;
          v14 = 0;
          *(a1 + 120) |= 1u;
          while (1)
          {
            v77 = 0;
            v66 = [a2 position] + 1;
            if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v77 & 0x7F) << v64;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v17 = v65++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__connectEndToRequestStartMillis;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__connectEndToRequestStartMillis;
          goto LABEL_160;
        case 0xCu:
          v20 = 0;
          v21 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x400u;
          while (1)
          {
            v76 = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v76 & 0x7F) << v20;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v17 = v21++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__requestStartToResponseStartMillis;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__requestStartToResponseStartMillis;
          goto LABEL_160;
        case 0xDu:
          v28 = 0;
          v29 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x800u;
          while (1)
          {
            v75 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v75 & 0x7F) << v28;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v17 = v29++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__responseStartToResponseEndMillis;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__responseStartToResponseEndMillis;
          goto LABEL_160;
        case 0xEu:
          v56 = 0;
          v57 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x20u;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_164;
          }

          return 0;
      }

      while (1)
      {
        v88 = 0;
        v58 = [a2 position] + 1;
        if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v14 |= (v88 & 0x7F) << v56;
        if ((v88 & 0x80) == 0)
        {
          break;
        }

        v56 += 7;
        v17 = v57++ > 8;
        if (v17)
        {
          v18 = 0;
          v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__errorCode;
          goto LABEL_163;
        }
      }

      v19 = &OBJC_IVAR___AWDIMRemoteURLLoadFailed__errorCode;
LABEL_160:
      v18 = [a2 hasError] ? 0 : v14;
LABEL_163:
      *(a1 + *v19) = v18;
LABEL_164:
      v72 = [a2 position];
    }

    while (v72 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDITesterAppStartReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v21 = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v14 |= (v21 & 0x7F) << v12;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_32;
          }
        }

        v17 = [a2 hasError] ? 0 : v14;
LABEL_32:
        *(a1 + 8) = v17;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDITesterApplicationUUIDReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 4)
      {
        String = PBReaderReadString();

        *(a1 + 16) = String;
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v22 = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v14 |= (v22 & 0x7F) << v12;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_34;
          }
        }

        v17 = [a2 hasError] ? 0 : v14;
LABEL_34:
        *(a1 + 8) = v17;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDITesterApplyCustomInputsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v21 = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v14 |= (v21 & 0x7F) << v12;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_32;
          }
        }

        v17 = [a2 hasError] ? 0 : v14;
LABEL_32:
        *(a1 + 8) = v17;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}