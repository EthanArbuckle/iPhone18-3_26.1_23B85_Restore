@interface TSDAbstractLayout
- (BOOL)shouldSnapWhileResizing;
- (CGAffineTransform)transform;
- (CGAffineTransform)transformForFindHighlightsInRoot;
- (CGAffineTransform)transformInParent;
- (CGAffineTransform)transformInRoot;
- (CGPoint)lastInterimPosition;
- (CGRect)alignmentFrame;
- (CGRect)alignmentFrameForInlineLayout;
- (CGRect)alignmentFrameForInlineLayoutInRoot;
- (CGRect)alignmentFrameInParent;
- (CGRect)alignmentFrameInRoot;
- (CGRect)clipRect;
- (CGRect)clippedRectInRoot:(CGRect)root;
- (CGRect)frame;
- (CGRect)frameInParent;
- (CGRect)frameInRoot;
- (CGRect)insertionFrame;
- (CGRect)insertionFrameInRoot;
- (CGRect)rectInParent:(CGRect)parent;
- (CGRect)rectInRoot:(CGRect)root;
- (CGRect)selectionHighlightFrameFittingParentWidthForChildWithFrame:(CGRect)frame;
- (NSArray)layoutsForProvidingGuidesForChildLayouts;
- (NSArray)visibleGeometries;
- (TSDAbstractLayout)init;
- (TSDAbstractLayout)parentLayoutForProvidingGuides;
- (TSDAbstractLayout)root;
- (TSDLayoutGeometry)geometryInParent;
- (TSDLayoutGeometry)geometryInRoot;
- (UIEdgeInsets)captionEdgeInsets;
- (double)interimPositionX;
- (double)interimPositionY;
- (id)childLayoutContainingPossibleDescendentLayout:(id)layout;
- (id)geometryInRoot:(id)root;
- (void)addChild:(id)child;
- (void)addLayoutsInRect:(CGRect)rect toArray:(id)array deep:(BOOL)deep;
- (void)dealloc;
- (void)exchangeChildAtIndex:(unint64_t)index withChildAtIndex:(unint64_t)atIndex;
- (void)fixTransformFromInterimPosition;
- (void)insertChild:(id)child above:(id)above;
- (void)insertChild:(id)child atIndex:(unint64_t)index;
- (void)insertChild:(id)child below:(id)below;
- (void)offsetGeometryBy:(CGPoint)by;
- (void)p_fixTransformFromInterimPosition:(CGPoint)position interimPositionXSet:(BOOL)set interimPositionYSet:(BOOL)ySet;
- (void)removeFromParent;
- (void)replaceChild:(id)child with:(id)with;
- (void)setChildren:(id)children;
- (void)setInterimPositionX:(double)x;
- (void)setInterimPositionY:(double)y;
@end

@implementation TSDAbstractLayout

