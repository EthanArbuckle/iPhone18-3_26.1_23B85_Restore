@interface RMXPCEvent
+ (id)newXPCEventForDarwinNotification:(id)a3;
+ (id)newXPCEventForDistributedNotification:(id)a3;
+ (id)newXPCEventForStream:(id)a3 notificationName:(id)a4 descriptor:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEvent:(id)a3;
- (NSString)eventKey;
- (RMXPCEvent)initWithStreamName:(id)a3 notificationName:(id)a4 descriptor:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation RMXPCEvent

+ (id)newXPCEventForStream:(id)a3 notificationName:(id)a4 descriptor:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[RMXPCEvent alloc] initWithStreamName:v9 notificationName:v8 descriptor:v7];

  return v10;
}

+ (id)newXPCEventForDarwinNotification:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [RMXPCEvent alloc];
  v9 = @"Notification";
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [(RMXPCEvent *)v4 initWithStreamName:@"com.apple.notifyd.matching" notificationName:v3 descriptor:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)newXPCEventForDistributedNotification:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [RMXPCEvent alloc];
  v9 = @"Name";
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [(RMXPCEvent *)v4 initWithStreamName:@"com.apple.distnoted.matching" notificationName:v3 descriptor:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (RMXPCEvent)initWithStreamName:(id)a3 notificationName:(id)a4 descriptor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = RMXPCEvent;
  v12 = [(RMXPCEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_streamName, a3);
    objc_storeStrong(&v13->_notificationName, a4);
    objc_storeStrong(&v13->_descriptor, a5);
  }

  return v13;
}

- (NSString)eventKey
{
  v3 = [(RMXPCEvent *)self streamName];
  v4 = [(RMXPCEvent *)self notificationName];
  v5 = [RMXPCEvent eventKeyForStream:v3 notificationName:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMXPCEvent *)self isEqualToEvent:v4];
  }

  return v5;
}

- (BOOL)isEqualToEvent:(id)a3
{
  v4 = a3;
  v5 = [(RMXPCEvent *)self streamName];
  v6 = [v4 streamName];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(RMXPCEvent *)self notificationName];
    v8 = [v4 notificationName];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(RMXPCEvent *)self descriptor];
      v10 = [v4 descriptor];
      v11 = [v9 isEqualToDictionary:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(RMXPCEvent *)self streamName];
  v4 = [v3 hash];
  v5 = [(RMXPCEvent *)self notificationName];
  v6 = [v5 hash] ^ v4;
  v7 = [(RMXPCEvent *)self descriptor];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RMXPCEvent alloc];
  v5 = [(RMXPCEvent *)self streamName];
  v6 = [v5 copy];
  v7 = [(RMXPCEvent *)self notificationName];
  v8 = [v7 copy];
  v9 = [(RMXPCEvent *)self descriptor];
  v10 = [v9 copy];
  v11 = [(RMXPCEvent *)v4 initWithStreamName:v6 notificationName:v8 descriptor:v10];

  return v11;
}

@end