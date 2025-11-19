@interface SKDBaseRecord
- (SKDBaseRecord)initWithAttributes:(id)a3;
@end

@implementation SKDBaseRecord

- (SKDBaseRecord)initWithAttributes:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKDBaseRecord;
  v6 = [(SKDBaseRecord *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attributes, a3);
  }

  return v7;
}

@end