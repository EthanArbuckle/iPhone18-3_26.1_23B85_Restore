@interface TSWPShapeLayout
- (BOOL)allowsLastLineTruncation:(id)truncation;
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)isInvisibleAutosizingShape;
- (BOOL)resizeMayChangeAspectRatio;
- (BOOL)shrinkTextToFit;
- (BOOL)supportsRotation;
- (BOOL)textLayoutShouldLayoutVertically:(id)vertically;
- (CGAffineTransform)autosizedTransform;
- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)geometry;
- (CGAffineTransform)computeLayoutTransform;
- (CGPoint)autosizePositionOffset;
- (CGPoint)autosizePositionOffsetForFixedWidth:(BOOL)width height:(BOOL)height;
- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size;
- (CGRect)nonAutosizedFrameForTextLayout:(id)layout;
- (CGSize)adjustedInsets;
- (TSWPShapeLayout)initWithInfo:(id)info;
- (double)gapForColumnIndex:(unint64_t)index bodyWidth:(double)width;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width outWidth:(double *)outWidth outGap:(double *)gap;
- (double)widthForColumnIndex:(unint64_t)index bodyWidth:(double)width;
- (id)childSearchTargets;
- (id)children;
- (id)dependentLayouts;
- (id)dependentsOfTextLayout:(id)layout;
- (id)instructionalStorageForContainedStorage:(id)storage storageKind:(int)kind;
- (id)interiorWrapPath;
- (id)interiorWrapPolygon;
- (id)pathSource;
- (id)textWrapper;
- (unint64_t)columnCount;
- (unsigned)autosizeFlagsForTextLayout:(id)layout;
- (unsigned)cropLine:(CGRect)line lineSegmentRects:(CGRect)rects[128];
- (unsigned)maxLineCountForTextLayout:(id)layout;
- (unsigned)verticalAlignmentForTextLayout:(id)layout;
- (void)addChild:(id)child;
- (void)createContainedLayoutForEditing;
- (void)createContainedLayoutForInstructionalText;
- (void)dealloc;
- (void)destroyContainedLayoutForInstructionalText;
- (void)insertChild:(id)child above:(id)above;
- (void)insertChild:(id)child atIndex:(unint64_t)index;
- (void)insertChild:(id)child below:(id)below;
- (void)invalidateForAutosizingTextLayout:(id)layout;
- (void)invalidatePath;
- (void)invalidateSize;
- (void)processChangedProperty:(int)property;
- (void)replaceChild:(id)child with:(id)with;
- (void)setChildren:(id)children;
- (void)setGeometry:(id)geometry;
- (void)storage:(id)storage didChangeRange:(_NSRange)range delta:(int64_t)delta broadcastKind:(int)kind;
- (void)updateChildrenFromInfo;
- (void)willBeAddedToLayoutController:(id)controller;
- (void)willBeRemovedFromLayoutController:(id)controller;
@end

@implementation TSWPShapeLayout

- (TSWPShapeLayout)initWithInfo:(id)info
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout initWithInfo:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"), 48, @"info is wrong class for layout"}];
  }

  v12.receiver = self;
  v12.super_class = TSWPShapeLayout;
  v7 = [(TSDShapeLayout *)&v12 initWithInfo:info];
  v8 = v7;
  if (v7 && ![(TSDInfo *)[(TSDLayout *)v7 info] containedStorage])
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout initWithInfo:]"];
    [currentHandler2 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"), 51, @"invalid nil value for '%s'", "self.info.containedStorage"}];
  }

  return v8;
}

- (void)dealloc
{
  if (self->_observingStorage)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout dealloc]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"), 59, @"should have unregistered ourselves before dealloc"}];
  }

  [(TSDLayout *)self->_containedLayout setParent:0];

  self->_containedLayout = 0;
  self->_cachedInteriorWrapPolygon = 0;
  v5.receiver = self;
  v5.super_class = TSWPShapeLayout;
  [(TSDShapeLayout *)&v5 dealloc];
}