- (TSDAbstractLayout)init
{
  v8.receiver = self;
  v8.super_class = TSDAbstractLayout;
  v2 = [(TSDAbstractLayout *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(TSDLayoutGeometry);
    geometry = v2->_geometry;
    v2->_geometry = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    children = v2->_children;
    v2->_children = v5;
  }

  return v2;
}

- (void)dealloc
{
  objc_msgSend_makeObjectsPerformSelector_(self->_children, a2, sel_p_clearParentPointerForDealloc);
  v3.receiver = self;
  v3.super_class = TSDAbstractLayout;
  [(TSDAbstractLayout *)&v3 dealloc];
}

- (TSDLayoutGeometry)geometryInParent
{
  v4 = objc_msgSend_geometry(self, a2, v2);
  v7 = v4;
  if (self->_parent)
  {
    v8 = objc_msgSend_mutableCopy(v4, v5, v6);
    v11 = objc_msgSend_geometry(self->_parent, v9, v10);
    v14 = v11;
    if (v11)
    {
      objc_msgSend_transform(v11, v12, v13);
    }

    else
    {
      memset(v16, 0, sizeof(v16));
    }

    objc_msgSend_transformBy_(v8, v12, v16);
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

- (TSDLayoutGeometry)geometryInRoot
{
  v4 = objc_msgSend_geometry(self, a2, v2);
  v6 = objc_msgSend_geometryInRoot_(self, v5, v4);

  return v6;
}

- (id)geometryInRoot:(id)root
{
  v4 = objc_msgSend_mutableCopy(root, a2, root);
  v5 = self->_parent;
  if (v5)
  {
    v8 = v5;
    do
    {
      v9 = objc_msgSend_geometry(v8, v6, v7, v17, v18, v19);
      v12 = v9;
      if (v9)
      {
        objc_msgSend_transform(v9, v10, v11);
      }

      else
      {
        v18 = 0u;
        v19 = 0u;
        v17 = 0u;
      }

      objc_msgSend_transformBy_(v4, v10, &v17);

      v15 = objc_msgSend_parent(v8, v13, v14);

      v8 = v15;
    }

    while (v15);
  }

  return v4;
}

- (NSArray)visibleGeometries
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_geometry(self, a2, v2);
  v7[0] = v3;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v7, 1);

  return v5;
}

- (CGAffineTransform)transform
{
  v5 = objc_msgSend_geometry(self, a3, v3);
  if (v5)
  {
    v9 = v5;
    objc_msgSend_transform(v5, v6, v7);
    v5 = v9;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (CGAffineTransform)transformInParent
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v6 = objc_msgSend_geometry(self, a3, v3);
  v9 = v6;
  if (v6)
  {
    objc_msgSend_transform(v6, v7, v8);
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  result = self->_parent;
  if (result)
  {
    v13 = objc_msgSend_geometry(result, v10, v11);
    v16 = v13;
    if (v13)
    {
      objc_msgSend_transform(v13, v14, v15);
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    v17 = *&retstr->c;
    *&v19.a = *&retstr->a;
    *&v19.c = v17;
    *&v19.tx = *&retstr->tx;
    CGAffineTransformConcat(&v21, &v19, &t2);
    v18 = *&v21.c;
    *&retstr->a = *&v21.a;
    *&retstr->c = v18;
    *&retstr->tx = *&v21.tx;
  }

  return result;
}

- (CGAffineTransform)transformInRoot
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v6 = objc_msgSend_geometry(self, a3, v3);
  v9 = v6;
  if (v6)
  {
    objc_msgSend_transform(v6, v7, v8);
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  result = self->_parent;
  if (result)
  {
    v13 = result;
    do
    {
      v14 = objc_msgSend_geometry(v13, v11, v12);
      v16 = v14;
      if (v14)
      {
        v17 = *&retstr->c;
        v22[0] = *&retstr->a;
        v22[1] = v17;
        v22[2] = *&retstr->tx;
        objc_msgSend_transformByConcatenatingTransformTo_(v14, v15, v22);
      }

      else
      {
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
      }

      v18 = v24;
      *&retstr->a = v23;
      *&retstr->c = v18;
      *&retstr->tx = v25;

      v21 = objc_msgSend_parent(v13, v19, v20);

      v13 = v21;
    }

    while (v21);
  }

  return result;
}

- (CGAffineTransform)transformForFindHighlightsInRoot
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  objc_msgSend_transform(self, a3, v3);
  v6 = self->_parent;
  selfCopy = self;
  v9 = selfCopy;
  if (v6)
  {
    do
    {
      objc_msgSend_transformForFindHighlightsOfChild_(v6, v8, v9);
      v10 = *&retstr->c;
      *&v16.a = *&retstr->a;
      *&v16.c = v10;
      *&v16.tx = *&retstr->tx;
      CGAffineTransformConcat(&v18, &v16, &t2);
      v11 = *&v18.c;
      *&retstr->a = *&v18.a;
      *&retstr->c = v11;
      *&retstr->tx = *&v18.tx;
      v12 = v6;

      v6 = objc_msgSend_parent(v12, v13, v14);

      v9 = v12;
    }

    while (v6);
  }

  else
  {
    v12 = selfCopy;
  }

  return result;
}

- (CGRect)frame
{
  v3 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_frame(v3, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)insertionFrame
{
  objc_msgSend_alignmentFrame(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  objc_msgSend_captionEdgeInsets(self, v12, v13);
  v15 = v7 + v14;
  v18 = v9 - (v16 + v17);
  v20 = v11 - (v14 + v19);
  v21 = v5 + v16;
  v22 = v15;
  v23 = v18;
  result.size.height = v20;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)insertionFrameInRoot
{
  objc_msgSend_alignmentFrameInRoot(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  objc_msgSend_captionEdgeInsets(self, v12, v13);
  v15 = v7 + v14;
  v18 = v9 - (v16 + v17);
  v20 = v11 - (v14 + v19);
  v21 = v5 + v16;
  v22 = v15;
  v23 = v18;
  result.size.height = v20;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)frameInParent
{
  v4 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_size(v4, v5, v6);
  TSURectWithSize();
  objc_msgSend_rectInParent_(self, v7, v8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)frameInRoot
{
  v4 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_size(v4, v5, v6);
  TSURectWithSize();
  objc_msgSend_rectInRoot_(self, v7, v8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)rectInParent:(CGRect)parent
{
  height = parent.size.height;
  width = parent.size.width;
  y = parent.origin.y;
  x = parent.origin.x;
  objc_msgSend_transformInParent(self, a2, v3);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  return CGRectApplyAffineTransform(v9, &v8);
}

- (CGRect)rectInRoot:(CGRect)root
{
  height = root.size.height;
  width = root.size.width;
  y = root.origin.y;
  x = root.origin.x;
  objc_msgSend_transformInRoot(self, a2, v3);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  return CGRectApplyAffineTransform(v9, &v8);
}

- (CGRect)clipRect
{
  v3 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_size(v3, v4, v5);
  TSURectWithSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)clippedRectInRoot:(CGRect)root
{
  height = root.size.height;
  width = root.size.width;
  y = root.origin.y;
  x = root.origin.x;
  if (!CGRectIsNull(root))
  {
    objc_msgSend_clipRect(self, v8, v9);
    v37.origin.x = v10;
    v37.origin.y = v11;
    v37.size.width = v12;
    v37.size.height = v13;
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v33 = CGRectIntersection(v32, v37);
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
    if (self->_parent)
    {
      if (!CGRectIsNull(v33))
      {
        parent = self->_parent;
        v17 = objc_msgSend_geometry(self, v14, v15);
        v20 = v17;
        if (v17)
        {
          objc_msgSend_transform(v17, v18, v19);
        }

        else
        {
          memset(&v31, 0, sizeof(v31));
        }

        v34.origin.x = x;
        v34.origin.y = y;
        v34.size.width = width;
        v34.size.height = height;
        v35 = CGRectApplyAffineTransform(v34, &v31);
        objc_msgSend_clippedRectInRoot_(parent, v21, v22, v35.origin.x, v35.origin.y, v35.size.width, v35.size.height);
        x = v23;
        y = v24;
        width = v25;
        height = v26;
      }
    }
  }

  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)selectionHighlightFrameFittingParentWidthForChildWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  objc_msgSend_frame(self, a2, v3);
  v29.origin.x = v8;
  v29.origin.y = v9;
  v29.size.width = v10;
  v29.size.height = v11;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v24 = CGRectUnion(v23, v29);
  v12 = v24.origin.x;
  v13 = v24.origin.y;
  v14 = v24.size.width;
  v15 = v24.size.height;
  MinX = CGRectGetMinX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MinY = CGRectGetMinY(v25);
  v26.origin.x = v12;
  v26.origin.y = v13;
  v26.size.width = v14;
  v26.size.height = v15;
  v16 = CGRectGetWidth(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v17 = CGRectGetHeight(v27);
  v19 = MinY;
  v18 = MinX;
  v20 = v16;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (TSDAbstractLayout)parentLayoutForProvidingGuides
{
  v3 = objc_msgSend_parent(self, a2, v2);
  if (objc_msgSend_providesGuidesForChildLayouts(v3, v4, v5))
  {
    v8 = v3;
  }

  else
  {
    v8 = objc_msgSend_parentLayoutForProvidingGuides(v3, v6, v7);
  }

  v9 = v8;

  return v9;
}

- (NSArray)layoutsForProvidingGuidesForChildLayouts
{
  if ((objc_msgSend_providesGuidesForChildLayouts(self, a2, v2) & 1) == 0)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSDAbstractLayout layoutsForProvidingGuidesForChildLayouts]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDAbstractLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 208, 0, "This method should never be called on a layout which returns NO for providesGuidesForChildLayouts.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  return 0;
}

- (TSDAbstractLayout)root
{
  if (self->_parent)
  {
    selfCopy = objc_msgSend_root(self->_parent, a2, v2);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)setChildren:(id)children
{
  v59 = *MEMORY[0x277D85DE8];
  childrenCopy = children;
  children = self->_children;
  if (children != childrenCopy && (objc_msgSend_isEqual_(children, v4, childrenCopy) & 1) == 0)
  {
    if (childrenCopy)
    {
      v9 = objc_alloc(MEMORY[0x277CBEB98]);
      v11 = objc_msgSend_initWithArray_(v9, v10, childrenCopy);
    }

    else
    {
      v11 = 0;
    }

    v12 = objc_msgSend_count(childrenCopy, v7, v8);
    if (v12 != objc_msgSend_count(v11, v13, v14))
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSDAbstractLayout setChildren:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDAbstractLayout.m");
      v20 = objc_opt_class();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v19, 238, 0, "Adding duplicate layout(s) as children of %@", v20);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v24 = self->_children;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v53, v58, 16);
    if (v26)
    {
      v28 = v26;
      v29 = *v54;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v54 != v29)
          {
            objc_enumerationMutation(v24);
          }

          v31 = *(*(&v53 + 1) + 8 * i);
          if ((objc_msgSend_containsObject_(v11, v27, v31) & 1) == 0)
          {
            objc_msgSend_setParent_(v31, v27, 0);
          }
        }

        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v53, v58, 16);
      }

      while (v28);
    }

    if (self->_children)
    {
      v32 = objc_alloc(MEMORY[0x277CBEB98]);
      v34 = objc_msgSend_initWithArray_(v32, v33, self->_children);
    }

    else
    {
      v34 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v35 = childrenCopy;
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v49, v57, 16);
    if (v37)
    {
      v39 = v37;
      v40 = *v50;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v50 != v40)
          {
            objc_enumerationMutation(v35);
          }

          v42 = *(*(&v49 + 1) + 8 * j);
          if ((objc_msgSend_containsObject_(v34, v38, v42) & 1) == 0)
          {
            objc_msgSend_removeFromParent(v42, v38, v43);
            objc_msgSend_setParent_(v42, v44, self);
          }
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v49, v57, 16);
      }

      while (v39);
    }

    if (childrenCopy)
    {
      childrenCopy = v35;
      v47 = objc_msgSend_mutableCopy(v35, v45, v46);
    }

    else
    {
      childrenCopy = MEMORY[0x277CBEBF8];
      v47 = objc_msgSend_mutableCopy(MEMORY[0x277CBEBF8], v45, v46);
    }

    v48 = self->_children;
    self->_children = v47;
  }
}

