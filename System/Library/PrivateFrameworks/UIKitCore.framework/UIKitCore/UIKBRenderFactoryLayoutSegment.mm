@interface UIKBRenderFactoryLayoutSegment
+ (id)segmentWithTraits:(id)traits;
- (BOOL)containsPoint:(CGPoint)point inRect:(CGRect)rect withKeyplane:(id)keyplane;
- (BOOL)shouldOverlayTraitsForKey:(id)key;
- (UIKBRenderFactoryLayoutSegment)initWithTraits:(id)traits;
- (void)addLayoutRect:(CGRect)rect asTriangle:(unint64_t)triangle;
- (void)addRelativeLayoutRectFromEdge:(unint64_t)edge ofCachedKey:(id)key;
@end

@implementation UIKBRenderFactoryLayoutSegment

+ (id)segmentWithTraits:(id)traits
{
  traitsCopy = traits;
  v5 = [[self alloc] initWithTraits:traitsCopy];

  return v5;
}

- (UIKBRenderFactoryLayoutSegment)initWithTraits:(id)traits
{
  traitsCopy = traits;
  v9.receiver = self;
  v9.super_class = UIKBRenderFactoryLayoutSegment;
  v6 = [(UIKBRenderFactoryLayoutSegment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_traits, traits);
    v7->_rectCount = 0;
    v7->_edgeCount = 0;
  }

  return v7;
}

- (void)addLayoutRect:(CGRect)rect asTriangle:(unint64_t)triangle
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  rectCount = self->_rectCount;
  if (rectCount < 10 || ([MEMORY[0x1E696AAA8] currentHandler], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"UIKBRenderFactory.m", 189, @"Too many layout rects"), v13, rectCount = self->_rectCount, rectCount <= 9))
  {
    v11 = (self + 32 * rectCount);
    v11[2] = x;
    v11[3] = y;
    v11[4] = width;
    v11[5] = height;
    self->_triangleCorners[rectCount] = triangle;
    self->_rectCount = rectCount + 1;
  }
}

- (void)addRelativeLayoutRectFromEdge:(unint64_t)edge ofCachedKey:(id)key
{
  keyCopy = key;
  edgeCount = self->_edgeCount;
  if (edgeCount < 10 || ([MEMORY[0x1E696AAA8] currentHandler], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"UIKBRenderFactory.m", 199, @"Too many layout edges"), v10, edgeCount = self->_edgeCount, edgeCount <= 9))
  {
    v9 = &self->super.isa + edgeCount;
    v9[53] = edge;
    objc_storeStrong(v9 + 63, key);
    ++self->_edgeCount;
  }
}

- (BOOL)shouldOverlayTraitsForKey:(id)key
{
  keyCopy = key;
  v4 = [keyCopy dynamicLayout] && (objc_msgSend(keyCopy, "displayType") == 21 || objc_msgSend(keyCopy, "displayType") == 18 || objc_msgSend(keyCopy, "displayType") == 3 || objc_msgSend(keyCopy, "displayType") == 5 || objc_msgSend(keyCopy, "displayType") == 26 || objc_msgSend(keyCopy, "displayType") == 4 || objc_msgSend(keyCopy, "displayType") == 53 || objc_msgSend(keyCopy, "displayType") == 32 || objc_msgSend(keyCopy, "displayType") == 33 || objc_msgSend(keyCopy, "interactionType") == 44 || objc_msgSend(keyCopy, "interactionType") == 41 || objc_msgSend(keyCopy, "interactionType") == 38 || objc_msgSend(keyCopy, "interactionType") == 9 || objc_msgSend(keyCopy, "interactionType") == 10 || objc_msgSend(keyCopy, "interactionType") == 14 || objc_msgSend(keyCopy, "interactionType") == 12 || objc_msgSend(keyCopy, "interactionType") == 17 || (objc_msgSend(keyCopy, "usesControlKeyAppearance") & 1) != 0);

  return v4;
}

