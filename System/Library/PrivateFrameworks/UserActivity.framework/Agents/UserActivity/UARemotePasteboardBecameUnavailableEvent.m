@interface UARemotePasteboardBecameUnavailableEvent
- (id)eventPayload;
@end

@implementation UARemotePasteboardBecameUnavailableEvent

- (id)eventPayload
{
  v7 = @"reason";
  v2 = [NSNumber numberWithUnsignedInteger:[(UARemotePasteboardBecameUnavailableEvent *)self reason]];
  v3 = v2;
  v4 = @"-";
  if (v2)
  {
    v4 = v2;
  }

  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

@end