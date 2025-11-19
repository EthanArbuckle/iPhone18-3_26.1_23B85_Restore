@interface UIView
+ (id)fallback_debugHierarchyAdditionalGroupingIDs;
+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)a3 onObject:(id)a4 outOptions:(id *)a5;
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6;
- (BOOL)__dbg_hasAmbiguousLayout;
- (BOOL)__dbg_renderingModeIsMultiLayer;
- (BOOL)__dbg_shouldIgnoreScrollableContentHeightAmbiguity;
- (BOOL)__dbg_shouldIgnoreScrollableContentWidthAmbiguity;
- (BOOL)__dbg_wantsAutoLayout;
- (double)__dbg_firstBaselineOffsetFromTop;
- (double)__dbg_lastBaselineOffsetFromBottom;
- (id)__dbg_constraintsAffectingLayoutForAxis:(int64_t)a3;
- (id)__dbg_formattedDisplayName;
- (id)__dbg_layer;
- (id)__dbg_readableContentGuide;
- (id)__dbg_snapshotImage;
- (id)__dbg_snapshotImageRenderedUsingDrawHierarchyInRect;
- (id)__dbg_viewController;
- (id)__dbg_viewForFirstBaselineLayout;
- (id)__dbg_viewForLastBaselineLayout;
- (unint64_t)__dbg_ambiguityStatusMask;
@end

@implementation UIView

+ (id)fallback_debugHierarchyAdditionalGroupingIDs
{
  v4[0] = @"com.apple.UIKit.NSLayoutConstraint";
  v4[1] = @"com.apple.QuartzCore.CALayer";
  v4[2] = @"com.apple.UIKit.UIViewController";
  v4[3] = @"com.apple.UIKit.UILayoutGuide";
  v2 = [NSArray arrayWithObjects:v4 count:4];

  return v2;
}

