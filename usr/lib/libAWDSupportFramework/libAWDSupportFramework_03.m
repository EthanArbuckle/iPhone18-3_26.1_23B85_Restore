uint64_t AWDEventKitSyncSyncedAttendeeResponseFromWatchReadFrom(uint64_t a1, void *a2)
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

      if ((v11 >> 3) == 3)
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
            v19 = &OBJC_IVAR___AWDEventKitSyncSyncedAttendeeResponseFromWatch__timestamp;
            goto LABEL_44;
          }
        }

        v19 = &OBJC_IVAR___AWDEventKitSyncSyncedAttendeeResponseFromWatch__timestamp;
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
        v19 = &OBJC_IVAR___AWDEventKitSyncSyncedAttendeeResponseFromWatch__deltaTransitTime;
        goto LABEL_44;
      }
    }

    v19 = &OBJC_IVAR___AWDEventKitSyncSyncedAttendeeResponseFromWatch__deltaTransitTime;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDEventKitSyncSyncedEventCreatedOnWatchReadFrom(uint64_t a1, void *a2)
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

      if ((v11 >> 3) == 3)
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
            v19 = &OBJC_IVAR___AWDEventKitSyncSyncedEventCreatedOnWatch__timestamp;
            goto LABEL_44;
          }
        }

        v19 = &OBJC_IVAR___AWDEventKitSyncSyncedEventCreatedOnWatch__timestamp;
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
        v19 = &OBJC_IVAR___AWDEventKitSyncSyncedEventCreatedOnWatch__deltaTransitTime;
        goto LABEL_44;
      }
    }

    v19 = &OBJC_IVAR___AWDEventKitSyncSyncedEventCreatedOnWatch__deltaTransitTime;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDEventKitSyncSyncedTaskCreatedOnWatchReadFrom(uint64_t a1, void *a2)
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

      if ((v11 >> 3) == 3)
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
            v19 = &OBJC_IVAR___AWDEventKitSyncSyncedTaskCreatedOnWatch__timestamp;
            goto LABEL_44;
          }
        }

        v19 = &OBJC_IVAR___AWDEventKitSyncSyncedTaskCreatedOnWatch__timestamp;
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
        v19 = &OBJC_IVAR___AWDEventKitSyncSyncedTaskCreatedOnWatch__deltaTransitTime;
        goto LABEL_44;
      }
    }

    v19 = &OBJC_IVAR___AWDEventKitSyncSyncedTaskCreatedOnWatch__deltaTransitTime;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDFaceTimeCallAcceptReceivedReadFrom(uint64_t a1, void *a2)
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
          *(a1 + 32) |= 2u;
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
          v32 = 24;
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
          *(a1 + 32) |= 4u;
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
          v32 = 28;
        }

        *(a1 + v32) = v24;
      }

      else if (v12 == 1)
      {
        String = PBReaderReadString();

        *(a1 + 16) = String;
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
        *(a1 + 32) |= 1u;
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

uint64_t AWDFaceTimeCallAcceptSentReadFrom(uint64_t a1, void *a2)
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
        v44 = 0;
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

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
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
      if ((v11 >> 3) > 3)
      {
        break;
      }

      if (v12 != 1)
      {
        if (v12 == 2)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v45 = 0;
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

            v33 |= (v45 & 0x7F) << v31;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v10 = v32++ >= 9;
            if (v10)
            {
              v36 = 0;
              goto LABEL_87;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v33;
          }

LABEL_87:
          *(a1 + 8) = v36;
          goto LABEL_93;
        }

        if (v12 != 3)
        {
          goto LABEL_52;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          v46 = 0;
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

          v15 |= (v46 & 0x7F) << v13;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_79;
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

LABEL_79:
        v42 = 16;
        goto LABEL_92;
      }

      String = PBReaderReadString();

      *(a1 + 24) = String;
LABEL_93:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v12)
    {
      case 4:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 44) |= 0x10u;
        while (1)
        {
          v49 = 0;
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

          v27 |= (v49 & 0x7F) << v25;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v10 = v26++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_75;
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

LABEL_75:
        v42 = 40;
        break;
      case 5:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          v48 = 0;
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

          v39 |= (v48 & 0x7F) << v37;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v10 = v38++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_91;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v39;
        }

LABEL_91:
        v42 = 32;
        break;
      case 6:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 44) |= 8u;
        while (1)
        {
          v47 = 0;
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

          v21 |= (v47 & 0x7F) << v19;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_83;
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

LABEL_83:
        v42 = 36;
        break;
      default:
LABEL_52:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_93;
    }

LABEL_92:
    *(a1 + v42) = v18;
    goto LABEL_93;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDFaceTimeCallCancelSentReadFrom(uint64_t a1, void *a2)
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
        v49 = 0;
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

        v7 |= (v49 & 0x7F) << v5;
        if ((v49 & 0x80) == 0)
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
      if ((v11 >> 3) > 3)
      {
        break;
      }

      if (v12 != 1)
      {
        if (v12 == 2)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v50 = 0;
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

            v43 |= (v50 & 0x7F) << v41;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v10 = v42++ >= 9;
            if (v10)
            {
              v46 = 0;
              goto LABEL_109;
            }
          }

          if ([a2 hasError])
          {
            v46 = 0;
          }

          else
          {
            v46 = v43;
          }

LABEL_109:
          *(a1 + 8) = v46;
          goto LABEL_104;
        }

        if (v12 != 3)
        {
          goto LABEL_54;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          v51 = 0;
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

          v21 |= (v51 & 0x7F) << v19;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_102;
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

LABEL_102:
        v47 = 20;
        goto LABEL_103;
      }

      String = PBReaderReadString();

      *(a1 + 24) = String;
LABEL_104:
      v48 = [a2 position];
      if (v48 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 > 5)
    {
      if (v12 == 6)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 44) |= 8u;
        while (1)
        {
          v53 = 0;
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

          v38 |= (v53 & 0x7F) << v36;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v10 = v37++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_90;
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

LABEL_90:
        v47 = 32;
      }

      else
      {
        if (v12 != 7)
        {
LABEL_54:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_104;
        }

        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 44) |= 0x10u;
        while (1)
        {
          v52 = 0;
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

          v26 |= (v52 & 0x7F) << v24;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v10 = v25++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_98;
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

LABEL_98:
        v47 = 36;
      }
    }

    else if (v12 == 4)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      *(a1 + 44) |= 2u;
      while (1)
      {
        v55 = 0;
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

        v33 |= (v55 & 0x7F) << v31;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
        v10 = v32++ >= 9;
        if (v10)
        {
          v18 = 0;
          goto LABEL_86;
        }
      }

      if ([a2 hasError])
      {
        v18 = 0;
      }

      else
      {
        v18 = v33;
      }

