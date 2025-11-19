uint64_t SharedChannelActivityResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v22) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 1)
      {
        if (v13 == 2)
        {
          [a1 clearOneofValuesForResponse];
          *(a1 + 36) |= 1u;
          *(a1 + 32) = 2;
          v14 = objc_alloc_init(ChannelActivityDeactivationResponse);
          objc_storeStrong((a1 + 16), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !ChannelActivityDeactivationResponseReadFrom(v14, a2))
          {
LABEL_46:

            return 0;
          }

          goto LABEL_41;
        }

        if (v13 == 3)
        {
          [a1 clearOneofValuesForResponse];
          *(a1 + 36) |= 1u;
          *(a1 + 32) = 3;
          v14 = objc_alloc_init(ChannelActivityPollingResponse);
          objc_storeStrong((a1 + 24), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !ChannelActivityPollingResponseReadFrom(v14, a2))
          {
            goto LABEL_46;
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (!v13)
        {
          v15 = 0;
          while (1)
          {
            LOBYTE(v22) = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            if ((v22 & 0x80000000) == 0)
            {
              break;
            }

            if (v15++ > 8)
            {
              goto LABEL_42;
            }
          }

          [a2 hasError];
          goto LABEL_42;
        }

        if (v13 == 1)
        {
          [a1 clearOneofValuesForResponse];
          *(a1 + 36) |= 1u;
          *(a1 + 32) = 1;
          v14 = objc_alloc_init(ChannelActivityActivationResponse);
          objc_storeStrong((a1 + 8), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !ChannelActivityActivationResponseReadFrom(v14, a2))
          {
            goto LABEL_46;
          }

LABEL_41:
          PBReaderRecallMark();

          goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SharedChannelCreateRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v15 = PBReaderReadString();
        v16 = 32;
        goto LABEL_29;
      }

      if (v13 != 2)
      {
        goto LABEL_26;
      }

      v14 = objc_alloc_init(AuthCredential);
      objc_storeStrong((a1 + 16), v14);
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !AuthCredentialReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v21 = [a2 position] + 1;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v20 |= (v27[0] & 0x7F) << v18;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        v11 = v19++ >= 9;
        if (v11)
        {
          v24 = 0;
          goto LABEL_42;
        }
      }

      if ([a2 hasError])
      {
        v24 = 0;
      }

      else
      {
        v24 = v20;
      }

LABEL_42:
      *(a1 + 24) = v24;
      goto LABEL_43;
    }

    if (v13 == 4)
    {
      v15 = PBReaderReadString();
      v16 = 8;
LABEL_29:
      v17 = *(a1 + v16);
      *(a1 + v16) = v15;

      goto LABEL_43;
    }

LABEL_26:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SharedChannelCreateResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v38[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38[0] & 0x7F) << v5;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 32) |= 4u;
        while (1)
        {
          LOBYTE(v38[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v38[0] & 0x7F) << v22;
          if ((v38[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_61;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_61:
        v35 = 28;
LABEL_66:
        *(a1 + v35) = v28;
        goto LABEL_67;
      }

      if (v13 != 2)
      {
        goto LABEL_34;
      }

      v14 = objc_alloc_init(ChannelIdentity);
      objc_storeStrong((a1 + 16), v14);
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !ChannelIdentityReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_67:
      v36 = [a2 position];
      if (v36 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      *(a1 + 32) |= 2u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v38[0] & 0x7F) << v29;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v11 = v30++ >= 9;
        if (v11)
        {
          v28 = 0;
          goto LABEL_65;
        }
      }

      if ([a2 hasError])
      {
        v28 = 0;
      }

      else
      {
        v28 = v31;
      }

LABEL_65:
      v35 = 24;
      goto LABEL_66;
    }

    if (v13 == 4)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(a1 + 32) |= 1u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v38[0] & 0x7F) << v15;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_57;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_57:
      *(a1 + 8) = v21;
      goto LABEL_67;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_67;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SharedChannelProvisionOffGridPacketReadFrom(uint64_t a1, void *a2)
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

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
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          v15 = &OBJC_IVAR___SharedChannelProvisionOffGridPacket__channelId;
          goto LABEL_28;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadData();
          v15 = &OBJC_IVAR___SharedChannelProvisionOffGridPacket__commitmentSalt;
          goto LABEL_28;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadData();
          v15 = &OBJC_IVAR___SharedChannelProvisionOffGridPacket__publishPayload;
          goto LABEL_28;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = &OBJC_IVAR___SharedChannelProvisionOffGridPacket__channelTopic;
LABEL_28:
          v16 = *v15;
          v17 = *(a1 + v16);
          *(a1 + v16) = v14;

          goto LABEL_29;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SharedChannelProvisionOffGridPacketInfoReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

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
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadData();
          v15 = 40;
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          v15 = 24;
          goto LABEL_36;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              v27 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v27 & 0x7F) << v16;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_44;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_44:
            *(a1 + 8) = v22;
            goto LABEL_37;
          case 4:
            v14 = PBReaderReadData();
            v15 = 16;
            goto LABEL_36;
          case 5:
            v14 = PBReaderReadData();
            v15 = 32;
LABEL_36:
            v23 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_37;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_37:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SharedChannelProvisionOffGridPayloadRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(AuthCredential);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !AuthCredentialReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(ChannelDeferredPublishInfo);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !ChannelDeferredPublishInfoReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SharedChannelProvisionOffGridPayloadResponseReadFrom(uint64_t a1, void *a2)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___SharedChannelProvisionOffGridPayloadResponse__status;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___SharedChannelProvisionOffGridPayloadResponse__status;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 16) |= 1u;
    while (1)
    {
      v31 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v31 & 0x7F) << v22;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___SharedChannelProvisionOffGridPayloadResponse__retryIntervalSeconds;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___SharedChannelProvisionOffGridPayloadResponse__retryIntervalSeconds;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SharedChannelProvisionStoragePacketInfoReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

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
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          v15 = 16;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_24:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_41;
          }

          v14 = PBReaderReadData();
          v15 = 32;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            v27 = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v27 & 0x7F) << v17;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_40;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_40:
          *(a1 + 8) = v23;
          goto LABEL_41;
        }

        if (v13 != 2)
        {
          goto LABEL_24;
        }

        v14 = PBReaderReadData();
        v15 = 24;
      }

      v24 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_41:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SharedChannelProvisionStorageValueReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_36:
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SharedChannelProvisionStoragePacketInfo);
        [a1 addChannelPublishProvisionPacketInfo:v13];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !SharedChannelProvisionStoragePacketInfoReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SharedChannelPublishOffGridPayloadRequestReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SharedChannelPublishOffGridPayloadResponseReadFrom(uint64_t a1, void *a2)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___SharedChannelPublishOffGridPayloadResponse__status;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___SharedChannelPublishOffGridPayloadResponse__status;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 16) |= 1u;
    while (1)
    {
      v31 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v31 & 0x7F) << v22;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___SharedChannelPublishOffGridPayloadResponse__retryIntervalSeconds;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___SharedChannelPublishOffGridPayloadResponse__retryIntervalSeconds;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SharedChannelPublishPayloadReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SharedChannelPublishRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(AuthCredential);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !AuthCredentialReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(ChannelPublishPayload);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !ChannelPublishPayloadReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SharedChannelPublishResponseReadFrom(uint64_t a1, void *a2)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___SharedChannelPublishResponse__status;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___SharedChannelPublishResponse__status;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 16) |= 1u;
    while (1)
    {
      v31 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v31 & 0x7F) << v22;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___SharedChannelPublishResponse__retryIntervalSeconds;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___SharedChannelPublishResponse__retryIntervalSeconds;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SharedOwnershipAuthReadFrom(uint64_t a1, void *a2)
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

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
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = &OBJC_IVAR___SharedOwnershipAuth__simpleJwt;
          goto LABEL_28;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          v15 = &OBJC_IVAR___SharedOwnershipAuth__channelPublicKey;
          goto LABEL_28;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadData();
            v15 = &OBJC_IVAR___SharedOwnershipAuth__nonce;
            goto LABEL_28;
          case 4:
            v14 = PBReaderReadData();
            v15 = &OBJC_IVAR___SharedOwnershipAuth__signNonce;
            goto LABEL_28;
          case 5:
            v14 = PBReaderReadData();
            v15 = &OBJC_IVAR___SharedOwnershipAuth__serverEncryptionKey;
LABEL_28:
            v16 = *v15;
            v17 = *(a1 + v16);
            *(a1 + v16) = v14;

            goto LABEL_29;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SignedParticipantPayloadReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(DecryptedParticipantPayload);
        objc_storeStrong((a1 + 8), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !DecryptedParticipantPayloadReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v13 = *(a1 + 16);
    *(a1 + 16) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t OUTLINED_FUNCTION_8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void sub_2200D3934(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_2200D48AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_2200D50C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_2200D5A6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

uint64_t SKALocalStatusDeviceDiscoverySourceFromRawValue(unsigned int a1)
{
  if (a1 >= 3)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

void sub_2200DDE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2200DE818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200DEA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200DEC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200DF800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200DFC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E0148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E06FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_2200E0C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E1308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E19E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E2164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E2448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E2690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E2910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E2E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E30E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E3B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E3D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E4230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E4454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E49B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E4CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E5030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E52EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E5740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E5B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E5E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E6594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E6988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E6D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E7258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E74BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E78AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E7C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E7EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E83C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E862C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E8DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E9158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E94DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E9974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E9B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200E9DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200EA1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200EA424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200EA7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200EAAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200EAD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200EAFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200EB70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200EC4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200EC740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200EC924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200ECBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200ECDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200ED09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200ED3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200ED644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200ED80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200EDD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200EDFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200EE1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200F02DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2200F06C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2200F0E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2200F11E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2200F1E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2200F22D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2200F292C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2200F2BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200F3690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose((v39 - 176), 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2200F4DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200F69BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2200FD1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2200FD6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2200FF07C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 96));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2201002FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_220103070(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_220103718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_220103FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 128));
  _Unwind_Resume(a1);
}

