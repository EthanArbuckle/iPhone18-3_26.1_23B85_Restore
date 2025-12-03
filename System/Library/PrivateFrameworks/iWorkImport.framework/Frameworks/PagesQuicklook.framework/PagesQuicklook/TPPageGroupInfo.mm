@interface TPPageGroupInfo
- (TPPageGroupInfo)initWithPageIndex:(unsigned int)index bgCount:(int)count fgCount:(int)fgCount drawableCount:(int)drawableCount;
@end

@implementation TPPageGroupInfo

- (TPPageGroupInfo)initWithPageIndex:(unsigned int)index bgCount:(int)count fgCount:(int)fgCount drawableCount:(int)drawableCount
{
  v11.receiver = self;
  v11.super_class = TPPageGroupInfo;
  result = [(TPPageGroupInfo *)&v11 init];
  if (result)
  {
    result->_pageIndex = index;
    result->_bgCount = count;
    result->_fgCount = fgCount;
    result->_drawableCount = drawableCount;
  }

  return result;
}

@end