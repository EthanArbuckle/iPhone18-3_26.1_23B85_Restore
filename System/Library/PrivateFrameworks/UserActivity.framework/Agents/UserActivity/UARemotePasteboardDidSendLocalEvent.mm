@interface UARemotePasteboardDidSendLocalEvent
- (id)eventPayload;
@end

@implementation UARemotePasteboardDidSendLocalEvent

- (id)eventPayload
{
  v15[0] = @"clientWriteSize";
  v14 = [NSNumber numberWithUnsignedLongLong:[(UARemotePasteboardDidSendLocalEvent *)self clientWriteSize]];
  v16[0] = v14;
  v15[1] = @"clientWriteTime";
  v3 = [NSNumber numberWithUnsignedLongLong:[(UARemotePasteboardDidSendLocalEvent *)self clientWriteTime]];
  v16[1] = v3;
  v15[2] = @"clientWriteSpeed";
  v4 = [NSNumber numberWithUnsignedLongLong:[(UARemotePasteboardDidSendLocalEvent *)self clientWriteSpeed]];
  v16[2] = v4;
  v15[3] = @"usedStreams";
  v5 = [NSNumber numberWithBool:[(UARemotePasteboardDidSendLocalEvent *)self usedStreams]];
  v16[3] = v5;
  v15[4] = @"streamOpenDelay";
  v6 = [NSNumber numberWithUnsignedLongLong:[(UARemotePasteboardDidSendLocalEvent *)self streamOpenDelay]];
  v16[4] = v6;
  v15[5] = @"streamDataSize";
  v7 = [NSNumber numberWithUnsignedLongLong:[(UARemotePasteboardDidSendLocalEvent *)self streamDataSize]];
  v16[5] = v7;
  v15[6] = @"streamTransferTime";
  v8 = [NSNumber numberWithUnsignedLongLong:[(UARemotePasteboardDidSendLocalEvent *)self streamDataXferTime]];
  v16[6] = v8;
  v15[7] = @"streamTransferSpeed";
  v9 = [NSNumber numberWithUnsignedLongLong:[(UARemotePasteboardDidSendLocalEvent *)self streamDataXferSpeed]];
  v16[7] = v9;
  v15[8] = @"totalTime";
  v10 = [NSNumber numberWithUnsignedLongLong:[(UARemotePasteboardDidSendLocalEvent *)self totalTime]];
  v16[8] = v10;
  v15[9] = @"errorCode";
  v11 = [NSNumber numberWithLongLong:[(UARemotePasteboardDidSendLocalEvent *)self errorCode]];
  v16[9] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:10];

  return v12;
}

@end