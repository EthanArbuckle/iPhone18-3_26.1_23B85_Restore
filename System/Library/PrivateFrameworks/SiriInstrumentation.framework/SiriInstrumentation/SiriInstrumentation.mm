uint64_t SISchemaCarPlayHeadUnitContextReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v17 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v17 & 0x7F) << v6;
      if ((v17 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) == 3)
    {
      v15 = PBReaderReadString();
      [a1 setVehicleManufacturer:v15];
      goto LABEL_24;
    }

    if (v14 == 2)
    {
      v15 = PBReaderReadString();
      [a1 setVehicleModel:v15];
      goto LABEL_24;
    }

    if (v14 == 1)
    {
      v15 = PBReaderReadString();
      [a1 setVehicleName:v15];
LABEL_24:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

uint64_t CDASchemaCDADeviceStateContextReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(CDASchemaCDADeviceStateActivityStarted);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !CDASchemaCDADeviceStateActivityStartedReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setStartedOrChanged:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(CDASchemaCDADeviceStateActivityEnded);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !CDASchemaCDADeviceStateActivityEndedReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setEnded:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t CDASchemaCDADeviceStateActivityStartedReadFrom(void *a1, void *a2)
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
      v29 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v29 & 0x7F) << v6;
      if ((v29 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
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

        v23 |= (v31 & 0x7F) << v21;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v12 = v22++ >= 9;
        if (v12)
        {
          v27 = 0;
          goto LABEL_47;
        }
      }

      if ([a2 hasError])
      {
        v27 = 0;
      }

      else
      {
        v27 = v23;
      }

LABEL_47:
      [a1 setState:v27];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v30 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v30 & 0x7F) << v14;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_43;
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

LABEL_43:
      [a1 setTrigger:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t CDASchemaCDAClientEventReadFrom(void *a1, void *a2)
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
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
      if ((v12 >> 3) <= 103)
      {
        if (v13 > 101)
        {
          if (v13 == 102)
          {
            v14 = objc_alloc_init(CDASchemaCDADebugElectionDecisionMade);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !CDASchemaCDADebugElectionDecisionMadeReadFrom(v14, a2))
            {
LABEL_63:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setDebugElectionDecisionMade:v14];
            goto LABEL_56;
          }

          if (v13 == 103)
          {
            v14 = objc_alloc_init(CDASchemaCDADeviceStateContext);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !CDASchemaCDADeviceStateContextReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setDeviceElectionStateContext:v14];
            goto LABEL_56;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v14 = objc_alloc_init(CDASchemaCDAClientEventMetadata);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !CDASchemaCDAClientEventMetadataReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setEventMetadata:v14];
            goto LABEL_56;
          }

          if (v13 == 101)
          {
            v14 = objc_alloc_init(CDASchemaCDAElectionDecisionMade);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !CDASchemaCDAElectionDecisionMadeReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setElectionDecisionMade:v14];
            goto LABEL_56;
          }
        }
      }

      else if (v13 <= 105)
      {
        if (v13 == 104)
        {
          v14 = objc_alloc_init(CDASchemaCDADeviceAdvertisingStartContext);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !CDASchemaCDADeviceAdvertisingStartContextReadFrom(v14, a2))
          {
            goto LABEL_63;
          }

          PBReaderRecallMark();
          [a1 setCdaAdvertisingStartChanged:v14];
          goto LABEL_56;
        }

        if (v13 == 105)
        {
          v14 = objc_alloc_init(CDASchemaCDADeviceAdvertisingEndContext);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !CDASchemaCDADeviceAdvertisingEndContextReadFrom(v14, a2))
          {
            goto LABEL_63;
          }

          PBReaderRecallMark();
          [a1 setCdaAdvertisingEndChanged:v14];
          goto LABEL_56;
        }
      }

      else
      {
        switch(v13)
        {
          case 'j':
            v14 = objc_alloc_init(CDASchemaCDAElectionTimerEnded);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !CDASchemaCDAElectionTimerEndedReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setElectionTimerEnded:v14];
            goto LABEL_56;
          case 'k':
            v14 = objc_alloc_init(CDASchemaCDAUserFeedbackCompleted);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !CDASchemaCDAUserFeedbackCompletedReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setUserFeedbackCompleted:v14];
            goto LABEL_56;
          case 'l':
            v14 = objc_alloc_init(CDASchemaCDAUserFeedbackParticipantCollectionReported);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !CDASchemaCDAUserFeedbackParticipantCollectionReportedReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setUserFeedbackParticipantCollectionReported:v14];
LABEL_56:

            goto LABEL_57;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_57:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t CDASchemaCDAClientEventMetadataReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SISchemaUUID);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setCdaId:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SISchemaUUIDReadFrom(void *a1, void *a2)
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
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadData();
      [a1 setValue:v14];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

