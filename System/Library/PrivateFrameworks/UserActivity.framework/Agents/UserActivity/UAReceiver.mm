@interface UAReceiver
- (BOOL)terminate;
- (UAReceiver)initWithManager:(id)manager name:(id)name;
@end

@implementation UAReceiver

- (UAReceiver)initWithManager:(id)manager name:(id)name
{
  v5.receiver = self;
  v5.super_class = UAReceiver;
  return [(UACornerActionManagerHandler *)&v5 initWithManager:manager name:name];
}

- (BOOL)terminate
{
  v6.receiver = self;
  v6.super_class = UAReceiver;
  terminate = [(UACornerActionManagerHandler *)&v6 terminate];
  if (terminate)
  {
    manager = [(UACornerActionManagerHandler *)self manager];
    [manager removeReceiver:self];
  }

  return terminate;
}

@end