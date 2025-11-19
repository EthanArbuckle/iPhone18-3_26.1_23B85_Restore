@interface RKResponseCountTimestampRecipient
- (RKResponseCountTimestampRecipient)initWithCount:(int)a3 timestamp:(id)a4 hasSameRecipient:(BOOL)a5;
@end

@implementation RKResponseCountTimestampRecipient

- (RKResponseCountTimestampRecipient)initWithCount:(int)a3 timestamp:(id)a4 hasSameRecipient:(BOOL)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = RKResponseCountTimestampRecipient;
  v10 = [(RKResponseCountTimestampRecipient *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_count = a3;
    objc_storeStrong(&v10->_timestamp, a4);
    v11->_hasSameRecipient = a5;
  }

  return v11;
}

@end