- (BOOL)containsPoint:(CGPoint)point inRect:(CGRect)rect withKeyplane:(id)keyplane
{
  height = rect.size.height;
  width = rect.size.width;
  x = rect.origin.x;
  y = rect.origin.y;
  v7 = point.y;
  v8 = point.x;
  v63 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  rectCount = self->_rectCount;
  v55 = height;
  if (rectCount)
  {
    if (rectCount >= 1)
    {
      v12 = 0;
      v13 = 24;
      do
      {
        v14 = x + width * *(self + v13 - 8);
        v15 = y + height * *(&self->super.isa + v13);
        v16 = width * *(&self->_rectCount + v13);
        v17 = height * *(&self->_rects[0].origin.x + v13);
        v18 = self->_triangleCorners[v12];
        v66.origin.x = v14;
        v66.origin.y = v15;
        v66.size.width = v16;
        v66.size.height = v17;
        v64.x = v8;
        v64.y = v7;
        if (CGRectContainsPoint(v66, v64))
        {
          if (!v18)
          {
            goto LABEL_14;
          }

          if ((v18 & 4) != 0)
          {
            v19 = v8 / v16;
LABEL_10:
            v68.origin.x = v14;
            v68.origin.y = v15;
            v68.size.width = v16;
            v68.size.height = v17;
            v20 = v19 + (CGRectGetMaxY(v68) - v7) / v17;
            height = v55;
            if (v20 <= 1.0)
            {
              goto LABEL_14;
            }

            goto LABEL_11;
          }

          if ((v18 & 8) != 0)
          {
            v67.origin.x = v14;
            v67.origin.y = v15;
            v67.size.width = v16;
            v67.size.height = v17;
            v19 = (CGRectGetMaxX(v67) - v8) / v16;
            goto LABEL_10;
          }
        }

LABEL_11:
        ++v12;
        v13 += 32;
      }

      while (v12 < self->_rectCount);
    }

    v21 = 0;
    if (!keyplaneCopy)
    {
      goto LABEL_54;
    }
  }

  else
  {
LABEL_14:
    v21 = 1;
    if (!keyplaneCopy)
    {
      goto LABEL_54;
    }
  }

  cache = [keyplaneCopy cache];

  if (!cache)
  {
    goto LABEL_54;
  }

  edgeCount = self->_edgeCount;
  if (!edgeCount)
  {
    v46 = 1;
    goto LABEL_45;
  }

  if (edgeCount < 1)
  {
    v46 = 0;
    goto LABEL_45;
  }

  v52 = self->_edgeCount;
  v53 = v21;
  v54 = rectCount;
  v24 = 0;
  edges = self->_edges;
  cachedKeyNames = self->_cachedKeyNames;
  do
  {
    v27 = edges[v24];
    v28 = cachedKeyNames[v24];
    v29 = [keyplaneCopy cachedKeysByKeyName:v28];
    v30 = v29;
    if (!v29 || (v60 = 0u, v61 = 0u, v58 = 0u, v59 = 0u, (v31 = [v29 countByEnumeratingWithState:&v58 objects:v62 count:16]) == 0))
    {

      goto LABEL_40;
    }

    v32 = v31;
    v33 = 0;
    v34 = *v59;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v59 != v34)
        {
          objc_enumerationMutation(v30);
        }

        [*(*(&v58 + 1) + 8 * i) frame];
        v37 = v36;
        MinY = v38;
        MaxX = v40;
        MaxY = v42;
        if (v27 > 3)
        {
          if (v27 == 4)
          {
            v75.origin.x = x;
            v75.origin.y = y;
            v75.size.width = width;
            v75.size.height = height;
            MinY = CGRectGetMinY(v75);
            v76.origin.x = v37;
            v76.origin.y = MinY;
            v76.size.width = MaxX;
            v76.size.height = MaxY;
            MaxY = CGRectGetMaxY(v76);
          }

          else if (v27 == 8)
          {
            v71.origin.x = x;
            v71.origin.y = y;
            v71.size.width = width;
            v71.size.height = height;
            v72.origin.x = CGRectGetMinX(v71);
            v37 = v72.origin.x;
            v72.origin.y = MinY;
            v72.size.width = MaxX;
            v72.size.height = MaxY;
            MaxX = CGRectGetMaxX(v72);
          }
        }

        else
        {
          if (v27 == 1)
          {
            v73.origin.x = x;
            v73.origin.y = y;
            v73.size.width = width;
            v73.size.height = height;
            v45 = CGRectGetMaxY(v73);
            v74.origin.x = v37;
            v74.origin.y = MinY;
            v74.size.width = MaxX;
            v74.size.height = MaxY;
            MaxY = v45 - CGRectGetMinY(v74);
          }

          else
          {
            if (v27 != 2)
            {
              goto LABEL_35;
            }

            v69.origin.x = x;
            v69.origin.y = y;
            v69.size.width = width;
            v69.size.height = height;
            v44 = CGRectGetMaxX(v69);
            v70.origin.x = v37;
            v70.origin.y = MinY;
            v70.size.width = MaxX;
            v70.size.height = MaxY;
            MaxX = v44 - CGRectGetMinX(v70);
          }

          height = v55;
        }

LABEL_35:
        v77.origin.x = v37;
        v77.origin.y = MinY;
        v77.size.width = MaxX;
        v77.size.height = MaxY;
        v65.x = v8;
        v65.y = v7;
        v33 |= CGRectContainsPoint(v77, v65);
      }

      v32 = [v30 countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v32);

    cachedKeyNames = self->_cachedKeyNames;
    edges = self->_edges;
    if (v33)
    {
      v46 = 1;
      goto LABEL_44;
    }

LABEL_40:
    ++v24;
  }

  while (v24 < self->_edgeCount);
  v46 = 0;
LABEL_44:
  v21 = v53;
  rectCount = v54;
  edgeCount = v52;
LABEL_45:
  requireAllMatches = [(UIKBRenderFactoryLayoutSegment *)self requireAllMatches];
  if (edgeCount)
  {
    v48 = v46;
  }

  else
  {
    v48 = 0;
  }

  if (rectCount)
  {
    v49 = v21;
  }

  else
  {
    v49 = 0;
  }

  v50 = v49 | v48;
  if (requireAllMatches)
  {
    v21 &= v46;
  }

  else
  {
    v21 = v50;
  }

LABEL_54:

  return v21;
}

@end