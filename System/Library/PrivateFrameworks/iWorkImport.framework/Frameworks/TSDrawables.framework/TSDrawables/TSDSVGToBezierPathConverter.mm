@interface TSDSVGToBezierPathConverter
+ (CGAffineTransform)transformFromSVGTransformAttributeString:(SEL)a3;
+ (CGPath)newPathFromSVGPathString:(id)a3 shouldClosePathAtEnd:(BOOL)a4;
+ (CGPath)newPathFromSVGPolygonString:(id)a3;
+ (CGPath)newPathFromSVGPolylineString:(id)a3;
- (id)bezierPathFromSVGData:(id)a3;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
@end

@implementation TSDSVGToBezierPathConverter

- (id)bezierPathFromSVGData:(id)a3
{
  v42[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D81160];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  mFileBezierPath = self->mFileBezierPath;
  self->mFileBezierPath = v6;

  mHiddenOnTag = self->mHiddenOnTag;
  self->mHiddenOnTag = 0;

  v9 = MEMORY[0x277CBF2C0];
  self->mHiddenOnTagNestedCount = 0;
  v10 = v9[1];
  *&self->mGroupedAffineTransform.a = *v9;
  *&self->mGroupedAffineTransform.c = v10;
  *&self->mGroupedAffineTransform.tx = v9[2];
  self->mGroupedAffineTransformNestedCount = 0;
  self->mViewBoxFound = 0;
  v11 = *(MEMORY[0x277CBF3A0] + 16);
  self->mViewBox.origin = *MEMORY[0x277CBF3A0];
  self->mViewBox.size = v11;
  self->mUsesEvenOdd = 0;
  v12 = objc_alloc(MEMORY[0x277CCAE70]);
  v14 = objc_msgSend_initWithData_(v12, v13, v5);

  objc_msgSend_setDelegate_(v14, v15, self);
  if (objc_msgSend_parse(v14, v16, v17) && (objc_msgSend_parserError(v14, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
  {
    if (self->mViewBoxFound)
    {
      v33 = CGPathCreateWithRectSafe();
      v35 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v34, v33);
      CGPathRelease(v33);
      v36 = MEMORY[0x277D81160];
      v42[0] = self->mFileBezierPath;
      v42[1] = v35;
      v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, v42, 2);
      v40 = objc_msgSend_intersectBezierPaths_(v36, v39, v38);

      v41 = self->mFileBezierPath;
      self->mFileBezierPath = v40;
    }
  }

  else
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSDSVGToBezierPathConverter bezierPathFromSVGData:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSVGToBezierPathConverter.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 61, 0, "Unable to Parse SVG File");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    v28 = objc_alloc_init(MEMORY[0x277D81160]);
    v29 = self->mFileBezierPath;
    self->mFileBezierPath = v28;
  }

  v30 = self->mFileBezierPath;
  v31 = v30;

  return v30;
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v375 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a7;
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"style");
  v363 = v12;
  if (v12)
  {
    v15 = v12;
    v359 = self;
    v361 = v9;
    v358 = v10;
    v10 = objc_msgSend_mutableCopy(v10, v13, v14);
    v17 = objc_msgSend_componentsSeparatedByString_(v15, v16, @"");;
    v369 = 0u;
    v370 = 0u;
    v371 = 0u;
    v372 = 0u;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v369, v374, 16);
    if (v19)
    {
      v22 = v19;
      v23 = *v370;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v370 != v23)
          {
            objc_enumerationMutation(v17);
          }

          v25 = *(*(&v369 + 1) + 8 * i);
          if (objc_msgSend_length(v25, v20, v21))
          {
            v26 = v10;
            v27 = objc_msgSend_componentsSeparatedByString_(v25, v20, @":");
            if (objc_msgSend_count(v27, v28, v29) != 2)
            {
              v32 = MEMORY[0x277D81150];
              v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSDSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]");
              v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSVGToBezierPathConverter.m");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 89, 0, "Style components in SVG <style> tag should have one key and one value.");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
            }

            v39 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v30, v31);
            v41 = objc_msgSend_objectAtIndexedSubscript_(v27, v40, 0);
            v43 = objc_msgSend_stringByTrimmingCharactersInSet_(v41, v42, v39);

            v45 = objc_msgSend_objectAtIndexedSubscript_(v27, v44, 1);
            v47 = objc_msgSend_stringByTrimmingCharactersInSet_(v45, v46, v39);

            v10 = v26;
            objc_msgSend_setObject_forKeyedSubscript_(v26, v48, v47, v43);
          }
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v369, v374, 16);
      }

      while (v22);
    }

    self = v359;
    v9 = v361;
  }

  if (objc_msgSend_isEqualToString_(v9, v13, @"svg"))
  {
    v50 = v10;
    v51 = objc_msgSend_objectForKeyedSubscript_(v10, v49, @"preserveAspectRatio");
    v54 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v52, v53);
    v56 = objc_msgSend_componentsSeparatedByCharactersInSet_(v51, v55, v54);

    if (objc_msgSend_count(v56, v57, v58))
    {
      v60 = objc_msgSend_objectAtIndexedSubscript_(v56, v59, 0);
      isEqualToString = objc_msgSend_isEqualToString_(v60, v61, @"defer");

      if (isEqualToString)
      {
        v65 = MEMORY[0x277D81150];
        v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "[TSDSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]");
        v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSVGToBezierPathConverter.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v69, v66, v68, 110, 0, "Unexpected 'defer' component");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71);
      }

      if (objc_msgSend_count(v56, v63, v64) == 1)
      {
        goto LABEL_29;
      }

      if (objc_msgSend_count(v56, v72, v73) == 2)
      {
        v75 = objc_msgSend_objectAtIndexedSubscript_(v56, v74, 1);
        if (objc_msgSend_isEqualToString_(v75, v76, @"meet"))
        {
LABEL_28:

LABEL_29:
          v10 = v50;
          v137 = objc_msgSend_objectForKeyedSubscript_(v50, v72, @"style");
          if (v137)
          {
            v368 = 0;
            v138 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x277CCAC68], v136, @"fill-rule:[ \t]*evenodd", 1, &v368);
            v139 = v368;
            v142 = objc_msgSend_length(v137, v140, v141);
            v144 = objc_msgSend_matchesInString_options_range_(v138, v143, v137, 0, 0, v142);
            if (objc_msgSend_count(v144, v145, v146))
            {
              self->mUsesEvenOdd = 1;
            }
          }

          goto LABEL_34;
        }

        if ((objc_msgSend_isEqualToString_(v75, v77, @"slice") & 1) == 0)
        {
          v79 = MEMORY[0x277D81150];
          v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "[TSDSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]");
          v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSVGToBezierPathConverter.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v79, v83, v80, v82, 118, 0, "Unknown component %@", v75);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v85);
        }
      }

      else
      {
        v86 = MEMORY[0x277D81150];
        v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "[TSDSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]");
        v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSVGToBezierPathConverter.m");
        v92 = objc_msgSend_count(v56, v90, v91);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v86, v93, v87, v89, 121, 0, "Unexpected number of preserveAspectRatio components! (%zu)", v92);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v95);
      }
    }

    v96 = objc_msgSend_objectForKeyedSubscript_(v10, v59, @"viewBox");
    v99 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v97, v98);
    v75 = objc_msgSend_componentsSeparatedByCharactersInSet_(v96, v100, v99);

    if (objc_msgSend_count(v75, v101, v102) == 4)
    {
      self->mViewBoxFound = 1;
      v104 = objc_msgSend_objectAtIndexedSubscript_(v75, v103, 0);
      objc_msgSend_doubleValue(v104, v105, v106);
      v108 = v107;
      v110 = objc_msgSend_objectAtIndexedSubscript_(v75, v109, 1);
      objc_msgSend_doubleValue(v110, v111, v112);
      v114 = v113;
      v116 = objc_msgSend_objectAtIndexedSubscript_(v75, v115, 2);
      objc_msgSend_doubleValue(v116, v117, v118);
      v120 = v119;
      v122 = objc_msgSend_objectAtIndexedSubscript_(v75, v121, 3);
      objc_msgSend_doubleValue(v122, v123, v124);
      self->mViewBox.origin.x = v108;
      self->mViewBox.origin.y = v114;
      self->mViewBox.size.width = v120;
      self->mViewBox.size.height = v125;
    }

    else
    {
      v126 = MEMORY[0x277D81150];
      v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, "[TSDSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]");
      v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSVGToBezierPathConverter.m");
      v132 = objc_msgSend_count(v75, v130, v131);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v126, v133, v127, v129, 131, 0, "Unexpected number of viewBox components! (%zu)", v132);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v134, v135);
    }

    goto LABEL_28;
  }

