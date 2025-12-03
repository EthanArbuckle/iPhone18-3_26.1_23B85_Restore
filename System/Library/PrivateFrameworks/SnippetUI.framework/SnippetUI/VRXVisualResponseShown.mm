@interface VRXVisualResponseShown
- (VRXVisualResponseShown)initWithCardData:(id)data responseViewId:(id)id;
@end

@implementation VRXVisualResponseShown

- (VRXVisualResponseShown)initWithCardData:(id)data responseViewId:(id)id
{
  dataCopy = data;
  idCopy = id;
  v12.receiver = self;
  v12.super_class = VRXVisualResponseShown;
  v8 = [(VRXVisualResponseShown *)&v12 init];
  if (v8)
  {
    v9 = [[_TtC9SnippetUI21RFVisualResponseShown alloc] initWithCardData:dataCopy responseViewId:idCopy];
    visualResponseShown = v8->_visualResponseShown;
    v8->_visualResponseShown = v9;
  }

  return v8;
}

@end