void sub_220104760(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 104));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_220105BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_22010D078(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22010DE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v9);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22010F324(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2201103D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void sub_22011BE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

uint64_t *OUTLINED_FUNCTION_7_1@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *result;
  v5 = *a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  v4 = *(result + 40);
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_220127298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_220128938(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_8_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 40);
  v4 = *(result + 48);
  return result;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for $taskTraceID()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9TaskLocalCy10Foundation4UUIDVSgGMd, &_ss9TaskLocalCy10Foundation4UUIDVSgGMR);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  static SKAAsyncQueue.$taskTraceID = result;
  return result;
}

uint64_t *SKAAsyncQueue.__allocating_init(name:loggingEnabled:isolation:)(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v11;
}

uint64_t *SKAAsyncQueue.init(name:loggingEnabled:isolation:)(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v4 = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t closure #1 in SKAAsyncQueue.init(name:loggingEnabled:isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 80) = a6;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 16) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  *(v8 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in SKAAsyncQueue.init(name:loggingEnabled:isolation:), 0, 0);
}

uint64_t closure #1 in SKAAsyncQueue.init(name:loggingEnabled:isolation:)()
{
  if (one-time initialization token for $taskTraceID != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 80);
  v6 = *(v0 + 24);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v1, v6, v7);
  (*(v8 + 56))(v1, 0, 1, v7);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v3;
  *(v9 + 40) = v2;
  v10 = *(MEMORY[0x277D85A70] + 4);
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = closure #1 in SKAAsyncQueue.init(name:loggingEnabled:isolation:);
  v12 = *(v0 + 56);
  v13 = *(v0 + 16);

  return MEMORY[0x282200908](v13, v12, &async function pointer to partial apply for closure #1 in closure #1 in SKAAsyncQueue.init(name:loggingEnabled:isolation:), v9, 0, 0, 0xD000000000000026, 0x80000002201AB4A0);
}

void closure #1 in SKAAsyncQueue.init(name:loggingEnabled:isolation:)()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 64);
    outlined destroy of UUID?(*(v2 + 56), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    v6 = *(v4 + 8);

    v6();
  }
}

uint64_t closure #1 in closure #1 in SKAAsyncQueue.init(name:loggingEnabled:isolation:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 128) = a3;
  *(v5 + 16) = a2;
  v6 = type metadata accessor for SKAAsyncQueue.Item(0);
  *(v5 + 40) = v6;
  v7 = *(v6 - 8);
  *(v5 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLVSgMd, &_s18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLVSgMR) - 8) + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV_GMd, &_sScS8IteratorVy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV_GMR);
  *(v5 + 88) = v10;
  v11 = *(v10 - 8);
  *(v5 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SKAAsyncQueue.init(name:loggingEnabled:isolation:), 0, 0);
}

uint64_t closure #1 in closure #1 in SKAAsyncQueue.init(name:loggingEnabled:isolation:)()
{
  v1 = v0[13];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLVGMd, &_sScSy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLVGMR);
  AsyncStream.makeAsyncIterator()();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in SKAAsyncQueue.init(name:loggingEnabled:isolation:);
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SKAAsyncQueue.init(name:loggingEnabled:isolation:), 0, 0);
}

{
  v43 = v0;
  v1 = *(v0 + 80);
  if ((*(*(v0 + 48) + 48))(v1, 1, *(v0 + 40)) == 1)
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
LABEL_5:
    v3 = *(v0 + 104);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);

    v8 = *(v0 + 8);

    return v8();
  }

  outlined init with take of SKAAsyncQueue.Item(v1, *(v0 + 72));
  if (static Task<>.isCancelled.getter())
  {
    v2 = *(v0 + 72);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    outlined destroy of SKAAsyncQueue.Item(v2);
    goto LABEL_5;
  }

  if (*(v0 + 128) == 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    v12 = *(v0 + 56);
    v13 = *(v0 + 32);
    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, logger);
    outlined init with copy of SKAAsyncQueue.Item(v11, v10);
    outlined init with copy of SKAAsyncQueue.Item(v11, v12);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 56);
    v19 = *(v0 + 64);
    if (v17)
    {
      v20 = *(v0 + 32);
      v21 = *(v0 + 40);
      v22 = *(v0 + 24);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42 = v24;
      *v23 = 136315650;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v20, &v42);
      *(v23 + 12) = 2080;
      v25 = *(v21 + 24);
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      outlined destroy of SKAAsyncQueue.Item(v19);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v42);

      *(v23 + 14) = v29;
      *(v23 + 22) = 2080;
      v30 = *(v18 + 16);
      v31 = *(v18 + 24);
      v32 = *(v18 + 32);
      v33 = StaticString.description.getter();
      v35 = v34;
      outlined destroy of SKAAsyncQueue.Item(v18);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v42);

      *(v23 + 24) = v36;
      _os_log_impl(&dword_220099000, v15, v16, "[%s] Dequeueing request %s from %s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D77FF0](v24, -1, -1);
      MEMORY[0x223D77FF0](v23, -1, -1);
    }

    else
    {

      outlined destroy of SKAAsyncQueue.Item(v18);
      outlined destroy of SKAAsyncQueue.Item(v19);
    }
  }

  v37 = *(v0 + 72);
  v38 = v37[1];
  v41 = (*v37 + **v37);
  v39 = (*v37)[1];
  v40 = swift_task_alloc();
  *(v0 + 120) = v40;
  *v40 = v0;
  v40[1] = closure #1 in closure #1 in SKAAsyncQueue.init(name:loggingEnabled:isolation:);

  return v41();
}

{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SKAAsyncQueue.init(name:loggingEnabled:isolation:), 0, 0);
}

{
  outlined destroy of SKAAsyncQueue.Item(v0[9]);
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in SKAAsyncQueue.init(name:loggingEnabled:isolation:);
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];

  return MEMORY[0x2822003E8](v4, 0, 0, v5);
}

uint64_t SKAAsyncQueue.deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18StatusKitAgentCore13SKAAsyncQueue_streamContinuation;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV_GMR);
  AsyncStream.Continuation.finish()();
  MEMORY[0x223D76D40](*(v0 + OBJC_IVAR____TtC18StatusKitAgentCore13SKAAsyncQueue_task), MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  v4 = *(v0 + 120);

  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v5 = OBJC_IVAR____TtC18StatusKitAgentCore13SKAAsyncQueue_traceID;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t SKAAsyncQueue.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18StatusKitAgentCore13SKAAsyncQueue_streamContinuation;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV_GMR);
  AsyncStream.Continuation.finish()();
  v4 = OBJC_IVAR____TtC18StatusKitAgentCore13SKAAsyncQueue_task;
  MEMORY[0x223D76D40](*(v1 + OBJC_IVAR____TtC18StatusKitAgentCore13SKAAsyncQueue_task), MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  v5 = *(v1 + 120);

  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v6 = *(v1 + v4);

  v7 = OBJC_IVAR____TtC18StatusKitAgentCore13SKAAsyncQueue_traceID;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v1);
}

uint64_t SKAAsyncQueue.enqueueAndWait(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 72) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x2822009F8](SKAAsyncQueue.enqueueAndWait(_:_:), 0, 0);
}

uint64_t SKAAsyncQueue.enqueueAndWait(_:_:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 72);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = v6;
  v7 = *(MEMORY[0x277D859E0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = SKAAsyncQueue.enqueueAndWait(_:_:);

  return MEMORY[0x2822007B8]();
}

{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](SKAAsyncQueue.enqueueAndWait(_:_:), 0, 0);
}

{
  return (*(v0 + 8))();
}

uint64_t closure #1 in SKAAsyncQueue.enqueueAndWait(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v22 = a5;
  v23 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21[-v15];
  (*(v13 + 16))(&v21[-v15], a1, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  v19 = (v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = a6;
  v19[1] = a7;

  SKAAsyncQueue.enqueue(_:_:)(a3, a4, v22, &async function pointer to partial apply for closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait(_:_:), v18);
}

uint64_t closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait(_:_:)(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait(_:_:);

  return v6();
}

uint64_t closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait(_:_:)()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait(_:_:), 0, 0);
}

{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  CheckedContinuation.resume(returning:)();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t SKAAsyncQueue.enqueueAndWait<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 88) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](SKAAsyncQueue.enqueueAndWait<A>(_:_:), 0, 0);
}

{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 96) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](SKAAsyncQueue.enqueueAndWait<A>(_:_:), 0, 0);
}

uint64_t SKAAsyncQueue.enqueueAndWait<A>(_:_:)()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = *(v0 + 56);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  *(v4 + 56) = v5;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = SKAAsyncQueue.enqueueAndWait<A>(_:_:);
  v8 = *(v0 + 56);
  v9 = *(v0 + 16);

  return MEMORY[0x2822007B8](v9, 0, 0, 0xD000000000000014, 0x80000002201AB3F0, partial apply for closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:), v4, v8);
}

{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

{
  v1 = *(v0 + 96);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = *(v0 + 56);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  *(v4 + 56) = v5;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = SKAAsyncQueue.enqueueAndWait<A>(_:_:);
  v8 = *(v0 + 56);
  v9 = *(v0 + 16);

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000014, 0x80000002201AB3F0, partial apply for closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:), v4, v8);
}