- (void)willBeAddedToLayoutController:(id)controller
{
  v6.receiver = self;
  v6.super_class = TSWPShapeLayout;
  [(TSDLayout *)&v6 willBeAddedToLayoutController:controller];
  if (!self->_observingStorage || (v4 = [MEMORY[0x277D6C290] currentHandler], v5 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSWPShapeLayout willBeAddedToLayoutController:]"), objc_msgSend(v4, "handleFailureInFunction:file:lineNumber:description:", v5, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"), 73, @"already observing the storage"), !self->_observingStorage))
  {
    [-[TSDInfo containedStorage](-[TSDLayout info](self "info")];
    self->_observingStorage = 1;
  }
}

- (void)willBeRemovedFromLayoutController:(id)controller
{
  v6.receiver = self;
  v6.super_class = TSWPShapeLayout;
  [(TSDLayout *)&v6 willBeRemovedFromLayoutController:controller];
  if (self->_observingStorage || (v4 = [MEMORY[0x277D6C290] currentHandler], v5 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSWPShapeLayout willBeRemovedFromLayoutController:]"), objc_msgSend(v4, "handleFailureInFunction:file:lineNumber:description:", v5, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"), 86, @"not observing the storage"), self->_observingStorage))
  {
    [-[TSDInfo containedStorage](-[TSDLayout info](self "info")];
    self->_observingStorage = 0;
  }
}

- (id)children
{
  v3[1] = *MEMORY[0x277D85DE8];
  if (!self->_containedLayout)
  {
    return 0;
  }

  v3[0] = self->_containedLayout;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
}

- (void)setChildren:(id)children
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout setChildren:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"];

  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:102 description:@"not supported"];
}

- (void)addChild:(id)child
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout addChild:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"];

  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:107 description:@"not supported"];
}

- (void)insertChild:(id)child atIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout insertChild:atIndex:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"];

  [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:112 description:@"not supported"];
}

- (void)insertChild:(id)child below:(id)below
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout insertChild:below:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"];

  [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:117 description:@"not supported"];
}

- (void)insertChild:(id)child above:(id)above
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout insertChild:above:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"];

  [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:122 description:@"not supported"];
}

- (void)replaceChild:(id)child with:(id)with
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout replaceChild:with:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"];

  [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:127 description:@"not supported"];
}

- (void)invalidateSize
{
  v5.receiver = self;
  v5.super_class = TSWPShapeLayout;
  [(TSDLayout *)&v5 invalidateSize];
  v3 = [(TSWPShapeLayout *)self autosizeFlagsForTextLayout:self->_containedLayout];
  if ((~v3 & 0xF) != 0)
  {
    v4 = v3;
    [(TSWPLayout *)self->_containedLayout invalidateSize];
    if (v4)
    {
      [(TSWPShapeLayout *)self invalidatePath];
    }
  }
}

- (void)invalidatePath
{
  v3.receiver = self;
  v3.super_class = TSWPShapeLayout;
  [(TSDShapeLayout *)&v3 invalidatePath];

  self->_cachedInteriorWrapPolygon = 0;
}

- (void)destroyContainedLayoutForInstructionalText
{
  if (([(TSDInfo *)[(TSDLayout *)self info] displaysInstructionalText]& 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout destroyContainedLayoutForInstructionalText]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"), 162, @"trying to destroy layout for instructional text when it is not present"}];
  }

  if ([(TSDInfo *)[(TSDLayout *)self info] displaysInstructionalText])
  {
    info = [(TSDLayout *)self->_containedLayout info];
    if (info != [(TSDInfo *)[(TSDLayout *)self info] containedStorage])
    {
      [(TSDLayout *)self->_containedLayout setParent:0];

      self->_containedLayout = 0;
    }
  }
}