id LogicalTimestamp.init(clockIdentifier:nanosecondsSinceBoot:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___SILogicalTimestampInternal_clockIdentifier;
  v7 = sub_1AA651944();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  *&v2[OBJC_IVAR___SILogicalTimestampInternal_nanosecondsSinceBoot] = a2;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id LogicalTimestamp.write(to:)(void *a1)
{
  v2 = v1;
  sub_1AA651C34();
  v4 = *(v2 + OBJC_IVAR___SILogicalTimestampInternal_nanosecondsSinceBoot);

  return [a1 writeUint64:v4 forTag:2];
}

uint64_t SISchemaClientEventReadFrom(void *a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v16) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = objc_alloc_init(SISchemaClientEventMetadata);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaClientEventMetadataReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setEventMetadata:v14];
        goto LABEL_250;
      case 2u:
        v14 = objc_alloc_init(SISchemaClientTransportEventMetadata);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaClientTransportEventMetadataReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setTransportMetadata:v14];
        goto LABEL_250;
      case 0x65u:
        v14 = objc_alloc_init(SISchemaAudioFirstBufferRecorded);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaAudioFirstBufferRecordedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setAudioFirstBufferRecorded:v14];
        goto LABEL_250;
      case 0x66u:
        v14 = objc_alloc_init(SISchemaAudioStopRecording);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaAudioStopRecordingReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setAudioStopRecording:v14];
        goto LABEL_250;
      case 0x67u:
        v14 = objc_alloc_init(SISchemaConversationTrace);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaConversationTraceReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setClientConversationTrace:v14];
        goto LABEL_250;
      case 0x68u:
        v14 = objc_alloc_init(SISchemaDeviceDynamicContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaDeviceDynamicContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setDeviceDynamicContext:v14];
        goto LABEL_250;
      case 0x69u:
        v14 = objc_alloc_init(SISchemaDeviceFixedContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaDeviceFixedContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setDeviceFixedContext:v14];
        goto LABEL_250;
      case 0x6Au:
        v14 = objc_alloc_init(SISchemaDictationContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaDictationContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setDictationContext:v14];
        goto LABEL_250;
      case 0x6Bu:
        v14 = objc_alloc_init(SISchemaInvocation);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaInvocationReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setInvocation:v14];
        goto LABEL_250;
      case 0x6Cu:
        v14 = objc_alloc_init(SISchemaLocation);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaLocationReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setLocation:v14];
        goto LABEL_250;
      case 0x6Du:
        v14 = objc_alloc_init(SISchemaPunchOut);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaPunchOutReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setPunchOut:v14];
        goto LABEL_250;
      case 0x6Fu:
        v14 = objc_alloc_init(SISchemaSiriCue);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaSiriCueReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setSiriCue:v14];
        goto LABEL_250;
      case 0x70u:
        v14 = objc_alloc_init(SISchemaUUFRPresented);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUUFRPresentedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUufrPresented:v14];
        goto LABEL_250;
      case 0x71u:
        v14 = objc_alloc_init(SISchemaSpeechTranscription);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaSpeechTranscriptionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setSpeechTranscription:v14];
        goto LABEL_250;
      case 0x72u:
        v14 = objc_alloc_init(SISchemaTextToSpeechBegin);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaTextToSpeechBeginReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setTextToSpeechBegin:v14];
        goto LABEL_250;
      case 0x73u:
        v14 = objc_alloc_init(SISchemaTextToSpeechEnd);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaTextToSpeechEndReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setTextToSpeechEnd:v14];
        goto LABEL_250;
      case 0x74u:
        v14 = objc_alloc_init(SISchemaUIStateTransition);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUIStateTransitionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUiStateTransition:v14];
        goto LABEL_250;
      case 0x75u:
        v14 = objc_alloc_init(SISchemaClientFlow);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaClientFlowReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setClientFlow:v14];
        goto LABEL_250;
      case 0x76u:
        v14 = objc_alloc_init(SISchemaDialogOutput);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaDialogOutputReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setDialogOutput:v14];
        goto LABEL_250;
      case 0x77u:
        v14 = objc_alloc_init(SISchemaDictationEndPointStop);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaDictationEndPointStopReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setDictationEndPointStop:v14];
        goto LABEL_250;
      case 0x78u:
        v14 = objc_alloc_init(SISchemaDictationEndPointCancel);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaDictationEndPointCancelReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setDictationEndPointCancel:v14];
        goto LABEL_250;
      case 0x79u:
        v14 = objc_alloc_init(SISchemaDictationAlternativeSelected);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaDictationAlternativeSelectedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setDictationAlternativeSelected:v14];
        goto LABEL_250;
      case 0x7Au:
        v14 = objc_alloc_init(SISchemaDictationTranscriptionMetadata);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaDictationTranscriptionMetadataReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setDictationTranscriptionMetadata:v14];
        goto LABEL_250;
      case 0x7Bu:
        v14 = objc_alloc_init(SISchemaCarPlayHeadUnitContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaCarPlayHeadUnitContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setCarPlayHeadUnitContext:v14];
        goto LABEL_250;
      case 0x7Cu:
        v14 = objc_alloc_init(SISchemaUUFRCompletion);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUUFRCompletionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUufrCompletion:v14];
        goto LABEL_250;
      case 0x7Du:
        v14 = objc_alloc_init(SISchemaUUFRShown);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUUFRShownReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUufrShown:v14];
        goto LABEL_250;
      case 0x7Eu:
        v14 = objc_alloc_init(SISchemaUUFRSaid);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUUFRSaidReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUufrSaid:v14];
        goto LABEL_250;
      case 0x7Fu:
        v14 = objc_alloc_init(SISchemaUUFRFatalError);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUUFRFatalErrorReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUufrFatalError:v14];
        goto LABEL_250;
      case 0x80u:
        v14 = objc_alloc_init(SISchemaDictationAlternativesViewed);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaDictationAlternativesViewedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setDictationAlternativesViewed:v14];
        goto LABEL_250;
      case 0x81u:
        v14 = objc_alloc_init(SISchemaIntercomMessageRecorded);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaIntercomMessageRecordedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setIntercomMessageRecorded:v14];
        goto LABEL_250;
      case 0x82u:
        v14 = objc_alloc_init(SISchemaCasinoRelationship);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaCasinoRelationshipReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setCasinoRelationship:v14];
        goto LABEL_250;
      case 0x83u:
        v14 = objc_alloc_init(SISchemaUserViewRegionInteraction);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUserViewRegionInteractionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUserViewRegionInteraction:v14];
        goto LABEL_250;
      case 0x84u:
        v14 = objc_alloc_init(SISchemaDeviceLockStateChanged);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaDeviceLockStateChangedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setDeviceLockStateChanged:v14];
        goto LABEL_250;
      case 0x85u:
        v14 = objc_alloc_init(SISchemaUEIRequestCategorization);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIRequestCategorizationReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiRequestCategorization:v14];
        goto LABEL_250;
      case 0x86u:
        v14 = objc_alloc_init(SISchemaAudioStopRecordingStarted);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaAudioStopRecordingStartedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setAudioStopRecordingStarted:v14];
        goto LABEL_250;
      case 0x87u:
        v14 = objc_alloc_init(SISchemaUEILaunchContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEILaunchContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiLaunchContext:v14];
        goto LABEL_250;
      case 0x88u:
        v14 = objc_alloc_init(SISchemaUEIUserSpeakingContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIUserSpeakingContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiUserSpeakingContext:v14];
        goto LABEL_250;
      case 0x89u:
        v14 = objc_alloc_init(SISchemaUEIUUFRReady);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIUUFRReadyReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiUUFRReady:v14];
        goto LABEL_250;
      case 0x8Au:
        v14 = objc_alloc_init(SISchemaUEIUIRenderingContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIUIRenderingContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiUIRenderingContext:v14];
        goto LABEL_250;
      case 0x8Bu:
        v14 = objc_alloc_init(SISchemaPNRTextToSpeechRequestReceived);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaPNRTextToSpeechRequestReceivedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setPnrTextToSpeechRequestReceived:v14];
        goto LABEL_250;
      case 0x8Cu:
        v14 = objc_alloc_init(SISchemaPNRSpeechRecognitionSourceContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaPNRSpeechRecognitionSourceContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setPnrSpeechRecognitionSourceContext:v14];
        goto LABEL_250;
      case 0x8Du:
        v14 = objc_alloc_init(SISchemaPNRFatalError);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaPNRFatalErrorReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setPnrFatalError:v14];
        goto LABEL_250;
      case 0x8Eu:
        v14 = objc_alloc_init(SISchemaTurnMTERequest);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaTurnMTERequestReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setTurnMTERequest:v14];
        goto LABEL_250;
      case 0x8Fu:
        v14 = objc_alloc_init(SISchemaKeyboardDismissed);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaKeyboardDismissedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setKeyboardDismissed:v14];
        goto LABEL_250;
      case 0x90u:
        v14 = objc_alloc_init(SISchemaEngagedAccessoryContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaEngagedAccessoryContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setEngagedAccessoryContext:v14];
        goto LABEL_250;
      case 0x91u:
        v14 = objc_alloc_init(SISchemaAnnounceCarPlayBannerTapped);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaAnnounceCarPlayBannerTappedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setAnnounceCarPlayBannerTapped:v14];
        goto LABEL_250;
      case 0x92u:
        v14 = objc_alloc_init(SISchemaAnnounceCarPlayGlyphSettingToggled);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaAnnounceCarPlayGlyphSettingToggledReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setAnnounceCarPlayGlyphSettingToggled:v14];
        goto LABEL_250;
      case 0x93u:
        v14 = objc_alloc_init(SISchemaDictationContentEdited);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaDictationContentEditedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setDictationContentEdited:v14];
        goto LABEL_250;
      case 0x94u:
        v14 = objc_alloc_init(SISchemaUUFRShownTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUUFRShownTier1ReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUufrShownTier1:v14];
        goto LABEL_250;
      case 0x96u:
        v14 = objc_alloc_init(SISchemaUEIDictationPartialResultUpdated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIDictationPartialResultUpdatedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiDictationPartialResultUpdated:v14];
        goto LABEL_250;
      case 0x97u:
        v14 = objc_alloc_init(SISchemaUEIDictationVoiceCommandExecuted);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIDictationVoiceCommandExecutedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiDictationVoiceCommandExecuted:v14];
        goto LABEL_250;
      case 0x98u:
        v14 = objc_alloc_init(SISchemaUEIDictationInputModeSwitchContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIDictationInputModeSwitchContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiDictationInputModeSwitchContext:v14];
        goto LABEL_250;
      case 0x99u:
        v14 = objc_alloc_init(SISchemaUEIDictationDiscoveryToolTipDisplayContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIDictationDiscoveryToolTipDisplayContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiDictationToolTipDisplayContext:v14];
        goto LABEL_250;
      case 0x9Au:
        v14 = objc_alloc_init(SISchemaUEIHostingPlatformViewAppearContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIHostingPlatformViewAppearContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setHostPlatformViewAppearContext:v14];
        goto LABEL_250;
      case 0x9Bu:
        v14 = objc_alloc_init(SISchemaUEIHostingPlatformViewDisappearContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIHostingPlatformViewDisappearContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setHostPlatformViewDisappearContext:v14];
        goto LABEL_250;
      case 0x9Cu:
        v14 = objc_alloc_init(SISchemaUEIDictationTranscriptionTokenized);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIDictationTranscriptionTokenizedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiDictationTranscriptionTokenized:v14];
        goto LABEL_250;
      case 0x9Du:
        v14 = objc_alloc_init(SISchemaUEIDictationAlternativeConfusionPairsSelected);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIDictationAlternativeConfusionPairsSelectedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setDictationAlternativesSelected:v14];
        goto LABEL_250;
      case 0x9Eu:
        v14 = objc_alloc_init(SISchemaUUFRSelected);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUUFRSelectedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUufrSelected:v14];
        goto LABEL_250;
      case 0x9Fu:
        v14 = objc_alloc_init(SISchemaUEIDictationAlternativeTextPairsSelected);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIDictationAlternativeTextPairsSelectedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiDictationAlternativeTextPairsSelected:v14];
        goto LABEL_250;
      case 0xA0u:
        v14 = objc_alloc_init(SISchemaUEIUserBargeInDetected);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIUserBargeInDetectedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiUserBargeInDetected:v14];
        goto LABEL_250;
      case 0xA1u:
        v14 = objc_alloc_init(SISchemaUEIDictationEnablementPromptShown);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIDictationEnablementPromptShownReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiDictationEnablementPromptShown:v14];
        goto LABEL_250;
      case 0xA2u:
        v14 = objc_alloc_init(SISchemaUEISiriCarCommandContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEISiriCarCommandContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiSiriCarCommandContext:v14];
        goto LABEL_250;
      case 0xA3u:
        v14 = objc_alloc_init(SISchemaUEIVisionSnippetDismissed);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIVisionSnippetDismissedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiVisionSnippetDismissed:v14];
        goto LABEL_250;
      case 0xA4u:
        v14 = objc_alloc_init(SISchemaUEISiriWasUnavailable);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEISiriWasUnavailableReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiSiriWasUnavailable:v14];
        goto LABEL_250;
      case 0xA5u:
        v14 = objc_alloc_init(SISchemaBluetoothCarPreferredAudioRouteChanged);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaBluetoothCarPreferredAudioRouteChangedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setPreferredAudioRouteChanged:v14];
        goto LABEL_250;
      case 0xA6u:
        v14 = objc_alloc_init(SISchemaUEIDictationContentEditedTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIDictationContentEditedTier1ReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiDictationContentEditedTier1:v14];
        goto LABEL_250;
      case 0xA7u:
        v14 = objc_alloc_init(SISchemaUEIDictationVoiceCommandUndoTapAction);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIDictationVoiceCommandUndoTapActionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiDictationVoiceCommandUndoTapAction:v14];
        goto LABEL_250;
      case 0xA8u:
        v14 = objc_alloc_init(SISchemaUEIDictationVoiceCommandDisambiguationAction);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIDictationVoiceCommandDisambiguationActionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiDictationVoiceCommandDisambiguationAction:v14];
        goto LABEL_250;
      case 0xA9u:
        v14 = objc_alloc_init(SISchemaUEIDictationVoiceCommandKeyboardAction);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIDictationVoiceCommandKeyboardActionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiDictationVoiceCommandKeyboardAction:v14];
        goto LABEL_250;
      case 0xAAu:
        v14 = objc_alloc_init(SISchemaUEIDictationEuclidAlternativesEvent);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIDictationEuclidAlternativesEventReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiDictationEuclidAlternativesEvent:v14];
        goto LABEL_250;
      case 0xABu:
        v14 = objc_alloc_init(SISchemaUEIDictationEuclidAlternativesEventTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIDictationEuclidAlternativesEventTier1ReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiDictationEuclidAlternativesEventTier1:v14];
        goto LABEL_250;
      case 0xACu:
        v14 = objc_alloc_init(SISchemaUEIDictationEuclidSpeechAlternativesSelected);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIDictationEuclidSpeechAlternativesSelectedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiDictationEuclidSpeechAlternativesSelected:v14];
        goto LABEL_250;
      case 0xADu:
        v14 = objc_alloc_init(SISchemaUEIDictationEuclidSpeechAlternativesSelectedTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIDictationEuclidSpeechAlternativesSelectedTier1ReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiDictationEuclidSpeechAlternativesSelectedTier1:v14];
        goto LABEL_250;
      case 0xAEu:
        v14 = objc_alloc_init(SISchemaTypingRequestTrace);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaTypingRequestTraceReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setTypingRequestTrace:v14];
        goto LABEL_250;
      case 0xAFu:
        v14 = objc_alloc_init(SISchemaUEIInvocationTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEIInvocationTier1ReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setUeiInvocationTier1:v14];
        goto LABEL_250;
      case 0xB0u:
        v14 = objc_alloc_init(SISchemaUEITranscriptShown);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUEITranscriptShownReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_256;
        }

        PBReaderRecallMark();
        [a1 setTranscriptShown:v14];
        goto LABEL_250;
      case 0xB1u:
        v14 = objc_alloc_init(SISchemaUEITranscriptTapped);
        v16 = 0;
        v17 = 0;
        if (PBReaderPlaceMark() && (SISchemaUEITranscriptTappedReadFrom(v14, a2) & 1) != 0)
        {
          PBReaderRecallMark();
          [a1 setTranscriptTapped:v14];
LABEL_250:

LABEL_251:
          v4 = a2;
          continue;
        }

