@interface TSDSVGToBezierPathConverter
+ (CGAffineTransform)transformFromSVGTransformAttributeString:(SEL)string;
+ (CGPath)newPathFromSVGPathString:(id)string shouldClosePathAtEnd:(BOOL)end;
+ (CGPath)newPathFromSVGPolygonString:(id)string;
+ (CGPath)newPathFromSVGPolylineString:(id)string;
- (id)bezierPathFromSVGData:(id)data;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation TSDSVGToBezierPathConverter

- (id)bezierPathFromSVGData:(id)data
{
  v26[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = objc_alloc_init(TSDBezierPath);
  mFileBezierPath = self->mFileBezierPath;
  self->mFileBezierPath = v5;

  mHiddenOnTag = self->mHiddenOnTag;
  self->mHiddenOnTag = 0;

  v8 = MEMORY[0x277CBF2C0];
  self->mHiddenOnTagNestedCount = 0;
  v9 = v8[1];
  *&self->mGroupedAffineTransform.a = *v8;
  *&self->mGroupedAffineTransform.c = v9;
  *&self->mGroupedAffineTransform.tx = v8[2];
  self->mGroupedAffineTransformNestedCount = 0;
  self->mViewBoxFound = 0;
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  self->mViewBox.origin = *MEMORY[0x277CBF3A0];
  self->mViewBox.size = v10;
  self->mUsesEvenOdd = 0;
  v11 = [objc_alloc(MEMORY[0x277CCAE70]) initWithData:dataCopy];

  [v11 setDelegate:self];
  if ([v11 parse] && (objc_msgSend(v11, "parserError"), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    if (self->mViewBoxFound)
    {
      v21 = CGPathCreateWithRect(self->mViewBox, 0);
      v22 = [TSDBezierPath bezierPathWithCGPath:v21];
      CGPathRelease(v21);
      v26[0] = self->mFileBezierPath;
      v26[1] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
      v24 = [TSDBezierPath intersectBezierPaths:v23];

      v25 = self->mFileBezierPath;
      self->mFileBezierPath = v24;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDSVGToBezierPathConverter bezierPathFromSVGData:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSVGToBezierPathConverter.m"];
    [currentHandler handleFailureInFunction:v14 file:v15 lineNumber:62 description:@"Unable to Parse SVG File"];

    v16 = objc_alloc_init(TSDBezierPath);
    v17 = self->mFileBezierPath;
    self->mFileBezierPath = v16;
  }

  v18 = self->mFileBezierPath;
  v19 = v18;

  return v18;
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v177 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  attributesCopy = attributes;
  v11 = [attributesCopy objectForKeyedSubscript:@"style"];
  v165 = v11;
  if (v11)
  {
    v12 = v11;
    v161 = elementCopy;
    selfCopy = self;
    v160 = attributesCopy;
    attributesCopy = [attributesCopy mutableCopy];
    v13 = [v12 componentsSeparatedByString:@""];;
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v171 objects:v176 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v172;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v172 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v171 + 1) + 8 * i);
          if ([v18 length])
          {
            v19 = attributesCopy;
            v20 = [v18 componentsSeparatedByString:@":"];
            if ([v20 count] != 2)
            {
              currentHandler = [MEMORY[0x277D6C290] currentHandler];
              v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]"];
              v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSVGToBezierPathConverter.m"];
              [currentHandler handleFailureInFunction:v22 file:v23 lineNumber:90 description:@"Style components in SVG <style> tag should have one key and one value."];
            }

            whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
            v25 = [v20 objectAtIndexedSubscript:0];
            v26 = [v25 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

            v27 = [v20 objectAtIndexedSubscript:1];
            v28 = [v27 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

            attributesCopy = v19;
            [v19 setObject:v28 forKeyedSubscript:v26];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v171 objects:v176 count:16];
      }

      while (v15);
    }

    elementCopy = v161;
    self = selfCopy;
  }

  if ([elementCopy isEqualToString:@"svg"])
  {
    v29 = [attributesCopy objectForKeyedSubscript:@"preserveAspectRatio"];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v31 = [v29 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

    if (![v31 count])
    {
LABEL_26:
      v41 = [attributesCopy objectForKeyedSubscript:@"viewBox"];
      whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      currentHandler5 = [v41 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet2];

      if ([currentHandler5 count] == 4)
      {
        self->mViewBoxFound = 1;
        currentHandler2 = [currentHandler5 objectAtIndexedSubscript:0];
        [currentHandler2 doubleValue];
        v45 = v44;
        v46 = [currentHandler5 objectAtIndexedSubscript:1];
        [v46 doubleValue];
        v48 = v47;
        v49 = [currentHandler5 objectAtIndexedSubscript:2];
        [v49 doubleValue];
        v51 = v50;
        v52 = [currentHandler5 objectAtIndexedSubscript:3];
        [v52 doubleValue];
        self->mViewBox.origin.x = v45;
        self->mViewBox.origin.y = v48;
        self->mViewBox.size.width = v51;
        self->mViewBox.size.height = v53;
      }

      else
      {
        currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
        v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]"];
        v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSVGToBezierPathConverter.m"];
        [currentHandler2 handleFailureInFunction:v46 file:v49 lineNumber:132 description:{@"Unexpected number of viewBox components! (%zu)", objc_msgSend(currentHandler5, "count")}];
      }

      goto LABEL_30;
    }

    v32 = [v31 objectAtIndexedSubscript:0];
    v33 = [v32 isEqualToString:@"defer"];

    if (v33)
    {
      currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]"];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSVGToBezierPathConverter.m"];
      [currentHandler3 handleFailureInFunction:v35 file:v36 lineNumber:111 description:@"Unexpected 'defer' component"];
    }

    if ([v31 count] == 1)
    {
      goto LABEL_31;
    }

    if ([v31 count] == 2)
    {
      currentHandler5 = [v31 objectAtIndexedSubscript:1];
      if ([currentHandler5 isEqualToString:@"meet"])
      {
LABEL_30:

LABEL_31:
        v54 = [attributesCopy objectForKeyedSubscript:@"style"];
        if (v54)
        {
          v170 = 0;
          v55 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"fill-rule:[ \t]*evenodd" options:1 error:&v170];
          v56 = v170;
          v57 = [v55 matchesInString:v54 options:0 range:{0, objc_msgSend(v54, "length")}];
          if ([v57 count])
          {
            self->mUsesEvenOdd = 1;
          }
        }

        goto LABEL_36;
      }

      if ([currentHandler5 isEqualToString:@"slice"])
      {
        goto LABEL_25;
      }

      currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]"];
      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSVGToBezierPathConverter.m"];
      [currentHandler4 handleFailureInFunction:v39 file:v40 lineNumber:119 description:{@"Unknown component %@", currentHandler5}];
    }

    else
    {
      currentHandler5 = [MEMORY[0x277D6C290] currentHandler];
      currentHandler4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]"];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSVGToBezierPathConverter.m"];
      [currentHandler5 handleFailureInFunction:currentHandler4 file:v39 lineNumber:122 description:{@"Unexpected number of preserveAspectRatio components! (%zu)", objc_msgSend(v31, "count")}];
    }

