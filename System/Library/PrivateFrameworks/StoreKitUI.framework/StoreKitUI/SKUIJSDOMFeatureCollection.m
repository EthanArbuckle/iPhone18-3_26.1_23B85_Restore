@interface SKUIJSDOMFeatureCollection
- (SKUIJSDOMFeatureCollectionAppBridge)appBridge;
- (void)setEditing:(BOOL)a3 :(id)a4;
@end

@implementation SKUIJSDOMFeatureCollection

- (void)setEditing:(BOOL)a3 :(id)a4
{
  v4 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_appBridge);
  [WeakRetained setEditing:v4 options:v6];
}

- (SKUIJSDOMFeatureCollectionAppBridge)appBridge
{
  WeakRetained = objc_loadWeakRetained(&self->_appBridge);

  return WeakRetained;
}

@end