+ (id)fallback_debugHierarchyObjectsInGroupWithID:(id)a3 onObject:(id)a4 outOptions:(id *)a5
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"com.apple.UIKit.UIView"])
  {
    v8 = [v7 subviews];
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  if ([v6 isEqualToString:@"com.apple.UIKit.NSLayoutConstraint"])
  {
    v8 = [v7 constraints];
    goto LABEL_5;
  }

  if ([v6 isEqualToString:@"com.apple.QuartzCore.CALayer"])
  {
    v11 = [v7 __dbg_layer];
    v12 = v11;
    if (!v11)
    {
      v9 = 0;
      goto LABEL_19;
    }

    v15 = v11;
    v13 = &v15;
LABEL_15:
    v9 = [NSArray arrayWithObjects:v13 count:1];
LABEL_19:

    goto LABEL_6;
  }

  if ([v6 isEqualToString:@"com.apple.UIKit.UIViewController"])
  {
    v9 = [v7 __dbg_viewController];

    if (!v9)
    {
      goto LABEL_6;
    }

    v12 = [v7 __dbg_viewController];
    v14 = v12;
    v13 = &v14;
    goto LABEL_15;
  }

  if ([v6 isEqualToString:@"com.apple.UIKit.UILayoutGuide"])
  {
    v8 = [v7 layoutGuides];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"alpha");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"CGf");
  v69[0] = Mutable;
  v65 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v65, @"propertyName", @"accessibilityCustomActions");
  CFDictionaryAddValue(v65, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v65, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v65, @"propertyFormat", @"public.plain-text");
  v69[1] = v65;
  v64 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v64, @"propertyName", @"accessibilityElements");
  CFDictionaryAddValue(v64, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v64, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v64, @"propertyFormat", @"public.plain-text");
  v69[2] = v64;
  v63 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v63, @"propertyName", @"accessibilityElementIsFocused");
  CFDictionaryAddValue(v63, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v63, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v63, @"propertyFormat", @"b");
  v69[3] = v63;
  v62 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v62, @"propertyName", @"accessibilityLabel");
  CFDictionaryAddValue(v62, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v62, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v62, @"propertyFormat", @"public.plain-text");
  v69[4] = v62;
  v61 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v61, @"propertyName", @"accessibilityHint");
  CFDictionaryAddValue(v61, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v61, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v61, @"propertyFormat", @"public.plain-text");
  v69[5] = v61;
  v60 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v60, @"propertyName", @"accessibilityIdentifier");
  CFDictionaryAddValue(v60, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v60, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v60, @"propertyFormat", @"public.plain-text");
  v69[6] = v60;
  v59 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v59, @"propertyName", @"accessibilityValue");
  CFDictionaryAddValue(v59, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v59, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v59, @"propertyFormat", @"public.plain-text");
  v69[7] = v59;
  v58 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v58, @"propertyName", @"autoresizesSubviews");
  CFDictionaryAddValue(v58, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v58, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v58, @"propertyFormat", @"b");
  v69[8] = v58;
  v57 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v57, @"propertyName", @"backgroundColor");
  CFDictionaryAddValue(v57, @"propertyRuntimeType", @"UIColor");
  CFDictionaryAddValue(v57, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  v69[9] = v57;
  v56 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v56, @"propertyName", @"bounds");
  CFDictionaryAddValue(v56, @"propertyRuntimeType", @"CGRect");
  CFDictionaryAddValue(v56, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeRect");
  CFDictionaryAddValue(v56, @"propertyFormat", @"CGf, CGf, CGf, CGf");
  v69[10] = v56;
  v55 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v55, @"propertyName", @"clearsContextBeforeDrawing");
  CFDictionaryAddValue(v55, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v55, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v55, @"propertyFormat", @"b");
  v69[11] = v55;
  v54 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v54, @"propertyName", @"clipsToBounds");
  CFDictionaryAddValue(v54, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v54, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v54, @"propertyFormat", @"b");
  v69[12] = v54;
  v53 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v53, @"propertyName", @"frame");
  CFDictionaryAddValue(v53, @"propertyRuntimeType", @"CGRect");
  CFDictionaryAddValue(v53, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeRect");
  CFDictionaryAddValue(v53, @"propertyFormat", @"CGf, CGf, CGf, CGf");
  v69[13] = v53;
  v52 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v52, @"propertyName", @"hasAmbiguousLayout");
  CFDictionaryAddValue(v52, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v52, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v52, @"propertyFormat", @"b");
  v69[14] = v52;
  v51 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v51, @"propertyName", @"hidden");
  CFDictionaryAddValue(v51, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v51, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v51, @"propertyFormat", @"b");
  v69[15] = v51;
  v50 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v50, @"propertyName", @"isAccessibilityElement");
  CFDictionaryAddValue(v50, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v50, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v50, @"propertyFormat", @"b");
  v69[16] = v50;
  v49 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v49, @"propertyName", @"layer");
  CFDictionaryAddValue(v49, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v49, @"propertyFormat", @"objectInfo");
  v69[17] = v49;
  v48 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v48, @"propertyName", @"layoutMargins");
  CFDictionaryAddValue(v48, @"propertyRuntimeType", @"UIEdgeInsets");
  CFDictionaryAddValue(v48, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeInsets");
  CFDictionaryAddValue(v48, @"propertyFormat", @"CGf, CGf, CGf, CGf");
  v69[18] = v48;
  v47 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v47, @"propertyName", @"multipleTouchEnabled");
  CFDictionaryAddValue(v47, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v47, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v47, @"propertyFormat", @"b");
  v69[19] = v47;
  v46 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v46, @"propertyName", @"opaque");
  CFDictionaryAddValue(v46, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v46, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v46, @"propertyFormat", @"b");
  v69[20] = v46;
  v45 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v45, @"propertyName", @"userInteractionEnabled");
  CFDictionaryAddValue(v45, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v45, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v45, @"propertyFormat", @"b");
  v69[21] = v45;
  v44 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v44, @"propertyName", @"tag");
  CFDictionaryAddValue(v44, @"propertyRuntimeType", @"NSInteger");
  CFDictionaryAddValue(v44, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v44, @"propertyFormat", @"integer");
  v69[22] = v44;
  v43 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v43, @"propertyName", @"tintColor");
  CFDictionaryAddValue(v43, @"propertyRuntimeType", @"UIColor");
  CFDictionaryAddValue(v43, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  v69[23] = v43;
  v42 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v42, @"propertyName", @"ambiguityStatusMask");
  CFDictionaryAddValue(v42, @"propertyRuntimeType", @"NSInteger");
  CFDictionaryAddValue(v42, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v42, @"propertyFormat", @"integer");
  v69[24] = v42;
  v41 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v41, @"propertyName", @"autoresizingMask");
  CFDictionaryAddValue(v41, @"propertyRuntimeType", @"NSInteger");
  CFDictionaryAddValue(v41, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v41, @"propertyFormat", @"integer");
  v69[25] = v41;
  v40 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v40, @"propertyName", @"autoresizingMask");
  CFDictionaryAddValue(v40, @"propertyRuntimeType", @"UIViewAutoresizing");
  CFDictionaryAddValue(v40, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v40, @"propertyFormat", @"uinteger");
  v69[26] = v40;
  v39 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v39, @"propertyName", @"contentCompressionResistancePriorityHorizontal");
  CFDictionaryAddValue(v39, @"propertyRuntimeType", @"float");
  CFDictionaryAddValue(v39, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v39, @"propertyFormat", @"f");
  v69[27] = v39;
  v38 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v38, @"propertyName", @"contentCompressionResistancePriorityVertical");
  CFDictionaryAddValue(v38, @"propertyRuntimeType", @"float");
  CFDictionaryAddValue(v38, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v38, @"propertyFormat", @"f");
  v69[28] = v38;
  v37 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v37, @"propertyName", @"contentHuggingPriorityHorizontal");
  CFDictionaryAddValue(v37, @"propertyRuntimeType", @"float");
  CFDictionaryAddValue(v37, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v37, @"propertyFormat", @"f");
  v69[29] = v37;
  v36 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v36, @"propertyName", @"contentHuggingPriorityVertical");
  CFDictionaryAddValue(v36, @"propertyRuntimeType", @"float");
  CFDictionaryAddValue(v36, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v36, @"propertyFormat", @"f");
  v69[30] = v36;
  v35 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v35, @"propertyName", @"contentMode");
  CFDictionaryAddValue(v35, @"propertyRuntimeType", @"UIViewContentMode");
  CFDictionaryAddValue(v35, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v35, @"propertyFormat", @"integer");
  v69[31] = v35;
  v34 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v34, @"propertyName", @"contentStretch");
  CFDictionaryAddValue(v34, @"propertyRuntimeType", @"CGRect");
  CFDictionaryAddValue(v34, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeRect");
  CFDictionaryAddValue(v34, @"propertyFormat", @"CGf, CGf, CGf, CGf");
  v69[32] = v34;
  v33 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v33, @"propertyName", @"dbgFormattedDisplayName");
  CFDictionaryAddValue(v33, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v33, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v33, @"propertyFormat", @"public.plain-text");
  v69[33] = v33;
  v32 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v32, @"propertyName", @"dbgInspectedDebugDescription");
  CFDictionaryAddValue(v32, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v32, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v32, @"propertyFormat", @"public.plain-text");
  v69[34] = v32;
  v2 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v2, @"propertyName", @"snapshotImage");
  CFDictionaryAddValue(v2, @"propertyRuntimeType", @"UIImage");
  CFDictionaryAddValue(v2, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  v31 = v2;
  CFDictionaryAddValue(v2, @"propertyFormat", @"public.png");
  valuePtr = 1;
  v3 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v2, @"propertyOptions", v3);
  CFRelease(v3);
  v69[35] = v2;
  v4 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v4, @"propertyName", @"snapshotImageRenderedUsingDrawHierarchyInRect");
  CFDictionaryAddValue(v4, @"propertyRuntimeType", @"UIImage");
  CFDictionaryAddValue(v4, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  v30 = v4;
  CFDictionaryAddValue(v4, @"propertyFormat", @"public.png");
  valuePtr = 1;
  v5 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v4, @"propertyOptions", v5);
  CFRelease(v5);
  v69[36] = v4;
  v29 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v29, @"propertyName", @"tintAdjustmentMode");
  CFDictionaryAddValue(v29, @"propertyRuntimeType", @"UIViewTintAdjustmentMode");
  CFDictionaryAddValue(v29, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v29, @"propertyFormat", @"integer");
  v69[37] = v29;
  v28 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v28, @"propertyName", @"dbgViewForFirstBaselineLayout");
  CFDictionaryAddValue(v28, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v28, @"propertyFormat", @"objectInfo");
  v69[38] = v28;
  v27 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v27, @"propertyName", @"dbgViewForLastBaselineLayout");
  CFDictionaryAddValue(v27, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v27, @"propertyFormat", @"objectInfo");
  v69[39] = v27;
  v26 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v26, @"propertyName", @"layerClass");
  CFDictionaryAddValue(v26, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v26, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v26, @"propertyFormat", @"public.plain-text");
  v69[40] = v26;
  v25 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v25, @"propertyName", @"horizontalAffectingConstraints");
  CFDictionaryAddValue(v25, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v25, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v25, @"propertyFormat", @"public.plain-text");
  v69[41] = v25;
  v24 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v24, @"propertyName", @"verticalAffectingConstraints");
  CFDictionaryAddValue(v24, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v24, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  CFDictionaryAddValue(v24, @"propertyFormat", @"public.plain-text");
  v69[42] = v24;
  v23 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v23, @"propertyName", @"firstBaselineOffsetFromTop");
  CFDictionaryAddValue(v23, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v23, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v23, @"propertyFormat", @"CGf");
  v69[43] = v23;
  v22 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v22, @"propertyName", @"lastBaselineOffsetFromBottom");
  CFDictionaryAddValue(v22, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v22, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v22, @"propertyFormat", @"CGf");
  v69[44] = v22;
  v21 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v21, @"propertyName", @"dbgRenderingModeIsMultiLayer");
  CFDictionaryAddValue(v21, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v21, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v21, @"propertyFormat", @"b");
  v69[45] = v21;
  v20 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v20, @"propertyName", @"accessibilityTraits");
  CFDictionaryAddValue(v20, @"propertyRuntimeType", @"unsigned long long");
  CFDictionaryAddValue(v20, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v20, @"propertyFormat", @"ull");
  v69[46] = v20;
  v19 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v19, @"propertyName", @"anchorPoint");
  CFDictionaryAddValue(v19, @"propertyRuntimeType", @"CGPoint");
  CFDictionaryAddValue(v19, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypePoint");
  CFDictionaryAddValue(v19, @"propertyFormat", @"CGf, CGf");
  v69[47] = v19;
  v18 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v18, @"propertyName", @"anchorPointZ");
  CFDictionaryAddValue(v18, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v18, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v18, @"propertyFormat", @"CGf");
  v69[48] = v18;
  v17 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v17, @"propertyName", @"position");
  CFDictionaryAddValue(v17, @"propertyRuntimeType", @"CGPoint");
  CFDictionaryAddValue(v17, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypePoint");
  CFDictionaryAddValue(v17, @"propertyFormat", @"CGf, CGf");
  v69[49] = v17;
  v6 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v6, @"propertyName", @"zPosition");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v6, @"propertyFormat", @"CGf");
  v69[50] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v7, @"propertyName", @"traitCollectionVerticalSizeClass");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"UIUserInterfaceSizeClass");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v7, @"propertyFormat", @"integer");
  v69[51] = v7;
  v8 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v8, @"propertyName", @"traitCollectionHorizontalSizeClass");
  CFDictionaryAddValue(v8, @"propertyRuntimeType", @"UIUserInterfaceSizeClass");
  CFDictionaryAddValue(v8, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v8, @"propertyFormat", @"integer");
  v69[52] = v8;
  v9 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v9, @"propertyName", @"traitCollectionLayoutDirection");
  CFDictionaryAddValue(v9, @"propertyRuntimeType", @"UITraitEnvironmentLayoutDirection");
  CFDictionaryAddValue(v9, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v9, @"propertyFormat", @"integer");
  v69[53] = v9;
  v10 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v10, @"propertyName", @"dbgSubviewHierarchy");
  CFDictionaryAddValue(v10, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeData");
  CFDictionaryAddValue(v10, @"propertyFormat", @"public.data");
  valuePtr = 8;
  v11 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v10, @"visibility", v11);
  CFRelease(v11);
  v69[54] = v10;
  v12 = [NSArray arrayWithObjects:v69 count:55];

  v13 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v13, @"propertyName", @"traitCollectionUserInterfaceStyle");
  CFDictionaryAddValue(v13, @"propertyRuntimeType", @"UIUserInterfaceStyle");
  CFDictionaryAddValue(v13, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v13, @"propertyFormat", @"integer");
  v68 = v13;
  v14 = [NSArray arrayWithObjects:&v68 count:1];

  v15 = [v12 arrayByAddingObjectsFromArray:v14];

  return v15;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6
{
  v9 = a3;
  v10 = a4;
  if ([v9 isEqualToString:@"accessibilityCustomActions"])
  {
    v11 = [a1 accessibilityCustomActions];
LABEL_5:
    v12 = v11;
    v13 = [v11 description];
LABEL_6:
    a6 = v13;
LABEL_7:

    goto LABEL_24;
  }

  if ([v9 isEqualToString:@"accessibilityElements"])
  {
    v11 = [a1 accessibilityElements];
    goto LABEL_5;
  }

  if ([v9 isEqualToString:@"snapshotImage"])
  {
    v14 = [v10 __dbg_snapshotImage];
LABEL_23:
    a6 = v14;
    goto LABEL_24;
  }

  if ([v9 isEqualToString:@"snapshotImageRenderedUsingDrawHierarchyInRect"])
  {
    v14 = [v10 __dbg_snapshotImageRenderedUsingDrawHierarchyInRect];
    goto LABEL_23;
  }

  if ([v9 isEqualToString:@"dbgViewForFirstBaselineLayout"])
  {
    v14 = [v10 __dbg_viewForFirstBaselineLayout];
    goto LABEL_23;
  }

  if ([v9 isEqualToString:@"dbgViewForLastBaselineLayout"])
  {
    v14 = [v10 __dbg_viewForLastBaselineLayout];
    goto LABEL_23;
  }

  if ([v9 isEqualToString:@"ambiguityStatusMask"])
  {
    v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 __dbg_ambiguityStatusMask]);
    goto LABEL_23;
  }

  if ([v9 isEqualToString:@"horizontalAffectingConstraints"])
  {
    v15 = v10;
    v16 = 0;
LABEL_22:
    v14 = [v15 __dbg_constraintsAffectingLayoutForAxis:v16];
    goto LABEL_23;
  }

  if ([v9 isEqualToString:@"verticalAffectingConstraints"])
  {
    v15 = v10;
    v16 = 1;
    goto LABEL_22;
  }

  if ([v9 isEqualToString:@"firstBaselineOffsetFromTop"])
  {
    [v10 __dbg_firstBaselineOffsetFromTop];
LABEL_31:
    v14 = [NSNumber numberWithDouble:?];
    goto LABEL_23;
  }

  if ([v9 isEqualToString:@"lastBaselineOffsetFromBottom"])
  {
    [v10 __dbg_lastBaselineOffsetFromBottom];
    goto LABEL_31;
  }

  if ([v9 isEqualToString:@"contentCompressionResistancePriorityHorizontal"])
  {
    v18 = v10;
    v19 = 0;
LABEL_36:
    [v18 contentCompressionResistancePriorityForAxis:v19];
LABEL_37:
    v14 = [NSNumber numberWithFloat:?];
    goto LABEL_23;
  }

  if ([v9 isEqualToString:@"contentCompressionResistancePriorityVertical"])
  {
    v18 = v10;
    v19 = 1;
    goto LABEL_36;
  }

  if ([v9 isEqualToString:@"contentHuggingPriorityHorizontal"])
  {
    v20 = v10;
    v21 = 0;
LABEL_42:
    [v20 contentHuggingPriorityForAxis:v21];
    goto LABEL_37;
  }

  if ([v9 isEqualToString:@"contentHuggingPriorityVertical"])
  {
    v20 = v10;
    v21 = 1;
    goto LABEL_42;
  }

  if ([v9 isEqualToString:@"dbgFormattedDisplayName"])
  {
    v14 = [v10 __dbg_formattedDisplayName];
    goto LABEL_23;
  }

  if ([v9 isEqualToString:@"dbgInspectedDebugDescription"])
  {
    v14 = [v10 debugDescription];
    goto LABEL_23;
  }

  if ([v9 isEqualToString:@"hasAmbiguousLayout"])
  {
    v22 = [v10 __dbg_hasAmbiguousLayout];
LABEL_49:
    v14 = [NSNumber numberWithBool:v22];
    goto LABEL_23;
  }

  if (![v9 isEqualToString:@"layerClass"])
  {
    if ([v9 isEqualToString:@"layer"])
    {
      v14 = [v10 __dbg_layer];
      goto LABEL_23;
    }

    if ([v9 isEqualToString:@"dbgSubviewHierarchy"])
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [v10 makeViewDebugData];
        goto LABEL_23;
      }

      goto LABEL_59;
    }

    if ([v9 isEqualToString:@"dbgRenderingModeIsMultiLayer"])
    {
      v22 = [v10 __dbg_renderingModeIsMultiLayer];
      goto LABEL_49;
    }

    if ([v9 isEqualToString:@"anchorPoint"])
    {
      v12 = [v10 layer];
      [v12 anchorPoint];
LABEL_64:
      valuePtr = v24;
      v44[0] = v25;
      v26 = malloc_type_malloc(0x10uLL, 0x6004044C4A2DFuLL);
      *v26 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
      v26[1] = CFNumberCreate(0, kCFNumberCGFloatType, v44);
      a6 = CFArrayCreate(0, v26, 2, &kCFTypeArrayCallBacks);
      CFRelease(*v26);
      CFRelease(v26[1]);
      free(v26);
      goto LABEL_7;
    }

    if ([v9 isEqualToString:@"anchorPointZ"])
    {
      v12 = [v10 layer];
      [v12 anchorPointZ];
    }

    else
    {
      if ([v9 isEqualToString:@"position"])
      {
        v12 = [v10 layer];
        [v12 position];
        goto LABEL_64;
      }

      if (![v9 isEqualToString:@"zPosition"])
      {
        if ([v9 isEqualToString:@"traitCollectionUserInterfaceStyle"])
        {
          v12 = [v10 traitCollection];
          v27 = [v12 userInterfaceStyle];
        }

        else if ([v9 isEqualToString:@"traitCollectionVerticalSizeClass"])
        {
          v12 = [v10 traitCollection];
          v27 = [v12 verticalSizeClass];
        }

        else if ([v9 isEqualToString:@"traitCollectionHorizontalSizeClass"])
        {
          v12 = [v10 traitCollection];
          v27 = [v12 horizontalSizeClass];
        }

        else
        {
          if (![v9 isEqualToString:@"traitCollectionLayoutDirection"])
          {
            v12 = v10;
            v28 = v9;
            if (![v28 length])
            {
              goto LABEL_93;
            }

            NSSelectorFromString(v28);
            if (objc_opt_respondsToSelector())
            {
              v29 = v28;
            }

            else
            {
              if ([v28 length] < 2)
              {
                v33 = [v28 uppercaseString];
              }

              else
              {
                v30 = [v28 substringToIndex:1];
                v31 = [v30 uppercaseString];
                v32 = [v28 substringFromIndex:1];
                v33 = [v31 stringByAppendingString:v32];
              }

              v34 = [@"is" stringByAppendingString:v33];
              NSSelectorFromString(v34);
              v29 = (objc_opt_respondsToSelector() & 1) != 0 ? v34 : 0;
            }

            if (v29)
            {
              a6 = [v12 valueForKey:v29];
            }

            else
            {
LABEL_93:
              if (a6)
              {
                v35 = v28;
                if (v12)
                {
                  v36 = [NSString stringWithFormat:@"%@", v12];
                }

                else
                {
                  v36 = &stru_3C768;
                }

                if (v35)
                {
                  v37 = v35;
                }

                else
                {
                  v37 = &stru_3C768;
                }

                v42[0] = @"propertyName";
                v42[1] = @"objectDescription";
                valuePtr = v37;
                v44[0] = v36;
                v42[2] = @"errorDescription";
                v44[1] = &stru_3C768;
                v38 = v37;
                v39 = [NSDictionary dictionaryWithObjects:&valuePtr forKeys:v42 count:3];
                v40 = [NSError errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v39];

                v41 = v40;
                *a6 = v40;

                v29 = 0;
                a6 = 0;
              }

              else
              {
                v29 = 0;
              }
            }

            goto LABEL_7;
          }

          v12 = [v10 traitCollection];
          v27 = [v12 layoutDirection];
        }

        v13 = [NSNumber numberWithInteger:v27];
        goto LABEL_6;
      }

      v12 = [v10 layer];
      [v12 zPosition];
    }

    v13 = [NSNumber numberWithDouble:?];
    goto LABEL_6;
  }

  v23 = [objc_opt_class() layerClass];
  a6 = v23;
  if (!v23)
  {
    goto LABEL_24;
  }

  if (object_isClass(v23))
  {
    v14 = NSStringFromClass(a6);
    goto LABEL_23;
  }

