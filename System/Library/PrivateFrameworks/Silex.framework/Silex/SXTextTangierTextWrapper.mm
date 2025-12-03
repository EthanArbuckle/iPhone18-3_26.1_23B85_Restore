@interface SXTextTangierTextWrapper
- (BOOL)textShouldFlowAroundWrappable:(id)wrappable inTarget:(id)target inColumn:(id)column;
- (CGAffineTransform)canvasSpaceToWrapSpace;
- (CGAffineTransform)wrapSpaceToCanvasSpace;
- (double)nextUnobstructedSpanStartingAt:(CGRect)at wrappableAttachments:(id)attachments userInfo:(id)info;
- (id)beginWrappingToColumn:(id)column target:(id)target hasWrapables:(BOOL *)wrapables;
- (id)collectWrappables:(id)wrappables target:(id)target;
- (id)groupInfoContainingWrappable:(id)wrappable;
- (unint64_t)intersectRects:(CGRect *)rects rects1Count:(unint64_t)count rects2:(const CGRect *)rects2 rects2Count:(unint64_t)rects2Count minSize:(double)size;
- (unint64_t)splitLineRect:(CGRect)rect lineSegmentRects:(CGRect)rects[128] wrappable:(id)wrappable wrapContext:(id)context;
- (unint64_t)splitLineRect:(CGRect)rect lineSegmentRects:(CGRect)rects[128] wrappableRect:(CGRect)wrappableRect;
- (unsigned)splitLine:(CGRect)line lineSegmentRects:(CGRect)rects[128] wrappableAttachments:(id)attachments ignoreFloatingGraphics:(BOOL)graphics floatingCausedWrap:(BOOL *)wrap skipHint:(double *)hint userInfo:(id)info;
- (void)setCanvasSpaceToWrapSpace:(CGAffineTransform *)space;
- (void)setExclusionPaths:(id)paths;
- (void)setWrapSpaceToCanvasSpace:(CGAffineTransform *)space;
@end

@implementation SXTextTangierTextWrapper

