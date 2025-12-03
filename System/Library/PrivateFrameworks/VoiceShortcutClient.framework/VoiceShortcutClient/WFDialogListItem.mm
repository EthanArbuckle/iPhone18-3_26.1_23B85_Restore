@interface WFDialogListItem
- (BOOL)isEqual:(id)equal;
- (WFDialogListItem)initWithCoder:(id)coder;
- (WFDialogListItem)initWithTitle:(id)title subtitle:(id)subtitle identifier:(id)identifier image:(id)image selected:(BOOL)selected hideSubtitle:(BOOL)hideSubtitle encodedTypedValue:(id)value serializedPossibleState:(id)self0;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFDialogListItem

- (WFDialogListItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  v18 = [coderCopy decodeBoolForKey:@"selected"];
  v17 = [coderCopy decodeBoolForKey:@"hideSubtitle"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encodedTypedValue"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"serializedPossibleState"];

  v15 = [(WFDialogListItem *)self initWithTitle:v19 subtitle:v4 identifier:v20 image:v5 selected:v18 hideSubtitle:v17 encodedTypedValue:v6 serializedPossibleState:v14];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFDialogListItem *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  title = [(WFDialogListItem *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  subtitle = [(WFDialogListItem *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  image = [(WFDialogListItem *)self image];
  [coderCopy encodeObject:image forKey:@"image"];

  [coderCopy encodeBool:-[WFDialogListItem selected](self forKey:{"selected"), @"selected"}];
  [coderCopy encodeBool:-[WFDialogListItem hideSubtitle](self forKey:{"hideSubtitle"), @"hideSubtitle"}];
  encodedTypedValue = [(WFDialogListItem *)self encodedTypedValue];
  [coderCopy encodeObject:encodedTypedValue forKey:@"encodedTypedValue"];

  serializedPossibleState = [(WFDialogListItem *)self serializedPossibleState];
  [coderCopy encodeObject:serializedPossibleState forKey:@"serializedPossibleState"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(WFDialogListItem *)self identifier];
    identifier2 = [equalCopy identifier];
    v7 = identifier;
    v8 = identifier2;
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
  identifier = [(WFDialogListItem *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (WFDialogListItem)initWithTitle:(id)title subtitle:(id)subtitle identifier:(id)identifier image:(id)image selected:(BOOL)selected hideSubtitle:(BOOL)hideSubtitle encodedTypedValue:(id)value serializedPossibleState:(id)self0
{
  titleCopy = title;
  subtitleCopy = subtitle;
  identifierCopy = identifier;
  imageCopy = image;
  valueCopy = value;
  stateCopy = state;
  v31.receiver = self;
  v31.super_class = WFDialogListItem;
  v19 = [(WFDialogListItem *)&v31 init];
  if (v19)
  {
    v26 = titleCopy;
    if (identifierCopy)
    {
      v20 = identifierCopy;
      identifier = v19->_identifier;
      v19->_identifier = v20;
    }

    else
    {
      identifier = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [identifier UUIDString];
      v23 = v19->_identifier;
      v19->_identifier = uUIDString;
    }

    objc_storeStrong(&v19->_title, title);
    objc_storeStrong(&v19->_subtitle, subtitle);
    objc_storeStrong(&v19->_image, image);
    v19->_selected = selected;
    v19->_hideSubtitle = hideSubtitle;
    objc_storeStrong(&v19->_encodedTypedValue, value);
    objc_storeStrong(&v19->_serializedPossibleState, state);
    v24 = v19;
    titleCopy = v26;
  }

  return v19;
}

@end