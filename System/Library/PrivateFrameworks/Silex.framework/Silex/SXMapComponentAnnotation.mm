@interface SXMapComponentAnnotation
- (SXMapComponentAnnotation)initWithMapItem:(id)item;
@end

@implementation SXMapComponentAnnotation

- (SXMapComponentAnnotation)initWithMapItem:(id)item
{
  itemCopy = item;
  v10.receiver = self;
  v10.super_class = SXMapComponentAnnotation;
  v6 = [(MKPointAnnotation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
    [(MKPointAnnotation *)v7 setRepresentation:2];
    [itemCopy coordinate];
    [(MKPointAnnotation *)v7 setCoordinate:?];
    label = [itemCopy label];
    [(MKShape *)v7 setTitle:label];
  }

  return v7;
}

@end