- (void)setExclusionPaths:(id)paths
{
  v19 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  objc_storeStrong(&self->_exclusionPaths, paths);
  tangierExclusionPaths = [(SXTextTangierTextWrapper *)self tangierExclusionPaths];
  [tangierExclusionPaths removeAllObjects];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  exclusionPaths = [(SXTextTangierTextWrapper *)self exclusionPaths];
  v8 = [exclusionPaths countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(exclusionPaths);
        }

        path = [(SXTextExclusionPath *)*(*(&v14 + 1) + 8 * v10) path];
        tSDBezierPath = [path TSDBezierPath];

        tangierExclusionPaths2 = [(SXTextTangierTextWrapper *)self tangierExclusionPaths];
        [tangierExclusionPaths2 addObject:tSDBezierPath];

        ++v10;
      }

      while (v8 != v10);
      v8 = [exclusionPaths countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (id)beginWrappingToColumn:(id)column target:(id)target hasWrapables:(BOOL *)wrapables
{
  columnCopy = column;
  targetCopy = target;
  v10 = [[SXTextTangierTextWrapContext alloc] initWithColumn:columnCopy targetLayout:targetCopy];
  v12 = *(MEMORY[0x1E695EFD0] + 16);
  v11 = *(MEMORY[0x1E695EFD0] + 32);
  *&self->_canvasSpaceToWrapSpace.a = *MEMORY[0x1E695EFD0];
  *&self->_canvasSpaceToWrapSpace.c = v12;
  *&self->_canvasSpaceToWrapSpace.tx = v11;
  if ([targetCopy textIsVertical])
  {
    v13 = *&self->_canvasSpaceToWrapSpace.c;
    *&v18.a = *&self->_canvasSpaceToWrapSpace.a;
    *&v18.c = v13;
    *&v18.tx = *&self->_canvasSpaceToWrapSpace.tx;
    CGAffineTransformRotate(&v19, &v18, -1.57079633);
    v14 = *&v19.c;
    *&self->_canvasSpaceToWrapSpace.a = *&v19.a;
    *&self->_canvasSpaceToWrapSpace.c = v14;
    *&self->_canvasSpaceToWrapSpace.tx = *&v19.tx;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    info = [targetCopy info];
    v16 = TSUDynamicCast();

    if (v16 && [v16 attachmentCount])
    {
      *wrapables = 1;
    }
  }

  return v10;
}

- (unsigned)splitLine:(CGRect)line lineSegmentRects:(CGRect)rects[128] wrappableAttachments:(id)attachments ignoreFloatingGraphics:(BOOL)graphics floatingCausedWrap:(BOOL *)wrap skipHint:(double *)hint userInfo:(id)info
{
  v9 = MEMORY[0x1EEE9AC00](self, a2, rects, attachments, graphics, wrap, hint, info, line.origin, *&line.origin.y, line.size, *&line.size.height);
  v11 = v10;
  v90 = v12;
  v92 = v13;
  v15 = v14;
  v98 = v16;
  v99 = v17;
  v19 = v18;
  v20 = v9;
  v107[508] = *MEMORY[0x1E69E9840];
  v89 = v21;
  v84 = v11;
  objc_opt_class();
  v95 = TSUDynamicCast();
  column = [v95 column];
  target = [v95 target];
  if (v90)
  {
    *v90 = 1.0;
  }

  *v92 = v98;
  v92[1] = v19;
  v92[2] = v99;
  v92[3] = v15;
  interiorWrapPolygon = [v95 interiorWrapPolygon];
  v23 = [interiorWrapPolygon copy];

  v85 = v23;
  if (v23)
  {
    v24 = *(v20 + 40);
    *&v104.a = *(v20 + 24);
    *&v104.c = v24;
    *&v104.tx = *(v20 + 56);
    [v23 transformUsingAffineTransform:&v104];
    v96 = [v20 intersectRects:v92 rects1Count:1 rects2:&v106 rects2Count:objc_msgSend(MEMORY[0x1E69D5738] minSize:{"splitLine:lineSegmentRects:polygon:type:skipHint:", &v106, v23, 0, 0, v98, v19, v99, v15), 0.01}];
  }

  else
  {
    v96 = 1;
  }

  [v20 collectWrappables:v89 target:target];
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  obj = v101 = 0u;
  v25 = [obj countByEnumeratingWithState:&v100 objects:v105 count:16];
  if (v25)
  {
    v97 = *v101;
    do
    {
      v26 = 0;
      do
      {
        if (*v101 != v97)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v100 + 1) + 8 * v26);
        wrapDirection = [v27 wrapDirection];
        wrapFitType = [v27 wrapFitType];
        wrapType = [v27 wrapType];
        objc_opt_class();
        v78 = &unk_1F53A1BF0;
        v31 = TSUClassAndProtocolCast();
        if (v31)
        {
          v32 = [v20 groupInfoContainingWrappable:{v31, &unk_1F53A1BF0}];
          v33 = v32;
          if (v32)
          {
            exteriorTextWrap = [v32 exteriorTextWrap];
            if (([exteriorTextWrap isHTMLWrap] & 1) != 0 || objc_msgSend(v33, "isInlineWithText"))
            {
              if (exteriorTextWrap)
              {
                wrapDirection = [exteriorTextWrap direction];
                wrapFitType = [exteriorTextWrap fitType];
                wrapType = [exteriorTextWrap type];
              }

              else
              {
                wrapType = 0;
                wrapFitType = 0;
                wrapDirection = 2;
              }
            }
          }
        }

        if (wrapType)
        {
          v35 = wrapType == 5;
        }

        else
        {
          v35 = 1;
        }

        if (v35)
        {
          goto LABEL_65;
        }

        if (wrapType == 4)
        {
          if ([v20 textShouldFlowAroundWrappable:v27 inTarget:target inColumn:column])
          {
            wrapDirection = 2;
            wrapType = 1;
          }

          else
          {
            wrapType = 2;
          }
        }

        [v27 boundsInfluencingExteriorWrap];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;
        if (v95)
        {
          [v95 targetInverseTransformInRoot];
        }

        else
        {
          memset(&v104, 0, sizeof(v104));
        }

        v108.origin.x = v37;
        v108.origin.y = v39;
        v108.size.width = v41;
        v108.size.height = v43;
        v109 = CGRectApplyAffineTransform(v108, &v104);
        v44 = *(v20 + 40);
        *&v104.a = *(v20 + 24);
        *&v104.c = v44;
        *&v104.tx = *(v20 + 56);
        v110 = CGRectApplyAffineTransform(v109, &v104);
        x = v110.origin.x;
        y = v110.origin.y;
        width = v110.size.width;
        height = v110.size.height;
        v144.origin.x = v98;
        v144.size.width = v99;
        v144.origin.y = v19;
        v144.size.height = v15;
        if (!CGRectIntersectsRect(v110, v144))
        {
          v106.origin.x = v98;
          v106.origin.y = v19;
          v106.size.width = v99;
          v106.size.height = v15;
          goto LABEL_65;
        }

        if (wrapType == 2)
        {
          if (!v90)
          {
            goto LABEL_63;
          }

          v49 = *v90;
          v111.origin.x = x;
          v111.origin.y = y;
          v111.size.width = width;
          v111.size.height = height;
          MaxY = CGRectGetMaxY(v111);
          v112.origin.x = v98;
          v112.size.width = v99;
          v112.origin.y = v19;
          v112.size.height = v15;
          v51 = 0;
          v52 = ceil(MaxY - CGRectGetMinY(v112));
          if (v49 >= v52)
          {
            v52 = v49;
          }

          *v90 = v52;
        }

        else if (wrapFitType)
        {
          if (wrapFitType != 1)
          {
            goto LABEL_63;
          }

          v51 = [v20 splitLineRect:&v106 lineSegmentRects:v27 wrappable:v95 wrapContext:{v98, v19, v99, v15}];
          if (!v51)
          {
            goto LABEL_64;
          }

          if (wrapType == 3)
          {
            v113.origin.x = x;
            v113.origin.y = y;
            v113.size.width = width;
            v113.size.height = height;
            MinX = CGRectGetMinX(v113);
            v114.origin.x = v98;
            v114.size.width = v99;
            v114.origin.y = v19;
            v114.size.height = v15;
            v53 = CGRectGetMinX(v114);
            v115.origin.x = v98;
            v115.size.width = v99;
            v115.origin.y = v19;
            v115.size.height = v15;
            MaxX = CGRectGetMaxX(v115);
            v116.origin.x = x;
            v116.origin.y = y;
            v116.size.width = width;
            v116.size.height = height;
            if (MinX - v53 >= MaxX - CGRectGetMaxX(v116))
            {
              goto LABEL_61;
            }
          }

          else if (wrapDirection != 1)
          {
            if (wrapDirection)
            {
              goto LABEL_64;
            }

LABEL_61:
            v71 = CGRectGetMinX(v106);
            v139.origin.x = x;
            v139.origin.y = y;
            v139.size.width = width;
            v139.size.height = height;
            v51 = v71 <= CGRectGetMinX(v139);
            goto LABEL_64;
          }

          v72 = &v106 + v51 - 1;
          v73 = CGRectGetMaxX(*v72);
          v140.origin.x = x;
          v140.origin.y = y;
          v140.size.width = width;
          v140.size.height = height;
          if (v73 < CGRectGetMaxX(v140))
          {
            goto LABEL_63;
          }

          v74 = *(&v106 + 2 * v51 - 1);
          v106.origin = v72->origin;
          v106.size = v74;
          v51 = 1;
        }

        else
        {
          v117.origin.x = v98;
          v117.size.width = v99;
          v117.origin.y = v19;
          v117.size.height = v15;
          v55 = CGRectGetMaxX(v117);
          v118.origin.x = x;
          v118.origin.y = y;
          v118.size.width = width;
          v118.size.height = height;
          if (v55 <= CGRectGetMaxX(v118) || (v119.origin.x = v98, v119.size.width = v99, v119.origin.y = v19, v119.size.height = v15, v56 = CGRectGetMinX(v119), v120.origin.x = x, v120.origin.y = y, v120.size.width = width, v120.size.height = height, v56 >= CGRectGetMinX(v120)))
          {
            v134.origin.x = x;
            v134.origin.y = y;
            v134.size.width = width;
            v134.size.height = height;
            v145.origin.x = v98;
            v145.size.width = v99;
            v145.origin.y = v19;
            v145.size.height = v15;
            v135 = CGRectIntersection(v134, v145);
            v63 = v135.origin.x;
            v64 = v135.origin.y;
            v65 = v135.size.width;
            v66 = v135.size.height;
            v67 = CGRectGetMaxX(v135);
            v136.origin.x = v98;
            v136.size.width = v99;
            v136.origin.y = v19;
            v136.size.height = v15;
            if (v67 >= CGRectGetMaxX(v136))
            {
              v69 = 0;
              v68 = v98;
            }

            else
            {
              v137.origin.x = v63;
              v137.origin.y = v64;
              v137.size.width = v65;
              v137.size.height = v66;
              v68 = CGRectGetMaxX(v137);
              v69 = 1;
            }

            v70 = v99 - v65;
            v138.origin.x = v68;
            v138.origin.y = v19;
            v138.size.width = v70;
            v138.size.height = v15;
            if (CGRectGetWidth(v138) >= 20.0 && (wrapDirection == 2 || wrapType == 3 || v69 != (wrapDirection == 0)))
            {
              v106.origin.x = v68;
              v106.origin.y = v19;
              v51 = 1;
              v106.size.width = v70;
              v106.size.height = v15;
              goto LABEL_64;
            }

LABEL_63:
            v51 = 0;
            goto LABEL_64;
          }

          v121.origin.x = v98;
          v121.origin.y = v19;
          v121.size.width = v99;
          v121.size.height = v15;
          v81 = CGRectGetMinX(v121);
          v122.origin.x = v98;
          v122.origin.y = v19;
          v122.size.width = v99;
          v122.size.height = v15;
          MinY = CGRectGetMinY(v122);
          v123.origin.x = x;
          v123.origin.y = y;
          v123.size.width = width;
          v123.size.height = height;
          v80 = CGRectGetMinX(v123);
          v124.origin.x = v98;
          v124.origin.y = v19;
          v124.size.width = v99;
          v124.size.height = v15;
          v79 = CGRectGetMinX(v124);
          v125.origin.x = v98;
          v125.origin.y = v19;
          v125.size.width = v99;
          v125.size.height = v15;
          v82 = CGRectGetHeight(v125);
          v126.origin.x = x;
          v126.origin.y = y;
          v126.size.width = width;
          v126.size.height = height;
          v88 = CGRectGetMaxX(v126);
          v127.origin.x = v98;
          v127.size.width = v99;
          v127.origin.y = v19;
          v127.size.height = v15;
          v86 = CGRectGetMinY(v127);
          v128.origin.x = v98;
          v128.size.width = v99;
          v128.origin.y = v19;
          v128.size.height = v15;
          v57 = CGRectGetMaxX(v128);
          v129.origin.x = x;
          v129.origin.y = y;
          v129.size.width = width;
          v129.size.height = height;
          v58 = CGRectGetMaxX(v129);
          v130.origin.x = v98;
          v130.size.width = v99;
          v130.origin.y = v19;
          v130.size.height = v15;
          v59 = CGRectGetHeight(v130);
          v131.origin.x = v81;
          v131.size.height = v82;
          v131.origin.y = MinY;
          v131.size.width = v80 - v79;
          v60 = v57 - v58;
          if (CGRectGetWidth(v131) >= 20.0 && ((wrapDirection & 0xFFFFFFFD) == 0 || wrapType == 3 && (v132.origin.x = v81, v132.size.height = v82, v132.origin.y = MinY, v132.size.width = v80 - v79, v61 = CGRectGetWidth(v132), v133.origin.y = v86, v133.origin.x = v88, v133.size.width = v60, v133.size.height = v59, v61 >= CGRectGetWidth(v133))))
          {
            v106.origin.x = v88;
            v106.origin.y = v86;
            v62 = v107;
            v51 = 1;
            v106.size.width = v60;
            v106.size.height = v59;
          }

          else
          {
            v51 = 0;
            v62 = &v106;
          }

          v141.origin.y = v86;
          v141.origin.x = v88;
          v141.size.width = v60;
          v141.size.height = v59;
          if (CGRectGetWidth(v141) >= 20.0)
          {
            if ((wrapDirection - 1) < 2 || wrapType == 3 && (v142.origin.x = v81, v142.size.height = v82, v142.origin.y = MinY, v142.size.width = v80 - v79, v75 = CGRectGetWidth(v142), v143.origin.y = v86, v143.origin.x = v88, v143.size.width = v60, v143.size.height = v59, v75 < CGRectGetWidth(v143)))
            {
              ++v51;
              v62->origin.x = v88;
              v62->origin.y = v86;
              v62->size.width = v60;
              v62->size.height = v59;
            }
          }
        }

LABEL_64:
        v96 = [v20 intersectRects:v92 rects1Count:v96 rects2:&v106 rects2Count:v51 minSize:20.0];
        if (v96 >= 0x80)
        {

          goto LABEL_78;
        }

LABEL_65:

        ++v26;
      }

      while (v25 != v26);
      v76 = [obj countByEnumeratingWithState:&v100 objects:v105 count:16];
      v25 = v76;
    }

    while (v76);
  }

