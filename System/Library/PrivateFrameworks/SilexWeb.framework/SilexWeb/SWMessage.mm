@interface SWMessage
- (SWMessage)initWithDictionary:(id)a3;
@end

@implementation SWMessage

- (SWMessage)initWithDictionary:(id)a3
{
  v5 = a3;
  v6 = [v5 objectForKey:@"name"];
  if (v6)
  {
    v9.receiver = self;
    v9.super_class = SWMessage;
    v7 = [(SWMessage *)&v9 init];
    self = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_name, v6);
      objc_storeStrong(&self->_body, a3);
    }
  }

  return self;
}

@end