LABEL_34:
  v148 = v363;
  if (objc_msgSend_isEqualToString_(self->mHiddenOnTag, v49, v9))
  {
    ++self->mHiddenOnTagNestedCount;
  }

  if (!self->mHiddenOnTag)
  {
    v149 = objc_msgSend_objectForKeyedSubscript_(v10, v147, @"display");
    if (objc_msgSend_isEqualToString_(v149, v150, @"none"))
    {

LABEL_40:
      v155 = objc_msgSend_copy(v9, v152, v153);
      mHiddenOnTag = self->mHiddenOnTag;
      self->mHiddenOnTag = v155;

      goto LABEL_80;
    }

    v154 = objc_msgSend_isEqualToString_(v9, v151, @"pattern");

    if (v154)
    {
      goto LABEL_40;
    }

    v157 = objc_msgSend_isEqualToString_(v9, v152, @"g");
    v159 = MEMORY[0x277CBF2C0];
    if (v157)
    {
      v160 = *&self->mGroupedAffineTransform.c;
      *&t1.a = *&self->mGroupedAffineTransform.a;
      *&t1.c = v160;
      *&t1.tx = *&self->mGroupedAffineTransform.tx;
      v161 = *(MEMORY[0x277CBF2C0] + 16);
      *&t2.a = *MEMORY[0x277CBF2C0];
      *&t2.c = v161;
      *&t2.tx = *(MEMORY[0x277CBF2C0] + 32);
      if (CGAffineTransformEqualToTransform(&t1, &t2))
      {
        v162 = objc_msgSend_objectForKeyedSubscript_(v10, v158, @"transform");

        if (v162)
        {
          v163 = objc_msgSend_objectForKeyedSubscript_(v10, v158, @"transform");
          objc_msgSend_transformFromSVGTransformAttributeString_(TSDSVGToBezierPathConverter, v164, v163);
          v165 = *&t1.c;
          *&self->mGroupedAffineTransform.a = *&t1.a;
          *&self->mGroupedAffineTransform.c = v165;
          *&self->mGroupedAffineTransform.tx = *&t1.tx;
        }
      }

      else
      {
        ++self->mGroupedAffineTransformNestedCount;
      }
    }

    v166 = objc_msgSend_isEqualToString_(v9, v158, @"line");
    if (objc_msgSend_isEqualToString_(v9, v167, @"path"))
    {
      v169 = objc_msgSend_objectForKeyedSubscript_(v10, v168, @"d");
      shouldClosePathAtEnd = objc_msgSend_newPathFromSVGPathString_shouldClosePathAtEnd_(TSDSVGToBezierPathConverter, v170, v169, v166 ^ 1u);
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(v9, v168, @"polyline"))
      {
        if (objc_msgSend_isEqualToString_(v9, v172, @"polygon"))
        {
          v234 = objc_msgSend_objectForKeyedSubscript_(v10, v233, @"points");
          CopyByTransformingPathSafe = objc_msgSend_newPathFromSVGPolygonString_(TSDSVGToBezierPathConverter, v235, v234);

          if (!v166)
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (!v166)
          {
            if (objc_msgSend_isEqualToString_(v9, v233, @"rect"))
            {
              v253 = objc_msgSend_objectForKeyedSubscript_(v10, v252, @"width");
              objc_msgSend_floatValue(v253, v254, v255);
              v257 = objc_msgSend_objectForKeyedSubscript_(v10, v256, @"height");
              objc_msgSend_floatValue(v257, v258, v259);

              memset(&t1, 0, sizeof(t1));
              v261 = objc_msgSend_objectForKeyedSubscript_(v10, v260, @"x");
              objc_msgSend_floatValue(v261, v262, v263);
              v265 = v264;
              v267 = objc_msgSend_objectForKeyedSubscript_(v10, v266, @"y");
              objc_msgSend_floatValue(v267, v268, v269);
              CGAffineTransformMakeTranslation(&t1, v265, v270);

              v271 = MEMORY[0x277D81160];
              TSURectWithSize();
              v273 = v272;
              v275 = v274;
              v277 = v276;
              v279 = v278;
              v281 = objc_msgSend_objectForKeyedSubscript_(v10, v280, @"rx");
              objc_msgSend_tsu_CGFloatValue(v281, v282, v283);
              v287 = objc_msgSend_bezierPathWithLegacyRoundedRect_cornerRadius_(v271, v284, v285, v273, v275, v277, v279, v286);
              v288 = v287;
              v291 = objc_msgSend_CGPath(v288, v289, v290);
              v292 = CGPathRetain(v291);

              CopyByTransformingPathSafe = CGPathCreateCopyByTransformingPathSafe();
              CGPathRelease(v292);
              goto LABEL_67;
            }

            if (objc_msgSend_isEqualToString_(v9, v252, @"circle"))
            {
              v294 = objc_msgSend_objectForKeyedSubscript_(v10, v293, @"r");
              objc_msgSend_floatValue(v294, v295, v296);
              v298 = v297;

              v300 = objc_msgSend_objectForKeyedSubscript_(v10, v299, @"cx");
              objc_msgSend_floatValue(v300, v301, v302);
              v304 = v303 - v298;

              v306 = objc_msgSend_objectForKeyedSubscript_(v10, v305, @"cy");
              objc_msgSend_floatValue(v306, v307, v308);
              v310 = v309 - v298;

              objc_msgSend_bezierPathWithOvalInRect_(MEMORY[0x277D81160], v311, v312, v304, v310, v298 + v298, v298 + v298);
            }

            else
            {
              if (!objc_msgSend_isEqualToString_(v9, v293, @"ellipse"))
              {
                CopyByTransformingPathSafe = CGPathCreateMutable();
                goto LABEL_67;
              }

              v329 = objc_msgSend_objectForKeyedSubscript_(v10, v328, @"rx");
              objc_msgSend_floatValue(v329, v330, v331);
              v333 = v332;

              v335 = objc_msgSend_objectForKeyedSubscript_(v10, v334, @"ry");
              objc_msgSend_floatValue(v335, v336, v337);
              v339 = v338;

              v341 = objc_msgSend_objectForKeyedSubscript_(v10, v340, @"cx");
              objc_msgSend_floatValue(v341, v342, v343);
              v345 = v344 - v333;

              v347 = objc_msgSend_objectForKeyedSubscript_(v10, v346, @"cy");
              objc_msgSend_floatValue(v347, v348, v349);
              v351 = v350 - v339;

              objc_msgSend_bezierPathWithOvalInRect_(MEMORY[0x277D81160], v352, v353, v345, v351, v333 + v333, v339 + v339);
            }
            v354 = ;
            v355 = v354;
            CopyByTransformingPathSafe = objc_msgSend_CGPath(v355, v356, v357);

            CGPathRetain(CopyByTransformingPathSafe);
            goto LABEL_67;
          }

          CopyByTransformingPathSafe = CGPathCreateMutable();
          v237 = objc_msgSend_objectForKeyedSubscript_(v10, v236, @"x1");
          objc_msgSend_floatValue(v237, v238, v239);
          v241 = objc_msgSend_objectForKeyedSubscript_(v10, v240, @"y1");
          objc_msgSend_floatValue(v241, v242, v243);
          CGPathMoveToPointSafe();

          v245 = objc_msgSend_objectForKeyedSubscript_(v10, v244, @"x2");
          objc_msgSend_floatValue(v245, v246, v247);
          v249 = objc_msgSend_objectForKeyedSubscript_(v10, v248, @"y2");
          objc_msgSend_floatValue(v249, v250, v251);
          CGPathAddLineToPointSafe();
        }

LABEL_51:
        v362 = v9;
        v176 = objc_msgSend_objectForKeyedSubscript_(v10, v175, @"stroke-width");
        v178 = objc_msgSend_objectForKeyedSubscript_(v10, v177, @"stroke-linecap");
        v180 = objc_msgSend_objectForKeyedSubscript_(v10, v179, @"stroke-linejoin");
        v183 = objc_msgSend_objectForKeyedSubscript_(v10, v181, @"stroke-miterlimit");
        v184 = 1.0;
        if (v176 && (objc_msgSend_isEqualToString_(v176, v182, &stru_28857D120) & 1) == 0)
        {
          objc_msgSend_floatValue(v176, v182, v185);
          v184 = v186;
        }

        if (v178 && (objc_msgSend_isEqualToString_(v178, v182, &stru_28857D120) & 1) == 0 && (objc_msgSend_isEqualToString_(v178, v182, @"butt") & 1) == 0)
        {
          if (objc_msgSend_isEqualToString_(v178, v182, @"round"))
          {
            v187 = 1;
            goto LABEL_58;
          }

          if (objc_msgSend_isEqualToString_(v178, v182, @"square"))
          {
            v187 = 2;
            goto LABEL_58;
          }

          v313 = MEMORY[0x277D81150];
          v314 = v10;
          v315 = self;
          v316 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v182, "[TSDSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]");
          v318 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v317, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSVGToBezierPathConverter.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v313, v319, v316, v318, 241, 0, "Unexpected Line Cap Style: %@", v178);

          self = v315;
          v10 = v314;

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v320, v321);
        }

        v187 = 0;
