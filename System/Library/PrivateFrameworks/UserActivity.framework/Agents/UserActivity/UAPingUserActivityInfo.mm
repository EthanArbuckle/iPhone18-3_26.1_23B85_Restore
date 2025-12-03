@interface UAPingUserActivityInfo
- (UAPingUserActivityInfo)initWithPayloadSize:(unint64_t)size;
- (id)initFromPing:(id)ping;
- (id)statusString;
@end

@implementation UAPingUserActivityInfo

- (UAPingUserActivityInfo)initWithPayloadSize:(unint64_t)size
{
  v8.receiver = self;
  v8.super_class = UAPingUserActivityInfo;
  v4 = [(UAPingUserActivityInfo *)&v8 initWithUUID:0 type:21 options:0];
  v5 = v4;
  if (v4)
  {
    [(UAPingUserActivityInfo *)v4 setActivityType:@"com.apple.private.handoff.ping"];
    [(UAPingUserActivityInfo *)v5 setTitle:@"PING!"];
    [(UAPingUserActivityInfo *)v5 setEligibleForHandoff:1];
    if (size)
    {
      v6 = [NSMutableData dataWithLength:size];
      arc4random_buf([v6 mutableBytes], objc_msgSend(v6, "length"));
      [(UAPingUserActivityInfo *)v5 setPayload:v6 identifier:UAUserActivityUserInfoPayload];
    }
  }

  return v5;
}

- (id)initFromPing:(id)ping
{
  v6.receiver = self;
  v6.super_class = UAPingUserActivityInfo;
  v3 = [(UAPingUserActivityInfo *)&v6 initWithUserActivityInfo:ping];
  v4 = v3;
  if (v3)
  {
    [(UAPingUserActivityInfo *)v3 setType:22];
    [(UAPingUserActivityInfo *)v4 setActivityType:@"com.apple.private.handoff.pong"];
    [(UAPingUserActivityInfo *)v4 setTitle:@"PONG!"];
    [(UAPingUserActivityInfo *)v4 setEligibleForHandoff:1];
  }

  return v4;
}

- (id)statusString
{
  uuid = [(UAPingUserActivityInfo *)self uuid];
  uUIDString = [uuid UUIDString];
  v5 = [(UAPingUserActivityInfo *)self payloadForIdentifier:UAUserActivityUserInfoPayload];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@: payloadSize=%ld", uUIDString, [v5 length]);

  return v6;
}

@end