@interface WFRequestOptions
- (void)addHttpHeaderField:(id)field withValue:(id)value;
@end

@implementation WFRequestOptions

- (void)addHttpHeaderField:(id)field withValue:(id)value
{
  fieldCopy = field;
  valueCopy = value;
  httpHeaderDictionary = self->_httpHeaderDictionary;
  if (!httpHeaderDictionary)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_httpHeaderDictionary;
    self->_httpHeaderDictionary = v8;

    httpHeaderDictionary = self->_httpHeaderDictionary;
  }

  [(NSMutableDictionary *)httpHeaderDictionary setValue:valueCopy forKey:fieldCopy];
}

@end