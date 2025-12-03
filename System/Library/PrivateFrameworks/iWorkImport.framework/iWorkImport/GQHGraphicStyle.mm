@interface GQHGraphicStyle
+ (int)strokeWidth:(id)width;
+ (void)mapExternalWrap:(id)wrap style:(id)style state:(id)state;
+ (void)mapFill:(id)fill style:(id)style state:(id)state;
+ (void)mapStroke:(id)stroke toBorderType:(int)type style:(id)style state:(id)state;
+ (void)mapStyle:(id)style style:(id)a4 state:(id)state suppressNullFillOverride:(BOOL)override;
@end

@implementation GQHGraphicStyle

+ (void)mapStyle:(id)style style:(id)a4 state:(id)state suppressNullFillOverride:(BOOL)override
{
  v14 = 0;
  if ([style overridesObjectProperty:67 value:&v14] && (v14 || !override))
  {
    [self mapFill:? style:? state:?];
  }

  v14 = 0;
  if ([style overridesObjectProperty:68 value:&v14])
  {
    [self mapStroke:v14 toBorderType:0 style:a4 state:state];
  }

  v14 = 0;
  if ([style overridesObjectProperty:72 value:&v14])
  {
    [self mapExternalWrap:v14 style:a4 state:state];
  }

  v13 = 1.0;
  if ([style overridesFloatProperty:69 value:&v13])
  {
    v11 = CFStringCreateWithFormat(0, 0, @"%.2f", v13);
    [a4 addAttribute:off_9CEE0 value:v11];
    CFRelease(v11);
  }

  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___GQHGraphicStyle;
  objc_msgSendSuper2(&v12, "mapStyle:style:state:", style, a4, state);
}

+ (void)mapExternalWrap:(id)wrap style:(id)style state:(id)state
{
  if ([wrap inlineWrapEnabled] && objc_msgSend(state, "allowInlineWrap"))
  {
    wrapDirection = [wrap wrapDirection];
    v9 = off_9CE68;
    v10 = &off_9D010;
    if (wrapDirection != 1)
    {
      v10 = &off_9D050;
    }

    v11 = *v10;

    [style addAttribute:v9 value:v11];
  }
}

+ (void)mapFill:(id)fill style:(id)style state:(id)state
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stateCopy2 = state;
    fillCopy = fill;
LABEL_3:
    v10 = [stateCopy2 getColorString:fillCopy];
    [style addAttribute:off_9CE08 value:v10];
    [style addAttribute:off_9CE10 value:off_9D028];
LABEL_4:
    v11 = 1;
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_26;
    }

    imageBinary = [fill imageBinary];
    color = [fill color];
    if (color)
    {
      v18 = [state getColorString:color];
      [style addAttribute:off_9CE08 value:v18];
    }

    v19 = [imageBinary createAbsoluteUrlForState:{objc_msgSend(state, "processorState")}];
    if (!v19)
    {
      if (color)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }

    v20 = v19;
    v21 = CFURLGetString(v19);
    v22 = sub_41BA4(v21);
    v23 = CFStringCreateWithFormat(0, 0, @"url(%@)", v22);
    CFRelease(v22);
    [style addAttribute:off_9CE10 value:v23];
    CFRelease(v23);
    [imageBinary size];
    v25 = v24;
    v27 = v26;
    technique = [fill technique];
    [style addAttribute:off_9CE18 value:off_9D030];
    [style addAttribute:off_9CF88 value:off_9CFC8];
    if (technique - 3 < 2 || technique == 1)
    {
      [style addAttribute:off_9CF78 value:@"100%"];
      v29 = off_9CF80;
      styleCopy2 = style;
      v30 = @"100%";
    }

    else
    {
      if (technique != 2)
      {
        v35 = v25;
        v36 = llroundf(v35);
        v37 = v27;
        v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%ldpx %ldpx", v36, llroundf(v37));
        [style addAttribute:off_9CF78 value:v38];
        [style addAttribute:off_9CF80 value:v38];
        CFRelease(v38);
        goto LABEL_24;
      }

      [style addAttribute:off_9CE18 value:off_9D048];
      v29 = off_9CF88;
      v30 = @"top left";
      styleCopy2 = style;
    }

    [styleCopy2 addAttribute:v29 value:v30];
LABEL_24:
    CFRelease(v20);
    goto LABEL_4;
  }

  stops = [fill stops];
  type = [fill type];
  Count = CFArrayGetCount(stops);
  if (type == 1 && Count >= 1)
  {
    v15 = [CFArrayGetValueAtIndex(stops 0)];
  }

  else
  {
    if (type || Count < 2)
    {
      goto LABEL_26;
    }

    v32 = (Count + -1.0) * 0.5;
    v33 = vcvtps_s32_f32(v32);
    ValueAtIndex = CFArrayGetValueAtIndex(stops, vcvtms_s32_f32(v32));
    v15 = [objc_msgSend(ValueAtIndex "color")];
  }

  fillCopy = v15;
  if (v15)
  {
    stateCopy2 = state;
    goto LABEL_3;
  }

LABEL_26:
  [style addAttribute:off_9CE08 value:off_9D080];
  [style addAttribute:off_9CE10 value:off_9D028];
  v11 = 0;
LABEL_27:

  [state setColoredBackground:v11];
}

+ (void)mapStroke:(id)stroke toBorderType:(int)type style:(id)style state:(id)state
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return;
  }

  pattern = [stroke pattern];
  Mutable = CFStringCreateMutable(0, 0);
  if (pattern && [pattern type] == 2)
  {
    v12 = &off_9D028;
LABEL_12:
    v15 = *v12;
    goto LABEL_13;
  }

  v13 = [GQHGraphicStyle strokeWidth:stroke];
  CFStringAppend(Mutable, [state getColorString:{objc_msgSend(stroke, "color")}]);
  CFStringAppend(Mutable, @" ");
  v14 = CFStringCreateWithFormat(0, 0, @"%d ", v13);
  CFStringAppend(Mutable, v14);
  CFRelease(v14);
  v15 = off_9CFE8;
  if (pattern)
  {
    type = [pattern type];
    if (!type)
    {
      v12 = &off_9CFD8;
      goto LABEL_12;
    }

    if (type == 1)
    {
      v12 = &off_9D060;
      goto LABEL_12;
    }
  }

LABEL_13:
  CFStringAppend(Mutable, v15);
  if (type <= 4)
  {
    [style addAttribute:*off_807D0[type] value:Mutable];
  }

  CFRelease(Mutable);
}

+ (int)strokeWidth:(id)width
{
  [width width];
  v5 = llroundf(v4);
  if (!v5)
  {
    [width width];
    v5 = v6 > 0.01;
  }

  pattern = [width pattern];
  if ([pattern type] == 2 || pattern == 0)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

@end