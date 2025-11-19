@interface WFRequestOptions
- (void)addHttpHeaderField:(id)a3 withValue:(id)a4;
@end

@implementation WFRequestOptions

- (void)addHttpHeaderField:(id)a3 withValue:(id)a4
{
  v10 = a3;
  v6 = a4;
  httpHeaderDictionary = self->_httpHeaderDictionary;
  if (!httpHeaderDictionary)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_httpHeaderDictionary;
    self->_httpHeaderDictionary = v8;

    httpHeaderDictionary = self->_httpHeaderDictionary;
  }

  [(NSMutableDictionary *)httpHeaderDictionary setValue:v6 forKey:v10];
}

@end