@interface PUGridRenderedStrip
- (CGSize)interItemSpacing;
- (CGSize)itemSize;
- (PUGridRenderedStrip)initWithFrame:(CGRect)a3;
- (PUGridRenderedStripDataSource)dataSource;
- (PUSectionedGridLayout)layout;
- (_NSRange)visualItemRange;
- (int64_t)numberOfColumns;
- (void)_render;
- (void)_setNeedsRendering:(BOOL)a3;
- (void)_updateExtendedContents;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setContentExtenderType:(unint64_t)a3;
- (void)setDataSource:(id)a3;
- (void)setExtendsToTop:(BOOL)a3;
- (void)setInterItemSpacing:(CGSize)a3;
- (void)setItemContentScale:(double)a3;
- (void)setItemSize:(CGSize)a3;
- (void)setLayout:(id)a3;
- (void)setLeftContentInset:(double)a3;
- (void)setVisualSectionIndex:(int64_t)a3 andVisualItemRange:(_NSRange)a4;
@end

@implementation PUGridRenderedStrip

- (PUSectionedGridLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

- (PUGridRenderedStripDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (_NSRange)visualItemRange
{
  p_visualItemRange = &self->_visualItemRange;
  location = self->_visualItemRange.location;
  length = p_visualItemRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (CGSize)interItemSpacing
{
  width = self->_interItemSpacing.width;
  height = self->_interItemSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)itemSize
{
  width = self->_itemSize.width;
  height = self->_itemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PUGridRenderedStrip;
  [(PUGridRenderedStrip *)&v6 applyLayoutAttributes:v4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 extendsTopContent])
  {
    [(PUGridRenderedStrip *)self setExtendsToTop:1];
    v5 = [(PUGridRenderedStrip *)self topContentView];
    [v5 setAlpha:0.0];
  }
}

- (void)_updateExtendedContents
{
  v3 = [(PUGridRenderedStrip *)self layer];
  v8 = [v3 contents];

  v5 = v8;
  if (v8)
  {
    if (self->_extendsToTop)
    {
      v6 = [(UIView *)self->_topContentView layer];
      [v6 setContents:v8];

      v5 = v8;
    }

    sideExtendedContentView = self->__sideExtendedContentView;
    if (sideExtendedContentView)
    {
      v7 = [(UIView *)sideExtendedContentView layer];
      [v7 setContents:v8];

      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](sideExtendedContentView, v5);
}

- (void)_render
{
  [(PUGridRenderedStrip *)self bounds];
  v4 = v3;
  v6 = v5;
  PLPhysicalScreenScale();
  v8 = v7;
  [(PUGridRenderedStrip *)self itemContentScale];
  v10 = v8 * v9;
  v11 = [(PUGridRenderedStrip *)self backgroundColorValue];
  v12 = [(PUGridRenderedStrip *)self layout];
  v13 = [(PUGridRenderedStrip *)self dataSource];
  v14 = [(PUGridRenderedStrip *)self _shouldReverseLayoutDirection];
  v15 = llround(v4 * v10);
  v16 = llround(v6 * v10);
  [(PUGridRenderedStrip *)self itemSize];
  v18 = v17;
  v20 = v19;
  v21 = llround(v10 * v17);
  v22 = llround(v10 * v19);
  [(PUGridRenderedStrip *)self interItemSpacing];
  v24 = v23;
  [(PUGridRenderedStrip *)self leftContentInset];
  v67 = llround(v10 * v25);
  if ((v15 - v67) >= v21 && v16 >= v22)
  {
    v27 = v16;
    size = 2 * v16 * v15;
    v28 = mmap(0, size, 3, 4097, 1207959552, 0);
    v94 = 0;
    v95 = &v94;
    v96 = 0x2020000000;
    v97 = 0;
    [(PUGridRenderedStrip *)self interItemSpacing];
    visualSectionIndex = self->_visualSectionIndex;
    if (visualSectionIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      length = self->_visualItemRange.length;
      if (length)
      {
        v30 = v29;
        v61 = v13;
        v31 = [(PUGridRenderedStrip *)self numberOfColumns];
        height = v27;
        if (v31 < 1)
        {
          v33 = 0.0;
        }

        else
        {
          v32 = 0;
          v33 = 0.0;
          do
          {
            if (v12)
            {
              [v12 layoutItemSizeForColumn:v32];
            }

            else
            {
              [(PUGridRenderedStrip *)self itemSize];
            }

            v35 = v33 + v34;
            if (v32 >= v31 - 1)
            {
              v33 = v35;
            }

            else
            {
              v33 = v30 + v35;
            }

            ++v32;
          }

          while (v31 != v32);
        }

        v36 = v15;
        v37 = 2 * v15;
        v38 = mmap(0, v37, 3, 4097, 1207959552, 0);
        v39 = v38;
        v60 = (v10 * v33);
        width = v36;
        if (v36 >= 1)
        {
          v40 = v38 + 1;
          v41 = v36;
          do
          {
            *(v40 - 1) = v11;
            v40 += 2;
            --v41;
          }

          while (v41);
        }

        v57 = llround(v10 * v24);
        if (v67 >= 1 && height >= 1)
        {
          v42 = height;
          v43 = v95[3];
          do
          {
            memcpy(&v28[v43], v39, 2 * v67);
            v43 = v95[3] + v37;
            v95[3] = v43;
            --v42;
          }

          while (v42);
        }

        if (length >= v31)
        {
          v44 = v31;
        }

        else
        {
          v44 = length;
        }

        location = self->_visualItemRange.location;
        v93[0] = 0;
        v93[1] = v93;
        v93[2] = 0x2020000000;
        v93[3] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __30__PUGridRenderedStrip__render__block_invoke;
        aBlock[3] = &unk_1E7B77338;
        v81 = v18;
        v82 = v20;
        v83 = v10;
        v76 = v12;
        v84 = (v10 * v33);
        v85 = v57;
        v79 = v93;
        v80 = &v94;
        v86 = v67;
        v87 = v22;
        v88 = v28;
        v89 = v39;
        v90 = v37;
        v92 = v14 ^ 1;
        v45 = v61;
        v77 = v45;
        v78 = self;
        v91 = height;
        v46 = _Block_copy(aBlock);
        v71 = 0;
        v72 = &v71;
        v73 = 0x2020000000;
        v74 = 0;
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __30__PUGridRenderedStrip__render__block_invoke_2;
        v68[3] = &unk_1E7B77360;
        v47 = v46;
        v69 = v47;
        v70 = &v71;
        [v45 renderedStrip:self enumerateAssetsForVisualSection:visualSectionIndex inVisualItemRange:location usingBlock:{v44, v68}];
        if (v72[3] != v44)
        {
          v56 = [MEMORY[0x1E696AAA8] currentHandler];
          [v56 handleFailureInMethod:a2 object:self file:@"PUGridRenderedStrip.m" lineNumber:388 description:{@"Bad iteration over real items. Rendered %ld items but expected %ld", v72[3], v44}];

          v44 = v72[3];
        }

        for (; v44 < v31; v72[3] = v44)
        {
          (*(v47 + 2))(v47, v44, 0);
          v44 = v72[3] + 1;
        }

        v48 = width - (v60 + v67);
        if (v48 >= 1)
        {
          v49 = 2 * (v60 + v67);
          v95[3] = v49;
          if (height >= 1)
          {
            v50 = 2 * v48;
            v51 = height;
            do
            {
              memset(&v28[v49], v11, v50);
              v49 = v95[3] + v37;
              v95[3] = v49;
              --v51;
            }

            while (v51);
          }
        }

        munmap(v39, v37);
        mach_vm_protect(*MEMORY[0x1E69E9A60], v28, size, 1, 1);
        v52 = CGDataProviderCreateWithData(0, v28, size, _UnmapBuffer);
        v13 = v61;
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        v54 = CGImageCreate(width, height, 5uLL, 0x10uLL, v37, DeviceRGB, 0x1006u, v52, 0, 1, kCGRenderingIntentDefault);
        CGDataProviderRelease(v52);
        CGColorSpaceRelease(DeviceRGB);
        v55 = [(PUGridRenderedStrip *)self layer];
        [v55 setContents:v54];

        [(PUGridRenderedStrip *)self _updateExtendedContents];
        CGImageRelease(v54);

        _Block_object_dispose(&v71, 8);
        _Block_object_dispose(v93, 8);
      }
    }

    _Block_object_dispose(&v94, 8);
  }
}

void __30__PUGridRenderedStrip__render__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 layoutItemSizeForColumn:a2];
    v9 = v8;
  }

  else
  {
    v7 = *(a1 + 72);
    v9 = *(a1 + 80);
  }

  v10 = *(a1 + 88);
  v11 = llround(v7 * v10);
  v12 = *(*(*(a1 + 56) + 8) + 24);
  if (*(a1 + 96) - v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = *(a1 + 96) - v12;
  }

  if (a2 >= 1)
  {
    v14 = *(a1 + 104);
    if (v14)
    {
      *(*(*(a1 + 64) + 8) + 24) = 2 * (v12 + v14 * (a2 - 1) + *(a1 + 112));
      if (*(a1 + 120) >= 1)
      {
        v15 = 0;
        do
        {
          memcpy((*(a1 + 128) + *(*(*(a1 + 64) + 8) + 24)), *(a1 + 136), 2 * *(a1 + 104));
          *(*(*(a1 + 64) + 8) + 24) += *(a1 + 144);
          ++v15;
        }

        while (v15 < *(a1 + 120));
      }
    }
  }

  v16 = *(*(*(a1 + 56) + 8) + 24) + *(a1 + 104) * a2 + *(a1 + 112);
  if ((*(a1 + 160) & 1) == 0)
  {
    v16 = *(a1 + 96) - (v16 + v13);
  }

  *(*(*(a1 + 64) + 8) + 24) = 2 * v16;
  if (v5)
  {
    v31 = 0;
    v32 = 0;
    v30 = 0;
    v17 = [*(a1 + 40) renderedStrip:*(a1 + 48) imageDataForAsset:v5 imageWidth:&v32 + 4 imageHeight:&v32 bytesPerRow:&v31 + 4 dataWidth:&v31 dataHeight:&v30 + 4 imageDataOffset:&v30];
    if (v17)
    {
      v18 = llround(v9 * v10);
      v29 = SHIDWORD(v32) <= v13 ? 0 : (SHIDWORD(v32) - v13 + ((SHIDWORD(v32) - v13) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
      v20 = __OFSUB__(v32, v18);
      v21 = v32 - v18;
      v22 = ((v21 < 0) ^ v20) | (v21 == 0) ? 0 : v21 / 2;
      v23 = *(a1 + 152);
      if (v23 >= 1)
      {
        v24 = 0;
        v25 = v22 * SHIDWORD(v31);
        do
        {
          v26 = v32;
          if (v23 > v32 || v13 > SHIDWORD(v32))
          {
            bzero((*(a1 + 128) + *(*(*(a1 + 64) + 8) + 24)), 2 * v13);
            v26 = v32;
          }

          if (v22 + v24 < v26)
          {
            v28 = SHIDWORD(v32);
            if (v13 < SHIDWORD(v32))
            {
              v28 = v13;
            }

            memcpy((*(a1 + 128) + *(*(*(a1 + 64) + 8) + 24)), ([v17 bytes] + v25 + v29), 2 * v28);
          }

          *(*(*(a1 + 64) + 8) + 24) += *(a1 + 144);
          v25 += SHIDWORD(v31);
          ++v24;
          v23 = *(a1 + 152);
        }

        while (v24 < v23);
      }
    }
  }

  else if (*(a1 + 152) >= 1)
  {
    v19 = 0;
    do
    {
      memcpy((*(a1 + 128) + *(*(*(a1 + 64) + 8) + 24)), *(a1 + 136), 2 * v13);
      *(*(*(a1 + 64) + 8) + 24) += *(a1 + 144);
      ++v19;
    }

    while (v19 < *(a1 + 152));
  }

  *(*(*(a1 + 56) + 8) + 24) += v13;
}

uint64_t __30__PUGridRenderedStrip__render__block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (int64_t)numberOfColumns
{
  [(PUGridRenderedStrip *)self bounds];
  Width = CGRectGetWidth(v14);
  [(PUGridRenderedStrip *)self leftContentInset];
  v5 = Width - v4;
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_layout);
    v8 = [v7 numberOfColumnsForWidth:v5];

    return v8;
  }

  else
  {
    [(PUGridRenderedStrip *)self interItemSpacing];
    v11 = v10;
    v12 = v5 + v10;
    [(PUGridRenderedStrip *)self itemSize];
    return (v12 / (v11 + v13));
  }
}

