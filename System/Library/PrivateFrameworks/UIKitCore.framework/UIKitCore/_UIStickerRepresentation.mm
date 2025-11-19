@interface _UIStickerRepresentation
- (CGSize)size;
- (_UIStickerRepresentation)initWithCoder:(id)a3;
- (_UIStickerRepresentation)initWithData:(id)a3 type:(id)a4 size:(CGSize)a5 role:(id)a6;
- (id)createPNGDataFromHEICData;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIStickerRepresentation

- (_UIStickerRepresentation)initWithData:(id)a3 type:(id)a4 size:(CGSize)a5 role:(id)a6
{
  height = a5.height;
  width = a5.width;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = _UIStickerRepresentation;
  v15 = [(_UIStickerRepresentation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_data, a3);
    objc_storeStrong(&v16->_type, a4);
    v16->_size.width = width;
    v16->_size.height = height;
    objc_storeStrong(&v16->_role, a6);
  }

  return v16;
}

- (_UIStickerRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _UIStickerRepresentation;
  v5 = [(_UIStickerRepresentation *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v8;

    [v4 decodeCGSizeForKey:@"size"];
    v5->_size.width = v10;
    v5->_size.height = v11;
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"role"];
    role = v5->_role;
    v5->_role = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIStickerRepresentation *)self data];
  [v4 encodeObject:v5 forKey:@"data"];

  v6 = [(_UIStickerRepresentation *)self type];
  [v4 encodeObject:v6 forKey:@"type"];

  [(_UIStickerRepresentation *)self size];
  [v4 encodeCGSize:@"size" forKey:?];
  v7 = [(_UIStickerRepresentation *)self role];
  [v4 encodeObject:v7 forKey:@"role"];
}

- (id)createPNGDataFromHEICData
{
  v3 = [(_UIStickerRepresentation *)self type];
  v4 = [*MEMORY[0x1E6982E00] identifier];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695F658]);
    v7 = [(_UIStickerRepresentation *)self data];
    v8 = [v6 initWithData:v7];

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