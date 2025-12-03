@interface TSDBrushStrokeLoader
+ (double)p_brushPixelScaleAt100Percent;
+ (id)p_allLoadableBrushStrokeNames;
+ (id)p_allStorageCaches;
+ (id)p_brushStrokeLoadQueue;
+ (id)p_cacheDirectory;
+ (id)p_storageCacheForCurrentThread;
+ (id)p_storagesByBrushName;
+ (id)storageForBrushStrokeNamed:(id)named;
+ (void)backgroundLoadAllBrushStrokes;
+ (void)p_clearOnDiskCache;
+ (void)p_loadBrushIfNeeded:(id)needed;
+ (void)p_loadImageForBrush:(id)brush intoStorage:(id)storage;
+ (void)p_loadLineEndTextureForBrush:(id)brush lineEnd:(id)end path:(CGPath *)path andBounds:(CGRect)bounds;
+ (void)p_loadLineEndsForBrush:(id)brush fromSVGDoc:(_xmlDoc *)doc intoStorage:(id)storage;
+ (void)p_loadSectionsForBrush:(id)brush fromSVGDoc:(_xmlDoc *)doc intoStorage:(id)storage;
@end

@implementation TSDBrushStrokeLoader

+ (id)storageForBrushStrokeNamed:(id)named
{
  namedCopy = named;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_2766BC0C8;
  v27 = sub_2766BC0D8;
  v28 = 0;
  v7 = objc_msgSend_p_storageCacheForCurrentThread(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, namedCopy);
  v10 = v24[5];
  v24[5] = v9;

  v13 = v24[5];
  if (!v13)
  {
    v14 = objc_msgSend_p_brushStrokeLoadQueue(TSDBrushStrokeLoader, v11, v12);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2766BC0E0;
    block[3] = &unk_27A6CCC78;
    selfCopy = self;
    v15 = namedCopy;
    v20 = v15;
    v21 = &v23;
    dispatch_sync(v14, block);

    objc_msgSend_setObject_forKey_(v7, v16, v24[5], v15);
    v13 = v24[5];
  }

  v17 = v13;

  _Block_object_dispose(&v23, 8);

  return v17;
}

+ (void)backgroundLoadAllBrushStrokes
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = objc_msgSend_p_allLoadableBrushStrokeNames(self, a2, v2);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v17, v21, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2766BC2F4;
        block[3] = &unk_27A6CCCA0;
        block[4] = v9;
        block[5] = self;
        v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, block);
        v13 = objc_msgSend_p_brushStrokeLoadQueue(TSDBrushStrokeLoader, v11, v12);
        dispatch_async(v13, v10);

        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v17, v21, 16);
    }

    while (v6);
  }
}

+ (id)p_allLoadableBrushStrokeNames
{
  if (qword_280A4C288 != -1)
  {
    sub_2768088F0();
  }

  v3 = qword_280A4C280;

  return v3;
}

+ (id)p_storageCacheForCurrentThread
{
  v4 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2);
  v7 = objc_msgSend_threadDictionary(v4, v5, v6);

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_2766BC0C8;
  v20 = sub_2766BC0D8;
  v21 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"TSDBrushStrokeLoaderStorageCache");
  v11 = v17[5];
  if (!v11)
  {
    v12 = objc_msgSend_p_brushStrokeLoadQueue(TSDBrushStrokeLoader, v9, v10);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2766BC59C;
    block[3] = &unk_27A6CCCC8;
    block[4] = v7;
    block[5] = &v16;
    block[6] = self;
    dispatch_sync(v12, block);

    v11 = v17[5];
  }

  v13 = v11;
  _Block_object_dispose(&v16, 8);

  return v13;
}

+ (id)p_allStorageCaches
{
  if (qword_280A4C298 != -1)
  {
    sub_276808904();
  }

  v3 = qword_280A4C290;

  return v3;
}

+ (id)p_brushStrokeLoadQueue
{
  if (qword_280A4C2A8 != -1)
  {
    sub_276808918();
  }

  v3 = qword_280A4C2A0;

  return v3;
}

+ (id)p_storagesByBrushName
{
  if (qword_280A4C2B8 != -1)
  {
    sub_27680892C();
  }

  v3 = qword_280A4C2B0;

  return v3;
}

