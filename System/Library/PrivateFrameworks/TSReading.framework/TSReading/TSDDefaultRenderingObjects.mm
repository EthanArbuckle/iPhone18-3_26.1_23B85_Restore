@interface TSDDefaultRenderingObjects
+ (double)defaultAssetScaleForFrame:(id)frame;
+ (id)defaultBasicStrokes;
+ (id)defaultColorAndGrayscaleFillsForTheme:(id)theme;
+ (id)defaultColorAndGrayscaleFillsForTheme:(id)theme withNoFillButton:(BOOL)button;
+ (id)defaultColorFillsForTheme:(id)theme;
+ (id)defaultEndpoints;
+ (id)defaultFrames;
+ (id)defaultGradientFillsForTheme:(id)theme;
+ (id)defaultGrayscaleFillsWithNoFillButton:(BOOL)button forTheme:(id)theme;
+ (id)defaultLines;
+ (id)defaultPresetImageStrokesForTheme:(id)theme;
+ (id)defaultPresetStrokesForShapes;
+ (id)defaultShadowsForTheme:(id)theme;
+ (id)defaultStrokes;
+ (id)p_frameInspectorDictionary;
+ (id)p_transposedArrayOfColorFills:(id)fills;
@end

@implementation TSDDefaultRenderingObjects

+ (id)defaultColorFillsForTheme:(id)theme
{
  if (theme)
  {
    v3 = [theme presetsOfKind:String];
    if (v3)
    {
      v4 = v3;
      if ([v3 count])
      {
        v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
        if ([v4 count] >= 7)
        {
          v6 = 6;
          do
          {
            [v5 addObject:{+[TSDColorFill colorWithColor:](TSDColorFill, "colorWithColor:", objc_msgSend(v4, "objectAtIndex:", v6++))}];
          }

          while (v6 < [v4 count]);
        }

        if (v5)
        {
          return v5;
        }
      }
    }
  }

  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDDefaultRenderingObjects defaultColorFillsForTheme:]"];
  [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDefaultRenderingObjects.m"), 57, @"Couldn't find color fills in theme; falling back on hardcoded grayscale swatches."}];
  return [MEMORY[0x277CBEA60] arrayWithObjects:{+[TSDColorFill colorWithRed:green:blue:alpha:](TSDColorFill, "colorWithRed:green:blue:alpha:", 0.176470588, 0.235294118, 0.333333333, 1.0), +[TSDColorFill colorWithRed:green:blue:alpha:](TSDColorFill, "colorWithRed:green:blue:alpha:", 0.231372549, 0.349019608, 0.525490196, 1.0), +[TSDColorFill colorWithRed:green:blue:alpha:](TSDColorFill, "colorWithRed:green:blue:alpha:", 0.603921569, 0.71372549, 0.784313725, 1.0), +[TSDColorFill colorWithRed:green:blue:alpha:](TSDColorFill, "colorWithRed:green:blue:alpha:", 0.529, 0.359, 0.051, 1.0), +[TSDColorFill colorWithRed:green:blue:alpha:](TSDColorFill, "colorWithRed:green:blue:alpha:", 0.875, 0.502, 0.058, 1.0), +[TSDColorFill colorWithRed:green:blue:alpha:](TSDColorFill, "colorWithRed:green:blue:alpha:", 0.98, 0.801, 0.519, 1.0), +[TSDColorFill colorWithRed:green:blue:alpha:](TSDColorFill, "colorWithRed:green:blue:alpha:", 0.361, 0.101, 0.079, 1.0), +[TSDColorFill colorWithRed:green:blue:alpha:](TSDColorFill, "colorWithRed:green:blue:alpha:", 0.714, 0.171, 0.122, 1.0), +[TSDColorFill colorWithRed:green:blue:alpha:](TSDColorFill, "colorWithRed:green:blue:alpha:", 0.727, 0.441, 0.391, 1.0), +[TSDColorFill colorWithRed:green:blue:alpha:](TSDColorFill, "colorWithRed:green:blue:alpha:", 0.174, 0.257, 0.074, 1.0), +[TSDColorFill colorWithRed:green:blue:alpha:](TSDColorFill, "colorWithRed:green:blue:alpha:", 0.364, 0.467, 0.086, 1.0), +[TSDColorFill colorWithRed:green:blue:alpha:](TSDColorFill, "colorWithRed:green:blue:alpha:", 0.548, 0.696, 0.4, 1.0), +[TSDColorFill colorWithRed:green:blue:alpha:](TSDColorFill, "colorWithRed:green:blue:alpha:", 0.659, 0.195, 0.035, 1.0), +[TSDColorFill colorWithRed:green:blue:alpha:](TSDColorFill, "colorWithRed:green:blue:alpha:", 0.838, 0.256, 0.033, 1.0), +[TSDColorFill colorWithRed:green:blue:alpha:](TSDColorFill, "colorWithRed:green:blue:alpha:", 1.0, 0.685, 0.502, 1.0), +[TSDColorFill colorWithRed:green:blue:alpha:](TSDColorFill, "colorWithRed:green:blue:alpha:", 0.349019608, 0.180392157, 0.0980392157, 1.0), +[TSDColorFill colorWithRed:green:blue:alpha:](TSDColorFill, "colorWithRed:green:blue:alpha:", 0.447058824, 0.28627451, 0.203921569, 1.0), +[TSDColorFill colorWithRed:green:blue:alpha:](TSDColorFill, "colorWithRed:green:blue:alpha:", 0.780392157, 0.603921569, 0.509803922, 1.0), 0}];
}

