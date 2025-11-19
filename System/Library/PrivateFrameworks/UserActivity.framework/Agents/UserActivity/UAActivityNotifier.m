@interface UAActivityNotifier
- (UAActivityNotifier)initWithManager:(id)a3 name:(id)a4;
@end

@implementation UAActivityNotifier

- (UAActivityNotifier)initWithManager:(id)a3 name:(id)a4
{
  v5.receiver = self;
  v5.super_class = UAActivityNotifier;
  return [(UACornerActionManagerHandler *)&v5 initWithManager:a3 name:a4];
}

@end