@interface TSWPShapeLayout
- (BOOL)allowsLastLineTruncation:(id)a3;
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)isInvisibleAutosizingShape;
- (BOOL)resizeMayChangeAspectRatio;
- (BOOL)shrinkTextToFit;
- (BOOL)supportsRotation;
- (BOOL)textLayoutShouldLayoutVertically:(id)a3;
- (CGAffineTransform)autosizedTransform;
- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)a3;
- (CGAffineTransform)computeLayoutTransform;
- (CGPoint)autosizePositionOffset;
- (CGPoint)autosizePositionOffsetForFixedWidth:(BOOL)a3 height:(BOOL)a4;
- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4;
- (CGRect)nonAutosizedFrameForTextLayout:(id)a3;
- (CGSize)adjustedInsets;
- (TSWPShapeLayout)initWithInfo:(id)a3;
- (double)gapForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4;
- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 outWidth:(double *)a5 outGap:(double *)a6;
- (double)widthForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4;
- (id)childSearchTargets;
- (id)children;
- (id)dependentLayouts;
- (id)dependentsOfTextLayout:(id)a3;
- (id)instructionalStorageForContainedStorage:(id)a3 storageKind:(int)a4;
- (id)interiorWrapPath;
- (id)interiorWrapPolygon;
- (id)pathSource;
- (id)textWrapper;
- (unint64_t)columnCount;
- (unsigned)autosizeFlagsForTextLayout:(id)a3;
- (unsigned)cropLine:(CGRect)a3 lineSegmentRects:(CGRect)a4[128];
- (unsigned)maxLineCountForTextLayout:(id)a3;
- (unsigned)verticalAlignmentForTextLayout:(id)a3;
- (void)addChild:(id)a3;
- (void)createContainedLayoutForEditing;
- (void)createContainedLayoutForInstructionalText;
- (void)dealloc;
- (void)destroyContainedLayoutForInstructionalText;
- (void)insertChild:(id)a3 above:(id)a4;
- (void)insertChild:(id)a3 atIndex:(unint64_t)a4;
- (void)insertChild:(id)a3 below:(id)a4;
- (void)invalidateForAutosizingTextLayout:(id)a3;
- (void)invalidatePath;
- (void)invalidateSize;
- (void)processChangedProperty:(int)a3;
- (void)replaceChild:(id)a3 with:(id)a4;
- (void)setChildren:(id)a3;
- (void)setGeometry:(id)a3;
- (void)storage:(id)a3 didChangeRange:(_NSRange)a4 delta:(int64_t)a5 broadcastKind:(int)a6;
- (void)updateChildrenFromInfo;
- (void)willBeAddedToLayoutController:(id)a3;
- (void)willBeRemovedFromLayoutController:(id)a3;
@end

@implementation TSWPShapeLayout

- (TSWPShapeLayout)initWithInfo:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout initWithInfo:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"), 48, @"info is wrong class for layout"}];
  }

  v12.receiver = self;
  v12.super_class = TSWPShapeLayout;
  v7 = [(TSDShapeLayout *)&v12 initWithInfo:a3];
  v8 = v7;
  if (v7 && ![(TSDInfo *)[(TSDLayout *)v7 info] containedStorage])
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout initWithInfo:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"), 51, @"invalid nil value for '%s'", "self.info.containedStorage"}];
  }

  return v8;
}

- (void)dealloc
{
  if (self->_observingStorage)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout dealloc]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"), 59, @"should have unregistered ourselves before dealloc"}];
  }

  [(TSDLayout *)self->_containedLayout setParent:0];

  self->_containedLayout = 0;
  self->_cachedInteriorWrapPolygon = 0;
  v5.receiver = self;
  v5.super_class = TSWPShapeLayout;
  [(TSDShapeLayout *)&v5 dealloc];
}

