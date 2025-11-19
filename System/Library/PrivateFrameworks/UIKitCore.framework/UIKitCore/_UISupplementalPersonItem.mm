@interface _UISupplementalPersonItem
+ (id)new;
- (_UISupplementalPersonItem)init;
- (_UISupplementalPersonItem)initWithCoder:(id)a3;
- (_UISupplementalPersonItem)initWithContact:(id)a3;
- (_UISupplementalPersonItem)initWithContact:(id)a3 icon:(id)a4;
- (_UISupplementalPersonItem)initWithPersonNameComponents:(id)a3;
- (_UISupplementalPersonItem)initWithPersonNameComponents:(id)a3 icon:(id)a4;
- (_UISupplementalPersonItem)initWithTISupplementalPersonItem:(id)a3 icon:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UISupplementalPersonItem

+ (id)new
{
  v2 = a1;

  return [v2 init];
}

- (_UISupplementalPersonItem)init
{
  v3 = objc_opt_new();
  v4 = [(_UISupplementalPersonItem *)self initWithTISupplementalPersonItem:v3 icon:0];

  return v4;
}

- (_UISupplementalPersonItem)initWithTISupplementalPersonItem:(id)a3 icon:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _UISupplementalPersonItem;
  v9 = [(_UISupplementalItem *)&v14 _init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 1, a3);
    v11 = [v8 copy];
    [(_UISupplementalItem *)v10 setIcon:v11];

    v12 = v10;
  }

  return v10;
}

- (_UISupplementalPersonItem)initWithContact:(id)a3
{
  v4 = MEMORY[0x1E69D96C8];
  v5 = a3;
  v6 = [[v4 alloc] initWithContact:v5];

  v7 = [(_UISupplementalPersonItem *)self initWithTISupplementalPersonItem:v6 icon:0];
  return v7;
}

- (_UISupplementalPersonItem)initWithContact:(id)a3 icon:(id)a4
{
  v6 = MEMORY[0x1E69D96C8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithContact:v8];

  v10 = [(_UISupplementalPersonItem *)self initWithTISupplementalPersonItem:v9 icon:v7];
  return v10;
}

- (_UISupplementalPersonItem)initWithPersonNameComponents:(id)a3
{
  v4 = MEMORY[0x1E69D96C8];
  v5 = a3;
  v6 = [[v4 alloc] initWithPersonNameComponents:v5];

  v7 = [(_UISupplementalPersonItem *)self initWithTISupplementalPersonItem:v6 icon:0];
  return v7;
}

- (_UISupplementalPersonItem)initWithPersonNameComponents:(id)a3 icon:(id)a4
{
  v6 = MEMORY[0x1E69D96C8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithPersonNameComponents:v8];

  v10 = [(_UISupplementalPersonItem *)self initWithTISupplementalPersonItem:v9 icon:v7];
  return v10;
}

- (_UISupplementalPersonItem)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UISupplementalPersonItem;
  v5 = [(_UISupplementalItem *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unwrappedObject"];
    internal = v5->super._internal;
    v5->super._internal = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UISupplementalPersonItem;
  v4 = a3;
  [(_UISupplementalItem *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->super._internal forKey:{@"unwrappedObject", v5.receiver, v5.super_class}];
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