+ (id)defaultGradientFillsForTheme:(id)theme
{
  v3 = [theme presetsOfKind:String];
  if ([v3 count])
  {
    return v3;
  }

  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDDefaultRenderingObjects defaultGradientFillsForTheme:]"];
  [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDefaultRenderingObjects.m"), 94, @"Couldn't find gradients in theme; falling back on hardcoded gradient swatches."}];
  v7 = [MEMORY[0x277D6C2A8] colorWithRed:0.580392157 green:0.0549019608 blue:0.0980392157 alpha:1.0];
  v8 = +[TSDGradient linearGradientWithStartColor:endColor:](TSDAngleGradient, "linearGradientWithStartColor:endColor:", v7, [MEMORY[0x277D6C2A8] colorWithRed:0.305882353 green:0.0274509804 blue:0.0509803922 alpha:1.0]);
  v9 = [MEMORY[0x277D6C2A8] colorWithRed:0.133333333 green:0.592156863 blue:0.062745098 alpha:1.0];
  v10 = +[TSDGradient linearGradientWithStartColor:endColor:](TSDAngleGradient, "linearGradientWithStartColor:endColor:", v9, [MEMORY[0x277D6C2A8] colorWithRed:0.0862745098 green:0.329411765 blue:0.0470588235 alpha:1.0]);
  v11 = [MEMORY[0x277D6C2A8] colorWithRed:0.0941176471 green:0.368627451 blue:0.803921569 alpha:1.0];
  v12 = +[TSDGradient linearGradientWithStartColor:endColor:](TSDAngleGradient, "linearGradientWithStartColor:endColor:", v11, [MEMORY[0x277D6C2A8] colorWithRed:0.0509803922 green:0.180392157 blue:0.450980392 alpha:1.0]);
  return [MEMORY[0x277CBEA60] arrayWithObjects:{v8, v10, v12, 0}];
}

+ (id)defaultColorAndGrayscaleFillsForTheme:(id)theme
{
  v5 = [self p_transposedArrayOfColorFills:{objc_msgSend(self, "defaultColorFillsForTheme:")}];
  v6 = [self defaultGrayscaleFillsWithNoFillButton:0 forTheme:theme];

  return [v5 arrayByAddingObjectsFromArray:v6];
}

+ (id)defaultColorAndGrayscaleFillsForTheme:(id)theme withNoFillButton:(BOOL)button
{
  buttonCopy = button;
  v7 = [self p_transposedArrayOfColorFills:{objc_msgSend(self, "defaultColorFillsForTheme:")}];
  v8 = [self defaultGrayscaleFillsWithNoFillButton:buttonCopy forTheme:theme];

  return [v7 arrayByAddingObjectsFromArray:v8];
}