LABEL_25:
    goto LABEL_26;
  }

LABEL_36:
  v58 = v165;
  if ([(NSString *)self->mHiddenOnTag isEqualToString:elementCopy])
  {
    ++self->mHiddenOnTagNestedCount;
  }

  if (!self->mHiddenOnTag)
  {
    v59 = [attributesCopy objectForKeyedSubscript:@"display"];
    if ([v59 isEqualToString:@"none"])
    {

LABEL_42:
      v61 = [elementCopy copy];
      mHiddenOnTag = self->mHiddenOnTag;
      self->mHiddenOnTag = v61;

      goto LABEL_82;
    }

    v60 = [elementCopy isEqualToString:@"pattern"];

    if (v60)
    {
      goto LABEL_42;
    }

    v63 = [elementCopy isEqualToString:@"g"];
    v64 = MEMORY[0x277CBF2C0];
    if (v63)
    {
      v65 = *&self->mGroupedAffineTransform.c;
      *&t1.a = *&self->mGroupedAffineTransform.a;
      *&t1.c = v65;
      *&t1.tx = *&self->mGroupedAffineTransform.tx;
      v66 = *(MEMORY[0x277CBF2C0] + 16);
      *&t2.a = *MEMORY[0x277CBF2C0];
      *&t2.c = v66;
      *&t2.tx = *(MEMORY[0x277CBF2C0] + 32);
      if (CGAffineTransformEqualToTransform(&t1, &t2))
      {
        v67 = [attributesCopy objectForKeyedSubscript:@"transform"];

        if (v67)
        {
          v68 = [attributesCopy objectForKeyedSubscript:@"transform"];
          [TSDSVGToBezierPathConverter transformFromSVGTransformAttributeString:v68];
          v69 = *&t1.c;
          *&self->mGroupedAffineTransform.a = *&t1.a;
          *&self->mGroupedAffineTransform.c = v69;
          *&self->mGroupedAffineTransform.tx = *&t1.tx;
        }
      }

      else
      {
        ++self->mGroupedAffineTransformNestedCount;
      }
    }

    v70 = [elementCopy isEqualToString:@"line"];
    if ([elementCopy isEqualToString:@"path"])
    {
      v71 = [attributesCopy objectForKeyedSubscript:@"d"];
      v72 = [TSDSVGToBezierPathConverter newPathFromSVGPathString:v71 shouldClosePathAtEnd:v70 ^ 1u];
    }

    else
    {
      if (![elementCopy isEqualToString:@"polyline"])
      {
        if ([elementCopy isEqualToString:@"polygon"])
        {
          v101 = [attributesCopy objectForKeyedSubscript:@"points"];
          Mutable = [TSDSVGToBezierPathConverter newPathFromSVGPolygonString:v101];

          if (!v70)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (!v70)
          {
            if ([elementCopy isEqualToString:@"rect"])
            {
              v112 = [attributesCopy objectForKeyedSubscript:@"width"];
              [v112 floatValue];
              v113 = [attributesCopy objectForKeyedSubscript:@"height"];
              [v113 floatValue];

              memset(&t1, 0, sizeof(t1));
              v114 = [attributesCopy objectForKeyedSubscript:@"x"];
              [v114 floatValue];
              v116 = v115;
              v117 = [attributesCopy objectForKeyedSubscript:@"y"];
              [v117 floatValue];
              CGAffineTransformMakeTranslation(&t1, v116, v118);

              v119 = TSDRectWithSize();
              v121 = v120;
              v123 = v122;
              v125 = v124;
              v126 = [attributesCopy objectForKeyedSubscript:@"rx"];
              [v126 floatValue];
              v128 = TSDCreateRoundRectPathForRectWithRadius(v119, v121, v123, v125, v127);

              Mutable = MEMORY[0x26D6A8870](v128, &t1);
              CGPathRelease(v128);
              goto LABEL_69;
            }

            if ([elementCopy isEqualToString:@"circle"])
            {
              v129 = [attributesCopy objectForKeyedSubscript:@"r"];
              [v129 floatValue];
              v131 = v130;

              v132 = [attributesCopy objectForKeyedSubscript:@"cx"];
              [v132 floatValue];
              v134 = v133 - v131;

              v135 = [attributesCopy objectForKeyedSubscript:@"cy"];
              [v135 floatValue];
              v137 = v136 - v131;

              v138 = v131 + v131;
              v139 = v134;
              v140 = v137;
              v141 = v131 + v131;
            }

            else
            {
              if (![elementCopy isEqualToString:@"ellipse"])
              {
                Mutable = CGPathCreateMutable();
                goto LABEL_69;
              }

              v147 = [attributesCopy objectForKeyedSubscript:@"rx"];
              [v147 floatValue];
              v149 = v148;

              v150 = [attributesCopy objectForKeyedSubscript:@"ry"];
              [v150 floatValue];
              v152 = v151;

              v153 = [attributesCopy objectForKeyedSubscript:@"cx"];
              [v153 floatValue];
              v155 = v154 - v149;

              v156 = [attributesCopy objectForKeyedSubscript:@"cy"];
              [v156 floatValue];
              v158 = v157 - v152;

              v138 = v149 + v149;
              v141 = v152 + v152;
              v139 = v155;
              v140 = v158;
            }

            v141 = [TSDBezierPath bezierPathWithOvalInRect:v139, v140, v138, v141];
            Mutable = [v141 CGPath];

            CGPathRetain(Mutable);
            goto LABEL_69;
          }

          Mutable = CGPathCreateMutable();
          v102 = [attributesCopy objectForKeyedSubscript:@"x1"];
          [v102 floatValue];
          v104 = v103;
          v105 = [attributesCopy objectForKeyedSubscript:@"y1"];
          [v105 floatValue];
          CGPathMoveToPoint(Mutable, 0, v104, v106);

          v107 = [attributesCopy objectForKeyedSubscript:@"x2"];
          [v107 floatValue];
          v109 = v108;
          v110 = [attributesCopy objectForKeyedSubscript:@"y2"];
          [v110 floatValue];
          CGPathAddLineToPoint(Mutable, 0, v109, v111);
        }

LABEL_53:
        selfCopy2 = self;
        v74 = [attributesCopy objectForKeyedSubscript:@"stroke-width"];
        v75 = [attributesCopy objectForKeyedSubscript:@"stroke-linecap"];
        v76 = [attributesCopy objectForKeyedSubscript:@"stroke-linejoin"];
        v77 = [attributesCopy objectForKeyedSubscript:@"stroke-miterlimit"];
        v78 = 1.0;
        if (v74 && ([v74 isEqualToString:&stru_287D36338] & 1) == 0)
        {
          [v74 floatValue];
          v78 = v79;
        }

        if (v75 && ([v75 isEqualToString:&stru_287D36338] & 1) == 0 && (objc_msgSend(v75, "isEqualToString:", @"butt") & 1) == 0)
        {
          if ([v75 isEqualToString:@"round"])
          {
            v80 = 1;
            goto LABEL_60;
          }

          if ([v75 isEqualToString:@"square"])
          {
            v80 = 2;
            goto LABEL_60;
          }

          currentHandler6 = [MEMORY[0x277D6C290] currentHandler];
          v143 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]"];
          v144 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSVGToBezierPathConverter.m"];
          [currentHandler6 handleFailureInFunction:v143 file:v144 lineNumber:242 description:{@"Unexpected Line Cap Style: %@", v75}];
        }

        v80 = 0;
LABEL_60:
        if (!v76 || ([v76 isEqualToString:&stru_287D36338] & 1) != 0 || (objc_msgSend(v76, "isEqualToString:", @"miter") & 1) != 0)
        {
          v81 = elementCopy;
LABEL_64:
          v82 = 0;
          goto LABEL_65;
        }

        v81 = elementCopy;
        if ([v75 isEqualToString:@"round"])
        {
          v82 = 1;
        }

        else
        {
          if (([v75 isEqualToString:@"bevel"] & 1) == 0)
          {
            currentHandler7 = [MEMORY[0x277D6C290] currentHandler];
            v145 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]"];
            v146 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSVGToBezierPathConverter.m"];
            [currentHandler7 handleFailureInFunction:v145 file:v146 lineNumber:254 description:{@"Unexpected Line Join Style: %@", v76}];

            goto LABEL_64;
          }

          v82 = 2;
        }

LABEL_65:
        v83 = [TSDBezierPath bezierPathWithCGPath:Mutable];
        [v83 setLineWidth:v78];
        [v83 setLineCapStyle:v80];
        [v83 setLineJoinStyle:v82];
        if (v77 && ([v77 isEqualToString:&stru_287D36338] & 1) == 0)
        {
          [v77 floatValue];
          [v83 setMiterLimit:v84];
        }

        outlineStroke = [v83 outlineStroke];
        Mutable = [outlineStroke CGPath];

        CGPathRetain(Mutable);
        elementCopy = v81;
        self = selfCopy2;
        v58 = v165;
        v64 = MEMORY[0x277CBF2C0];
LABEL_69:
        v86 = *&self->mGroupedAffineTransform.c;
        *&t1.a = *&self->mGroupedAffineTransform.a;
        *&t1.c = v86;
        *&t1.tx = *&self->mGroupedAffineTransform.tx;
        v87 = [attributesCopy objectForKeyedSubscript:@"transform"];

        if (v87)
        {
          memset(&t2, 0, sizeof(t2));
          v88 = [attributesCopy objectForKeyedSubscript:@"transform"];
          [TSDSVGToBezierPathConverter transformFromSVGTransformAttributeString:v88];

          v167 = t1;
          v166 = t2;
          CGAffineTransformConcat(&t1, &v167, &v166);
        }

        t2 = t1;
        v89 = v64[1];
        *&v167.a = *v64;
        *&v167.c = v89;
        *&v167.tx = v64[2];
        if (!CGAffineTransformEqualToTransform(&t2, &v167))
        {
          v90 = MEMORY[0x26D6A8870](Mutable, &t1);
          CGPathRelease(Mutable);
          Mutable = v90;
        }

        v91 = [TSDBezierPath bezierPathWithCGPath:Mutable];
        [v91 setWindingRule:self->mUsesEvenOdd];
        CGPathRelease(Mutable);
        mFileBezierPath = self->mFileBezierPath;
        p_mFileBezierPath = &self->mFileBezierPath;
        v175[0] = mFileBezierPath;
        v175[1] = v91;
        v94 = [MEMORY[0x277CBEA60] arrayWithObjects:v175 count:2];
        v95 = [TSDBezierPath uniteBezierPaths:v94];

        if ([v95 isEmpty])
        {
          if ([v91 isEmpty])
          {
            goto LABEL_81;
          }

          [v91 controlPointBounds];
          if (v97 <= 1.0)
          {
            goto LABEL_81;
          }

          v98 = v91;
          if (v96 <= 1.0)
          {
            goto LABEL_81;
          }
        }

        else
        {
          [v95 controlPointBounds];
          if (v100 <= 1.0)
          {
            goto LABEL_81;
          }

          v98 = v95;
          if (v99 <= 1.0)
          {
            goto LABEL_81;
          }
        }

        objc_storeStrong(p_mFileBezierPath, v98);
LABEL_81:

        goto LABEL_82;
      }

      v71 = [attributesCopy objectForKeyedSubscript:@"points"];
      v72 = [TSDSVGToBezierPathConverter newPathFromSVGPolylineString:v71];
    }

    Mutable = v72;

    if ((v70 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_53;
  }

LABEL_82:
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  elementCopy = element;
  if ([(NSString *)self->mHiddenOnTag isEqualToString:elementCopy])
  {
    mHiddenOnTagNestedCount = self->mHiddenOnTagNestedCount;
    if (mHiddenOnTagNestedCount)
    {
      self->mHiddenOnTagNestedCount = mHiddenOnTagNestedCount - 1;
    }

    else
    {
      mHiddenOnTag = self->mHiddenOnTag;
      self->mHiddenOnTag = 0;
    }
  }

  if ([elementCopy isEqualToString:@"g"])
  {
    v10 = *&self->mGroupedAffineTransform.c;
    *&t1.a = *&self->mGroupedAffineTransform.a;
    *&t1.c = v10;
    *&t1.tx = *&self->mGroupedAffineTransform.tx;
    v11 = *(MEMORY[0x277CBF2C0] + 16);
    v15 = *MEMORY[0x277CBF2C0];
    *&t2.a = *MEMORY[0x277CBF2C0];
    v13 = *(MEMORY[0x277CBF2C0] + 32);
    v14 = v11;
    *&t2.c = v11;
    *&t2.tx = v13;
    if (!CGAffineTransformEqualToTransform(&t1, &t2))
    {
      mGroupedAffineTransformNestedCount = self->mGroupedAffineTransformNestedCount;
      if (mGroupedAffineTransformNestedCount)
      {
        self->mGroupedAffineTransformNestedCount = mGroupedAffineTransformNestedCount - 1;
      }

      else
      {
        *&self->mGroupedAffineTransform.a = v15;
        *&self->mGroupedAffineTransform.c = v14;
        *&self->mGroupedAffineTransform.tx = v13;
      }
    }
  }
}