+ (id)p_cacheDirectory
{
  if (qword_280A4C2C8 != -1)
  {
    sub_276808940();
  }

  v4 = qword_280A4C2C0;

  return objc_msgSend_path(v4, a2, v2);
}

+ (double)p_brushPixelScaleAt100Percent
{
  objc_msgSend_tsk_screenScale(MEMORY[0x277D759A0], a2, v2);
  v4 = v3;
  v7 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v5, v6);
  objc_msgSend_bounds(v7, v8, v9);
  v11 = v10;
  v13 = v12;

  return fmax(v4 * sqrt(v11 * v13 / 786432.0), 1.0);
}

+ (void)p_loadBrushIfNeeded:(id)needed
{
  neededCopy = needed;
  v6 = objc_msgSend_p_storagesByBrushName(self, v4, v5);
  if (!objc_msgSend_count(v6, v7, v8))
  {
    v11 = objc_msgSend_p_cacheDirectory(TSDBrushStrokeLoader, v9, v10);
    v13 = objc_msgSend_stringByAppendingString_(v11, v12, @"/TSDBrushCacheVersion.txt");
    v15 = objc_msgSend_stringWithContentsOfFile_encoding_error_(MEMORY[0x277CCACA8], v14, v13, 4, 0);
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%ld", 15);
    if (!v15 || (objc_msgSend_isEqualToString_(v15, v17, v19) & 1) == 0)
    {
      objc_msgSend_p_clearOnDiskCache(self, v17, v18);
      objc_msgSend_writeToFile_atomically_encoding_error_(v19, v20, v13, 0, 4, 0);
    }
  }

  v21 = objc_msgSend_objectForKeyedSubscript_(v6, v9, neededCopy);

  if (!v21)
  {
    v22 = objc_alloc_init(TSDMutableBrushStrokeStorage);
    v24 = objc_msgSend_stringByAppendingString_(@"TSDBrush_", v23, neededCopy);
    v27 = sub_2767B590C(v24, v25, v26);
    v29 = objc_msgSend_pathForResource_ofType_(v27, v28, v24, @"svg");

    v71 = v29;
    v32 = objc_msgSend_tsu_fileURLWithPath_(MEMORY[0x277CBEBC0], v30, v29);
    if (!v32)
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "+[TSDBrushStrokeLoader p_loadBrushIfNeeded:]");
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStrokeLoader.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 219, 0, "Unable to load brush with nil url, brushName: %{public}@", neededCopy);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
    }

    v40 = objc_alloc(MEMORY[0x277CBEA90]);
    v42 = objc_msgSend_initWithContentsOfURL_options_error_(v40, v41, v32, 0, 0);
    v45 = objc_msgSend_length(v42, v43, v44);
    if (v45 >> 31)
    {
      sub_276808954(v45, v46);
    }

    else
    {
      v47 = v45;
      v48 = v42;
      v51 = objc_msgSend_bytes(v48, v49, v50);
      Memory = xmlReadMemory(v51, v47, "", 0, 1);
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v53, @"//svg:%@[1]", @"split-at-sharp-angles");
      v54 = v22;
      v55 = v32;
      v57 = v56 = v24;
      v58 = sub_2766BCC78(Memory, v57);
      v61 = objc_msgSend_count(v58, v59, v60) != 0;

      v24 = v56;
      v32 = v55;
      v22 = v54;
      v63 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v62, v61);
      objc_msgSend_setOption_forKey_(v54, v64, v63, @"split-at-sharp-angles");

      objc_msgSend_p_loadLineEndsForBrush_fromSVGDoc_intoStorage_(self, v65, neededCopy, Memory, v54);
      objc_msgSend_p_loadSectionsForBrush_fromSVGDoc_intoStorage_(self, v66, neededCopy, Memory, v54);
      xmlFreeDoc(Memory);
      v69 = objc_msgSend_deepCopy(v54, v67, v68);
      objc_msgSend_setObject_forKeyedSubscript_(v6, v70, v69, neededCopy);
    }
  }
}