- (void)setLayout:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_layout, obj);
    [(PUGridRenderedStrip *)self _setNeedsRendering:1];
    v5 = obj;
  }
}

- (void)setVisualSectionIndex:(int64_t)a3 andVisualItemRange:(_NSRange)a4
{
  if (self->_visualSectionIndex != a3 || (a4.location == self->_visualItemRange.location ? (v5 = a4.length == self->_visualItemRange.length) : (v5 = 0), !v5))
  {
    self->_visualSectionIndex = a3;
    p_visualItemRange = &self->_visualItemRange;
    self->_visualItemRange = a4;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (WeakRetained && self->_visualSectionIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      length = p_visualItemRange->length;

      if (length)
      {

        [(PUGridRenderedStrip *)self _setNeedsRendering:1];
      }
    }

    else
    {
    }
  }
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_storeWeak(&self->_dataSource, obj);
    if (obj && self->_visualSectionIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      length = self->_visualItemRange.length;

      v5 = obj;
      if (!length)
      {
        goto LABEL_8;
      }

      [(PUGridRenderedStrip *)self _setNeedsRendering:1];
    }

    else
    {
    }

    v5 = obj;
  }

LABEL_8:
}

- (void)setLeftContentInset:(double)a3
{
  if (self->_leftContentInset != a3)
  {
    self->_leftContentInset = a3;
    [(PUGridRenderedStrip *)self _setNeedsRendering:1];
  }
}