LABEL_58:
        if (!v180 || (objc_msgSend_isEqualToString_(v180, v182, &stru_28857D120) & 1) != 0 || (objc_msgSend_isEqualToString_(v180, v182, @"miter") & 1) != 0)
        {
          v188 = v10;
          v189 = self;
LABEL_62:
          v190 = 0;
          goto LABEL_63;
        }

        v188 = v10;
        v189 = self;
        if (objc_msgSend_isEqualToString_(v178, v182, @"round"))
        {
          v190 = 1;
        }

        else
        {
          if ((objc_msgSend_isEqualToString_(v178, v182, @"bevel") & 1) == 0)
          {
            v360 = MEMORY[0x277D81150];
            v322 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v182, "[TSDSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]");
            v324 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v323, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSVGToBezierPathConverter.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v360, v325, v322, v324, 253, 0, "Unexpected Line Join Style: %@", v180);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v326, v327);
            goto LABEL_62;
          }

          v190 = 2;
        }

LABEL_63:
        v191 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v182, CopyByTransformingPathSafe);
        objc_msgSend_setLineWidth_(v191, v192, v193, v184);
        objc_msgSend_setLineCapStyle_(v191, v194, v187);
        objc_msgSend_setLineJoinStyle_(v191, v195, v190);
        if (v183 && (objc_msgSend_isEqualToString_(v183, v196, &stru_28857D120) & 1) == 0)
        {
          objc_msgSend_floatValue(v183, v196, v197);
          objc_msgSend_setMiterLimit_(v191, v199, v200, v198);
        }

        v201 = objc_msgSend_strokedCopy(v191, v196, v197);
        v202 = v201;
        CopyByTransformingPathSafe = objc_msgSend_CGPath(v202, v203, v204);

        CGPathRetain(CopyByTransformingPathSafe);
        v9 = v362;
        v148 = v363;
        self = v189;
        v10 = v188;
        v159 = MEMORY[0x277CBF2C0];
