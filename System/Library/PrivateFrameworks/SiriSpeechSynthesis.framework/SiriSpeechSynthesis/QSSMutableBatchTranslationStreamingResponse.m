@interface QSSMutableBatchTranslationStreamingResponse
- (QSSBatchTranslationResponse)contentAsQSSBatchTranslationResponse;
- (QSSFinalBlazarResponse)contentAsQSSFinalBlazarResponse;
- (QSSMutableBatchTranslationStreamingResponse)init;
- (QSSTranslationSupportedLanguagesResponse)contentAsQSSTranslationSupportedLanguagesResponse;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)content_type;
- (void)setContentAsQSSBatchTranslationResponse:(id)a3;
- (void)setContentAsQSSFinalBlazarResponse:(id)a3;
- (void)setContentAsQSSTranslationSupportedLanguagesResponse:(id)a3;
- (void)setContent_type:(int64_t)a3;
@end

@implementation QSSMutableBatchTranslationStreamingResponse

- (void)setContentAsQSSTranslationSupportedLanguagesResponse:(id)a3
{
  v5 = a3;
  [(QSSMutableBatchTranslationStreamingResponse *)self setContent_type:3];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSTranslationSupportedLanguagesResponse)contentAsQSSTranslationSupportedLanguagesResponse
{
  if ([(QSSMutableBatchTranslationStreamingResponse *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSFinalBlazarResponse:(id)a3
{
  v5 = a3;
  [(QSSMutableBatchTranslationStreamingResponse *)self setContent_type:2];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSFinalBlazarResponse)contentAsQSSFinalBlazarResponse
{
  if ([(QSSMutableBatchTranslationStreamingResponse *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSBatchTranslationResponse:(id)a3
{
  v5 = a3;
  [(QSSMutableBatchTranslationStreamingResponse *)self setContent_type:1];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSBatchTranslationResponse)contentAsQSSBatchTranslationResponse
{
  if ([(QSSMutableBatchTranslationStreamingResponse *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContent_type:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)content_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content_type"];
  v3 = [v2 integerValue];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableBatchTranslationStreamingResponse)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableBatchTranslationStreamingResponse;
  v2 = [(QSSMutableBatchTranslationStreamingResponse *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end