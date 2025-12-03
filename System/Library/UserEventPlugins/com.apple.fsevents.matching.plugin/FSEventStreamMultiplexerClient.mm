@interface FSEventStreamMultiplexerClient
- (unint64_t)hash;
@end

@implementation FSEventStreamMultiplexerClient

- (unint64_t)hash
{
  clientID = [(FSEventStreamMultiplexerClient *)self clientID];
  unsignedIntValue = [clientID unsignedIntValue];

  return unsignedIntValue;
}

@end