LABEL_256:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_251;
    }
  }
}

uint64_t SISchemaConversationTraceReadFrom(void *a1, void *a2)
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
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadData();
      [a1 setPreviousTurnID:v14];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t SISchemaCarPlayInvocationContextReadFrom(void *a1, void *a2)
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
      v38 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v38 & 0x7F) << v6;
      if ((v38 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 3)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (1)
        {
          v40 = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v40 & 0x7F) << v31;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v12 = v32++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_64;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v33;
        }

LABEL_64:
        [a1 setEnhancedVoiceTriggerMode:v37];
        continue;
      }

      if (v14 == 4)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          v39 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v39 & 0x7F) << v22;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_60;
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

LABEL_60:
        [a1 setCarPlayConnection:v28];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v30 = PBReaderReadString();
        [a1 setBundleID:v30];

        continue;
      }

      if (v14 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v41 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v41 & 0x7F) << v15;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_56;
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

LABEL_56:
        [a1 setDirectAction:v21];
        continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t SISchemaInvocationReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v37) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v37 & 0x7F) << v5;
      if ((v37 & 0x80) == 0)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v37) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v37 & 0x7F) << v13;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_83:
            [a1 setInvocationAction:v19];
            goto LABEL_78;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_83;
      case 2u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v37) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v37 & 0x7F) << v21;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_87;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_87:
        [a1 setInvocationSource:v27];
        goto LABEL_78;
      case 3u:
        v20 = objc_alloc_init(SISchemaViewContainer);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !SISchemaViewContainerReadFrom(v20, a2))
        {
          goto LABEL_92;
        }

        PBReaderRecallMark();
        [a1 setViewContainer:v20];
        goto LABEL_77;
      case 4u:
        v20 = objc_alloc_init(SISchemaCarPlayInvocationContext);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !SISchemaCarPlayInvocationContextReadFrom(v20, a2))
        {
          goto LABEL_92;
        }

        PBReaderRecallMark();
        [a1 setCarPlayInvocationContext:v20];
        goto LABEL_77;
      case 5u:
        v20 = objc_alloc_init(SISchemaVerticalLayoutCardSectionInvocationContext);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !SISchemaVerticalLayoutCardSectionInvocationContextReadFrom(v20, a2))
        {
          goto LABEL_92;
        }

        PBReaderRecallMark();
        [a1 setCardInvocationContext:v20];
        goto LABEL_77;
      case 6u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v37) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v37 & 0x7F) << v28;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_89;
          }
        }

        v34 = (v30 != 0) & ~[a2 hasError];
LABEL_89:
        [a1 setIsDeviceLocked:v34];
        goto LABEL_78;
      case 7u:
        v20 = objc_alloc_init(SISchemaTVRemoteInvocationContext);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !SISchemaTVRemoteInvocationContextReadFrom(v20, a2))
        {
          goto LABEL_92;
        }

        PBReaderRecallMark();
        [a1 setTvRemoteInvocationContext:v20];
        goto LABEL_77;
      case 8u:
        v20 = objc_alloc_init(SISchemaCardSectionKeyboardInvocationContext);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !SISchemaCardSectionKeyboardInvocationContextReadFrom(v20, a2))
        {
          goto LABEL_92;
        }

        PBReaderRecallMark();
        [a1 setKeyboardInvocationContext:v20];
        goto LABEL_77;
      case 9u:
        v20 = objc_alloc_init(SISchemaHardwareButtonInvocationContext);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !SISchemaHardwareButtonInvocationContextReadFrom(v20, a2))
        {
          goto LABEL_92;
        }

        PBReaderRecallMark();
        [a1 setHardwareButtonInvocationContext:v20];
        goto LABEL_77;
      case 0xAu:
        v20 = objc_alloc_init(SISchemaBluetoothCarInvocationContext);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !SISchemaBluetoothCarInvocationContextReadFrom(v20, a2))
        {
          goto LABEL_92;
        }

        PBReaderRecallMark();
        [a1 setBluetoothCarInvocationContext:v20];
        goto LABEL_77;
      case 0xBu:
        v20 = objc_alloc_init(SISchemaTapToEditInvocationContext);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !SISchemaTapToEditInvocationContextReadFrom(v20, a2))
        {
          goto LABEL_92;
        }

        PBReaderRecallMark();
        [a1 setTapToEditContext:v20];
        goto LABEL_77;
      case 0xCu:
        v20 = objc_alloc_init(SISchemaUUID);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v20, a2))
        {
          goto LABEL_92;
        }

        PBReaderRecallMark();
        [a1 setLinkId:v20];
        goto LABEL_77;
      case 0xDu:
        v20 = objc_alloc_init(SISchemaTypeToSiriInvocationContext);
        v37 = 0;
        v38 = 0;
        if (PBReaderPlaceMark() && SISchemaTypeToSiriInvocationContextReadFrom(v20, a2))
        {
          PBReaderRecallMark();
          [a1 setTypeToSiriContext:v20];
LABEL_77:

LABEL_78:
          v35 = [a2 position];
          if (v35 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_92:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_78;
    }
  }
}

uint64_t SISchemaTurnMTERequestReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SISchemaUUID);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setMteRequestId:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SISchemaUEIHostingPlatformViewAppearStartedReadFrom(void *a1, void *a2)
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
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t SISchemaUEIHostingPlatformViewAppearContextReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(SISchemaUEIHostingPlatformViewAppearStarted);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SISchemaUEIHostingPlatformViewAppearStartedReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setStartedOrChanged:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(SISchemaUEIHostingPlatformViewAppearEnded);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SISchemaUEIHostingPlatformViewAppearEndedReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setEnded:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t OUTLINED_FUNCTION_2()
{

  return sub_1AA651F94();
}

id OUTLINED_FUNCTION_2_2@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if (a1 == 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = a2;
  }

  return v4;
}

uint64_t OUTLINED_FUNCTION_2_4(__n128 *a1, __n128 a2)
{
  a1[3] = a2;
  a1[4].n128_u32[0] = 1;
  sub_1A9CAE168(a1, v2);
}

uint64_t OUTLINED_FUNCTION_2_9@<X0>(uint64_t a1@<X8>)
{

  return sub_1A9CBE4AC(0, a1 + 1, 1);
}

uint64_t NLRouterSchemaNLRouterSubComponentSetupContextReadFrom(void *a1, void *a2)
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
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
          v14 = objc_alloc_init(SISchemaUUID);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {
LABEL_45:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setContextId:v14];
          goto LABEL_38;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(NLRouterSchemaNLRouterSubComponentSetupStarted);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !NLRouterSchemaNLRouterSubComponentSetupStartedReadFrom(v14, a2))
          {
            goto LABEL_45;
          }

          PBReaderRecallMark();
          [a1 setStartedOrChanged:v14];
          goto LABEL_38;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(NLRouterSchemaNLRouterSubComponentSetupEnded);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !NLRouterSchemaNLRouterSubComponentSetupEndedReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setEnded:v14];
            goto LABEL_38;
          case 4:
            v14 = objc_alloc_init(NLRouterSchemaNLRouterSubComponentSetupFailed);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !NLRouterSchemaNLRouterSubComponentSetupFailedReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setFailed:v14];
            goto LABEL_38;
          case 5:
            v14 = objc_alloc_init(SISchemaUUID);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setTraceId:v14];
LABEL_38:

            goto LABEL_39;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NLRouterSchemaNLRouterSubComponentSetupStartedReadFrom(void *a1, void *a2)
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
        v20 = objc_alloc_init(SISchemaVersion);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !SISchemaVersionReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setAssetVersion:v20];
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        [a1 setNlRouterSubComponent:v19];
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

uint64_t SISchemaClientEventMetadataReadFrom(void *a1, void *a2)
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
      v24 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v24 & 0x7F) << v6;
      if ((v24 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 3)
      {
        v15 = PBReaderReadString();
        [a1 setEventGeneratedTimestampRefId:v15];
        goto LABEL_37;
      }

      if (v14 == 4)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v25 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v25 & 0x7F) << v16;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_41;
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

LABEL_41:
        [a1 setEventGeneratedRelativeToBootTimeTimestampNs:v22];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v15 = PBReaderReadData();
        [a1 setTurnID:v15];
        goto LABEL_37;
      }

      if (v14 == 2)
      {
        v15 = PBReaderReadData();
        [a1 setSiriDeviceID:v15];
LABEL_37:

        continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ACTVSchemaACTVClientEventReadFrom(void *a1, void *a2)
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
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
      if ((v12 >> 3) == 102)
      {
        v14 = objc_alloc_init(ACTVSchemaACTVTurnActivated);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ACTVSchemaACTVTurnActivatedReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setTurnActivated:v14];
        goto LABEL_29;
      }

      if (v13 == 101)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(ACTVSchemaACTVClientEventMetadata);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ACTVSchemaACTVClientEventMetadataReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setEventMetadata:v14];
