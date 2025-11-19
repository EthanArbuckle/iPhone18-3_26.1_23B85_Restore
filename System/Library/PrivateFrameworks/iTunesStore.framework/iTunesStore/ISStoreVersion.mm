@interface ISStoreVersion
- (ISStoreVersion)initWithDictionary:(id)a3;
- (void)dealloc;
@end

@implementation ISStoreVersion

- (ISStoreVersion)initWithDictionary:(id)a3
{
  v4 = [(ISStoreVersion *)self init];
  if (v4)
  {
    v5 = [a3 objectForKey:@"redirect-url"];
    if (v5)
    {
      v4->_redirectURL = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v5];
    }
  }

  return v4;
}

- (void)dealloc
{
  self->_redirectURL = 0;
  v3.receiver = self;
  v3.super_class = ISStoreVersion;
  [(ISStoreVersion *)&v3 dealloc];
}

@end