{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](SKAAsyncQueue.enqueueAndWait<A>(_:_:), 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a5;
  v23 = a4;
  v25 = a2;
  v13 = type metadata accessor for CheckedContinuation();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  (*(v14 + 16))(&v22 - v16, a1, v13);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a8;
  (*(v14 + 32))(v19 + v18, v17, v13);
  v20 = (v19 + ((v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = a6;
  v20[1] = a7;

  SKAAsyncQueue.enqueue(_:_:)(a3, v23, v24, &async function pointer to partial apply for closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:), v19);
}

{
  v24 = a5;
  v23 = a4;
  v25 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v13 = type metadata accessor for CheckedContinuation();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  (*(v14 + 16))(&v22 - v16, a1, v13);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a8;
  (*(v14 + 32))(v19 + v18, v17, v13);
  v20 = (v19 + ((v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = a6;
  v20[1] = a7;

  SKAAsyncQueue.enqueue(_:_:)(a3, v23, v24, &async function pointer to partial apply for closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:), v19);
}

uint64_t closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v6 = *(*(a4 - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[4] = v7;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return v11(v7);
}

{
  v4[3] = a1;
  v4[4] = a4;
  v6 = *(*(a4 - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[5] = v7;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return v11(v7);
}

uint64_t closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:), 0, 0);
}

{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  type metadata accessor for CheckedContinuation();
  CheckedContinuation.resume(returning:)();

  v4 = v0[1];

  return v4();
}

{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);
  }

  else
  {
    v3 = closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for CheckedContinuation();
  CheckedContinuation.resume(returning:)();
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

{
  v2 = v0[3];
  v1 = v0[4];
  v0[2] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for CheckedContinuation();
  CheckedContinuation.resume(throwing:)();
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

Swift::Void __swiftcall SKAAsyncQueue.cancel()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV_GMR);
  AsyncStream.Continuation.finish()();
  v1 = *(v0 + OBJC_IVAR____TtC18StatusKitAgentCore13SKAAsyncQueue_task);

  JUMPOUT(0x223D76D40);
}

Swift::Int SKAAsyncQueue.Condition.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223D772F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SKAAsyncQueue.Condition()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223D772F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SKAAsyncQueue.Condition()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223D772F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IDSDeviceType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223D772F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IDSDeviceType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223D772F0](v1);
  return Hasher._finalize()();
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t *specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v62 = a4;
  LODWORD(v77) = a3;
  v72 = *v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v81 = &v61 - v10;
  v76 = type metadata accessor for UUID();
  v80 = *(v76 - 8);
  v11 = *(v80 + 64);
  v12 = MEMORY[0x28223BE20](v76);
  v70 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV__GMd, &_sScS12ContinuationV15BufferingPolicyOy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV__GMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v61 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLV_GMR);
  v79 = *(v21 - 8);
  v22 = *(v79 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v61 - v23;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLVGMd, &_sScSy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLVGMR);
  v66 = *(v78 - 8);
  v25 = *(v66 + 64);
  v26 = MEMORY[0x28223BE20](v78);
  v65 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v61 - v28;
  swift_defaultActor_initialize();
  v73 = a1;
  v5[14] = a1;
  v5[15] = a2;
  v64 = v77 & 1;
  *(v5 + 128) = v77;
  type metadata accessor for SKAAsyncQueue.Item(0);
  (*(v17 + 104))(v20, *MEMORY[0x277D85778], v16);
  v74 = a2;

  v77 = v29;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v17 + 8))(v20, v16);
  v30 = *(v79 + 16);
  v67 = v24;
  v69 = v21;
  v30(v5 + OBJC_IVAR____TtC18StatusKitAgentCore13SKAAsyncQueue_streamContinuation, v24, v21);
  UUID.init()();
  v31 = *(v80 + 16);
  v71 = v5;
  v32 = v5 + OBJC_IVAR____TtC18StatusKitAgentCore13SKAAsyncQueue_traceID;
  v33 = v62;
  v75 = v15;
  v34 = v76;
  v31(v32, v15);
  if (v33)
  {
    v35 = one-time initialization token for logger;
    swift_unknownObjectRetain();
    if (v35 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, logger);

    swift_unknownObjectRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v83[0] = v40;
      *v39 = 136315394;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v83);
      *(v39 + 12) = 2080;
      swift_getObjectType();
      v82 = v33;
      swift_unknownObjectRetain();
      v41 = String.init<A>(describing:)();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v83);

      *(v39 + 14) = v43;
      _os_log_impl(&dword_220099000, v37, v38, "[%s] Starting queue isolated to: %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D77FF0](v40, -1, -1);
      MEMORY[0x223D77FF0](v39, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v44 = type metadata accessor for TaskPriority();
  (*(*(v44 - 8) + 56))(v81, 1, 1, v44);
  v45 = v70;
  (v31)(v70, v75, v34);
  v46 = v65;
  v47 = v66;
  (*(v66 + 16))(v65, v77, v78);
  v48 = v80;
  v49 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v50 = (v68 + *(v47 + 80) + v49) & ~*(v47 + 80);
  v51 = v50 + v63;
  v52 = (v50 + v63) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  *(v53 + 24) = 0;
  v54 = v53 + v49;
  v55 = v76;
  (*(v48 + 32))(v54, v45, v76);
  v56 = v78;
  (*(v47 + 32))(v53 + v50, v46, v78);
  *(v53 + v51) = v64;
  v57 = v53 + v52;
  v58 = v74;
  *(v57 + 8) = v73;
  *(v57 + 16) = v58;
  *(v53 + ((v52 + 31) & 0xFFFFFFFFFFFFFFF8)) = v72;
  v59 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v81, &async function pointer to partial apply for closure #1 in SKAAsyncQueue.init(name:loggingEnabled:isolation:), v53);
  (*(v48 + 8))(v75, v55);
  (*(v79 + 8))(v67, v69);
  (*(v47 + 8))(v77, v56);
  result = v71;
  *(v71 + OBJC_IVAR____TtC18StatusKitAgentCore13SKAAsyncQueue_task) = v59;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(uint64_t a1)
{
  return partial apply for closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(a1, closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:));
}

{
  return partial apply for closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(a1, closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:));
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SKAAsyncQueue.Condition and conformance SKAAsyncQueue.Condition()
{
  result = lazy protocol witness table cache variable for type SKAAsyncQueue.Condition and conformance SKAAsyncQueue.Condition;
  if (!lazy protocol witness table cache variable for type SKAAsyncQueue.Condition and conformance SKAAsyncQueue.Condition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKAAsyncQueue.Condition and conformance SKAAsyncQueue.Condition);
  }

  return result;
}

void type metadata completion function for SKAAsyncQueue()
{
  type metadata accessor for AsyncStream<SKAAsyncQueue.Item>.Continuation();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 144);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(*v7 + 152);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

{
  v16 = *(*v7 + 160);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void type metadata accessor for AsyncStream<SKAAsyncQueue.Item>.Continuation()
{
  if (!lazy cache variable for type metadata for AsyncStream<SKAAsyncQueue.Item>.Continuation)
  {
    type metadata accessor for SKAAsyncQueue.Item(255);
    v0 = type metadata accessor for AsyncStream.Continuation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncStream<SKAAsyncQueue.Item>.Continuation);
    }
  }
}

