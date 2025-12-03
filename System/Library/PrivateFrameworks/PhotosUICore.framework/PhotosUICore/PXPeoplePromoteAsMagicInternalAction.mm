@interface PXPeoplePromoteAsMagicInternalAction
- (PXPeoplePromoteAsMagicInternalAction)initWithLocalIdentifier:(id)identifier photoLibrary:(id)library;
- (PXPeoplePromoteAsMagicInternalAction)initWithPhotoLibrary:(id)library;
- (void)performAction:(id)action;
@end

@implementation PXPeoplePromoteAsMagicInternalAction

- (PXPeoplePromoteAsMagicInternalAction)initWithLocalIdentifier:(id)identifier photoLibrary:(id)library
{
  ObjectType = swift_getObjectType();
  v7 = sub_1A524C674();
  v8 = (self + OBJC_IVAR___PXPeoplePromoteAsMagicInternalAction_localIdentifier);
  *v8 = v7;
  v8[1] = v9;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(PXPhotosAction *)&v11 initWithPhotoLibrary:library];
}

- (void)performAction:(id)action
{
  v4 = _Block_copy(action);
  _Block_copy(v4);
  sub_1A4982374(self, v4);
}

- (PXPeoplePromoteAsMagicInternalAction)initWithPhotoLibrary:(id)library
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end