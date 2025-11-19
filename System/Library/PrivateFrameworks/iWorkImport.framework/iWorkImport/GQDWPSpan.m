@interface GQDWPSpan
- (void)dealloc;
@end

@implementation GQDWPSpan

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDWPSpan;
  [(GQDWPTextList *)&v3 dealloc];
}

@end