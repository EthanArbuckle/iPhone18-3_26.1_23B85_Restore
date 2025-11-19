@interface FSEventStreamMultiplexerClient
- (unint64_t)hash;
@end

@implementation FSEventStreamMultiplexerClient

- (unint64_t)hash
{
  v2 = [(FSEventStreamMultiplexerClient *)self clientID];
  v3 = [v2 unsignedIntValue];

  return v3;
}

@end