LABEL_67:
        v205 = *&self->mGroupedAffineTransform.c;
        *&t1.a = *&self->mGroupedAffineTransform.a;
        *&t1.c = v205;
        *&t1.tx = *&self->mGroupedAffineTransform.tx;
        v206 = objc_msgSend_objectForKeyedSubscript_(v10, v175, @"transform");

        if (v206)
        {
          memset(&t2, 0, sizeof(t2));
          v208 = objc_msgSend_objectForKeyedSubscript_(v10, v207, @"transform");
          objc_msgSend_transformFromSVGTransformAttributeString_(TSDSVGToBezierPathConverter, v209, v208);

          v365 = t1;
          v364 = t2;
          CGAffineTransformConcat(&t1, &v365, &v364);
        }

        t2 = t1;
        v210 = v159[1];
        *&v365.a = *v159;
        *&v365.c = v210;
        *&v365.tx = v159[2];
        if (!CGAffineTransformEqualToTransform(&t2, &v365))
        {
          v212 = CGPathCreateCopyByTransformingPathSafe();
          CGPathRelease(CopyByTransformingPathSafe);
          CopyByTransformingPathSafe = v212;
        }

        v213 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v211, CopyByTransformingPathSafe);
        objc_msgSend_setWindingRule_(v213, v214, self->mUsesEvenOdd);
        CGPathRelease(CopyByTransformingPathSafe);
        v215 = MEMORY[0x277D81160];
        mFileBezierPath = self->mFileBezierPath;
        p_mFileBezierPath = &self->mFileBezierPath;
        v373[0] = mFileBezierPath;
        v373[1] = v213;
        v219 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v218, v373, 2);
        v221 = objc_msgSend_uniteBezierPaths_(v215, v220, v219);

        if (objc_msgSend_isEmpty(v221, v222, v223))
        {
          if (objc_msgSend_isEmpty(v213, v224, v225))
          {
            goto LABEL_79;
          }

          objc_msgSend_controlPointBounds(v213, v226, v227);
          if (v229 <= 1.0)
          {
            goto LABEL_79;
          }

          v230 = v213;
          if (v228 <= 1.0)
          {
            goto LABEL_79;
          }
        }

        else
        {
          objc_msgSend_controlPointBounds(v221, v224, v225);
          if (v232 <= 1.0)
          {
            goto LABEL_79;
          }

          v230 = v221;
          if (v231 <= 1.0)
          {
            goto LABEL_79;
          }
        }

        objc_storeStrong(p_mFileBezierPath, v230);
LABEL_79:

        goto LABEL_80;
      }

      v169 = objc_msgSend_objectForKeyedSubscript_(v10, v172, @"points");
      shouldClosePathAtEnd = objc_msgSend_newPathFromSVGPolylineString_(TSDSVGToBezierPathConverter, v173, v169);
    }

    CopyByTransformingPathSafe = shouldClosePathAtEnd;

    if ((v166 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_51;
  }

LABEL_80:
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v7 = a4;
  if (objc_msgSend_isEqualToString_(self->mHiddenOnTag, v8, v7))
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

  if (objc_msgSend_isEqualToString_(v7, v9, @"g"))
  {
    v12 = *&self->mGroupedAffineTransform.c;
    *&t1.a = *&self->mGroupedAffineTransform.a;
    *&t1.c = v12;
    *&t1.tx = *&self->mGroupedAffineTransform.tx;
    v13 = *(MEMORY[0x277CBF2C0] + 16);
    v17 = *MEMORY[0x277CBF2C0];
    *&t2.a = *MEMORY[0x277CBF2C0];
    v15 = *(MEMORY[0x277CBF2C0] + 32);
    v16 = v13;
    *&t2.c = v13;
    *&t2.tx = v15;
    if (!CGAffineTransformEqualToTransform(&t1, &t2))
    {
      mGroupedAffineTransformNestedCount = self->mGroupedAffineTransformNestedCount;
      if (mGroupedAffineTransformNestedCount)
      {
        self->mGroupedAffineTransformNestedCount = mGroupedAffineTransformNestedCount - 1;
      }

      else
      {
        *&self->mGroupedAffineTransform.a = v17;
        *&self->mGroupedAffineTransform.c = v16;
        *&self->mGroupedAffineTransform.tx = v15;
      }
    }
  }
}

