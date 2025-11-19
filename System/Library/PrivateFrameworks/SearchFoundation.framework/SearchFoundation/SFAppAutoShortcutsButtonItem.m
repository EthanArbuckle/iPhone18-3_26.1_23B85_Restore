@interface SFAppAutoShortcutsButtonItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFAppAutoShortcutsButtonItem)initWithCoder:(id)a3;
- (SFAppAutoShortcutsButtonItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFAppAutoShortcutsButtonItem

- (SFAppAutoShortcutsButtonItem)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFAppAutoShortcutsButtonItem;
  v5 = [(SFAppAutoShortcutsButtonItem *)&v12 init];
  if (v5)
  {
    v6 = [v4 appAutoShortcutsItem];

    if (v6)
    {
      v7 = [SFAppAutoShortcutsItem alloc];
      v8 = [v4 appAutoShortcutsItem];
      v9 = [(SFAppAutoShortcutsItem *)v7 initWithProtobuf:v8];
      [(SFAppAutoShortcutsButtonItem *)v5 setAppAutoShortcutsItem:v9];
    }

    if ([v4 uniqueId])
    {
      -[SFButtonItem setUniqueId:](v5, "setUniqueId:", [v4 uniqueId]);
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = SFAppAutoShortcutsButtonItem;
  v3 = [(SFButtonItem *)&v8 hash];
  v4 = [(SFAppAutoShortcutsButtonItem *)self appAutoShortcutsItem];
  v5 = [v4 hash];
  v6 = v5 ^ [(SFButtonItem *)self uniqueId];

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFAppAutoShortcutsButtonItem *)v6 isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFAppAutoShortcutsButtonItem;
      if ([(SFButtonItem *)&v14 isEqual:v6])
      {
        v7 = v6;
        v8 = [(SFAppAutoShortcutsButtonItem *)self appAutoShortcutsItem];
        v9 = [(SFAppAutoShortcutsButtonItem *)v7 appAutoShortcutsItem];
        if ((v8 != 0) == (v9 == 0))
        {
          v11 = 0;
LABEL_14:

          goto LABEL_15;
        }

        v10 = [(SFAppAutoShortcutsButtonItem *)self appAutoShortcutsItem];
        if (!v10 || (-[SFAppAutoShortcutsButtonItem appAutoShortcutsItem](self, "appAutoShortcutsItem"), v3 = objc_claimAutoreleasedReturnValue(), -[SFAppAutoShortcutsButtonItem appAutoShortcutsItem](v7, "appAutoShortcutsItem"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          v12 = [(SFButtonItem *)self uniqueId];
          v11 = v12 == [(SFButtonItem *)v7 uniqueId];
          if (!v10)
          {
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_13;
      }
    }

    v11 = 0;
  }

LABEL_15:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFAppAutoShortcutsButtonItem;
  v4 = [(SFButtonItem *)&v8 copyWithZone:a3];
  v5 = [(SFAppAutoShortcutsButtonItem *)self appAutoShortcutsItem];
  v6 = [v5 copy];
  [v4 setAppAutoShortcutsItem:v6];

  [v4 setUniqueId:{-[SFButtonItem uniqueId](self, "uniqueId")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBAppAutoShortcutsButtonItem alloc] initWithFacade:self];
  v3 = [(_SFPBAppAutoShortcutsButtonItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBAppAutoShortcutsButtonItem alloc] initWithFacade:self];
  v3 = [(_SFPBAppAutoShortcutsButtonItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBAppAutoShortcutsButtonItem alloc] initWithFacade:self];
  v5 = [(_SFPBAppAutoShortcutsButtonItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFAppAutoShortcutsButtonItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBAppAutoShortcutsButtonItem alloc] initWithData:v5];
  v7 = [(SFAppAutoShortcutsButtonItem *)self initWithProtobuf:v6];

  return v7;
}

@end