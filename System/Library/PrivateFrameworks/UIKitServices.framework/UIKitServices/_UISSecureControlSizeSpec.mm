@interface _UISSecureControlSizeSpec
+ (id)specWithStyle:(id)style tag:(id)tag;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToStyle:(id)style tag:(id)tag;
- (_UISSecureControlSizeSpec)initWithCategory:(id)category arrangeVertically:(BOOL)vertically accessibilityContrast:(unint64_t)contrast displayScale:(unsigned __int8)scale layoutDirection:(unint64_t)direction legibilityWeight:(unint64_t)weight localization:(id)localization preferredContentSizeCategory:(unint64_t)self0 userInterfaceIdiom:(unint64_t)self1;
- (_UISSecureControlSizeSpec)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UISSecureControlSizeSpec

+ (id)specWithStyle:(id)style tag:(id)tag
{
  tagCopy = tag;
  styleCopy = style;
  v19 = [_UISSecureControlSizeSpec alloc];
  category = [tagCopy category];
  v8 = [tagCopy imagePlacement] == 1 || objc_msgSend(tagCopy, "imagePlacement") == 4;
  v18 = v8;
  accessibilityContrast = [styleCopy accessibilityContrast];
  displayScale = [styleCopy displayScale];
  layoutDirection = [styleCopy layoutDirection];
  legibilityWeight = [styleCopy legibilityWeight];
  localization = [styleCopy localization];
  preferredContentSizeCategory = [styleCopy preferredContentSizeCategory];
  userInterfaceIdiom = [styleCopy userInterfaceIdiom];

  v16 = [(_UISSecureControlSizeSpec *)v19 initWithCategory:category arrangeVertically:v18 accessibilityContrast:accessibilityContrast displayScale:displayScale layoutDirection:layoutDirection legibilityWeight:legibilityWeight localization:localization preferredContentSizeCategory:preferredContentSizeCategory userInterfaceIdiom:userInterfaceIdiom];

  return v16;
}

- (_UISSecureControlSizeSpec)initWithCategory:(id)category arrangeVertically:(BOOL)vertically accessibilityContrast:(unint64_t)contrast displayScale:(unsigned __int8)scale layoutDirection:(unint64_t)direction legibilityWeight:(unint64_t)weight localization:(id)localization preferredContentSizeCategory:(unint64_t)self0 userInterfaceIdiom:(unint64_t)self1
{
  weightCopy = weight;
  directionCopy = direction;
  contrastCopy = contrast;
  verticallyCopy = vertically;
  categoryCopy = category;
  localizationCopy = localization;
  v23.receiver = self;
  v23.super_class = _UISSecureControlSizeSpec;
  v20 = [(_UISSecureControlSizeSpec *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_category, category);
    objc_storeStrong(&v21->_localization, localization);
    v21->_fields.all = verticallyCopy & 0xC001 | (2 * (contrastCopy & 1)) & 3 | (4 * (scale & 7)) & 0x1F | (32 * (directionCopy & 1)) & 0x3F | ((weightCopy & 1) << 6) & 0x7F | ((sizeCategory & 0xF) << 7) & 0xC7FF | ((idiom & 7) << 11) | v21->_fields.all & 0xC000;
  }

  return v21;
}

- (_UISSecureControlSizeSpec)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _UISSecureControlSizeSpec;
  v5 = [(_UISSecureControlSizeSpec *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    category = v5->_category;
    v5->_category = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localization"];
    localization = v5->_localization;
    v5->_localization = v8;

    v5->_fields.all = [coderCopy decodeInt32ForKey:@"fieldsAll"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  category = self->_category;
  coderCopy = coder;
  [coderCopy encodeObject:category forKey:@"category"];
  [coderCopy encodeObject:self->_localization forKey:@"localization"];
  [coderCopy encodeInt32:self->_fields.all forKey:@"fieldsAll"];
}

- (unint64_t)hash
{
  v3 = +[_UISSecureControlSizeSpec hash];
  v4 = [(_UISSecureControlCategory *)self->_category hash];
  return v4 ^ [(NSString *)self->_localization hash]^ v3 ^ self->_fields.all;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && ((category = self->_category, category == equalCopy[3]) || [(_UISSecureControlCategory *)category isEqual:?]) && ((localization = self->_localization, localization == equalCopy[1]) || [(NSString *)localization isEqual:?]) && self->_fields.all == *(equalCopy + 8);

  return v7;
}

- (BOOL)isEquivalentToStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  category = self->_category;
  category = [tagCopy category];
  if (category == category || [(_UISSecureControlCategory *)category isEqual:category])
  {
    localization = self->_localization;
    localization = [styleCopy localization];
    if ((localization == localization || -[NSString isEqual:](localization, "isEqual:", localization)) && ((v12 = self->_fields.all & 1, [tagCopy imagePlacement] != 1) ? (v13 = objc_msgSend(tagCopy, "imagePlacement") == 4) : (v13 = 1), v13 == v12 && (v15 = (self->_fields.all >> 1) & 1, objc_msgSend(styleCopy, "accessibilityContrast") == v15) && (v16 = (self->_fields.all >> 2) & 7, v16 == objc_msgSend(styleCopy, "displayScale")) && (v17 = (self->_fields.all >> 5) & 1, objc_msgSend(styleCopy, "layoutDirection") == v17) && (v18 = (self->_fields.all >> 6) & 1, objc_msgSend(styleCopy, "legibilityWeight") == v18) && (v19 = (self->_fields.all >> 7) & 0xF, objc_msgSend(styleCopy, "preferredContentSizeCategory") == v19)))
    {
      v20 = (self->_fields.all >> 11) & 7;
      v14 = [styleCopy userInterfaceIdiom] == v20;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end