@interface VUIPlaybackEndManagerObjC
+ (id)playbackBroadcastDidEndHandler;
+ (void)monitor:(id)monitor;
+ (void)remove:(id)remove;
+ (void)setPlaybackBroadcastDidEndHandler:(id)handler;
@end

@implementation VUIPlaybackEndManagerObjC

+ (id)playbackBroadcastDidEndHandler
{
  v2 = static PlaybackEndManagerObjC.playbackBroadcastDidEndHandler.getter();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1E377674C;
    v6[3] = &block_descriptor_93;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)setPlaybackBroadcastDidEndHandler:(id)handler
{
  v3 = _Block_copy(handler);
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v3 = sub_1E38DA520;
  }

  else
  {
    v5 = 0;
  }

  static PlaybackEndManagerObjC.playbackBroadcastDidEndHandler.setter(v3, v5);
}

+ (void)monitor:(id)monitor
{
  monitorCopy = monitor;
  static PlaybackEndManagerObjC.monitor(_:)(monitorCopy);
}

+ (void)remove:(id)remove
{
  removeCopy = remove;
  static PlaybackEndManagerObjC.remove(_:)(removeCopy);
}

@end