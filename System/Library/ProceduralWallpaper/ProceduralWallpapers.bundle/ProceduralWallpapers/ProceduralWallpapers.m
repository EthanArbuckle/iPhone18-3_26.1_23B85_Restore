id optionVariant(void *a1, void *a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"bokehVariant";
  v9[1] = @"kSBUIMagicWallpaperThumbnailNameKey";
  v10[0] = a1;
  v10[1] = a2;
  v9[2] = @"thumbnailImageName";
  v10[2] = a2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}