- (void)willBeAddedToLayoutController:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSWPShapeLayout;
  [(TSDLayout *)&v6 willBeAddedToLayoutController:a3];
  if (!self->_observingStorage || (v4 = [MEMORY[0x277D6C290] currentHandler], v5 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSWPShapeLayout willBeAddedToLayoutController:]"), objc_msgSend(v4, "handleFailureInFunction:file:lineNumber:description:", v5, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"), 73, @"already observing the storage"), !self->_observingStorage))
  {
    [-[TSDInfo containedStorage](-[TSDLayout info](self "info")];
    self->_observingStorage = 1;
  }
}

- (void)willBeRemovedFromLayoutController:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSWPShapeLayout;
  [(TSDLayout *)&v6 willBeRemovedFromLayoutController:a3];
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

- (void)setChildren:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout setChildren:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:102 description:@"not supported"];
}

- (void)addChild:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout addChild:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:107 description:@"not supported"];
}

- (void)insertChild:(id)a3 atIndex:(unint64_t)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout insertChild:atIndex:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:112 description:@"not supported"];
}

- (void)insertChild:(id)a3 below:(id)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout insertChild:below:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:117 description:@"not supported"];
}

- (void)insertChild:(id)a3 above:(id)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout insertChild:above:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:122 description:@"not supported"];
}

- (void)replaceChild:(id)a3 with:(id)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout replaceChild:with:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:127 description:@"not supported"];
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
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout destroyContainedLayoutForInstructionalText]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"), 162, @"trying to destroy layout for instructional text when it is not present"}];
  }

  if ([(TSDInfo *)[(TSDLayout *)self info] displaysInstructionalText])
  {
    v5 = [(TSDLayout *)self->_containedLayout info];
    if (v5 != [(TSDInfo *)[(TSDLayout *)self info] containedStorage])
    {
      [(TSDLayout *)self->_containedLayout setParent:0];

      self->_containedLayout = 0;
    }
  }
}