LABEL_29:

        goto LABEL_31;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(ACTVSchemaACTVButtonInteractionDetected);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !ACTVSchemaACTVButtonInteractionDetectedReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setButtonInteractionDetected:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ACTVSchemaACTVClientEventMetadataReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SISchemaUUID);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setActivationEventId:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ACTVSchemaACTVButtonInteractionDetectedReadFrom(void *a1, void *a2)
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
      v23 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v23 & 0x7F) << v6;
      if ((v23 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 2)
    {
      v21 = PBReaderReadString();
      [a1 setButtonName:v21];
    }

    else if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v24 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v24 & 0x7F) << v14;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_35;
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

LABEL_35:
      [a1 setButtonInteractionType:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ORCHSchemaORCHClientEventMetadataReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        v13 = objc_alloc_init(SISchemaUUID);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setRequestId:v13];
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadString();
    [a1 setResultCandidateId:v13];
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SISchemaVersionReadFrom(void *a1, void *a2)
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
      v38 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v38 & 0x7F) << v6;
      if ((v38 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 4)
      {
        v37 = PBReaderReadString();
        [a1 setPrerelease:v37];

        continue;
      }

      if (v14 == 3)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          v39 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v39 & 0x7F) << v22;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_60;
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

LABEL_60:
        [a1 setPatch:v28];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        while (1)
        {
          v41 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v41 & 0x7F) << v30;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_64;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v32;
        }

LABEL_64:
        [a1 setMajor:v36];
        continue;
      }

      if (v14 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v40 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v40 & 0x7F) << v15;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_56;
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

LABEL_56:
        [a1 setMinor:v21];
        continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t SISchemaAssetReadFrom(void *a1, void *a2)
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
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
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
          v14 = objc_alloc_init(SISchemaVersion);
          v24[0] = 0;
          v24[1] = 0;
          if (!PBReaderPlaceMark() || !SISchemaVersionReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setAssetVersion:v14];
          goto LABEL_38;
        }

        if (v13 == 4)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v24[0]) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24[0] & 0x7F) << v15;
            if ((v24[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_42;
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

LABEL_42:
          [a1 setAssetLocale:v21];
          goto LABEL_43;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          [a1 setTrialNamespace:v14];
          goto LABEL_38;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setAssetName:v14];
LABEL_38:

          goto LABEL_43;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ORCHSchemaORCHClientEventReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v17) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v17 & 0x7F) << v5;
      if ((v17 & 0x80) == 0)
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
    switch((v12 >> 3))
    {
      case 0x65u:
        v14 = objc_alloc_init(ORCHSchemaORCHRequestContext);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHRequestContextReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setRequestContext:v14];
        goto LABEL_148;
      case 0x66u:
        v14 = objc_alloc_init(ORCHSchemaORCHASRBridgeContext);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHASRBridgeContextReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setAsrBridgeContext:v14];
        goto LABEL_148;
      case 0x67u:
        v14 = objc_alloc_init(ORCHSchemaORCHCDMBridgeContext);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHCDMBridgeContextReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setCdmBridgeContext:v14];
        goto LABEL_148;
      case 0x68u:
        v14 = objc_alloc_init(ORCHSchemaORCHExecutionBridgeContext);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHExecutionBridgeContextReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setExecutionBridgeContext:v14];
        goto LABEL_148;
      case 0x69u:
        v14 = objc_alloc_init(ORCHSchemaORCHServerFallbackContext);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHServerFallbackContextReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setServerFallbackContext:v14];
        goto LABEL_148;
      case 0x6Au:
        v14 = objc_alloc_init(ORCHSchemaORCHFlowOutputSubmitted);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHFlowOutputSubmittedReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setFlowOutputSubmitted:v14];
        goto LABEL_148;
      case 0x6Bu:
        v14 = objc_alloc_init(ORCHSchemaORCHResultCandidateReceived);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHResultCandidateReceivedReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setResultCandidate:v14];
        goto LABEL_148;
      case 0x6Cu:
        v14 = objc_alloc_init(ORCHSchemaORCHResultSelected);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHResultSelectedReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setResultSelected:v14];
        goto LABEL_148;
      case 0x6Du:
        v14 = objc_alloc_init(ORCHSchemaORCHConversationContextSubmitted);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHConversationContextSubmittedReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setContextSubmissionMessage:v14];
        goto LABEL_148;
      case 0x6Eu:
        v14 = objc_alloc_init(ORCHSchemaORCHAssetsReported);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHAssetsReportedReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setAvailableAssets:v14];
        goto LABEL_148;
      case 0x6Fu:
        v14 = objc_alloc_init(ORCHSchemaORCHDeviceDynamicContext);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHDeviceDynamicContextReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setOrchDeviceDynamicContext:v14];
        goto LABEL_148;
      case 0x70u:
        v14 = objc_alloc_init(ORCHSchemaORCHPommesBridgeContext);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHPommesBridgeContextReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setPommesBridgeContext:v14];
        goto LABEL_148;
      case 0x71u:
        v14 = objc_alloc_init(ORCHSchemaORCHMUXBridgeContext);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHMUXBridgeContextReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setMuxBridgeContext:v14];
        goto LABEL_148;
      case 0x72u:
        v14 = objc_alloc_init(ORCHSchemaORCHMultiUserResultCandidateReceived);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHMultiUserResultCandidateReceivedReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setMultiUserResultCandidate:v14];
        goto LABEL_148;
      case 0x73u:
        v14 = objc_alloc_init(ORCHSchemaORCHMultiUserResultCandidateSelected);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHMultiUserResultCandidateSelectedReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setMultiUserResultSelected:v14];
        goto LABEL_148;
      case 0x74u:
        v14 = objc_alloc_init(ORCHSchemaORCHAceCommandContext);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHAceCommandContextReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setAceCommandContext:v14];
        goto LABEL_148;
      case 0x75u:
        v14 = objc_alloc_init(ORCHSchemaORCHTRPFinalized);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHTRPFinalizedReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setTrpFinalized:v14];
        goto LABEL_148;
      case 0x76u:
        v14 = objc_alloc_init(ORCHSchemaORCHRequestMitigated);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHRequestMitigatedReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setRequestMitigated:v14];
        goto LABEL_148;
      case 0x77u:
        v14 = objc_alloc_init(ORCHSchemaORCHNLV3ServerFallbackDeprecated);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHNLV3ServerFallbackDeprecatedReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setNlv3ServerFallbackDeprecated:v14];
        goto LABEL_148;
      case 0x78u:
        v14 = objc_alloc_init(ORCHSchemaORCHUIActivationContext);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHUIActivationContextReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setUiActivationContext:v14];
        goto LABEL_148;
      case 0x79u:
        v14 = objc_alloc_init(ORCHSchemaORCHTRPCandidateReceived);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHTRPCandidateReceivedReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setTrpCandidateReceived:v14];
        goto LABEL_148;
      case 0x7Au:
        v14 = objc_alloc_init(ORCHSchemaORCHIdentityBridgeRequestContext);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHIdentityBridgeRequestContextReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setIdentityBridgeRequestContext:v14];
        goto LABEL_148;
      case 0x7Bu:
        v14 = objc_alloc_init(ORCHSchemaORCHAssetSetsReported);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHAssetSetsReportedReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setAssetSetsReported:v14];
        goto LABEL_148;
      case 0x7Cu:
        v14 = objc_alloc_init(ORCHSchemaORCHCandidateRequestContext);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHCandidateRequestContextReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setCandidateRequestContext:v14];
        goto LABEL_148;
      case 0x7Du:
        v14 = objc_alloc_init(ORCHSchemaORCHPowerContextPolicyReported);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHPowerContextPolicyReportedReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setPowerContextPolicyReported:v14];
        goto LABEL_148;
      case 0x7Eu:
        v14 = objc_alloc_init(ORCHSchemaORCHExecuteOnRemoteRequestContext);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHExecuteOnRemoteRequestContextReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setExecuteOnRemoteRequestContext:v14];
        goto LABEL_148;
      case 0x7Fu:
        v14 = objc_alloc_init(ORCHSchemaORCHAssistantDaemonLaunchMetadataReported);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHAssistantDaemonLaunchMetadataReportedReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setAssistantdLaunchMetadataReported:v14];
        goto LABEL_148;
      case 0x80u:
        v14 = objc_alloc_init(ORCHSchemaORCHIntelligenceFlowQuerySent);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHIntelligenceFlowQuerySentReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setIntelligenceFlowQuerySent:v14];
        goto LABEL_148;
      case 0x81u:
        v14 = objc_alloc_init(ORCHSchemaORCHSubRequestContext);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHSubRequestContextReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setSubRequestContext:v14];
        goto LABEL_148;
      case 0x82u:
        v14 = objc_alloc_init(ORCHSchemaNLRouterRewrittenUtteranceTier1);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaNLRouterRewrittenUtteranceTier1ReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setRouterRewrittenUtterance:v14];
        goto LABEL_148;
      case 0x83u:
        v14 = objc_alloc_init(ORCHSchemaORCHNLRouterBridgeContext);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHNLRouterBridgeContextReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setNlRouterBridgeContext:v14];
        goto LABEL_148;
      case 0x84u:
        v14 = objc_alloc_init(ORCHSchemaORCHShimToolContext);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHShimToolContextReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setShimToolContext:v14];
        goto LABEL_148;
      case 0x85u:
        v14 = objc_alloc_init(ORCHSchemaORCHIntelligenceFlowSubRequestFallback);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHIntelligenceFlowSubRequestFallbackReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setSubRequestFallback:v14];
        goto LABEL_148;
      case 0x86u:
        v14 = objc_alloc_init(ORCHSchemaORCHNLRouterBridgeSubComponentContext);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHNLRouterBridgeSubComponentContextReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setNlRouterBridgeSubComponentContext:v14];
        goto LABEL_148;
      case 0x87u:
        v14 = objc_alloc_init(ORCHSchemaORCHUnsupportedLanguageDetected);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHUnsupportedLanguageDetectedReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setUnsupportedLanguageDetected:v14];
        goto LABEL_148;
      case 0x88u:
        v14 = objc_alloc_init(ORCHSchemaORCHTRPCandidateCreated);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHTRPCandidateCreatedReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setTrpCandidateCreated:v14];
        goto LABEL_148;
      case 0x89u:
        v14 = objc_alloc_init(ORCHSchemaORCHAudioTopologyReported);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHAudioTopologyReportedReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setAudioTopologyReported:v14];
        goto LABEL_148;
      case 0x8Au:
        v14 = objc_alloc_init(ORCHSchemaORCHIntelligenceFlowRequestContext);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHIntelligenceFlowRequestContextReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setIntelligenceFlowRequestContext:v14];
        goto LABEL_148;
      case 0x8Bu:
        v14 = objc_alloc_init(ORCHSchemaORCHMUXUserSessionState);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHMUXUserSessionStateReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setUserSessionState:v14];
        goto LABEL_148;
      case 0x8Cu:
        v14 = objc_alloc_init(ORCHSchemaORCHServerExecutionValuesReported);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHServerExecutionValuesReportedReadFrom(v14, a2))
        {
          goto LABEL_152;
        }

        PBReaderRecallMark();
        [a1 setServerExecutionValuesReported:v14];
        goto LABEL_148;
      default:
        if (v13 != 2)
        {
          if (v13 != 1)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }

            goto LABEL_149;
          }

          v14 = objc_alloc_init(ORCHSchemaORCHClientEventMetadata);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !ORCHSchemaORCHClientEventMetadataReadFrom(v14, a2))
          {
            goto LABEL_152;
          }

          PBReaderRecallMark();
          [a1 setEventMetadata:v14];