+ (CGPath)newPathFromSVGPathString:(id)a3 shouldClosePathAtEnd:(BOOL)a4
{
  v96 = a4;
  v110 = *MEMORY[0x277D85DE8];
  v4 = a3;
  Mutable = CGPathCreateMutable();
  v6 = MEMORY[0x277CBF348];
  v98 = *MEMORY[0x277CBF348];
  v107 = *MEMORY[0x277CBF348];
  v97 = v4;
  v8 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v7, v4);
  v108 = *asc_27682D090;
  v109 = 2883717;
  v9 = MEMORY[0x277CCA900];
  v11 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], v10, &v108, 6);
  v13 = objc_msgSend_characterSetWithCharactersInString_(v9, v12, v11);
  objc_msgSend_setCharactersToBeSkipped_(v8, v14, v13);

  if ((objc_msgSend_isAtEnd(v8, v15, v16) & 1) == 0)
  {
    v31 = 0;
    v20 = 0;
    v32 = *v6;
    v33 = v6[1];
    v34 = *v6;
    v35 = v33;
    while (1)
    {
      v36 = v20;
      v37 = objc_msgSend_letterCharacterSet(MEMORY[0x277CCA900], v17, v18);
      v106 = v20;
      v39 = objc_msgSend_scanCharactersFromSet_intoString_(v8, v38, v37, &v106);
      v20 = v106;

      if (v39)
      {
        v42 = objc_msgSend_scanLocation(v8, v40, v41);
        v45 = objc_msgSend_length(v20, v43, v44);
        objc_msgSend_setScanLocation_(v8, v46, v42 - v45 + 1);
      }

      v21 = objc_msgSend_characterAtIndex_(v20, v40, 0);
      y = v33;
      x = v32;
      if (!CGPathIsEmpty(Mutable))
      {
        CurrentPoint = CGPathGetCurrentPoint(Mutable);
        x = CurrentPoint.x;
        y = CurrentPoint.y;
      }

      v52 = objc_msgSend_lowercaseLetterCharacterSet(MEMORY[0x277CCA900], v47, v48);
      IsMember = objc_msgSend_characterIsMember_(v52, v53, v21);

      v56 = v33;
      v57 = v32;
      if (IsMember)
      {
        v58 = CGPathGetCurrentPoint(Mutable);
        v57 = v58.x;
        v56 = v58.y;
      }

      if (v21 > 96)
      {
        if (v21 <= 112)
        {
          if (v21 <= 103)
          {
            if (v21 == 97)
            {
LABEL_60:
              v101[0] = 0.0;
              *&v100 = 0;
              *&v99 = 0;
              v104 = 0;
              v105 = 0;
              v102 = 0.0;
              v103 = 0.0;
              if (objc_msgSend_tsu_scanCGFloat_(v8, v55, v101) && objc_msgSend_tsu_scanCGFloat_(v8, v71, &v100) && objc_msgSend_tsu_scanCGFloat_(v8, v72, &v99) && objc_msgSend_scanInteger_(v8, v73, &v105) && objc_msgSend_scanInteger_(v8, v74, &v104) && objc_msgSend_tsu_scanCGFloat_(v8, v75, &v103))
              {
                v19 = objc_msgSend_tsu_scanCGFloat_(v8, v76, &v102) ^ 1;
              }

              else
              {
                v19 = 1;
              }

              v102 = v56 + v102;
              v103 = v57 + v103;
              v81 = sub_2767B1C04(v105 != 0, v104 != 0, x, y, v101[0], *&v100, *&v99, v103, v102);
              v82 = sub_2766678EC(v81);
              v83 = sub_2767B1F28(Mutable, v81, 1, v82);
              CGPathRelease(v81);
              CGPathRelease(Mutable);
              Mutable = CGPathCreateMutableCopy(v83);
              CGPathRelease(v83);
              goto LABEL_105;
            }

            if (v21 != 99)
            {
              goto LABEL_109;
            }

            goto LABEL_45;
          }

          if (v21 != 104)
          {
            if (v21 != 108)
            {
              if (v21 != 109)
              {
                goto LABEL_109;
              }

              goto LABEL_28;
            }

LABEL_71:
            if (objc_msgSend_tsu_scanCGFloat_(v8, v55, &v107))
            {
              v19 = objc_msgSend_tsu_scanCGFloat_(v8, v61, &v107 + 8) ^ 1;
            }

            else
            {
              v19 = 1;
            }

            if (IsMember)
            {
              if (*&v107 == v32 && *(&v107 + 1) == v33)
              {
                goto LABEL_105;
              }
            }

            else if (*&v107 == x && *(&v107 + 1) == y)
            {
              goto LABEL_105;
            }

            goto LABEL_95;
          }

          goto LABEL_74;
        }

        if (v21 <= 115)
        {
          if (v21 == 113)
          {
LABEL_67:
            v100 = v98;
            *v101 = v98;
            if (objc_msgSend_tsu_scanCGFloat_(v8, v55, v101) && objc_msgSend_tsu_scanCGFloat_(v8, v77, &v101[1]) && objc_msgSend_tsu_scanCGFloat_(v8, v78, &v100))
            {
              v19 = objc_msgSend_tsu_scanCGFloat_(v8, v79, &v100 + 8) ^ 1;
            }

            else
            {
              v19 = 1;
            }

            v101[0] = v57 + v101[0];
            v101[1] = v56 + v101[1];
            *&v100 = v57 + *&v100;
            *(&v100 + 1) = v56 + *(&v100 + 1);
            CGPathAddQuadCurveToPointSafe();
            v35 = v101[1];
            v34 = v101[0];
            goto LABEL_105;
          }

          if (v21 != 115)
          {
LABEL_109:
            v87 = MEMORY[0x277D81150];
            v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "+[TSDSVGToBezierPathConverter newPathFromSVGPathString:shouldClosePathAtEnd:]");
            v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSVGToBezierPathConverter.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v87, v91, v88, v90, 569, 0, "Cannot process path of type %@", v20);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v92, v93);
            objc_msgSend_isAtEnd(v8, v94, v95);
            v19 = 1;
            goto LABEL_3;
          }

          goto LABEL_56;
        }

        if (v21 == 116)
        {
LABEL_75:
          if (v31 - 81 <= 0x23 && ((1 << (v31 - 81)) & 0x900000009) != 0)
          {
            v34 = x + x - v34;
            v35 = y + y - v35;
          }

          else
          {
            v34 = x;
            v35 = y;
          }

          *v101 = 0uLL;
          if (objc_msgSend_tsu_scanCGFloat_(v8, v55, v101))
          {
            v19 = objc_msgSend_tsu_scanCGFloat_(v8, v80, &v101[1]) ^ 1;
          }

          else
          {
            v19 = 1;
          }

          v101[0] = v57 + v101[0];
          v101[1] = v56 + v101[1];
          CGPathAddQuadCurveToPointSafe();
          goto LABEL_105;
        }

        if (v21 != 118)
        {
          if (v21 != 122)
          {
            goto LABEL_109;
          }

          goto LABEL_39;
        }
      }

      else
      {
        if (v21 <= 80)
        {
          if (v21 <= 71)
          {
            if (v21 == 65)
            {
              goto LABEL_60;
            }

            if (v21 != 67)
            {
              goto LABEL_109;
            }

LABEL_45:
            v100 = v98;
            *v101 = v98;
            v99 = v98;
            if (objc_msgSend_tsu_scanCGFloat_(v8, v55, v101) && objc_msgSend_tsu_scanCGFloat_(v8, v63, &v101[1]) && objc_msgSend_tsu_scanCGFloat_(v8, v64, &v100) && objc_msgSend_tsu_scanCGFloat_(v8, v65, &v100 + 8) && objc_msgSend_tsu_scanCGFloat_(v8, v66, &v99))
            {
              v19 = objc_msgSend_tsu_scanCGFloat_(v8, v67, &v99 + 8) ^ 1;
            }

            else
            {
              v19 = 1;
            }

            v101[0] = v57 + v101[0];
            v101[1] = v56 + v101[1];
            *&v100 = v57 + *&v100;
            *(&v100 + 1) = v56 + *(&v100 + 1);
            *&v99 = v57 + *&v99;
            *(&v99 + 1) = v56 + *(&v99 + 1);
            CGPathAddCurveToPointSafe();
            goto LABEL_105;
          }

          if (v21 != 72)
          {
            if (v21 != 76)
            {
              if (v21 != 77)
              {
                goto LABEL_109;
              }

LABEL_28:
              if (objc_msgSend_tsu_scanCGFloat_(v8, v55, &v107))
              {
                v60 = objc_msgSend_tsu_scanCGFloat_(v8, v59, &v107 + 8);
              }

              else
              {
                v60 = 0;
              }

              sub_2766678EC(Mutable);
              CGPathMoveToPointSafe();
              if (objc_msgSend_tsu_scanCGFloat_(v8, v84, &v107))
              {
                do
                {
                  v60 = objc_msgSend_tsu_scanCGFloat_(v8, v61, &v107 + 8);
                  if (IsMember)
                  {
                    CGPathGetCurrentPoint(Mutable);
                  }

                  CGPathAddLineToPointSafe();
                }

                while ((objc_msgSend_tsu_scanCGFloat_(v8, v86, &v107) & 1) != 0);
              }

              v19 = v60 ^ 1;
              goto LABEL_105;
            }

            goto LABEL_71;
          }

LABEL_74:
          v19 = objc_msgSend_tsu_scanCGFloat_(v8, v55, &v107) ^ 1;
          goto LABEL_95;
        }

        if (v21 <= 83)
        {
          if (v21 == 81)
          {
            goto LABEL_67;
          }

          if (v21 != 83)
          {
            goto LABEL_109;
          }

LABEL_56:
          v100 = v98;
          *v101 = v98;
          if (objc_msgSend_tsu_scanCGFloat_(v8, v55, v101) && objc_msgSend_tsu_scanCGFloat_(v8, v68, &v101[1]) && objc_msgSend_tsu_scanCGFloat_(v8, v69, &v100))
          {
            v19 = objc_msgSend_tsu_scanCGFloat_(v8, v70, &v100 + 8) ^ 1;
          }

          else
          {
            v19 = 1;
          }

          v101[0] = v57 + v101[0];
          v101[1] = v56 + v101[1];
          *&v100 = v57 + *&v100;
          *(&v100 + 1) = v56 + *(&v100 + 1);
          CGPathAddCurveToPointSafe();
          goto LABEL_105;
        }

        if (v21 == 84)
        {
          goto LABEL_75;
        }

        if (v21 != 86)
        {
          if (v21 != 90)
          {
            goto LABEL_109;
          }

LABEL_39:
          CGPathCloseSubpath(Mutable);
          v19 = 0;
          goto LABEL_105;
        }
      }

      v19 = objc_msgSend_tsu_scanCGFloat_(v8, v55, &v107 + 8) ^ 1;
