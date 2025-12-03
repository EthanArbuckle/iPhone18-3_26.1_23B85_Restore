@interface PPTokenCount
- (PPTokenCount)initWithToken:(id)token count:(unsigned int)count;
@end

@implementation PPTokenCount

- (PPTokenCount)initWithToken:(id)token count:(unsigned int)count
{
  tokenCopy = token;
  v11.receiver = self;
  v11.super_class = PPTokenCount;
  v8 = [(PPTokenCount *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_token, token);
    v9->_count = count;
  }

  return v9;
}

@end