LABEL_86:
      v47 = 16;
    }

    else
    {
      if (v12 != 5)
      {
        goto LABEL_54;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      *(a1 + 44) |= 0x20u;
      while (1)
      {
        v54 = 0;
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

        v15 |= (v54 & 0x7F) << v13;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        v10 = v14++ >= 9;
        if (v10)
        {
          v18 = 0;
          goto LABEL_94;
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

LABEL_94:
      v47 = 40;
    }

LABEL_103:
    *(a1 + v47) = v18;
    goto LABEL_104;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDFaceTimeCallConnectedReadFrom(uint64_t a1, void *a2)
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
            *(a1 + 68) |= 0x200u;
            while (1)
            {
              v84 = 0;
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

              v42 |= (v84 & 0x7F) << v40;
              if ((v84 & 0x80) == 0)
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
            v72 = 60;
            break;
          case 5:
            v61 = 0;
            v62 = 0;
            v63 = 0;
            *(a1 + 68) |= 0x20u;
            while (1)
            {
              v83 = 0;
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

              v63 |= (v83 & 0x7F) << v61;
              if ((v83 & 0x80) == 0)
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
            *(a1 + 68) |= 4u;
            while (1)
            {
              v82 = 0;
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

              v26 |= (v82 & 0x7F) << v24;
              if ((v82 & 0x80) == 0)
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
            v72 = 20;
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
          *(a1 + 68) |= 1u;
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
        *(a1 + 68) |= 2u;
        while (1)
        {
          v85 = 0;
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

          v15 |= (v85 & 0x7F) << v13;
          if ((v85 & 0x80) == 0)
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
        v72 = 16;
        goto LABEL_178;
      }

      String = PBReaderReadString();

      *(a1 + 32) = String;
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
          *(a1 + 68) |= 0x80u;
          while (1)
          {
            v78 = 0;
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

            v47 |= (v78 & 0x7F) << v45;
            if ((v78 & 0x80) == 0)
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
          v72 = 52;
          break;
        case 0xB:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          *(a1 + 68) |= 0x10u;
          while (1)
          {
            v77 = 0;
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

            v68 |= (v77 & 0x7F) << v66;
            if ((v77 & 0x80) == 0)
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
          *(a1 + 68) |= 0x40u;
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
          v72 = 48;
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
          *(a1 + 68) |= 0x400u;
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

            v37 |= (v81 & 0x7F) << v35;
            if ((v81 & 0x80) == 0)
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
          v72 = 64;
          break;
        case 8:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          *(a1 + 68) |= 8u;
          while (1)
          {
            v80 = 0;
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

            v58 |= (v80 & 0x7F) << v56;
            if ((v80 & 0x80) == 0)
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
          v72 = 24;
          break;
        case 9:
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 68) |= 0x100u;
          while (1)
          {
            v79 = 0;
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

            v21 |= (v79 & 0x7F) << v19;
            if ((v79 & 0x80) == 0)
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
          v72 = 56;
          break;
        default:
          goto LABEL_132;
      }
    }

    goto LABEL_178;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDFaceTimeCallDeclineSentReadFrom(uint64_t a1, void *a2)
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
        v49 = 0;
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

        v7 |= (v49 & 0x7F) << v5;
        if ((v49 & 0x80) == 0)
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
      if ((v11 >> 3) > 3)
      {
        break;
      }

      if (v12 != 1)
      {
        if (v12 == 2)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v50 = 0;
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

            v43 |= (v50 & 0x7F) << v41;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v10 = v42++ >= 9;
            if (v10)
            {
              v46 = 0;
              goto LABEL_109;
            }
          }

          if ([a2 hasError])
          {
            v46 = 0;
          }

          else
          {
            v46 = v43;
          }

LABEL_109:
          *(a1 + 8) = v46;
          goto LABEL_104;
        }

        if (v12 != 3)
        {
          goto LABEL_54;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          v51 = 0;
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

          v21 |= (v51 & 0x7F) << v19;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_102;
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

LABEL_102:
        v47 = 20;
        goto LABEL_103;
      }

      String = PBReaderReadString();

      *(a1 + 24) = String;
LABEL_104:
      v48 = [a2 position];
      if (v48 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 > 5)
    {
      if (v12 == 6)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 44) |= 8u;
        while (1)
        {
          v53 = 0;
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

          v38 |= (v53 & 0x7F) << v36;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v10 = v37++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_90;
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

LABEL_90:
        v47 = 32;
      }

      else
      {
        if (v12 != 7)
        {
LABEL_54:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_104;
        }

        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 44) |= 0x10u;
        while (1)
        {
          v52 = 0;
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

          v26 |= (v52 & 0x7F) << v24;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v10 = v25++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_98;
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

LABEL_98:
        v47 = 36;
      }
    }

    else if (v12 == 4)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      *(a1 + 44) |= 2u;
      while (1)
      {
        v55 = 0;
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

        v33 |= (v55 & 0x7F) << v31;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
        v10 = v32++ >= 9;
        if (v10)
        {
          v18 = 0;
          goto LABEL_86;
        }
      }

      if ([a2 hasError])
      {
        v18 = 0;
      }

      else
      {
        v18 = v33;
      }

LABEL_86:
      v47 = 16;
    }

    else
    {
      if (v12 != 5)
      {
        goto LABEL_54;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      *(a1 + 44) |= 0x20u;
      while (1)
      {
        v54 = 0;
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

        v15 |= (v54 & 0x7F) << v13;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        v10 = v14++ >= 9;
        if (v10)
        {
          v18 = 0;
          goto LABEL_94;
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

LABEL_94:
      v47 = 40;
    }

LABEL_103:
    *(a1 + v47) = v18;
    goto LABEL_104;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDFaceTimeCallEndedReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v213 = 0;
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

      v8 |= (v213 & 0x7F) << v6;
      if ((v213 & 0x80) == 0)
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
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      break;
    }

    switch((v12 >> 3))
    {
      case 1u:
        String = PBReaderReadString();

        *(a1 + 88) = String;
        continue;
      case 2u:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        *(a1 + 180) |= 1uLL;
        while (1)
        {
          v213 = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v213 & 0x7F) << v105;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v11 = v106++ >= 9;
          if (v11)
          {
            v110 = 0;
            goto LABEL_448;
          }
        }

        if ([a2 hasError])
        {
          v110 = 0;
        }

        else
        {
          v110 = v107;
        }

LABEL_448:
        *(a1 + 8) = v110;
        continue;
      case 3u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 180) |= 0x1000uLL;
        while (1)
        {
          v213 = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (v213 & 0x7F) << v85;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v11 = v86++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_432;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v87;
        }

LABEL_432:
        v212 = 60;
        goto LABEL_529;
      case 4u:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 180) |= 0x8000uLL;
        while (1)
        {
          v213 = 0;
          v98 = [a2 position] + 1;
          if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v97 |= (v213 & 0x7F) << v95;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v11 = v96++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_440;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v97;
        }

LABEL_440:
        v212 = 72;
        goto LABEL_529;
      case 5u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 180) |= 0x4000000000uLL;
        while (1)
        {
          v213 = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v213 & 0x7F) << v60;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v11 = v61++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_412;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v62;
        }

LABEL_412:
        v212 = 176;
        goto LABEL_529;
      case 6u:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        *(a1 + 180) |= 0x4000uLL;
        while (1)
        {
          v213 = 0;
          v129 = [a2 position] + 1;
          if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v128 |= (v213 & 0x7F) << v126;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v11 = v127++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_464;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v128;
        }

LABEL_464:
        v212 = 68;
        goto LABEL_529;
      case 7u:
        v141 = 0;
        v142 = 0;
        v143 = 0;
        *(a1 + 180) |= 0x20000000uLL;
        while (1)
        {
          v213 = 0;
          v144 = [a2 position] + 1;
          if (v144 >= [a2 position] && (v145 = objc_msgSend(a2, "position") + 1, v145 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v143 |= (v213 & 0x7F) << v141;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v141 += 7;
          v11 = v142++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_476;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v143;
        }

LABEL_476:
        v212 = 140;
        goto LABEL_529;
      case 8u:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 180) |= 8uLL;
        while (1)
        {
          v213 = 0;
          v103 = [a2 position] + 1;
          if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v102 |= (v213 & 0x7F) << v100;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v11 = v101++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_444;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v102;
        }

LABEL_444:
        v212 = 24;
        goto LABEL_529;
      case 9u:
        v156 = 0;
        v157 = 0;
        v158 = 0;
        *(a1 + 180) |= 0x100000000uLL;
        while (1)
        {
          v213 = 0;
          v159 = [a2 position] + 1;
          if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v158 |= (v213 & 0x7F) << v156;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v156 += 7;
          v11 = v157++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_488;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v158;
        }

LABEL_488:
        v212 = 152;
        goto LABEL_529;
      case 0xAu:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 180) |= 0x400000000uLL;
        while (1)
        {
          v213 = 0;
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

          v72 |= (v213 & 0x7F) << v70;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v11 = v71++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_420;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v72;
        }

LABEL_420:
        v212 = 160;
        goto LABEL_529;
      case 0xBu:
        v151 = 0;
        v152 = 0;
        v153 = 0;
        *(a1 + 180) |= 0x40000uLL;
        while (1)
        {
          v213 = 0;
          v154 = [a2 position] + 1;
          if (v154 >= [a2 position] && (v155 = objc_msgSend(a2, "position") + 1, v155 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v153 |= (v213 & 0x7F) << v151;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v151 += 7;
          v11 = v152++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_484;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v153;
        }

LABEL_484:
        v212 = 96;
        goto LABEL_529;
      case 0xCu:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 180) |= 4uLL;
        while (1)
        {
          v213 = 0;
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

          v57 |= (v213 & 0x7F) << v55;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_408;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v57;
        }

LABEL_408:
        v212 = 20;
        goto LABEL_529;
      case 0xDu:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        *(a1 + 180) |= 0x400uLL;
        while (1)
        {
          v213 = 0;
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

          v67 |= (v213 & 0x7F) << v65;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v11 = v66++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_416;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v67;
        }

LABEL_416:
        v212 = 52;
        goto LABEL_529;
      case 0xEu:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        *(a1 + 180) |= 0x100uLL;
        while (1)
        {
          v213 = 0;
          v139 = [a2 position] + 1;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v138 |= (v213 & 0x7F) << v136;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v11 = v137++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_472;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v138;
        }

LABEL_472:
        v212 = 44;
        goto LABEL_529;
      case 0xFu:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 180) |= 0x200uLL;
        while (1)
        {
          v213 = 0;
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

          v47 |= (v213 & 0x7F) << v45;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_400;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v47;
        }

LABEL_400:
        v212 = 48;
        goto LABEL_529;
      case 0x10u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 180) |= 0x800uLL;
        while (1)
        {
          v213 = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v213 & 0x7F) << v90;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v11 = v91++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_436;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v92;
        }

