@interface _UISSecureControlCategory
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (NSString)iconGlyph;
- (_UISSecureControlCategory)initWithCoder:(id)coder;
- (_UISSecureControlCategory)initWithType:(unint64_t)type iconIndex:(unint64_t)index labelIndex:(unint64_t)labelIndex;
- (unint64_t)authenticationMessageContextForStyle:(id)style;
- (unsigned)secureName;
- (unsigned)secureNameForDrawing;
@end

@implementation _UISSecureControlCategory

- (_UISSecureControlCategory)initWithType:(unint64_t)type iconIndex:(unint64_t)index labelIndex:(unint64_t)labelIndex
{
  labelIndexCopy = labelIndex;
  indexCopy = index;
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = _UISSecureControlCategory;
  result = [(_UISSecureControlCategory *)&v9 init];
  if (result)
  {
    result->_fields.all = typeCopy & 0x3F | ((indexCopy & 0x1F) << 6) | (labelIndexCopy << 11);
  }

  return result;
}

- (_UISSecureControlCategory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _UISSecureControlCategory;
  v5 = [(_UISSecureControlCategory *)&v7 init];
  if (v5)
  {
    v5->_fields.all = [coderCopy decodeInt32ForKey:@"all"];
  }

  return v5;
}

- (unint64_t)authenticationMessageContextForStyle:(id)style
{
  userInterfaceStyle = [style userInterfaceStyle];
  v5 = &unk_1F0A846A0;
  if (userInterfaceStyle != 1)
  {
    v5 = 0;
  }

  if (userInterfaceStyle)
  {
    v6 = v5;
  }

  else
  {
    v6 = &unk_1F0A84688;
  }

  0x3FLL = [v6 objectAtIndexedSubscript:self->_fields.all & 0x3FLL];
  unsignedLongLongValue = [0x3FLL unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (NSString)iconGlyph
{
  0x3FLL = [&unk_1F0A84610 objectAtIndexedSubscript:self->_fields.all & 0x3FLL];
  0x1F = [0x3FLL objectAtIndexedSubscript:(self->_fields.all >> 6) & 0x1F];

  return 0x1F;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_fields.all == equalCopy[4];

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
  0x3FLL = [&unk_1F0A84640 objectAtIndexedSubscript:self->_fields.all & 0x3FLL];
  v4 = [0x3FLL objectAtIndexedSubscript:self->_fields.all >> 11];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
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