@interface SKAChannelActivityUpdate
- (SKAChannelActivityUpdate)initWithChannelActivityUpdate:(id)a3 identifier:(unint64_t)a4;
@end

@implementation SKAChannelActivityUpdate

- (SKAChannelActivityUpdate)initWithChannelActivityUpdate:(id)a3 identifier:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SKAChannelActivityUpdate;
  v8 = [(SKAChannelActivityUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_update, a3);
    v9->_identifier = a4;
  }

  return v9;
}

@end