- (void)createContainedLayoutForInstructionalText
{
  v3 = [(TSDInfo *)[(TSDLayout *)self info] containedStorage];
  if (-[TSDInfo displaysInstructionalText](-[TSDLayout info](self, "info"), "displaysInstructionalText") && ![v3 length])
  {
    containedLayout = self->_containedLayout;
    if ((!containedLayout || -[TSDLayout info](containedLayout, "info") == v3) && (![-[TSDLayout layoutController](self "layoutController")] || objc_msgSend(objc_msgSend(-[TSDLayout layoutController](self, "layoutController"), "canvas"), "shouldShowInstructionalText")))
    {
      [(TSDDrawableLayout *)self invalidate];
      [(TSDLayout *)self->_containedLayout setParent:0];

      self->_containedLayout = 0;
      v5 = [v3 wpKind] == 5 ? 5 : 3;
      v6 = [(TSWPShapeLayout *)self instructionalStorageForContainedStorage:v3 storageKind:v5];
      [v6 setParentInfo:{objc_msgSend(v3, "parentInfo")}];
      v7 = [(TSDInfo *)[(TSDLayout *)self info] geometry];
      v8 = objc_alloc([v3 layoutClass]);
      [v7 size];
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

- (id)instructionalStorageForContainedStorage:(id)a3 storageKind:(int)a4
{
  v4 = *&a4;
  v7 = [TSWPStorage alloc];
  v8 = [a3 context];
  v9 = [(TSDInfo *)[(TSDLayout *)self info] instructionalText];
  v10 = [a3 stylesheet];
  v11 = [a3 paragraphStyleAtParIndex:0 effectiveRange:0];
  v12 = [a3 listStyleAtCharIndex:0 effectiveRange:0];
  LODWORD(v15) = [a3 writingDirectionForParagraphAtCharIndex:0];
  v13 = [(TSWPStorage *)v7 initWithContext:v8 string:v9 kind:v4 stylesheet:v10 paragraphStyle:v11 listStyle:v12 section:0 columnStyle:0 paragraphDirection:v15];

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
  v3 = [(TSDLayout *)self->_containedLayout info];
  if (v3 != [(TSDInfo *)[(TSDLayout *)self info] containedStorage])
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = TSWPShapeLayout;
  return [(TSDLayout *)&v5 childSearchTargets];
}

- (void)storage:(id)a3 didChangeRange:(_NSRange)a4 delta:(int64_t)a5 broadcastKind:(int)a6
{
  delegate = self->_delegate;
  if (!delegate || [(TSWPShapeLayoutDelegate *)delegate shapeLayoutShouldUpdateInstructionalText:self, a4.location, a4.length, a5, *&a6])
  {
    if ([(TSDInfo *)[(TSDLayout *)self info:a3] displaysInstructionalText])
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
  v3 = [(TSDInfo *)[(TSDLayout *)self info] containedStorage];
  containedLayout = self->_containedLayout;
  if (!containedLayout || [(TSDLayout *)containedLayout info]!= v3)
  {
    [(TSDDrawableLayout *)self invalidate];
    [(TSDLayout *)self->_containedLayout setParent:0];

    self->_containedLayout = 0;
    v5 = objc_alloc([v3 layoutClass]);
    [(TSWPShapeLayout *)self nonAutosizedFrameForTextLayout:self->_containedLayout];
    v6 = [v5 initWithInfo:v3 frame:?];
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
    v4 = [(TSWPShapeLayout *)self interiorWrapPath];
    if ([(TSDInfo *)[(TSDLayout *)self info] textIsVertical])
    {
      [(TSDShapeLayout *)self pathBoundsWithoutStroke];
      memset(&v9, 0, sizeof(v9));
      CGAffineTransformMakeTranslation(&v9, 0.0, v5);
      v7 = v9;
      CGAffineTransformRotate(&v8, &v7, -1.57079633);
      v9 = v8;
      [v4 transformUsingAffineTransform:&v8];
    }

    v6 = [[TSDWrapPolygon alloc] initWithPath:v4];
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
    v9 = [v7 join];

    return [v3 bezierPathByOffsettingPath:v9 joinStyle:-v5 withThreshold:1.0];
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

- (unsigned)cropLine:(CGRect)a3 lineSegmentRects:(CGRect)a4[128]
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(TSWPShapeLayout *)self interiorWrapPolygon];

  return [TSWPTextWrapper splitLine:a4 lineSegmentRects:v9 polygon:0 type:0 skipHint:x, y, width, height];
}

- (unsigned)autosizeFlagsForTextLayout:(id)a3
{
  v4 = [(TSDShapeLayout *)self layoutInfoGeometry];
  v5 = [(TSDInfo *)[(TSDLayout *)self info] textIsVertical];
  v6 = [v4 heightValid];
  if (v5)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = 4;
  }

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if ([v4 widthValid])
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  return v10 | v9;
}

- (unsigned)verticalAlignmentForTextLayout:(id)a3
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

- (void)invalidateForAutosizingTextLayout:(id)a3
{
  if (![(TSWPShapeLayout *)self autosizes])
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout invalidateForAutosizingTextLayout:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"), 437, @"should call only when autosizing"}];
  }

  [(TSDShapeLayout *)self invalidateFrame];

  [(TSWPShapeLayout *)self invalidatePath];
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)a3
{
  v4 = [-[TSDShapeLayout shapeInfo](self shapeInfo];
  if (![v4 shouldRender])
  {
    v4 = 0;
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
  if (v4 && [-[TSWPShapeLayout pathSource](self "pathSource")])
  {
    [v4 width];
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

- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4
{
  if (![(TSWPShapeLayout *)self autosizes])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeLayout autosizedFrameForTextLayout:textSize:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeLayout.mm"), 478, @"should call only when autosizing"}];
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

  v9 = [(TSDShapeLayout *)self layoutInfoGeometry];
  [v9 size];
  [v9 size];
  [v9 widthValid];
  [v9 heightValid];

  v10 = TSDRectWithSize();
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)dependentsOfTextLayout:(id)a3
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (![(TSWPShapeLayout *)self autosizes])
  {
    return 0;
  }

  v5[0] = self;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
}

- (BOOL)textLayoutShouldLayoutVertically:(id)a3
{
  v3 = [(TSDLayout *)self info];

  return [(TSDInfo *)v3 textIsVertical];
}

- (BOOL)allowsLastLineTruncation:(id)a3
{
  v3 = [(TSDLayout *)self info];

  return [(TSDInfo *)v3 allowsLastLineTruncation];
}

- (unsigned)maxLineCountForTextLayout:(id)a3
{
  v3 = [(TSDLayout *)self info];

  return [(TSDInfo *)v3 maxLineCount];
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
  v3 = [(TSDLayout *)&v6 dependentLayouts];
  if (self->_containedLayout && ![(TSWPShapeLayout *)self autosizes])
  {
    if (v3)
    {
      v4 = [v3 mutableCopy];
    }

    else
    {
      v4 = [MEMORY[0x277CBEB18] array];
    }

    v3 = v4;
    [v4 addObject:self->_containedLayout];
  }

  return v3;
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

- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)a3
{
  v7 = [(TSDLayout *)self info];
  result = [(TSDShapeLayout *)self pathBoundsWithoutStroke];
  if (v7)
  {

    return [(TSDInfo *)v7 autosizedTransformForInfoGeometry:a4 size:v9, v10];
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

- (CGPoint)autosizePositionOffsetForFixedWidth:(BOOL)a3 height:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
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
  if (([v11 widthValid] & 1) == 0 && v5)
  {
    [v11 setWidthValid:1];
    v13 = v8;
  }

  if (([v11 heightValid] & 1) == 0 && v4)
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

- (void)processChangedProperty:(int)a3
{
  v5.receiver = self;
  v5.super_class = TSWPShapeLayout;
  [(TSDShapeLayout *)&v5 processChangedProperty:?];
  if (a3 == 517)
  {
LABEL_4:

    self->_cachedInteriorWrapPolygon = 0;
    [(TSWPLayout *)self->_containedLayout invalidateSize];
    return;
  }

  if (a3 != 153)
  {
    if (a3 != 146)
    {
      return;
    }

    goto LABEL_4;
  }

  [(TSWPLayoutManager *)[(TSWPLayout *)self->_containedLayout layoutManager] clearTypesetterCache];
  [(TSWPLayout *)self->_containedLayout invalidateTextLayout];

  self->_cachedInteriorWrapPolygon = 0;
}

- (void)setGeometry:(id)a3
{
  v21.receiver = self;
  v21.super_class = TSWPShapeLayout;
  [(TSDShapeLayout *)&v21 setGeometry:a3];
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
  v4 = [(TSDInfo *)[(TSDLayout *)self info] padding];
  if (v4)
  {
    v5 = v4;
    [v4 leftInset];
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
  v2 = [(TSDInfo *)[(TSDLayout *)self info] columns];
  if (!v2)
  {
    return 1;
  }

  return [v2 columnCount];
}

- (double)widthForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4
{
  v6 = [(TSDInfo *)[(TSDLayout *)self info] columns];
  if (!v6)
  {
    return 0.0;
  }

  [v6 widthForColumnIndex:a3 bodyWidth:a4];
  return result;
}

- (double)gapForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4
{
  v6 = [(TSDInfo *)[(TSDLayout *)self info] columns];
  if (!v6)
  {
    return 0.0;
  }

  [v6 gapForColumnIndex:a3 bodyWidth:a4];
  return result;
}

- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 outWidth:(double *)a5 outGap:(double *)a6
{
  v11 = [(TSDInfo *)[(TSDLayout *)self info] columns];
  v12 = [(TSDInfo *)[(TSDLayout *)self info] padding];
  if (v12)
  {
    [v12 leftInset];
    v14 = v13;
    if (v11)
    {
LABEL_3:
      [v11 positionForColumnIndex:a3 bodyWidth:a5 outWidth:a6 outGap:{fmax(a4 + v14 * -2.0, 0.0)}];
      return v14 + v15;
    }
  }

  else
  {
    v14 = 0.0;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  if (a5)
  {
    *a5 = a4 + v14 * -2.0;
  }

  if (a6)
  {
    *a6 = 0.0;
  }

  return v14;
}

- (BOOL)shrinkTextToFit
{
  v2 = [(TSDLayout *)self info];

  return [(TSDInfo *)v2 shrinkTextToFit];
}

@end