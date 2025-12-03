@interface FTMutableCheckForSpeechResponse
- (BOOL)speech_detected;
- (FTMutableCheckForSpeechResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FTMutableCheckForSpeechResponse

- (FTMutableCheckForSpeechResponse)init
{
  v6.receiver = self;
  v6.super_class = FTMutableCheckForSpeechResponse;
  v2 = [(FTMutableCheckForSpeechResponse *)&v6 init];
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

- (BOOL)speech_detected
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"speech_detected"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end