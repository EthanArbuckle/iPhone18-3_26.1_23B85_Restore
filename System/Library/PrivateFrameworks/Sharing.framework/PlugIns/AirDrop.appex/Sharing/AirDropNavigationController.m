@interface AirDropNavigationController
- (_TtC7AirDrop27AirDropNavigationController)initWithCoder:(id)a3;
- (_TtC7AirDrop27AirDropNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC7AirDrop27AirDropNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7AirDrop27AirDropNavigationController)initWithRootViewController:(id)a3;
- (void)airDropViewServiceRequestingSendingAppBundleIdentifierWithCompletionHandler:(id)a3;
- (void)airDropViewServiceRequestingSharedItemsWithDataRequest:(id)a3 completionHandler:(id)a4;
- (void)airDropViewServiceWillStartTransferToRecipient:(id)a3;
- (void)beginRequestWithExtensionContext:(id)a3;
@end

@implementation AirDropNavigationController

- (void)beginRequestWithExtensionContext:(id)a3
{
  v4 = a3;
  v5 = self;
  AirDropNavigationController.beginRequest(with:)(v4);
}

- (_TtC7AirDrop27AirDropNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  if (!a3)
  {
    ObjCClassMetadata = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return AirDropNavigationController.init(navigationBarClass:toolbarClass:)(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return AirDropNavigationController.init(navigationBarClass:toolbarClass:)(ObjCClassMetadata, v6);
}

- (_TtC7AirDrop27AirDropNavigationController)initWithRootViewController:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7AirDrop27AirDropNavigationController_AirDropNoContentViewKey);
  *v6 = 0xD000000000000011;
  v6[1] = 0x8000000100027AB0;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(AirDropNavigationController *)&v8 initWithRootViewController:a3];
}

- (_TtC7AirDrop27AirDropNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (!a3)
  {
    v12 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7AirDrop27AirDropNavigationController_AirDropNoContentViewKey);
    *v12 = 0xD000000000000011;
    v12[1] = 0x8000000100027AB0;
    goto LABEL_5;
  }

  sub_10001E130();
  v8 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7AirDrop27AirDropNavigationController_AirDropNoContentViewKey);
  *v8 = 0xD000000000000011;
  v8[1] = 0x8000000100027AB0;
  if (!v9)
  {
LABEL_5:
    v13 = a4;
    v11 = 0;
    goto LABEL_6;
  }

  v10 = a4;
  v11 = sub_10001E120();

LABEL_6:
  v16.receiver = self;
  v16.super_class = ObjectType;
  v14 = [(AirDropNavigationController *)&v16 initWithNibName:v11 bundle:a4];

  return v14;
}

- (_TtC7AirDrop27AirDropNavigationController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7AirDrop27AirDropNavigationController_AirDropNoContentViewKey);
  *v6 = 0xD000000000000011;
  v6[1] = 0x8000000100027AB0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(AirDropNavigationController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

- (void)airDropViewServiceWillStartTransferToRecipient:(id)a3
{
  v5 = a3;
  v6 = self;
  AirDropNavigationController.airDropViewServiceWillStartTransfer(to:)(a3);
}

- (void)airDropViewServiceRequestingSharedItemsWithDataRequest:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10001A6CC;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  AirDropNavigationController.airDropViewServiceRequestingSharedItems(with:completionHandler:)(a3, v6, v7);
  sub_10001A67C(v6);
}

- (void)airDropViewServiceRequestingSendingAppBundleIdentifierWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_10001A6C4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  AirDropNavigationController.airDropViewServiceRequestingSendingAppBundleIdentifier(completionHandler:)(v7, v6);
  sub_10001A67C(v7);
}

@end