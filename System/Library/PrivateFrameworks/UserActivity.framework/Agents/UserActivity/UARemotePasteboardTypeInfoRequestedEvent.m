@interface UARemotePasteboardTypeInfoRequestedEvent
- (id)eventPayload;
@end

@implementation UARemotePasteboardTypeInfoRequestedEvent

- (id)eventPayload
{
  v8[0] = @"payloadSize";
  v3 = [NSNumber numberWithUnsignedLongLong:[(UARemotePasteboardTypeInfoRequestedEvent *)self payloadSize]];
  v9[0] = v3;
  v8[1] = @"transferTime";
  v4 = [NSNumber numberWithUnsignedLongLong:[(UARemotePasteboardTypeInfoRequestedEvent *)self payloadXferTime]];
  v9[1] = v4;
  v8[2] = @"errorCode";
  v5 = [NSNumber numberWithLongLong:[(UARemotePasteboardTypeInfoRequestedEvent *)self errorCode]];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

@end