@interface WLUIClient
- (WLUIClient)initWithHostname:(id)a3 brand:(id)a4 model:(id)a5 name:(id)a6;
@end

@implementation WLUIClient

- (WLUIClient)initWithHostname:(id)a3 brand:(id)a4 model:(id)a5 name:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = WLUIClient;
  v14 = [(WLUIClient *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(WLUIClient *)v14 setHostname:v10];
    [(WLUIClient *)v15 setBrand:v11];
    [(WLUIClient *)v15 setModel:v12];
    [(WLUIClient *)v15 setName:v13];
  }

  return v15;
}

@end