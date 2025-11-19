@interface GQDWPAttachment
- (void)dealloc;
@end

@implementation GQDWPAttachment

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDWPAttachment;
  [(GQDWPAttachment *)&v3 dealloc];
}

@end