LABEL_59:
  a6 = 0;
LABEL_24:

  return a6;
}

- (BOOL)__dbg_wantsAutoLayout
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(UIView *)self _wantsAutolayout];
}

- (BOOL)__dbg_hasAmbiguousLayout
{
  if (![(UIView *)self __dbg_wantsAutoLayout])
  {
    return 0;
  }

  v3 = [(UIView *)self _layoutVariablesWithAmbiguousValue];
  v4 = [v3 count] != 0;

  return v4;
}

- (unint64_t)__dbg_ambiguityStatusMask
{
  v3 = [(UIView *)self _layoutVariablesWithAmbiguousValue];
  v4 = [NSSet setWithArray:v3];

  v5 = [(UIView *)self superview];
  if (!v5)
  {
    goto LABEL_7;
  }

  while (([v5 _uiib_hostsLayoutEngine] & 1) == 0)
  {
    v6 = [v5 superview];

    v5 = v6;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if ([v5 _uiib_hostsLayoutEngine])
  {
    v6 = [v5 _uiib_layoutEngineCreatingIfNecessary];
  }

  else
  {
LABEL_7:
    v6 = 0;
  }

LABEL_8:
  v7 = [(UIView *)self _minXVariable];
  if (v7)
  {
    if ([v4 containsObject:v7])
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if (v6 && ![v6 hasValue:0 forVariable:v7])
    {
      v8 |= 0x400uLL;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [(UIView *)self _minYVariable];
  if (v9)
  {
    if ([v4 containsObject:v9])
    {
      v8 |= 4uLL;
    }

    if (v6 && ![v6 hasValue:0 forVariable:v9])
    {
      v8 |= 0x800uLL;
    }
  }

  v10 = [(UIView *)self _boundsWidthVariable];
  if (v10)
  {
    if ([v4 containsObject:v10])
    {
      v8 |= 8uLL;
    }

    if (v6 && ![v6 hasValue:0 forVariable:v10])
    {
      v8 |= 0x1000uLL;
    }
  }

  v11 = [(UIView *)self _boundsHeightVariable];
  if (v11)
  {
    if ([v4 containsObject:v11])
    {
      v8 |= 0x10uLL;
    }

    if (v6 && ![v6 hasValue:0 forVariable:v11])
    {
      v8 |= 0x2000uLL;
    }
  }

  v12 = [(UIView *)self _contentWidthVariable];
  v16 = v9;
  if (!v12)
  {
    goto LABEL_41;
  }

  if (!-[UIView __dbg_shouldIgnoreScrollableContentWidthAmbiguity](self, "__dbg_shouldIgnoreScrollableContentWidthAmbiguity") && [v4 containsObject:v12])
  {
    v8 |= 0x20uLL;
  }

  if (v6 && ![(UIView *)self __dbg_shouldIgnoreScrollableContentWidthAmbiguity])
  {
    v13 = v7;
    if (![v6 hasValue:0 forVariable:v12])
    {
      v8 |= 0x4000uLL;
    }
  }

  else
  {
LABEL_41:
    v13 = v7;
  }

  v14 = [(UIView *)self _contentHeightVariable];
  if (v14)
  {
    if (!-[UIView __dbg_shouldIgnoreScrollableContentHeightAmbiguity](self, "__dbg_shouldIgnoreScrollableContentHeightAmbiguity") && [v4 containsObject:v14])
    {
      v8 |= 0x40uLL;
    }

    if (v6 && !-[UIView __dbg_shouldIgnoreScrollableContentHeightAmbiguity](self, "__dbg_shouldIgnoreScrollableContentHeightAmbiguity") && ![v6 hasValue:0 forVariable:v14])
    {
      v8 |= 0x8000uLL;
    }
  }

  return v8;
}

- (BOOL)__dbg_shouldIgnoreScrollableContentWidthAmbiguity
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = [(UIView *)self subviews];
  v4 = [v3 count] == 0;

  return v4;
}

- (BOOL)__dbg_shouldIgnoreScrollableContentHeightAmbiguity
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = [(UIView *)self subviews];
  v4 = [v3 count] == 0;

  return v4;
}

- (double)__dbg_firstBaselineOffsetFromTop
{
  v2 = self;
  v3 = v2;
  if ([(UIView *)v2 __dbg_wantsAutoLayout])
  {
    v3 = v2;
    if (objc_opt_respondsToSelector())
    {
      v3 = [(UIView *)v2 viewForFirstBaselineLayout];
    }
  }

  v4 = 0.0;
  if ([(UIView *)v2 __dbg_wantsAutoLayout]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 _firstBaselineOffsetFromTop];
    v4 = v5;
  }

  [v3 bounds];
  [v3 alignmentRectForFrame:?];
  [v3 convertRect:v2 toView:?];
  v7 = v6;
  [(UIView *)v2 bounds];
  [(UIView *)v2 alignmentRectForFrame:?];
  v9 = v4 + v7 + v8;

  return v9;
}