- (void)removeFromParent
{
  objc_opt_class();
  v3 = TSUDynamicCast();
  if (v3)
  {
    v4 = v3;
    objc_msgSend_replaceChild_with_(self->_parent, v3, v3, 0);
    v3 = v4;
  }
}

- (void)addChild:(id)child
{
  childCopy = child;
  children = self->_children;
  if (children)
  {
    v7 = objc_msgSend_count(children, v4, v5);
    objc_msgSend_insertChild_atIndex_(self, v8, childCopy, v7);
  }

  else
  {
    objc_msgSend_insertChild_atIndex_(self, v4, childCopy, 0);
  }
}

- (void)insertChild:(id)child atIndex:(unint64_t)index
{
  childCopy = child;
  if (childCopy)
  {
    v16 = childCopy;
    v9 = objc_msgSend_parent(childCopy, v7, v8);

    if (v9)
    {
      objc_msgSend_removeFromParent(v16, v10, v11);
    }

    children = self->_children;
    if (!children)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14 = self->_children;
      self->_children = v13;

      children = self->_children;
    }

    objc_msgSend_insertObject_atIndex_(children, v10, v16, index);
    objc_msgSend_setParent_(v16, v15, self);
    childCopy = v16;
  }
}

- (void)insertChild:(id)child below:(id)below
{
  childCopy = child;
  belowCopy = below;
  children = self->_children;
  if (children)
  {
    v9 = objc_msgSend_indexOfObjectIdenticalTo_(children, v6, belowCopy);
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_insertChild_atIndex_(self, v10, childCopy, v9);
    }
  }
}