+ (id)defaultBasicStrokes
{
  blackColor = [MEMORY[0x277D6C2A8] blackColor];
  v3 = [(TSDStroke *)TSDMutableStroke strokeWithColor:blackColor width:5.0];
  [(TSDMutableStroke *)v3 setPattern:+[TSDStrokePattern solidPattern]];
  v4 = [(TSDStroke *)TSDMutableStroke strokeWithColor:blackColor width:5.0];
  [(TSDMutableStroke *)v4 setPattern:+[TSDStrokePattern shortDashPattern]];
  v5 = [(TSDStroke *)TSDMutableStroke strokeWithColor:blackColor width:5.0];
  [(TSDMutableStroke *)v5 setPattern:+[TSDStrokePattern mediumDashPattern]];
  v6 = [(TSDStroke *)TSDMutableStroke strokeWithColor:blackColor width:5.0];
  [(TSDMutableStroke *)v6 setPattern:+[TSDStrokePattern longDashPattern]];
  v7 = [(TSDStroke *)TSDMutableStroke strokeWithColor:blackColor width:5.0];
  [(TSDMutableStroke *)v7 setCap:1];
  [(TSDMutableStroke *)v7 setJoin:1];
  [(TSDMutableStroke *)v7 setPattern:+[TSDStrokePattern roundDashPattern]];
  return [MEMORY[0x277CBEA60] arrayWithObjects:{v3, v4, v5, v6, v7, 0}];
}

+ (id)defaultStrokes
{
  v5[5] = *MEMORY[0x277D85DE8];
  v2 = +[TSDDefaultRenderingObjects defaultBasicStrokes];
  blackColor = [MEMORY[0x277D6C2A8] blackColor];
  v5[0] = [(TSDSmartStroke *)TSDBrushStroke strokeWithName:@"Chalk2" color:blackColor width:10.0];
  v5[1] = [(TSDSmartStroke *)TSDBrushStroke strokeWithName:@"Feathered Brush" color:blackColor width:10.0];
  v5[2] = [(TSDStroke *)TSDCalligraphyStroke strokeWithColor:blackColor width:5.0];
  v5[3] = [(TSDSmartStroke *)TSDBrushStroke strokeWithName:@"Dry Brush" color:blackColor width:10.0];
  v5[4] = [(TSDSmartStroke *)TSDBrushStroke strokeWithName:@"Pen" color:blackColor width:10.0];
  return [v2 arrayByAddingObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v5, 5)}];
}

+ (id)defaultPresetStrokesForShapes
{
  v7[6] = *MEMORY[0x277D85DE8];
  blackColor = [MEMORY[0x277D6C2A8] blackColor];
  v3 = [(TSDStroke *)TSDMutableStroke strokeWithColor:blackColor width:1.0];
  [(TSDMutableStroke *)v3 setPattern:+[TSDStrokePattern solidPattern]];
  v4 = [(TSDStroke *)TSDMutableStroke strokeWithColor:blackColor width:2.0];
  [(TSDMutableStroke *)v4 setPattern:+[TSDStrokePattern solidPattern]];
  v5 = [(TSDStroke *)TSDMutableStroke strokeWithColor:blackColor width:4.0];
  [(TSDMutableStroke *)v5 setPattern:+[TSDStrokePattern solidPattern]];
  v7[0] = v3;
  v7[1] = v4;
  v7[2] = v5;
  v7[3] = [(TSDSmartStroke *)TSDBrushStroke strokeWithName:@"Dry Brush" color:blackColor width:6.0];
  v7[4] = [(TSDSmartStroke *)TSDBrushStroke strokeWithName:@"Chalk2" color:blackColor width:6.0];
  v7[5] = [(TSDSmartStroke *)TSDBrushStroke strokeWithName:@"Pen" color:blackColor width:6.0];
  return [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:6];
}

