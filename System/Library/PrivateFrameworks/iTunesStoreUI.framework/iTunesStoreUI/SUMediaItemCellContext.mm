@interface SUMediaItemCellContext
- (SUMediaItemCellContext)init;
@end

@implementation SUMediaItemCellContext

- (SUMediaItemCellContext)init
{
  v3.receiver = self;
  v3.super_class = SUMediaItemCellContext;
  result = [(SUItemCellContext *)&v3 init];
  if (result)
  {
    result->_artworkWidth = -1.0;
    result->_itemsHaveArtwork = 1;
  }

  return result;
}

@end