LABEL_436:
        v212 = 56;
        goto LABEL_529;
      case 0x11u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 180) |= 0x800000uLL;
        while (1)
        {
          v213 = 0;
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

          v42 |= (v213 & 0x7F) << v40;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_396;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v42;
        }

LABEL_396:
        v212 = 116;
        goto LABEL_529;
      case 0x12u:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        *(a1 + 180) |= 0x400000uLL;
        while (1)
        {
          v213 = 0;
          v119 = [a2 position] + 1;
          if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v118 |= (v213 & 0x7F) << v116;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v116 += 7;
          v11 = v117++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_456;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v118;
        }

LABEL_456:
        v212 = 112;
        goto LABEL_529;
      case 0x13u:
        v146 = 0;
        v147 = 0;
        v148 = 0;
        *(a1 + 180) |= 0x1000000uLL;
        while (1)
        {
          v213 = 0;
          v149 = [a2 position] + 1;
          if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v148 |= (v213 & 0x7F) << v146;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v146 += 7;
          v11 = v147++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_480;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v148;
        }

LABEL_480:
        v212 = 120;
        goto LABEL_529;
      case 0x14u:
        v181 = 0;
        v182 = 0;
        v183 = 0;
        *(a1 + 180) |= 0x40000000uLL;
        while (1)
        {
          v213 = 0;
          v184 = [a2 position] + 1;
          if (v184 >= [a2 position] && (v185 = objc_msgSend(a2, "position") + 1, v185 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v183 |= (v213 & 0x7F) << v181;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v181 += 7;
          v11 = v182++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_508;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v183;
        }

LABEL_508:
        v212 = 144;
        goto LABEL_529;
      case 0x15u:
        v121 = 0;
        v122 = 0;
        v123 = 0;
        *(a1 + 180) |= 0x2000uLL;
        while (1)
        {
          v213 = 0;
          v124 = [a2 position] + 1;
          if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v123 |= (v213 & 0x7F) << v121;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v121 += 7;
          v11 = v122++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_460;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v123;
        }

LABEL_460:
        v212 = 64;
        goto LABEL_529;
      case 0x16u:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        *(a1 + 180) |= 2uLL;
        while (1)
        {
          v213 = 0;
          v134 = [a2 position] + 1;
          if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v133 |= (v213 & 0x7F) << v131;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v11 = v132++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_468;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v133;
        }

LABEL_468:
        v212 = 16;
        goto LABEL_529;
      case 0x17u:
        v171 = 0;
        v172 = 0;
        v173 = 0;
        *(a1 + 180) |= 0x80uLL;
        while (1)
        {
          v213 = 0;
          v174 = [a2 position] + 1;
          if (v174 >= [a2 position] && (v175 = objc_msgSend(a2, "position") + 1, v175 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v173 |= (v213 & 0x7F) << v171;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v171 += 7;
          v11 = v172++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_500;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v173;
        }

LABEL_500:
        v212 = 40;
        goto LABEL_529;
      case 0x18u:
        v186 = 0;
        v187 = 0;
        v188 = 0;
        *(a1 + 180) |= 0x10000uLL;
        while (1)
        {
          v213 = 0;
          v189 = [a2 position] + 1;
          if (v189 >= [a2 position] && (v190 = objc_msgSend(a2, "position") + 1, v190 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v188 |= (v213 & 0x7F) << v186;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v186 += 7;
          v11 = v187++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_512;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v188;
        }

LABEL_512:
        v212 = 76;
        goto LABEL_529;
      case 0x19u:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 180) |= 0x10uLL;
        while (1)
        {
          v213 = 0;
          v83 = [a2 position] + 1;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v82 |= (v213 & 0x7F) << v80;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v11 = v81++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_428;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v82;
        }

LABEL_428:
        v212 = 28;
        goto LABEL_529;
      case 0x1Au:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(a1 + 180) |= 0x1000000000uLL;
        while (1)
        {
          v213 = 0;
          v78 = [a2 position] + 1;
          if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v77 |= (v213 & 0x7F) << v75;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v11 = v76++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_424;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v77;
        }

LABEL_424:
        v212 = 168;
        goto LABEL_529;
      case 0x1Bu:
        v206 = 0;
        v207 = 0;
        v208 = 0;
        *(a1 + 180) |= 0x10000000uLL;
        while (1)
        {
          v213 = 0;
          v209 = [a2 position] + 1;
          if (v209 >= [a2 position] && (v210 = objc_msgSend(a2, "position") + 1, v210 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v208 |= (v213 & 0x7F) << v206;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v206 += 7;
          v11 = v207++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_528;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v208;
        }

LABEL_528:
        v212 = 136;
        goto LABEL_529;
      case 0x1Cu:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 180) |= 0x20uLL;
        while (1)
        {
          v213 = 0;
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

          v32 |= (v213 & 0x7F) << v30;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_388;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v32;
        }

LABEL_388:
        v212 = 32;
        goto LABEL_529;
      case 0x1Du:
        v191 = 0;
        v192 = 0;
        v193 = 0;
        *(a1 + 180) |= 0x2000000000uLL;
        while (1)
        {
          v213 = 0;
          v194 = [a2 position] + 1;
          if (v194 >= [a2 position] && (v195 = objc_msgSend(a2, "position") + 1, v195 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v193 |= (v213 & 0x7F) << v191;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v191 += 7;
          v11 = v192++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_516;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v193;
        }

LABEL_516:
        v212 = 172;
        goto LABEL_529;
      case 0x1Eu:
        v196 = 0;
        v197 = 0;
        v198 = 0;
        *(a1 + 180) |= 0x40uLL;
        while (1)
        {
          v213 = 0;
          v199 = [a2 position] + 1;
          if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 1, v200 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v198 |= (v213 & 0x7F) << v196;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v196 += 7;
          v11 = v197++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_520;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v198;
        }

LABEL_520:
        v212 = 36;
        goto LABEL_529;
      case 0x1Fu:
        v161 = 0;
        v162 = 0;
        v163 = 0;
        *(a1 + 180) |= 0x800000000uLL;
        while (1)
        {
          v213 = 0;
          v164 = [a2 position] + 1;
          if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v163 |= (v213 & 0x7F) << v161;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v161 += 7;
          v11 = v162++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_492;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v163;
        }

LABEL_492:
        v212 = 164;
        goto LABEL_529;
      case 0x20u:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        *(a1 + 180) |= 0x200000000uLL;
        while (1)
        {
          v213 = 0;
          v114 = [a2 position] + 1;
          if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v113 |= (v213 & 0x7F) << v111;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v11 = v112++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_452;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v113;
        }

LABEL_452:
        v212 = 156;
        goto LABEL_529;
      case 0x21u:
        v166 = 0;
        v167 = 0;
        v168 = 0;
        *(a1 + 180) |= 0x200000uLL;
        while (1)
        {
          v213 = 0;
          v169 = [a2 position] + 1;
          if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v168 |= (v213 & 0x7F) << v166;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v166 += 7;
          v11 = v167++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_496;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v168;
        }

LABEL_496:
        v212 = 108;
        goto LABEL_529;
      case 0x22u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 180) |= 0x4000000uLL;
        while (1)
        {
          v213 = 0;
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

          v52 |= (v213 & 0x7F) << v50;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_404;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v52;
        }

LABEL_404:
        v212 = 128;
        goto LABEL_529;
      case 0x23u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 180) |= 0x80000uLL;
        while (1)
        {
          v213 = 0;
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

          v37 |= (v213 & 0x7F) << v35;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_392;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v37;
        }

LABEL_392:
        v212 = 100;
        goto LABEL_529;
      case 0x24u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 180) |= 0x100000uLL;
        while (1)
        {
          v213 = 0;
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

          v22 |= (v213 & 0x7F) << v20;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_380;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v22;
        }

LABEL_380:
        v212 = 104;
        goto LABEL_529;
      case 0x25u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 180) |= 0x8000000uLL;
        while (1)
        {
          v213 = 0;
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

          v27 |= (v213 & 0x7F) << v25;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_384;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v27;
        }

LABEL_384:
        v212 = 132;
        goto LABEL_529;
      case 0x26u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 180) |= 0x20000uLL;
        while (1)
        {
          v213 = 0;
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

          v16 |= (v213 & 0x7F) << v14;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_376;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v16;
        }

LABEL_376:
        v212 = 80;
        goto LABEL_529;
      case 0x27u:
        v201 = 0;
        v202 = 0;
        v203 = 0;
        *(a1 + 180) |= 0x2000000uLL;
        while (1)
        {
          v213 = 0;
          v204 = [a2 position] + 1;
          if (v204 >= [a2 position] && (v205 = objc_msgSend(a2, "position") + 1, v205 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v203 |= (v213 & 0x7F) << v201;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v201 += 7;
          v11 = v202++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_524;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v203;
        }

LABEL_524:
        v212 = 124;
        goto LABEL_529;
      case 0x28u:
        v176 = 0;
        v177 = 0;
        v178 = 0;
        *(a1 + 180) |= 0x80000000uLL;
        break;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      v213 = 0;
      v179 = [a2 position] + 1;
      if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v178 |= (v213 & 0x7F) << v176;
      if ((v213 & 0x80) == 0)
      {
        break;
      }

      v176 += 7;
      v11 = v177++ >= 9;
      if (v11)
      {
        v19 = 0;
        goto LABEL_504;
      }
    }

    if ([a2 hasError])
    {
      v19 = 0;
    }

    else
    {
      v19 = v178;
    }

LABEL_504:
    v212 = 148;
LABEL_529:
    *(a1 + v212) = v19;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDFaceTimeCallFailedReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v213 = 0;
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

      v8 |= (v213 & 0x7F) << v6;
      if ((v213 & 0x80) == 0)
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
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      break;
    }

    switch((v12 >> 3))
    {
      case 1u:
        String = PBReaderReadString();

        *(a1 + 88) = String;
        continue;
      case 2u:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        *(a1 + 180) |= 1uLL;
        while (1)
        {
          v213 = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v213 & 0x7F) << v105;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v11 = v106++ >= 9;
          if (v11)
          {
            v110 = 0;
            goto LABEL_448;
          }
        }

        if ([a2 hasError])
        {
          v110 = 0;
        }

        else
        {
          v110 = v107;
        }

LABEL_448:
        *(a1 + 8) = v110;
        continue;
      case 3u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 180) |= 0x1000uLL;
        while (1)
        {
          v213 = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (v213 & 0x7F) << v85;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v11 = v86++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_432;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v87;
        }

LABEL_432:
        v212 = 60;
        goto LABEL_529;
      case 4u:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 180) |= 0x8000uLL;
        while (1)
        {
          v213 = 0;
          v98 = [a2 position] + 1;
          if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v97 |= (v213 & 0x7F) << v95;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v11 = v96++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_440;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v97;
        }

LABEL_440:
        v212 = 72;
        goto LABEL_529;
      case 5u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 180) |= 0x4000000000uLL;
        while (1)
        {
          v213 = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v213 & 0x7F) << v60;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v11 = v61++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_412;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v62;
        }

