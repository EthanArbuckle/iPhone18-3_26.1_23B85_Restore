@interface UARemotePasteboardWasRequestedEvent
- (id)eventPayload;
@end

@implementation UARemotePasteboardWasRequestedEvent

- (id)eventPayload
{
  v23[0] = @"payloadSize";
  v22 = [NSNumber numberWithUnsignedLongLong:[(UARemotePasteboardWasRequestedEvent *)self payloadSize]];
  v24[0] = v22;
  v23[1] = @"transferTime";
  v21 = [NSNumber numberWithUnsignedLongLong:[(UARemotePasteboardWasRequestedEvent *)self payloadXferTime]];
  v24[1] = v21;
  v23[2] = @"transferSpeed";
  v20 = [NSNumber numberWithUnsignedLongLong:[(UARemotePasteboardWasRequestedEvent *)self payloadXferSpeed]];
  v24[2] = v20;
  v23[3] = @"usedStreams";
  v19 = [NSNumber numberWithBool:[(UARemotePasteboardWasRequestedEvent *)self usedStreams]];
  v24[3] = v19;
  v23[4] = @"streamOpenTime";
  v18 = [NSNumber numberWithUnsignedLongLong:[(UARemotePasteboardWasRequestedEvent *)self streamOpenTime]];
  v24[4] = v18;
  v23[5] = @"streamDataSize";
  v17 = [NSNumber numberWithUnsignedLongLong:[(UARemotePasteboardWasRequestedEvent *)self streamDataSize]];
  v24[5] = v17;
  v23[6] = @"streamTransferTime";
  v16 = [NSNumber numberWithUnsignedLongLong:[(UARemotePasteboardWasRequestedEvent *)self streamDataXferTime]];
  v24[6] = v16;
  v23[7] = @"streamTransferSpeed";
  v3 = [NSNumber numberWithUnsignedLongLong:[(UARemotePasteboardWasRequestedEvent *)self streamDataXferSpeed]];
  v24[7] = v3;
  v23[8] = @"totalTime";
  v4 = [NSNumber numberWithUnsignedLongLong:[(UARemotePasteboardWasRequestedEvent *)self totalTime]];
  v24[8] = v4;
  v23[9] = @"cancelled";
  v5 = [NSNumber numberWithBool:[(UARemotePasteboardWasRequestedEvent *)self cancelled]];
  v24[9] = v5;
  v23[10] = @"errorCode";
  v6 = [NSNumber numberWithLongLong:[(UARemotePasteboardWasRequestedEvent *)self errorCode]];
  v24[10] = v6;
  v23[11] = @"underlyingErrorCode";
  v7 = [NSNumber numberWithLongLong:[(UARemotePasteboardWasRequestedEvent *)self underlyingErrorCode]];
  v24[11] = v7;
  v23[12] = @"numberOfItems";
  v8 = [NSNumber numberWithLongLong:[(UARemotePasteboardWasRequestedEvent *)self numberOfItems]];
  v24[12] = v8;
  v23[13] = @"isFileCopy";
  v9 = [NSNumber numberWithBool:[(UARemotePasteboardWasRequestedEvent *)self isFileCopy]];
  v24[13] = v9;
  v23[14] = @"isAsyncTransfer";
  v10 = [NSNumber numberWithBool:[(UARemotePasteboardWasRequestedEvent *)self isAsyncTransfer]];
  v24[14] = v10;
  v23[15] = @"remoteDeviceType";
  remoteDeviceType = [(UARemotePasteboardWasRequestedEvent *)self remoteDeviceType];
  v12 = remoteDeviceType;
  v13 = @"Unknown";
  if (remoteDeviceType)
  {
    v13 = remoteDeviceType;
  }

  v24[15] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:16];

  return v14;
}

@end