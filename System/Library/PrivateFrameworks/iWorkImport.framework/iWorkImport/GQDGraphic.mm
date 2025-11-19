@interface GQDGraphic
- (void)dealloc;
@end

@implementation GQDGraphic

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDGraphic;
  [(GQDDrawable *)&v3 dealloc];
}

@end