+ (void)p_clearOnDiskCache
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_p_cacheDirectory(TSDBrushStrokeLoader, a2, v2);
  v6 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v4, v5);
  v52 = 0;
  v46 = v3;
  v8 = objc_msgSend_contentsOfDirectoryAtPath_error_(v6, v7, v3, &v52);
  v9 = v52;

  if (!v8)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "+[TSDBrushStrokeLoader p_clearOnDiskCache]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStrokeLoader.m");
    v17 = objc_msgSend_description(v9, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v12, v14, 252, 0, "%{public}@", v17);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v21 = v8;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v48, v53, 16);
  if (v23)
  {
    v25 = v23;
    v26 = *v49;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v49 != v26)
        {
          objc_enumerationMutation(v21);
        }

        v28 = *(*(&v48 + 1) + 8 * i);
        if (objc_msgSend_hasPrefix_(v28, v24, @"TSDBrush"))
        {
          v30 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v24, v29);
          v32 = objc_msgSend_stringByAppendingPathComponent_(v46, v31, v28);
          v47 = v9;
          v34 = objc_msgSend_removeItemAtPath_error_(v30, v33, v32, &v47);
          v35 = v47;

          if ((v34 & 1) == 0)
          {
            v36 = MEMORY[0x277D81150];
            v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "+[TSDBrushStrokeLoader p_clearOnDiskCache]");
            v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStrokeLoader.m");
            v42 = objc_msgSend_description(v35, v40, v41);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v37, v39, 255, 0, "%@", v42);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
          }

          v9 = v35;
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v48, v53, 16);
    }

    while (v25);
  }
}

+ (void)p_loadLineEndTextureForBrush:(id)brush lineEnd:(id)end path:(CGPath *)path andBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  endCopy = end;
  brushCopy = brush;
  v15 = objc_msgSend_p_cacheDirectory(TSDBrushStrokeLoader, v13, v14);
  v17 = objc_msgSend_stringByAppendingFormat_(v15, v16, @"/TSDBrushEnd_%@_%@.png", brushCopy, endCopy);

  v19 = objc_msgSend_imageWithContentsOfFile_(MEMORY[0x277D811F8], v18, v17);
  v22 = v19;
  if (v19)
  {
    v23 = objc_msgSend_CGImage(v19, v20, v21);
    Image = CGImageRetain(v23);
  }

  else
  {
    objc_msgSend_p_brushPixelScaleAt100Percent(TSDBrushStrokeLoader, v20, v21);
    v26 = v25 * 100.0 / height;
    v27 = width * v26;
    v28 = height * v26;
    v29 = TSDBitmapContextCreate(3, v27, v28);
    CGContextSetRGBFillColor(v29, 1.0, 1.0, 1.0, 1.0);
    v30 = v27;
    v41.size.width = ceilf(v30);
    v31 = v28;
    v41.size.height = ceilf(v31);
    v41.origin.x = 0.0;
    v41.origin.y = 0.0;
    CGContextFillRect(v29, v41);
    CGContextSetRGBFillColor(v29, 0.0, 0.0, 0.0, 1.0);
    CGAffineTransformMakeScale(&transform, v26, v26);
    CGContextConcatCTM(v29, &transform);
    CGAffineTransformMakeTranslation(&transform, -x, -y);
    CGContextConcatCTM(v29, &transform);
    CGContextAddPathSafe();
    CGContextFillPath(v29);
    Image = CGBitmapContextCreateImage(v29);
    v33 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v32, Image);
    v36 = objc_msgSend_PNGRepresentation(v33, v34, v35);

    v38 = objc_msgSend_tsu_fileURLWithPath_(MEMORY[0x277CBEBC0], v37, v17);
    objc_msgSend_writeToURL_atomically_(v36, v39, v38, 1);
    CGContextRelease(v29);
  }

  CGImageRelease(Image);
}

