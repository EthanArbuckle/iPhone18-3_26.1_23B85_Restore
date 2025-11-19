@interface UAReceiver
- (BOOL)terminate;
- (UAReceiver)initWithManager:(id)a3 name:(id)a4;
@end

@implementation UAReceiver

- (UAReceiver)initWithManager:(id)a3 name:(id)a4
{
  v5.receiver = self;
  v5.super_class = UAReceiver;
  return [(UACornerActionManagerHandler *)&v5 initWithManager:a3 name:a4];
}

- (BOOL)terminate
{
  v6.receiver = self;
  v6.super_class = UAReceiver;
  v3 = [(UACornerActionManagerHandler *)&v6 terminate];
  if (v3)
  {
    v4 = [(UACornerActionManagerHandler *)self manager];
    [v4 removeReceiver:self];
  }

  return v3;
}

@end