@interface TKDisplayLinkManagerObserver
- (BOOL)isEqual:(id)a3;
- (TKDisplayLinkManagerObserver)initWithBlock:(id)a3 frameInterval:(unint64_t)a4;
- (void)displayDidRefresh:(id)a3;
@end

@implementation TKDisplayLinkManagerObserver

- (TKDisplayLinkManagerObserver)initWithBlock:(id)a3 frameInterval:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = TKDisplayLinkManagerObserver;
  v7 = [(TKDisplayLinkManagerObserver *)&v12 init];
  v8 = v7;
  if (v7)
  {
    if (v6 && a4)
    {
      v9 = [v6 copy];
      block = v8->_block;
      v8->_block = v9;

      v8->_frameInterval = a4;
    }

    else
    {

      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_block == v4[1];

  return v5;
}

- (void)displayDidRefresh:(id)a3
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