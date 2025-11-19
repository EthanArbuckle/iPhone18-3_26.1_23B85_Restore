@interface _PUPosterEditingLook
- (NSString)description;
- (_PUPosterEditingLook)initWithIdentifier:(id)a3 displayName:(id)a4;
- (_PUPosterEditingLook)initWithIdentifier:(id)a3 displayName:(id)a4 pu_timeAppearance:(unint64_t)a5 pu_timeFontIdentifier:(id)a6 pu_timeFontColor:(id)a7;
@end

@implementation _PUPosterEditingLook

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_PUPosterEditingLook *)self identifier];
  v6 = [(_PUPosterEditingLook *)self displayName];
  v7 = [(_PUPosterEditingLook *)self pu_timeAppearance];
  v8 = [(_PUPosterEditingLook *)self pu_timeFontIdentifier];
  v9 = [(_PUPosterEditingLook *)self pu_timeFontColor];
  v10 = [v3 stringWithFormat:@"<%@: %p identifier = %@, displayName = %@, timeAppearance = %lu, fontIdentifier = %@, fontColor = %@>", v4, self, v5, v6, v7, v8, v9];;

  return v10;
}

- (_PUPosterEditingLook)initWithIdentifier:(id)a3 displayName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _PUPosterEditingLook;
  v8 = [(_PUPosterEditingLook *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    displayName = v8->_displayName;
    v8->_displayName = v11;
  }

  return v8;
}

- (_PUPosterEditingLook)initWithIdentifier:(id)a3 displayName:(id)a4 pu_timeAppearance:(unint64_t)a5 pu_timeFontIdentifier:(id)a6 pu_timeFontColor:(id)a7
{
  v13 = a6;
  v14 = a7;
  v15 = [(_PUPosterEditingLook *)self initWithIdentifier:a3 displayName:a4];
  v16 = v15;
  if (v15)
  {
    v15->_pu_timeAppearance = a5;
    objc_storeStrong(&v15->_pu_timeFontIdentifier, a6);
    objc_storeStrong(&v16->_pu_timeFontColor, a7);
  }

  return v16;
}

@end