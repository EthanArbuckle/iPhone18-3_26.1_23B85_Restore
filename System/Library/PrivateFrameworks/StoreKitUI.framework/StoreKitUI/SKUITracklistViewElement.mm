@interface SKUITracklistViewElement
- (NSArray)sections;
- (NSArray)tracks;
- (SKUIHeaderViewElement)header;
- (id)applyUpdatesWithElement:(id)element;
- (int64_t)pageComponentType;
- (void)enumerateTracksUsingBlock:(id)block;
@end

@implementation SKUITracklistViewElement

- (void)enumerateTracksUsingBlock:(id)block
{
  blockCopy = block;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUITracklistViewElement *)v5 enumerateTracksUsingBlock:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__SKUITracklistViewElement_enumerateTracksUsingBlock___block_invoke;
  v14[3] = &unk_2781FC588;
  v13 = blockCopy;
  v15 = v13;
  v16 = v17;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v14];

  _Block_object_dispose(v17, 8);
}

void __54__SKUITracklistViewElement_enumerateTracksUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  if ([v4 elementType] == 146)
  {
    (*(*(a1 + 32) + 16))();
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  objc_autoreleasePoolPop(v3);
}

- (SKUIHeaderViewElement)header
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUITracklistViewElement *)v3 header:v4];
      }
    }
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__69;
  v19 = __Block_byref_object_dispose__69;
  v20 = 0;
  children = [(SKUITracklistViewElement *)self children];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __34__SKUITracklistViewElement_header__block_invoke;
  v14[3] = &unk_2781FEA48;
  v14[4] = &v15;
  [children enumerateObjectsUsingBlock:v14];

  v12 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v12;
}

void __34__SKUITracklistViewElement_header__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 elementType] == 48)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (NSArray)sections
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUITracklistViewElement *)v3 sections:v4];
      }
    }
  }

  sections = self->_sections;
  if (!sections)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = self->_sections;
    self->_sections = v12;

    children = [(SKUITracklistViewElement *)self children];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __36__SKUITracklistViewElement_sections__block_invoke;
    v17[3] = &unk_2781FEA70;
    v17[4] = self;
    [children enumerateObjectsUsingBlock:v17];

    sections = self->_sections;
  }

  v15 = [(NSMutableArray *)sections count];
  if (v15)
  {
    v15 = self->_sections;
  }

  return v15;
}

void __36__SKUITracklistViewElement_sections__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 108)
  {
    [*(*(a1 + 32) + 280) addObject:v3];
  }
}

- (NSArray)tracks
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUITracklistViewElement *)v3 tracks:v4];
      }
    }
  }

  tracks = self->_tracks;
  if (!tracks)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = self->_tracks;
    self->_tracks = v12;

    children = [(SKUITracklistViewElement *)self children];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __34__SKUITracklistViewElement_tracks__block_invoke;
    v17[3] = &unk_2781FEA70;
    v17[4] = self;
    [children enumerateObjectsUsingBlock:v17];

    tracks = self->_tracks;
  }

  v15 = [(NSMutableArray *)tracks count];
  if (v15)
  {
    v15 = self->_tracks;
  }

  return v15;
}

void __34__SKUITracklistViewElement_tracks__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 146)
  {
    [*(*(a1 + 32) + 288) addObject:v3];
  }
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUITracklistViewElement *)v5 applyUpdatesWithElement:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v17.receiver = self;
  v17.super_class = SKUITracklistViewElement;
  v13 = [(SKUIViewElement *)&v17 applyUpdatesWithElement:elementCopy];

  if (elementCopy != self || [v13 updateType])
  {
    sections = self->_sections;
    self->_sections = 0;

    tracks = self->_tracks;
    self->_tracks = 0;
  }

  return v13;
}

- (int64_t)pageComponentType
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUITracklistViewElement *)v2 pageComponentType:v3];
      }
    }
  }

  return 23;
}

@end