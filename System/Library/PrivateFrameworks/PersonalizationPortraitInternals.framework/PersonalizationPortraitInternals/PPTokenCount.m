@interface PPTokenCount
- (PPTokenCount)initWithToken:(id)a3 count:(unsigned int)a4;
@end

@implementation PPTokenCount

- (PPTokenCount)initWithToken:(id)a3 count:(unsigned int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PPTokenCount;
  v8 = [(PPTokenCount *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_token, a3);
    v9->_count = a4;
  }

  return v9;
}

@end