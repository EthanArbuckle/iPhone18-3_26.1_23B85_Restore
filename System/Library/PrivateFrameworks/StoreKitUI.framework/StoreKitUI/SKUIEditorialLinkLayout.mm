@interface SKUIEditorialLinkLayout
- (CGSize)sizeForLinkAtIndex:(int64_t)a3;
- (CGSize)totalSize;
- (SKUIEditorialLinkLayout)initWithLayoutRequest:(id)a3;
- (void)dealloc;
- (void)enumerateLinesUsingBlock:(id)a3;
@end

@implementation SKUIEditorialLinkLayout

- (SKUIEditorialLinkLayout)initWithLayoutRequest:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEditorialLinkLayout initWithLayoutRequest:];
  }

  v43.receiver = self;
  v43.super_class = SKUIEditorialLinkLayout;
  v5 = [(SKUIEditorialLinkLayout *)&v43 init];
  if (v5)
  {
    [v4 width];
    v5->_totalSize.width = v6;
    v7 = [v4 links];
    v8 = [v7 copy];
    links = v5->_links;
    v5->_links = v8;

    v10 = [(NSArray *)v5->_links count];
    if (v10 >= 1)
    {
      v11 = v10;
      v12 = malloc_type_malloc(16 * v10, 0x1000040451B5BE8uLL);
      v5->_sizes = v12;
      if (v12)
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v14 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [v13 setObject:v14 forKey:*MEMORY[0x277D740A8]];

        v15 = SKUIBundle();
        v16 = [MEMORY[0x277D75348] blackColor];
        v17 = SKUILinkArrowImage(v15, v16);

        [v17 size];
        v19 = v18;
        v21 = v20;
        v22 = 0;
        v23 = 0;
        v24 = 0.0;
        do
        {
          v25 = [(NSArray *)v5->_links objectAtIndex:v23];
          v26 = [v25 title];
          [v26 sizeWithAttributes:v13];
          v28 = v27;
          v30 = v29;

          v31 = v30;
          v32 = ceilf(v31);
          if (v21 >= v32)
          {
            v32 = v21;
          }

          p_width = &v5->_sizes[v22].width;
          v34 = v19 + v28 + 3.0;
          *p_width = ceilf(v34);
          p_width[1] = v32;
          if (v24 < v32)
          {
            v24 = v32;
          }

          ++v23;
          ++v22;
        }

        while (v11 != v23);
        v39 = 0;
        v40 = &v39;
        v41 = 0x2020000000;
        v42 = 0;
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __49__SKUIEditorialLinkLayout_initWithLayoutRequest___block_invoke;
        v38[3] = &unk_2781FB018;
        v38[4] = &v39;
        [(SKUIEditorialLinkLayout *)v5 enumerateLinesUsingBlock:v38];
        v35 = v40[3];
        v36 = v24 * v35;
        if (v35 >= 2)
        {
          v36 = v36 + ((v35 - 1) * 8.0);
        }

        v5->_totalSize.height = v36;
        _Block_object_dispose(&v39, 8);
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  sizes = self->_sizes;
  if (sizes)
  {
    free(sizes);
  }

  v4.receiver = self;
  v4.super_class = SKUIEditorialLinkLayout;
  [(SKUIEditorialLinkLayout *)&v4 dealloc];
}

- (void)enumerateLinesUsingBlock:(id)a3
{
  v14 = a3;
  v4 = [(NSArray *)self->_links count];
  v6 = v14;
  if (v4 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v5.n128_u64[0] = 0;
    do
    {
      width = self->_sizes[v10].width;
      v12 = self->_totalSize.width;
      if (width >= v12)
      {
        if (v9)
        {
          (v6)[2](v14, v8, v9, v7, v5);
          v6 = v14;
          ++v7;
          v8 = v10;
        }

        (v6)[2](v14, v8, 1, v7, v5);
        v6 = v14;
        v9 = 0;
        ++v10;
        ++v7;
        v5.n128_u64[0] = 0;
        v8 = v10;
      }

      else
      {
        v13 = v5.n128_f64[0] + width;
        if (v5.n128_f64[0] + width >= v12)
        {
          (v6[2])(v14, v8, v10 - v8, v7);
          v6 = v14;
          v9 = 0;
          v13 = self->_sizes[v10].width;
          ++v7;
          v8 = v10;
        }

        else
        {
          ++v9;
        }

        if (v10 == v4 - 1)
        {
          v9 = v4 - v8;
          (v6[2])(v14, v8, v4 - v8, v7);
          v6 = v14;
        }

        v5.n128_f64[0] = v13 + 15.0;
        ++v10;
      }
    }

    while (v10 != v4);
  }
}

- (CGSize)sizeForLinkAtIndex:(int64_t)a3
{
  if (!self->_sizes || [(NSArray *)self->_links count]<= a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Invalid index: %ld", a3}];
  }

  v5 = &self->_sizes[a3];
  width = v5->width;
  height = v5->height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)totalSize
{
  width = self->_totalSize.width;
  height = self->_totalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithLayoutRequest:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIEditorialLinkLayout initWithLayoutRequest:]";
}

@end