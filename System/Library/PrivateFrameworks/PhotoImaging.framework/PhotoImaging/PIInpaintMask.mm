@interface PIInpaintMask
- ($0AC6E346AE4835514AAA8AC86D8F4844)scale;
- ($721907E0E1CDE8B6CD3FA271A8B25860)extent;
- (PIInpaintMask)initWithBuffer:(id)buffer identifier:(id)identifier;
- (PIInpaintMask)initWithBuffer:(id)buffer identifier:(id)identifier extent:(id *)extent scale:(id)scale;
@end

@implementation PIInpaintMask

- ($0AC6E346AE4835514AAA8AC86D8F4844)scale
{
  denominator = self->_scale.denominator;
  numerator = self->_scale.numerator;
  result.var1 = denominator;
  result.var0 = numerator;
  return result;
}

- ($721907E0E1CDE8B6CD3FA271A8B25860)extent
{
  v3 = *&self[1].var1.var1;
  retstr->var0 = *&self[1].var0.var1;
  retstr->var1 = v3;
  return self;
}

- (PIInpaintMask)initWithBuffer:(id)buffer identifier:(id)identifier
{
  identifierCopy = identifier;
  bufferCopy = buffer;
  v11[0] = 0;
  v11[1] = 0;
  v11[2] = [bufferCopy size];
  v11[3] = v8;
  v9 = [(PIInpaintMask *)self initWithBuffer:bufferCopy identifier:identifierCopy extent:v11 scale:*MEMORY[0x1E69B3918], *(MEMORY[0x1E69B3918] + 8)];

  return v9;
}

- (PIInpaintMask)initWithBuffer:(id)buffer identifier:(id)identifier extent:(id *)extent scale:(id)scale
{
  var1 = scale.var1;
  var0 = scale.var0;
  bufferCopy = buffer;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = PIInpaintMask;
  v14 = [(PIInpaintMask *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_buffer, buffer);
    v16 = [identifierCopy copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v18 = extent->var0;
    v15->_extent.size = extent->var1;
    v15->_extent.origin = v18;
    v15->_scale.numerator = var0;
    v15->_scale.denominator = var1;
  }

  return v15;
}

@end