@interface SWURLShareItem
- (SWURLShareItem)initWithURL:(id)l;
@end

@implementation SWURLShareItem

- (SWURLShareItem)initWithURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = SWURLShareItem;
  v5 = [(SWURLShareItem *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_kind = 0;
    v7 = [lCopy copy];
    url = v6->_url;
    v6->_url = v7;
  }

  return v6;
}

@end