+ (CGPath)newPathFromSVGPathString:(id)string shouldClosePathAtEnd:(BOOL)end
{
  endCopy = end;
  v67 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  Mutable = CGPathCreateMutable();
  v6 = MEMORY[0x277CBF348];
  v55 = *MEMORY[0x277CBF348];
  *y = *MEMORY[0x277CBF348];
  v52 = stringCopy;
  v7 = [MEMORY[0x277CCAC80] scannerWithString:stringCopy];
  v65 = *asc_26CA666D0;
  v66 = 2883717;
  v8 = MEMORY[0x277CCA900];
  v9 = [MEMORY[0x277CCACA8] stringWithCharacters:&v65 length:6];
  v10 = [v8 characterSetWithCharactersInString:v9];
  [v7 setCharactersToBeSkipped:v10];

  if (([v7 isAtEnd] & 1) == 0)
  {
    v19 = 0;
    v12 = 0;
    v20 = *v6;
    v21 = v6[1];
    v53 = v21;
    v54 = *v6;
    v22 = *v6;
    v23 = v21;
    while (1)
    {
      v24 = v12;
      letterCharacterSet = [MEMORY[0x277CCA900] letterCharacterSet];
      v63 = v12;
      v26 = [v7 scanCharactersFromSet:letterCharacterSet intoString:&v63];
      v12 = v63;

      if (v26)
      {
        [v7 setScanLocation:{objc_msgSend(v7, "scanLocation") - objc_msgSend(v12, "length") + 1}];
      }

      v13 = [v12 characterAtIndex:0];
      v27 = v21;
      x = v20;
      if (!CGPathIsEmpty(Mutable))
      {
        CurrentPoint = CGPathGetCurrentPoint(Mutable);
        x = CurrentPoint.x;
        v27 = CurrentPoint.y;
      }

      lowercaseLetterCharacterSet = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
      v31 = [lowercaseLetterCharacterSet characterIsMember:v13];

      v32 = v21;
      v33 = v20;
      if (v31)
      {
        v34 = CGPathGetCurrentPoint(Mutable);
        v33 = v34.x;
        v32 = v34.y;
      }

      if (v13 > 96)
      {
        if (v13 <= 112)
        {
          if (v13 <= 103)
          {
            if (v13 == 97)
            {
LABEL_62:
              v58[0] = 0.0;
              *&v57 = 0;
              *&v56 = 0;
              v61 = 0;
              v62 = 0;
              v59 = 0.0;
              v60 = 0.0;
              if ([v7 tsu_scanCGFloat:v58] && objc_msgSend(v7, "tsu_scanCGFloat:", &v57) && objc_msgSend(v7, "tsu_scanCGFloat:", &v56) && objc_msgSend(v7, "scanInteger:", &v62) && objc_msgSend(v7, "scanInteger:", &v61) && objc_msgSend(v7, "tsu_scanCGFloat:", &v60))
              {
                v11 = [v7 tsu_scanCGFloat:&v59] ^ 1;
              }

              else
              {
                v11 = 1;
              }

              v59 = v32 + v59;
              v60 = v33 + v60;
              v39 = TSDCreatePathByComputingArc(v62 != 0, v61 != 0, x, v27, v58[0], *&v57, *&v56, v60, v59);
              ElementCount = TSDPathGetElementCount(v39);
              v41 = TSDCreatePathByAppendingPathFromElementToElement(Mutable, v39, 1, ElementCount);
              CGPathRelease(v39);
              CGPathRelease(Mutable);
              Mutable = CGPathCreateMutableCopy(v41);
              CGPathRelease(v41);
              goto LABEL_111;
            }

            if (v13 != 99)
            {
              goto LABEL_115;
            }

            goto LABEL_45;
          }

          if (v13 != 104)
          {
            if (v13 != 108)
            {
              if (v13 != 109)
              {
                goto LABEL_115;
              }

              goto LABEL_28;
            }

            goto LABEL_73;
          }

          goto LABEL_76;
        }

        if (v13 <= 115)
        {
          if (v13 == 113)
          {
LABEL_69:
            v57 = v55;
            *v58 = v55;
            if ([v7 tsu_scanCGFloat:v58] && objc_msgSend(v7, "tsu_scanCGFloat:", &v58[1]) && objc_msgSend(v7, "tsu_scanCGFloat:", &v57))
            {
              v11 = [v7 tsu_scanCGFloat:&v57 + 8] ^ 1;
            }

            else
            {
              v11 = 1;
            }

            v58[0] = v33 + v58[0];
            v58[1] = v32 + v58[1];
            *&v57 = v33 + *&v57;
            *(&v57 + 1) = v32 + *(&v57 + 1);
            CGPathAddQuadCurveToPoint(Mutable, 0, v58[0], v58[1], *&v57, *(&v57 + 1));
            v23 = v58[1];
            v22 = v58[0];
            goto LABEL_111;
          }

          if (v13 != 115)
          {
LABEL_115:
            currentHandler = [MEMORY[0x277D6C290] currentHandler];
            v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDSVGToBezierPathConverter newPathFromSVGPathString:shouldClosePathAtEnd:]"];
            v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSVGToBezierPathConverter.m"];
            [currentHandler handleFailureInFunction:v49 file:v50 lineNumber:570 description:{@"Cannot process path of type %@", v12}];

            [v7 isAtEnd];
            v11 = 1;
            goto LABEL_3;
          }

LABEL_56:
          if ((((v19 - 67) >> 4) | ((v19 - 67) << 12)) < 4u)
          {
            x = x + x - v54;
            v27 = v27 + v27 - v53;
          }

          v57 = v55;
          *v58 = v55;
          if ([v7 tsu_scanCGFloat:v58] && objc_msgSend(v7, "tsu_scanCGFloat:", &v58[1]) && objc_msgSend(v7, "tsu_scanCGFloat:", &v57))
          {
            v11 = [v7 tsu_scanCGFloat:&v57 + 8] ^ 1;
          }

          else
          {
            v11 = 1;
          }

          v58[0] = v33 + v58[0];
          v58[1] = v32 + v58[1];
          *&v57 = v33 + *&v57;
          *(&v57 + 1) = v32 + *(&v57 + 1);
          CGPathAddCurveToPoint(Mutable, 0, x, v27, v58[0], v58[1], *&v57, *(&v57 + 1));
          v42 = v58[1];
          v43 = v58[0];
LABEL_90:
          v53 = v42;
          v54 = v43;
          goto LABEL_111;
        }

        if (v13 == 116)
        {
LABEL_77:
          if (v19 - 81 <= 0x23 && ((1 << (v19 - 81)) & 0x900000009) != 0)
          {
            v22 = x + x - v22;
            v23 = v27 + v27 - v23;
          }

          else
          {
            v22 = x;
            v23 = v27;
          }

          *v58 = 0uLL;
          if ([v7 tsu_scanCGFloat:v58])
          {
            v11 = [v7 tsu_scanCGFloat:&v58[1]] ^ 1;
          }

          else
          {
            v11 = 1;
          }

          v58[0] = v33 + v58[0];
          v58[1] = v32 + v58[1];
          CGPathAddQuadCurveToPoint(Mutable, 0, v22, v23, v58[0], v58[1]);
          goto LABEL_111;
        }

        if (v13 != 118)
        {
          if (v13 != 122)
          {
            goto LABEL_115;
          }

          goto LABEL_39;
        }
      }

      else
      {
        if (v13 <= 80)
        {
          if (v13 <= 71)
          {
            if (v13 == 65)
            {
              goto LABEL_62;
            }

            if (v13 != 67)
            {
              goto LABEL_115;
            }

LABEL_45:
            v57 = v55;
            *v58 = v55;
            v56 = v55;
            if ([v7 tsu_scanCGFloat:v58] && objc_msgSend(v7, "tsu_scanCGFloat:", &v58[1]) && objc_msgSend(v7, "tsu_scanCGFloat:", &v57) && objc_msgSend(v7, "tsu_scanCGFloat:", &v57 + 8) && objc_msgSend(v7, "tsu_scanCGFloat:", &v56))
            {
              v11 = [v7 tsu_scanCGFloat:&v56 + 8] ^ 1;
            }

            else
            {
              v11 = 1;
            }

            v58[0] = v33 + v58[0];
            v58[1] = v32 + v58[1];
            *&v57 = v33 + *&v57;
            *(&v57 + 1) = v32 + *(&v57 + 1);
            *&v56 = v33 + *&v56;
            *(&v56 + 1) = v32 + *(&v56 + 1);
            CGPathAddCurveToPoint(Mutable, 0, v58[0], v58[1], *&v57, *(&v57 + 1), *&v56, *(&v56 + 1));
            v42 = *(&v57 + 1);
            v43 = *&v57;
            goto LABEL_90;
          }

          if (v13 != 72)
          {
            if (v13 != 76)
            {
              if (v13 != 77)
              {
                goto LABEL_115;
              }

LABEL_28:
              if ([v7 tsu_scanCGFloat:y])
              {
                v35 = [v7 tsu_scanCGFloat:&y[1]];
              }

              else
              {
                v35 = 0;
              }

              v44 = TSDPathGetElementCount(Mutable);
              v45 = y[0];
              if (v44 < 1)
              {
                v46 = y[1];
              }

              else
              {
                v45 = v33 + y[0];
                v46 = v32 + y[1];
              }

              CGPathMoveToPoint(Mutable, 0, v45, v46);
              if ([v7 tsu_scanCGFloat:y])
              {
                do
                {
                  v35 = [v7 tsu_scanCGFloat:&y[1]];
                  if (v31)
                  {
                    v47 = CGPathGetCurrentPoint(Mutable);
                    v33 = v47.x;
                    v32 = v47.y;
                  }

                  CGPathAddLineToPoint(Mutable, 0, v33 + y[0], v32 + y[1]);
                }

                while (([v7 tsu_scanCGFloat:y] & 1) != 0);
              }

              v11 = v35 ^ 1;
              goto LABEL_111;
            }

LABEL_73:
            if ([v7 tsu_scanCGFloat:y])
            {
              v11 = [v7 tsu_scanCGFloat:&y[1]] ^ 1;
            }

            else
            {
              v11 = 1;
            }

            if (v31)
            {
              if (y[0] == v20 && y[1] == v21)
              {
                goto LABEL_111;
              }
            }

            else if (y[0] == x && y[1] == v27)
            {
              goto LABEL_111;
            }

            v38 = v33 + y[0];
            v36 = v32 + y[1];
            v37 = Mutable;
            goto LABEL_99;
          }

LABEL_76:
          v11 = [v7 tsu_scanCGFloat:y] ^ 1;
          v38 = v33 + y[0];
          v37 = Mutable;
          v36 = v27;
          goto LABEL_99;
        }

        if (v13 <= 83)
        {
          if (v13 == 81)
          {
            goto LABEL_69;
          }

          if (v13 != 83)
          {
            goto LABEL_115;
          }

          goto LABEL_56;
        }

        if (v13 == 84)
        {
          goto LABEL_77;
        }

        if (v13 != 86)
        {
          if (v13 != 90)
          {
            goto LABEL_115;
          }

LABEL_39:
          CGPathCloseSubpath(Mutable);
          v11 = 0;
          goto LABEL_111;
        }
      }

      v11 = [v7 tsu_scanCGFloat:&y[1]] ^ 1;
      v36 = v32 + y[1];
      v37 = Mutable;
      v38 = x;
LABEL_99:
      CGPathAddLineToPoint(v37, 0, v38, v36);
LABEL_111:
      if (([v7 isAtEnd] & 1) == 0)
      {
        v19 = v13;
        if (!v11)
        {
          continue;
        }
      }

      goto LABEL_3;
    }
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
LABEL_3:
  if (endCopy && (v13 & 0xFFDF) != 0x5A)
  {
    MutableCopy = CGPathCreateMutableCopy(Mutable);
    CGPathRelease(Mutable);
    CGPathCloseSubpath(MutableCopy);
    Mutable = MutableCopy;
  }

  if (v11)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDSVGToBezierPathConverter newPathFromSVGPathString:shouldClosePathAtEnd:]"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSVGToBezierPathConverter.m"];
    [currentHandler2 handleFailureInFunction:v16 file:v17 lineNumber:590 description:{@"Bailing on operation %c", v13}];
  }

  return Mutable;
}