+ (void)p_loadLineEndsForBrush:(id)brush fromSVGDoc:(_xmlDoc *)doc intoStorage:(id)storage
{
  v127 = *MEMORY[0x277D85DE8];
  brushCopy = brush;
  storageCopy = storage;
  sub_2766BCC78(doc, @"//svg:path['_wrap'=substring(@id,string-length(@id)-4)]");
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = v125 = 0u;
  v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v122, v126, 16);
  if (v111)
  {
    v9 = @"nodeAttributes";
    v106 = *v123;
    v10 = 0x277CCA000uLL;
    v104 = *MEMORY[0x277CBF2C0];
    v105 = *(MEMORY[0x277CBF2C0] + 16);
    v102 = *(MEMORY[0x277CBF2C0] + 40);
    v103 = *(MEMORY[0x277CBF2C0] + 32);
    docCopy = doc;
    do
    {
      v11 = 0;
      do
      {
        if (*v123 != v106)
        {
          objc_enumerationMutation(obj);
        }

        v116 = v11;
        v12 = objc_msgSend_objectForKey_(*(*(&v122 + 1) + 8 * v11), v8, v9);
        v118 = objc_msgSend_objectForKey_(v12, v13, @"d");
        v15 = objc_msgSend_objectForKey_(v12, v14, @"id");
        v18 = objc_msgSend_length(v15, v16, v17);
        v20 = objc_msgSend_substringToIndex_(v15, v19, v18 - 5);

        v22 = objc_msgSend_stringWithFormat_(*(v10 + 3240), v21, @"//svg:path[@id='%@_end']", v20);
        v23 = sub_2766BCC78(doc, v22);

        v119 = v23;
        if (objc_msgSend_count(v23, v24, v25) != 1)
        {
          v28 = MEMORY[0x277D81150];
          v29 = objc_msgSend_stringWithUTF8String_(*(v10 + 3240), v26, "+[TSDBrushStrokeLoader p_loadLineEndsForBrush:fromSVGDoc:intoStorage:]");
          v31 = objc_msgSend_stringWithUTF8String_(*(v10 + 3240), v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStrokeLoader.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 311, 0, "Arrow head needs path");

          v10 = 0x277CCA000uLL;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
        }

        v35 = objc_msgSend_lastObject(v119, v26, v27);
        v37 = objc_msgSend_objectForKey_(v35, v36, v9);

        v117 = objc_msgSend_objectForKey_(v37, v38, @"d");
        v40 = objc_msgSend_stringWithFormat_(*(v10 + 3240), v39, @"//svg:rect[@id='%@_end_bounds']", v20);
        v41 = sub_2766BCC78(doc, v40);

        if (objc_msgSend_count(v41, v42, v43) != 1)
        {
          v46 = MEMORY[0x277D81150];
          v47 = objc_msgSend_stringWithUTF8String_(*(v10 + 3240), v44, "+[TSDBrushStrokeLoader p_loadLineEndsForBrush:fromSVGDoc:intoStorage:]");
          v49 = objc_msgSend_stringWithUTF8String_(*(v10 + 3240), v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStrokeLoader.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v50, v47, v49, 318, 0, "Arrow head needs bounding rect");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52);
        }

        v53 = objc_msgSend_lastObject(v41, v44, v45);
        v55 = objc_msgSend_objectForKey_(v53, v54, v9);

        v57 = objc_msgSend_objectForKey_(v55, v56, @"x");
        objc_msgSend_doubleValue(v57, v58, v59);
        v61 = v60;
        v113 = v60;

        v63 = objc_msgSend_objectForKey_(v55, v62, @"y");
        objc_msgSend_doubleValue(v63, v64, v65);
        v67 = v66;

        v69 = objc_msgSend_objectForKey_(v55, v68, @"width");
        objc_msgSend_doubleValue(v69, v70, v71);
        v115 = v72;

        v74 = objc_msgSend_objectForKey_(v55, v73, @"height");
        objc_msgSend_doubleValue(v74, v75, v76);
        v78 = v77;
        v114 = v77;

        v80 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v20, v79, @"_", @" ");

        *&v120.a = v104;
        *&v120.c = v105;
        v120.tx = v103;
        v120.ty = v102;
        CGAffineTransformTranslate(&v121, &v120, 0.0, -0.5);
        v120 = v121;
        CGAffineTransformScale(&v121, &v120, 2.0 / v78, 2.0 / v78);
        v120 = v121;
        CGAffineTransformTranslate(&v121, &v120, -v61, -v67);
        v120 = v121;
        CGAffineTransformRotate(&v121, &v120, -1.57079633);
        a = v121.a;
        b = v121.b;
        c = v121.c;
        d = v121.d;
        tx = v121.tx;
        ty = v121.ty;
        v88 = objc_msgSend_newPathFromSVGPathString_(TSDSVGToBezierPathConverter, v87, v118);
        v121.a = a;
        v121.b = b;
        v112 = b;
        v121.c = c;
        v121.d = d;
        v121.tx = tx;
        v121.ty = ty;
        v89 = sub_2767B2030();
        v91 = v9;
        v92 = objc_msgSend_newPathFromSVGPathString_(TSDSVGToBezierPathConverter, v90, v117);
        v121.a = a;
        v121.b = b;
        v121.c = c;
        v121.d = d;
        v121.tx = tx;
        v121.ty = ty;
        v93 = sub_2767B2030();
        v128.origin.x = v113;
        v128.origin.y = v67;
        v128.size.width = v115;
        v128.size.height = v114;
        MaxX = CGRectGetMaxX(v128);
        v129.origin.x = v113;
        v129.origin.y = v67;
        v129.size.width = v115;
        v129.size.height = v114;
        MidY = CGRectGetMidY(v129);
        v97 = objc_msgSend_lineEndWithPath_wrapPath_endPoint_isFilled_identifier_(TSDLineEnd, v96, v93, v89, 1, v80, tx + c * MidY + a * MaxX, ty + d * MidY + v112 * MaxX);
        objc_msgSend_setLineEnd_forKey_(storageCopy, v98, v97, v80);
        BoundingBox = CGPathGetBoundingBox(v89);
        objc_msgSend_p_loadLineEndTextureForBrush_lineEnd_path_andBounds_(self, v99, brushCopy, v80, v93, BoundingBox.origin.x, BoundingBox.origin.y, BoundingBox.size.width, BoundingBox.size.height);
        v100 = v92;
        v9 = v91;
        v10 = 0x277CCA000;
        CGPathRelease(v100);
        CGPathRelease(v93);
        CGPathRelease(v88);
        CGPathRelease(v89);

        v11 = v116 + 1;
        doc = docCopy;
      }

      while (v111 != v116 + 1);
      v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v122, v126, 16);
    }

    while (v111);
  }
}