LABEL_78:

  return v96;
}

- (double)nextUnobstructedSpanStartingAt:(CGRect)at wrappableAttachments:(id)attachments userInfo:(id)info
{
  height = at.size.height;
  width = at.size.width;
  y = at.origin.y;
  x = at.origin.x;
  v80 = *MEMORY[0x1E69E9840];
  attachmentsCopy = attachments;
  infoCopy = info;
  objc_opt_class();
  v72 = TSUDynamicCast();
  target = [v72 target];
  v70 = [(SXTextTangierTextWrapper *)self collectWrappables:attachmentsCopy target:?];
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v70, "count")}];
  [target rectInRoot:{x, y, width, height}];
  v12 = *&self->_canvasSpaceToWrapSpace.c;
  *&v78.a = *&self->_canvasSpaceToWrapSpace.a;
  *&v78.c = v12;
  *&v78.tx = *&self->_canvasSpaceToWrapSpace.tx;
  v82 = CGRectApplyAffineTransform(v81, &v78);
  v13 = v82.origin.x;
  v14 = v82.origin.y;
  v15 = v82.size.width;
  v16 = v82.size.height;
  column = [v72 column];
  v61 = v16;
  v62 = v15;
  v63 = v14;
  v64 = v13;
  v65 = x;
  v66 = y;
  v67 = width;
  v68 = height;
  [column frameBounds];
  [target rectInRoot:?];
  v18 = *&self->_canvasSpaceToWrapSpace.c;
  *&v78.a = *&self->_canvasSpaceToWrapSpace.a;
  *&v78.c = v18;
  *&v78.tx = *&self->_canvasSpaceToWrapSpace.tx;
  v84 = CGRectApplyAffineTransform(v83, &v78);
  v19 = v84.origin.x;
  v20 = v84.origin.y;
  v21 = v84.size.width;
  v22 = v84.size.height;

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v23 = v70;
  v24 = [v23 countByEnumeratingWithState:&v74 objects:v79 count:16];
  if (v24)
  {
    v25 = *v75;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v75 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v74 + 1) + 8 * i);
        [v27 boundsInfluencingExteriorWrap];
        v28 = *&self->_canvasSpaceToWrapSpace.c;
        *&v78.a = *&self->_canvasSpaceToWrapSpace.a;
        *&v78.c = v28;
        *&v78.tx = *&self->_canvasSpaceToWrapSpace.tx;
        v86 = CGRectApplyAffineTransform(v85, &v78);
        v29 = v86.origin.x;
        v30 = v86.origin.y;
        v31 = v86.size.width;
        v32 = v86.size.height;
        v88.origin.x = v19;
        v88.origin.y = v20;
        v88.size.width = v21;
        v88.size.height = v22;
        if (CGRectIntersectsRect(v86, v88))
        {
          wrapFitType = [v27 wrapFitType];
          if ([v27 wrapType] == 2)
          {
            v34 = [MEMORY[0x1E69D5628] bezierPathWithRect:{v19, v30, v21, v32}];
            goto LABEL_14;
          }

          if (wrapFitType)
          {
            if (wrapFitType == 1)
            {
              wrapPolygon = [v27 wrapPolygon];
              bezierPath = [wrapPolygon bezierPath];
              v37 = [bezierPath copy];

              v38 = *&self->_canvasSpaceToWrapSpace.c;
              *&v78.a = *&self->_canvasSpaceToWrapSpace.a;
              *&v78.c = v38;
              *&v78.tx = *&self->_canvasSpaceToWrapSpace.tx;
              [v37 transformUsingAffineTransform:&v78];
              if (!v37)
              {
                goto LABEL_17;
              }

LABEL_15:
              [v11 addObject:v37];
            }

            else
            {
              v37 = 0;
            }
          }

          else
          {
            v34 = [MEMORY[0x1E69D5628] bezierPathWithRect:{v29, v30, v31, v32}];
LABEL_14:
            v37 = v34;
            if (v34)
            {
              goto LABEL_15;
            }
          }

LABEL_17:

          continue;
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v74 objects:v79 count:16];
    }

    while (v24);
  }

  if ([v11 count])
  {
    v39 = *&self->_wrapSpaceToCanvasSpace.c;
    *&v78.a = *&self->_wrapSpaceToCanvasSpace.a;
    *&v78.c = v39;
    *&v78.tx = *&self->_wrapSpaceToCanvasSpace.tx;
    v40 = v65;
    *&v39 = v66;
    v41 = v67;
    v42 = v68;
    v87 = CGRectApplyAffineTransform(*(&v39 - 8), &v78);
  }

  else
  {
    v43 = [MEMORY[0x1E69D5628] uniteBezierPaths:v11];
    [MEMORY[0x1E69D5738] unobstructedSpanForPath:v43 startingSpan:v64 columnBounds:{v63, v62, v61, v19, v20, v21, v22}];
    v45 = v44;
    b = self->_wrapSpaceToCanvasSpace.b;
    d = self->_wrapSpaceToCanvasSpace.d;
    v48 = 0.0;
    v49 = 0.0;
    v50 = 0.0;
    ty = self->_wrapSpaceToCanvasSpace.ty;
    if (v72)
    {
      [v72 targetInverseTransformInRoot];
      v50 = v78.b;
      v49 = v78.d;
      v48 = v78.ty;
    }

    v87.origin.y = v48 + (ty + v45 * d + b * 0.0) * v49 + v50 * 0.0;
  }

  if ((*&v87.origin.y & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_30;
  }

  if (v87.origin.y > 0.0 && v87.origin.y > 3.40282347e38)
  {
    currentHandler = [MEMORY[0x1E69D5768] currentHandler];
    v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXTextTangierTextWrapper nextUnobstructedSpanStartingAt:wrappableAttachments:userInfo:]"];
    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Text/Tangier/SXTextTangierTextWrapper.mm"];
    [currentHandler handleFailureInFunction:v55 file:v56 lineNumber:361 description:@"Out-of-bounds type assignment was clamped to max"];

    *&v57 = 3.4028e38;
LABEL_34:
    v52 = *&v57;
    goto LABEL_31;
  }

  if (v87.origin.y < 0.0 && v87.origin.y < -3.40282347e38)
  {
    currentHandler2 = [MEMORY[0x1E69D5768] currentHandler];
    v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXTextTangierTextWrapper nextUnobstructedSpanStartingAt:wrappableAttachments:userInfo:]"];
    v60 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Text/Tangier/SXTextTangierTextWrapper.mm"];
    [currentHandler2 handleFailureInFunction:v59 file:v60 lineNumber:361 description:@"Out-of-bounds type assignment was clamped to min"];

    *&v57 = -3.4028e38;
    goto LABEL_34;
  }

