@interface RWIProtocolDebuggerProbeSample
- (RWIProtocolRuntimeRemoteObject)payload;
- (double)timestamp;
- (int)batchId;
- (int)probeId;
- (int)sampleId;
- (void)setPayload:(id)payload;
- (void)setTimestamp:(double)timestamp;
@end

@implementation RWIProtocolDebuggerProbeSample

- (int)probeId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerProbeSample;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"probeId"];
}

- (int)sampleId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerProbeSample;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"sampleId"];
}

- (int)batchId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerProbeSample;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"batchId"];
}

- (void)setTimestamp:(double)timestamp
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerProbeSample;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"timestamp" forKey:timestamp];
}

- (double)timestamp
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerProbeSample;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"timestamp"];
  return result;
}

- (void)setPayload:(id)payload
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerProbeSample;
  [(RWIProtocolJSONObject *)&v3 setObject:payload forKey:@"payload"];
}

- (RWIProtocolRuntimeRemoteObject)payload
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDebuggerProbeSample;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"payload"];
  if (v3)
  {
    v4 = [RWIProtocolRuntimeRemoteObject alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDebuggerProbeSample;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"payload"];
    [v5 toJSONObject];
    v6 = v12;
    ++*v12;
    v13 = v6;
    v7 = [(RWIProtocolJSONObject *)v4 initWithJSONObject:&v13];
    v8 = v13;
    v13 = 0;
    if (v8)
    {
      if (*v8 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v8;
      }
    }

    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (*v9 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v9;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end