+ (CGPath)newPathFromSVGPolylineString:(id)string
{
  v16 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  Mutable = CGPathCreateMutable();
  *v13 = *MEMORY[0x277CBF348];
  v5 = [MEMORY[0x277CCAC80] scannerWithString:stringCopy];
  v14 = *asc_26CA666D0;
  v15 = 2883717;
  v6 = MEMORY[0x277CCA900];
  v7 = [MEMORY[0x277CCACA8] stringWithCharacters:&v14 length:6];
  v8 = [v6 characterSetWithCharactersInString:v7];
  [v5 setCharactersToBeSkipped:v8];

  if ([v5 tsu_scanCGFloat:v13] && (objc_msgSend(v5, "tsu_scanCGFloat:", &v13[1]) & 1) != 0)
  {
    CGPathMoveToPoint(Mutable, 0, v13[0], v13[1]);
    if (([v5 isAtEnd] & 1) == 0)
    {
      while ([v5 tsu_scanCGFloat:v13] && (objc_msgSend(v5, "tsu_scanCGFloat:", &v13[1]) & 1) != 0)
      {
        CGPathAddLineToPoint(Mutable, 0, v13[0], v13[1]);
        if ([v5 isAtEnd])
        {
          goto LABEL_10;
        }
      }

      [v5 isAtEnd];
    }

LABEL_10:
    CGPathCloseSubpath(Mutable);
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDSVGToBezierPathConverter newPathFromSVGPolylineString:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSVGToBezierPathConverter.m"];
    [currentHandler handleFailureInFunction:v10 file:v11 lineNumber:607 description:@"No value for initial polyline point!"];
  }

  return Mutable;
}