- (double)__dbg_lastBaselineOffsetFromBottom
{
  v2 = self;
  v3 = v2;
  if ([(UIView *)v2 __dbg_wantsAutoLayout])
  {
    v3 = v2;
    if (objc_opt_respondsToSelector())
    {
      v3 = [(UIView *)v2 viewForLastBaselineLayout];
    }
  }

  v4 = 0.0;
  if ([v3 __dbg_wantsAutoLayout] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 _baselineOffsetFromBottom];
    v4 = v5;
  }

  [v3 bounds];
  [v3 alignmentRectForFrame:?];
  [v3 convertRect:v2 toView:?];
  v7 = v6;
  v9 = v8;
  [(UIView *)v2 bounds];
  [(UIView *)v2 alignmentRectForFrame:?];
  v12 = v4 + v10 + v11 - (v7 + v9);

  return v12;
}

- (id)__dbg_viewForFirstBaselineLayout
{
  if ([(UIView *)self __dbg_wantsAutoLayout]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [(UIView *)self viewForFirstBaselineLayout];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)__dbg_viewForLastBaselineLayout
{
  if ([(UIView *)self __dbg_wantsAutoLayout]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [(UIView *)self viewForLastBaselineLayout];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)__dbg_readableContentGuide
{
  if ([(UIView *)self __dbg_wantsAutoLayout]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [(UIView *)self readableContentGuide];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)__dbg_constraintsAffectingLayoutForAxis:(int64_t)a3
{
  if ([(UIView *)self __dbg_wantsAutoLayout])
  {
    v5 = [(UIView *)self constraintsAffectingLayoutForAxis:a3];
    if ([v5 count])
    {
      v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            if (*(*(&v15 + 1) + 8 * i))
            {
              v12 = CFStringCreateWithFormat(0, 0, @"%p", *(*(&v15 + 1) + 8 * i));
            }

            else
            {
              v12 = 0;
            }

            [v6 addObject:v12];
          }

          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }

      v13 = [v6 componentsJoinedByString:{@", "}];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)__dbg_viewController
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(UIView *)self _viewDelegate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)__dbg_formattedDisplayName
{
  v3 = [(UIView *)self accessibilityLabel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(UIView *)self accessibilityLabel];
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v6 = objc_opt_isKindOfClass();

    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    v7 = [(UIView *)self accessibilityLabel];
    v5 = [v7 string];
  }

  if (v5)
  {
    goto LABEL_16;
  }

LABEL_5:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UIView *)self currentTitle];
    goto LABEL_16;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [(UIView *)self text];
