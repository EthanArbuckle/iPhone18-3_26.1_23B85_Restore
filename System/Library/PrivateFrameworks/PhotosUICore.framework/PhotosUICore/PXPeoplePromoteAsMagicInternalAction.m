@interface PXPeoplePromoteAsMagicInternalAction
- (PXPeoplePromoteAsMagicInternalAction)initWithLocalIdentifier:(id)a3 photoLibrary:(id)a4;
- (PXPeoplePromoteAsMagicInternalAction)initWithPhotoLibrary:(id)a3;
- (void)performAction:(id)a3;
@end

@implementation PXPeoplePromoteAsMagicInternalAction

- (PXPeoplePromoteAsMagicInternalAction)initWithLocalIdentifier:(id)a3 photoLibrary:(id)a4
{
  ObjectType = swift_getObjectType();
  v7 = sub_1A524C674();
  v8 = (self + OBJC_IVAR___PXPeoplePromoteAsMagicInternalAction_localIdentifier);
  *v8 = v7;
  v8[1] = v9;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(PXPhotosAction *)&v11 initWithPhotoLibrary:a4];
}

- (void)performAction:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  sub_1A4982374(self, v4);
}

- (PXPeoplePromoteAsMagicInternalAction)initWithPhotoLibrary:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end