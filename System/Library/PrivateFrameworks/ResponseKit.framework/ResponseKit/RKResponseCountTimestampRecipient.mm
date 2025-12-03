@interface RKResponseCountTimestampRecipient
- (RKResponseCountTimestampRecipient)initWithCount:(int)count timestamp:(id)timestamp hasSameRecipient:(BOOL)recipient;
@end

@implementation RKResponseCountTimestampRecipient

- (RKResponseCountTimestampRecipient)initWithCount:(int)count timestamp:(id)timestamp hasSameRecipient:(BOOL)recipient
{
  timestampCopy = timestamp;
  v13.receiver = self;
  v13.super_class = RKResponseCountTimestampRecipient;
  v10 = [(RKResponseCountTimestampRecipient *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_count = count;
    objc_storeStrong(&v10->_timestamp, timestamp);
    v11->_hasSameRecipient = recipient;
  }

  return v11;
}

@end