LABEL_412:
        v212 = 176;
        goto LABEL_529;
      case 6u:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        *(a1 + 180) |= 0x4000uLL;
        while (1)
        {
          v213 = 0;
          v129 = [a2 position] + 1;
          if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v128 |= (v213 & 0x7F) << v126;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v11 = v127++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_464;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v128;
        }

LABEL_464:
        v212 = 68;
        goto LABEL_529;
      case 7u:
        v141 = 0;
        v142 = 0;
        v143 = 0;
        *(a1 + 180) |= 0x20000000uLL;
        while (1)
        {
          v213 = 0;
          v144 = [a2 position] + 1;
          if (v144 >= [a2 position] && (v145 = objc_msgSend(a2, "position") + 1, v145 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v143 |= (v213 & 0x7F) << v141;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v141 += 7;
          v11 = v142++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_476;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v143;
        }

LABEL_476:
        v212 = 140;
        goto LABEL_529;
      case 8u:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 180) |= 8uLL;
        while (1)
        {
          v213 = 0;
          v103 = [a2 position] + 1;
          if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v102 |= (v213 & 0x7F) << v100;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v11 = v101++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_444;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v102;
        }

LABEL_444:
        v212 = 24;
        goto LABEL_529;
      case 9u:
        v156 = 0;
        v157 = 0;
        v158 = 0;
        *(a1 + 180) |= 0x100000000uLL;
        while (1)
        {
          v213 = 0;
          v159 = [a2 position] + 1;
          if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v158 |= (v213 & 0x7F) << v156;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v156 += 7;
          v11 = v157++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_488;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v158;
        }

LABEL_488:
        v212 = 152;
        goto LABEL_529;
      case 0xAu:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 180) |= 0x400000000uLL;
        while (1)
        {
          v213 = 0;
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

          v72 |= (v213 & 0x7F) << v70;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v11 = v71++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_420;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v72;
        }

