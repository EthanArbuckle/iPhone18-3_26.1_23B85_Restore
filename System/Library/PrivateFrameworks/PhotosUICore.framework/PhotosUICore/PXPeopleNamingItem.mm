@interface PXPeopleNamingItem
- (CNContact)contact;
- (PHPerson)person;
- (PXPeopleNamingItem)init;
@end

@implementation PXPeopleNamingItem

- (PHPerson)person
{
  if (*(&self->title + OBJC_IVAR___PXPeopleNamingItem_backingObject))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&self->super.isa + OBJC_IVAR___PXPeopleNamingItem_backingObject);
  }

  return v3;
}

- (CNContact)contact
{
  if (*(&self->title + OBJC_IVAR___PXPeopleNamingItem_backingObject) == 2)
  {
    v3 = *(&self->super.isa + OBJC_IVAR___PXPeopleNamingItem_backingObject);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PXPeopleNamingItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end