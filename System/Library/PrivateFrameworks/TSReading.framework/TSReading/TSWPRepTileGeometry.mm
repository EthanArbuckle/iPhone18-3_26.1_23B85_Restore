@interface TSWPRepTileGeometry
- (BOOL)updateWithLayer:(id)a3 scale:(double)a4 columns:(id)a5;
- (CGRect)tileGeometryRectWithLayer:(id)a3 atIndex:(unint64_t)a4 mask:(unsigned int *)a5;
- (CGSize)maxTileSize;
- (NSString)description;
- (id).cxx_construct;
- (void)dealloc;
- (void)tileGeometryAddVisibileIndices:(id)a3 withLayer:(id)a4 visibleBounds:(CGRect)a5;
- (void)tileGeometryConfigureWithLayer:(id)a3 tileLayer:(id)a4 atIndex:(unint64_t)a5;
@end

@implementation TSWPRepTileGeometry

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSWPRepTileGeometry;
  [(TSWPRepTileGeometry *)&v2 dealloc];
}

- (void)tileGeometryAddVisibileIndices:(id)a3 withLayer:(id)a4 visibleBounds:(CGRect)a5
{
  begin = self->_infos.__begin_;
  if (begin != self->_infos.__end_)
  {
    height = a5.size.height;
    width = a5.size.width;
    y = a5.origin.y;
    x = a5.origin.x;
    v12 = 0;
    do
    {
      v13.origin.x = x;
      v13.origin.y = y;
      v13.size.width = width;
      v13.size.height = height;
      if (CGRectIntersectsRect(v13, *begin))
      {
        [a3 addIndex:v12];
      }

      ++v12;
      begin = (begin + 40);
    }

    while (begin != self->_infos.__end_);
  }
}

- (CGRect)tileGeometryRectWithLayer:(id)a3 atIndex:(unint64_t)a4 mask:(unsigned int *)a5
{
  begin = self->_infos.__begin_;
  v7 = (begin + 40 * a4);
  if (0xCCCCCCCCCCCCCCCDLL * ((self->_infos.__end_ - begin) >> 3) <= a4)
  {
    v7 = MEMORY[0x277CBF3A0];
  }

  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  [a3 bounds];
  if (a5)
  {
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v19 = v15;
    v34.origin.x = v8;
    v34.origin.y = v9;
    v34.size.width = v10;
    v34.size.height = v11;
    MinX = CGRectGetMinX(v34);
    v35.origin.x = v16;
    v35.origin.y = v17;
    v35.size.width = v18;
    v35.size.height = v19;
    v30 = CGRectGetMinX(v35);
    v36.origin.x = v8;
    v36.origin.y = v9;
    v36.size.width = v10;
    v36.size.height = v11;
    MaxX = CGRectGetMaxX(v36);
    v37.origin.x = v16;
    v37.origin.y = v17;
    v37.size.width = v18;
    v37.size.height = v19;
    v20 = CGRectGetMaxX(v37);
    if (MinX == v30)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    if (MaxX == v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = MinX == v30;
    }

    v38.origin.x = v8;
    v38.origin.y = v9;
    v38.size.width = v10;
    v38.size.height = v11;
    MinY = CGRectGetMinY(v38);
    v39.origin.x = v16;
    v39.origin.y = v17;
    v39.size.width = v18;
    v39.size.height = v19;
    if (MinY == CGRectGetMinY(v39))
    {
      v22 |= 4u;
    }

    v40.origin.x = v8;
    v40.origin.y = v9;
    v40.size.width = v10;
    v40.size.height = v11;
    MaxY = CGRectGetMaxY(v40);
    v41.origin.x = v16;
    v41.origin.y = v17;
    v41.size.width = v18;
    v41.size.height = v19;
    v23 = CGRectGetMaxY(v41);
    v24 = v22 | 8;
    if (MaxY != v23)
    {
      v24 = v22;
    }

    *a5 = v24;
  }

  v25 = v8;
  v26 = v9;
  v27 = v10;
  v28 = v11;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)tileGeometryConfigureWithLayer:(id)a3 tileLayer:(id)a4 atIndex:(unint64_t)a5
{
  begin = self->_infos.__begin_;
  if (0xCCCCCCCCCCCCCCCDLL * ((self->_infos.__end_ - begin) >> 3) > a5)
  {
    v7 = CGColorRetain(*(begin + 5 * a5 + 4));
    v8 = v7;
    if (v7)
    {
      CopyWithAlpha = CGColorCreateCopyWithAlpha(v7, 1.0);
    }

    else
    {
      CopyWithAlpha = 0;
    }

    v10 = MEMORY[0x277CDA0D8];
    if (CopyWithAlpha)
    {
      v10 = MEMORY[0x277CDA0B8];
    }

    [a4 setContentsFormat:*v10];
    [a4 setContentsMultiplyColor:CopyWithAlpha];
    if (CopyWithAlpha)
    {
      CGColorRelease(CopyWithAlpha);
    }

    CGColorRelease(v8);
  }
}

- (BOOL)updateWithLayer:(id)a3 scale:(double)a4 columns:(id)a5
{
  v7 = *MEMORY[0x277D85DE8];
  [a3 bounds];
  TSWPRepBoundsAnalyzer::TSWPRepBoundsAnalyzer(v6, v8);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = [v3 stringWithFormat:@"<%@ %p", NSStringFromClass(v4), self];
  begin = self->_infos.__begin_;
  if (begin != self->_infos.__end_)
  {
    v7 = 0;
    do
    {
      [(NSString *)v5 appendFormat:@" %lu:%@ %@", v7, NSStringFromCGRect(*begin), *(begin + 4)];
      begin = (begin + 40);
      ++v7;
    }

    while (begin != self->_infos.__end_);
  }

  [(NSString *)v5 appendString:@">"];
  return v5;
}

- (CGSize)maxTileSize
{
  width = self->_maxTileSize.width;
  height = self->_maxTileSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end