- (void)setInterItemSpacing:(CGSize)a3
{
  if (a3.width != self->_interItemSpacing.width || a3.height != self->_interItemSpacing.height)
  {
    self->_interItemSpacing = a3;
    [(PUGridRenderedStrip *)self _setNeedsRendering:1];
  }
}

- (void)setItemContentScale:(double)a3
{
  if (self->_itemContentScale != a3)
  {
    self->_itemContentScale = a3;
    [(PUGridRenderedStrip *)self _setNeedsRendering:1];
  }
}

- (void)setItemSize:(CGSize)a3
{
  if (a3.width != self->_itemSize.width || a3.height != self->_itemSize.height)
  {
    self->_itemSize = a3;
    [(PUGridRenderedStrip *)self _setNeedsRendering:1];
  }
}

- (void)_setNeedsRendering:(BOOL)a3
{
  if (self->__needsRendering != a3)
  {
    self->__needsRendering = a3;
    if (a3)
    {
      [(PUGridRenderedStrip *)self setNeedsLayout];
    }
  }
}

- (void)setContentExtenderType:(unint64_t)a3
{
  if (self->_contentExtenderType != a3)
  {
    self->_contentExtenderType = a3;
    sideExtendedContentView = self->__sideExtendedContentView;
    if (a3)
    {
      if (!sideExtendedContentView)
      {
        v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v6 = self->__sideExtendedContentView;
        self->__sideExtendedContentView = v5;

        [(PUGridRenderedStrip *)self addSubview:self->__sideExtendedContentView];
        v7 = [(UIView *)self->__sideExtendedContentView layer];
        [v7 setContentsScaling:@"repeat"];

        v8 = self->__sideExtendedContentView;
        PLPhysicalScreenScale();
        v10 = v9;
        [(PUGridRenderedStrip *)self itemContentScale];
        [(UIView *)v8 setContentScaleFactor:v10 * v11];
      }

      [(PUGridRenderedStrip *)self setNeedsLayout];

      [(PUGridRenderedStrip *)self _updateExtendedContents];
    }

    else
    {
      [(UIView *)sideExtendedContentView removeFromSuperview];
      v12 = self->__sideExtendedContentView;
      self->__sideExtendedContentView = 0;
    }
  }
}

