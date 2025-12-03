@interface RMXPCEvent
+ (id)newXPCEventForDarwinNotification:(id)notification;
+ (id)newXPCEventForDistributedNotification:(id)notification;
+ (id)newXPCEventForStream:(id)stream notificationName:(id)name descriptor:(id)descriptor;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEvent:(id)event;
- (NSString)eventKey;
- (RMXPCEvent)initWithStreamName:(id)name notificationName:(id)notificationName descriptor:(id)descriptor;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation RMXPCEvent

+ (id)newXPCEventForStream:(id)stream notificationName:(id)name descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  nameCopy = name;
  streamCopy = stream;
  v10 = [[RMXPCEvent alloc] initWithStreamName:streamCopy notificationName:nameCopy descriptor:descriptorCopy];

  return v10;
}

+ (id)newXPCEventForDarwinNotification:(id)notification
{
  v10[1] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v4 = [RMXPCEvent alloc];
  v9 = @"Notification";
  v10[0] = notificationCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [(RMXPCEvent *)v4 initWithStreamName:@"com.apple.notifyd.matching" notificationName:notificationCopy descriptor:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)newXPCEventForDistributedNotification:(id)notification
{
  v10[1] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v4 = [RMXPCEvent alloc];
  v9 = @"Name";
  v10[0] = notificationCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [(RMXPCEvent *)v4 initWithStreamName:@"com.apple.distnoted.matching" notificationName:notificationCopy descriptor:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (RMXPCEvent)initWithStreamName:(id)name notificationName:(id)notificationName descriptor:(id)descriptor
{
  nameCopy = name;
  notificationNameCopy = notificationName;
  descriptorCopy = descriptor;
  v15.receiver = self;
  v15.super_class = RMXPCEvent;
  v12 = [(RMXPCEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_streamName, name);
    objc_storeStrong(&v13->_notificationName, notificationName);
    objc_storeStrong(&v13->_descriptor, descriptor);
  }

  return v13;
}

- (NSString)eventKey
{
  streamName = [(RMXPCEvent *)self streamName];
  notificationName = [(RMXPCEvent *)self notificationName];
  v5 = [RMXPCEvent eventKeyForStream:streamName notificationName:notificationName];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMXPCEvent *)self isEqualToEvent:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToEvent:(id)event
{
  eventCopy = event;
  streamName = [(RMXPCEvent *)self streamName];
  streamName2 = [eventCopy streamName];
  if ([streamName isEqualToString:streamName2])
  {
    notificationName = [(RMXPCEvent *)self notificationName];
    notificationName2 = [eventCopy notificationName];
    if ([notificationName isEqualToString:notificationName2])
    {
      descriptor = [(RMXPCEvent *)self descriptor];
      descriptor2 = [eventCopy descriptor];
      v11 = [descriptor isEqualToDictionary:descriptor2];
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
  streamName = [(RMXPCEvent *)self streamName];
  v4 = [streamName hash];
  notificationName = [(RMXPCEvent *)self notificationName];
  v6 = [notificationName hash] ^ v4;
  descriptor = [(RMXPCEvent *)self descriptor];
  v8 = [descriptor hash];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RMXPCEvent alloc];
  streamName = [(RMXPCEvent *)self streamName];
  v6 = [streamName copy];
  notificationName = [(RMXPCEvent *)self notificationName];
  v8 = [notificationName copy];
  descriptor = [(RMXPCEvent *)self descriptor];
  v10 = [descriptor copy];
  v11 = [(RMXPCEvent *)v4 initWithStreamName:v6 notificationName:v8 descriptor:v10];

  return v11;
}

@end