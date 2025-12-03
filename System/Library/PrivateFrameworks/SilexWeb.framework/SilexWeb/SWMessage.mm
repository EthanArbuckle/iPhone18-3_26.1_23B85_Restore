@interface SWMessage
- (SWMessage)initWithDictionary:(id)dictionary;
@end

@implementation SWMessage

- (SWMessage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKey:@"name"];
  if (v6)
  {
    v9.receiver = self;
    v9.super_class = SWMessage;
    v7 = [(SWMessage *)&v9 init];
    self = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_name, v6);
      objc_storeStrong(&self->_body, dictionary);
    }
  }

  return self;
}

@end