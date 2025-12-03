@interface SKAChannelActivityUpdate
- (SKAChannelActivityUpdate)initWithChannelActivityUpdate:(id)update identifier:(unint64_t)identifier;
@end

@implementation SKAChannelActivityUpdate

- (SKAChannelActivityUpdate)initWithChannelActivityUpdate:(id)update identifier:(unint64_t)identifier
{
  updateCopy = update;
  v11.receiver = self;
  v11.super_class = SKAChannelActivityUpdate;
  v8 = [(SKAChannelActivityUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_update, update);
    v9->_identifier = identifier;
  }

  return v9;
}

@end