LABEL_9:
    v9 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(UIView *)self date];
    v11 = [v9 description];
LABEL_15:
    v5 = v11;

    goto LABEL_16;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [(UIView *)self title];
    goto LABEL_9;
  }

  v5 = 0;
LABEL_16:

  return v5;
}

- (id)__dbg_snapshotImage
{
  [(UIView *)self bounds];
  v4 = v3;
  [(UIView *)self bounds];
  CurrentContext = 0;
  if (v4 > 0.0 && v5 > 0.0 && v4 * v5 < 16000000.0)
  {
    NSClassFromString(&cfstr_Glkview.isa);
    if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Skview.isa), (objc_opt_isKindOfClass()) || (NSClassFromString(&cfstr_Scnview.isa), (objc_opt_isKindOfClass()) || (NSClassFromString(&cfstr_RealitykitArvi.isa), (objc_opt_isKindOfClass()))
    {
      CurrentContext = [(UIView *)self snapshot];
    }

    else
    {
      v8 = [(UIView *)self subviews];
      v9 = [v8 count];
      v10 = &v24 - ((4 * v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v9)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          v12 = [v8 objectAtIndex:i];
          v13 = [v12 layer];
          [v13 opacity];
          *&v10[4 * i] = v14;

          v15 = [v12 layer];
          [v15 setOpacity:3.18618444e-58];
        }
      }

      [(UIView *)self bounds];
      v26.width = v16;
      v26.height = v17;
      UIGraphicsBeginImageContextWithOptions(v26, 0, 0.0);
      CurrentContext = UIGraphicsGetCurrentContext();
      if (CurrentContext)
      {
        v18 = [(UIView *)self layer];
        [v18 renderInContext:CurrentContext];

        CurrentContext = UIGraphicsGetImageFromCurrentImageContext();
      }

      UIGraphicsEndImageContext();
      if (v9)
      {
        for (j = 0; j != v9; j = j + 1)
        {
          v20 = [v8 objectAtIndex:j];
          v21 = *&v10[4 * j];
          v22 = [v20 layer];
          LODWORD(v23) = v21;
          [v22 setOpacity:v23];
        }
      }
    }
  }

  return CurrentContext;
}

