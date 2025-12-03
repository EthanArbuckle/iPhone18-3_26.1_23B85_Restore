@interface FTMutableTextToSpeechCacheObject
- (FTMutableTextToSpeechCacheObject)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)audio:(id)audio;
- (void)setAudio:(id)audio;
- (void)setWord_timing_info:(id)word_timing_info;
@end

@implementation FTMutableTextToSpeechCacheObject

- (FTMutableTextToSpeechCacheObject)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechCacheObject;
  v2 = [(FTMutableTextToSpeechCacheObject *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)setAudio:(id)audio
{
  v4 = [audio copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)audio:(id)audio
{
  audioCopy = audio;
  audio = [(FTMutableTextToSpeechCacheObject *)self audio];
  bytes = [audio bytes];
  audio2 = [(FTMutableTextToSpeechCacheObject *)self audio];
  audioCopy[2](audioCopy, bytes, [audio2 length]);
}

- (void)setWord_timing_info:(id)word_timing_info
{
  v4 = [word_timing_info copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end