+ (id)defaultPresetImageStrokesForTheme:(id)theme
{
  array = [MEMORY[0x277CBEB18] array];
  blackColor = [MEMORY[0x277D6C2A8] blackColor];
  v7 = [(TSDStroke *)TSDMutableStroke strokeWithColor:blackColor width:1.0];
  [(TSDMutableStroke *)v7 setPattern:+[TSDStrokePattern solidPattern]];
  [array addObject:v7];
  v8 = [(TSDStroke *)TSDMutableStroke strokeWithColor:blackColor width:2.0];
  [(TSDMutableStroke *)v8 setPattern:+[TSDStrokePattern solidPattern]];
  [array addObject:v8];
  v9 = [(TSDStroke *)TSDMutableStroke strokeWithColor:blackColor width:4.0];
  [(TSDMutableStroke *)v9 setPattern:+[TSDStrokePattern solidPattern]];
  [array addObject:v9];
  array2 = [MEMORY[0x277CBEB18] array];
  if (theme)
  {
    v11 = [theme presetsOfKind:String];
    if (v11)
    {
      v12 = v11;
      if ([v11 count])
      {
        if ([v12 count])
        {
          v13 = 0;
          do
          {
            if ([array2 count] > 2)
            {
              break;
            }

            v14 = [objc_msgSend(v12 objectAtIndexedSubscript:{v13), "boxedValueForProperty:", 517}];
            if ([v14 isFrame])
            {
              objc_opt_class();
              v15 = TSUDynamicCast();
              if (([array2 containsObject:{objc_msgSend(v15, "frameName")}] & 1) == 0)
              {
                [array addObject:v14];
                [array2 addObject:{objc_msgSend(v15, "frameName")}];
              }
            }

            ++v13;
          }

          while (v13 < [v12 count]);
        }
      }
    }
  }

  if ([array2 count] <= 2)
  {
    p_frameInspectorDictionary = [self p_frameInspectorDictionary];
    if (p_frameInspectorDictionary)
    {
      v17 = [p_frameInspectorDictionary objectForKey:@"Display Order"];
      if ([array2 count] <= 2)
      {
        v18 = 0;
        do
        {
          if (v18 >= [v17 count])
          {
            break;
          }

          v19 = -[TSDFrame initWithFrameSpec:]([TSDFrame alloc], "initWithFrameSpec:", +[TSDFrameSpec frameSpecWithName:](TSDFrameSpec, "frameSpecWithName:", [v17 objectAtIndexedSubscript:v18]));
          if (([array2 containsObject:{-[TSDFrame frameName](v19, "frameName")}] & 1) == 0)
          {
            [array addObject:v19];
            [array2 addObject:{-[TSDFrame frameName](v19, "frameName")}];
          }

          ++v18;
        }

        while ([array2 count] < 3);
      }
    }
  }

  return array;
}

+ (id)defaultLines
{
  v9[6] = *MEMORY[0x277D85DE8];
  blackColor = [MEMORY[0x277D6C2A8] blackColor];
  v3 = [(TSDStroke *)TSDMutableStroke strokeWithColor:blackColor width:2.0];
  [(TSDMutableStroke *)v3 setPattern:+[TSDStrokePattern solidPattern]];
  v4 = +[TSDLinePreset lineWithStroke:headLineEnd:tailLineEnd:](TSDLinePreset, "lineWithStroke:headLineEnd:tailLineEnd:", v3, +[TSDLineEnd none](TSDLineEnd, "none"), +[TSDLineEnd none]);
  v5 = [(TSDSmartStroke *)TSDBrushStroke strokeWithName:@"Chalk2" color:blackColor width:6.0];
  v6 = +[TSDLinePreset lineWithStroke:headLineEnd:tailLineEnd:](TSDLinePreset, "lineWithStroke:headLineEnd:tailLineEnd:", v5, +[TSDLineEnd none](TSDLineEnd, "none"), +[TSDLineEnd none]);
  v7 = [(TSDStroke *)TSDMutableStroke strokeWithColor:blackColor width:3.0];
  [(TSDMutableStroke *)v7 setPattern:+[TSDStrokePattern mediumDashPattern]];
  v9[0] = v4;
  v9[1] = v6;
  v9[2] = +[TSDLinePreset lineWithStroke:headLineEnd:tailLineEnd:](TSDLinePreset, "lineWithStroke:headLineEnd:tailLineEnd:", v7, +[TSDLineEnd none](TSDLineEnd, "none"), +[TSDLineEnd none]);
  v9[3] = +[TSDLinePreset lineWithStroke:headLineEnd:tailLineEnd:](TSDLinePreset, "lineWithStroke:headLineEnd:tailLineEnd:", v3, +[TSDLineEnd openArrow](TSDLineEnd, "openArrow"), +[TSDLineEnd openArrow]);
  v9[4] = +[TSDLinePreset lineWithStroke:headLineEnd:tailLineEnd:](TSDLinePreset, "lineWithStroke:headLineEnd:tailLineEnd:", v5, +[TSDLineEnd simpleArrow](TSDLineEnd, "simpleArrow"), +[TSDLineEnd simpleArrow]);
  v9[5] = +[TSDLinePreset lineWithStroke:headLineEnd:tailLineEnd:](TSDLinePreset, "lineWithStroke:headLineEnd:tailLineEnd:", v7, +[TSDLineEnd filledCircle](TSDLineEnd, "filledCircle"), +[TSDLineEnd filledCircle]);
  return [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:6];
}