+ (void)p_loadImageForBrush:(id)brush intoStorage:(id)storage
{
  v124 = *MEMORY[0x277D85DE8];
  brushCopy = brush;
  storageCopy = storage;
  v104 = objc_msgSend_p_cacheDirectory(TSDBrushStrokeLoader, v7, v8);
  v105 = brushCopy;
  v10 = objc_msgSend_stringByAppendingFormat_(v104, v9, @"/TSDBrush_%@.png", brushCopy);
  v112 = objc_msgSend_paths(storageCopy, v11, v12);
  if (!v112)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[TSDBrushStrokeLoader p_loadImageForBrush:intoStorage:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStrokeLoader.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 361, 0, "invalid nil value for '%{public}s'", "paths");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v106 = v10;
  v21 = objc_msgSend_imageWithContentsOfFile_(MEMORY[0x277D811F8], v13, v10);
  if (v21)
  {
    v24 = v21;
  }

  else
  {
    v109 = objc_msgSend_bounds(storageCopy, v22, v23);
    if (!v109)
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "+[TSDBrushStrokeLoader p_loadImageForBrush:intoStorage:]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStrokeLoader.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 367, 0, "invalid nil value for '%{public}s'", "bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
    }

    v34 = objc_msgSend_totalSectionCount(storageCopy, v25, v26);
    if (v34 == 1)
    {
      v35 = 2048.0;
    }

    else
    {
      v35 = 512.0;
    }

    v36 = TSDBitmapContextCreate(3, v35, v34 * 80.0);
    CGContextSetRGBFillColor(v36, 0.0, 0.0, 0.0, 1.0);
    ClipBoundingBox = CGContextGetClipBoundingBox(v36);
    CGContextFillRect(v36, ClipBoundingBox);
    CGContextSetRGBFillColor(v36, 1.0, 1.0, 1.0, 1.0);
    v39 = objc_msgSend_allKeys(v112, v37, v38);
    v41 = objc_msgSend_sortedArrayUsingSelector_(v39, v40, sel_compare_);

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    obj = v41;
    v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v42, &v118, v123, 16);
    if (v110)
    {
      v44 = 0;
      v108 = *v119;
      do
      {
        v45 = 0;
        do
        {
          if (*v119 != v108)
          {
            objc_enumerationMutation(obj);
          }

          v111 = v45;
          v46 = *(*(&v118 + 1) + 8 * v45);
          v47 = objc_msgSend_objectForKeyedSubscript_(v112, v43, v46);
          v49 = objc_msgSend_objectForKeyedSubscript_(v109, v48, v46);
          if (objc_msgSend_count(v47, v50, v51))
          {
            v53 = 0;
            do
            {
              v54 = objc_msgSend_objectAtIndexedSubscript_(v47, v52, v53);
              v57 = objc_msgSend_originalPath(v54, v55, v56);

              v59 = objc_msgSend_objectAtIndexedSubscript_(v49, v58, v53);
              objc_msgSend_CGRectValue(v59, v60, v61);

              objc_msgSend_bounds(v57, v62, v63);
              x = v126.origin.x;
              y = v126.origin.y;
              width = v126.size.width;
              height = v126.size.height;
              v68 = fmin(CGRectGetMinX(v126), 0.0);
              v127.origin.x = x;
              v127.origin.y = y;
              v127.size.width = width;
              v127.size.height = height;
              v69 = v44 * 80.0;
              v70 = v35 / (fmax(CGRectGetMaxX(v127), 1.0) - v68);
              v71 = 32;
              do
              {
                CGContextSaveGState(v36);
                CGAffineTransformMakeTranslation(&transform, 0.0, v69);
                CGContextConcatCTM(v36, &transform);
                CGAffineTransformMakeScale(&transform, v70, v71);
                CGContextConcatCTM(v36, &transform);
                CGAffineTransformMakeTranslation(&transform, -v68, 0.5);
                CGContextConcatCTM(v36, &transform);
                v72 = v57;
                objc_msgSend_CGPath(v72, v73, v74);
                CGContextAddPathSafe();
                CGContextFillPath(v36);
                v69 = (v71 + v69) + 4.0;
                CGContextRestoreGState(v36);
                v75 = v71 > 3;
                v71 >>= 1;
              }

              while (v75);
              ++v44;

              ++v53;
            }

            while (v53 < objc_msgSend_count(v47, v76, v77));
          }

          v45 = v111 + 1;
        }

        while (v111 + 1 != v110);
        v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v118, v123, 16);
      }

      while (v110);
    }

    Image = CGBitmapContextCreateImage(v36);
    v24 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v79, Image);
    v82 = objc_msgSend_PNGRepresentation(v24, v80, v81);
    v84 = objc_msgSend_tsu_fileURLWithPath_(MEMORY[0x277CBEBC0], v83, v106);
    objc_msgSend_writeToURL_atomically_(v82, v85, v84, 1);
    CGImageRelease(Image);
    CGContextRelease(v36);
  }

  v86 = objc_msgSend_allKeys(v112, v22, v23);
  v88 = objc_msgSend_sortedArrayUsingSelector_(v86, v87, sel_compare_);

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v89 = v88;
  v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v90, &v113, v122, 16);
  if (v91)
  {
    v93 = v91;
    v94 = 0;
    v95 = *v114;
    do
    {
      for (i = 0; i != v93; ++i)
      {
        if (*v114 != v95)
        {
          objc_enumerationMutation(v89);
        }

        v97 = *(*(&v113 + 1) + 8 * i);
        v98 = objc_msgSend_objectForKeyedSubscript_(v112, v92, v97);
        v101 = objc_msgSend_count(v98, v99, v100);

        if (v101)
        {
          v102 = v101 + v94;
          do
          {
            objc_msgSend_addTextureIndex_forKey_(storageCopy, v92, v94++, v97);
            --v101;
          }

          while (v101);
          v94 = v102;
        }
      }

      v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v92, &v113, v122, 16);
    }

    while (v93);
  }

  objc_msgSend_setImage_(storageCopy, v103, v24);
}

