@interface TPPageGroupInfo
- (TPPageGroupInfo)initWithPageIndex:(unsigned int)a3 bgCount:(int)a4 fgCount:(int)a5 drawableCount:(int)a6;
@end

@implementation TPPageGroupInfo

- (TPPageGroupInfo)initWithPageIndex:(unsigned int)a3 bgCount:(int)a4 fgCount:(int)a5 drawableCount:(int)a6
{
  v11.receiver = self;
  v11.super_class = TPPageGroupInfo;
  result = [(TPPageGroupInfo *)&v11 init];
  if (result)
  {
    result->_pageIndex = a3;
    result->_bgCount = a4;
    result->_fgCount = a5;
    result->_drawableCount = a6;
  }

  return result;
}

@end