+ (id)defaultEndpoints
{
  v3[11] = *MEMORY[0x277D85DE8];
  v3[1] = +[TSDLineEnd simpleArrow](TSDLineEnd, "simpleArrow", +[TSDLineEnd none]);
  v3[2] = +[TSDLineEnd filledCircle];
  v3[3] = +[TSDLineEnd filledDiamond];
  v3[4] = +[TSDLineEnd openArrow];
  v3[5] = +[TSDLineEnd filledArrow];
  v3[6] = +[TSDLineEnd filledSquare];
  v3[7] = +[TSDLineEnd openSquare];
  v3[8] = +[TSDLineEnd openCircle];
  v3[9] = +[TSDLineEnd invertedArrow];
  v3[10] = +[TSDLineEnd line];
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:11];
}

+ (id)defaultFrames
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  p_frameInspectorDictionary = [self p_frameInspectorDictionary];
  if (p_frameInspectorDictionary)
  {
    v5 = [p_frameInspectorDictionary objectForKey:@"Display Order"];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [[TSDFrame alloc] initWithFrameSpec:[TSDFrameSpec frameSpecWithName:*(*(&v12 + 1) + 8 * v9)]];
          [array addObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return [MEMORY[0x277CBEA60] arrayWithArray:array];
}

+ (id)defaultShadowsForTheme:(id)theme
{
  if (theme)
  {
    v3 = [theme presetsOfKind:String];
    if (v3)
    {
      v4 = v3;
      if ([v3 count])
      {
        v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
        if ([v4 count])
        {
          v6 = 0;
          do
          {
            v7 = [v4 objectAtIndexedSubscript:v6];
            v8 = v6 - 4;
            if ([v7 isEnabled])
            {
              if (v8 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                [v5 addObject:{-[TSDShadowSwatch initWithShadow:]([TSDShadowSwatch alloc], "initWithShadow:", v7)}];
              }
            }

            v6 = v8 + 5;
          }

          while (v6 < [v4 count]);
        }

        if (v5)
        {
          return v5;
        }
      }
    }
  }

  v10 = [objc_msgSend(MEMORY[0x277D6C2A8] colorWithWhite:0.0 alpha:{1.0), "CGColor"}];
  v11 = [[TSDShadowSwatch alloc] initWithShadow:[TSDShadow shadowWithAngle:v10 offset:1 radius:312.0 opacity:0.0 color:5.0 enabled:0.5]];
  v12 = [[TSDShadowSwatch alloc] initWithShadow:[TSDShadow shadowWithAngle:v10 offset:1 radius:312.0 opacity:3.0 color:5.0 enabled:0.5]];
  v13 = [[TSDShadowSwatch alloc] initWithShadow:[TSDShadow shadowWithAngle:v10 offset:1 radius:312.0 opacity:6.0 color:8.0 enabled:0.5]];
  v14 = [[TSDShadowSwatch alloc] initWithShadow:[TSDShadow shadowWithAngle:v10 offset:1 radius:312.0 opacity:6.0 color:8.0 enabled:0.5]];
  v15 = [[TSDShadowSwatch alloc] initWithShadow:[TSDShadow curvedShadowWithOffset:v10 angle:1 radius:0.66577 curve:90.0 opacity:15.0 color:-0.123095 enabled:1.0]];
  v16 = [[TSDShadowSwatch alloc] initWithShadow:[TSDShadow curvedShadowWithOffset:v10 angle:1 radius:1.0 curve:90.0 opacity:10.0 color:0.164879 enabled:0.75]];
  v17 = [objc_msgSend(MEMORY[0x277D6C2A8] "blackColor")];
  v18 = [[TSDShadowSwatch alloc] initWithShadow:[TSDShadow contactShadowWithAngle:v17 offset:1 radius:0.0 height:0.0 opacity:28.0 color:0.17365 enabled:0.75]];
  v19 = [[TSDShadowSwatch alloc] initWithShadow:[TSDShadow contactShadowWithAngle:v17 offset:1 radius:0.0 height:9.41875 opacity:30.0 color:0.25 enabled:0.75]];
  return [MEMORY[0x277CBEA60] arrayWithObjects:{v11, v12, v13, v14, v15, v16, v18, v19, 0}];
}

+ (id)defaultGrayscaleFillsWithNoFillButton:(BOOL)button forTheme:(id)theme
{
  buttonCopy = button;
  if (!theme)
  {
    goto LABEL_9;
  }

  v5 = [theme presetsOfKind:String];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  if (![v5 count])
  {
    goto LABEL_9;
  }

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  for (i = 0; i != 6; ++i)
  {
    v9 = [v6 objectAtIndex:i];
    [v9 alphaComponent];
    if (v10 != 0.0)
    {
      [v7 addObject:{+[TSDColorFill colorWithColor:](TSDColorFill, "colorWithColor:", v9)}];
    }
  }

  if (!v7)
  {
LABEL_9:
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDDefaultRenderingObjects defaultGrayscaleFillsWithNoFillButton:forTheme:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDefaultRenderingObjects.m"), 378, @"Couldn't find grayscale fills in theme; falling back on hardcoded grayscale swatches."}];
    v7 = [MEMORY[0x277CBEB18] arrayWithObjects:{+[TSDColorFill whiteColor](TSDColorFill, "whiteColor"), +[TSDColorFill colorWithWhite:alpha:](TSDColorFill, "colorWithWhite:alpha:", 0.8, 1.0), +[TSDColorFill colorWithWhite:alpha:](TSDColorFill, "colorWithWhite:alpha:", 0.4, 1.0), +[TSDColorFill colorWithWhite:alpha:](TSDColorFill, "colorWithWhite:alpha:", 0.2, 1.0), +[TSDColorFill blackColor](TSDColorFill, "blackColor"), 0}];
  }

  if (buttonCopy)
  {
    [v7 addObject:{objc_msgSend(MEMORY[0x277CBEB68], "null")}];
  }

  return v7;
}

+ (double)defaultAssetScaleForFrame:(id)frame
{
  v3 = [objc_msgSend(objc_msgSend(self "p_frameInspectorDictionary")];
  if (!v3)
  {
    return 1.0;
  }

  [v3 floatValue];
  return v4;
}

+ (id)p_frameInspectorDictionary
{
  if (p_frameInspectorDictionary_sOnce != -1)
  {
    +[TSDDefaultRenderingObjects p_frameInspectorDictionary];
  }

  return p_frameInspectorDictionary_sFrameInspectorDictionary;
}

id __56__TSDDefaultRenderingObjects_p_frameInspectorDictionary__block_invoke()
{
  result = [MEMORY[0x277CBEA90] dataWithContentsOfFile:objc_msgSend(TSDBundle() options:"pathForResource:ofType:inDirectory:" error:{@"FrameInspectorLayoutInfo", @"plist", @"Frames", 2, 0}];
  if (result)
  {
    result = [MEMORY[0x277CCAC58] propertyListWithData:result options:0 format:0 error:0];
    p_frameInspectorDictionary_sFrameInspectorDictionary = result;
  }

  return result;
}

+ (id)p_transposedArrayOfColorFills:(id)fills
{
  v4 = [fills count];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      [v5 addObject:{objc_msgSend(fills, "objectAtIndex:", i / (v4 >> 2) + 4 * (i % (v4 >> 2)))}];
    }
  }

  return v5;
}

@end