+ (void)p_loadSectionsForBrush:(id)brush fromSVGDoc:(_xmlDoc *)doc intoStorage:(id)storage
{
  v100 = *MEMORY[0x277D85DE8];
  brushCopy = brush;
  docCopy = doc;
  storageCopy = storage;
  v7 = sub_2766BCC78(doc, @"//svg:path['_section'=substring(@id,string-length(@id)-7)]");
  if (!objc_msgSend_count(v7, v8, v9))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "+[TSDBrushStrokeLoader p_loadSectionsForBrush:fromSVGDoc:intoStorage:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStrokeLoader.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 493, 0, "No sections");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = v7;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v95, v99, 16);
  if (v19)
  {
    v21 = v19;
    v22 = *v96;
    v86 = *(MEMORY[0x277CBF2C0] + 16);
    v87 = *MEMORY[0x277CBF2C0];
    v85 = *(MEMORY[0x277CBF2C0] + 32);
    do
    {
      v23 = 0;
      do
      {
        if (*v96 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = objc_msgSend_objectForKey_(*(*(&v95 + 1) + 8 * v23), v20, @"nodeAttributes");
        v91 = objc_msgSend_objectForKey_(v24, v25, @"d");
        v27 = objc_msgSend_objectForKey_(v24, v26, @"id");
        v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"//svg:rect[@id='%@_bounds']", v27);
        v30 = sub_2766BCC78(docCopy, v29);

        if (objc_msgSend_count(v30, v31, v32) != 1)
        {
          v35 = MEMORY[0x277D81150];
          v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "+[TSDBrushStrokeLoader p_loadSectionsForBrush:fromSVGDoc:intoStorage:]");
          v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStrokeLoader.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 502, 0, "Section needs bounding rect");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
        }

        v42 = objc_msgSend_lastObject(v30, v33, v34);
        v44 = objc_msgSend_objectForKey_(v42, v43, @"nodeAttributes");

        v46 = objc_msgSend_objectForKey_(v44, v45, @"x");
        objc_msgSend_doubleValue(v46, v47, v48);
        v50 = v49;

        v52 = objc_msgSend_objectForKey_(v44, v51, @"y");
        objc_msgSend_doubleValue(v52, v53, v54);
        v56 = v55;

        v58 = objc_msgSend_objectForKey_(v44, v57, @"width");
        objc_msgSend_doubleValue(v58, v59, v60);
        v62 = v61;

        v64 = objc_msgSend_objectForKey_(v44, v63, @"height");
        objc_msgSend_doubleValue(v64, v65, v66);
        v68 = v67;

        v70 = objc_msgSend_newPathFromSVGPathString_(TSDSVGToBezierPathConverter, v69, v91);
        v72 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v71, v70);
        *&v94.a = v87;
        *&v94.c = v86;
        *&v94.tx = v85;
        *&v93.a = v87;
        *&v93.c = v86;
        *&v93.tx = v85;
        CGAffineTransformTranslate(&v94, &v93, 0.0, -0.5);
        v92 = v94;
        CGAffineTransformScale(&v93, &v92, 1.0 / v62, 1.0 / v68);
        v94 = v93;
        v92 = v93;
        CGAffineTransformTranslate(&v93, &v92, -v50, -v56);
        v94 = v93;
        objc_msgSend_transformUsingAffineTransform_(v72, v73, &v93);
        v75 = objc_msgSend_rangeOfString_(v27, v74, @"_");
        v77 = objc_msgSend_substringToIndex_(v27, v76, v75);
        if (objc_msgSend_isEqualToString_(brushCopy, v78, @"Chalk2"))
        {
          v80 = objc_msgSend_isEqualToString_(v77, v79, @"small") ^ 1;
          objc_msgSend_addPath_withBounds_shouldSmooth_forKey_(storageCopy, v81, v72, v80, v77, v50, v56, v62, v68);
        }

        else
        {
          objc_msgSend_addPath_withBounds_shouldSmooth_forKey_(storageCopy, v79, v72, 0, v77, v50, v56, v62, v68);
        }

        CGPathRelease(v70);

        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v95, v99, 16);
    }

    while (v21);
  }

  objc_msgSend_p_loadImageForBrush_intoStorage_(self, v82, brushCopy, storageCopy);
}

@end