LABEL_30:
  v52 = v87.origin.y;
LABEL_31:

  return v52;
}

- (id)collectWrappables:(id)wrappables target:(id)target
{
  v43 = *MEMORY[0x1E69E9840];
  wrappablesCopy = wrappables;
  targetCopy = target;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = wrappablesCopy;
  v7 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v7)
  {
    v8 = *v37;
    do
    {
      v27 = v7;
      for (i = 0; i != v27; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [targetCopy validatedLayoutForAnchoredDrawable:*(*(&v36 + 1) + 8 * i)];
        v11 = TSUProtocolCast();
        v12 = TSUProtocolCast();
        v13 = v12;
        if (v11)
        {
          [v6 addObject:v11];
        }

        else if (v12)
        {
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          descendentWrappables = [v12 descendentWrappables];
          v15 = [descendentWrappables countByEnumeratingWithState:&v32 objects:v41 count:16];
          if (v15)
          {
            v16 = *v33;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v33 != v16)
                {
                  objc_enumerationMutation(descendentWrappables);
                }

                [v6 addObject:*(*(&v32 + 1) + 8 * j)];
              }

              v15 = [descendentWrappables countByEnumeratingWithState:&v32 objects:v41 count:16];
            }

            while (v15);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  exclusionPaths = [(SXTextTangierTextWrapper *)self exclusionPaths];
  v19 = [exclusionPaths countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v19)
  {
    v20 = *v29;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(exclusionPaths);
        }

        wrappable = [(SXTextExclusionPath *)*(*(&v28 + 1) + 8 * k) wrappable];
        [v6 addObject:wrappable];
      }

      v19 = [exclusionPaths countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v19);
  }

  return v6;
}

