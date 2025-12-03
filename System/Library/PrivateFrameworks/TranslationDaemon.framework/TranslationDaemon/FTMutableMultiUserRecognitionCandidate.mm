@interface FTMutableMultiUserRecognitionCandidate
- (FTMutableMultiUserRecognitionCandidate)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setRecognition_candidate:(id)recognition_candidate;
@end

@implementation FTMutableMultiUserRecognitionCandidate

- (FTMutableMultiUserRecognitionCandidate)init
{
  v6.receiver = self;
  v6.super_class = FTMutableMultiUserRecognitionCandidate;
  v2 = [(FTMutableMultiUserRecognitionCandidate *)&v6 init];
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

- (void)setRecognition_candidate:(id)recognition_candidate
{
  v4 = [recognition_candidate copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end