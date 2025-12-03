@interface TVPPlaybackState
+ (id)loading;
+ (id)paused;
+ (id)playing;
+ (id)scanning;
+ (id)stopped;
- (BOOL)isEqual:(id)equal;
- (TVPPlaybackState)init;
- (TVPPlaybackState)initWithName:(id)name;
@end

@implementation TVPPlaybackState

+ (id)stopped
{
  if (stopped_onceToken != -1)
  {
    +[TVPPlaybackState stopped];
  }

  v3 = stopped_state;

  return v3;
}

uint64_t __27__TVPPlaybackState_stopped__block_invoke()
{
  stopped_state = [[TVPPlaybackState alloc] initWithName:@"Stopped"];

  return MEMORY[0x2821F96F8]();
}

+ (id)loading
{
  if (loading_onceToken != -1)
  {
    +[TVPPlaybackState loading];
  }

  v3 = loading_state;

  return v3;
}

uint64_t __27__TVPPlaybackState_loading__block_invoke()
{
  loading_state = [[TVPPlaybackState alloc] initWithName:@"Loading"];

  return MEMORY[0x2821F96F8]();
}

+ (id)paused
{
  if (paused_onceToken != -1)
  {
    +[TVPPlaybackState paused];
  }

  v3 = paused_state;

  return v3;
}

uint64_t __26__TVPPlaybackState_paused__block_invoke()
{
  paused_state = [[TVPPlaybackState alloc] initWithName:@"Paused"];

  return MEMORY[0x2821F96F8]();
}

+ (id)playing
{
  if (playing_onceToken != -1)
  {
    +[TVPPlaybackState playing];
  }

  v3 = playing_state;

  return v3;
}

uint64_t __27__TVPPlaybackState_playing__block_invoke()
{
  playing_state = [[TVPPlaybackState alloc] initWithName:@"Playing"];

  return MEMORY[0x2821F96F8]();
}

+ (id)scanning
{
  if (scanning_onceToken != -1)
  {
    +[TVPPlaybackState scanning];
  }

  v3 = scanning_state;

  return v3;
}

uint64_t __28__TVPPlaybackState_scanning__block_invoke()
{
  scanning_state = [[TVPPlaybackState alloc] initWithName:@"Scanning"];

  return MEMORY[0x2821F96F8]();
}

- (TVPPlaybackState)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:@"Unimplemented" reason:@"-[ATVPlaybackState init] not supported userInfo:{use singletons instead", 0}];
  objc_exception_throw(v2);
}

- (TVPPlaybackState)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = TVPPlaybackState;
  v6 = [(TVPPlaybackState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    name = [equalCopy name];
    name2 = [(TVPPlaybackState *)self name];
    v7 = [name isEqualToString:name2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end