LABEL_95:
      CGPathAddLineToPointSafe();
LABEL_105:
      if ((objc_msgSend_isAtEnd(v8, v61, v62) & 1) == 0)
      {
        v31 = v21;
        if (!v19)
        {
          continue;
        }
      }

      goto LABEL_3;
    }
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
LABEL_3:
  if (v96 && (v21 & 0xFFDF) != 0x5A)
  {
    MutableCopy = CGPathCreateMutableCopy(Mutable);
    CGPathRelease(Mutable);
    CGPathCloseSubpath(MutableCopy);
    Mutable = MutableCopy;
  }

  if (v19)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "+[TSDSVGToBezierPathConverter newPathFromSVGPathString:shouldClosePathAtEnd:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSVGToBezierPathConverter.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 589, 0, "Bailing on operation %c", v21);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  return Mutable;
}

+ (CGPath)newPathFromSVGPolylineString:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  Mutable = CGPathCreateMutable();
  v6 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v5, v3, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
  v31 = *asc_27682D090;
  v32 = 2883717;
  v7 = MEMORY[0x277CCA900];
  v9 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], v8, &v31, 6);
  v11 = objc_msgSend_characterSetWithCharactersInString_(v7, v10, v9);
  objc_msgSend_setCharactersToBeSkipped_(v6, v12, v11);

  if (objc_msgSend_tsu_scanCGFloat_(v6, v13, &v30) && (objc_msgSend_tsu_scanCGFloat_(v6, v14, &v30 + 8) & 1) != 0)
  {
    CGPathMoveToPointSafe();
    if ((objc_msgSend_isAtEnd(v6, v15, v16) & 1) == 0)
    {
      while (objc_msgSend_tsu_scanCGFloat_(v6, v17, &v30) && (objc_msgSend_tsu_scanCGFloat_(v6, v18, &v30 + 8) & 1) != 0)
      {
        CGPathAddLineToPointSafe();
        if (objc_msgSend_isAtEnd(v6, v20, v21))
        {
          goto LABEL_10;
        }
      }

      objc_msgSend_isAtEnd(v6, v18, v19);
    }

LABEL_10:
    CGPathCloseSubpath(Mutable);
  }

  else
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "+[TSDSVGToBezierPathConverter newPathFromSVGPolylineString:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSVGToBezierPathConverter.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 606, 0, "No value for initial polyline point!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  }

  return Mutable;
}