uint64_t getEnumTagSinglePayload for SKAAsyncQueue.Condition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SKAAsyncQueue.Condition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t type metadata completion function for SKAAsyncQueue.Item()
{
  result = type metadata accessor for ()();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)()
{
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = *(type metadata accessor for CheckedContinuation() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(v0 + v4, v6, v7, v2);
}

{
  v2 = *(v0 + 16);
  v3 = *(type metadata accessor for CheckedContinuation() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)(v0 + v4, v6, v7, v2);
}

uint64_t partial apply for closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait(_:_:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in closure #1 in SKAAsyncQueue.enqueueAndWait(_:_:)(v0 + v3, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t partial apply for closure #1 in SKAAsyncQueue.init(name:loggingEnabled:isolation:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLVGMd, &_sScSy18StatusKitAgentCore13SKAAsyncQueueC4Item33_9D805B377257737C86D7DAD81D018C88LLVGMR) - 8);
  v8 = (v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = ((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v9);
  v14 = v1 + (v9 & 0xFFFFFFFFFFFFFFF8);
  v15 = *(v14 + 8);
  v16 = *(v14 + 16);
  v17 = *(v1 + v10);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in SKAAsyncQueue.init(name:loggingEnabled:isolation:)(a1, v11, v12, v1 + v5, v1 + v8, v13, v15, v16);
}

uint64_t partial apply for closure #1 in closure #1 in SKAAsyncQueue.init(name:loggingEnabled:isolation:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in closure #1 in SKAAsyncQueue.init(name:loggingEnabled:isolation:)(a1, v4, v5, v7, v6);
}

void type metadata accessor for SKStatusSubscriptionValidationTokenValidity(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id SKAError.__allocating_init(_:customDescription:underlyingError:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = specialized SKAError.init(_:customDescription:underlyingError:)(a1, a2, a3, a4);

  return v10;
}

id SKAError.init(_:customDescription:underlyingError:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = specialized SKAError.init(_:customDescription:underlyingError:)(a1, a2, a3, a4);

  return v5;
}

uint64_t SKAError.description.getter()
{
  v1 = v0;
  v16 = 0x6F727245414B533CLL;
  v17 = 0xEB00000000282072;
  v2 = *(v0 + OBJC_IVAR___SKAError_code);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223D76B90](v3);

  MEMORY[0x223D76B90](14889, 0xE200000000000000);
  v15[0] = 32;
  v15[1] = 0xE100000000000000;
  if (*(v0 + OBJC_IVAR___SKAError_customDescription + 8))
  {
    v4 = *(v0 + OBJC_IVAR___SKAError_customDescription);
    v5 = *(v0 + OBJC_IVAR___SKAError_customDescription + 8);
  }

  else
  {
    v4 = SKAErrorCode.defaultDescription.getter(v2);
    v5 = v6;
  }

  MEMORY[0x223D76B90](v4, v5);

  MEMORY[0x223D76B90](v15[0], v15[1]);

  v7 = *(v0 + OBJC_IVAR___SKAError_underlyingError);
  if (v7)
  {
    v8 = v7;
    _StringGuts.grow(_:)(22);

    v15[0] = 0xD000000000000014;
    v15[1] = 0x80000002201AB530;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    MEMORY[0x223D76B90](v10, v12);

    MEMORY[0x223D76B90](0xD000000000000014, 0x80000002201AB530);
  }

  if (*(*(v1 + OBJC_IVAR___SKAError_userInfo) + 16))
  {
    strcpy(v15, ", user info: ");
    HIWORD(v15[1]) = -4864;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
    v13 = Dictionary.description.getter();
    MEMORY[0x223D76B90](v13);

    MEMORY[0x223D76B90](v15[0], v15[1]);
  }

  MEMORY[0x223D76B90](62, 0xE100000000000000);

  return v16;
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        outlined init with copy of Any(*(a1 + 56) + 32 * v15, v31);
        *&v30 = v17;
        *(&v30 + 1) = v18;
        v28[2] = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v19 = v30;
        _sypWOb_0(v29, &v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
        swift_dynamicCast();
        _sypWOb_0(&v25, v27);
        _sypWOb_0(v27, v28);
        _sypWOb_0(v28, &v26);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = _sypWOb_0(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = _sypWOb_0(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    _sypWOb_0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    _sypWOb_0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    _sypWOb_0(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = _sypWOb_0(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyOypGMd, &_ss18_DictionaryStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyOypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v9 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    outlined init with copy of Decodable & Encodable(*(a1 + 56) + 48 * v12, v27 + 8);
    *&v27[0] = v13;
    v25[0] = v27[0];
    v25[1] = v27[1];
    v25[2] = v27[2];
    v26 = v28;
    outlined init with take of Decodable & Encodable((v25 + 8), v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEpMd, &_sSe_SEpMR);
    swift_dynamicCast();
    _sypWOb_0((v23 + 8), v24);
    _sypWOb_0(v24, v23);
    v14 = *(v2 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x223D772F0](v13);
    result = Hasher._finalize()();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    *(*(v2 + 48) + 8 * v10) = v13;
    result = _sypWOb_0(v23, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id SKAError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Error._domain.getter in conformance SKAError(uint64_t a1, uint64_t a2)
{
  v3 = lazy protocol witness table accessor for type SKAError and conformance SKAError(&lazy protocol witness table cache variable for type SKAError and conformance SKAError, a2, type metadata accessor for SKAError);

  return MEMORY[0x28211F4B8](a1, v3);
}

uint64_t protocol witness for Error._code.getter in conformance SKAError(uint64_t a1, uint64_t a2)
{
  v3 = lazy protocol witness table accessor for type SKAError and conformance SKAError(&lazy protocol witness table cache variable for type SKAError and conformance SKAError, a2, type metadata accessor for SKAError);

  return MEMORY[0x28211F4A8](a1, v3);
}

id SKAErrorUserInfoKey.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SKAErrorUserInfoKey.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SKAErrorUserInfoKey();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SKAErrorUserInfoKey.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SKAErrorUserInfoKey();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t NSError.isSKAError.getter()
{
  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == 0x726F727245414B53 && v4 == 0xEE006E69616D6F44)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v6 & 1;
  }
}

uint64_t @objc NSError.shouldReauthForRetry.getter(void *a1)
{
  v1 = a1;
  v2 = NSError.shouldReauthForRetry.getter();

  return v2 & 1;
}

uint64_t NSError.shouldReauthForRetry.getter()
{
  result = [v0 isSKAError];
  if (result)
  {
    v2 = specialized SKAErrorCode.init(rawValue:)([v0 code]);
    if (v3)
    {
      return 0;
    }

    switch(v2)
    {
      case 700:
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        __swift_project_value_buffer(v10, logger);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_20;
        }

        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "Error is an auth missing auth token error, we should attempt reauth";
        break;
      case 801:
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, logger);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_20;
        }

        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "Error is an auth failed error, we should attempt reauth";
        break;
      case 800:
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        __swift_project_value_buffer(v4, logger);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_20;
        }

        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "Error is an auth expired error, we should attempt reauth";
        break;
      default:
        return 0;
    }

    _os_log_impl(&dword_220099000, v5, v6, v8, v7, 2u);
    MEMORY[0x223D77FF0](v7, -1, -1);
LABEL_20:

    return 1;
  }

  return result;
}

uint64_t @objc NSError.retryIntervalSeconds.getter(void *a1)
{
  v1 = a1;
  v2 = NSError.retryIntervalSeconds.getter();

  return v2;
}

uint64_t NSError.retryIntervalSeconds.getter()
{
  v1 = [v0 userInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000027, 0x80000002201AB570), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v7);

    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0;
}

unint64_t ResponseStatus.serverResponseDescription.getter(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v1 = @"AUTH_FAILED";
        v7 = @"AUTH_FAILED";
      }

      else
      {
        v1 = @"BAD_REQUEST";
        v4 = @"BAD_REQUEST";
      }

      goto LABEL_21;
    }

    if (!a1)
    {
      v1 = @"SUCCESS";
      v6 = @"SUCCESS";
      goto LABEL_21;
    }

    if (a1 == 1)
    {
      v1 = @"AUTH_EXPIRED";
      v3 = @"AUTH_EXPIRED";
      goto LABEL_21;
    }
  }

  else
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        v1 = @"CHANNEL_IDENTITY_VALIDATION_FAILED";
        v9 = @"CHANNEL_IDENTITY_VALIDATION_FAILED";
      }

      else
      {
        v1 = @"INTERNAL_ERROR";
        v5 = @"INTERNAL_ERROR";
      }

      goto LABEL_21;
    }

    switch(a1)
    {
      case 6:
        v1 = @"STALE_PUBLISH_REJECTED";
        v8 = @"STALE_PUBLISH_REJECTED";
        goto LABEL_21;
      case 7:
        v1 = @"RATE_LIMITED";
        v10 = @"RATE_LIMITED";
        goto LABEL_21;
      case 8:
        v1 = @"INVALID_NONCE";
        v2 = @"INVALID_NONCE";
        goto LABEL_21;
    }
  }

  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", a1];