- (void)createContainedLayoutForInstructionalText
{
  containedStorage = [(TSDInfo *)[(TSDLayout *)self info] containedStorage];
  if (-[TSDInfo displaysInstructionalText](-[TSDLayout info](self, "info"), "displaysInstructionalText") && ![containedStorage length])
  {
    containedLayout = self->_containedLayout;
    if ((!containedLayout || -[TSDLayout info](containedLayout, "info") == containedStorage) && (![-[TSDLayout layoutController](self "layoutController")] || objc_msgSend(objc_msgSend(-[TSDLayout layoutController](self, "layoutController"), "canvas"), "shouldShowInstructionalText")))
    {
      [(TSDDrawableLayout *)self invalidate];
      [(TSDLayout *)self->_containedLayout setParent:0];

      self->_containedLayout = 0;
      v5 = [containedStorage wpKind] == 5 ? 5 : 3;
      v6 = [(TSWPShapeLayout *)self instructionalStorageForContainedStorage:containedStorage storageKind:v5];
      [v6 setParentInfo:{objc_msgSend(containedStorage, "parentInfo")}];
      geometry = [(TSDInfo *)[(TSDLayout *)self info] geometry];
      v8 = objc_alloc([containedStorage layoutClass]);
      [geometry size];
      v9 = [v8 initWithInfo:v6 frame:TSDRectWithSize()];
      self->_containedLayout = v9;
      [(TSDLayout *)v9 setParent:self];
      if ([(TSWPShapeLayout *)self autosizes])
      {
        v10 = self->_containedLayout;

        [(TSWPShapeLayout *)self invalidateForAutosizingTextLayout:v10];
      }
    }
  }

  else
  {

    [(TSWPShapeLayout *)self createContainedLayoutForEditing];
  }
}

- (id)instructionalStorageForContainedStorage:(id)storage storageKind:(int)kind
{
  v4 = *&kind;
  v7 = [TSWPStorage alloc];
  context = [storage context];
  instructionalText = [(TSDInfo *)[(TSDLayout *)self info] instructionalText];
  stylesheet = [storage stylesheet];
  v11 = [storage paragraphStyleAtParIndex:0 effectiveRange:0];
  v12 = [storage listStyleAtCharIndex:0 effectiveRange:0];
  LODWORD(v15) = [storage writingDirectionForParagraphAtCharIndex:0];
  v13 = [(TSWPStorage *)v7 initWithContext:context string:instructionalText kind:v4 stylesheet:stylesheet paragraphStyle:v11 listStyle:v12 section:0 columnStyle:0 paragraphDirection:v15];

  return v13;
}

- (BOOL)isInvisibleAutosizingShape
{
  v3 = [(TSDInfo *)[(TSDLayout *)[(TSWPShapeLayout *)self containedLayout] info] length];
  v5.receiver = self;
  v5.super_class = TSWPShapeLayout;
  result = [(TSDShapeLayout *)&v5 isInvisibleAutosizingShape];
  if (v3)
  {
    return 0;
  }

  return result;
}

- (id)childSearchTargets
{
  info = [(TSDLayout *)self->_containedLayout info];
  if (info != [(TSDInfo *)[(TSDLayout *)self info] containedStorage])
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = TSWPShapeLayout;
  return [(TSDLayout *)&v5 childSearchTargets];
}

- (void)storage:(id)storage didChangeRange:(_NSRange)range delta:(int64_t)delta broadcastKind:(int)kind
{
  delegate = self->_delegate;
  if (!delegate || [(TSWPShapeLayoutDelegate *)delegate shapeLayoutShouldUpdateInstructionalText:self, range.location, range.length, delta, *&kind])
  {
    if ([(TSDInfo *)[(TSDLayout *)self info:storage] displaysInstructionalText])
    {
      [(TSWPShapeLayout *)self destroyContainedLayoutForInstructionalText];
    }

    [(TSWPShapeLayout *)self createContainedLayoutForInstructionalText];
  }

  v8 = self->_delegate;

  [(TSWPShapeLayoutDelegate *)v8 shapeLayoutDidChangeContainedStorage:self];
}

- (void)createContainedLayoutForEditing
{
  containedStorage = [(TSDInfo *)[(TSDLayout *)self info] containedStorage];
  containedLayout = self->_containedLayout;
  if (!containedLayout || [(TSDLayout *)containedLayout info]!= containedStorage)
  {
    [(TSDDrawableLayout *)self invalidate];
    [(TSDLayout *)self->_containedLayout setParent:0];

    self->_containedLayout = 0;
    v5 = objc_alloc([containedStorage layoutClass]);
    [(TSWPShapeLayout *)self nonAutosizedFrameForTextLayout:self->_containedLayout];
    v6 = [v5 initWithInfo:containedStorage frame:?];
    self->_containedLayout = v6;
    [(TSDLayout *)v6 setParent:self];
    if ([(TSWPShapeLayout *)self autosizes])
    {
      v7 = self->_containedLayout;

      [(TSWPShapeLayout *)self invalidateForAutosizingTextLayout:v7];
    }
  }
}