LABEL_420:
        v212 = 160;
        goto LABEL_529;
      case 0xBu:
        v151 = 0;
        v152 = 0;
        v153 = 0;
        *(a1 + 180) |= 0x40000uLL;
        while (1)
        {
          v213 = 0;
          v154 = [a2 position] + 1;
          if (v154 >= [a2 position] && (v155 = objc_msgSend(a2, "position") + 1, v155 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v153 |= (v213 & 0x7F) << v151;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v151 += 7;
          v11 = v152++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_484;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v153;
        }

LABEL_484:
        v212 = 96;
        goto LABEL_529;
      case 0xCu:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 180) |= 4uLL;
        while (1)
        {
          v213 = 0;
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

          v57 |= (v213 & 0x7F) << v55;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_408;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v57;
        }

LABEL_408:
        v212 = 20;
        goto LABEL_529;
      case 0xDu:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        *(a1 + 180) |= 0x400uLL;
        while (1)
        {
          v213 = 0;
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

          v67 |= (v213 & 0x7F) << v65;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v11 = v66++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_416;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v67;
        }

LABEL_416:
        v212 = 52;
        goto LABEL_529;
      case 0xEu:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        *(a1 + 180) |= 0x100uLL;
        while (1)
        {
          v213 = 0;
          v139 = [a2 position] + 1;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v138 |= (v213 & 0x7F) << v136;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v11 = v137++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_472;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v138;
        }

LABEL_472:
        v212 = 44;
        goto LABEL_529;
      case 0xFu:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 180) |= 0x200uLL;
        while (1)
        {
          v213 = 0;
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

          v47 |= (v213 & 0x7F) << v45;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_400;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v47;
        }

LABEL_400:
        v212 = 48;
        goto LABEL_529;
      case 0x10u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 180) |= 0x800uLL;
        while (1)
        {
          v213 = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v213 & 0x7F) << v90;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v11 = v91++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_436;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v92;
        }

LABEL_436:
        v212 = 56;
        goto LABEL_529;
      case 0x11u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 180) |= 0x800000uLL;
        while (1)
        {
          v213 = 0;
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

          v42 |= (v213 & 0x7F) << v40;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_396;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v42;
        }

LABEL_396:
        v212 = 116;
        goto LABEL_529;
      case 0x12u:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        *(a1 + 180) |= 0x400000uLL;
        while (1)
        {
          v213 = 0;
          v119 = [a2 position] + 1;
          if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v118 |= (v213 & 0x7F) << v116;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v116 += 7;
          v11 = v117++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_456;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v118;
        }

LABEL_456:
        v212 = 112;
        goto LABEL_529;
      case 0x13u:
        v146 = 0;
        v147 = 0;
        v148 = 0;
        *(a1 + 180) |= 0x1000000uLL;
        while (1)
        {
          v213 = 0;
          v149 = [a2 position] + 1;
          if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v148 |= (v213 & 0x7F) << v146;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v146 += 7;
          v11 = v147++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_480;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v148;
        }

