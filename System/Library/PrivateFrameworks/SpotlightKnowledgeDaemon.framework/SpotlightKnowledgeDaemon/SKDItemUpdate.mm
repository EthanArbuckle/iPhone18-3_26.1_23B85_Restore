@interface SKDItemUpdate
+ (id)invalidBundleUpdateForIdentifier:(id)a3 uniqueID:(id)a4;
- (void)addAttribute:(id)a3 value:(id)a4;
- (void)addAttributesFromDictionary:(id)a3;
- (void)setKeyphrasesCount:(unint64_t)a3;
- (void)setTextContentLength:(unint64_t)a3;
@end

@implementation SKDItemUpdate

+ (id)invalidBundleUpdateForIdentifier:(id)a3 uniqueID:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v14 = @"messageInfoKey";
  v15[0] = @"invalid bundle";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10 = [v8 initWithDomain:@"SKDItemProcessorInfoErrorDomain" code:-1000 userInfo:v9];

  v11 = [(SKDEvent *)[SKDItemUpdate alloc] initWithStatus:4 identifier:v7 info:v10];
  [(SKDItemUpdate *)v11 setUniqueID:v6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)setTextContentLength:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(SKDEvent *)self addFeedback:@"textContentLength" value:v4];
}

- (void)setKeyphrasesCount:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(SKDEvent *)self addFeedback:@"keyphrases" value:v4];
}

- (void)addAttribute:(id)a3 value:(id)a4
{
  v10 = a3;
  v6 = a4;
  attributes = self->_attributes;
  if (!attributes)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_attributes;
    self->_attributes = v8;

    attributes = self->_attributes;
  }

  [(NSMutableDictionary *)attributes setObject:v6 forKey:v10];
}

- (void)addAttributesFromDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    attributes = self->_attributes;
    v8 = v4;
    if (!attributes)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v7 = self->_attributes;
      self->_attributes = v6;

      attributes = self->_attributes;
    }

    [(NSMutableDictionary *)attributes addEntriesFromDictionary:v8];
    v4 = v8;
  }
}

@end