@interface SiriCoreAceSerialization
+ (BOOL)tryParsingAceHeaderData:(id)data compressionType:(unsigned __int8 *)type bytesRead:(unint64_t *)read error:(id *)error;
+ (BOOL)tryParsingPacketWithBytes:(const void *)bytes length:(unint64_t)length rawPacket:(id *)packet object:(id *)object bytesRead:(unint64_t *)read error:(id *)error;
+ (id)_insufficientDataErrorForBytesNeeded:(unint64_t)needed available:(unint64_t)available;
+ (id)_tryParsingPlistPacketBytes:(const void *)bytes length:(unint64_t)length;
+ (id)_tryParsingSpeechPacketBytes:(const void *)bytes length:(unint64_t)length;
+ (id)dataForNop;
+ (id)dataForObject:(id)object error:(id *)error;
+ (id)dataForPing:(unsigned int)ping;
+ (id)dataForPong:(unsigned int)pong;
+ (id)dataForSpeechPacket:(id)packet error:(id *)error;
+ (id)dataForStreamEnd;
+ (id)dataForStreamHeaderWithCompressionType:(unsigned __int8)type;
@end

@implementation SiriCoreAceSerialization

+ (id)_insufficientDataErrorForBytesNeeded:(unint64_t)needed available:(unint64_t)available
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"SiriCoreAceSerializationErrorUserInfoBytesNeeded";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:needed];
  v11[1] = @"SiriCoreAceSerializationErrorUserInfoBytesAvailable";
  v12[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:available];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreAceSerializationErrorDomain" code:0 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (BOOL)tryParsingPacketWithBytes:(const void *)bytes length:(unint64_t)length rawPacket:(id *)packet object:(id *)object bytesRead:(unint64_t *)read error:(id *)error
{
  v36[1] = *MEMORY[0x277D85DE8];
  if (!bytes || (lengthCopy = length - 5, length < 5))
  {
    v17 = 5;
    lengthCopy = length;
LABEL_9:
    v18 = [self _insufficientDataErrorForBytesNeeded:v17 available:lengthCopy];
    v19 = 0;
    v20 = 0;
    goto LABEL_10;
  }

  v15 = 0;
  v16 = *bytes;
  if (v16 > 3)
  {
    if (v16 == 4)
    {
      v15 = 3;
      goto LABEL_30;
    }

    if (v16 == 255)
    {
      v15 = 4;
      goto LABEL_30;
    }

    if (v16 != 7)
    {
      goto LABEL_30;
    }

LABEL_22:
    v26 = bswap32(*(bytes + 1));
    if (lengthCopy < v26)
    {
      v17 = v26;
      goto LABEL_9;
    }

    v27 = bytes + 5;
    if (v16 == 7)
    {
      v20 = [SiriCoreAceSerialization _tryParsingSpeechPacketBytes:v27 length:v26];
      if (!v20)
      {
        v28 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:bytes + 5 length:v26];
        v35 = @"SiriCoreAceSerializationErrorUserInfoPlist";
        v36[0] = v28;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
        v30 = MEMORY[0x277CCA9B8];
        v31 = 6;
LABEL_35:
        v18 = [v30 errorWithDomain:@"SiriCoreAceSerializationErrorDomain" code:v31 userInfo:v29];

        v19 = 0;
        goto LABEL_36;
      }
    }

    else
    {
      v20 = [SiriCoreAceSerialization _tryParsingPlistPacketBytes:v27 length:v26];
      if (!v20)
      {
        v28 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:bytes + 5 length:v26];
        v33 = @"SiriCoreAceSerializationErrorUserInfoPlist";
        v34 = v28;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v30 = MEMORY[0x277CCA9B8];
        v31 = 4;
        goto LABEL_35;
      }
    }

    v32 = v20;
    v18 = 0;
    v19 = v26 + 5;
LABEL_36:

LABEL_10:
    v21 = 0;
    v15 = 0;
    if (!packet)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v16 - 1 < 2)
  {
    goto LABEL_22;
  }

  if (*bytes)
  {
    if (v16 == 3)
    {
      v15 = 2;
    }
  }

  else
  {
    v15 = 1;
  }

LABEL_30:
  v18 = 0;
  v20 = 0;
  v21 = bswap32(*(bytes + 1));
  v19 = 5;
  if (packet)
  {
LABEL_11:
    packet->var0 = v15;
    *(&packet->var0 + 1) = 0;
    *(&packet->var0 + 3) = 0;
    packet->var1 = v21;
  }

LABEL_12:
  if (object)
  {
    v22 = v20;
    *object = v20;
  }

  if (read)
  {
    *read = v19;
  }

  if (error)
  {
    v23 = v18;
    *error = v18;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v18 != 0;
}

