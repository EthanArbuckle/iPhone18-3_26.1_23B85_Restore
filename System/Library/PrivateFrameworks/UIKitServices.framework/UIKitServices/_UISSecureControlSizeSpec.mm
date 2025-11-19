@interface _UISSecureControlSizeSpec
+ (id)specWithStyle:(id)a3 tag:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToStyle:(id)a3 tag:(id)a4;
- (_UISSecureControlSizeSpec)initWithCategory:(id)a3 arrangeVertically:(BOOL)a4 accessibilityContrast:(unint64_t)a5 displayScale:(unsigned __int8)a6 layoutDirection:(unint64_t)a7 legibilityWeight:(unint64_t)a8 localization:(id)a9 preferredContentSizeCategory:(unint64_t)a10 userInterfaceIdiom:(unint64_t)a11;
- (_UISSecureControlSizeSpec)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UISSecureControlSizeSpec

+ (id)specWithStyle:(id)a3 tag:(id)a4
{
  v5 = a4;
  v6 = a3;
  v19 = [_UISSecureControlSizeSpec alloc];
  v7 = [v5 category];
  v8 = [v5 imagePlacement] == 1 || objc_msgSend(v5, "imagePlacement") == 4;
  v18 = v8;
  v9 = [v6 accessibilityContrast];
  v10 = [v6 displayScale];
  v11 = [v6 layoutDirection];
  v12 = [v6 legibilityWeight];
  v13 = [v6 localization];
  v14 = [v6 preferredContentSizeCategory];
  v15 = [v6 userInterfaceIdiom];

  v16 = [(_UISSecureControlSizeSpec *)v19 initWithCategory:v7 arrangeVertically:v18 accessibilityContrast:v9 displayScale:v10 layoutDirection:v11 legibilityWeight:v12 localization:v13 preferredContentSizeCategory:v14 userInterfaceIdiom:v15];

  return v16;
}

- (_UISSecureControlSizeSpec)initWithCategory:(id)a3 arrangeVertically:(BOOL)a4 accessibilityContrast:(unint64_t)a5 displayScale:(unsigned __int8)a6 layoutDirection:(unint64_t)a7 legibilityWeight:(unint64_t)a8 localization:(id)a9 preferredContentSizeCategory:(unint64_t)a10 userInterfaceIdiom:(unint64_t)a11
{
  v11 = a8;
  v12 = a7;
  v14 = a5;
  v15 = a4;
  v18 = a3;
  v19 = a9;
  v23.receiver = self;
  v23.super_class = _UISSecureControlSizeSpec;
  v20 = [(_UISSecureControlSizeSpec *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_category, a3);
    objc_storeStrong(&v21->_localization, a9);
    v21->_fields.all = v15 & 0xC001 | (2 * (v14 & 1)) & 3 | (4 * (a6 & 7)) & 0x1F | (32 * (v12 & 1)) & 0x3F | ((v11 & 1) << 6) & 0x7F | ((a10 & 0xF) << 7) & 0xC7FF | ((a11 & 7) << 11) | v21->_fields.all & 0xC000;
  }

  return v21;
}

- (_UISSecureControlSizeSpec)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UISSecureControlSizeSpec;
  v5 = [(_UISSecureControlSizeSpec *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    category = v5->_category;
    v5->_category = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localization"];
    localization = v5->_localization;
    v5->_localization = v8;

    v5->_fields.all = [v4 decodeInt32ForKey:@"fieldsAll"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  category = self->_category;
  v5 = a3;
  [v5 encodeObject:category forKey:@"category"];
  [v5 encodeObject:self->_localization forKey:@"localization"];
  [v5 encodeInt32:self->_fields.all forKey:@"fieldsAll"];
}

- (unint64_t)hash
{
  v3 = +[_UISSecureControlSizeSpec hash];
  v4 = [(_UISSecureControlCategory *)self->_category hash];
  return v4 ^ [(NSString *)self->_localization hash]^ v3 ^ self->_fields.all;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && ((category = self->_category, category == v4[3]) || [(_UISSecureControlCategory *)category isEqual:?]) && ((localization = self->_localization, localization == v4[1]) || [(NSString *)localization isEqual:?]) && self->_fields.all == *(v4 + 8);

  return v7;
}

- (BOOL)isEquivalentToStyle:(id)a3 tag:(id)a4
{
  v6 = a3;
  v7 = a4;
  category = self->_category;
  v9 = [v7 category];
  if (category == v9 || [(_UISSecureControlCategory *)category isEqual:v9])
  {
    localization = self->_localization;
    v11 = [v6 localization];
    if ((localization == v11 || -[NSString isEqual:](localization, "isEqual:", v11)) && ((v12 = self->_fields.all & 1, [v7 imagePlacement] != 1) ? (v13 = objc_msgSend(v7, "imagePlacement") == 4) : (v13 = 1), v13 == v12 && (v15 = (self->_fields.all >> 1) & 1, objc_msgSend(v6, "accessibilityContrast") == v15) && (v16 = (self->_fields.all >> 2) & 7, v16 == objc_msgSend(v6, "displayScale")) && (v17 = (self->_fields.all >> 5) & 1, objc_msgSend(v6, "layoutDirection") == v17) && (v18 = (self->_fields.all >> 6) & 1, objc_msgSend(v6, "legibilityWeight") == v18) && (v19 = (self->_fields.all >> 7) & 0xF, objc_msgSend(v6, "preferredContentSizeCategory") == v19)))
    {
      v20 = (self->_fields.all >> 11) & 7;
      v14 = [v6 userInterfaceIdiom] == v20;
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