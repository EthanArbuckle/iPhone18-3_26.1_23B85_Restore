@interface TSWPPageNumberAttachment
- (id)stringWithPageNumber:(unint64_t)number pageCount:(unint64_t)count charIndex:(unint64_t)index;
@end

@implementation TSWPPageNumberAttachment

- (id)stringWithPageNumber:(unint64_t)number pageCount:(unint64_t)count charIndex:(unint64_t)index
{
  v6.receiver = self;
  v6.super_class = TSWPPageNumberAttachment;
  return [(TSWPNumberAttachment *)&v6 stringWithNumber:number, count, index];
}

@end