- (void)insertChild:(id)child above:(id)above
{
  childCopy = child;
  aboveCopy = above;
  children = self->_children;
  if (children)
  {
    v9 = objc_msgSend_indexOfObjectIdenticalTo_(children, v6, aboveCopy);
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_insertChild_atIndex_(self, v10, childCopy, v9 + 1);
    }
  }
}

- (void)replaceChild:(id)child with:(id)with
{
  childCopy = child;
  withCopy = with;
  children = self->_children;
  if (children)
  {
    v9 = objc_msgSend_indexOfObjectIdenticalTo_(children, v6, childCopy);
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v9;
      objc_msgSend_removeObjectAtIndex_(self->_children, v10, v9);
      objc_msgSend_setParent_(childCopy, v12, 0);
      if (withCopy)
      {
        objc_msgSend_insertChild_atIndex_(self, v13, withCopy, v11);
      }
    }
  }
}

- (void)exchangeChildAtIndex:(unint64_t)index withChildAtIndex:(unint64_t)atIndex
{
  children = self->_children;
  if (!children)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDAbstractLayout exchangeChildAtIndex:withChildAtIndex:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDAbstractLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 322, 0, "invalid nil value for '%{public}s'", "_children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    children = self->_children;
  }

  if (index != atIndex && children)
  {
    v15 = objc_msgSend_count(children, a2, index);
    if (v15 > index && v15 > atIndex)
    {
      v26 = self->_children;

      objc_msgSend_exchangeObjectAtIndex_withObjectAtIndex_(v26, v16, index, atIndex);
    }

    else
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSDAbstractLayout exchangeChildAtIndex:withChildAtIndex:]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDAbstractLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 325, 0, "bad index");

      v25 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v25, v23, v24);
    }
  }
}