- (id)__dbg_snapshotImageRenderedUsingDrawHierarchyInRect
{
  v3 = [(UIView *)self window];
  if (!v3)
  {
    v4 = self;
    v5 = [(UIView *)v4 superview];

    if (v5)
    {
      do
      {
        v3 = [(UIView *)v4 superview];

        v6 = [(UIView *)v3 superview];

        v4 = v3;
      }

      while (v6);
    }

    else
    {
      v3 = v4;
    }
  }

  [(UIView *)self bounds];
  [(UIView *)v3 convertRect:self fromView:?];
  x = v7;
  y = v9;
  width = v11;
  height = v13;
  [(UIView *)v3 bounds];
  v95.origin.x = v15;
  v95.origin.y = v16;
  v95.size.width = v17;
  v95.size.height = v18;
  v89.origin.x = x;
  v89.origin.y = y;
  v89.size.width = width;
  v89.size.height = height;
  if (CGRectIntersectsRect(v89, v95))
  {
    v19 = +[NSMutableArray array];
    v20 = self;
    v21 = v20;
    if (v3 == v20)
    {
      v23 = v20;
    }

    else
    {
      v22 = v20;
      do
      {
        v23 = [(UIView *)v22 superview];
        v24 = [(UIView *)v23 subviews];
        v25 = [v24 indexOfObject:v22];

        v26 = [(UIView *)v23 subviews];
        v27 = [v26 count];
        v28 = v25 + 1;

        if (v27 > v25 + 1)
        {
          while (1)
          {
            v29 = [(UIView *)v23 subviews];
            v30 = [v29 count];

            if (v28 >= v30)
            {
              break;
            }

            v31 = [(UIView *)v23 subviews];
            v32 = [v31 objectAtIndexedSubscript:v28];

            [v32 bounds];
            [(UIView *)v3 convertRect:v32 fromView:?];
            v96.origin.x = x;
            v96.origin.y = y;
            v96.size.width = width;
            v96.size.height = height;
            if (CGRectIntersectsRect(v90, v96))
            {
              [v19 addObject:v32];
            }

            ++v28;
          }
        }

        if ([(UIView *)v23 clipsToBounds])
        {
          [(UIView *)v23 bounds];
          [(UIView *)v3 convertRect:v23 fromView:?];
          v97.origin.x = v33;
          v97.origin.y = v34;
          v97.size.width = v35;
          v97.size.height = v36;
          v91.origin.x = x;
          v91.origin.y = y;
          v91.size.width = width;
          v91.size.height = height;
          v92 = CGRectIntersection(v91, v97);
          x = v92.origin.x;
          y = v92.origin.y;
          width = v92.size.width;
          height = v92.size.height;
        }

        v22 = v23;
      }

      while (v23 != v3);
    }

    v93.origin.x = x;
    v93.origin.y = y;
    v93.size.width = width;
    v93.size.height = height;
    if (CGRectIsNull(v93) || (v94.origin.x = x, v94.origin.y = y, v94.size.width = width, v94.size.height = height, CGRectIsEmpty(v94)))
    {
      v38 = 0;
    }

    else
    {
      v39 = [(UIView *)v21 subviews];
      [v19 addObjectsFromArray:v39];

      v40 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:0];
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v75 = v19;
      v41 = v19;
      v42 = [v41 countByEnumeratingWithState:&v80 objects:v85 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v81;
        do
        {
          for (i = 0; i != v43; i = i + 1)
          {
            if (*v81 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v80 + 1) + 8 * i);
            [v46 alpha];
            v47 = [NSNumber numberWithDouble:?];
            [v40 setObject:v47 forKey:v46];

            [v46 setAlpha:0.00000011920929];
          }

          v43 = [v41 countByEnumeratingWithState:&v80 objects:v85 count:16];
        }

        while (v43);
      }

      [(UIView *)v3 bounds];
      v49 = v48;
      v51 = v50;
      v87.width = width;
      v87.height = height;
      UIGraphicsBeginImageContextWithOptions(v87, 0, 0.0);
      [(UIView *)v3 drawViewHierarchyInRect:1 afterScreenUpdates:-x, -y, v49, v51];
      v38 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      [(UIView *)v21 bounds];
      if (v53 != width || v52 != height)
      {
        [(UIView *)v21 convertRect:v3 fromView:x, y, width, height];
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v61 = v60;
        [(UIView *)v21 bounds];
        v88.width = v62;
        v88.height = v63;
        UIGraphicsBeginImageContextWithOptions(v88, 0, 0.0);
        [v38 drawInRect:0 blendMode:v55 alpha:{v57, v59, v61, 1.0}];
        v64 = UIGraphicsGetImageFromCurrentImageContext();

        UIGraphicsEndImageContext();
        v38 = v64;
      }

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v65 = [v40 keyEnumerator];
      v66 = [v65 countByEnumeratingWithState:&v76 objects:v84 count:16];
      if (v66)
      {
        v67 = v66;
        v68 = *v77;
        do
        {
          for (j = 0; j != v67; j = j + 1)
          {
            if (*v77 != v68)
            {
              objc_enumerationMutation(v65);
            }

            v70 = *(*(&v76 + 1) + 8 * j);
            v71 = [v40 objectForKey:v70];
            [v71 doubleValue];
            v73 = v72;

            [v70 setAlpha:v73];
          }

          v67 = [v65 countByEnumeratingWithState:&v76 objects:v84 count:16];
        }

        while (v67);
      }

      v19 = v75;
    }

    v37 = v38;
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (id)__dbg_layer
{
  if (objc_opt_respondsToSelector())
  {
    [(UIView *)self _outermostLayer];
  }

  else
  {
    [(UIView *)self layer];
  }
  v3 = ;

  return v3;
}

- (BOOL)__dbg_renderingModeIsMultiLayer
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [(UIView *)self _outermostLayer];
  v4 = [(UIView *)self layer];
  v5 = v3 != v4;

  return v5;
}

@end