LABEL_21:
  v11 = v1;
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    MEMORY[0x223D76B90](0x7463657078656E75, 0xEC00000028206465);
    type metadata accessor for ResponseStatus(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x223D76B90](41, 0xE100000000000000);
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  _StringGuts.grow(_:)(48);

  MEMORY[0x223D76B90](v13, v15);

  return 0xD00000000000002ELL;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = type metadata accessor for Date();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVGSaySo021SKADatabaseSubscribedcD0CGGMd, &_ss18_DictionaryStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVGSaySo021SKADatabaseSubscribedcD0CGGMR);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      lazy protocol witness table accessor for type LSKKey<Data> and conformance LSKKey<A>(&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for SKALocalStatusServer.FailedDelivery(0);
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SKALocalStatusServer.FailedDelivery.ID(0);
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18StatusKitAgentCore08SKALocalC6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDVAHGMd, &_ss18_DictionaryStorageCy18StatusKitAgentCore08SKALocalC6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDVAHGMR);
  v50 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v12 + 16))
  {
    v44 = v3;
    v45 = v12;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v12 + 48);
      v51 = *(v47 + 72);
      v29 = v28 + v51 * v27;
      v30 = v46;
      if (v50)
      {
        outlined init with take of SKALocalStatusServer.FailedDelivery.ID(v29, v46, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
        v31 = *(v49 + 72);
        outlined init with take of SKALocalStatusServer.FailedDelivery.ID(*(v12 + 56) + v31 * v27, v52, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      }

      else
      {
        outlined init with copy of SKALocalStatusServer.FailedDelivery.ID(v29, v46, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
        v31 = *(v49 + 72);
        outlined init with copy of SKALocalStatusServer.FailedDelivery.ID(*(v12 + 56) + v31 * v27, v52, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      }

      v32 = *(v15 + 40);
      Hasher.init(_seed:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
      lazy protocol witness table accessor for type LSKKey<Data> and conformance LSKKey<A>(&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>);
      dispatch thunk of Hashable.hash(into:)();
      v33 = (v30 + *(v48 + 20));
      v34 = *v33;
      v35 = v33[1];
      String.hash(into:)();
      result = Hasher._finalize()();
      v36 = -1 << *(v15 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v22 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v22 + 8 * v38);
          if (v42 != -1)
          {
            v23 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v37) & ~*(v22 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      outlined init with take of SKALocalStatusServer.FailedDelivery.ID(v30, *(v15 + 48) + v51 * v23, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      result = outlined init with take of SKALocalStatusServer.FailedDelivery.ID(v52, *(v15 + 56) + v31 * v23, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      ++*(v15 + 16);
      v12 = v45;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v12 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v17, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v43;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      lazy protocol witness table accessor for type LSKKey<Data> and conformance LSKKey<A>(&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVG7Combine19CurrentValueSubjectCySayAC08LSKLocalD11ObservationVyAHGGs5NeverOGGMd, &_ss18_DictionaryStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVG7Combine19CurrentValueSubjectCySayAC08LSKLocalD11ObservationVyAHGGs5NeverOGGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVG7Combine19CurrentValueSubjectCyAC012LSKPublishedD0VyAHGs5NeverOGGMd, &_ss18_DictionaryStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVG7Combine19CurrentValueSubjectCyAC012LSKPublishedD0VyAHGs5NeverOGGMR);
}

{
  v4 = v3;
  v8 = type metadata accessor for SKALocalStatusServer.FailedDelivery.ID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v24 = *v4;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of SKALocalStatusServer.FailedDelivery.ID(a2, v11, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for SKALocalStatusServer.FailedDelivery(0) - 8) + 72) * v14;

  return outlined assign with take of SKALocalStatusServer.FailedDelivery(a1, v22);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v30 = a4;
  v31 = a5;
  v6 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = *v5;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(v30, v31);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a3 & 1, v30, v31);
    v27 = *v6;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return specialized _NativeDictionary._insert(at:key:value:)(v17, v14, a1, v23);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v18 = *v4;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 48 * v9);
    __swift_destroy_boxed_opaque_existential_0(v21);

    return outlined init with take of Decodable & Encodable(a1, v21);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v20);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 48 * v11;
    v24 = *(v23 + 16);
    v25 = a1[2];
    *(v23 + 16) = a1[1];
    *(v23 + 32) = v25;
    *v23 = *a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v27 = (v22[6] + 16 * v11);
  *v27 = a2;
  v27[1] = a3;
  v28 = (v22[7] + 48 * v11);
  v29 = a1[1];
  *v28 = *a1;
  v28[1] = v29;
  v28[2] = a1[2];
  v30 = v22[2];
  v15 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v31;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for SKALocalStatusServer.FailedDelivery.ID(0);
  outlined init with take of SKALocalStatusServer.FailedDelivery.ID(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
  v10 = a4[7];
  v11 = type metadata accessor for SKALocalStatusServer.FailedDelivery(0);
  result = outlined init with take of SKALocalStatusServer.FailedDelivery.ID(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for SKALocalStatusServer.FailedDelivery);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Decodable & Encodable(a3, (a4[7] + 48 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        _sypWOb_0(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2S4name_SS15modelIdentifiertGMd, &_ss18_DictionaryStorageCyS2S4name_SS15modelIdentifiertGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = (*(v4 + 56) + v17);
        *v28 = v23;
        v28[1] = v24;
        v28[2] = v25;
        v28[3] = v26;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyOypGMd, &_ss18_DictionaryStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyOypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = _sypWOb_0(v19, (*(v4 + 56) + 32 * v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyOSe_SEpGMd, &_ss18_DictionaryStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyOSe_SEpGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of Decodable & Encodable(*(v2 + 56) + 48 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = outlined init with take of Decodable & Encodable(v19, (*(v4 + 56) + 48 * v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS18StatusKitAgentCore14SKAPowerLoggerC0G16LogEventMetadataVGMd, &_ss18_DictionaryStorageCySS18StatusKitAgentCore14SKAPowerLoggerC0G16LogEventMetadataVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = *(v22 + 40);
        v25 = (*(v4 + 48) + v18);
        v26 = *v22;
        v27 = *(v22 + 24);
        *v25 = v21;
        v25[1] = v20;
        v28 = *(v4 + 56) + v17;
        *v28 = v26;
        *(v28 + 16) = v23;
        *(v28 + 24) = v27;
        *(v28 + 40) = v24;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS18StatusKitAgentCore14SKAPowerLoggerC0G11LogMetadata33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMd, &_ss18_DictionaryStorageCySS18StatusKitAgentCore14SKAPowerLoggerC0G11LogMetadata33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo37SKADatabasePublishedLocalStatusDeviceCGMd, &_ss18_DictionaryStorageCySSSo37SKADatabasePublishedLocalStatusDeviceCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo32SKADatabaseSubscribedLocalStatusCGMd, &_ss18_DictionaryStorageCySSSo32SKADatabaseSubscribedLocalStatusCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo9IDSDeviceCGMd, &_ss18_DictionaryStorageCySSSo9IDSDeviceCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v36 = type metadata accessor for Date();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVGSaySo021SKADatabaseSubscribedcD0CGGMd, &_ss18_DictionaryStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVGSaySo021SKADatabaseSubscribedcD0CGGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVG7Combine19CurrentValueSubjectCyAC012LSKPublishedD0VyAHGs5NeverOGGMd, &_ss18_DictionaryStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVG7Combine19CurrentValueSubjectCyAC012LSKPublishedD0VyAHGs5NeverOGGMR);
}

{
  v1 = v0;
  v2 = type metadata accessor for SKALocalStatusServer.FailedDelivery(0);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SKALocalStatusServer.FailedDelivery.ID(0);
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18StatusKitAgentCore08SKALocalC6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDVAHGMd, &_ss18_DictionaryStorageCy18StatusKitAgentCore08SKALocalC6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDVAHGMR);
  v8 = *v0;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = (v8 + 64);
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v8 + 64;
    if (v10 != v8 || result >= &v12[8 * v13])
    {
      result = memmove(result, v12, 8 * v13);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v35 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = v31;
        v25 = *(v32 + 72) * v23;
        outlined init with copy of SKALocalStatusServer.FailedDelivery.ID(*(v8 + 48) + v25, v31, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
        v26 = v33;
        v27 = *(v34 + 72) * v23;
        outlined init with copy of SKALocalStatusServer.FailedDelivery.ID(*(v8 + 56) + v27, v33, type metadata accessor for SKALocalStatusServer.FailedDelivery);
        v28 = v35;
        outlined init with take of SKALocalStatusServer.FailedDelivery.ID(v24, *(v35 + 48) + v25, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
        result = outlined init with take of SKALocalStatusServer.FailedDelivery.ID(v26, *(v28 + 56) + v27, type metadata accessor for SKALocalStatusServer.FailedDelivery);
        v18 = v36;
      }

      while (v36);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v29;
        v10 = v35;
        goto LABEL_18;
      }

      v22 = *(v30 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v36 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

char *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v40 = *(v38 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = (v8 + 64);
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    v33 = v5;
    v34 = v8 + 64;
    if (v10 != v8 || result >= &v12[8 * v13])
    {
      result = memmove(result, v12, 8 * v13);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v39 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = v40;
        v25 = *(v40 + 72) * v23;
        v27 = v37;
        v26 = v38;
        (*(v40 + 16))(v37, *(v8 + 48) + v25, v38);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v8;
        v30 = v39;
        (*(v24 + 32))(*(v39 + 48) + v25, v27, v26);
        v31 = *(v30 + 56);
        v8 = v29;
        *(v31 + 8 * v23) = v28;

        v18 = v41;
      }

      while (v41);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v33;
        v10 = v39;
        goto LABEL_18;
      }

      v22 = *(v34 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v5 = v10;
  }

  return result;
}

id specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s8Sendable_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs8Sendable_pGMd, &_ss18_DictionaryStorageCySSs8Sendable_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Sendable)(v4, &v13, &_sSS_s8Sendable_ptMd, &_sSS_s8Sendable_ptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = _sypWOb_0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id specialized SKAError.init(_:customDescription:underlyingError:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR___SKAError_code] = a1;
  v10 = &v4[OBJC_IVAR___SKAError_customDescription];
  *v10 = a2;
  *(v10 + 1) = a3;
  if (a4)
  {
    v11 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for NSError();
    v12 = swift_dynamicCast();
    v13 = v15;
    if (!v12)
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  *&v4[OBJC_IVAR___SKAError_underlyingError] = v13;
  *&v4[OBJC_IVAR___SKAError_userInfo] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s8Sendable_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v16.receiver = v4;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14LocalStatusKit6LSKKeyVy10Foundation4DataVG_7Combine19CurrentValueSubjectCySayAC08LSKLocalD11ObservationVyAHGGs5NeverOGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = static _DictionaryStorage.allocate(capacity:)();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      outlined init with copy of (String, Sendable)(v17, v13, a2, v28);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DateVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4DateVtMd, &_sSS_10Foundation4DateVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Sendable)(v10, v6, &_sSS_10Foundation4DateVtMd, &_sSS_10Foundation4DateVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Date();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC18StatusKitAgentCore08SKALocalC6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDV_AHTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDV_AFtMd, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDV_AFtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18StatusKitAgentCore08SKALocalC6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDVAHGMd, &_ss18_DictionaryStorageCy18StatusKitAgentCore08SKALocalC6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDVAHGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Sendable)(v10, v6, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDV_AFtMd, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDV_AFtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for SKALocalStatusServer.FailedDelivery.ID(0);
      outlined init with take of SKALocalStatusServer.FailedDelivery.ID(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      v17 = v8[7];
      v18 = type metadata accessor for SKALocalStatusServer.FailedDelivery(0);
      result = outlined init with take of SKALocalStatusServer.FailedDelivery.ID(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Sendable)(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = _sypWOb_0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SS4name_SS15modelIdentifiertTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2S4name_SS15modelIdentifiertGMd, &_ss18_DictionaryStorageCyS2S4name_SS15modelIdentifiertGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18StatusKitAgentCore14SKAPowerLoggerC0G16LogEventMetadataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS18StatusKitAgentCore14SKAPowerLoggerC0G16LogEventMetadataVGMd, &_ss18_DictionaryStorageCySS18StatusKitAgentCore14SKAPowerLoggerC0G16LogEventMetadataVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 8)
    {
      v20 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;
      v7 = i[1];
      v9 = i[2];
      v10 = i[3];
      v12 = i[4];
      v11 = i[5];

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = (v3[7] + 48 * result);
      *v16 = v8;
      v16[1] = v7;
      v16[2] = v9;
      v16[3] = v10;
      v16[4] = v12;
      v16[5] = v11;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18StatusKitAgentCore14SKAPowerLoggerC0G11LogMetadata33_9FCD8C5B33CE418606FD932C9F8D29EFLLVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS18StatusKitAgentCore14SKAPowerLoggerC0G11LogMetadata33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMd, &_ss18_DictionaryStorageCySS18StatusKitAgentCore14SKAPowerLoggerC0G11LogMetadata33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id specialized static SKAError.errorWithCode(_:customDescription:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SKAError();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___SKAError_code] = a1;
  v8 = &v7[OBJC_IVAR___SKAError_customDescription];
  *v8 = a2;
  *(v8 + 1) = a3;
  *&v7[OBJC_IVAR___SKAError_underlyingError] = 0;

  *&v7[OBJC_IVAR___SKAError_userInfo] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s8Sendable_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v16.receiver = v7;
  v16.super_class = v6;
  v9 = objc_msgSendSuper2(&v16, sel_init);
  v10 = *&v9[OBJC_IVAR___SKAError_code];
  SKAError.errorUserInfo.getter();
  v11 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v12 = MEMORY[0x223D76B00](0x726F727245414B53, 0xEE006E69616D6F44);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v11 initWithDomain:v12 code:v10 userInfo:isa];

  return v14;
}

id specialized static SKAError.errorWithCode(_:underlyingError:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for SKAError());
  v5 = a2;
  v6 = specialized SKAError.init(_:customDescription:underlyingError:)(a1, 0, 0, a2);

  v7 = *&v6[OBJC_IVAR___SKAError_code];
  SKAError.errorUserInfo.getter();
  v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v9 = MEMORY[0x223D76B00](0x726F727245414B53, 0xEE006E69616D6F44);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v8 initWithDomain:v9 code:v7 userInfo:isa];

  return v11;
}

id specialized static SKAError.errorWithCode(_:customDescription:underlyingError:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = objc_allocWithZone(type metadata accessor for SKAError());
  v9 = a4;

  v10 = specialized SKAError.init(_:customDescription:underlyingError:)(a1, a2, a3, a4);

  v11 = *&v10[OBJC_IVAR___SKAError_code];
  SKAError.errorUserInfo.getter();
  v12 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v13 = MEMORY[0x223D76B00](0x726F727245414B53, 0xEE006E69616D6F44);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [v12 initWithDomain:v13 code:v11 userInfo:isa];

  return v15;
}

uint64_t specialized static SKAError.errorCode(from:)(int a1)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 801;
      }

      else
      {
        return 802;
      }
    }

    else
    {
      if (a1)
      {
        if (a1 == 1)
        {
          return 800;
        }

        return 808;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, logger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_220099000, v3, v4, "Response status was successful, this is not a valid error", v5, 2u);
        MEMORY[0x223D77FF0](v5, -1, -1);
      }

      return 9999;
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 805;
        case 7:
          return 806;
        case 8:
          return 807;
      }

      return 808;
    }

    if (a1 == 4)
    {
      return 803;
    }

    else
    {
      return 804;
    }
  }
}

id specialized static SKAError.errorWithResponseStatus(_:)(int a1)
{
  v1 = specialized static SKAError.errorCode(from:)(a1);
  v2 = type metadata accessor for SKAError();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___SKAError_code] = v1;
  v4 = &v3[OBJC_IVAR___SKAError_customDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR___SKAError_underlyingError] = 0;
  *&v3[OBJC_IVAR___SKAError_userInfo] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s8Sendable_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v12.receiver = v3;
  v12.super_class = v2;
  v5 = objc_msgSendSuper2(&v12, sel_init);
  v6 = *&v5[OBJC_IVAR___SKAError_code];
  SKAError.errorUserInfo.getter();
  v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v8 = MEMORY[0x223D76B00](0x726F727245414B53, 0xEE006E69616D6F44);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [v7 initWithDomain:v8 code:v6 userInfo:isa];

  return v10;
}

id specialized static SKAError.errorWithResponseStatus(_:retryInterval:)(int a1, int a2)
{
  v3 = specialized static SKAError.errorCode(from:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_s8Sendable_ptGMd, &_ss23_ContiguousArrayStorageCySS_s8Sendable_ptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2201A7280;
  *(inited + 32) = 0xD000000000000027;
  v5 = inited + 32;
  *(inited + 40) = 0x80000002201AB570;
  *(inited + 72) = MEMORY[0x277D84CC0];
  *(inited + 48) = a2;
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s8Sendable_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of UUID?(v5, &_sSS_s8Sendable_ptMd, &_sSS_s8Sendable_ptMR);
  v7 = type metadata accessor for SKAError();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___SKAError_code] = v3;
  v9 = &v8[OBJC_IVAR___SKAError_customDescription];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v8[OBJC_IVAR___SKAError_underlyingError] = 0;
  *&v8[OBJC_IVAR___SKAError_userInfo] = v6;
  v17.receiver = v8;
  v17.super_class = v7;
  v10 = objc_msgSendSuper2(&v17, sel_init);
  v11 = *&v10[OBJC_IVAR___SKAError_code];
  SKAError.errorUserInfo.getter();
  v12 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v13 = MEMORY[0x223D76B00](0x726F727245414B53, 0xEE006E69616D6F44);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [v12 initWithDomain:v13 code:v11 userInfo:isa];

  return v15;
}

uint64_t lazy protocol witness table accessor for type LSKKey<Data> and conformance LSKKey<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of SKALocalStatusServer.FailedDelivery.ID(uint64_t a1)
{
  v2 = type metadata accessor for SKALocalStatusServer.FailedDelivery.ID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of SKALocalStatusServer.FailedDelivery.ID(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of SKALocalStatusServer.FailedDelivery.ID(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of SKALocalStatusServer.FailedDelivery(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKALocalStatusServer.FailedDelivery(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type SKAError and conformance SKAError(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of Decodable & Encodable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *outlined init with take of Decodable & Encodable(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t outlined init with copy of (String, Sendable)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SKAErrorCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized SKAErrorCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type SKAErrorCode and conformance SKAErrorCode()
{
  result = lazy protocol witness table cache variable for type SKAErrorCode and conformance SKAErrorCode;
  if (!lazy protocol witness table cache variable for type SKAErrorCode and conformance SKAErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKAErrorCode and conformance SKAErrorCode);
  }

  return result;
}

uint64_t one-time initialization function for queue()
{
  type metadata accessor for OS_dispatch_queue();
  result = static OS_dispatch_queue.main.getter();
  static SKAPrimaryQueueActor.queue = result;
  return result;
}

id static SKAPrimaryQueueActor.queue.getter()
{
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  v1 = static SKAPrimaryQueueActor.queue;

  return v1;
}

uint64_t SKAPrimaryQueueActor.unownedExecutor.getter()
{
  type metadata accessor for SKAPrimaryQueueActor();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor(&lazy protocol witness table cache variable for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor, v0, type metadata accessor for SKAPrimaryQueueActor);

  return SerialExecutor.asUnownedSerialExecutor()();
}

uint64_t static SKAPrimaryQueueActor.shared.getter()
{
  type metadata accessor for SKAPrimaryQueueActor();

  return swift_initStaticObject();
}

uint64_t SKAPrimaryQueueActor.enqueue(_:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v1;
  aBlock[4] = partial apply for closure #1 in SKAPrimaryQueueActor.enqueue(_:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223D76E80](0, v12, v7, v14);
  _Block_release(v14);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

uint64_t closure #1 in SKAPrimaryQueueActor.enqueue(_:)(uint64_t a1)
{
  type metadata accessor for SKAPrimaryQueueActor();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor(&lazy protocol witness table cache variable for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor, v2, type metadata accessor for SKAPrimaryQueueActor);
  v4 = SerialExecutor.asUnownedSerialExecutor()();

  return MEMORY[0x282200988](a1, v4, v3);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

Swift::Void __swiftcall SKAPrimaryQueueActor.checkIsolated()()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  v5 = static SKAPrimaryQueueActor.queue;
  *v4 = static SKAPrimaryQueueActor.queue;
  (*(v1 + 104))(v4, *MEMORY[0x277D85200], v0);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v4, v0);
  if ((v5 & 1) == 0)
  {
    __break(1u);
  }
}

uint64_t protocol witness for static GlobalActor.shared.getter in conformance SKAPrimaryQueueActor()
{
  type metadata accessor for SKAPrimaryQueueActor();

  return swift_initStaticObject();
}

uint64_t protocol witness for static GlobalActor.sharedUnownedExecutor.getter in conformance SKAPrimaryQueueActor(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SKAPrimaryQueueActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for SerialExecutor.enqueue(_:) in conformance SKAPrimaryQueueActor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = type metadata accessor for SKAPrimaryQueueActor();
  v7 = lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor(&lazy protocol witness table cache variable for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor, v6, type metadata accessor for SKAPrimaryQueueActor);

  return a4(a1, v5, v7);
}

uint64_t protocol witness for SerialExecutor.asUnownedSerialExecutor() in conformance SKAPrimaryQueueActor()
{
  type metadata accessor for SKAPrimaryQueueActor();

  return SerialExecutor.asUnownedSerialExecutor()();
}

uint64_t protocol witness for SerialExecutor.isSameExclusiveExecutionContext(other:) in conformance SKAPrimaryQueueActor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SKAPrimaryQueueActor();

  return MEMORY[0x2822004B8](a1, v5, a3);
}

Swift::Bool_optional protocol witness for SerialExecutor.isIsolatingCurrentContext() in conformance SKAPrimaryQueueActor()
{
  type metadata accessor for SKAPrimaryQueueActor();

  return SerialExecutor.isIsolatingCurrentContext()();
}

uint64_t _s18StatusKitAgentCore20SKAPrimaryQueueActorCSchAASch21asUnownedTaskExecutors0ijK0VyFTW()
{
  type metadata accessor for SKAPrimaryQueueActor();

  return SerialExecutor.asUnownedSerialExecutor()();
}

uint64_t protocol witness for Executor.enqueue(_:) in conformance SKAPrimaryQueueActor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SKAPrimaryQueueActor();

  return MEMORY[0x2822002B8](a1, v5, a3);
}

{
  v5 = type metadata accessor for SKAPrimaryQueueActor();

  return MEMORY[0x2822002B0](a1, v5, a3);
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of (String, Sendable)(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of UUID?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of UUID?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of UUID?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void *specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t one-time initialization function for log()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  __swift_project_value_buffer(v0, log);
  return static Logger.localStatus.getter();
}

Swift::Void __swiftcall SKALocalStatusServer.objcShutdown()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in SKALocalStatusServer.objcShutdown(), v6);
}

uint64_t closure #1 in SKALocalStatusServer.objcShutdown()()
{
  v1 = *(v0 + 16);
  SKALocalStatusServer.shutdown()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in SKALocalStatusServer.objcShutdown()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in SKALocalStatusServer.objcShutdown()(a1, v4, v5, v6);
}

Swift::Void __swiftcall SKALocalStatusServer.shutdown()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v38[-v4];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v0 + 152);
  SFXPCListener.invalidate()();
  v12 = OBJC_IVAR___SKALocalStatusServer_idsDeviceProviderToken;
  swift_beginAccess();
  outlined init with copy of (String, Sendable)(v1 + v12, v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of UUID?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v13 = *(v1 + 184);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v13 unregisterIDSDeviceChangedObserver_];

    (*(v7 + 8))(v10, v6);
  }

  [*(v1 + 192) invalidate];
  v15 = OBJC_IVAR___SKALocalStatusServer_subscriptionSubjects;
  swift_beginAccess();
  v16 = *(v1 + v15);
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 64);
  v20 = (v17 + 63) >> 6;
  v21 = *(v1 + v15);

  v22 = 0;
  if (v19)
  {
    while (1)
    {
      v23 = v22;
LABEL_12:
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v25 = *(*(v16 + 56) + ((v23 << 9) | (8 * v24)));
      v38[8] = 1;

      CurrentValueSubject.send(completion:)();

      if (!v19)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v23 >= v20)
    {
      break;
    }

    v19 = *(v16 + 64 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      goto LABEL_12;
    }
  }

  v26 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
  swift_beginAccess();
  v27 = *(v1 + v26);
  v28 = 1 << *(v27 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v27 + 64);
  v31 = (v28 + 63) >> 6;
  v32 = *(v1 + v26);

  v33 = 0;
  while (v30)
  {
    v34 = v33;
LABEL_22:
    v35 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v36 = *(*(v27 + 56) + ((v34 << 9) | (8 * v35)));
    v38[7] = 1;

    CurrentValueSubject.send(completion:)();
  }

  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v31)
    {

      v37 = *(v1 + OBJC_IVAR___SKALocalStatusServer_launchOnDemandTransaction);
      *(v1 + OBJC_IVAR___SKALocalStatusServer_launchOnDemandTransaction) = 0;
      swift_unknownObjectRelease();
      return;
    }

    v30 = *(v27 + 64 + 8 * v34);
    ++v33;
    if (v30)
    {
      v33 = v34;
      goto LABEL_22;
    }
  }

LABEL_26:
  __break(1u);
}

id *SKALocalStatusServer.__allocating_init(idsDeviceProvider:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return SKALocalStatusServer.init(idsDeviceProvider:)(a1);
}

id *SKALocalStatusServer.init(idsDeviceProvider:)(void *a1)
{
  v2 = v1;
  v88 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v78 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v78 - v8;
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v80 = *(v9 - 8);
  v81 = v9;
  v10 = *(v80 + 64);
  MEMORY[0x28223BE20](v9);
  v79 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v78 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  swift_defaultActor_initialize();
  v1[14] = 0xD000000000000018;
  v1[15] = 0x80000002201AC1D0;
  v1[16] = 0xD00000000000001DLL;
  v1[17] = 0x80000002201AC1F0;
  v17 = OBJC_IVAR___SKALocalStatusServer_idsDeviceProviderToken;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v83 = *(v19 + 56);
  v84 = v18;
  v82 = v19 + 56;
  v83(v1 + v17, 1, 1);
  *(v1 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask) = 0;
  *(v1 + OBJC_IVAR___SKALocalStatusServer_recentPendingStatus) = 1;
  *(v1 + OBJC_IVAR___SKALocalStatusServer_screenOffStatusTimeoutSeconds) = 259200;
  *(v1 + OBJC_IVAR___SKALocalStatusServer_launchOnDemandTransaction) = 0;
  v20 = (v1 + OBJC_IVAR___SKALocalStatusServer_browseTask);
  *v20 = 0u;
  v20[1] = 0u;
  v21 = _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlF7Sharing15SFXPCInvocationCm_Ttg5();
  v22 = *(v21 + 52);
  v23 = (*(v21 + 48) + 7) & 0x1FFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2201A7700;
  *(v24 + 32) = type metadata accessor for PublishStatusInvocation();
  *(v24 + 40) = type metadata accessor for LocalStatusInvocation();
  *(v24 + 48) = type metadata accessor for SubscribeStatusInvocation();
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, log);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock = v29;
    *v28 = 136315138;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing15SFXPCInvocationCmMd, &_s7Sharing15SFXPCInvocationCmMR);
    v31 = MEMORY[0x223D76C00](v24, v30);
    v33 = v32;

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &aBlock);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_220099000, v26, v27, "Loaded XPC invocation classes: [%s]", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x223D77FF0](v29, -1, -1);
    MEMORY[0x223D77FF0](v28, -1, -1);
  }

  else
  {
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.unspecified.getter();
  v35 = MEMORY[0x277D84F90];
  aBlock = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v80 + 104))(v79, *MEMORY[0x277D85260], v81);
  v2[18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing13SFXPCListenerCy18StatusKitAgentCore08SKALocalC6ServerCGMd, &_s7Sharing13SFXPCListenerCy18StatusKitAgentCore08SKALocalC6ServerCGMR);
  type metadata accessor for LSKLocalStatusClient();
  static LSKLocalStatusClient.xpcMachServiceName.getter();
  v36 = v2[18];
  v2[19] = SFXPCListener.__allocating_init(machServiceName:queue:)();
  v2[20] = [objc_allocWithZone(type metadata accessor for SKALocalStatusServer.DatabaseDelegate()) init];
  v37 = [objc_opt_self() sharedInstance];
  v38 = [v37 databaseProvider];

  v2[21] = v38;
  v39 = [objc_allocWithZone(SKADatabaseManager) initWithDatabaseProvider:v38 delegate:v2[20]];
  v40 = v88;
  v2[22] = v39;
  v2[23] = v40;
  *(v2 + OBJC_IVAR___SKALocalStatusServer_idsDeviceRecipientIDs) = v35;
  v41 = objc_allocWithZone(MEMORY[0x277D44160]);
  swift_unknownObjectRetain();
  v42 = [v41 init];
  v2[24] = v42;
  [v42 setDispatchQueue_];
  [v2[24] setControlFlags_];
  *(v2 + OBJC_IVAR___SKALocalStatusServer_subscriptionSubjects) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14LocalStatusKit6LSKKeyVy10Foundation4DataVG_7Combine19CurrentValueSubjectCySayAC08LSKLocalD11ObservationVyAHGGs5NeverOGTt0g5Tf4g_n(v35);
  *(v2 + OBJC_IVAR___SKALocalStatusServer_deliverySubjects) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14LocalStatusKit6LSKKeyVy10Foundation4DataVG_7Combine19CurrentValueSubjectCyAC012LSKPublishedD0VyAHGs5NeverOGTt0g5Tf4g_n(v35);
  *(v2 + OBJC_IVAR___SKALocalStatusServer_observationTimestamps) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DateVTt0g5Tf4g_n(v35);
  *(v2 + OBJC_IVAR___SKALocalStatusServer_failedDeliveries) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC18StatusKitAgentCore08SKALocalC6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDV_AHTt0g5Tf4g_n(v35);
  v43 = ObjectType;
  v95.receiver = v2;
  v95.super_class = ObjectType;
  v44 = objc_msgSendSuper2(&v95, sel_init);
  v45 = v44[19];
  v46 = v44;
  v47 = v45;
  SFXPCListener.contextProvider.setter();

  v48 = v44[19];
  SFXPCListener.resume()();

  v93 = partial apply for closure #2 in SKALocalStatusServer.init(idsDeviceProvider:);
  v94 = v46;
  aBlock = MEMORY[0x277D85DD0];
  v90 = 1107296256;
  v91 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v92 = &block_descriptor_0;
  v49 = _Block_copy(&aBlock);
  v50 = v46;

  v51 = [v40 registerIDSDeviceChangedObserver_];
  _Block_release(v49);
  v52 = v85;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (v83)(v52, 0, 1, v84);
  v53 = OBJC_IVAR___SKALocalStatusServer_idsDeviceProviderToken;
  swift_beginAccess();
  outlined assign with take of UUID?(v52, v50 + v53);
  swift_endAccess();
  v54 = v50[24];
  v55 = MEMORY[0x223D76B00](0xD000000000000015, 0x80000002201AC230);
  v93 = partial apply for closure #3 in SKALocalStatusServer.init(idsDeviceProvider:);
  v94 = v50;
  aBlock = MEMORY[0x277D85DD0];
  v90 = 1107296256;
  v91 = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any], @guaranteed [AnyHashable : Any]?, @guaranteed @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?, @guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ()) -> ();
  v92 = &block_descriptor_4;
  v56 = _Block_copy(&aBlock);
  v57 = v50;

  [v54 registerRequestID:v55 options:0 handler:v56];
  _Block_release(v56);

  v58 = v50[24];
  v93 = partial apply for closure #4 in SKALocalStatusServer.init(idsDeviceProvider:);
  v94 = v57;
  aBlock = MEMORY[0x277D85DD0];
  v90 = 1107296256;
  v91 = thunk for @escaping @callee_guaranteed (@guaranteed RPCompanionLinkDevice) -> ();
  v92 = &block_descriptor_7;
  v59 = _Block_copy(&aBlock);
  v60 = v57;
  v61 = v58;

  [v61 setDeviceFoundHandler_];
  _Block_release(v59);

  v62 = v50[24];
  v93 = partial apply for closure #5 in SKALocalStatusServer.init(idsDeviceProvider:);
  v94 = v60;
  aBlock = MEMORY[0x277D85DD0];
  v90 = 1107296256;
  v91 = thunk for @escaping @callee_guaranteed (@guaranteed RPCompanionLinkDevice) -> ();
  v92 = &block_descriptor_10;
  v63 = _Block_copy(&aBlock);
  v64 = v60;
  v65 = v62;

  [v65 setDeviceLostHandler_];
  _Block_release(v63);

  v66 = v50[24];
  v93 = closure #6 in SKALocalStatusServer.init(idsDeviceProvider:);
  v94 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v90 = 1107296256;
  v91 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v92 = &block_descriptor_13;
  v67 = _Block_copy(&aBlock);
  v68 = v66;
  [v68 activateWithCompletion_];
  _Block_release(v67);

  v69 = type metadata accessor for TaskPriority();
  v70 = v86;
  (*(*(v69 - 8) + 56))(v86, 1, 1, v69);
  v71 = swift_allocObject();
  v71[2] = 0;
  v71[3] = 0;
  v71[4] = v64;
  v72 = v64;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v70, &async function pointer to partial apply for closure #7 in SKALocalStatusServer.init(idsDeviceProvider:), v71);

  v73 = v72[18];
  v74 = swift_allocObject();
  *(v74 + 16) = v72;
  *(v74 + 24) = v43;
  v93 = partial apply for closure #8 in SKALocalStatusServer.init(idsDeviceProvider:);
  v94 = v74;
  aBlock = MEMORY[0x277D85DD0];
  v90 = 1107296256;
  v91 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
  v92 = &block_descriptor_23;
  v75 = _Block_copy(&aBlock);
  v76 = v73;

  xpc_set_event_stream_handler("com.apple.rapport.matching", v76, v75);
  _Block_release(v75);

  swift_unknownObjectRelease();
  return v72;
}