LABEL_480:
        v212 = 120;
        goto LABEL_529;
      case 0x14u:
        v181 = 0;
        v182 = 0;
        v183 = 0;
        *(a1 + 180) |= 0x40000000uLL;
        while (1)
        {
          v213 = 0;
          v184 = [a2 position] + 1;
          if (v184 >= [a2 position] && (v185 = objc_msgSend(a2, "position") + 1, v185 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v183 |= (v213 & 0x7F) << v181;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v181 += 7;
          v11 = v182++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_508;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v183;
        }

LABEL_508:
        v212 = 144;
        goto LABEL_529;
      case 0x15u:
        v121 = 0;
        v122 = 0;
        v123 = 0;
        *(a1 + 180) |= 0x2000uLL;
        while (1)
        {
          v213 = 0;
          v124 = [a2 position] + 1;
          if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v123 |= (v213 & 0x7F) << v121;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v121 += 7;
          v11 = v122++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_460;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v123;
        }

LABEL_460:
        v212 = 64;
        goto LABEL_529;
      case 0x16u:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        *(a1 + 180) |= 2uLL;
        while (1)
        {
          v213 = 0;
          v134 = [a2 position] + 1;
          if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v133 |= (v213 & 0x7F) << v131;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v11 = v132++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_468;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v133;
        }

LABEL_468:
        v212 = 16;
        goto LABEL_529;
      case 0x17u:
        v171 = 0;
        v172 = 0;
        v173 = 0;
        *(a1 + 180) |= 0x80uLL;
        while (1)
        {
          v213 = 0;
          v174 = [a2 position] + 1;
          if (v174 >= [a2 position] && (v175 = objc_msgSend(a2, "position") + 1, v175 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v173 |= (v213 & 0x7F) << v171;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v171 += 7;
          v11 = v172++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_500;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v173;
        }

LABEL_500:
        v212 = 40;
        goto LABEL_529;
      case 0x18u:
        v186 = 0;
        v187 = 0;
        v188 = 0;
        *(a1 + 180) |= 0x10000uLL;
        while (1)
        {
          v213 = 0;
          v189 = [a2 position] + 1;
          if (v189 >= [a2 position] && (v190 = objc_msgSend(a2, "position") + 1, v190 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v188 |= (v213 & 0x7F) << v186;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v186 += 7;
          v11 = v187++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_512;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v188;
        }

LABEL_512:
        v212 = 76;
        goto LABEL_529;
      case 0x19u:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 180) |= 0x10uLL;
        while (1)
        {
          v213 = 0;
          v83 = [a2 position] + 1;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v82 |= (v213 & 0x7F) << v80;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v11 = v81++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_428;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v82;
        }

LABEL_428:
        v212 = 28;
        goto LABEL_529;
      case 0x1Au:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(a1 + 180) |= 0x1000000000uLL;
        while (1)
        {
          v213 = 0;
          v78 = [a2 position] + 1;
          if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v77 |= (v213 & 0x7F) << v75;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v11 = v76++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_424;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v77;
        }

LABEL_424:
        v212 = 168;
        goto LABEL_529;
      case 0x1Bu:
        v206 = 0;
        v207 = 0;
        v208 = 0;
        *(a1 + 180) |= 0x10000000uLL;
        while (1)
        {
          v213 = 0;
          v209 = [a2 position] + 1;
          if (v209 >= [a2 position] && (v210 = objc_msgSend(a2, "position") + 1, v210 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v208 |= (v213 & 0x7F) << v206;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v206 += 7;
          v11 = v207++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_528;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v208;
        }

LABEL_528:
        v212 = 136;
        goto LABEL_529;
      case 0x1Cu:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 180) |= 0x20uLL;
        while (1)
        {
          v213 = 0;
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

          v32 |= (v213 & 0x7F) << v30;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_388;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v32;
        }

LABEL_388:
        v212 = 32;
        goto LABEL_529;
      case 0x1Du:
        v191 = 0;
        v192 = 0;
        v193 = 0;
        *(a1 + 180) |= 0x2000000000uLL;
        while (1)
        {
          v213 = 0;
          v194 = [a2 position] + 1;
          if (v194 >= [a2 position] && (v195 = objc_msgSend(a2, "position") + 1, v195 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v193 |= (v213 & 0x7F) << v191;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v191 += 7;
          v11 = v192++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_516;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v193;
        }

LABEL_516:
        v212 = 172;
        goto LABEL_529;
      case 0x1Eu:
        v196 = 0;
        v197 = 0;
        v198 = 0;
        *(a1 + 180) |= 0x40uLL;
        while (1)
        {
          v213 = 0;
          v199 = [a2 position] + 1;
          if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 1, v200 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v198 |= (v213 & 0x7F) << v196;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v196 += 7;
          v11 = v197++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_520;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v198;
        }

LABEL_520:
        v212 = 36;
        goto LABEL_529;
      case 0x1Fu:
        v161 = 0;
        v162 = 0;
        v163 = 0;
        *(a1 + 180) |= 0x800000000uLL;
        while (1)
        {
          v213 = 0;
          v164 = [a2 position] + 1;
          if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v163 |= (v213 & 0x7F) << v161;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v161 += 7;
          v11 = v162++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_492;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v163;
        }

LABEL_492:
        v212 = 164;
        goto LABEL_529;
      case 0x20u:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        *(a1 + 180) |= 0x200000000uLL;
        while (1)
        {
          v213 = 0;
          v114 = [a2 position] + 1;
          if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v113 |= (v213 & 0x7F) << v111;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v11 = v112++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_452;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v113;
        }

LABEL_452:
        v212 = 156;
        goto LABEL_529;
      case 0x21u:
        v166 = 0;
        v167 = 0;
        v168 = 0;
        *(a1 + 180) |= 0x200000uLL;
        while (1)
        {
          v213 = 0;
          v169 = [a2 position] + 1;
          if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v168 |= (v213 & 0x7F) << v166;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v166 += 7;
          v11 = v167++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_496;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v168;
        }

LABEL_496:
        v212 = 108;
        goto LABEL_529;
      case 0x22u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 180) |= 0x4000000uLL;
        while (1)
        {
          v213 = 0;
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

          v52 |= (v213 & 0x7F) << v50;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_404;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v52;
        }

LABEL_404:
        v212 = 128;
        goto LABEL_529;
      case 0x23u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 180) |= 0x80000uLL;
        while (1)
        {
          v213 = 0;
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

          v37 |= (v213 & 0x7F) << v35;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_392;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v37;
        }

LABEL_392:
        v212 = 100;
        goto LABEL_529;
      case 0x24u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 180) |= 0x100000uLL;
        while (1)
        {
          v213 = 0;
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

          v22 |= (v213 & 0x7F) << v20;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_380;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v22;
        }

LABEL_380:
        v212 = 104;
        goto LABEL_529;
      case 0x25u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 180) |= 0x8000000uLL;
        while (1)
        {
          v213 = 0;
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

          v27 |= (v213 & 0x7F) << v25;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_384;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v27;
        }

LABEL_384:
        v212 = 132;
        goto LABEL_529;
      case 0x26u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 180) |= 0x20000uLL;
        while (1)
        {
          v213 = 0;
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

          v16 |= (v213 & 0x7F) << v14;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_376;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v16;
        }

LABEL_376:
        v212 = 80;
        goto LABEL_529;
      case 0x27u:
        v201 = 0;
        v202 = 0;
        v203 = 0;
        *(a1 + 180) |= 0x2000000uLL;
        while (1)
        {
          v213 = 0;
          v204 = [a2 position] + 1;
          if (v204 >= [a2 position] && (v205 = objc_msgSend(a2, "position") + 1, v205 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v203 |= (v213 & 0x7F) << v201;
          if ((v213 & 0x80) == 0)
          {
            break;
          }

          v201 += 7;
          v11 = v202++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_524;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v203;
        }

LABEL_524:
        v212 = 124;
        goto LABEL_529;
      case 0x28u:
        v176 = 0;
        v177 = 0;
        v178 = 0;
        *(a1 + 180) |= 0x80000000uLL;
        break;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      v213 = 0;
      v179 = [a2 position] + 1;
      if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v178 |= (v213 & 0x7F) << v176;
      if ((v213 & 0x80) == 0)
      {
        break;
      }

      v176 += 7;
      v11 = v177++ >= 9;
      if (v11)
      {
        v19 = 0;
        goto LABEL_504;
      }
    }

    if ([a2 hasError])
    {
      v19 = 0;
    }

    else
    {
      v19 = v178;
    }

LABEL_504:
    v212 = 148;
LABEL_529:
    *(a1 + v212) = v19;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDFaceTimeCallInterruptionBeganReadFrom(uint64_t a1, void *a2)
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
        v49 = 0;
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

        v7 |= (v49 & 0x7F) << v5;
        if ((v49 & 0x80) == 0)
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
      if ((v11 >> 3) > 3)
      {
        break;
      }

      if (v12 != 1)
      {
        if (v12 == 2)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v50 = 0;
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

            v43 |= (v50 & 0x7F) << v41;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v10 = v42++ >= 9;
            if (v10)
            {
              v46 = 0;
              goto LABEL_109;
            }
          }

          if ([a2 hasError])
          {
            v46 = 0;
          }

          else
          {
            v46 = v43;
          }

LABEL_109:
          *(a1 + 8) = v46;
          goto LABEL_104;
        }

        if (v12 != 3)
        {
          goto LABEL_54;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 44) |= 8u;
        while (1)
        {
          v54 = 0;
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

          v21 |= (v54 & 0x7F) << v19;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_102;
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

LABEL_102:
        v47 = 32;
        goto LABEL_103;
      }

      String = PBReaderReadString();

      *(a1 + 16) = String;
LABEL_104:
      v48 = [a2 position];
      if (v48 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 > 5)
    {
      if (v12 == 6)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          v52 = 0;
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

          v38 |= (v52 & 0x7F) << v36;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v10 = v37++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_90;
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

LABEL_90:
        v47 = 28;
      }

      else
      {
        if (v12 != 7)
        {
LABEL_54:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_104;
        }

        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 44) |= 0x20u;
        while (1)
        {
          v51 = 0;
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

          v26 |= (v51 & 0x7F) << v24;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v10 = v25++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_98;
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

LABEL_98:
        v47 = 40;
      }
    }

    else if (v12 == 4)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      *(a1 + 44) |= 2u;
      while (1)
      {
        v53 = 0;
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

        v33 |= (v53 & 0x7F) << v31;
        if ((v53 & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
        v10 = v32++ >= 9;
        if (v10)
        {
          v18 = 0;
          goto LABEL_86;
        }
      }

      if ([a2 hasError])
      {
        v18 = 0;
      }

      else
      {
        v18 = v33;
      }

LABEL_86:
      v47 = 24;
    }

    else
    {
      if (v12 != 5)
      {
        goto LABEL_54;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      *(a1 + 44) |= 0x10u;
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
          goto LABEL_94;
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

LABEL_94:
      v47 = 36;
    }

LABEL_103:
    *(a1 + v47) = v18;
    goto LABEL_104;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDFaceTimeCallInterruptionEndedReadFrom(uint64_t a1, void *a2)
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
          *(a1 + 48) |= 2u;
          while (1)
          {
            v60 = 0;
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

            v43 |= (v60 & 0x7F) << v41;
            if ((v60 & 0x80) == 0)
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
          v52 = 24;
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
          *(a1 + 48) |= 0x10u;
          while (1)
          {
            v59 = 0;
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

            v27 |= (v59 & 0x7F) << v25;
            if ((v59 & 0x80) == 0)
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
          v52 = 36;
        }

LABEL_122:
        *(a1 + v52) = v24;
        goto LABEL_123;
      }

      if (v12 == 1)
      {
        String = PBReaderReadString();

        *(a1 + 16) = String;
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
        *(a1 + 48) |= 8u;
        while (1)
        {
          v57 = 0;
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

          v48 |= (v57 & 0x7F) << v46;
          if ((v57 & 0x80) == 0)
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
        v52 = 32;
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
        *(a1 + 48) |= 0x40u;
        while (1)
        {
          v56 = 0;
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

          v32 |= (v56 & 0x7F) << v30;
          if ((v56 & 0x80) == 0)
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
        v52 = 44;
      }
    }

    else if (v12 == 5)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      *(a1 + 48) |= 4u;
      while (1)
      {
        v58 = 0;
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

        v38 |= (v58 & 0x7F) << v36;
        if ((v58 & 0x80) == 0)
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
      v52 = 28;
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

uint64_t AWDFaceTimeCallInvitationReceivedReadFrom(uint64_t a1, void *a2)
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
          *(a1 + 32) |= 2u;
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
          v32 = 24;
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
          *(a1 + 32) |= 4u;
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
          v32 = 28;
        }

        *(a1 + v32) = v24;
      }

      else if (v12 == 1)
      {
        String = PBReaderReadString();

        *(a1 + 16) = String;
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
        *(a1 + 32) |= 1u;
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

uint64_t AWDFaceTimeCallInvitationSentReadFrom(uint64_t a1, void *a2)
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
        v44 = 0;
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

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
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
      if ((v11 >> 3) > 3)
      {
        break;
      }

      if (v12 != 1)
      {
        if (v12 == 2)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v45 = 0;
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

            v33 |= (v45 & 0x7F) << v31;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v10 = v32++ >= 9;
            if (v10)
            {
              v36 = 0;
              goto LABEL_87;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v33;
          }

LABEL_87:
          *(a1 + 8) = v36;
          goto LABEL_93;
        }

        if (v12 != 3)
        {
          goto LABEL_52;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          v46 = 0;
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

          v15 |= (v46 & 0x7F) << v13;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_79;
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

LABEL_79:
        v42 = 16;
        goto LABEL_92;
      }

      String = PBReaderReadString();

      *(a1 + 24) = String;
LABEL_93:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v12)
    {
      case 4:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 44) |= 0x10u;
        while (1)
        {
          v49 = 0;
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

          v27 |= (v49 & 0x7F) << v25;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v10 = v26++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_75;
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

LABEL_75:
        v42 = 40;
        break;
      case 5:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          v48 = 0;
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

          v39 |= (v48 & 0x7F) << v37;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v10 = v38++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_91;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v39;
        }

LABEL_91:
        v42 = 32;
        break;
      case 6:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 44) |= 8u;
        while (1)
        {
          v47 = 0;
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

          v21 |= (v47 & 0x7F) << v19;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_83;
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

LABEL_83:
        v42 = 36;
        break;
      default:
LABEL_52:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_93;
    }

LABEL_92:
    *(a1 + v42) = v18;
    goto LABEL_93;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDFaceTimeCallRelayInitiateReceivedReadFrom(uint64_t a1, void *a2)
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
          *(a1 + 32) |= 2u;
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
          v32 = 24;
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
          *(a1 + 32) |= 4u;
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
          v32 = 28;
        }

        *(a1 + v32) = v24;
      }

      else if (v12 == 1)
      {
        String = PBReaderReadString();

        *(a1 + 16) = String;
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
        *(a1 + 32) |= 1u;
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

uint64_t AWDFaceTimeCallRelayInitiateSentReadFrom(uint64_t a1, void *a2)
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
        v44 = 0;
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

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
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
      if ((v11 >> 3) > 3)
      {
        break;
      }

      if (v12 != 1)
      {
        if (v12 == 2)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v45 = 0;
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

            v33 |= (v45 & 0x7F) << v31;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v10 = v32++ >= 9;
            if (v10)
            {
              v36 = 0;
              goto LABEL_87;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v33;
          }

LABEL_87:
          *(a1 + 8) = v36;
          goto LABEL_93;
        }

        if (v12 != 3)
        {
          goto LABEL_52;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          v46 = 0;
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

          v15 |= (v46 & 0x7F) << v13;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_79;
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

LABEL_79:
        v42 = 16;
        goto LABEL_92;
      }

      String = PBReaderReadString();

      *(a1 + 24) = String;
LABEL_93:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v12)
    {
      case 4:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 44) |= 0x10u;
        while (1)
        {
          v49 = 0;
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

          v27 |= (v49 & 0x7F) << v25;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v10 = v26++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_75;
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

LABEL_75:
        v42 = 40;
        break;
      case 5:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          v48 = 0;
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

          v39 |= (v48 & 0x7F) << v37;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v10 = v38++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_91;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v39;
        }

LABEL_91:
        v42 = 32;
        break;
      case 6:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 44) |= 8u;
        while (1)
        {
          v47 = 0;
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

          v21 |= (v47 & 0x7F) << v19;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_83;
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

LABEL_83:
        v42 = 36;
        break;
      default:
LABEL_52:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_93;
    }