LABEL_148:

LABEL_149:
          v15 = [a2 position];
          if (v15 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        v14 = objc_alloc_init(ORCHSchemaORCHResourceUtilizationMetadata);
        v17 = 0;
        v18 = 0;
        if (PBReaderPlaceMark() && ORCHSchemaORCHResourceUtilizationMetadataReadFrom(v14, a2))
        {
          PBReaderRecallMark();
          [a1 setResourceUtilizationMetadata:v14];
          goto LABEL_148;
        }

LABEL_152:

        return 0;
    }
  }
}

uint64_t SISchemaUEILaunchContextReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(SISchemaUEILaunchStarted);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SISchemaUEILaunchStartedReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setStartedOrChanged:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(SISchemaUEILaunchEnded);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SISchemaUEILaunchEndedReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setEnded:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SISchemaUEILaunchStartedReadFrom(void *a1, void *a2)
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
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NLRouterSchemaNLRouterClientEventReadFrom(void *a1, void *a2)
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
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
      if ((v12 >> 3) <= 103)
      {
        if (v13 > 101)
        {
          if (v13 == 102)
          {
            v14 = objc_alloc_init(NLRouterSchemaNLRouterBridgeHandleContext);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !NLRouterSchemaNLRouterBridgeHandleContextReadFrom(v14, a2))
            {
LABEL_63:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setNlRouterBridgeHandleContext:v14];
            goto LABEL_56;
          }

          if (v13 == 103)
          {
            v14 = objc_alloc_init(NLRouterSchemaNLRouterSubComponentHandleContext);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !NLRouterSchemaNLRouterSubComponentHandleContextReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setNlRouterSubComponentHandleContext:v14];
            goto LABEL_56;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v14 = objc_alloc_init(NLRouterSchemaNLRouterClientEventMetadata);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !NLRouterSchemaNLRouterClientEventMetadataReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setEventMetadata:v14];
            goto LABEL_56;
          }

          if (v13 == 101)
          {
            v14 = objc_alloc_init(NLRouterSchemaNLRouterHandleContext);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !NLRouterSchemaNLRouterHandleContextReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setNlRouterHandleContext:v14];
            goto LABEL_56;
          }
        }
      }

      else if (v13 <= 105)
      {
        if (v13 == 104)
        {
          v14 = objc_alloc_init(NLRouterSchemaNLRouterSubComponentSetupContext);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !NLRouterSchemaNLRouterSubComponentSetupContextReadFrom(v14, a2))
          {
            goto LABEL_63;
          }

          PBReaderRecallMark();
          [a1 setNlRouterSubComponentSetupContext:v14];
          goto LABEL_56;
        }

        if (v13 == 105)
        {
          v14 = objc_alloc_init(NLRouterSchemaNLRouterSubComponentTriggeredHeuristicRuleTier1);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !NLRouterSchemaNLRouterSubComponentTriggeredHeuristicRuleTier1ReadFrom(v14, a2))
          {
            goto LABEL_63;
          }

          PBReaderRecallMark();
          [a1 setNlRouterSubComponentTriggeredHeuristicRuleTier1:v14];
          goto LABEL_56;
        }
      }

      else
      {
        switch(v13)
        {
          case 'j':
            v14 = objc_alloc_init(NLRouterSchemaNLRouterPromptGenerationSignalsCaptured);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !NLRouterSchemaNLRouterPromptGenerationSignalsCapturedReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setNlRouterPromptGenerationSignalsCaptured:v14];
            goto LABEL_56;
          case 'k':
            v14 = objc_alloc_init(NLRouterSchemaNLRouterPromptGenerated);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !NLRouterSchemaNLRouterPromptGeneratedReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setNlRouterPromptGenerated:v14];
            goto LABEL_56;
          case 'l':
            v14 = objc_alloc_init(NLRouterSchemaNLRouterInvalidDecisionEmitted);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !NLRouterSchemaNLRouterInvalidDecisionEmittedReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setNLRouterInvalidDecisionEmitted:v14];
LABEL_56:

            goto LABEL_57;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_57:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NLRouterSchemaNLRouterClientEventMetadataReadFrom(void *a1, void *a2)
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
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(SISchemaUUID);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setTrpId:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(SISchemaUUID);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setNlRouterId:v14];
LABEL_29:

        goto LABEL_31;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(SISchemaUUID);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setRequestId:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SISchemaRequestLinkReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(SISchemaRequestLinkInfo);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SISchemaRequestLinkInfoReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setSource:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(SISchemaRequestLinkInfo);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SISchemaRequestLinkInfoReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setTarget:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SISchemaRequestLinkInfoReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 1)
      {
        v20 = objc_alloc_init(SISchemaUUID);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setUuid:v20];
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        [a1 setComponent:v19];
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

void OUTLINED_FUNCTION_1_2()
{
}

uint64_t OUTLINED_FUNCTION_1_4(__n128 *a1, __n128 a2)
{
  a1[3] = a2;
  a1[4].n128_u64[0] = v4;
  a1[4].n128_u32[2] = v3;
  sub_1A9CAE168(a1, v2);
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_1_10@<X0>(unint64_t a1@<X8>)
{

  return sub_1A9CBE4AC(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return sub_1AA651F94();
}

__n128 OUTLINED_FUNCTION_0_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __int128 a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, __n128 a48)
{
  result = a48;
  *(a1 + 16) = a43;
  *(a1 + 32) = a48;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return swift_once();
}

uint64_t CNVSchemaCNVPlugin.description.getter(unsigned int a1)
{
  if (a1 > 0x28)
  {
    v1 = @"CNVPLUGIN_UNKNOWN";
    v2 = @"CNVPLUGIN_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B95C8[a1];
    v2 = off_1E78B9710[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ORCHSchemaORCHAceCommandContextReadFrom(void *a1, void *a2)
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
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
      if ((v12 >> 3) > 101)
      {
        if (v13 == 102)
        {
          v14 = objc_alloc_init(ORCHSchemaORCHAceCommandEnded);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !ORCHSchemaORCHAceCommandEndedReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setEnded:v14];
          goto LABEL_36;
        }

        if (v13 == 103)
        {
          v14 = objc_alloc_init(ORCHSchemaORCHAceCommandFailed);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !ORCHSchemaORCHAceCommandFailedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setFailed:v14];
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SISchemaUUID);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setAceId:v14];
          goto LABEL_36;
        }

        if (v13 == 101)
        {
          v14 = objc_alloc_init(ORCHSchemaORCHAceCommandStarted);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !ORCHSchemaORCHAceCommandStartedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setStartedOrChanged:v14];
LABEL_36:

          goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ORCHSchemaORCHAceCommandEndedReadFrom(void *a1, void *a2)
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
      v29 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v29 & 0x7F) << v6;
      if ((v29 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      while (1)
      {
        v30 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v30 & 0x7F) << v21;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v12 = v22++ >= 9;
        if (v12)
        {
          v27 = 0;
          goto LABEL_45;
        }
      }

      v27 = (v23 != 0) & ~[a2 hasError];
LABEL_45:
      [a1 setExists:v27];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v31 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v31 & 0x7F) << v14;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_43;
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

