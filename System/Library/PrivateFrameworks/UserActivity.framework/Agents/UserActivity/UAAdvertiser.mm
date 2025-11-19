@interface UAAdvertiser
- (BOOL)terminate;
- (UAAdvertiser)initWithManager:(id)a3 name:(id)a4;
@end

@implementation UAAdvertiser

- (UAAdvertiser)initWithManager:(id)a3 name:(id)a4
{
  v5.receiver = self;
  v5.super_class = UAAdvertiser;
  return [(UACornerActionManagerHandler *)&v5 initWithManager:a3 name:a4];
}

- (BOOL)terminate
{
  v6.receiver = self;
  v6.super_class = UAAdvertiser;
  v3 = [(UACornerActionManagerHandler *)&v6 terminate];
  if (v3)
  {
    v4 = [(UACornerActionManagerHandler *)self manager];
    [v4 removeAdvertiser:self];
  }

  return v3;
}

@end