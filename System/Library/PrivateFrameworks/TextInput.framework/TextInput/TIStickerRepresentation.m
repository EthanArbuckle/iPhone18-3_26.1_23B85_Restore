@interface TIStickerRepresentation
- (CGSize)size;
- (TIStickerRepresentation)initWithCoder:(id)a3;
- (TIStickerRepresentation)initWithData:(id)a3 uti:(id)a4 role:(id)a5 size:(CGSize)a6 effect:(int64_t)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIStickerRepresentation

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  data = self->_data;
  v6 = a3;
  [v6 encodeObject:data forKey:@"data"];
  [v6 encodeObject:self->_uti forKey:@"uti"];
  [v6 encodeObject:self->_role forKey:@"role"];
  v5 = [MEMORY[0x1E696B098] valueWithBytes:&self->_size objCType:"{CGSize=dd}"];
  [v6 encodeObject:v5 forKey:@"size"];

  [v6 encodeInteger:self->_effect forKey:@"effect"];
}

- (TIStickerRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = TIStickerRepresentation;
  v5 = [(TIStickerRepresentation *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    v7 = [v6 copy];
    data = v5->_data;
    v5->_data = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uti"];
    v10 = [v9 copy];
    uti = v5->_uti;
    v5->_uti = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"role"];
    v13 = [v12 copy];
    role = v5->_role;
    v5->_role = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    [v15 getValue:&v5->_size size:16];

    v5->_effect = [v4 decodeIntegerForKey:@"effect"];
  }

  return v5;
}

- (TIStickerRepresentation)initWithData:(id)a3 uti:(id)a4 role:(id)a5 size:(CGSize)a6 effect:(int64_t)a7
{
  height = a6.height;
  width = a6.width;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v20.receiver = self;
  v20.super_class = TIStickerRepresentation;
  v17 = [(TIStickerRepresentation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_data, a3);
    objc_storeStrong(&v18->_uti, a4);
    objc_storeStrong(&v18->_role, a5);
    v18->_size.width = width;
    v18->_size.height = height;
    v18->_effect = a7;
  }

  return v18;
}

@end