LABEL_43:
      [a1 setAceCommandType:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t SISchemaUEIHostingPlatformViewAppearEndedReadFrom(void *a1, void *a2)
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
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NLXSchemaNLXClientEventMetadataReadFrom(void *a1, void *a2)
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
        LOBYTE(v24) = 0;
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v21 = objc_alloc_init(SISchemaUUID);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
            {
LABEL_57:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setRequestId:v21];
            goto LABEL_48;
          case 5:
            v21 = objc_alloc_init(SISchemaUUID);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
            {
              goto LABEL_57;
            }

            PBReaderRecallMark();
            [a1 setTrpId:v21];
            goto LABEL_48;
          case 6:
            v21 = objc_alloc_init(SISchemaUUID);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
            {
              goto LABEL_57;
            }

            PBReaderRecallMark();
            [a1 setSubRequestId:v21];
            goto LABEL_48;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v21 = objc_alloc_init(SISchemaUUID);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
            {
              goto LABEL_57;
            }

            PBReaderRecallMark();
            [a1 setNlId:v21];
            goto LABEL_48;
          case 2:
            v21 = PBReaderReadString();
            [a1 setResultCandidateId:v21];
LABEL_48:

            goto LABEL_49;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v24) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v24 & 0x7F) << v14;
              if ((v24 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_54;
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

LABEL_54:
            [a1 setComponentInvocationSource:v20];
            goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NLXSchemaNLXClientEventReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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

    switch((v12 >> 3))
    {
      case 0x65u:
        v13 = objc_alloc_init(NLXSchemaCDMServiceContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMServiceContextReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmServiceContext:v13];
        goto LABEL_147;
      case 0x66u:
        v13 = objc_alloc_init(NLXSchemaCDMRequestContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMRequestContextReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmRequestContext:v13];
        goto LABEL_147;
      case 0x67u:
        v13 = objc_alloc_init(NLXSchemaNLXDeviceFixedContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaNLXDeviceFixedContextReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setNlxDeviceFixedContext:v13];
        goto LABEL_147;
      case 0x68u:
        v13 = objc_alloc_init(NLXSchemaCDMMatchingSpanEnded);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMMatchingSpanEndedReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmMatchingSpanEnded:v13];
        goto LABEL_147;
      case 0x69u:
        v13 = objc_alloc_init(NLXSchemaCDMUsoGraphTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMUsoGraphTier1ReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmUsoGraphTier1:v13];
        goto LABEL_147;
      case 0x6Au:
        v13 = objc_alloc_init(NLXSchemaCDMMatchingSpanTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMMatchingSpanTier1ReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmMatchingSpanTier1:v13];
        goto LABEL_147;
      case 0x6Bu:
        v13 = objc_alloc_init(NLXSchemaNLXLegacyNLContextTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaNLXLegacyNLContextTier1ReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setNlxLegacyNLContextTier1:v13];
        goto LABEL_147;
      case 0x6Cu:
        v13 = objc_alloc_init(NLXSchemaCDMDelegatedUserDialogActTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMDelegatedUserDialogActTier1ReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmDelegatedUserDialogActTier1:v13];
        goto LABEL_147;
      case 0x6Du:
        v13 = objc_alloc_init(NLXSchemaCDMSystemDialogActTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMSystemDialogActTier1ReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmSystemDialogActTier1:v13];
        goto LABEL_147;
      case 0x6Eu:
        v13 = objc_alloc_init(NLXSchemaCDMTokenizationEnded);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMTokenizationEndedReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmTokenizationEnded:v13];
        goto LABEL_147;
      case 0x6Fu:
        v13 = objc_alloc_init(NLXSchemaCDMContextUpdateEnded);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMContextUpdateEndedReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmContextUpdateEnded:v13];
        goto LABEL_147;
      case 0x70u:
        v13 = objc_alloc_init(NLXSchemaMARRSRepetitionDetectionContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaMARRSRepetitionDetectionContextReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setMarrsRepetitionDetectionContext:v13];
        goto LABEL_147;
      case 0x71u:
        v13 = objc_alloc_init(NLXSchemaMARRSQueryRewriteContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaMARRSQueryRewriteContextReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setMarrsQueryRewriteContext:v13];
        goto LABEL_147;
      case 0x72u:
        v13 = objc_alloc_init(NLXSchemaMARRSQueryRewriteEvaluatedTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaMARRSQueryRewriteEvaluatedTier1ReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setMarrsQueryRewriteEvaluatedTier1:v13];
        goto LABEL_147;
      case 0x73u:
        v13 = objc_alloc_init(NLXSchemaCDMMatchingSpanEndedTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMMatchingSpanEndedTier1ReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmMatchingSpanEndedTier1:v13];
        goto LABEL_147;
      case 0x74u:
        v13 = objc_alloc_init(NLXSchemaNLXCurareContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaNLXCurareContextReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setNlxCurareContext:v13];
        goto LABEL_147;
      case 0x75u:
        v13 = objc_alloc_init(NLXSchemaMARRSMentionDetectorEnded);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaMARRSMentionDetectorEndedReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setMarrsMentionDetectorEnded:v13];
        goto LABEL_147;
      case 0x76u:
        v13 = objc_alloc_init(NLXSchemaMARRSMentionDetectorEndedTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaMARRSMentionDetectorEndedTier1ReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setMarrsMentionDetectorEndedTier1:v13];
        goto LABEL_147;
      case 0x77u:
        v13 = objc_alloc_init(NLXSchemaMARRSMentionResolverEnded);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaMARRSMentionResolverEndedReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setMarrsMentionResolverEnded:v13];
        goto LABEL_147;
      case 0x78u:
        v13 = objc_alloc_init(NLXSchemaMARRSMentionResolverEndedTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaMARRSMentionResolverEndedTier1ReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setMarrsMentionResolverEndedTier1:v13];
        goto LABEL_147;
      case 0x79u:
        v13 = objc_alloc_init(NLXSchemaCDMClientSetupContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMClientSetupContextReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmClientSetupContext:v13];
        goto LABEL_147;
      case 0x7Au:
        v13 = objc_alloc_init(NLXSchemaCDMAllServicesSetupContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMAllServicesSetupContextReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmAllServicesSetupContext:v13];
        goto LABEL_147;
      case 0x7Bu:
        v13 = objc_alloc_init(NLXSchemaCDMSingleServiceSetupAttemptContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMSingleServiceSetupAttemptContextReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmSingleServiceSetupAttemptContext:v13];
        goto LABEL_147;
      case 0x7Cu:
        v13 = objc_alloc_init(NLXSchemaCDMSingleServiceSetupAttemptFailed);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMSingleServiceSetupAttemptFailedReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmSingleServiceSetupAttemptFailed:v13];
        goto LABEL_147;
      case 0x7Du:
        v13 = objc_alloc_init(NLXSchemaCDMSpanMatcherContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMSpanMatcherContextReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmSpanMatcherContext:v13];
        goto LABEL_147;
      case 0x7Eu:
        v13 = objc_alloc_init(NLXSchemaMARRSContextualSpanMatcherEnded);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaMARRSContextualSpanMatcherEndedReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setMarrsContextualSpanMatcherEnded:v13];
        goto LABEL_147;
      case 0x7Fu:
        v13 = objc_alloc_init(NLXSchemaMARRSContextualSpanMatcherEndedTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaMARRSContextualSpanMatcherEndedTier1ReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setMarrsContextualSpanMatcherEndedTier1:v13];
        goto LABEL_147;
      case 0x80u:
        v13 = objc_alloc_init(NLXSchemaCDMXPCEventProcessingContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMXPCEventProcessingContextReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmXpcEventProcessingContext:v13];
        goto LABEL_147;
      case 0x81u:
        v13 = objc_alloc_init(NLXSchemaCDMAssetSetupContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMAssetSetupContextReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmAssetSetupContext:v13];
        goto LABEL_147;
      case 0x82u:
        v13 = objc_alloc_init(NLXSchemaCDMSetupMissingAssetsDetected);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMSetupMissingAssetsDetectedReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmSetupMissingAssetsDetected:v13];
        goto LABEL_147;
      case 0x83u:
        v13 = objc_alloc_init(NLXSchemaCDMClientWarmupContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMClientWarmupContextReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmClientWarmupContext:v13];
        goto LABEL_147;
      case 0x84u:
        v13 = objc_alloc_init(NLXSchemaCDMAllServicesWarmupContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMAllServicesWarmupContextReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmAllServicesWarmupContext:v13];
        goto LABEL_147;
      case 0x85u:
        v13 = objc_alloc_init(NLXSchemaCDMSingleServiceWarmupAttemptContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMSingleServiceWarmupAttemptContextReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmSingleServiceWarmupAttemptContext:v13];
        goto LABEL_147;
      case 0x86u:
        v13 = objc_alloc_init(NLXSchemaCDMSingleServiceWarmupAttemptFailed);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMSingleServiceWarmupAttemptFailedReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmSingleServiceWarmupAttemptFailed:v13];
        goto LABEL_147;
      case 0x87u:
        v13 = objc_alloc_init(NLXSchemaCDMAssetsReported);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMAssetsReportedReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmAssetsReported:v13];
        goto LABEL_147;
      case 0x88u:
        v13 = objc_alloc_init(NLXSchemaSSUUserRequestContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaSSUUserRequestContextReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setSsuUserRequestContext:v13];
        goto LABEL_147;
      case 0x89u:
        v13 = objc_alloc_init(NLXSchemaSSUBackgroundUpdateContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaSSUBackgroundUpdateContextReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setSsuBackgroundRequestContext:v13];
        goto LABEL_147;
      case 0x8Au:
        v13 = objc_alloc_init(NLXSchemaCDMServiceHandleMetricsReported);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMServiceHandleMetricsReportedReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmServiceHandleMetricsReported:v13];
        goto LABEL_147;
      case 0x8Bu:
        v13 = objc_alloc_init(NLXSchemaCDMServiceSetupMetricsReported);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMServiceSetupMetricsReportedReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmServiceSetupMetricsReported:v13];
        goto LABEL_147;
      case 0x8Cu:
        v13 = objc_alloc_init(NLXSchemaMILAssetAcquisitionContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaMILAssetAcquisitionContextReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setMilAssetAcquisitionContext:v13];
        goto LABEL_147;
      case 0x8Du:
        v13 = objc_alloc_init(NLXSchemaCDMSetupLink);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMSetupLinkReadFrom(v13, a2))
        {
          goto LABEL_151;
        }

        PBReaderRecallMark();
        [a1 setCdmSetupLink:v13];
        goto LABEL_147;
      default:
        if ((v12 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_148;
        }

        v13 = objc_alloc_init(NLXSchemaNLXClientEventMetadata);
        v16 = 0;
        v17 = 0;
        if (PBReaderPlaceMark() && NLXSchemaNLXClientEventMetadataReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          [a1 setEventMetadata:v13];
LABEL_147:

LABEL_148:
          v14 = [a2 position];
          if (v14 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_151:

        return 0;
    }
  }
}