- (void)updateChildrenFromInfo
{
  containedLayout = self->_containedLayout;
  if (!containedLayout)
  {
    [(TSWPShapeLayout *)self createContainedLayoutForInstructionalText];
    containedLayout = self->_containedLayout;
  }

  [(TSDLayout *)containedLayout updateChildrenFromInfo];
}

- (id)interiorWrapPolygon
{
  result = self->_cachedInteriorWrapPolygon;
  if (!result)
  {
    interiorWrapPath = [(TSWPShapeLayout *)self interiorWrapPath];
    if ([(TSDInfo *)[(TSDLayout *)self info] textIsVertical])
    {
      [(TSDShapeLayout *)self pathBoundsWithoutStroke];
      memset(&v9, 0, sizeof(v9));
      CGAffineTransformMakeTranslation(&v9, 0.0, v5);
      v7 = v9;
      CGAffineTransformRotate(&v8, &v7, -1.57079633);
      v9 = v8;
      [interiorWrapPath transformUsingAffineTransform:&v8];
    }

    v6 = [[TSDWrapPolygon alloc] initWithPath:interiorWrapPath];
    self->_cachedInteriorWrapPolygon = v6;
    [(TSDWrapPolygon *)v6 setIntersectsSelf:0];
    return self->_cachedInteriorWrapPolygon;
  }

  return result;
}

- (id)interiorWrapPath
{
  v3 = [-[TSWPShapeLayout pathSource](self "pathSource")];
  objc_opt_class();
  [-[TSDShapeLayout shapeInfo](self "shapeInfo")];
  [objc_msgSend(TSUDynamicCast() valueForProperty:{146), "leftInset"}];
  v5 = v4;
  v6 = [-[TSDShapeLayout shapeInfo](self "shapeInfo")];
  v7 = v6;
  if (v6 && [v6 shouldRender])
  {
    [v7 width];
    v5 = v5 + v8 * 0.5;
  }

  if (v5 <= 0.0)
  {

    return [TSDBezierPath outsideEdgeOfBezierPath:v3];
  }

  else
  {
    join = [v7 join];

    return [v3 bezierPathByOffsettingPath:join joinStyle:-v5 withThreshold:1.0];
  }
}

- (id)textWrapper
{
  if (-[TSWPShapeLayout autosizes](self, "autosizes") || ([-[TSWPShapeLayout pathSource](self "pathSource")] & 1) != 0)
  {
    return 0;
  }

  return +[TSWPInteriorTextWrapController sharedInteriorTextWrapController];
}

- (unsigned)cropLine:(CGRect)line lineSegmentRects:(CGRect)rects[128]
{
  height = line.size.height;
  width = line.size.width;
  y = line.origin.y;
  x = line.origin.x;
  interiorWrapPolygon = [(TSWPShapeLayout *)self interiorWrapPolygon];

  return [TSWPTextWrapper splitLine:rects lineSegmentRects:interiorWrapPolygon polygon:0 type:0 skipHint:x, y, width, height];
}

- (unsigned)autosizeFlagsForTextLayout:(id)layout
{
  layoutInfoGeometry = [(TSDShapeLayout *)self layoutInfoGeometry];
  textIsVertical = [(TSDInfo *)[(TSDLayout *)self info] textIsVertical];
  heightValid = [layoutInfoGeometry heightValid];
  if (textIsVertical)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  if (textIsVertical)
  {
    v8 = 1;
  }

  else
  {
    v8 = 4;
  }

  if (heightValid)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if ([layoutInfoGeometry widthValid])
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  return v10 | v9;
}

- (unsigned)verticalAlignmentForTextLayout:(id)layout
{
  objc_opt_class();
  [-[TSDShapeLayout shapeInfo](self "shapeInfo")];
  v4 = TSUDynamicCast();
  if (v4)
  {

    LODWORD(v4) = [v4 intValueForProperty:149];
  }

  return v4;
}