- (unint64_t)intersectRects:(CGRect *)rects rects1Count:(unint64_t)count rects2:(const CGRect *)rects2 rects2Count:(unint64_t)rects2Count minSize:(double)size
{
  v23 = *MEMORY[0x1E69E9840];
  if (!count)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  p_size = &rects2->size;
  do
  {
    if (rects2Count && v11 <= 0x7F)
    {
      v14 = p_size;
      v15 = 1;
      do
      {
        v24 = CGRectIntersection(rects[v12], *&v14[-1].width);
        x = v24.origin.x;
        y = v24.origin.y;
        width = v24.size.width;
        height = v24.size.height;
        if (!CGRectIsEmpty(v24) && width >= size)
        {
          v20 = &v22[2 * v11];
          *v20 = x;
          v20[1] = y;
          ++v11;
          v20[2] = width;
          v20[3] = height;
        }

        if (v15 >= rects2Count)
        {
          break;
        }

        ++v15;
        v14 += 2;
      }

      while (v11 < 0x80);
    }

    ++v12;
  }

  while (v12 != count);
  if (v11)
  {
    memcpy(rects, v22, 32 * v11);
  }

  return v11;
}

- (id)groupInfoContainingWrappable:(id)wrappable
{
  info = [wrappable info];
  parentInfo = [info parentInfo];

  if (parentInfo)
  {
    while (![parentInfo isMemberOfClass:objc_opt_class()])
    {
      v4ParentInfo = [parentInfo parentInfo];

      parentInfo = v4ParentInfo;
      if (!v4ParentInfo)
      {
        goto LABEL_6;
      }
    }

    parentInfo = parentInfo;
  }

LABEL_6:

  return parentInfo;
}

