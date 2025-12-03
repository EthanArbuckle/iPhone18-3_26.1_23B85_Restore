@interface TIStickerRepresentation
- (CGSize)size;
- (TIStickerRepresentation)initWithCoder:(id)coder;
- (TIStickerRepresentation)initWithData:(id)data uti:(id)uti role:(id)role size:(CGSize)size effect:(int64_t)effect;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  data = self->_data;
  coderCopy = coder;
  [coderCopy encodeObject:data forKey:@"data"];
  [coderCopy encodeObject:self->_uti forKey:@"uti"];
  [coderCopy encodeObject:self->_role forKey:@"role"];
  v5 = [MEMORY[0x1E696B098] valueWithBytes:&self->_size objCType:"{CGSize=dd}"];
  [coderCopy encodeObject:v5 forKey:@"size"];

  [coderCopy encodeInteger:self->_effect forKey:@"effect"];
}

- (TIStickerRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = TIStickerRepresentation;
  v5 = [(TIStickerRepresentation *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    v7 = [v6 copy];
    data = v5->_data;
    v5->_data = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uti"];
    v10 = [v9 copy];
    uti = v5->_uti;
    v5->_uti = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"role"];
    v13 = [v12 copy];
    role = v5->_role;
    v5->_role = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    [v15 getValue:&v5->_size size:16];

    v5->_effect = [coderCopy decodeIntegerForKey:@"effect"];
  }

  return v5;
}

- (TIStickerRepresentation)initWithData:(id)data uti:(id)uti role:(id)role size:(CGSize)size effect:(int64_t)effect
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  utiCopy = uti;
  roleCopy = role;
  v20.receiver = self;
  v20.super_class = TIStickerRepresentation;
  v17 = [(TIStickerRepresentation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_data, data);
    objc_storeStrong(&v18->_uti, uti);
    objc_storeStrong(&v18->_role, role);
    v18->_size.width = width;
    v18->_size.height = height;
    v18->_effect = effect;
  }

  return v18;
}

@end