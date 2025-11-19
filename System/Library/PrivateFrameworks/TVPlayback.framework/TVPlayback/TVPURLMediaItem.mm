@interface TVPURLMediaItem
- (BOOL)hasTrait:(id)a3;
- (BOOL)isEqualToMediaItem:(id)a3;
- (TVPURLMediaItem)init;
- (TVPURLMediaItem)initWithURL:(id)a3 traits:(id)a4;
@end

@implementation TVPURLMediaItem

- (TVPURLMediaItem)init
{
  [MEMORY[0x277CBEAD8] raise:@"TVPURLMediaItem Exception" format:@"init is not supported.  Use initWithURL:traits: instead."];

  return 0;
}

- (TVPURLMediaItem)initWithURL:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TVPURLMediaItem;
  v8 = [(TVPBaseMediaItem *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    url = v8->_url;
    v8->_url = v9;

    v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v7];
    traits = v8->_traits;
    v8->_traits = v11;
  }

  return v8;
}

- (BOOL)isEqualToMediaItem:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(TVPURLMediaItem *)self url];
      v6 = [(TVPURLMediaItem *)v4 url];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)hasTrait:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(TVPURLMediaItem *)self traits];
  v6 = [v5 containsObject:v4];

  return v6;
}

@end