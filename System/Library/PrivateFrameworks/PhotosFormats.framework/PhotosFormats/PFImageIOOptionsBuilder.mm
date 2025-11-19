@interface PFImageIOOptionsBuilder
- (NSDictionary)options;
- (PFImageIOOptionsBuilder)init;
- (PFImageIOOptionsBuilder)initWithOptions:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
@end

@implementation PFImageIOOptionsBuilder

- (NSDictionary)options
{
  v16[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableDictionary *)self->_customOptions count])
  {
    [(NSDictionary *)v3 addEntriesFromDictionary:self->_customOptions];
  }

  if (self->_includeDerivativeDefaults)
  {
    [(NSDictionary *)v3 setObject:&unk_1F2AABB40 forKeyedSubscript:*MEMORY[0x1E696D338]];
  }

  if (self->_includeHDRGainMaps)
  {
    v4 = *MEMORY[0x1E696E030];
    v5 = *MEMORY[0x1E696D2C0];
    v15[0] = *MEMORY[0x1E696E018];
    v15[1] = v5;
    v16[0] = v4;
    v16[1] = MEMORY[0x1E695E118];
    v15[2] = *MEMORY[0x1E696D360];
    v16[2] = MEMORY[0x1E695E118];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
    [(NSDictionary *)v3 addEntriesFromDictionary:v6];
  }

  if (self->_applyTransform)
  {
    [(NSDictionary *)v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696E000]];
  }

  if (self->_skipMetadata)
  {
    [(NSDictionary *)v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696E0E8]];
  }

  if (self->_maximumLongSideLength)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [(NSDictionary *)v3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696D328]];
  }

  if (self->_orientation - 1 <= 7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [(NSDictionary *)v3 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696DE78]];
  }

  colorBehavior = self->_colorBehavior;
  switch(colorBehavior)
  {
    case 3uLL:
      v11 = MEMORY[0x1E695E118];
      v10 = @"kCGImageSourceKeepOriginalProfile";
      break;
    case 2uLL:
      v10 = *MEMORY[0x1E696D350];
      v11 = @"sRGB";
      break;
    case 1uLL:
      v10 = *MEMORY[0x1E696D350];
      v11 = MEMORY[0x1E695E118];
      break;
    default:
      goto LABEL_22;
  }

  [(NSDictionary *)v3 setObject:v11 forKeyedSubscript:v10];
LABEL_22:
  if ([(NSDictionary *)v3 count])
  {
    v12 = v3;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = [(PFImageIOOptionsBuilder *)self options];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v10 = a3;
  v6 = a4;
  customOptions = self->_customOptions;
  if (!customOptions)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_customOptions;
    self->_customOptions = v8;

    customOptions = self->_customOptions;
  }

  [(NSMutableDictionary *)customOptions setObject:v10 forKeyedSubscript:v6];
}

- (PFImageIOOptionsBuilder)initWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(PFImageIOOptionsBuilder *)self init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    customOptions = v6->_customOptions;
    v6->_customOptions = v7;

    [(NSMutableDictionary *)v6->_customOptions addEntriesFromDictionary:v4];
  }

  return v6;
}

- (PFImageIOOptionsBuilder)init
{
  v3.receiver = self;
  v3.super_class = PFImageIOOptionsBuilder;
  result = [(PFImageIOOptionsBuilder *)&v3 init];
  if (result)
  {
    result->_includeDerivativeDefaults = 1;
    result->_applyTransform = 1;
  }

  return result;
}

@end