uint64_t NLXSchemaCDMClientSetupContextReadFrom(void *a1, void *a2)
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
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(NLXSchemaCDMClientSetupFailed);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMClientSetupFailedReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setFailed:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(NLXSchemaCDMClientSetupStarted);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaCDMClientSetupStartedReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setStartedOrChanged:v14];
LABEL_29:

        goto LABEL_31;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(NLXSchemaCDMClientSetupEnded);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !NLXSchemaCDMClientSetupEndedReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setEnded:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NLXSchemaCDMAssetSetupStartedReadFrom(void *a1, void *a2)
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
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
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

LABEL_33:
      [a1 addServices:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NLXSchemaCDMClientSetupStartedReadFrom(void *a1, void *a2)
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
      v44 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v44 & 0x7F) << v6;
      if ((v44 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 3)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        while (1)
        {
          v45 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v45 & 0x7F) << v37;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v12 = v38++ >= 9;
          if (v12)
          {
            v43 = 0;
            goto LABEL_72;
          }
        }

        v43 = (v39 != 0) & ~[a2 hasError];
LABEL_72:
        [a1 setPerformWarmupOperations:v43];
        continue;
      }

      if (v14 == 4)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          v47 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v47 & 0x7F) << v22;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_68;
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

LABEL_68:
        [a1 setMemoryPressure:v28];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        while (1)
        {
          v46 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v46 & 0x7F) << v30;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_70;
          }
        }

        v36 = (v32 != 0) & ~[a2 hasError];
LABEL_70:
        [a1 setExists:v36];
        continue;
      }

      if (v14 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v48 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v48 & 0x7F) << v15;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_64;
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

LABEL_64:
        [a1 setServiceGraphName:v21];
        continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NLXSchemaCDMAssetSetupContextReadFrom(void *a1, void *a2)
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
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
          v14 = objc_alloc_init(NLXSchemaCDMAssetSetupEnded);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !NLXSchemaCDMAssetSetupEndedReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setEnded:v14];
          goto LABEL_36;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(NLXSchemaCDMAssetSetupFailed);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !NLXSchemaCDMAssetSetupFailedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setFailed:v14];
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SISchemaUUID);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setContextId:v14];
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(NLXSchemaCDMAssetSetupStarted);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !NLXSchemaCDMAssetSetupStartedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setStartedOrChanged:v14];
LABEL_36:

          goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t CNVSchemaCNVClientEventMetadataReadFrom(void *a1, void *a2)
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
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
          v14 = objc_alloc_init(SISchemaUUID);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {
LABEL_43:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setCnvId:v14];
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setResultCandidateId:v14];
LABEL_36:

          goto LABEL_37;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(SISchemaUUID);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_43;
            }

            PBReaderRecallMark();
            [a1 setRequestId:v14];
            goto LABEL_36;
          case 4:
            v14 = objc_alloc_init(SISchemaUUID);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_43;
            }

            PBReaderRecallMark();
            [a1 setTrpId:v14];
            goto LABEL_36;
          case 5:
            v14 = objc_alloc_init(SISchemaUUID);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_43;
            }

            PBReaderRecallMark();
            [a1 setSubRequestId:v14];
            goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t CNVSchemaCNVClientEventReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = objc_alloc_init(CNVSchemaCNVClientEventMetadata);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !CNVSchemaCNVClientEventMetadataReadFrom(v13, a2))
        {
          goto LABEL_82;
        }

        PBReaderRecallMark();
        [a1 setEventMetadata:v13];
        goto LABEL_75;
      case 2u:
        v13 = objc_alloc_init(CNVSchemaCNVIntentReformationContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !CNVSchemaCNVIntentReformationContextReadFrom(v13, a2))
        {
          goto LABEL_82;
        }

        PBReaderRecallMark();
        [a1 setIntentReformationContext:v13];
        goto LABEL_75;
      case 3u:
        v13 = objc_alloc_init(CNVSchemaCNVUsoGraphTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !CNVSchemaCNVUsoGraphTier1ReadFrom(v13, a2))
        {
          goto LABEL_82;
        }

        PBReaderRecallMark();
        [a1 setCnvUsoGraphTier1:v13];
        goto LABEL_75;
      case 4u:
        v13 = objc_alloc_init(CNVSchemaCNVIntentEagerExecutionContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !CNVSchemaCNVIntentEagerExecutionContextReadFrom(v13, a2))
        {
          goto LABEL_82;
        }

        PBReaderRecallMark();
        [a1 setIntentEagerExecutionContext:v13];
        goto LABEL_75;
      case 5u:
        v13 = objc_alloc_init(CNVSchemaCNVIntentFinalExecutionContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !CNVSchemaCNVIntentFinalExecutionContextReadFrom(v13, a2))
        {
          goto LABEL_82;
        }

        PBReaderRecallMark();
        [a1 setIntentFinalExecutionContext:v13];
        goto LABEL_75;
      case 6u:
        v13 = objc_alloc_init(CNVSchemaCNVActionCandidatesGenerated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !CNVSchemaCNVActionCandidatesGeneratedReadFrom(v13, a2))
        {
          goto LABEL_82;
        }

        PBReaderRecallMark();
        [a1 setActionCandidatesGenerated:v13];
        goto LABEL_75;
      case 7u:
        v13 = objc_alloc_init(CNVSchemaCNVActionCandidatesGeneratedTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !CNVSchemaCNVActionCandidatesGeneratedTier1ReadFrom(v13, a2))
        {
          goto LABEL_82;
        }

        PBReaderRecallMark();
        [a1 setActionCandidatesGeneratedTier1:v13];
        goto LABEL_75;
      case 8u:
        v13 = objc_alloc_init(CNVSchemaCNVActionCandidatesCollated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !CNVSchemaCNVActionCandidatesCollatedReadFrom(v13, a2))
        {
          goto LABEL_82;
        }

        PBReaderRecallMark();
        [a1 setActionCandidatesCollated:v13];
        goto LABEL_75;
      case 9u:
        v13 = objc_alloc_init(CNVSchemaCNVDisambiguationContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !CNVSchemaCNVDisambiguationContextReadFrom(v13, a2))
        {
          goto LABEL_82;
        }

        PBReaderRecallMark();
        [a1 setDisambiguationContext:v13];
        goto LABEL_75;
      case 0xAu:
        v13 = objc_alloc_init(CNVSchemaCNVExecutionOverridesEvaluated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !CNVSchemaCNVExecutionOverridesEvaluatedReadFrom(v13, a2))
        {
          goto LABEL_82;
        }

        PBReaderRecallMark();
        [a1 setExecutionOverridesEvaluated:v13];
        goto LABEL_75;
      case 0xBu:
        v13 = objc_alloc_init(CNVSchemaCNVExecutionPrepareContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !CNVSchemaCNVExecutionPrepareContextReadFrom(v13, a2))
        {
          goto LABEL_82;
        }

        PBReaderRecallMark();
        [a1 setExecutionPrepareContext:v13];
        goto LABEL_75;
      case 0xCu:
        v13 = objc_alloc_init(CNVSchemaCNVFlowPluginLoadContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !CNVSchemaCNVFlowPluginLoadContextReadFrom(v13, a2))
        {
          goto LABEL_82;
        }

        PBReaderRecallMark();
        [a1 setFlowPluginLoadContext:v13];
        goto LABEL_75;
      case 0xDu:
        v13 = objc_alloc_init(CNVSchemaCNVFindFlowContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !CNVSchemaCNVFindFlowContextReadFrom(v13, a2))
        {
          goto LABEL_82;
        }

        PBReaderRecallMark();
        [a1 setFindFlowContext:v13];
        goto LABEL_75;
      case 0xEu:
        v13 = objc_alloc_init(CNVSchemaCNVFlowPluginInputContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !CNVSchemaCNVFlowPluginInputContextReadFrom(v13, a2))
        {
          goto LABEL_82;
        }

        PBReaderRecallMark();
        [a1 setFlowPluginInputContext:v13];
        goto LABEL_75;
      case 0xFu:
        v13 = objc_alloc_init(CNVSchemaCNVFlowPluginExecutionContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !CNVSchemaCNVFlowPluginExecutionContextReadFrom(v13, a2))
        {
          goto LABEL_82;
        }

        PBReaderRecallMark();
        [a1 setFlowPluginExecutionContext:v13];
        goto LABEL_75;
      case 0x10u:
        v13 = objc_alloc_init(CNVSchemaCNVPreFlowPrepareContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !CNVSchemaCNVPreFlowPrepareContextReadFrom(v13, a2))
        {
          goto LABEL_82;
        }

        PBReaderRecallMark();
        [a1 setPreFlowPrepareContext:v13];
        goto LABEL_75;
      case 0x11u:
        v13 = objc_alloc_init(CNVSchemaCNVPostFlowPrepareContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !CNVSchemaCNVPostFlowPrepareContextReadFrom(v13, a2))
        {
          goto LABEL_82;
        }

        PBReaderRecallMark();
        [a1 setPostFlowPrepareContext:v13];
        goto LABEL_75;
      case 0x12u:
        v13 = objc_alloc_init(CNVSchemaCNVExecutionCommitContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !CNVSchemaCNVExecutionCommitContextReadFrom(v13, a2))
        {
          goto LABEL_82;
        }

        PBReaderRecallMark();
        [a1 setExecutionCommitContext:v13];
        goto LABEL_75;
      case 0x13u:
        v13 = objc_alloc_init(CNVSchemaCNVDecisionEngineResponseReported);
        v16 = 0;
        v17 = 0;
        if (PBReaderPlaceMark() && CNVSchemaCNVDecisionEngineResponseReportedReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          [a1 setDecisionEngineResponseReported:v13];
LABEL_75:

LABEL_76:
          v14 = [a2 position];
          if (v14 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_82:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_76;
    }
  }
}