LABEL_92:
    *(a1 + v42) = v18;
    goto LABEL_93;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDFaceTimeCallRelayUpdateReceivedReadFrom(uint64_t a1, void *a2)
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
          *(a1 + 32) |= 2u;
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
          v32 = 24;
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
          *(a1 + 32) |= 4u;
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
          v32 = 28;
        }

        *(a1 + v32) = v24;
      }

      else if (v12 == 1)
      {
        String = PBReaderReadString();

        *(a1 + 16) = String;
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
        *(a1 + 32) |= 1u;
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

uint64_t AWDFaceTimeCallRelayUpdateSentReadFrom(uint64_t a1, void *a2)
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
        v44 = 0;
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

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
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
      if ((v11 >> 3) > 3)
      {
        break;
      }

      if (v12 != 1)
      {
        if (v12 == 2)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v45 = 0;
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

            v33 |= (v45 & 0x7F) << v31;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v10 = v32++ >= 9;
            if (v10)
            {
              v36 = 0;
              goto LABEL_87;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v33;
          }

LABEL_87:
          *(a1 + 8) = v36;
          goto LABEL_93;
        }

        if (v12 != 3)
        {
          goto LABEL_52;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          v46 = 0;
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

          v15 |= (v46 & 0x7F) << v13;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_79;
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

LABEL_79:
        v42 = 16;
        goto LABEL_92;
      }

      String = PBReaderReadString();

      *(a1 + 24) = String;
LABEL_93:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v12)
    {
      case 4:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 44) |= 0x10u;
        while (1)
        {
          v49 = 0;
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

          v27 |= (v49 & 0x7F) << v25;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v10 = v26++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_75;
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

LABEL_75:
        v42 = 40;
        break;
      case 5:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          v48 = 0;
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

          v39 |= (v48 & 0x7F) << v37;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v10 = v38++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_91;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v39;
        }

