@interface _UIDocumentPickerAuxiliaryOption
- (_UIDocumentPickerAuxiliaryOption)init;
- (_UIDocumentPickerAuxiliaryOption)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIDocumentPickerAuxiliaryOption

- (_UIDocumentPickerAuxiliaryOption)init
{
  v6.receiver = self;
  v6.super_class = _UIDocumentPickerAuxiliaryOption;
  v2 = [(_UIDocumentPickerAuxiliaryOption *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [(_UIDocumentPickerAuxiliaryOption *)v2 setIdentifier:uUIDString];
  }

  return v2;
}

- (_UIDocumentPickerAuxiliaryOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _UIDocumentPickerAuxiliaryOption;
  v5 = [(_UIDocumentPickerAuxiliaryOption *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIImageKey"];
    [(_UIDocumentPickerAuxiliaryOption *)v5 setImage:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UITitleKey"];
    [(_UIDocumentPickerAuxiliaryOption *)v5 setTitle:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIIdentifierKey"];
    [(_UIDocumentPickerAuxiliaryOption *)v5 setIdentifier:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIOrderKey"];
    -[_UIDocumentPickerAuxiliaryOption setOrder:](v5, "setOrder:", [v9 integerValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  image = self->_image;
  coderCopy = coder;
  [coderCopy encodeObject:image forKey:@"UIImageKey"];
  [coderCopy encodeObject:self->_title forKey:@"UITitleKey"];
  [coderCopy encodeObject:self->_identifier forKey:@"UIIdentifierKey"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_order];
  [coderCopy encodeObject:v6 forKey:@"UIOrderKey"];
}

@end