- (BOOL)textShouldFlowAroundWrappable:(id)wrappable inTarget:(id)target inColumn:(id)column
{
  wrappableCopy = wrappable;
  targetCopy = target;
  columnCopy = column;
  if (([wrappableCopy hasAlpha] & 1) == 0)
  {
    [wrappableCopy boundsInRoot];
    v12 = *&self->_canvasSpaceToWrapSpace.c;
    *&recta[1] = *&self->_canvasSpaceToWrapSpace.a;
    *&recta[3] = v12;
    *&recta[5] = *&self->_canvasSpaceToWrapSpace.tx;
    v28 = CGRectApplyAffineTransform(v27, &recta[1]);
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
    recta[0] = *&v28.origin.x;
    v24 = CGRectGetWidth(v28);
    [columnCopy frameBounds];
    [targetCopy rectInRoot:?];
    v16 = *&self->_canvasSpaceToWrapSpace.c;
    *&recta[1] = *&self->_canvasSpaceToWrapSpace.a;
    *&recta[3] = v16;
    *&recta[5] = *&self->_canvasSpaceToWrapSpace.tx;
    v30 = CGRectApplyAffineTransform(v29, &recta[1]);
    x = v30.origin.x;
    v18 = v30.origin.y;
    v19 = v30.size.width;
    v20 = v30.size.height;
    v25 = CGRectGetWidth(v30);
    *&v31.origin.x = recta[0];
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    MinX = CGRectGetMinX(v31);
    v32.origin.x = x;
    v32.origin.y = v18;
    v32.size.width = v19;
    v32.size.height = v20;
    if (MinX - CGRectGetMinX(v32) < 1.0 || (v33.origin.x = x, v33.origin.y = v18, v33.size.width = v19, v33.size.height = v20, MaxX = CGRectGetMaxX(v33), *&v34.origin.x = recta[0], v34.origin.y = y, v34.size.width = width, v34.size.height = height, MaxX - CGRectGetMaxX(v34) < 1.0))
    {
      v35.origin.x = x;
      v35.origin.y = v18;
      v35.size.width = v19;
      v35.size.height = v20;
      *&v37.origin.x = recta[0];
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      v36 = CGRectIntersection(v35, v37);
      v11 = CGRectGetWidth(v36) < v25 * 0.800000012;
      goto LABEL_6;
    }

    if (v24 >= v25 * 0.333333343)
    {
      v11 = 0;
      goto LABEL_6;
    }
  }

  v11 = 1;
LABEL_6:

  return v11;
}

