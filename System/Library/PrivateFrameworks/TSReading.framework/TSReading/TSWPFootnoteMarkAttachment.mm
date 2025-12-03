@interface TSWPFootnoteMarkAttachment
- (id)copyWithContext:(id)context;
@end

@implementation TSWPFootnoteMarkAttachment

- (id)copyWithContext:(id)context
{
  v4 = [objc_opt_class() allocWithZone:{-[TSWPFootnoteMarkAttachment zone](self, "zone")}];

  return [v4 initWithContext:context];
}

@end