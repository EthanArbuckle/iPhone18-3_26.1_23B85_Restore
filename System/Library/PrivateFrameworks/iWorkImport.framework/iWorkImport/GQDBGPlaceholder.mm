@interface GQDBGPlaceholder
- (void)dealloc;
@end

@implementation GQDBGPlaceholder

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDBGPlaceholder;
  [(GQDDrawable *)&v3 dealloc];
}

@end