+ (CGPath)newPathFromSVGPolygonString:(id)string
{
  v3 = [TSDSVGToBezierPathConverter newPathFromSVGPolylineString:string];
  MutableCopy = CGPathCreateMutableCopy(v3);
  CGPathRelease(v3);
  CGPathCloseSubpath(MutableCopy);
  return MutableCopy;
}

+ (CGAffineTransform)transformFromSVGTransformAttributeString:(SEL)string
{
  v93 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v89 = 0;
  v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(matrix|translate|scale|rotate)\\((.*?)\\)" options:1 error:&v89];
  v67 = v89;
  v68 = v6;
  v7 = [v6 matchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
  v8 = MEMORY[0x277CBF2C0];
  v72 = *(MEMORY[0x277CBF2C0] + 16);
  v73 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v72;
  *&retstr->tx = *(v8 + 32);
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = v7;
  v75 = [v7 countByEnumeratingWithState:&v85 objects:v92 count:16];
  if (v75)
  {
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v74 = *v86;
    do
    {
      for (i = 0; i != v75; i = v46 + 1)
      {
        if (*v86 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v81 = i;
        v12 = *(*(&v85 + 1) + 8 * i);
        v13 = [v12 rangeAtIndex:1];
        v82 = [v5 substringWithRange:{v13, v14}];
        v15 = [v12 rangeAtIndex:2];
        v80 = [v5 substringWithRange:{v15, v16}];
        v17 = [MEMORY[0x277CCAC80] scannerWithString:?];
        v90 = *asc_26CA666D0;
        v91 = 2883717;
        v18 = MEMORY[0x277CCA900];
        v19 = [MEMORY[0x277CCACA8] stringWithCharacters:&v90 length:6];
        v20 = [v18 characterSetWithCharactersInString:v19];
        [v17 setCharactersToBeSkipped:v20];

        array = [MEMORY[0x277CBEB18] array];
        if (([v17 isAtEnd] & 1) == 0)
        {
          v22 = 1;
          do
          {
            t1.a = 0.0;
            v23 = [v17 tsu_scanCGFloat:&t1];
            HIDWORD(v24) = HIDWORD(t1.a);
            *&v24 = t1.a;
            v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
            [array addObject:v25];
            if (v22 >= 7)
            {
              currentHandler = [MEMORY[0x277D6C290] currentHandler];
              v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDSVGToBezierPathConverter transformFromSVGTransformAttributeString:]"];
              v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSVGToBezierPathConverter.m"];
              [currentHandler handleFailureInFunction:v27 file:v28 lineNumber:676 description:{@"Too many numbers for transform %@", v5}];

              v23 = 0;
            }

            if ([v17 isAtEnd])
            {
              break;
            }

            ++v22;
          }

          while ((v23 & 1) != 0);
        }

        v29 = v82;
        if ([v82 isEqualToString:@"matrix"])
        {
          if ([array count] == 6)
          {
            v30 = [array objectAtIndexedSubscript:0];
            [v30 floatValue];
            v78 = v31;
            v70 = [array objectAtIndexedSubscript:1];
            [v70 floatValue];
            v76 = v32;
            v33 = [array objectAtIndexedSubscript:2];
            [v33 floatValue];
            v69 = v34;
            v35 = [array objectAtIndexedSubscript:3];
            [v35 floatValue];
            v36 = vcvtq_f64_f32(__PAIR64__(v76, v78));
            v77 = vcvtq_f64_f32(__PAIR64__(v37, v69));
            v79 = v36;
            v38 = [array objectAtIndexedSubscript:4];
            [v38 floatValue];
            tx = v39;
            [array objectAtIndexedSubscript:5];
            v42 = v41 = retstr;
            [v42 floatValue];
            ty = v43;

            retstr = v41;
            currentHandler2 = v30;
          }

          else
          {
            currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
            v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDSVGToBezierPathConverter transformFromSVGTransformAttributeString:]"];
            v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSVGToBezierPathConverter.m"];
            [currentHandler2 handleFailureInFunction:v51 file:v52 lineNumber:694 description:{@"Not enough numbers for matrix transform! %@", v5}];

            ty = v10;
            tx = v9;
            v77 = v72;
            v79 = v73;
          }

          v46 = v81;
          v29 = v82;
          goto LABEL_32;
        }

        v46 = v81;
        if (![v82 isEqualToString:@"translate"])
        {
          v53 = [v82 isEqualToString:@"scale"];
          ty = v10;
          tx = v9;
          v55 = v72;
          v54 = v73;
          if (!v53)
          {
            goto LABEL_33;
          }

          if ([array count] == 2)
          {
            currentHandler2 = [array objectAtIndexedSubscript:0];
            [currentHandler2 floatValue];
            v57 = v56;
            v58 = array;
            v59 = 1;
          }

          else
          {
            if ([array count] != 1)
            {
              currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
              v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDSVGToBezierPathConverter transformFromSVGTransformAttributeString:]"];
              v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSVGToBezierPathConverter.m"];
              [currentHandler2 handleFailureInFunction:v63 file:v64 lineNumber:715 description:{@"Wrong number of numbers for scale transform! %@", v5}];
              goto LABEL_31;
            }

            currentHandler2 = [array objectAtIndexedSubscript:0];
            [currentHandler2 floatValue];
            v57 = v61;
            v58 = array;
            v59 = 0;
          }

          v49 = [v58 objectAtIndexedSubscript:v59];
          [v49 floatValue];
          CGAffineTransformMakeScale(&t1, v57, v62);
          goto LABEL_28;
        }

        if ([array count] == 2)
        {
          currentHandler2 = [array objectAtIndexedSubscript:0];
          [currentHandler2 floatValue];
          v48 = v47;
          v49 = [array objectAtIndexedSubscript:1];
          [v49 floatValue];
          CGAffineTransformMakeTranslation(&t1, v48, v50);
LABEL_28:
          v77 = *&t1.c;
          v79 = *&t1.a;
          tx = t1.tx;
          ty = t1.ty;

          goto LABEL_32;
        }

        if ([array count] != 1)
        {
          currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
          v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDSVGToBezierPathConverter transformFromSVGTransformAttributeString:]"];
          v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSVGToBezierPathConverter.m"];
          [currentHandler2 handleFailureInFunction:v63 file:v64 lineNumber:705 description:{@"Wrong number of numbers for translate transform! %@", v5}];
LABEL_31:

          v29 = v82;
          ty = v10;
          tx = v9;
          v77 = v72;
          v79 = v73;
          goto LABEL_32;
        }

        currentHandler2 = [array objectAtIndexedSubscript:0];
        [currentHandler2 floatValue];
        CGAffineTransformMakeTranslation(&t1, v60, 0.0);
        v77 = *&t1.c;
        v79 = *&t1.a;
        tx = t1.tx;
        ty = t1.ty;
LABEL_32:

        v55 = v77;
        v54 = v79;
LABEL_33:
        v65 = *&retstr->c;
        *&t1.a = *&retstr->a;
        *&t1.c = v65;
        *&t1.tx = *&retstr->tx;
        *&t2.a = v54;
        *&t2.c = v55;
        t2.tx = tx;
        t2.ty = ty;
        CGAffineTransformConcat(retstr, &t1, &t2);
      }

      v75 = [obj countByEnumeratingWithState:&v85 objects:v92 count:16];
    }

    while (v75);
  }

  return result;
}

@end