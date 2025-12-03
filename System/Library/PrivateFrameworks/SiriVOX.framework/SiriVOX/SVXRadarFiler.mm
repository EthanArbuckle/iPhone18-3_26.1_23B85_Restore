@interface SVXRadarFiler
- (SVXRadarFiler)init;
@end

@implementation SVXRadarFiler

- (SVXRadarFiler)init
{
  v6.receiver = self;
  v6.super_class = SVXRadarFiler;
  v2 = [(SVXRadarFiler *)&v6 init];
  if (v2)
  {
    shared = [getTapToRadarServiceClass() shared];
    ttrService = v2->_ttrService;
    v2->_ttrService = shared;
  }

  return v2;
}

@end