LABEL_91:
        v42 = 32;
        break;
      case 6:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 44) |= 8u;
        while (1)
        {
          v47 = 0;
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

          v21 |= (v47 & 0x7F) << v19;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_83;
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

LABEL_83:
        v42 = 36;
        break;
      default:
LABEL_52:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_93;
    }

LABEL_92:
    *(a1 + v42) = v18;
    goto LABEL_93;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDFaceTimeCallStartedReadFrom(uint64_t a1, void *a2)
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
        v49 = 0;
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

        v7 |= (v49 & 0x7F) << v5;
        if ((v49 & 0x80) == 0)
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
      if ((v11 >> 3) > 3)
      {
        break;
      }

      if (v12 != 1)
      {
        if (v12 == 2)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v50 = 0;
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

            v43 |= (v50 & 0x7F) << v41;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v10 = v42++ >= 9;
            if (v10)
            {
              v46 = 0;
              goto LABEL_109;
            }
          }

          if ([a2 hasError])
          {
            v46 = 0;
          }

          else
          {
            v46 = v43;
          }

LABEL_109:
          *(a1 + 8) = v46;
          goto LABEL_104;
        }

        if (v12 != 3)
        {
          goto LABEL_54;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 44) |= 8u;
        while (1)
        {
          v55 = 0;
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

          v21 |= (v55 & 0x7F) << v19;
          if ((v55 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_102;
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

LABEL_102:
        v47 = 32;
        goto LABEL_103;
      }

      String = PBReaderReadString();

      *(a1 + 16) = String;
LABEL_104:
      v48 = [a2 position];
      if (v48 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 > 5)
    {
      if (v12 == 6)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 44) |= 0x10u;
        while (1)
        {
          v52 = 0;
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

          v38 |= (v52 & 0x7F) << v36;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v10 = v37++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_90;
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

LABEL_90:
        v47 = 36;
      }

      else
      {
        if (v12 != 7)
        {
LABEL_54:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_104;
        }

        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 44) |= 0x20u;
        while (1)
        {
          v51 = 0;
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

          v26 |= (v51 & 0x7F) << v24;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v10 = v25++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_98;
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

LABEL_98:
        v47 = 40;
      }
    }

    else if (v12 == 4)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      *(a1 + 44) |= 4u;
      while (1)
      {
        v54 = 0;
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

        v33 |= (v54 & 0x7F) << v31;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
        v10 = v32++ >= 9;
        if (v10)
        {
          v18 = 0;
          goto LABEL_86;
        }
      }

      if ([a2 hasError])
      {
        v18 = 0;
      }

      else
      {
        v18 = v33;
      }

LABEL_86:
      v47 = 28;
    }

    else
    {
      if (v12 != 5)
      {
        goto LABEL_54;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      *(a1 + 44) |= 2u;
      while (1)
      {
        v53 = 0;
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

        v15 |= (v53 & 0x7F) << v13;
        if ((v53 & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        v10 = v14++ >= 9;
        if (v10)
        {
          v18 = 0;
          goto LABEL_94;
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

LABEL_94:
      v47 = 24;
    }

LABEL_103:
    *(a1 + v47) = v18;
    goto LABEL_104;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDHoneybeeSignatureReadFrom(uint64_t a1, void *a2)
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
        v38 = 0;
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

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
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
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 96) |= 1u;
            while (1)
            {
              v39 = 0;
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

              v26 |= (v39 & 0x7F) << v24;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v10 = v25++ >= 9;
              if (v10)
              {
                v29 = 0;
                goto LABEL_68;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v26;
            }

LABEL_68:
            *(a1 + 8) = v29;
            goto LABEL_61;
          }

          if (v12 == 2)
          {
            String = PBReaderReadString();

            v15 = String;
            v16 = 80;
            goto LABEL_60;
          }
        }

        else
        {
          switch(v12)
          {
            case 3:
              v33 = PBReaderReadString();

              v15 = v33;
              v16 = 72;
              goto LABEL_60;
            case 4:
              v30 = PBReaderReadString();

              v15 = v30;
              v16 = 64;
              goto LABEL_60;
            case 5:
              v14 = PBReaderReadString();

              v15 = v14;
              v16 = 56;
LABEL_60:
              *(a1 + v16) = v15;
              goto LABEL_61;
          }
        }
      }

      else if (v12 > 8)
      {
        switch(v12)
        {
          case 9:
            v35 = PBReaderReadString();

            v15 = v35;
            v16 = 32;
            goto LABEL_60;
          case 0xA:
            v32 = PBReaderReadString();
            if (v32)
            {
              [a1 addKeywords:v32];
            }

            goto LABEL_61;
          case 0xB:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 96) |= 2u;
            while (1)
            {
              v40 = 0;
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

              v19 |= (v40 & 0x7F) << v17;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v10 = v18++ >= 9;
              if (v10)
              {
                v22 = 0;
                goto LABEL_72;
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

LABEL_72:
            *(a1 + 16) = v22;
            goto LABEL_61;
        }
      }

      else
      {
        switch(v12)
        {
          case 6:
            v34 = PBReaderReadString();

            v15 = v34;
            v16 = 88;
            goto LABEL_60;
          case 7:
            v31 = PBReaderReadString();

            v15 = v31;
            v16 = 48;
            goto LABEL_60;
          case 8:
            v13 = PBReaderReadString();
            if (v13)
            {
              [a1 addRadarAttachmentTypes:v13];
            }

            goto LABEL_61;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_61:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSAppDeliveryReceiptReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) > 3)
      {
        switch(v12)
        {
          case 4:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 56) |= 2u;
            while (1)
            {
              v46 = 0;
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

              v31 |= (v46 & 0x7F) << v29;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v10 = v30++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_79;
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

LABEL_79:
            v41 = 16;
            break;
          case 5:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 56) |= 8u;
            while (1)
            {
              v45 = 0;
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

              v38 |= (v45 & 0x7F) << v36;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v10 = v37++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_91;
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

LABEL_91:
            v41 = 32;
            break;
          case 6:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 56) |= 4u;
            while (1)
            {
              v44 = 0;
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

              v21 |= (v44 & 0x7F) << v19;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v10 = v20++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_87;
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

LABEL_87:
            v41 = 24;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_93;
        }

        goto LABEL_92;
      }

      if (v12 == 1)
      {
        break;
      }

      if (v12 != 2)
      {
        if (v12 != 3)
        {
          goto LABEL_60;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 56) |= 1u;
        while (1)
        {
          v47 = 0;
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

          v15 |= (v47 & 0x7F) << v13;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_83;
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

LABEL_83:
        v41 = 8;
        goto LABEL_92;
      }

      String = PBReaderReadString();

      *(a1 + 48) = String;
LABEL_93:
      v42 = [a2 position];
      if (v42 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    *(a1 + 56) |= 0x10u;
    while (1)
    {
      v48 = 0;
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

      v26 |= (v48 & 0x7F) << v24;
      if ((v48 & 0x80) == 0)
      {
        break;
      }

      v24 += 7;
      v10 = v25++ >= 9;
      if (v10)
      {
        v18 = 0;
        goto LABEL_75;
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

LABEL_75:
    v41 = 40;
LABEL_92:
    *(a1 + v41) = v18;
    goto LABEL_93;
  }

  return [a2 hasError] ^ 1;
}