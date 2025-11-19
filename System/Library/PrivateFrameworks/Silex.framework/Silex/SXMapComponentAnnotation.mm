@interface SXMapComponentAnnotation
- (SXMapComponentAnnotation)initWithMapItem:(id)a3;
@end

@implementation SXMapComponentAnnotation

- (SXMapComponentAnnotation)initWithMapItem:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SXMapComponentAnnotation;
  v6 = [(MKPointAnnotation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
    [(MKPointAnnotation *)v7 setRepresentation:2];
    [v5 coordinate];
    [(MKPointAnnotation *)v7 setCoordinate:?];
    v8 = [v5 label];
    [(MKShape *)v7 setTitle:v8];
  }

  return v7;
}

@end