@interface GQDWPBodyStorage
- (void)dealloc;
@end

@implementation GQDWPBodyStorage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDWPBodyStorage;
  [(GQDWPStorage *)&v3 dealloc];
}

@end