+ (id)_tryParsingSpeechPacketBytes:(const void *)bytes length:(unint64_t)length
{
  if (length && (v4 = *bytes, v5 = length - 1 - v4, length - 1 >= v4))
  {
    v7 = bytes + 1;
    v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v4];
    memmove([v8 mutableBytes], v7, v4);
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
    v10 = v9;
    v6 = 0;
    if (v5 >= 2 && v9)
    {
      if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v6 = 0;
      }

      else
      {
        v11 = &v7[v4];
        v23 = *&v7[v4];
        v12 = bswap32(*&v7[v4 + 2]) >> 16;
        v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (v12 < 1)
        {
LABEL_13:
          v6 = objc_alloc_init(SiriCoreSpeechPacket);
          [(SiriCoreSpeechPacket *)v6 setRefId:v10];
          [(SiriCoreSpeechPacket *)v6 setPacketNumber:(bswap32(v23) >> 16)];
          [(SiriCoreSpeechPacket *)v6 setPackets:v13];
        }

        else
        {
          v14 = 0;
          v15 = v5 - 4;
          v16 = v11 + 4;
          while (1)
          {
            v17 = v15 - 2;
            if (v15 < 2)
            {
              break;
            }

            v18 = bswap32(*v16) >> 16;
            if (v17 < v18)
            {
              break;
            }

            v19 = v18;
            v20 = v16 + 2;
            v21 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v18];
            memmove([v21 mutableBytes], v20, v19);
            v16 = &v20[v19];
            v15 = v17 - v19;
            [v13 addObject:v21];

            if (v12 <= ++v14)
            {
              goto LABEL_13;
            }
          }

          v6 = 0;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_tryParsingPlistPacketBytes:(const void *)bytes length:(unint64_t)length
{
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:bytes length:length];
  v5 = [MEMORY[0x277D470E0] aceObjectWithPlistData:v4];

  return v5;
}

+ (BOOL)tryParsingAceHeaderData:(id)data compressionType:(unsigned __int8 *)type bytesRead:(unint64_t *)read error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v21 = 0;
  if ([dataCopy length] < 4)
  {
    v14 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      *buf = 136315650;
      v23 = "+[SiriCoreAceSerialization tryParsingAceHeaderData:compressionType:bytesRead:error:]";
      v24 = 2048;
      *v25 = 4;
      *&v25[8] = 2048;
      v26 = [dataCopy length];
      _os_log_impl(&dword_2669D1000, v15, OS_LOG_TYPE_INFO, "%s Ace Header needs %lu bytes, but have %lu", buf, 0x20u);
    }

    v13 = [self _insufficientDataErrorForBytesNeeded:4 available:{objc_msgSend(dataCopy, "length")}];
LABEL_12:
    v16 = 0;
    v17 = 1;
    if (!type)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  [dataCopy getBytes:&v21 length:4];
  if (v21 != 52394 || BYTE2(v21) != 238)
  {
    v12 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v23 = "+[SiriCoreAceSerialization tryParsingAceHeaderData:compressionType:bytesRead:error:]";
      v24 = 1024;
      *v25 = v21;
      *&v25[4] = 1024;
      *&v25[6] = BYTE1(v21);
      LOWORD(v26) = 1024;
      *(&v26 + 2) = BYTE2(v21);
      _os_log_error_impl(&dword_2669D1000, v12, OS_LOG_TYPE_ERROR, "%s Got invalid header for connection! %x %x %x", buf, 0x1Eu);
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreAceSerializationErrorDomain" code:2 userInfo:0];
    goto LABEL_12;
  }

  v13 = 0;
  v17 = HIBYTE(v21);
  v16 = 4;
  if (type)
  {
LABEL_13:
    *type = v17;
  }

LABEL_14:
  if (read)
  {
    *read = v16;
  }

  if (error)
  {
    v13 = v13;
    *error = v13;
  }

  v18 = v13 != 0;

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)dataForSpeechPacket:(id)packet error:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  refId = [packetCopy refId];
  uTF8String = [refId UTF8String];

  if (uTF8String)
  {
    v10 = strlen(uTF8String);
    v11 = v10;
    if (v10 > 0x7F)
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreAceSerializationErrorDomain" code:6 userInfo:0];
      if (v12)
      {
        v13 = v12;
        v11 = 0;
LABEL_9:
        v15 = 0;
        goto LABEL_11;
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  packetNumber = [packetCopy packetNumber];
  v15 = packetNumber;
  if (packetNumber != packetNumber)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreAceSerializationErrorDomain" code:6 userInfo:0];
    goto LABEL_9;
  }

  v13 = 0;
LABEL_11:
  packets = [packetCopy packets];
  v17 = packets;
  if (v13)
  {
    goto LABEL_12;
  }

  v22 = [packets count];
  v51 = v17;
  if (v22 >> 15)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreAceSerializationErrorDomain" code:6 userInfo:0];
    if (v13)
    {
LABEL_12:
      v18 = 0;
      if (!error)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v47 = a2;
    selfCopy2 = self;
    v23 = 5;
  }

  else
  {
    LODWORD(v13) = v22;
    v47 = a2;
    selfCopy2 = self;
    size = error;
    v24 = 2 * v22;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v25 = v17;
    v26 = [v25 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v57;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v57 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v24 += [*(*(&v56 + 1) + 8 * i) length];
        }

        v27 = [v25 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v27);
    }

    v23 = v24 + 5;
    error = size;
    v17 = v51;
  }

  v30 = v23 + v11;
  v31 = bswap32(v30);
  sizea = v30 + 5;
  v32 = malloc_type_malloc(sizea, 0x1000040957D8CC4uLL);
  v33 = v32;
  *v32 = 7;
  *(v32 + 1) = v31;
  v32[5] = v11;
  v34 = v32 + 6;
  if (v11 >= 1)
  {
    memmove(v32 + 6, uTF8String, v11);
    v34 = (v34 + v11);
  }

  *v34 = bswap32(v15) >> 16;
  v34[1] = bswap32(v13) >> 16;
  v35 = (v34 + 2);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v36 = v17;
  v37 = [v36 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = 0;
    v40 = *v53;
    for (j = *v53; ; j = *v53)
    {
      if (j != v40)
      {
        objc_enumerationMutation(v36);
      }

      v42 = *(*(&v52 + 1) + 8 * v39);
      v43 = [v42 length];
      *v35 = bswap32(v43) >> 16;
      v44 = v35 + 2;
      memmove(v44, [v42 bytes], v43);
      v35 = &v44[v43];
      if (++v39 >= v38)
      {
        v45 = [v36 countByEnumeratingWithState:&v52 objects:v60 count:16];
        if (!v45)
        {
          v17 = v51;
          break;
        }

        v38 = v45;
        v39 = 0;
      }
    }
  }

  if (v35 - v33 != sizea)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:v47 object:selfCopy2 file:@"SiriCoreAceSerialization.m" lineNumber:229 description:@"Error serializing SiriCoreSpeechPacket"];
  }

  v18 = dispatch_data_create(v33, sizea, 0, *MEMORY[0x277D85CB0]);
  v13 = 0;
  if (error)
  {
LABEL_13:
    v19 = v13;
    *error = v13;
  }