- (unint64_t)splitLineRect:(CGRect)rect lineSegmentRects:(CGRect)rects[128] wrappableRect:(CGRect)wrappableRect
{
  height = wrappableRect.size.height;
  width = wrappableRect.size.width;
  y = wrappableRect.origin.y;
  x = wrappableRect.origin.x;
  v10 = rect.size.height;
  v11 = rect.size.width;
  v12 = rect.origin.y;
  v13 = rect.origin.x;
  if (!CGRectIntersectsRect(rect, wrappableRect))
  {
    rects->origin.x = v13;
    goto LABEL_6;
  }

  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  MinX = CGRectGetMinX(v36);
  v37.origin.x = v13;
  v37.origin.y = v12;
  v37.size.width = v11;
  v37.size.height = v10;
  v14 = CGRectGetMinX(v37);
  v38.size.height = height;
  v15 = v14;
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  rect = v38.size.height;
  MaxX = CGRectGetMaxX(v38);
  v39.origin.x = v13;
  v39.origin.y = v12;
  v39.size.width = v11;
  v39.size.height = v10;
  v16 = CGRectGetMaxX(v39);
  if (MinX <= v15)
  {
    rectCopy = rect;
    if (MaxX > v16)
    {
      return 0;
    }

    v25 = x;
    v26 = y;
    v27 = width;
    v34 = CGRectGetMaxX(*(&rectCopy - 3));
    v46.origin.x = v13;
    v46.origin.y = v12;
    v46.size.width = v11;
    v46.size.height = v10;
    v28 = CGRectGetMaxX(v46);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = rect;
    v11 = v28 - CGRectGetMaxX(v47);
    rects->origin.x = v34;
LABEL_6:
    result = 1;
    v21 = 24;
    v22 = 16;
    v23 = 8;
    goto LABEL_7;
  }

  v40.origin.x = v13;
  v31 = v16;
  v40.origin.y = v12;
  v40.size.width = v11;
  v40.size.height = v10;
  v29 = CGRectGetMinX(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = rect;
  v17 = CGRectGetMinX(v41);
  v42.origin.x = v13;
  v42.origin.y = v12;
  v42.size.width = v11;
  v42.size.height = v10;
  v18 = CGRectGetMinX(v42);
  rects->origin.x = v29;
  rects->origin.y = v12;
  rects->size.width = v17 - v18;
  rects->size.height = v10;
  if (MaxX < v31)
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = rect;
    v33 = CGRectGetMaxX(v43);
    v44.origin.x = v13;
    v44.origin.y = v12;
    v44.size.width = v11;
    v44.size.height = v10;
    v19 = CGRectGetMaxX(v44);
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = rect;
    v11 = v19 - CGRectGetMaxX(v45);
    rects[1].origin.x = v33;
    result = 2;
    v21 = 56;
    v22 = 48;
    v23 = 40;
LABEL_7:
    *(&rects->origin.x + v23) = v12;
    *(&rects->origin.x + v22) = v11;
    *(&rects->origin.x + v21) = v10;
    return result;
  }

  return 1;
}

