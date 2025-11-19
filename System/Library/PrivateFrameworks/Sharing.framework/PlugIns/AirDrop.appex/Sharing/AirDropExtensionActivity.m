@interface AirDropExtensionActivity
- (AirDropExtensionActivity)init;
- (CGSize)_thumbnailSize;
- (id)itemDataRequest;
- (void)_activateSecurityScopedResourcesForExtensionItems:(id)a3;
- (void)dealloc;
- (void)performActivity;
- (void)prepareWithActivityExtensionItemData:(id)a3;
- (void)startAccessingSecurityScopedResourcesInContext:(id)a3;
- (void)stopAccessingSecurityScopedResources;
@end

@implementation AirDropExtensionActivity

- (AirDropExtensionActivity)init
{
  v6.receiver = self;
  v6.super_class = AirDropExtensionActivity;
  v2 = [(AirDropExtensionActivity *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    activeSecurityContexts = v2->_activeSecurityContexts;
    v2->_activeSecurityContexts = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(AirDropExtensionActivity *)self stopAccessingSecurityScopedResources];
  v3.receiver = self;
  v3.super_class = AirDropExtensionActivity;
  [(AirDropExtensionActivity *)&v3 dealloc];
}

- (void)startAccessingSecurityScopedResourcesInContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    [v4 activate];
    v5 = self->_activeSecurityContexts;
    objc_sync_enter(v5);
    [(NSMutableArray *)self->_activeSecurityContexts addObject:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (void)stopAccessingSecurityScopedResources
{
  v3 = self->_activeSecurityContexts;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_activeSecurityContexts copy];
  [(NSMutableArray *)self->_activeSecurityContexts removeAllObjects];
  objc_sync_exit(v3);

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) deactivate];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)itemDataRequest
{
  v3 = [(AirDropExtensionActivity *)self ss_activityTypeToReportToHost];
  v4 = [(AirDropExtensionActivity *)self ss_activitySpecificExtensionItemDataRequestInfo];
  v5 = [UISUIActivityExtensionItemDataRequest requestForActivity:self activityType:v3 activitySpecificMetadata:v4];

  return v5;
}

- (void)prepareWithActivityExtensionItemData:(id)a3
{
  v4 = a3;
  v5 = [(AirDropExtensionActivity *)self airDropViewController];
  v6 = [v4 extensionItems];
  [(AirDropExtensionActivity *)self _activateSecurityScopedResourcesForExtensionItems:v6];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B6DC;
  v9[3] = &unk_10002D340;
  v7 = v4;
  v10 = v7;
  v11 = self;
  v13 = v14;
  v8 = v5;
  v12 = v8;
  sub_10000B53C(v6, v9);

  _Block_object_dispose(v14, 8);
}

- (void)_activateSecurityScopedResourcesForExtensionItems:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v13 = NSItemProviderOptionsDispatchModeKey;
  v14 = NSItemProviderOptionsDispatchModeAsynchronous;
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B9C8;
  v8[3] = &unk_10002D390;
  v6 = dispatch_group_create();
  v9 = v6;
  v7 = v5;
  v10 = v7;
  objc_copyWeak(&v11, &location);
  sub_10000B53C(v4, v8);
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

- (void)performActivity
{
  v3 = [(AirDropExtensionActivity *)self airdropCompletion];

  if (v3)
  {
    v4 = [(AirDropExtensionActivity *)self airdropCompletion];
    v4[2]();

    [(AirDropExtensionActivity *)self setAirdropCompletion:0];
  }
}

- (CGSize)_thumbnailSize
{
  +[UIAirDropActivity _thumbnailSize];
  result.height = v3;
  result.width = v2;
  return result;
}

@end