@interface UAActivityNotifier
- (UAActivityNotifier)initWithManager:(id)manager name:(id)name;
@end

@implementation UAActivityNotifier

- (UAActivityNotifier)initWithManager:(id)manager name:(id)name
{
  v5.receiver = self;
  v5.super_class = UAActivityNotifier;
  return [(UACornerActionManagerHandler *)&v5 initWithManager:manager name:name];
}

@end