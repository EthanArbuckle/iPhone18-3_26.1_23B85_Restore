@interface WLUIClient
- (WLUIClient)initWithHostname:(id)hostname brand:(id)brand model:(id)model name:(id)name;
@end

@implementation WLUIClient

- (WLUIClient)initWithHostname:(id)hostname brand:(id)brand model:(id)model name:(id)name
{
  hostnameCopy = hostname;
  brandCopy = brand;
  modelCopy = model;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = WLUIClient;
  v14 = [(WLUIClient *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(WLUIClient *)v14 setHostname:hostnameCopy];
    [(WLUIClient *)v15 setBrand:brandCopy];
    [(WLUIClient *)v15 setModel:modelCopy];
    [(WLUIClient *)v15 setName:nameCopy];
  }

  return v15;
}

@end