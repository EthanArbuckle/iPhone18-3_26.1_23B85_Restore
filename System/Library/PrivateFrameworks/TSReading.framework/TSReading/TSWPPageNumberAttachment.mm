@interface TSWPPageNumberAttachment
- (id)stringWithPageNumber:(unint64_t)a3 pageCount:(unint64_t)a4 charIndex:(unint64_t)a5;
@end

@implementation TSWPPageNumberAttachment

- (id)stringWithPageNumber:(unint64_t)a3 pageCount:(unint64_t)a4 charIndex:(unint64_t)a5
{
  v6.receiver = self;
  v6.super_class = TSWPPageNumberAttachment;
  return [(TSWPNumberAttachment *)&v6 stringWithNumber:a3, a4, a5];
}

@end