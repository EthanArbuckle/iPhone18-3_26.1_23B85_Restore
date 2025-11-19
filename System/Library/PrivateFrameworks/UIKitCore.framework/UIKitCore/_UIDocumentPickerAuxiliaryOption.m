@interface _UIDocumentPickerAuxiliaryOption
- (_UIDocumentPickerAuxiliaryOption)init;
- (_UIDocumentPickerAuxiliaryOption)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIDocumentPickerAuxiliaryOption

- (_UIDocumentPickerAuxiliaryOption)init
{
  v6.receiver = self;
  v6.super_class = _UIDocumentPickerAuxiliaryOption;
  v2 = [(_UIDocumentPickerAuxiliaryOption *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    [(_UIDocumentPickerAuxiliaryOption *)v2 setIdentifier:v4];
  }

  return v2;
}

- (_UIDocumentPickerAuxiliaryOption)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UIDocumentPickerAuxiliaryOption;
  v5 = [(_UIDocumentPickerAuxiliaryOption *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIImageKey"];
    [(_UIDocumentPickerAuxiliaryOption *)v5 setImage:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UITitleKey"];
    [(_UIDocumentPickerAuxiliaryOption *)v5 setTitle:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIIdentifierKey"];
    [(_UIDocumentPickerAuxiliaryOption *)v5 setIdentifier:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIOrderKey"];
    -[_UIDocumentPickerAuxiliaryOption setOrder:](v5, "setOrder:", [v9 integerValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  image = self->_image;
  v5 = a3;
  [v5 encodeObject:image forKey:@"UIImageKey"];
  [v5 encodeObject:self->_title forKey:@"UITitleKey"];
  [v5 encodeObject:self->_identifier forKey:@"UIIdentifierKey"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_order];
  [v5 encodeObject:v6 forKey:@"UIOrderKey"];
}

@end