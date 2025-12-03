@interface TVRUIShortcutItem
+ (id)identifierForKind:(unint64_t)kind;
+ (id)imageForKind:(unint64_t)kind;
+ (id)imageNameForKind:(unint64_t)kind;
+ (id)shortcutItemForKind:(unint64_t)kind;
+ (id)titleForKind:(unint64_t)kind;
- (BOOL)isEqual:(id)equal;
- (TVRUIShortcutItem)initWithKind:(unint64_t)kind identifier:(id)identifier title:(id)title image:(id)image;
- (unint64_t)hash;
- (unint64_t)playerCommand;
@end

@implementation TVRUIShortcutItem

- (TVRUIShortcutItem)initWithKind:(unint64_t)kind identifier:(id)identifier title:(id)title image:(id)image
{
  identifierCopy = identifier;
  titleCopy = title;
  imageCopy = image;
  v17.receiver = self;
  v17.super_class = TVRUIShortcutItem;
  v14 = [(TVRUIShortcutItem *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_kind = kind;
    objc_storeStrong(&v14->_identifier, identifier);
    objc_storeStrong(&v15->_title, title);
    objc_storeStrong(&v15->_image, image);
  }

  return v15;
}

+ (id)shortcutItemForKind:(unint64_t)kind
{
  v5 = [self identifierForKind:?];
  v6 = [self titleForKind:kind];
  v7 = [self imageForKind:kind];
  v8 = [[self alloc] initWithKind:kind identifier:v5 title:v6 image:v7];

  return v8;
}

- (unint64_t)playerCommand
{
  kind = [(TVRUIShortcutItem *)self kind];
  if (kind > 8)
  {
    return 12;
  }

  else
  {
    return qword_26D0D2360[kind];
  }
}

+ (id)titleForKind:(unint64_t)kind
{
  if (kind > 8)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_279D87A00[kind];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_287E6AEF8 table:@"Localizable"];
  }

  return v5;
}

+ (id)imageForKind:(unint64_t)kind
{
  v3 = [self imageNameForKind:kind];
  if (v3)
  {
    v4 = [MEMORY[0x277D755B8] systemImageNamed:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)imageNameForKind:(unint64_t)kind
{
  if (kind > 8)
  {
    return 0;
  }

  else
  {
    return off_279D87A48[kind];
  }
}

+ (id)identifierForKind:(unint64_t)kind
{
  if (kind > 8)
  {
    return 0;
  }

  else
  {
    return off_279D87A90[kind];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = -[TVRUIShortcutItem kind](self, "kind"), v7 == [v6 kind]) && (-[TVRUIShortcutItem identifier](self, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v8, v10) && (-[TVRUIShortcutItem title](self, "title"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "title"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToString:", v12), v12, v11, v13))
    {
      image = [(TVRUIShortcutItem *)self image];
      image2 = [v6 image];

      v16 = (image == 0) ^ (image2 != 0);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  kind = [(TVRUIShortcutItem *)self kind];
  identifier = [(TVRUIShortcutItem *)self identifier];
  v5 = [identifier hash] + kind;
  title = [(TVRUIShortcutItem *)self title];
  v7 = [title hash];
  image = [(TVRUIShortcutItem *)self image];
  v9 = v5 + v7 + [image hash];
  title2 = [(TVRUIShortcutItem *)self title];
  v11 = [title2 hash];

  return v9 + v11;
}

@end