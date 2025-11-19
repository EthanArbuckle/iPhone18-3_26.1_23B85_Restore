@interface PFParallaxMutableIntermediateLayout(UIDebugging)
- (id)debugQuickLookObject;
@end

@implementation PFParallaxMutableIntermediateLayout(UIDebugging)

- (id)debugQuickLookObject
{
  v73 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v63 = 0;
  v64 = &v63;
  v65 = 0x4010000000;
  v66 = &unk_1B3DBEC63;
  v3 = *(MEMORY[0x1E695F050] + 16);
  v67 = *MEMORY[0x1E695F050];
  v68 = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PFParallaxMutableIntermediateLayout_UIDebugging__debugQuickLookObject__block_invoke;
  aBlock[3] = &unk_1E7B77C50;
  v62 = &v63;
  v4 = v2;
  v61 = v4;
  v48 = _Block_copy(aBlock);
  [a1 visibleRect];
  v48[2](v48, @"visible");
  [a1 adaptiveVisibleRect];
  v48[2](v48, @"adaptiveVisibleRect");
  [a1 salientContentRect];
  v48[2](v48, @"saliency");
  [a1 inactiveRect];
  v48[2](v48, @"inactiveRect");
  [a1 adaptiveInactiveTopRect];
  v48[2](v48, @"adaptiveInactiveTopRect");
  [a1 spatialVisibleRect];
  v48[2](v48, @"spatialVisibleRect");
  [a1 spatialAdaptiveVisibleRect];
  v48[2](v48, @"spatialAdaptiveVisibleRect");
  v76 = v64[1];
  v77 = CGRectOffset(v76, -v76.origin.x, -v76.origin.y);
  x = v77.origin.x;
  width = v77.size.width;
  if (v77.size.width >= v77.size.height)
  {
    height = v77.size.width;
  }

  else
  {
    height = v77.size.height;
  }

  v7 = 2048.0 / height;
  rect = v77.origin.y * v7;
  v8 = v77.size.height * v7;
  if (!CGRectIsNull(v64[1]))
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v9 = [v4 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v56 objects:v72 count:16];
    if (v10)
    {
      v11 = *v57;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v57 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v56 + 1) + 8 * i);
          v14 = [v4 objectForKeyedSubscript:{v13, *&x}];
          [v14 CGRectValue];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;

          v78.origin.x = v16;
          v78.origin.y = v18;
          v78.size.width = v20;
          v78.size.height = v22;
          v79 = CGRectOffset(v78, -v64[1].origin.x, -v64[1].origin.y);
          v23 = [MEMORY[0x1E696B098] valueWithCGRect:{v7 * v79.origin.x, rect + v8 - (v7 * v79.origin.y + v7 * v79.size.height), v7 * v79.size.width}];
          [v4 setObject:v23 forKeyedSubscript:v13];
        }

        v10 = [v9 countByEnumeratingWithState:&v56 objects:v72 count:16];
      }

      while (v10);
    }
  }

  v24 = width * v7;
  v75.width = v24;
  v75.height = v8;
  UIGraphicsBeginImageContextWithOptions(v75, 1, 0.0);
  c = UIGraphicsGetCurrentContext();
  v25 = [MEMORY[0x1E69DC888] whiteColor];
  [v25 setFill];

  v80.origin.x = x * v7;
  v80.origin.y = rect;
  v80.size.width = v24;
  v80.size.height = v8;
  CGContextFillRect(c, v80);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v26 = [v4 allKeys];
  v27 = [v26 countByEnumeratingWithState:&v52 objects:v71 count:16];
  if (v27)
  {
    v28 = *v53;
    recta = *MEMORY[0x1E69DB648];
    v29 = *MEMORY[0x1E69DB650];
    v30 = 0.0;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v53 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v32 = *(*(&v52 + 1) + 8 * j);
        v33 = [v4 objectForKeyedSubscript:{v32, *&x}];
        [v33 CGRectValue];
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v41 = v40;

        v81.origin.x = v35;
        v81.origin.y = v37;
        v81.size.width = v39;
        v81.size.height = v41;
        v30 = v30 + 0.1 - (v30 + 0.1);
        if (!CGRectIsEmpty(v81))
        {
          v42 = [MEMORY[0x1E69DC888] colorWithHue:v30 saturation:0.8 brightness:0.8 alpha:1.0];
          [v42 setStroke];
          v82.origin.x = v35;
          v82.origin.y = v37;
          v82.size.width = v39;
          v82.size.height = v41;
          CGContextStrokeRectWithWidth(c, v82, 2.0);
          v69[0] = recta;
          v43 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0];
          v69[1] = v29;
          v70[0] = v43;
          v70[1] = v42;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:2];

          [v32 drawInRect:v44 withAttributes:{v35, v37, v39, v41}];
        }
      }

      v27 = [v26 countByEnumeratingWithState:&v52 objects:v71 count:16];
    }

    while (v27);
  }

  v45 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  _Block_object_dispose(&v63, 8);

  return v45;
}

@end