- (void)addLayoutsInRect:(CGRect)rect toArray:(id)array deep:(BOOL)deep
{
  deepCopy = deep;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v47 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  objc_msgSend_frameForCulling(self, v12, v13);
  if (TSUIntersectsRect())
  {
    objc_msgSend_addObject_(arrayCopy, v14, self);
    if (deepCopy)
    {
      objc_msgSend_frameForCulling(self, v15, v16);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      v49 = CGRectIntersection(v48, v52);
      v17 = v49.origin.x;
      v18 = v49.origin.y;
      v19 = v49.size.width;
      v20 = v49.size.height;
      memset(&v45, 0, sizeof(v45));
      v23 = objc_msgSend_geometry(self, v21, v22);
      v26 = v23;
      if (v23)
      {
        objc_msgSend_transform(v23, v24, v25);
      }

      else
      {
        memset(&v44, 0, sizeof(v44));
      }

      CGAffineTransformInvert(&v45, &v44);

      v44 = v45;
      v50.origin.x = v17;
      v50.origin.y = v18;
      v50.size.width = v19;
      v50.size.height = v20;
      v51 = CGRectApplyAffineTransform(v50, &v44);
      v27 = v51.origin.x;
      v28 = v51.origin.y;
      v29 = v51.size.width;
      v30 = v51.size.height;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v33 = objc_msgSend_children(self, v31, v32, 0);
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v40, v46, 16);
      if (v35)
      {
        v37 = v35;
        v38 = *v41;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v41 != v38)
            {
              objc_enumerationMutation(v33);
            }

            objc_msgSend_addLayoutsInRect_toArray_deep_(*(*(&v40 + 1) + 8 * i), v36, arrayCopy, 1, v27, v28, v29, v30);
          }

          v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v40, v46, 16);
        }

        while (v37);
      }
    }
  }
}