- (unint64_t)splitLineRect:(CGRect)rect lineSegmentRects:(CGRect)rects[128] wrappable:(id)wrappable wrapContext:(id)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  wrappableCopy = wrappable;
  v14 = *&self->_canvasSpaceToWrapSpace.c;
  *&v21.a = *&self->_canvasSpaceToWrapSpace.a;
  *&v21.c = v14;
  *&v21.tx = *&self->_canvasSpaceToWrapSpace.tx;
  v15 = [context transformedWrapPolygonForWrappable:wrappableCopy canvasSpaceToWrapSpaceTransform:&v21];
  if (v15)
  {
    v16 = [MEMORY[0x1E69D5738] splitLine:rects lineSegmentRects:v15 polygon:1 type:0 skipHint:{x, y, width, height}];
  }

  else
  {
    objc_opt_class();
    v17 = TSUClassAndProtocolCast();
    v18 = v17;
    if (v17)
    {
      [v17 frameInRoot];
      v19 = *&self->_canvasSpaceToWrapSpace.c;
      *&v21.a = *&self->_canvasSpaceToWrapSpace.a;
      *&v21.c = v19;
      *&v21.tx = *&self->_canvasSpaceToWrapSpace.tx;
      v23 = CGRectApplyAffineTransform(v22, &v21);
      v16 = [(SXTextTangierTextWrapper *)self splitLineRect:rects lineSegmentRects:x wrappableRect:y, width, height, v23.origin.x, v23.origin.y, v23.size.width, v23.size.height];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (CGAffineTransform)canvasSpaceToWrapSpace
{
  v3 = *&self->ty;
  *&retstr->a = *&self->d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].b;
  return self;
}

- (void)setCanvasSpaceToWrapSpace:(CGAffineTransform *)space
{
  v3 = *&space->a;
  v4 = *&space->c;
  *&self->_canvasSpaceToWrapSpace.tx = *&space->tx;
  *&self->_canvasSpaceToWrapSpace.c = v4;
  *&self->_canvasSpaceToWrapSpace.a = v3;
}

- (CGAffineTransform)wrapSpaceToCanvasSpace
{
  v3 = *&self[1].ty;
  *&retstr->a = *&self[1].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].b;
  return self;
}

- (void)setWrapSpaceToCanvasSpace:(CGAffineTransform *)space
{
  v3 = *&space->a;
  v4 = *&space->c;
  *&self->_wrapSpaceToCanvasSpace.tx = *&space->tx;
  *&self->_wrapSpaceToCanvasSpace.c = v4;
  *&self->_wrapSpaceToCanvasSpace.a = v3;
}

@end