- (void)invalidateForAutosizingTextLayout:(id)layout
{
  if (![(TSWPShapeLayout *)self autosizes])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout invalidateForAutosizingTextLayout:]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"), 437, @"should call only when autosizing"}];
  }

  [(TSDShapeLayout *)self invalidateFrame];

  [(TSWPShapeLayout *)self invalidatePath];
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)layout
{
  shapeInfo = [-[TSDShapeLayout shapeInfo](self shapeInfo];
  if (![shapeInfo shouldRender])
  {
    shapeInfo = 0;
  }

  v5 = [(TSWPShapeLayout *)self autosizeFlagsForTextLayout:self->_containedLayout];
  [-[TSDShapeLayout layoutInfoGeometry](self "layoutInfoGeometry")];
  v6 = TSDRectWithSize();
  v8 = v7;
  width = v9;
  height = v11;
  if (!v5 && ![(TSDLayout *)self invalidGeometry])
  {
    [(TSDShapeLayout *)self boundsForStandardKnobs];
    v6 = TSDRectWithSize();
    v8 = v13;
    width = v14;
    height = v15;
  }

  [(TSDShapeLayout *)self pathBounds];
  x = TSDSubtractPoints(v6, v8, v16);
  y = v18;
  if (shapeInfo && [-[TSWPShapeLayout pathSource](self "pathSource")])
  {
    [shapeInfo width];
    v21 = ceil(v20 * 0.5);
    v22 = fmin(v21, width * 0.5);
    v23 = fmin(v21, height * 0.5);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v29 = CGRectInset(v28, v22, v23);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
  }

  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size
{
  if (![(TSWPShapeLayout *)self autosizes])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout autosizedFrameForTextLayout:textSize:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"), 478, @"should call only when autosizing"}];
  }

  v7 = [-[TSDShapeLayout shapeInfo](self "shapeInfo")];
  if (v7)
  {
    v8 = v7;
    if ([v7 shouldRender])
    {
      [v8 width];
    }
  }

  layoutInfoGeometry = [(TSDShapeLayout *)self layoutInfoGeometry];
  [layoutInfoGeometry size];
  [layoutInfoGeometry size];
  [layoutInfoGeometry widthValid];
  [layoutInfoGeometry heightValid];

  v10 = TSDRectWithSize();
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)dependentsOfTextLayout:(id)layout
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (![(TSWPShapeLayout *)self autosizes])
  {
    return 0;
  }

  v5[0] = self;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
}

- (BOOL)textLayoutShouldLayoutVertically:(id)vertically
{
  info = [(TSDLayout *)self info];

  return [(TSDInfo *)info textIsVertical];
}

- (BOOL)allowsLastLineTruncation:(id)truncation
{
  info = [(TSDLayout *)self info];

  return [(TSDInfo *)info allowsLastLineTruncation];
}

- (unsigned)maxLineCountForTextLayout:(id)layout
{
  info = [(TSDLayout *)self info];

  return [(TSDInfo *)info maxLineCount];
}

