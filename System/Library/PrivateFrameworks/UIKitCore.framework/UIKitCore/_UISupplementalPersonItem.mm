@interface _UISupplementalPersonItem
+ (id)new;
- (_UISupplementalPersonItem)init;
- (_UISupplementalPersonItem)initWithCoder:(id)coder;
- (_UISupplementalPersonItem)initWithContact:(id)contact;
- (_UISupplementalPersonItem)initWithContact:(id)contact icon:(id)icon;
- (_UISupplementalPersonItem)initWithPersonNameComponents:(id)components;
- (_UISupplementalPersonItem)initWithPersonNameComponents:(id)components icon:(id)icon;
- (_UISupplementalPersonItem)initWithTISupplementalPersonItem:(id)item icon:(id)icon;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UISupplementalPersonItem

+ (id)new
{
  selfCopy = self;

  return [selfCopy init];
}

- (_UISupplementalPersonItem)init
{
  v3 = objc_opt_new();
  v4 = [(_UISupplementalPersonItem *)self initWithTISupplementalPersonItem:v3 icon:0];

  return v4;
}

- (_UISupplementalPersonItem)initWithTISupplementalPersonItem:(id)item icon:(id)icon
{
  itemCopy = item;
  iconCopy = icon;
  v14.receiver = self;
  v14.super_class = _UISupplementalPersonItem;
  _init = [(_UISupplementalItem *)&v14 _init];
  v10 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, item);
    v11 = [iconCopy copy];
    [(_UISupplementalItem *)v10 setIcon:v11];

    v12 = v10;
  }

  return v10;
}

- (_UISupplementalPersonItem)initWithContact:(id)contact
{
  v4 = MEMORY[0x1E69D96C8];
  contactCopy = contact;
  v6 = [[v4 alloc] initWithContact:contactCopy];

  v7 = [(_UISupplementalPersonItem *)self initWithTISupplementalPersonItem:v6 icon:0];
  return v7;
}

- (_UISupplementalPersonItem)initWithContact:(id)contact icon:(id)icon
{
  v6 = MEMORY[0x1E69D96C8];
  iconCopy = icon;
  contactCopy = contact;
  v9 = [[v6 alloc] initWithContact:contactCopy];

  v10 = [(_UISupplementalPersonItem *)self initWithTISupplementalPersonItem:v9 icon:iconCopy];
  return v10;
}

- (_UISupplementalPersonItem)initWithPersonNameComponents:(id)components
{
  v4 = MEMORY[0x1E69D96C8];
  componentsCopy = components;
  v6 = [[v4 alloc] initWithPersonNameComponents:componentsCopy];

  v7 = [(_UISupplementalPersonItem *)self initWithTISupplementalPersonItem:v6 icon:0];
  return v7;
}

- (_UISupplementalPersonItem)initWithPersonNameComponents:(id)components icon:(id)icon
{
  v6 = MEMORY[0x1E69D96C8];
  iconCopy = icon;
  componentsCopy = components;
  v9 = [[v6 alloc] initWithPersonNameComponents:componentsCopy];

  v10 = [(_UISupplementalPersonItem *)self initWithTISupplementalPersonItem:v9 icon:iconCopy];
  return v10;
}

- (_UISupplementalPersonItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _UISupplementalPersonItem;
  v5 = [(_UISupplementalItem *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unwrappedObject"];
    internal = v5->super._internal;
    v5->super._internal = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UISupplementalPersonItem;
  coderCopy = coder;
  [(_UISupplementalItem *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->super._internal forKey:{@"unwrappedObject", v5.receiver, v5.super_class}];
}

- (id)description
{
  v13[14] = *MEMORY[0x1E69E9840];
  v13[0] = "givenName";
  v13[1] = [(_UISupplementalPersonItem *)self givenName];
  v13[2] = "phoneticGivenName";
  v13[3] = [(_UISupplementalPersonItem *)self phoneticGivenName];
  v13[4] = "familyName";
  v13[5] = [(_UISupplementalPersonItem *)self familyName];
  v13[6] = "phoneticFamilyName";
  v13[7] = [(_UISupplementalPersonItem *)self phoneticFamilyName];
  v13[8] = "organizationName";
  v13[9] = [(_UISupplementalPersonItem *)self organizationName];
  v13[10] = "phoneticOrganizationName";
  v13[11] = [(_UISupplementalPersonItem *)self phoneticOrganizationName];
  v13[12] = "nickname";
  v13[13] = [(_UISupplementalPersonItem *)self nickname];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:7];
  for (i = 0; i != 14; i += 2)
  {
    v6 = v13[i];
    v5 = v13[i + 1];
    if ([v5 length])
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s=%@", v6, v5];
      [v3 addObject:v7];
    }
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = [v3 componentsJoinedByString:{@", "}];
  v11 = [v8 stringWithFormat:@"<%@: %p %@, identifier=%llu>", v9, self, v10, objc_msgSend(self->super._internal, "identifier")];;

  return v11;
}

@end