LABEL_14:

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)dataForStreamEnd
{
  v5 = 0;
  buffer = 255;
  v2 = dispatch_data_create(&buffer, 5uLL, 0, 0);

  return v2;
}

+ (id)dataForNop
{
  v5 = 0;
  buffer = 0;
  v2 = dispatch_data_create(&buffer, 5uLL, 0, 0);

  return v2;
}

+ (id)dataForPong:(unsigned int)pong
{
  buffer = 4;
  v6 = bswap32(pong);
  v3 = dispatch_data_create(&buffer, 5uLL, 0, 0);

  return v3;
}

+ (id)dataForPing:(unsigned int)ping
{
  buffer = 3;
  v6 = bswap32(ping);
  v3 = dispatch_data_create(&buffer, 5uLL, 0, 0);

  return v3;
}

+ (id)dataForObject:(id)object error:(id *)error
{
  objectCopy = object;
  _serializedData = [objectCopy _serializedData];
  if (_serializedData)
  {
    v7 = _serializedData;
  }

  else
  {
    dictionary = [objectCopy dictionary];
    if (!dictionary || (v13 = dictionary, [MEMORY[0x277CCAC58] dataWithPropertyList:dictionary format:200 options:0 error:error], v7 = objc_claimAutoreleasedReturnValue(), v13, !v7))
    {
      if (error && !*error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreAceSerializationErrorDomain" code:5 userInfo:0];
        *error = v10 = 0;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_4;
    }
  }

  v8 = [v7 length];
  v9 = malloc_type_malloc(v8 + 5, 0xECA18A83uLL);
  *v9 = 2;
  *(v9 + 1) = bswap32(v8);
  memmove(v9 + 5, [v7 bytes], v8);
  v10 = dispatch_data_create(v9, v8 + 5, 0, *MEMORY[0x277D85CB0]);

LABEL_4:

  return v10;
}

+ (id)dataForStreamHeaderWithCompressionType:(unsigned __int8)type
{
  v6 = -18;
  buffer = -13142;
  typeCopy = type;
  v3 = dispatch_data_create(&buffer, 4uLL, 0, 0);

  return v3;
}

@end