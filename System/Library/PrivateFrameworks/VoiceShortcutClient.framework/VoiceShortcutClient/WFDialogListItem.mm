@interface WFDialogListItem
- (BOOL)isEqual:(id)a3;
- (WFDialogListItem)initWithCoder:(id)a3;
- (WFDialogListItem)initWithTitle:(id)a3 subtitle:(id)a4 identifier:(id)a5 image:(id)a6 selected:(BOOL)a7 hideSubtitle:(BOOL)a8 encodedTypedValue:(id)a9 serializedPossibleState:(id)a10;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFDialogListItem

- (WFDialogListItem)initWithCoder:(id)a3
{
  v3 = a3;
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  v18 = [v3 decodeBoolForKey:@"selected"];
  v17 = [v3 decodeBoolForKey:@"hideSubtitle"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"encodedTypedValue"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"serializedPossibleState"];

  v15 = [(WFDialogListItem *)self initWithTitle:v19 subtitle:v4 identifier:v20 image:v5 selected:v18 hideSubtitle:v17 encodedTypedValue:v6 serializedPossibleState:v14];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFDialogListItem *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(WFDialogListItem *)self title];
  [v4 encodeObject:v6 forKey:@"title"];

  v7 = [(WFDialogListItem *)self subtitle];
  [v4 encodeObject:v7 forKey:@"subtitle"];

  v8 = [(WFDialogListItem *)self image];
  [v4 encodeObject:v8 forKey:@"image"];

  [v4 encodeBool:-[WFDialogListItem selected](self forKey:{"selected"), @"selected"}];
  [v4 encodeBool:-[WFDialogListItem hideSubtitle](self forKey:{"hideSubtitle"), @"hideSubtitle"}];
  v9 = [(WFDialogListItem *)self encodedTypedValue];
  [v4 encodeObject:v9 forKey:@"encodedTypedValue"];

  v10 = [(WFDialogListItem *)self serializedPossibleState];
  [v4 encodeObject:v10 forKey:@"serializedPossibleState"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WFDialogListItem *)self identifier];
    v6 = [v4 identifier];
    v7 = v5;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v7 && v8)
      {
        v10 = [v7 isEqualToString:v8];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(WFDialogListItem *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (WFDialogListItem)initWithTitle:(id)a3 subtitle:(id)a4 identifier:(id)a5 image:(id)a6 selected:(BOOL)a7 hideSubtitle:(BOOL)a8 encodedTypedValue:(id)a9 serializedPossibleState:(id)a10
{
  v15 = a3;
  v30 = a4;
  v16 = a5;
  v29 = a6;
  v17 = a9;
  v18 = a10;
  v31.receiver = self;
  v31.super_class = WFDialogListItem;
  v19 = [(WFDialogListItem *)&v31 init];
  if (v19)
  {
    v26 = v15;
    if (v16)
    {
      v20 = v16;
      identifier = v19->_identifier;
      v19->_identifier = v20;
    }

    else
    {
      identifier = [MEMORY[0x1E696AFB0] UUID];
      v22 = [identifier UUIDString];
      v23 = v19->_identifier;
      v19->_identifier = v22;
    }

    objc_storeStrong(&v19->_title, a3);
    objc_storeStrong(&v19->_subtitle, a4);
    objc_storeStrong(&v19->_image, a6);
    v19->_selected = a7;
    v19->_hideSubtitle = a8;
    objc_storeStrong(&v19->_encodedTypedValue, a9);
    objc_storeStrong(&v19->_serializedPossibleState, a10);
    v24 = v19;
    v15 = v26;
  }

  return v19;
}

@end