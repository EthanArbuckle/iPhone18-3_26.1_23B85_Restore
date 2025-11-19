@interface TVRUIShortcutItem
+ (id)identifierForKind:(unint64_t)a3;
+ (id)imageForKind:(unint64_t)a3;
+ (id)imageNameForKind:(unint64_t)a3;
+ (id)shortcutItemForKind:(unint64_t)a3;
+ (id)titleForKind:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (TVRUIShortcutItem)initWithKind:(unint64_t)a3 identifier:(id)a4 title:(id)a5 image:(id)a6;
- (unint64_t)hash;
- (unint64_t)playerCommand;
@end

@implementation TVRUIShortcutItem

- (TVRUIShortcutItem)initWithKind:(unint64_t)a3 identifier:(id)a4 title:(id)a5 image:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = TVRUIShortcutItem;
  v14 = [(TVRUIShortcutItem *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_kind = a3;
    objc_storeStrong(&v14->_identifier, a4);
    objc_storeStrong(&v15->_title, a5);
    objc_storeStrong(&v15->_image, a6);
  }

  return v15;
}

+ (id)shortcutItemForKind:(unint64_t)a3
{
  v5 = [a1 identifierForKind:?];
  v6 = [a1 titleForKind:a3];
  v7 = [a1 imageForKind:a3];
  v8 = [[a1 alloc] initWithKind:a3 identifier:v5 title:v6 image:v7];

  return v8;
}

- (unint64_t)playerCommand
{
  v2 = [(TVRUIShortcutItem *)self kind];
  if (v2 > 8)
  {
    return 12;
  }

  else
  {
    return qword_26D0D2360[v2];
  }
}

+ (id)titleForKind:(unint64_t)a3
{
  if (a3 > 8)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_279D87A00[a3];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_287E6AEF8 table:@"Localizable"];
  }

  return v5;
}

+ (id)imageForKind:(unint64_t)a3
{
  v3 = [a1 imageNameForKind:a3];
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

+ (id)imageNameForKind:(unint64_t)a3
{
  if (a3 > 8)
  {
    return 0;
  }

  else
  {
    return off_279D87A48[a3];
  }
}

+ (id)identifierForKind:(unint64_t)a3
{
  if (a3 > 8)
  {
    return 0;
  }

  else
  {
    return off_279D87A90[a3];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = -[TVRUIShortcutItem kind](self, "kind"), v7 == [v6 kind]) && (-[TVRUIShortcutItem identifier](self, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v8, v10) && (-[TVRUIShortcutItem title](self, "title"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "title"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToString:", v12), v12, v11, v13))
    {
      v14 = [(TVRUIShortcutItem *)self image];
      v15 = [v6 image];

      v16 = (v14 == 0) ^ (v15 != 0);
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
  v3 = [(TVRUIShortcutItem *)self kind];
  v4 = [(TVRUIShortcutItem *)self identifier];
  v5 = [v4 hash] + v3;
  v6 = [(TVRUIShortcutItem *)self title];
  v7 = [v6 hash];
  v8 = [(TVRUIShortcutItem *)self image];
  v9 = v5 + v7 + [v8 hash];
  v10 = [(TVRUIShortcutItem *)self title];
  v11 = [v10 hash];

  return v9 + v11;
}

@end