uint64_t ORCHSchemaORCHAceCommandStartedReadFrom(void *a1, void *a2)
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
      v23 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v23 & 0x7F) << v6;
      if ((v23 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v21 = PBReaderReadString();
      [a1 setAceCommandName:v21];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v24 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v24 & 0x7F) << v14;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_35;
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

LABEL_35:
      [a1 setAceCommandType:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t CNVSchemaCNVExecutionPrepareStartedReadFrom(void *a1, void *a2)
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
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ORCHSchemaORCHMUXUserSessionStateReadFrom(void *a1, void *a2)
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
      v37 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v37 & 0x7F) << v6;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      while (1)
      {
        v39 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v39 & 0x7F) << v29;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v12 = v30++ >= 9;
        if (v12)
        {
          v35 = 0;
          goto LABEL_57;
        }
      }

      if ([a2 hasError])
      {
        v35 = 0;
      }

      else
      {
        v35 = v31;
      }

LABEL_57:
      [a1 setState:v35];
    }

    else if (v14 == 2)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v38 = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v38 & 0x7F) << v22;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v12 = v23++ >= 9;
        if (v12)
        {
          v28 = 0;
          goto LABEL_53;
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

LABEL_53:
      [a1 setAccessLevel:v28];
    }

    else if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v40 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v40 & 0x7F) << v15;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_59;
        }
      }

      v21 = (v17 != 0) & ~[a2 hasError];
LABEL_59:
      [a1 setIsEndOfRequest:v21];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ORCHSchemaORCHRequestContextReadFrom(void *a1, void *a2)
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
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
          v14 = objc_alloc_init(ORCHSchemaORCHRequestFailed);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !ORCHSchemaORCHRequestFailedReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setFailed:v14];
          goto LABEL_36;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(ORCHSchemaORCHRequestCancelled);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !ORCHSchemaORCHRequestCancelledReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setCancelled:v14];
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(ORCHSchemaORCHRequestStarted);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !ORCHSchemaORCHRequestStartedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setStartedOrChanged:v14];
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(ORCHSchemaORCHRequestEnded);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !ORCHSchemaORCHRequestEndedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setEnded:v14];
LABEL_36:

          goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ORCHSchemaORCHRequestStartedReadFrom(void *a1, void *a2)
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
        LOBYTE(v59) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v42 = objc_alloc_init(ORCHSchemaORCHNLClassicDeprecationFlags);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !ORCHSchemaORCHNLClassicDeprecationFlagsReadFrom(v42, a2))
            {
LABEL_114:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setNlv3DeprecationFlags:v42];
            goto LABEL_88;
          }

          if (v13 == 8)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            while (1)
            {
              LOBYTE(v59) = 0;
              v38 = [a2 position] + 1;
              if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
              {
                v40 = [a2 data];
                [v40 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v37 |= (v59 & 0x7F) << v35;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v11 = v36++ >= 9;
              if (v11)
              {
                v41 = 0;
                goto LABEL_110;
              }
            }

            v41 = (v37 != 0) & ~[a2 hasError];
LABEL_110:
            [a1 setIsAssistantEngineRequest:v41];
            goto LABEL_111;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            while (1)
            {
              LOBYTE(v59) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v59 & 0x7F) << v43;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v49 = 0;
                goto LABEL_94;
              }
            }

            if ([a2 hasError])
            {
              v49 = 0;
            }

            else
            {
              v49 = v45;
            }

LABEL_94:
            [a1 setSiriAsrMode:v49];
            goto LABEL_111;
          }

          if (v13 == 6)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            while (1)
            {
              LOBYTE(v59) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v59 & 0x7F) << v21;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_104;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v23;
            }

LABEL_104:
            [a1 setSiriNlMode:v27];
            goto LABEL_111;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v50 = 0;
          v51 = 0;
          v52 = 0;
          while (1)
          {
            LOBYTE(v59) = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v59 & 0x7F) << v50;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v11 = v51++ >= 9;
            if (v11)
            {
              v56 = 0;
              goto LABEL_96;
            }
          }

          v56 = (v52 != 0) & ~[a2 hasError];
LABEL_96:
          [a1 setSiriUODEnabled:v56];
          goto LABEL_111;
        }

        if (v13 == 4)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          while (1)
          {
            LOBYTE(v59) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v59 & 0x7F) << v28;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_108;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_108:
          [a1 setSiriUODMode:v34];
          goto LABEL_111;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v42 = objc_alloc_init(SISchemaUUID);
          v59 = 0;
          v60 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v42, a2))
          {
            goto LABEL_114;
          }

          PBReaderRecallMark();
          [a1 setOrchestratorSessionId:v42];
LABEL_88:

          goto LABEL_111;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v59) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v59 & 0x7F) << v14;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_100;
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

LABEL_100:
          [a1 setRequestType:v20];
          goto LABEL_111;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_111:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ORCHSchemaORCHNLClassicDeprecationFlagsReadFrom(void *a1, void *a2)
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
      v29 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v29 & 0x7F) << v6;
      if ((v29 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
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

        v23 |= (v31 & 0x7F) << v21;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v12 = v22++ >= 9;
        if (v12)
        {
          v27 = 0;
          goto LABEL_43;
        }
      }

      v27 = (v23 != 0) & ~[a2 hasError];
LABEL_43:
      [a1 setIsNLServerFallbackDisabled:v27];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v30 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v30 & 0x7F) << v14;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_41;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_41:
      [a1 setIsDomainServerFallbackDisabled:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ORCHSchemaORCHResourceUtilizationMetadataReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(ORCHSchemaORCHMemoryUsageMetadata);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHMemoryUsageMetadataReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setMemoryUsageMetadata:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ORCHSchemaORCHMemoryUsageMetadataReadFrom(void *a1, void *a2)
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
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
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

LABEL_33:
      [a1 setMaxRSS:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NLRouterSchemaNLRouterSubComponentSetupEndedReadFrom(void *a1, void *a2)
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
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ORCHSchemaORCHSubRequestContextReadFrom(void *a1, void *a2)
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
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
      if ((v12 >> 3) > 101)
      {
        if (v13 == 102)
        {
          v14 = objc_alloc_init(ORCHSchemaORCHSubRequestFailed);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !ORCHSchemaORCHSubRequestFailedReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setFailed:v14];
          goto LABEL_36;
        }

        if (v13 == 103)
        {
          v14 = objc_alloc_init(ORCHSchemaORCHSubRequestEnded);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !ORCHSchemaORCHSubRequestEndedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setEnded:v14];
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SISchemaUUID);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setSubRequestId:v14];
          goto LABEL_36;
        }

        if (v13 == 101)
        {
          v14 = objc_alloc_init(ORCHSchemaORCHSubRequestStarted);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !ORCHSchemaORCHSubRequestStartedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setStartedOrChanged:v14];
LABEL_36:

          goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ORCHSchemaORCHSubRequestStartedReadFrom(void *a1, void *a2)
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
        LOBYTE(v24) = 0;
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        break;
      }

      if (v13 == 3)
      {
        v21 = objc_alloc_init(ORCHSchemaORCHNLRouterDecisionGenAIMetadata);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !ORCHSchemaORCHNLRouterDecisionGenAIMetadataReadFrom(v21, a2))
        {
          goto LABEL_45;
        }

        PBReaderRecallMark();
        [a1 setGenAIMetadata:v21];
LABEL_35:

        goto LABEL_42;
      }

      if (v13 == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v24) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24 & 0x7F) << v14;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_41;
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

LABEL_41:
        [a1 setSubRequestType:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(SISchemaUUID);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
    {
LABEL_45:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setTrpId:v21];
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ORCHSchemaORCHExecutionBridgeContextReadFrom(void *a1, void *a2)
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
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
          v14 = objc_alloc_init(ORCHSchemaORCHExecutionRequestReceived);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !ORCHSchemaORCHExecutionRequestReceivedReadFrom(v14, a2))
          {
LABEL_45:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setStartedOrChanged:v14];
          goto LABEL_38;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(ORCHSchemaORCHExecutionEnded);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !ORCHSchemaORCHExecutionEndedReadFrom(v14, a2))
          {
            goto LABEL_45;
          }

          PBReaderRecallMark();
          [a1 setEnded:v14];
          goto LABEL_38;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(ORCHSchemaORCHExecutionFailed);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !ORCHSchemaORCHExecutionFailedReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setFailed:v14];
            goto LABEL_38;
          case 4:
            v14 = objc_alloc_init(SISchemaUUID);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setTrpId:v14];
            goto LABEL_38;
          case 5:
            v14 = objc_alloc_init(SISchemaUUID);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setSubRequestId:v14];
LABEL_38:

            goto LABEL_39;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ORCHSchemaORCHExecutionRequestReceivedReadFrom(void *a1, void *a2)
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
      v37 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v37 & 0x7F) << v6;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      while (1)
      {
        v39 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v39 & 0x7F) << v29;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v12 = v30++ >= 9;
        if (v12)
        {
          v35 = 0;
          goto LABEL_55;
        }
      }

      if ([a2 hasError])
      {
        v35 = 0;
      }

      else
      {
        v35 = v31;
      }

LABEL_55:
      [a1 setPreExecutionDecision:v35];
    }

    else if (v14 == 2)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v40 = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v40 & 0x7F) << v22;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v12 = v23++ >= 9;
        if (v12)
        {
          v28 = 0;
          goto LABEL_51;
        }
      }

      v28 = (v24 != 0) & ~[a2 hasError];
LABEL_51:
      [a1 setExecutionForRSKE:v28];
    }

    else if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v38 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v38 & 0x7F) << v15;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_59;
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

LABEL_59:
      [a1 setCommandSource:v21];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}