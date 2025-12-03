@interface CALayer(PhotosPlayer)
- (double)is_blurRadius;
- (void)_is_removeBlurFilterIfNeeded;
- (void)is_addBlurFilterIfNeeded;
- (void)is_addFilter:()PhotosPlayer;
- (void)is_removeFilter:()PhotosPlayer;
- (void)is_setBlurRadius:()PhotosPlayer;
@end

@implementation CALayer(PhotosPlayer)

- (void)_is_removeBlurFilterIfNeeded
{
  _is_blurFilter = [self _is_blurFilter];

  if (_is_blurFilter)
  {
    _is_blurFilter2 = [self _is_blurFilter];
    filters = [self filters];
    v4 = [filters mutableCopy];

    [v4 removeObject:_is_blurFilter2];
    [self setFilters:v4];
    [self _is_setBlurFilter:0];
  }
}

- (void)is_removeFilter:()PhotosPlayer
{
  v8 = a3;
  filters = [self filters];
  if (filters)
  {
    v5 = filters;
    v6 = [filters mutableCopy];
    [v6 removeObject:v8];
    v7 = [v6 copy];

    [self setFilters:v7];
  }
}

- (void)is_addFilter:()PhotosPlayer
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  filters = [self filters];
  if (([filters containsObject:v4] & 1) == 0)
  {
    if (filters)
    {
      v10[0] = v4;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      v7 = [v6 arrayByAddingObjectsFromArray:filters];

      filters = v7;
    }

    else
    {
      v9 = v4;
      filters = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
    }

    [self setFilters:filters];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)is_addBlurFilterIfNeeded
{
  v10[1] = *MEMORY[0x277D85DE8];
  _is_blurFilter = [self _is_blurFilter];

  if (!_is_blurFilter)
  {
    v3 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v3 setName:@"LivePhotoBlur"];
    [v3 setCachesInputImage:0];
    [v3 setValue:&unk_28705CDD8 forKey:@"inputRadius"];
    [v3 setValue:MEMORY[0x277CBEC38] forKey:@"inputHardEdges"];
    [v3 setValue:@"medium" forKey:@"inputQuality"];
    [self _is_setBlurFilter:v3];
    v10[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    filters = [self filters];
    if (filters)
    {
      v9 = v3;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
      v7 = [v6 arrayByAddingObjectsFromArray:filters];

      v4 = v7;
    }

    [self setFilters:v4];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (double)is_blurRadius
{
  v1 = [self valueForKeyPath:@"filters.LivePhotoBlur.inputRadius"];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (void)is_setBlurRadius:()PhotosPlayer
{
  [self is_addBlurFilterIfNeeded];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  [self setValue:v4 forKeyPath:@"filters.LivePhotoBlur.inputRadius"];
}

@end