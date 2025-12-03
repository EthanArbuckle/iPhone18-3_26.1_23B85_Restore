@interface PFAuxiliaryImageRecord
- (CGSize)sourceImageSize;
- (double)effectiveScaleFactorForDestinationImageSize:(CGSize)size;
- (double)sourceImageSizeMaxLength;
@end

@implementation PFAuxiliaryImageRecord

- (CGSize)sourceImageSize
{
  objc_copyStruct(v4, &self->_sourceImageSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)effectiveScaleFactorForDestinationImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [(NSDictionary *)self->_auxiliaryImageInfo objectForKeyedSubscript:*MEMORY[0x1E696D220]];
  v7 = *MEMORY[0x1E696DFB8];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696DFB8]];
  [v8 doubleValue];
  v10 = v9;
  v11 = *MEMORY[0x1E696DD58];
  v12 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696DD58]];
  [v12 doubleValue];
  if (v10 <= v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v7;
  }

  v15 = [v6 objectForKeyedSubscript:v14];
  [v15 doubleValue];
  v17 = v16;

  if (width <= height)
  {
    width = height;
  }

  [(PFAuxiliaryImageRecord *)self sourceImageSizeMaxLength];
  v19 = 1.0;
  if (width > 0.0 && v18 > 0.0)
  {
    [(PFAuxiliaryImageRecord *)self sourceImageSizeMaxLength];
    v19 = v17 / v20 / (v17 / width);
  }

  return v19;
}

- (double)sourceImageSizeMaxLength
{
  [(PFAuxiliaryImageRecord *)self sourceImageSize];
  v4 = v3;
  [(PFAuxiliaryImageRecord *)self sourceImageSize];
  v6 = v5;
  [(PFAuxiliaryImageRecord *)self sourceImageSize];
  if (v4 <= v6)
  {
    return v8;
  }

  return result;
}

@end