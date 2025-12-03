@interface TKDisplayLinkManagerObserver
- (BOOL)isEqual:(id)equal;
- (TKDisplayLinkManagerObserver)initWithBlock:(id)block frameInterval:(unint64_t)interval;
- (void)displayDidRefresh:(id)refresh;
@end

@implementation TKDisplayLinkManagerObserver

- (TKDisplayLinkManagerObserver)initWithBlock:(id)block frameInterval:(unint64_t)interval
{
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = TKDisplayLinkManagerObserver;
  v7 = [(TKDisplayLinkManagerObserver *)&v12 init];
  v8 = v7;
  if (v7)
  {
    if (blockCopy && interval)
    {
      v9 = [blockCopy copy];
      block = v8->_block;
      v8->_block = v9;

      v8->_frameInterval = interval;
    }

    else
    {

      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_block == equalCopy[1];

  return v5;
}

- (void)displayDidRefresh:(id)refresh
{
  displayDidRefreshCount = self->_displayDidRefreshCount;
  if (!(displayDidRefreshCount % self->_frameInterval))
  {
    block = self->_block;
    (*(self->_block + 2))();
  }

  self->_displayDidRefreshCount = displayDidRefreshCount + 1;
}

@end