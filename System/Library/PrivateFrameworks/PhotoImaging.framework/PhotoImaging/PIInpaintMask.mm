@interface PIInpaintMask
- ($0AC6E346AE4835514AAA8AC86D8F4844)scale;
- ($721907E0E1CDE8B6CD3FA271A8B25860)extent;
- (PIInpaintMask)initWithBuffer:(id)a3 identifier:(id)a4;
- (PIInpaintMask)initWithBuffer:(id)a3 identifier:(id)a4 extent:(id *)a5 scale:(id)a6;
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

- (PIInpaintMask)initWithBuffer:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11[0] = 0;
  v11[1] = 0;
  v11[2] = [v7 size];
  v11[3] = v8;
  v9 = [(PIInpaintMask *)self initWithBuffer:v7 identifier:v6 extent:v11 scale:*MEMORY[0x1E69B3918], *(MEMORY[0x1E69B3918] + 8)];

  return v9;
}

- (PIInpaintMask)initWithBuffer:(id)a3 identifier:(id)a4 extent:(id *)a5 scale:(id)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  v12 = a3;
  v13 = a4;
  v20.receiver = self;
  v20.super_class = PIInpaintMask;
  v14 = [(PIInpaintMask *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_buffer, a3);
    v16 = [v13 copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v18 = a5->var0;
    v15->_extent.size = a5->var1;
    v15->_extent.origin = v18;
    v15->_scale.numerator = var0;
    v15->_scale.denominator = var1;
  }

  return v15;
}

@end