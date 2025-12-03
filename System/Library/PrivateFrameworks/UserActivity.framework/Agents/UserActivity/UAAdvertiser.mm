@interface UAAdvertiser
- (BOOL)terminate;
- (UAAdvertiser)initWithManager:(id)manager name:(id)name;
@end

@implementation UAAdvertiser

- (UAAdvertiser)initWithManager:(id)manager name:(id)name
{
  v5.receiver = self;
  v5.super_class = UAAdvertiser;
  return [(UACornerActionManagerHandler *)&v5 initWithManager:manager name:name];
}

- (BOOL)terminate
{
  v6.receiver = self;
  v6.super_class = UAAdvertiser;
  terminate = [(UACornerActionManagerHandler *)&v6 terminate];
  if (terminate)
  {
    manager = [(UACornerActionManagerHandler *)self manager];
    [manager removeAdvertiser:self];
  }

  return terminate;
}

@end