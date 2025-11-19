@interface _UISSecureControlCategory
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (NSString)iconGlyph;
- (_UISSecureControlCategory)initWithCoder:(id)a3;
- (_UISSecureControlCategory)initWithType:(unint64_t)a3 iconIndex:(unint64_t)a4 labelIndex:(unint64_t)a5;
- (unint64_t)authenticationMessageContextForStyle:(id)a3;
- (unsigned)secureName;
- (unsigned)secureNameForDrawing;
@end

@implementation _UISSecureControlCategory

- (_UISSecureControlCategory)initWithType:(unint64_t)a3 iconIndex:(unint64_t)a4 labelIndex:(unint64_t)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v9.receiver = self;
  v9.super_class = _UISSecureControlCategory;
  result = [(_UISSecureControlCategory *)&v9 init];
  if (result)
  {
    result->_fields.all = v7 & 0x3F | ((v6 & 0x1F) << 6) | (v5 << 11);
  }

  return result;
}

- (_UISSecureControlCategory)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UISSecureControlCategory;
  v5 = [(_UISSecureControlCategory *)&v7 init];
  if (v5)
  {
    v5->_fields.all = [v4 decodeInt32ForKey:@"all"];
  }

  return v5;
}

- (unint64_t)authenticationMessageContextForStyle:(id)a3
{
  v4 = [a3 userInterfaceStyle];
  v5 = &unk_1F0A846A0;
  if (v4 != 1)
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = &unk_1F0A84688;
  }

  v7 = [v6 objectAtIndexedSubscript:self->_fields.all & 0x3FLL];
  v8 = [v7 unsignedLongLongValue];

  return v8;
}

- (NSString)iconGlyph
{
  v3 = [&unk_1F0A84610 objectAtIndexedSubscript:self->_fields.all & 0x3FLL];
  v4 = [v3 objectAtIndexedSubscript:(self->_fields.all >> 6) & 0x1F];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_fields.all == v4[4];

  return v5;
}

- (BOOL)isValid
{
  if ((self->_fields.all & 0x3F) != 1)
  {
    return 0;
  }

  v3 = [&unk_1F0A84670 objectAtIndexedSubscript:1];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:(self->_fields.all >> 11) & 0xFFE0FFFF | (((self->_fields.all >> 6) & 0x1F) << 16)];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (unsigned)secureName
{
  v3 = [&unk_1F0A84640 objectAtIndexedSubscript:self->_fields.all & 0x3FLL];
  v4 = [v3 objectAtIndexedSubscript:self->_fields.all >> 11];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (unsigned)secureNameForDrawing
{
  if (self->_fields.all >= 0x800u)
  {
    return [(_UISSecureControlCategory *)self secureName];
  }

  else
  {
    return 0;
  }
}

@end