@interface SKDBaseRecord
- (SKDBaseRecord)initWithAttributes:(id)attributes;
@end

@implementation SKDBaseRecord

- (SKDBaseRecord)initWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v9.receiver = self;
  v9.super_class = SKDBaseRecord;
  v6 = [(SKDBaseRecord *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attributes, attributes);
  }

  return v7;
}

@end