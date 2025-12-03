@interface QSSMutableLanguageDetected
- (QSSMutableLanguageDetected)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDetected_locale:(id)detected_locale;
- (void)setPredictions:(id)predictions;
@end

@implementation QSSMutableLanguageDetected

- (void)setPredictions:(id)predictions
{
  v4 = [predictions copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setDetected_locale:(id)detected_locale
{
  v4 = [detected_locale copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableLanguageDetected)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableLanguageDetected;
  v2 = [(QSSMutableLanguageDetected *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end