uint64_t closure #2 in SKALocalStatusServer.init(idsDeviceProvider:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #2 in SKALocalStatusServer.init(idsDeviceProvider:), v7);
}

uint64_t closure #1 in closure #2 in SKALocalStatusServer.init(idsDeviceProvider:)()
{
  v1 = *(v0 + 16);
  SKALocalStatusServer.handleIDSDevicesChanged()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t SKALocalStatusServer.handleIDSDevicesChanged()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  result = SKALocalStatusServer.recipientDevicesChanged()();
  if (result)
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, log);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_220099000, v8, v9, "IDSDevices changed", v10, 2u);
      MEMORY[0x223D77FF0](v10, -1, -1);
    }

    v11 = [*(v1 + 168) newBackgroundContext];
    v12 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
    swift_beginAccess();
    v13 = *(v1 + v12);
    v14 = *(v13 + 16);
    if (v14)
    {
      v22 = v11;
      v23 = v5;
      v15 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC14LocalStatusKit6LSKKeyVy10Foundation4DataVG_Tt1g5(v14, 0);
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR) - 8);
      v17 = specialized Sequence._copySequenceContents(initializing:)(&v24, (v15 + ((*(v16 + 80) + 32) & ~*(v16 + 80))), v14, v13);

      result = sub_2200A4D24();
      if (v17 != v14)
      {
        __break(1u);
        return result;
      }

      v11 = v22;
      v5 = v23;
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    SKALocalStatusServer.reconcilePendingStatusesOnDevices(resetting:in:resetDiscoverySource:)(v15, v11, 1);

    SKALocalStatusServer.stopBrowserTask()();
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
    v19 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SKALocalStatusServer and conformance SKALocalStatusServer, type metadata accessor for SKALocalStatusServer);
    v20 = swift_allocObject();
    v20[2] = v1;
    v20[3] = v19;
    v20[4] = v1;
    v20[5] = v11;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in SKALocalStatusServer.handleIDSDevicesChanged(), v20);
  }

  return result;
}

