@interface CALayer
+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)d onObject:(id)object outOptions:(id *)options;
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error;
@end

@implementation CALayer

+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)d onObject:(id)object outOptions:(id *)options
{
  objectCopy = object;
  if ([d isEqualToString:@"com.apple.QuartzCore.CALayer"])
  {
    sublayers = [objectCopy sublayers];
  }

  else
  {
    sublayers = 0;
  }

  return sublayers;
}

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"anchorPoint");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"CGPoint");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypePoint");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"CGf, CGf");
  v94 = Mutable;
  v96[0] = Mutable;
  v3 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v3, @"propertyName", @"anchorPointZ");
  CFDictionaryAddValue(v3, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v3, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v3, @"propertyFormat", @"CGf");
  v93 = v3;
  v96[1] = v3;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"backgroundColor");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"CGColor");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  CFDictionaryAddValue(v4, @"propertyFormat", @"color");
  v92 = v4;
  v96[2] = v4;
  v5 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v5, @"propertyName", @"borderColor");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"CGColor");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  CFDictionaryAddValue(v5, @"propertyFormat", @"color");
  v91 = v5;
  v96[3] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v6, @"propertyName", @"borderWidth");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v6, @"propertyFormat", @"CGf");
  v90 = v6;
  v96[4] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v7, @"propertyName", @"bounds");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"CGRect");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeRect");
  CFDictionaryAddValue(v7, @"propertyFormat", @"CGf, CGf, CGf, CGf");
  v89 = v7;
  v96[5] = v7;
  v8 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v8, @"propertyName", @"contentsCenter");
  CFDictionaryAddValue(v8, @"propertyRuntimeType", @"CGRect");
  CFDictionaryAddValue(v8, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeRect");
  CFDictionaryAddValue(v8, @"propertyFormat", @"CGf, CGf, CGf, CGf");
  v88 = v8;
  v96[6] = v8;
  v9 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v9, @"propertyName", @"contentsGravity");
  CFDictionaryAddValue(v9, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v9, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v9, @"propertyFormat", @"public.plain-text");
  v87 = v9;
  v96[7] = v9;
  v10 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v10, @"propertyName", @"contentsScale");
  CFDictionaryAddValue(v10, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v10, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v10, @"propertyFormat", @"CGf");
  v86 = v10;
  v96[8] = v10;
  v11 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v11, @"propertyName", @"contentsRect");
  CFDictionaryAddValue(v11, @"propertyRuntimeType", @"CGRect");
  CFDictionaryAddValue(v11, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeRect");
  CFDictionaryAddValue(v11, @"propertyFormat", @"CGf, CGf, CGf, CGf");
  v85 = v11;
  v96[9] = v11;
  v12 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v12, @"propertyName", @"cornerRadius");
  CFDictionaryAddValue(v12, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v12, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v12, @"propertyFormat", @"CGf");
  v84 = v12;
  v96[10] = v12;
  v13 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v13, @"propertyName", @"delegate");
  CFDictionaryAddValue(v13, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v13, @"propertyFormat", @"objectInfo");
  v83 = v13;
  v96[11] = v13;
  v14 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v14, @"propertyName", @"doubleSided");
  CFDictionaryAddValue(v14, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v14, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v14, @"propertyFormat", @"b");
  v82 = v14;
  v96[12] = v14;
  v15 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v15, @"propertyName", @"frame");
  CFDictionaryAddValue(v15, @"propertyRuntimeType", @"CGRect");
  CFDictionaryAddValue(v15, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeRect");
  CFDictionaryAddValue(v15, @"propertyFormat", @"CGf, CGf, CGf, CGf");
  v81 = v15;
  v96[13] = v15;
  v16 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v16, @"propertyName", @"geometryFlipped");
  CFDictionaryAddValue(v16, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v16, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v16, @"propertyFormat", @"b");
  v80 = v16;
  v96[14] = v16;
  v17 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v17, @"propertyName", @"hidden");
  CFDictionaryAddValue(v17, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v17, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v17, @"propertyFormat", @"b");
  v79 = v17;
  v96[15] = v17;
  v18 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v18, @"propertyName", @"magnificationFilter");
  CFDictionaryAddValue(v18, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v18, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v18, @"propertyFormat", @"public.plain-text");
  v78 = v18;
  v96[16] = v18;
  v19 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v19, @"propertyName", @"mask");
  CFDictionaryAddValue(v19, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v19, @"propertyFormat", @"objectInfo");
  v76 = v19;
  v96[17] = v19;
  v20 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v20, @"propertyName", @"masksToBounds");
  CFDictionaryAddValue(v20, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v20, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v20, @"propertyFormat", @"b");
  v75 = v20;
  v96[18] = v20;
  v21 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v21, @"propertyName", @"minificationFilter");
  CFDictionaryAddValue(v21, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v21, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v21, @"propertyFormat", @"public.plain-text");
  v74 = v21;
  v96[19] = v21;
  v22 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v22, @"propertyName", @"minificationFilterBias");
  CFDictionaryAddValue(v22, @"propertyRuntimeType", @"float");
  CFDictionaryAddValue(v22, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v22, @"propertyFormat", @"f");
  v73 = v22;
  v96[20] = v22;
  v23 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v23, @"propertyName", @"needsDisplayOnBoundsChange");
  CFDictionaryAddValue(v23, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v23, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v23, @"propertyFormat", @"b");
  v72 = v23;
  v96[21] = v23;
  v24 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v24, @"propertyName", @"name");
  CFDictionaryAddValue(v24, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v24, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v24, @"propertyFormat", @"public.plain-text");
  v71 = v24;
  v96[22] = v24;
  v25 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v25, @"propertyName", @"opacity");
  CFDictionaryAddValue(v25, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v25, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v25, @"propertyFormat", @"CGf");
  v70 = v25;
  v96[23] = v25;
  v26 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v26, @"propertyName", @"opaque");
  CFDictionaryAddValue(v26, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v26, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v26, @"propertyFormat", @"b");
  v69 = v26;
  v96[24] = v26;
  v27 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v27, @"propertyName", @"position");
  CFDictionaryAddValue(v27, @"propertyRuntimeType", @"CGPoint");
  CFDictionaryAddValue(v27, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypePoint");
  CFDictionaryAddValue(v27, @"propertyFormat", @"CGf, CGf");
  v68 = v27;
  v96[25] = v27;
  v28 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v28, @"propertyName", @"shadowColor");
  CFDictionaryAddValue(v28, @"propertyRuntimeType", @"CGColor");
  CFDictionaryAddValue(v28, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  CFDictionaryAddValue(v28, @"propertyFormat", @"color");
  v67 = v28;
  v96[26] = v28;
  v29 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v29, @"propertyName", @"rasterizationScale");
  CFDictionaryAddValue(v29, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v29, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v29, @"propertyFormat", @"CGf");
  v66 = v29;
  v96[27] = v29;
  v30 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v30, @"propertyName", @"shadowOpacity");
  CFDictionaryAddValue(v30, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v30, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v30, @"propertyFormat", @"CGf");
  v65 = v30;
  v96[28] = v30;
  v31 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v31, @"propertyName", @"shadowRadius");
  CFDictionaryAddValue(v31, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v31, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v31, @"propertyFormat", @"CGf");
  v64 = v31;
  v96[29] = v31;
  v32 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v32, @"propertyName", @"shadowOffset");
  CFDictionaryAddValue(v32, @"propertyRuntimeType", @"CGSize");
  CFDictionaryAddValue(v32, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeSize");
  CFDictionaryAddValue(v32, @"propertyFormat", @"CGf, CGf");
  v63 = v32;
  v96[30] = v32;
  v33 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v33, @"propertyName", @"shouldRasterize");
  CFDictionaryAddValue(v33, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v33, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v33, @"propertyFormat", @"b");
  v62 = v33;
  v96[31] = v33;
  v34 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v34, @"propertyName", @"sublayerTransform");
  CFDictionaryAddValue(v34, @"propertyRuntimeType", @"CATransform3D");
  CFDictionaryAddValue(v34, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeMatrix4");
  CFDictionaryAddValue(v34, @"propertyFormat", @"CGf, CGf, CGf, CGf, CGf, CGf, CGf, CGf, CGf, CGf, CGf, CGf, CGf, CGf, CGf, CGf");
  v61 = v34;
  v96[32] = v34;
  v35 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v35, @"propertyName", @"transform");
  CFDictionaryAddValue(v35, @"propertyRuntimeType", @"CATransform3D");
  CFDictionaryAddValue(v35, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeMatrix4");
  CFDictionaryAddValue(v35, @"propertyFormat", @"CGf, CGf, CGf, CGf, CGf, CGf, CGf, CGf, CGf, CGf, CGf, CGf, CGf, CGf, CGf, CGf");
  v60 = v35;
  v96[33] = v35;
  v36 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v36, @"propertyName", @"zPosition");
  CFDictionaryAddValue(v36, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v36, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v36, @"propertyFormat", @"CGf");
  v59 = v36;
  v96[34] = v36;
  v37 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v37, @"propertyName", @"compositingFilter");
  CFDictionaryAddValue(v37, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v37, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v37, @"propertyFormat", @"public.plain-text");
  v58 = v37;
  v96[35] = v37;
  v38 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v38, @"propertyName", @"contentsDescription");
  CFDictionaryAddValue(v38, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v38, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v38, @"propertyFormat", @"public.plain-text");
  v57 = v38;
  v96[36] = v38;
  v39 = objc_opt_class();
  if (v39)
  {
    v40 = v39;
    if (object_isClass(v39))
    {
      v39 = NSStringFromClass(v40);
    }

    else
    {
      v39 = 0;
    }
  }

  v41 = v39;
  v42 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v42, @"propertyName", @"encodedPresentationLayer");
  if (v41)
  {
    CFDictionaryAddValue(v42, @"propertyRuntimeType", v41);
  }

  CFDictionaryAddValue(v42, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeCustom");
  CFDictionaryAddValue(v42, @"propertyFormat", @"public.data");
  valuePtr = 8;
  v43 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v42, @"visibility", v43);
  CFRelease(v43);
  valuePtr = 1;
  v44 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v42, @"propertyOptions", v44);
  CFRelease(v44);
  v56 = v41;

  v96[37] = v42;
  v77 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v77, @"propertyName", @"optimizationOpportunities");
  CFDictionaryAddValue(v77, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeCustom");
  CFDictionaryAddValue(v77, @"propertyFormat", @"custom");
  v96[38] = v77;
  v45 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v45, @"propertyName", @"optimizationOpportunities_includingInternals");
  CFDictionaryAddValue(v45, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeCustom");
  CFDictionaryAddValue(v45, @"propertyFormat", @"custom");
  v96[39] = v45;
  v46 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v46, @"propertyName", @"renderInfoRenderingPasses");
  CFDictionaryAddValue(v46, @"propertyRuntimeType", @"int");
  CFDictionaryAddValue(v46, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v46, @"propertyFormat", @"i");
  valuePtr = 4;
  v47 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v46, @"visibility", v47);
  CFRelease(v47);
  v96[40] = v46;
  v48 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v48, @"propertyName", @"renderInfoOffscreenFlags");
  CFDictionaryAddValue(v48, @"propertyRuntimeType", @"unsigned long");
  CFDictionaryAddValue(v48, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v48, @"propertyFormat", @"ul");
  valuePtr = 4;
  v49 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v48, @"visibility", v49);
  CFRelease(v49);
  v96[41] = v48;
  v50 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v50, @"propertyName", @"renderInfoGroupFlags");
  CFDictionaryAddValue(v50, @"propertyRuntimeType", @"unsigned long");
  CFDictionaryAddValue(v50, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v50, @"propertyFormat", @"ul");
  valuePtr = 4;
  v51 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v50, @"visibility", v51);
  CFRelease(v51);
  v96[42] = v50;
  v52 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v52, @"propertyName", @"dbg_ListID");
  CFDictionaryAddValue(v52, @"propertyRuntimeType", @"NSInteger");
  CFDictionaryAddValue(v52, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v52, @"propertyFormat", @"integer");
  valuePtr = 8;
  v53 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v52, @"visibility", v53);
  CFRelease(v53);
  v96[43] = v52;
  v54 = [NSArray arrayWithObjects:v96 count:44];

  return v54;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error
{
  nameCopy = name;
  objectCopy = object;
  if ([nameCopy isEqualToString:@"encodedPresentationLayer"])
  {
    presentationLayer = [objectCopy presentationLayer];
    if (presentationLayer || (presentationLayer = objectCopy) != 0)
    {
      v11 = presentationLayer;
      v12 = CAEncodeLayerTree();
LABEL_10:
      error = v12;
LABEL_11:

      goto LABEL_12;
    }

    goto LABEL_37;
  }

  if ([nameCopy isEqualToString:@"compositingFilter"])
  {
    compositingFilter = [objectCopy compositingFilter];
LABEL_9:
    v11 = compositingFilter;
    v12 = [compositingFilter description];
    goto LABEL_10;
  }

  if ([nameCopy isEqualToString:@"contentsDescription"])
  {
    compositingFilter = [objectCopy contents];
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"renderInfoRenderingPasses"])
  {
    LODWORD(v35) = 0;
    v34 = 0;
    if ([objectCopy getRendererInfo:&v34 size:12])
    {
      v15 = [NSNumber numberWithInt:v34];
LABEL_25:
      error = v15;
      goto LABEL_12;
    }

LABEL_26:
    error = &off_57B20;
    goto LABEL_12;
  }

  if ([nameCopy isEqualToString:@"renderInfoOffscreenFlags"])
  {
    LODWORD(v35) = 0;
    v34 = 0;
    if (![objectCopy getRendererInfo:&v34 size:12])
    {
      goto LABEL_26;
    }

    v16 = HIDWORD(v34);
LABEL_24:
    v15 = [NSNumber numberWithUnsignedInt:v16];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"renderInfoGroupFlags"])
  {
    LODWORD(v35) = 0;
    v34 = 0;
    if (![objectCopy getRendererInfo:&v34 size:12])
    {
      goto LABEL_26;
    }

    v16 = v35;
    goto LABEL_24;
  }

  if (![nameCopy isEqualToString:@"dbg_ListID"])
  {
    if ([nameCopy isEqualToString:@"optimizationOpportunities"])
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_37;
      }

      v17 = objectCopy;
      v18 = 0;
    }

    else
    {
      if (![nameCopy isEqualToString:@"optimizationOpportunities_includingInternals"])
      {
        v11 = objectCopy;
        v19 = nameCopy;
        if (![v19 length])
        {
          goto LABEL_50;
        }

        NSSelectorFromString(v19);
        if (objc_opt_respondsToSelector())
        {
          v20 = v19;
        }

        else
        {
          if ([v19 length] < 2)
          {
            uppercaseString = [v19 uppercaseString];
          }

          else
          {
            v21 = [v19 substringToIndex:1];
            uppercaseString2 = [v21 uppercaseString];
            v23 = [v19 substringFromIndex:1];
            uppercaseString = [uppercaseString2 stringByAppendingString:v23];
          }

          v25 = [@"is" stringByAppendingString:uppercaseString];
          NSSelectorFromString(v25);
          v20 = (objc_opt_respondsToSelector() & 1) != 0 ? v25 : 0;
        }

        if (v20)
        {
          error = [v11 valueForKey:v20];
        }

        else
        {
LABEL_50:
          if (error)
          {
            v26 = v19;
            if (v11)
            {
              v27 = [NSString stringWithFormat:@"%@", v11];
            }

            else
            {
              v27 = &stru_3C768;
            }

            if (v26)
            {
              v28 = v26;
            }

            else
            {
              v28 = &stru_3C768;
            }

            v33[0] = @"propertyName";
            v33[1] = @"objectDescription";
            v34 = v28;
            v35 = v27;
            v33[2] = @"errorDescription";
            v36 = &stru_3C768;
            v29 = v28;
            v30 = [NSDictionary dictionaryWithObjects:&v34 forKeys:v33 count:3];
            v31 = [NSError errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v30];

            v32 = v31;
            *error = v31;

            v20 = 0;
            error = 0;
          }

          else
          {
            v20 = 0;
          }
        }

        goto LABEL_11;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_37;
      }

      v17 = objectCopy;
      v18 = 1;
    }

    v15 = [v17 optimizationOpportunities:v18];
    goto LABEL_25;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [objectCopy swiftUI_displayListID]);
    goto LABEL_25;
  }

LABEL_37:
  error = 0;
LABEL_12:

  return error;
}

@end