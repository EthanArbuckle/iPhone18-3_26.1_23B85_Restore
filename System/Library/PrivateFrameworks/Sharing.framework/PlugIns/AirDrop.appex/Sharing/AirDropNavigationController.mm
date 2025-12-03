@interface AirDropNavigationController
- (_TtC7AirDrop27AirDropNavigationController)initWithCoder:(id)coder;
- (_TtC7AirDrop27AirDropNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC7AirDrop27AirDropNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7AirDrop27AirDropNavigationController)initWithRootViewController:(id)controller;
- (void)airDropViewServiceRequestingSendingAppBundleIdentifierWithCompletionHandler:(id)handler;
- (void)airDropViewServiceRequestingSharedItemsWithDataRequest:(id)request completionHandler:(id)handler;
- (void)airDropViewServiceWillStartTransferToRecipient:(id)recipient;
- (void)beginRequestWithExtensionContext:(id)context;
@end

@implementation AirDropNavigationController

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  AirDropNavigationController.beginRequest(with:)(contextCopy);
}

- (_TtC7AirDrop27AirDropNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  if (!class)
  {
    ObjCClassMetadata = 0;
    if (toolbarClass)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return AirDropNavigationController.init(navigationBarClass:toolbarClass:)(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!toolbarClass)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return AirDropNavigationController.init(navigationBarClass:toolbarClass:)(ObjCClassMetadata, v6);
}

- (_TtC7AirDrop27AirDropNavigationController)initWithRootViewController:(id)controller
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7AirDrop27AirDropNavigationController_AirDropNoContentViewKey);
  *v6 = 0xD000000000000011;
  v6[1] = 0x8000000100027AB0;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(AirDropNavigationController *)&v8 initWithRootViewController:controller];
}

- (_TtC7AirDrop27AirDropNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (!name)
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
    bundleCopy = bundle;
    v11 = 0;
    goto LABEL_6;
  }

  bundleCopy2 = bundle;
  v11 = sub_10001E120();

LABEL_6:
  v16.receiver = self;
  v16.super_class = ObjectType;
  v14 = [(AirDropNavigationController *)&v16 initWithNibName:v11 bundle:bundle];

  return v14;
}

- (_TtC7AirDrop27AirDropNavigationController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7AirDrop27AirDropNavigationController_AirDropNoContentViewKey);
  *v6 = 0xD000000000000011;
  v6[1] = 0x8000000100027AB0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(AirDropNavigationController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

- (void)airDropViewServiceWillStartTransferToRecipient:(id)recipient
{
  recipientCopy = recipient;
  selfCopy = self;
  AirDropNavigationController.airDropViewServiceWillStartTransfer(to:)(recipient);
}

- (void)airDropViewServiceRequestingSharedItemsWithDataRequest:(id)request completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
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

  requestCopy = request;
  selfCopy = self;
  AirDropNavigationController.airDropViewServiceRequestingSharedItems(with:completionHandler:)(request, v6, v7);
  sub_10001A67C(v6);
}

- (void)airDropViewServiceRequestingSendingAppBundleIdentifierWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
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

  selfCopy = self;
  AirDropNavigationController.airDropViewServiceRequestingSendingAppBundleIdentifier(completionHandler:)(v7, v6);
  sub_10001A67C(v7);
}

@end