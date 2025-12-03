@interface FTMutableSiriTranslationInfo
- (FTMutableSiriTranslationInfo)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setItn_alignments:(id)itn_alignments;
- (void)setPost_itn_recognition:(id)post_itn_recognition;
- (void)setPost_itn_tokens:(id)post_itn_tokens;
- (void)setRaw_nbest_choices:(id)raw_nbest_choices;
- (void)setRaw_sausage:(id)raw_sausage;
- (void)setTranslation_phrase:(id)translation_phrase;
@end

@implementation FTMutableSiriTranslationInfo

- (FTMutableSiriTranslationInfo)init
{
  v6.receiver = self;
  v6.super_class = FTMutableSiriTranslationInfo;
  v2 = [(FTMutableSiriTranslationInfo *)&v6 init];
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

- (void)setRaw_sausage:(id)raw_sausage
{
  v4 = [raw_sausage copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setRaw_nbest_choices:(id)raw_nbest_choices
{
  v4 = [raw_nbest_choices copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPost_itn_tokens:(id)post_itn_tokens
{
  v4 = [post_itn_tokens copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPost_itn_recognition:(id)post_itn_recognition
{
  v4 = [post_itn_recognition copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setItn_alignments:(id)itn_alignments
{
  v4 = [itn_alignments copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTranslation_phrase:(id)translation_phrase
{
  v4 = [translation_phrase copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end