- (void)setExtendsToTop:(BOOL)a3
{
  if (self->_extendsToTop != a3)
  {
    self->_extendsToTop = a3;
    topContentView = self->_topContentView;
    if (!a3 || topContentView)
    {
      [(UIView *)topContentView removeFromSuperview];
      v8 = self->_topContentView;
      self->_topContentView = 0;
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v6 = self->_topContentView;
      self->_topContentView = v5;

      [(UIView *)self->_topContentView setClipsToBounds:1];
      v7 = [(UIView *)self->_topContentView layer];
      [v7 setContentsGravity:*MEMORY[0x1E6979DF0]];

      [(PUGridRenderedStrip *)self addSubview:self->_topContentView];

      [(PUGridRenderedStrip *)self _updateExtendedContents];
    }
  }
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = PUGridRenderedStrip;
  [(PUGridRenderedStrip *)&v16 layoutSubviews];
  [(PUGridRenderedStrip *)self bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  contentExtenderType = self->_contentExtenderType;
  if (contentExtenderType == 1)
  {
    v13 = 3.0;
  }

  else
  {
    v12 = v3;
    if (contentExtenderType != 2)
    {
      goto LABEL_6;
    }

    v13 = 5.0;
  }

  v12 = v3 + CGRectGetWidth(*&v3) * -2.0;
  v17.origin.x = v7;
  v17.origin.y = v8;
  v17.size.width = v9;
  v17.size.height = v10;
  v5 = CGRectGetWidth(v17) * v13;
LABEL_6:
  [(UIView *)self->__sideExtendedContentView setFrame:v12, v8, v5, v10];
  if (self->_topContentView)
  {
    v18.origin.x = v7;
    v18.origin.y = v8;
    v18.size.width = v9;
    v18.size.height = v10;
    v14 = 3.0 / CGRectGetHeight(v18);
    v15 = [(UIView *)self->_topContentView layer];
    [v15 setContentsRect:{0.0, 0.0, 1.0, v14}];
    [v15 setAnchorPoint:{0.5, 0.0}];
    [(UIView *)self->_topContentView setFrame:v7, v8, v9, 3.0];
  }

  if ([(PUGridRenderedStrip *)self _needsRendering])
  {
    [(PUGridRenderedStrip *)self _render];
    [(PUGridRenderedStrip *)self _setNeedsRendering:0];
  }
}

- (PUGridRenderedStrip)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PUGridRenderedStrip;
  v3 = [(PUGridRenderedStrip *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PUGridRenderedStrip *)v3 layer];
    [v5 setAllowsGroupOpacity:0];
  }

  return v4;
}

@end