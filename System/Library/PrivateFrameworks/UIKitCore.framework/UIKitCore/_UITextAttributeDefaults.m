@interface _UITextAttributeDefaults
+ (_UITextAttributeDefaultCategories)_unspecifiedDefaults;
+ (id)_defaultsForUserInterfaceIdiom:(int64_t)a3;
+ (void)_getFontSizesForUserInterfaceIdiom:(int64_t)a3 labelFontSize:(double *)a4 buttonFontSize:(double *)a5 systemFontSize:(double *)a6 smallSystemFontSize:(double *)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_UITextAttributeDictionary)_attributes;
- (id)_init;
- (id)_initWithFallback:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setFont:(id)a3;
- (void)_setParagraphStyle:(id)a3;
- (void)_setTextColor:(id)a3;
@end

@implementation _UITextAttributeDefaults

+ (_UITextAttributeDefaultCategories)_unspecifiedDefaults
{
  if (qword_1ED49CC60 != -1)
  {
    dispatch_once(&qword_1ED49CC60, &__block_literal_global_120);
  }

  v3 = qword_1ED49CC58;

  return v3;
}

- (_UITextAttributeDictionary)_attributes
{
  v2 = [(_UIMutableTextAttributeDictionary *)self->_attributes copy];

  return v2;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = _UITextAttributeDefaults;
  v2 = [(_UITextAttributeDefaults *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    attributes = v2->_attributes;
    v2->_attributes = v3;
  }

  return v2;
}

+ (id)_defaultsForUserInterfaceIdiom:(int64_t)a3
{
  v3 = [[_UITextAttributeDefaultCategories alloc] initWithUserInterfaceIdiom:a3];

  return v3;
}

- (id)_initWithFallback:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UITextAttributeDefaults;
  v5 = [(_UITextAttributeDefaults *)&v10 init];
  if (v5)
  {
    v6 = [v4 _attributes];
    v7 = [v6 mutableCopy];
    attributes = v5->_attributes;
    v5->_attributes = v7;
  }

  return v5;
}

- (void)_setTextColor:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UITextAttributeDefaults.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"textColor"}];

    v5 = 0;
  }

  [(_UIMutableTextAttributeDictionary *)self->_attributes setObject:v5 forKeyedSubscript:*off_1E70EC920];
}

- (void)_setFont:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UITextAttributeDefaults.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"font"}];

    v5 = 0;
  }

  [(_UIMutableTextAttributeDictionary *)self->_attributes setObject:v5 forKeyedSubscript:*off_1E70EC918];
}

- (void)_setParagraphStyle:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UITextAttributeDefaults.m" lineNumber:244 description:{@"Invalid parameter not satisfying: %@", @"paragraphStyle"}];

    v5 = 0;
  }

  [(_UIMutableTextAttributeDictionary *)self->_attributes setObject:v5 forKeyedSubscript:*off_1E70EC988];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(_UIMutableTextAttributeDictionary *)self->_attributes mutableCopy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (NSString)description
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"attributes";
  v3 = [(_UITextAttributeDefaults *)self _attributes];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [UIDescriptionBuilder descriptionForObject:self namesAndObjects:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  if (v4 == self)
  {
    v11 = 1;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attributes = self->_attributes;
    v7 = [(_UITextAttributeDefaults *)v5 _attributes];
    v8 = attributes;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = 0;
      if (v8 && v9)
      {
        v11 = [(_UIMutableTextAttributeDictionary *)v8 isEqual:v9];
      }
    }
  }

  else
  {
LABEL_8:
    v11 = 0;
  }

LABEL_12:

  return v11;
}

+ (void)_getFontSizesForUserInterfaceIdiom:(int64_t)a3 labelFontSize:(double *)a4 buttonFontSize:(double *)a5 systemFontSize:(double *)a6 smallSystemFontSize:(double *)a7
{
  v7 = 17.0;
  if (a3 == 5)
  {
    v7 = 13.0;
  }

  *a4 = v7;
  v8 = 18.0;
  if (a3 == 5)
  {
    v8 = 14.0;
  }

  *a5 = v8;
  v9 = 10.0;
  if (a3 != 5)
  {
    v9 = 14.0;
  }

  *a6 = v9;
  v10 = 12.0;
  if (a3 == 5)
  {
    v10 = 9.0;
  }

  *a7 = v10;
}

@end