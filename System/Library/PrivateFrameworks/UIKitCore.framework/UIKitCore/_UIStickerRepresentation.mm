@interface _UIStickerRepresentation
- (CGSize)size;
- (_UIStickerRepresentation)initWithCoder:(id)coder;
- (_UIStickerRepresentation)initWithData:(id)data type:(id)type size:(CGSize)size role:(id)role;
- (id)createPNGDataFromHEICData;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIStickerRepresentation

- (_UIStickerRepresentation)initWithData:(id)data type:(id)type size:(CGSize)size role:(id)role
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  typeCopy = type;
  roleCopy = role;
  v18.receiver = self;
  v18.super_class = _UIStickerRepresentation;
  v15 = [(_UIStickerRepresentation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_data, data);
    objc_storeStrong(&v16->_type, type);
    v16->_size.width = width;
    v16->_size.height = height;
    objc_storeStrong(&v16->_role, role);
  }

  return v16;
}

- (_UIStickerRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _UIStickerRepresentation;
  v5 = [(_UIStickerRepresentation *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v8;

    [coderCopy decodeCGSizeForKey:@"size"];
    v5->_size.width = v10;
    v5->_size.height = v11;
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"role"];
    role = v5->_role;
    v5->_role = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_UIStickerRepresentation *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  type = [(_UIStickerRepresentation *)self type];
  [coderCopy encodeObject:type forKey:@"type"];

  [(_UIStickerRepresentation *)self size];
  [coderCopy encodeCGSize:@"size" forKey:?];
  role = [(_UIStickerRepresentation *)self role];
  [coderCopy encodeObject:role forKey:@"role"];
}

- (id)createPNGDataFromHEICData
{
  type = [(_UIStickerRepresentation *)self type];
  identifier = [*MEMORY[0x1E6982E00] identifier];
  v5 = [type isEqualToString:identifier];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695F658]);
    data = [(_UIStickerRepresentation *)self data];
    v8 = [v6 initWithData:data];

    v9 = objc_alloc_init(MEMORY[0x1E695F620]);
    v10 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v11 = [v9 PNGRepresentationOfImage:v8 format:*MEMORY[0x1E695F910] colorSpace:v10 options:MEMORY[0x1E695E0F8]];
    CGColorSpaceRelease(v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end