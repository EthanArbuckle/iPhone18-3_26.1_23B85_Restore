@interface TVPURLMediaItem
- (BOOL)hasTrait:(id)trait;
- (BOOL)isEqualToMediaItem:(id)item;
- (TVPURLMediaItem)init;
- (TVPURLMediaItem)initWithURL:(id)l traits:(id)traits;
@end

@implementation TVPURLMediaItem

- (TVPURLMediaItem)init
{
  [MEMORY[0x277CBEAD8] raise:@"TVPURLMediaItem Exception" format:@"init is not supported.  Use initWithURL:traits: instead."];

  return 0;
}

- (TVPURLMediaItem)initWithURL:(id)l traits:(id)traits
{
  lCopy = l;
  traitsCopy = traits;
  v14.receiver = self;
  v14.super_class = TVPURLMediaItem;
  v8 = [(TVPBaseMediaItem *)&v14 init];
  if (v8)
  {
    v9 = [lCopy copy];
    url = v8->_url;
    v8->_url = v9;

    v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:traitsCopy];
    traits = v8->_traits;
    v8->_traits = v11;
  }

  return v8;
}

- (BOOL)isEqualToMediaItem:(id)item
{
  itemCopy = item;
  if (self == itemCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(TVPURLMediaItem *)self url];
      v6 = [(TVPURLMediaItem *)itemCopy url];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)hasTrait:(id)trait
{
  if (!trait)
  {
    return 0;
  }

  traitCopy = trait;
  traits = [(TVPURLMediaItem *)self traits];
  v6 = [traits containsObject:traitCopy];

  return v6;
}

@end