+ (CGPath)newPathFromSVGPolygonString:(id)a3
{
  v3 = objc_msgSend_newPathFromSVGPolylineString_(TSDSVGToBezierPathConverter, a2, a3);
  MutableCopy = CGPathCreateMutableCopy(v3);
  CGPathRelease(v3);
  CGPathCloseSubpath(MutableCopy);
  return MutableCopy;
}

+ (CGAffineTransform)transformFromSVGTransformAttributeString:(SEL)a3
{
  v195 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v191 = 0;
  v7 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x277CCAC68], v6, @"(matrix|translate|scale|rotate)\\((.*?)\\)", 1, &v191);
  v169 = v191;
  v10 = objc_msgSend_length(v5, v8, v9);
  v170 = v7;
  v12 = objc_msgSend_matchesInString_options_range_(v7, v11, v5, 0, 0, v10);
  v13 = MEMORY[0x277CBF2C0];
  v171 = *(MEMORY[0x277CBF2C0] + 16);
  v172 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v171;
  *&retstr->tx = *(v13 + 32);
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  obj = v12;
  v177 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v187, v194, 16);
  if (v177)
  {
    v16 = *(v13 + 32);
    v17 = *(v13 + 40);
    v176 = *v188;
    v18 = 0x277D81000uLL;
    do
    {
      v19 = 0;
      do
      {
        if (*v188 != v176)
        {
          objc_enumerationMutation(obj);
        }

        v183 = v19;
        v20 = *(*(&v187 + 1) + 8 * v19);
        v21 = objc_msgSend_rangeAtIndex_(v20, v15, 1);
        v184 = objc_msgSend_substringWithRange_(v5, v22, v21, v22);
        v24 = objc_msgSend_rangeAtIndex_(v20, v23, 2);
        v182 = objc_msgSend_substringWithRange_(v5, v25, v24, v25);
        v27 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v26, v182);
        v192 = *asc_27682D090;
        v193 = 2883717;
        v28 = MEMORY[0x277CCA900];
        v30 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], v29, &v192, 6);
        v32 = objc_msgSend_characterSetWithCharactersInString_(v28, v31, v30);
        objc_msgSend_setCharactersToBeSkipped_(v27, v33, v32);

        v36 = objc_msgSend_array(MEMORY[0x277CBEB18], v34, v35);
        if ((objc_msgSend_isAtEnd(v27, v37, v38) & 1) == 0)
        {
          v40 = 1;
          do
          {
            t1.a = 0.0;
            v41 = objc_msgSend_tsu_scanCGFloat_(v27, v39, &t1);
            HIDWORD(v42) = HIDWORD(t1.a);
            *&v42 = t1.a;
            v45 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v43, v44, v42);
            objc_msgSend_addObject_(v36, v46, v45);
            if (v40 >= 7)
            {
              v48 = *(v18 + 336);
              v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "+[TSDSVGToBezierPathConverter transformFromSVGTransformAttributeString:]");
              v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSVGToBezierPathConverter.m");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v52, v49, v51, 675, 0, "Too many numbers for transform %@", v5);

              v18 = 0x277D81000uLL;
              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
              v41 = 0;
            }

            if (objc_msgSend_isAtEnd(v27, v55, v56))
            {
              break;
            }

            ++v40;
          }

          while ((v41 & 1) != 0);
        }

        v57 = v184;
        if (objc_msgSend_isEqualToString_(v184, v39, @"matrix"))
        {
          if (objc_msgSend_count(v36, v58, v59) != 6)
          {
            v107 = *(v18 + 336);
            v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "+[TSDSVGToBezierPathConverter transformFromSVGTransformAttributeString:]");
            v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSVGToBezierPathConverter.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v107, v111, v108, v110, 693, 0, "Not enough numbers for matrix transform! %@", v5, v168);