uint64_t closure #3 in SKALocalStatusServer.init(idsDeviceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a5;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v15[8] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in closure #3 in SKALocalStatusServer.init(idsDeviceProvider:), v15);
}

uint64_t closure #1 in closure #3 in SKALocalStatusServer.init(idsDeviceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[35] = a7;
  v8[36] = a8;
  v8[33] = a5;
  v8[34] = a6;
  v8[32] = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #3 in SKALocalStatusServer.init(idsDeviceProvider:), a4, 0);
}

uint64_t closure #1 in closure #3 in SKALocalStatusServer.init(idsDeviceProvider:)()
{
  v1 = *(v0 + 256);
  specialized SKALocalStatusServer.handleIncomingLocalStatus(request:)(*(v0 + 264), *(v0 + 272));
  *(v0 + 296) = 0;

  return MEMORY[0x2822009F8](closure #1 in closure #3 in SKALocalStatusServer.init(idsDeviceProvider:), 0, 0);
}

{
  v2 = v0[35];
  v1 = v0[36];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2201A7280;
  v0[30] = 0x73736563637573;
  v0[31] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of UUID?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  v2(v4, 0, 0);

  v5 = v0[1];

  return v5();
}

{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2201A7280;
  v0[28] = 0x73736563637573;
  v0[29] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 0;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of UUID?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  v6 = v1;
  v3(v5, 0, v1);

  v7 = v0[1];

  return v7();
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSDictionary?, @unowned NSDictionary?, @unowned NSError?) -> ()(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  isa = a2;
  if (a1)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7.super.isa = 0;
  if (a2)
  {
LABEL_3:
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_4:
  if (a3)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7.super.isa, isa);
}

uint64_t closure #1 in closure #5 in SKALocalStatusServer.init(idsDeviceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #5 in SKALocalStatusServer.init(idsDeviceProvider:), 0, 0);
}