- (BOOL)supportsRotation
{
  if (![[(TSDAbstractLayout *)self parent] canRotateChildLayout:self])
  {
    [(TSDAbstractLayout *)self parent];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  v4.receiver = self;
  v4.super_class = TSWPShapeLayout;
  return [(TSDShapeLayout *)&v4 supportsRotation];
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  if ([(TSWPShapeLayout *)self autosizes])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = TSWPShapeLayout;
  return [(TSDLayout *)&v4 canAspectRatioLockBeChangedByUser];
}

- (BOOL)resizeMayChangeAspectRatio
{
  if ([(TSWPShapeLayout *)self autosizes])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = TSWPShapeLayout;
  return [(TSDLayout *)&v4 resizeMayChangeAspectRatio];
}

- (id)dependentLayouts
{
  v6.receiver = self;
  v6.super_class = TSWPShapeLayout;
  dependentLayouts = [(TSDLayout *)&v6 dependentLayouts];
  if (self->_containedLayout && ![(TSWPShapeLayout *)self autosizes])
  {
    if (dependentLayouts)
    {
      array = [dependentLayouts mutableCopy];
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    dependentLayouts = array;
    [array addObject:self->_containedLayout];
  }

  return dependentLayouts;
}

- (CGAffineTransform)computeLayoutTransform
{
  if ([(TSWPShapeLayout *)self autosizes])
  {
    memset(&v14, 0, sizeof(v14));
    if (self)
    {
      [(TSWPShapeLayout *)self autosizedTransform];
    }

    [-[TSDShapeLayout layoutInfoGeometry](self "layoutInfoGeometry")];
    t1 = v14;
    memset(&v13, 0, sizeof(v13));
    CGAffineTransformMakeTranslation(&t2, v5, v6);
    CGAffineTransformConcat(&v13, &t1, &t2);
    [(TSDShapeLayout *)self pathBounds];
    *&retstr->a = 0u;
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    t1 = v13;
    return CGAffineTransformTranslate(retstr, &t1, v7, v8);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TSWPShapeLayout;
    return [(CGAffineTransform *)&v10 computeLayoutTransform];
  }
}

- (CGAffineTransform)autosizedTransform
{
  result = [(TSDShapeLayout *)self layoutInfoGeometry];
  if (self)
  {

    return [(TSWPShapeLayout *)self autosizedTransformForInfoGeometry:result];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)geometry
{
  info = [(TSDLayout *)self info];
  result = [(TSDShapeLayout *)self pathBoundsWithoutStroke];
  if (info)
  {

    return [(TSDInfo *)info autosizedTransformForInfoGeometry:a4 size:v9, v10];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (CGPoint)autosizePositionOffset
{
  [(TSWPShapeLayout *)self autosizePositionOffsetForFixedWidth:1 height:1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)autosizePositionOffsetForFixedWidth:(BOOL)width height:(BOOL)height
{
  heightCopy = height;
  widthCopy = width;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  if (self)
  {
    [(TSWPShapeLayout *)self autosizedTransform];
  }

  [(TSDShapeLayout *)self pathBoundsWithoutStroke];
  v8 = v7;
  v10 = v9;
  v11 = [-[TSDShapeLayout layoutInfoGeometry](self "layoutInfoGeometry")];
  [v11 size];
  v13 = v12;
  v15 = v14;
  if (([v11 widthValid] & 1) == 0 && widthCopy)
  {
    [v11 setWidthValid:1];
    v13 = v8;
  }

  if (([v11 heightValid] & 1) == 0 && heightCopy)
  {
    [v11 setHeightValid:1];
    v15 = v10;
  }

  [v11 setSize:{v13, v15}];
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  if (self)
  {
    [(TSWPShapeLayout *)self autosizedTransformForInfoGeometry:v11, 0, 0, 0, 0, 0, 0];
  }

  v16 = *(MEMORY[0x277CBF348] + 8);
  v17 = vaddq_f64(v25, vmlaq_n_f64(vmulq_n_f64(v24, v16), v23, *MEMORY[0x277CBF348]));
  v18 = TSDSubtractPoints(v17.f64[0], v17.f64[1], vaddq_f64(v22, vmlaq_n_f64(vmulq_n_f64(v21, v16), v20, *MEMORY[0x277CBF348])).f64[0]);
  result.y = v19;
  result.x = v18;
  return result;
}

- (id)pathSource
{
  if (self->_containedLayout && [(TSWPShapeLayout *)self autosizes])
  {
    [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self->_containedLayout geometry] size];
    v4 = v3;
    v6 = v5;
    v7 = [-[TSDShapeLayout shapeInfo](self "shapeInfo")];
    if (v7)
    {
      v8 = v7;
      if ([v7 shouldRender])
      {
        [v8 width];
        v4 = v4 + v9;
        [v8 width];
        v6 = v6 + v10;
      }
    }

    v11 = [objc_msgSend(-[TSDShapeLayout shapeInfo](self "shapeInfo")];
    [v11 setNaturalSize:{v4, v6}];

    return v11;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TSWPShapeLayout;
    return [(TSDShapeLayout *)&v13 pathSource];
  }
}

- (void)processChangedProperty:(int)property
{
  v5.receiver = self;
  v5.super_class = TSWPShapeLayout;
  [(TSDShapeLayout *)&v5 processChangedProperty:?];
  if (property == 517)
  {
LABEL_4:

    self->_cachedInteriorWrapPolygon = 0;
    [(TSWPLayout *)self->_containedLayout invalidateSize];
    return;
  }

  if (property != 153)
  {
    if (property != 146)
    {
      return;
    }

    goto LABEL_4;
  }

  [(TSWPLayoutManager *)[(TSWPLayout *)self->_containedLayout layoutManager] clearTypesetterCache];
  [(TSWPLayout *)self->_containedLayout invalidateTextLayout];

  self->_cachedInteriorWrapPolygon = 0;
}

- (void)setGeometry:(id)geometry
{
  v21.receiver = self;
  v21.super_class = TSWPShapeLayout;
  [(TSDShapeLayout *)&v21 setGeometry:geometry];
  if (self->_containedLayout && [(TSWPShapeLayout *)self autosizes])
  {
    [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self->_containedLayout geometry] size];
    v5 = v4;
    v7 = v6;
    [(TSDShapeLayout *)self pathBounds];
    v9 = v8;
    v11 = v10;
    v12 = -v8;
    v13 = -v10;
    v14 = [-[TSDShapeLayout shapeInfo](self "shapeInfo")];
    if (v14)
    {
      v15 = v14;
      if ([v14 shouldRender])
      {
        [v15 width];
        v17 = v16 * 0.5;
        v12 = v17 - v9;
        v13 = v17 - v11;
      }
    }

    v18 = [TSDLayoutGeometry alloc];
    CGAffineTransformMakeTranslation(&v20, v12, v13);
    v19 = [(TSDLayoutGeometry *)v18 initWithSize:&v20 transform:v5, v7];
    [(TSDAbstractLayout *)self->_containedLayout setGeometry:v19];
  }
}

- (CGSize)adjustedInsets
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  padding = [(TSDInfo *)[(TSDLayout *)self info] padding];
  if (padding)
  {
    v5 = padding;
    [padding leftInset];
    v2 = v6;
    [v5 topInset];
    v3 = v7;
  }

  v8 = v2;
  v9 = v3;
  result.height = v9;
  result.width = v8;
  return result;
}

- (unint64_t)columnCount
{
  columns = [(TSDInfo *)[(TSDLayout *)self info] columns];
  if (!columns)
  {
    return 1;
  }

  return [columns columnCount];
}

- (double)widthForColumnIndex:(unint64_t)index bodyWidth:(double)width
{
  columns = [(TSDInfo *)[(TSDLayout *)self info] columns];
  if (!columns)
  {
    return 0.0;
  }

  [columns widthForColumnIndex:index bodyWidth:width];
  return result;
}

- (double)gapForColumnIndex:(unint64_t)index bodyWidth:(double)width
{
  columns = [(TSDInfo *)[(TSDLayout *)self info] columns];
  if (!columns)
  {
    return 0.0;
  }

  [columns gapForColumnIndex:index bodyWidth:width];
  return result;
}

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width outWidth:(double *)outWidth outGap:(double *)gap
{
  columns = [(TSDInfo *)[(TSDLayout *)self info] columns];
  padding = [(TSDInfo *)[(TSDLayout *)self info] padding];
  if (padding)
  {
    [padding leftInset];
    v14 = v13;
    if (columns)
    {
LABEL_3:
      [columns positionForColumnIndex:index bodyWidth:outWidth outWidth:gap outGap:{fmax(width + v14 * -2.0, 0.0)}];
      return v14 + v15;
    }
  }

  else
  {
    v14 = 0.0;
    if (columns)
    {
      goto LABEL_3;
    }
  }

  if (outWidth)
  {
    *outWidth = width + v14 * -2.0;
  }

  if (gap)
  {
    *gap = 0.0;
  }

  return v14;
}

- (BOOL)shrinkTextToFit
{
  info = [(TSDLayout *)self info];

  return [(TSDInfo *)info shrinkTextToFit];
}

@end