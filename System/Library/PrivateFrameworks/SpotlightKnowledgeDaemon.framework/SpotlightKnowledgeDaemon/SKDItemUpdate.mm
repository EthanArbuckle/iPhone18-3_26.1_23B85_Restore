@interface SKDItemUpdate
+ (id)invalidBundleUpdateForIdentifier:(id)identifier uniqueID:(id)d;
- (void)addAttribute:(id)attribute value:(id)value;
- (void)addAttributesFromDictionary:(id)dictionary;
- (void)setKeyphrasesCount:(unint64_t)count;
- (void)setTextContentLength:(unint64_t)length;
@end

@implementation SKDItemUpdate

+ (id)invalidBundleUpdateForIdentifier:(id)identifier uniqueID:(id)d
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  dCopy = d;
  identifierCopy = identifier;
  v8 = [v5 alloc];
  v14 = @"messageInfoKey";
  v15[0] = @"invalid bundle";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10 = [v8 initWithDomain:@"SKDItemProcessorInfoErrorDomain" code:-1000 userInfo:v9];

  v11 = [(SKDEvent *)[SKDItemUpdate alloc] initWithStatus:4 identifier:identifierCopy info:v10];
  [(SKDItemUpdate *)v11 setUniqueID:dCopy];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)setTextContentLength:(unint64_t)length
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:length];
  [(SKDEvent *)self addFeedback:@"textContentLength" value:v4];
}

- (void)setKeyphrasesCount:(unint64_t)count
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  [(SKDEvent *)self addFeedback:@"keyphrases" value:v4];
}

- (void)addAttribute:(id)attribute value:(id)value
{
  attributeCopy = attribute;
  valueCopy = value;
  attributes = self->_attributes;
  if (!attributes)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_attributes;
    self->_attributes = v8;

    attributes = self->_attributes;
  }

  [(NSMutableDictionary *)attributes setObject:valueCopy forKey:attributeCopy];
}

- (void)addAttributesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    attributes = self->_attributes;
    v8 = dictionaryCopy;
    if (!attributes)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v7 = self->_attributes;
      self->_attributes = v6;

      attributes = self->_attributes;
    }

    [(NSMutableDictionary *)attributes addEntriesFromDictionary:v8];
    dictionaryCopy = v8;
  }
}

@end