LABEL_19:

            objc_msgSend_logBacktraceThrottled(*(v18 + 336), v112, v113);
            ty = v17;
            tx = v16;
            v115 = v171;
            v114 = v172;
            goto LABEL_34;
          }

          v174 = objc_msgSend_objectAtIndexedSubscript_(v36, v60, 0);
          objc_msgSend_floatValue(v174, v61, v62);
          v180 = v63;
          v65 = objc_msgSend_objectAtIndexedSubscript_(v36, v64, 1);
          objc_msgSend_floatValue(v65, v66, v67);
          v178 = v68;
          v70 = objc_msgSend_objectAtIndexedSubscript_(v36, v69, 2);
          objc_msgSend_floatValue(v70, v71, v72);
          v173 = v73;
          v75 = objc_msgSend_objectAtIndexedSubscript_(v36, v74, 3);
          objc_msgSend_floatValue(v75, v76, v77);
          v78 = vcvtq_f64_f32(__PAIR64__(v178, v180));
          v179 = vcvtq_f64_f32(__PAIR64__(v79, v173));
          v181 = v78;
          v81 = objc_msgSend_objectAtIndexedSubscript_(v36, v80, 4);
          objc_msgSend_floatValue(v81, v82, v83);
          tx = v84;
          objc_msgSend_objectAtIndexedSubscript_(v36, v86, 5);
          v88 = v87 = retstr;
          objc_msgSend_floatValue(v88, v89, v90);
          ty = v91;

          retstr = v87;
          v57 = v184;

          v18 = 0x277D81000;
          goto LABEL_33;
        }

        if (objc_msgSend_isEqualToString_(v184, v58, @"translate"))
        {
          if (objc_msgSend_count(v36, v93, v94) == 2)
          {
            v97 = objc_msgSend_objectAtIndexedSubscript_(v36, v95, 0);
            objc_msgSend_floatValue(v97, v98, v99);
            v101 = v100;
            v103 = objc_msgSend_objectAtIndexedSubscript_(v36, v102, 1);
            objc_msgSend_floatValue(v103, v104, v105);
            CGAffineTransformMakeTranslation(&t1, v101, v106);
            goto LABEL_31;
          }

          if (objc_msgSend_count(v36, v95, v96) != 1)
          {
            v147 = *(v18 + 336);
            v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v125, "+[TSDSVGToBezierPathConverter transformFromSVGTransformAttributeString:]");
            v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v148, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSVGToBezierPathConverter.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v147, v149, v108, v110, 704, 0, "Wrong number of numbers for translate transform! %@", v5, v168);
            goto LABEL_19;
          }

          v97 = objc_msgSend_objectAtIndexedSubscript_(v36, v125, 0);
          objc_msgSend_floatValue(v97, v126, v127);
          CGAffineTransformMakeTranslation(&t1, v128, 0.0);
          v179 = *&t1.c;
          v181 = *&t1.a;
          tx = t1.tx;
          ty = t1.ty;
LABEL_32:

LABEL_33:
          v115 = v179;
          v114 = v181;
          goto LABEL_34;
        }

        if (objc_msgSend_isEqualToString_(v184, v93, @"scale"))
        {
          if (objc_msgSend_count(v36, v116, v117) == 2)
          {
            v97 = objc_msgSend_objectAtIndexedSubscript_(v36, v118, 0);
            objc_msgSend_floatValue(v97, v120, v121);
            v123 = v122;
            objc_msgSend_objectAtIndexedSubscript_(v36, v124, 1);
          }

          else
          {
            if (objc_msgSend_count(v36, v118, v119) != 1)
            {
              v160 = *(v18 + 336);
              v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v138, "+[TSDSVGToBezierPathConverter transformFromSVGTransformAttributeString:]");
              v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v161, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSVGToBezierPathConverter.m");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v160, v162, v108, v110, 714, 0, "Wrong number of numbers for scale transform! %@", v5, v168);
              goto LABEL_19;
            }

            v97 = objc_msgSend_objectAtIndexedSubscript_(v36, v138, 0);
            objc_msgSend_floatValue(v97, v139, v140);
            v123 = v141;
            objc_msgSend_objectAtIndexedSubscript_(v36, v142, 0);
          }
          v103 = ;
          objc_msgSend_floatValue(v103, v143, v144);
          CGAffineTransformMakeScale(&t1, v123, v145);
LABEL_31:
          v179 = *&t1.c;
          v181 = *&t1.a;
          tx = t1.tx;
          ty = t1.ty;

          goto LABEL_32;
        }

        if (!objc_msgSend_isEqualToString_(v184, v116, @"rotate"))
        {
          v150 = *(v18 + 336);
          v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v129, "+[TSDSVGToBezierPathConverter transformFromSVGTransformAttributeString:]");
          v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v151, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSVGToBezierPathConverter.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v152, v108, v110, 726, 0, "Unhandled but parsed transform %@! (%@)", v184, v5);
          goto LABEL_19;
        }

        if (objc_msgSend_count(v36, v129, v130) == 1)
        {
          v133 = objc_msgSend_objectAtIndexedSubscript_(v36, v131, 0);
          objc_msgSend_floatValue(v133, v134, v135);
          v137 = v136 * 0.0174532925;

          CGAffineTransformMakeRotation(&t1, v137);
          v114 = *&t1.a;
          v115 = *&t1.c;
          tx = t1.tx;
          ty = t1.ty;
        }

        else
        {
          v153 = objc_msgSend_count(v36, v131, v132);
          v154 = *(v18 + 336);
          v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v155, "+[TSDSVGToBezierPathConverter transformFromSVGTransformAttributeString:]");
          v159 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v157, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDSVGToBezierPathConverter.m");
          if (v153 == 3)
          {
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v154, v158, v156, v159, 721, 0, "Rotation has three parameters but we only handle one", v167);
          }

          else
          {
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v154, v158, v156, v159, 723, 0, "Wrong number of numbers for rotate transform! %@", v5);
          }

          objc_msgSend_logBacktraceThrottled(*(v18 + 336), v163, v164);
          ty = v17;
          tx = v16;
          v115 = v171;
          v114 = v172;
          v57 = v184;
        }

LABEL_34:
        *&t1.a = v114;
        *&t1.c = v115;
        t1.tx = tx;
        t1.ty = ty;
        v146 = *&retstr->c;
        *&t2.a = *&retstr->a;
        *&t2.c = v146;
        *&t2.tx = *&retstr->tx;
        CGAffineTransformConcat(retstr, &t1, &t2);

        v19 = v183 + 1;
      }

      while (v183 + 1 != v177);
      v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v187, v194, 16);
      v177 = v165;
    }

    while (v165);
  }

  return result;
}

@end