uint64_t closure #1 in closure #5 in SKALocalStatusServer.init(idsDeviceProvider:)()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, log);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_220099000, v4, v5, "receiveStatusCompanionLink deviceLost {device: %@}", v7, 0xCu);
    outlined destroy of UUID?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v8, -1, -1);
    MEMORY[0x223D77FF0](v7, -1, -1);
  }

  v10 = v0[10];
  v11 = v0[6];

  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);

  return MEMORY[0x2822009F8](closure #1 in closure #5 in SKALocalStatusServer.init(idsDeviceProvider:), v11, 0);
}

{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  outlined init with copy of (String, Sendable)(v1, v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v2, v4, v3);
  swift_endAccess();
  outlined destroy of UUID?(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  return MEMORY[0x2822009F8](closure #1 in closure #5 in SKALocalStatusServer.init(idsDeviceProvider:), 0, 0);
}

{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v5 = specialized Collection.prefix(_:)(8, v2, v1, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x223D76B60](v5, v7, v9, v11);
  v14 = v13;

  MEMORY[0x223D76B90](v12, v14);

  MEMORY[0x223D76B90](93, 0xE100000000000000);
  v0[11] = 0x6F4C656369766564;
  v0[12] = 0xEB000000005B7473;

  return MEMORY[0x2822009F8](closure #1 in closure #5 in SKALocalStatusServer.init(idsDeviceProvider:), v3, 0);
}

void closure #6 in SKALocalStatusServer.init(idsDeviceProvider:)(NSObject *a1)
{
  if (!a1)
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, log);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_220099000, oslog, v11, "receiveStatusCompanionLink activate SUCCESS", v12, 2u);
      MEMORY[0x223D77FF0](v12, -1, -1);
    }

    goto LABEL_10;
  }

  v2 = a1;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, log);
  v4 = a1;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_220099000, oslog, v5, "receiveStatusCompanionLink activate FAILED {error: %@}", v6, 0xCu);
    outlined destroy of UUID?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v7, -1, -1);
    MEMORY[0x223D77FF0](v6, -1, -1);

LABEL_10:
    v13 = oslog;

    goto LABEL_12;
  }

  v13 = a1;

LABEL_12:
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t closure #7 in SKALocalStatusServer.init(idsDeviceProvider:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return SKALocalStatusServer.runStartOperations()();
}

uint64_t SKALocalStatusServer.runStartOperations()()
{
  *(v1 + 48) = v0;
  return MEMORY[0x2822009F8](SKALocalStatusServer.runStartOperations(), v0, 0);
}

{
  v53 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, log);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_220099000, v2, v3, "runStartOperations START", v4, 2u);
    MEMORY[0x223D77FF0](v4, -1, -1);
  }

  v5 = v0[6];

  v6 = MEMORY[0x223D76B00](v5[16], v5[17]);
  v7 = MEMORY[0x223D76B00](v5[14], v5[15]);
  v8 = CFPreferencesCopyAppValue(v6, v7);

  v51 = v0;
  if (v8)
  {
    v0[2] = v8;
    if (swift_dynamicCast())
    {
      v9 = v0[6];
      v10 = OBJC_IVAR___SKALocalStatusServer_screenOffStatusTimeoutSeconds;
      *(v9 + OBJC_IVAR___SKALocalStatusServer_screenOffStatusTimeoutSeconds) = v0[5];

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      v13 = os_log_type_enabled(v11, v12);
      v14 = v0[6];
      if (v13)
      {
        v15 = swift_slowAlloc();
        *v15 = 134217984;
        *(v15 + 4) = *(v9 + v10);

        _os_log_impl(&dword_220099000, v11, v12, "Set custom screen off status timeout: %ld seconds", v15, 0xCu);
        MEMORY[0x223D77FF0](v15, -1, -1);
      }

      else
      {
        v16 = v0[6];
      }
    }
  }

  v17 = [*(v0[6] + 168) newBackgroundContext];
  v18 = SKALocalStatusServer.getFilteredRecipientIDSDevices(from:)(0xD000000000000014, 0x80000002201AC860);
  if (v18 >> 62)
  {
    v19 = v18;
    v20 = __CocoaSet.count.getter();
    v50 = v17;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_26:

    v23 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v19 = v18;
  v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v50 = v17;
  if (!v20)
  {
    goto LABEL_26;
  }

LABEL_13:
  v52 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20 & ~(v20 >> 63), 0);
  if (v20 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v22 = 0;
  v23 = v52;
  v24 = v19;
  v25 = v19 & 0xC000000000000001;
  do
  {
    if (v25)
    {
      v26 = MEMORY[0x223D77050](v22, v24);
    }

    else
    {
      v26 = *(v24 + 8 * v22 + 32);
    }

    v27 = v26;
    v28 = [v26 uniqueID];
    if (v28)
    {
      v29 = v28;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;
    }

    else
    {

      v30 = 0;
      v32 = 0;
    }

    v52 = v23;
    v34 = *(v23 + 16);
    v33 = *(v23 + 24);
    if (v34 >= v33 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
      v23 = v52;
    }

    ++v22;
    *(v23 + 16) = v34 + 1;
    v35 = v23 + 16 * v34;
    *(v35 + 32) = v30;
    *(v35 + 40) = v32;
  }

  while (v20 != v22);

  v0 = v51;
LABEL_27:
  v36 = v0[6];
  v37 = *(v36 + OBJC_IVAR___SKALocalStatusServer_idsDeviceRecipientIDs);
  *(v36 + OBJC_IVAR___SKALocalStatusServer_idsDeviceRecipientIDs) = v23;

  v38 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
  swift_beginAccess();
  v39 = *(v36 + v38);
  v40 = *(v39 + 16);
  if (!v40)
  {
    v41 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v41 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC14LocalStatusKit6LSKKeyVy10Foundation4DataVG_Tt1g5(*(v39 + 16), 0);
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR) - 8);
  v43 = specialized Sequence._copySequenceContents(initializing:)(&v52, (v41 + ((*(v42 + 80) + 32) & ~*(v42 + 80))), v40, v39);

  result = sub_2200A4D24();
  if (v43 != v40)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v0 = v51;
LABEL_31:
  v44 = v0[6];
  SKALocalStatusServer.reconcilePendingStatusesOnDevices(resetting:in:resetDiscoverySource:)(v41, v50, 0);
  v45 = v0[6];

  SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(v50, 0x68636E75614CLL, 0xE600000000000000);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_220099000, v46, v47, "runStartOperations END", v48, 2u);
    MEMORY[0x223D77FF0](v48, -1, -1);
  }

  v49 = v0[1];

  return v49();
}