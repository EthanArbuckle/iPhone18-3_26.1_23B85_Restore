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
  v2 = [a1 _is_blurFilter];

  if (v2)
  {
    v5 = [a1 _is_blurFilter];
    v3 = [a1 filters];
    v4 = [v3 mutableCopy];

    [v4 removeObject:v5];
    [a1 setFilters:v4];
    [a1 _is_setBlurFilter:0];
  }
}

- (void)is_removeFilter:()PhotosPlayer
{
  v8 = a3;
  v4 = [a1 filters];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 mutableCopy];
    [v6 removeObject:v8];
    v7 = [v6 copy];

    [a1 setFilters:v7];
  }
}

- (void)is_addFilter:()PhotosPlayer
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 filters];
  if (([v5 containsObject:v4] & 1) == 0)
  {
    if (v5)
    {
      v10[0] = v4;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      v7 = [v6 arrayByAddingObjectsFromArray:v5];

      v5 = v7;
    }

    else
    {
      v9 = v4;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
    }

    [a1 setFilters:v5];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)is_addBlurFilterIfNeeded
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 _is_blurFilter];

  if (!v2)
  {
    v3 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v3 setName:@"LivePhotoBlur"];
    [v3 setCachesInputImage:0];
    [v3 setValue:&unk_28705CDD8 forKey:@"inputRadius"];
    [v3 setValue:MEMORY[0x277CBEC38] forKey:@"inputHardEdges"];
    [v3 setValue:@"medium" forKey:@"inputQuality"];
    [a1 _is_setBlurFilter:v3];
    v10[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v5 = [a1 filters];
    if (v5)
    {
      v9 = v3;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
      v7 = [v6 arrayByAddingObjectsFromArray:v5];

      v4 = v7;
    }

    [a1 setFilters:v4];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (double)is_blurRadius
{
  v1 = [a1 valueForKeyPath:@"filters.LivePhotoBlur.inputRadius"];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (void)is_setBlurRadius:()PhotosPlayer
{
  [a1 is_addBlurFilterIfNeeded];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  [a1 setValue:v4 forKeyPath:@"filters.LivePhotoBlur.inputRadius"];
}

@end