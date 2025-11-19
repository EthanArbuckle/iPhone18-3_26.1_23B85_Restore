@interface VKCVisualSearchResultItem
- (CGPoint)normalizedIconLocation;
- (CGRect)normalizedBoundingBox;
- (UIMenu)debugMenu;
- (VKCImageAnalysis)analysis;
- (VKCVisualSearchResultItem)initWithGatingResultItem:(id)a3 domain:(id)a4;
- (VKCVisualSearchResultItem)initWithSearchResultItem:(id)a3;
@end

@implementation VKCVisualSearchResultItem

- (VKCVisualSearchResultItem)initWithGatingResultItem:(id)a3 domain:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VKCVisualSearchResultItem;
  v9 = [(VKCVisualSearchResultItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resultItem, a3);
    objc_storeStrong(&v10->_domainInfo, a4);
  }

  return v10;
}

- (VKCVisualSearchResultItem)initWithSearchResultItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VKCVisualSearchResultItem;
  v6 = [(VKCVisualSearchResultItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchItem, a3);
  }

  return v7;
}

- (CGRect)normalizedBoundingBox
{
  [(MADVIVisualSearchGatingResultItem *)self->_resultItem normalizedBoundingBox];
  searchItem = self->_searchItem;
  if (searchItem)
  {
    [(MADVIVisualSearchResultItem *)searchItem normalizedBoundingBox];
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  MinX = CGRectGetMinX(*&v3);
  v17.origin.x = v8;
  v17.origin.y = v9;
  v17.size.width = v10;
  v17.size.height = v11;
  v13 = 1.0 - CGRectGetMaxY(v17);
  v14 = MinX;
  v15 = v10;
  v16 = v11;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v13;
  result.origin.x = v14;
  return result;
}

- (CGPoint)normalizedIconLocation
{
  if ([(VKCVisualSearchResultItem *)self _hasFocalPoint])
  {
    [(MADVIVisualSearchGatingDomainInfo *)self->_domainInfo focalPoint];

    VKMFlipPoint();
  }

  else
  {
    [(VKCVisualSearchResultItem *)self normalizedBoundingBox];

    v3 = VKMCenterOfRect(v5, v6, v7, v8);
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (UIMenu)debugMenu
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(VKCVisualSearchResultItem *)self domainInfo];
  v5 = [v4 domain];

  v6 = [v5 rangeOfString:@"domain_key."];
  v8 = [v5 vk_substringFromIndex:v6 + v7];
  v9 = MEMORY[0x1E69DCAB8];
  v10 = [(VKCVisualSearchResultItem *)self glyphName];
  v11 = [v9 vk_symbolImageWithName:v10];

  v12 = 0x1E696A000uLL;
  v13 = MEMORY[0x1E696AEC0];
  v14 = [(VKCVisualSearchResultItem *)self domainInfo];
  v15 = [v14 domain];
  v16 = [v13 stringWithFormat:@"%@", v15];

  v17 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Domain" subtitle:v16];
  [v3 addObject:v17];

  if ([(VKCVisualSearchResultItem *)self _hasFocalPoint])
  {
    v18 = MEMORY[0x1E696AEC0];
    [(VKCVisualSearchResultItem *)self normalizedBoundingBox];
    v23 = VKMUIStringForRect(v19, v20, v21, v22);
    v24 = [v18 stringWithFormat:@"%@", v23];

    v25 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Focal Point" subtitle:v24];
    v16 = v24;
    v12 = 0x1E696A000;
  }

  else
  {
    v25 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Focal Point" subtitle:@"(none)"];
  }

  [v3 addObject:v25];

  v26 = *(v12 + 3776);
  [(VKCVisualSearchResultItem *)self normalizedBoundingBox];
  v31 = VKMUIStringForRect(v27, v28, v29, v30);
  v32 = [v26 stringWithFormat:@"Normalized Bounding Box: %@", v31];

  v33 = [MEMORY[0x1E69DC628] vk_itemWithTitle:&stru_1F2C04538 subtitle:v32];
  [v3 addObject:v33];

  v34 = MEMORY[0x1E69DCC60];
  v35 = [v8 capitalizedString];
  v36 = [v34 vk_menuWithItems:v3 title:v35 subtitle:0 image:v11];

  return v36;
}

- (VKCImageAnalysis)analysis
{
  WeakRetained = objc_loadWeakRetained(&self->_analysis);

  return WeakRetained;
}

@end