- (CGRect)alignmentFrame
{
  v3 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_frame(v3, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)alignmentFrameInParent
{
  v3 = objc_msgSend_geometryInParent(self, a2, v2);
  objc_msgSend_frame(v3, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)alignmentFrameInRoot
{
  v4 = objc_msgSend_parent(self, a2, v2);

  objc_msgSend_alignmentFrame(self, v5, v6);
  x = v9;
  y = v11;
  width = v13;
  height = v15;
  if (v4)
  {
    v17 = objc_msgSend_parent(self, v7, v8);
    v20 = v17;
    if (v17)
    {
      objc_msgSend_transformInRoot(v17, v18, v19);
    }

    else
    {
      memset(&v25, 0, sizeof(v25));
    }

    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v27 = CGRectApplyAffineTransform(v26, &v25);
    x = v27.origin.x;
    y = v27.origin.y;
    width = v27.size.width;
    height = v27.size.height;
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)alignmentFrameForInlineLayout
{
  objc_msgSend_alignmentFrame(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  objc_msgSend_captionEdgeInsets(self, v12, v13);
  v15 = v7 + v14;
  v18 = v9 - (v16 + v17);
  v20 = v11 - (v14 + v19);
  v21 = v5 + v16;
  v22 = v15;
  v23 = v18;
  result.size.height = v20;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)alignmentFrameForInlineLayoutInRoot
{
  objc_msgSend_alignmentFrameForInlineLayout(self, a2, v2);
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  v14 = objc_msgSend_parent(self, v12, v13);
  v17 = v14;
  if (v14)
  {
    objc_msgSend_transformInRoot(v14, v15, v16);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v31 = CGRectApplyAffineTransform(v30, &v29);
    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
  }

  else
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSDAbstractLayout alignmentFrameForInlineLayoutInRoot]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDAbstractLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 384, 0, "invalid nil value for '%{public}s'", "parent");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (BOOL)shouldSnapWhileResizing
{
  objc_msgSend_transformInRoot(self, a2, v2);
  v6 = objc_msgSend_geometry(self, v4, v5);
  objc_msgSend_size(v6, v7, v8);
  v9 = TSUIsTransformAxisAlignedWithObjectSize();

  return v9;
}

- (double)interimPositionX
{
  x = self->_interimPosition.x;
  shouldUseCaptionEdgeInsetsInInterimPosition = objc_msgSend_shouldUseCaptionEdgeInsetsInInterimPosition(self, a2, v2);
  v8 = 0.0;
  if (shouldUseCaptionEdgeInsetsInInterimPosition)
  {
    objc_msgSend_captionEdgeInsets(self, v6, v7);
  }

  return x + v8;
}

- (void)setInterimPositionX:(double)x
{
  shouldUseCaptionEdgeInsetsInInterimPosition = objc_msgSend_shouldUseCaptionEdgeInsetsInInterimPosition(self, a2, v3);
  v9 = 0.0;
  if (shouldUseCaptionEdgeInsetsInInterimPosition)
  {
    objc_msgSend_captionEdgeInsets(self, v7, v8);
  }

  self->_interimPosition.x = x - v9;
  self->_interimPositionXSet = 1;
}

- (double)interimPositionY
{
  y = self->_interimPosition.y;
  shouldUseCaptionEdgeInsetsInInterimPosition = objc_msgSend_shouldUseCaptionEdgeInsetsInInterimPosition(self, a2, v2);
  v8 = 0.0;
  if (shouldUseCaptionEdgeInsetsInInterimPosition)
  {
    objc_msgSend_captionEdgeInsets(self, v6, v7, 0.0);
  }

  return y + v8;
}

- (void)setInterimPositionY:(double)y
{
  shouldUseCaptionEdgeInsetsInInterimPosition = objc_msgSend_shouldUseCaptionEdgeInsetsInInterimPosition(self, a2, v3);
  v9 = 0.0;
  if (shouldUseCaptionEdgeInsetsInInterimPosition)
  {
    objc_msgSend_captionEdgeInsets(self, v7, v8, 0.0);
  }

  self->_interimPosition.y = y - v9;
  self->_interimPositionYSet = 1;
}

- (void)fixTransformFromInterimPosition
{
  objc_msgSend_p_fixTransformFromInterimPosition_interimPositionXSet_interimPositionYSet_(self, a2, self->_interimPositionXSet, self->_interimPositionYSet, self->_interimPosition.x, self->_interimPosition.y);
  self->_lastInterimPosition = self->_interimPosition;
  *&self->_lastInterimPositionXSet = *&self->_interimPositionXSet;
  self->_interimPosition = *MEMORY[0x277CBF348];
  *&self->_interimPositionXSet = 0;
}

- (void)p_fixTransformFromInterimPosition:(CGPoint)position interimPositionXSet:(BOOL)set interimPositionYSet:(BOOL)ySet
{
  ySetCopy = ySet;
  y = position.y;
  v8 = 0.0;
  v9 = 0.0;
  if (set)
  {
    x = position.x;
    objc_msgSend_alignmentFrameOriginForFixingInterimPosition(self, a2, set);
    v9 = x - position.x;
  }

  if (ySetCopy)
  {
    objc_msgSend_alignmentFrameOriginForFixingInterimPosition(self, a2, set, position.x);
    v8 = y - v11;
  }

  objc_msgSend_offsetGeometryBy_(self, a2, set, v9, v8);
}

- (void)offsetGeometryBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  if (by.x != *MEMORY[0x277CBF348] || by.y != *(MEMORY[0x277CBF348] + 8))
  {
    v12 = objc_msgSend_geometry(self, a2, v3);
    v10 = objc_msgSend_geometryByTranslatingBy_(v12, v8, v9, x, y);
    objc_msgSend_setGeometry_(self, v11, v10);
  }
}

- (UIEdgeInsets)captionEdgeInsets
{
  v2 = *MEMORY[0x277D81428];
  v3 = *(MEMORY[0x277D81428] + 8);
  v4 = *(MEMORY[0x277D81428] + 16);
  v5 = *(MEMORY[0x277D81428] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)childLayoutContainingPossibleDescendentLayout:(id)layout
{
  layoutCopy = layout;
  v7 = layoutCopy;
  if (layoutCopy)
  {
    v8 = layoutCopy;
    do
    {
      v9 = objc_msgSend_parent(v8, v5, v6);

      if (v9 == self)
      {
        break;
      }

      v10 = objc_msgSend_parent(v8, v5, v6);

      v8 = v10;
    }

    while (v10);
  }

  else
  {
    v8 = 0;
  }

  v11 = objc_msgSend_parent(v8, v5, v6);

  if (v11 == self)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGPoint)lastInterimPosition
{
  x = self->_lastInterimPosition.x;
  y = self->_lastInterimPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end