@interface GQHGraphicStyle
+ (int)strokeWidth:(id)a3;
+ (void)mapExternalWrap:(id)a3 style:(id)a4 state:(id)a5;
+ (void)mapFill:(id)a3 style:(id)a4 state:(id)a5;
+ (void)mapStroke:(id)a3 toBorderType:(int)a4 style:(id)a5 state:(id)a6;
+ (void)mapStyle:(id)a3 style:(id)a4 state:(id)a5 suppressNullFillOverride:(BOOL)a6;
@end

@implementation GQHGraphicStyle

+ (void)mapStyle:(id)a3 style:(id)a4 state:(id)a5 suppressNullFillOverride:(BOOL)a6
{
  v14 = 0;
  if ([a3 overridesObjectProperty:67 value:&v14] && (v14 || !a6))
  {
    [a1 mapFill:? style:? state:?];
  }

  v14 = 0;
  if ([a3 overridesObjectProperty:68 value:&v14])
  {
    [a1 mapStroke:v14 toBorderType:0 style:a4 state:a5];
  }

  v14 = 0;
  if ([a3 overridesObjectProperty:72 value:&v14])
  {
    [a1 mapExternalWrap:v14 style:a4 state:a5];
  }

  v13 = 1.0;
  if ([a3 overridesFloatProperty:69 value:&v13])
  {
    v11 = CFStringCreateWithFormat(0, 0, @"%.2f", v13);
    [a4 addAttribute:off_9CEE0 value:v11];
    CFRelease(v11);
  }

  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___GQHGraphicStyle;
  objc_msgSendSuper2(&v12, "mapStyle:style:state:", a3, a4, a5);
}

+ (void)mapExternalWrap:(id)a3 style:(id)a4 state:(id)a5
{
  if ([a3 inlineWrapEnabled] && objc_msgSend(a5, "allowInlineWrap"))
  {
    v8 = [a3 wrapDirection];
    v9 = off_9CE68;
    v10 = &off_9D010;
    if (v8 != 1)
    {
      v10 = &off_9D050;
    }

    v11 = *v10;

    [a4 addAttribute:v9 value:v11];
  }
}

+ (void)mapFill:(id)a3 style:(id)a4 state:(id)a5
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = a5;
    v9 = a3;
LABEL_3:
    v10 = [v8 getColorString:v9];
    [a4 addAttribute:off_9CE08 value:v10];
    [a4 addAttribute:off_9CE10 value:off_9D028];
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

    v16 = [a3 imageBinary];
    v17 = [a3 color];
    if (v17)
    {
      v18 = [a5 getColorString:v17];
      [a4 addAttribute:off_9CE08 value:v18];
    }

    v19 = [v16 createAbsoluteUrlForState:{objc_msgSend(a5, "processorState")}];
    if (!v19)
    {
      if (v17)
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
    [a4 addAttribute:off_9CE10 value:v23];
    CFRelease(v23);
    [v16 size];
    v25 = v24;
    v27 = v26;
    v28 = [a3 technique];
    [a4 addAttribute:off_9CE18 value:off_9D030];
    [a4 addAttribute:off_9CF88 value:off_9CFC8];
    if (v28 - 3 < 2 || v28 == 1)
    {
      [a4 addAttribute:off_9CF78 value:@"100%"];
      v29 = off_9CF80;
      v31 = a4;
      v30 = @"100%";
    }

    else
    {
      if (v28 != 2)
      {
        v35 = v25;
        v36 = llroundf(v35);
        v37 = v27;
        v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%ldpx %ldpx", v36, llroundf(v37));
        [a4 addAttribute:off_9CF78 value:v38];
        [a4 addAttribute:off_9CF80 value:v38];
        CFRelease(v38);
        goto LABEL_24;
      }

      [a4 addAttribute:off_9CE18 value:off_9D048];
      v29 = off_9CF88;
      v30 = @"top left";
      v31 = a4;
    }

    [v31 addAttribute:v29 value:v30];
LABEL_24:
    CFRelease(v20);
    goto LABEL_4;
  }

  v12 = [a3 stops];
  v13 = [a3 type];
  Count = CFArrayGetCount(v12);
  if (v13 == 1 && Count >= 1)
  {
    v15 = [CFArrayGetValueAtIndex(v12 0)];
  }

  else
  {
    if (v13 || Count < 2)
    {
      goto LABEL_26;
    }

    v32 = (Count + -1.0) * 0.5;
    v33 = vcvtps_s32_f32(v32);
    ValueAtIndex = CFArrayGetValueAtIndex(v12, vcvtms_s32_f32(v32));
    v15 = [objc_msgSend(ValueAtIndex "color")];
  }

  v9 = v15;
  if (v15)
  {
    v8 = a5;
    goto LABEL_3;
  }

LABEL_26:
  [a4 addAttribute:off_9CE08 value:off_9D080];
  [a4 addAttribute:off_9CE10 value:off_9D028];
  v11 = 0;
LABEL_27:

  [a5 setColoredBackground:v11];
}

+ (void)mapStroke:(id)a3 toBorderType:(int)a4 style:(id)a5 state:(id)a6
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

  v10 = [a3 pattern];
  Mutable = CFStringCreateMutable(0, 0);
  if (v10 && [v10 type] == 2)
  {
    v12 = &off_9D028;
LABEL_12:
    v15 = *v12;
    goto LABEL_13;
  }

  v13 = [GQHGraphicStyle strokeWidth:a3];
  CFStringAppend(Mutable, [a6 getColorString:{objc_msgSend(a3, "color")}]);
  CFStringAppend(Mutable, @" ");
  v14 = CFStringCreateWithFormat(0, 0, @"%d ", v13);
  CFStringAppend(Mutable, v14);
  CFRelease(v14);
  v15 = off_9CFE8;
  if (v10)
  {
    v16 = [v10 type];
    if (!v16)
    {
      v12 = &off_9CFD8;
      goto LABEL_12;
    }

    if (v16 == 1)
    {
      v12 = &off_9D060;
      goto LABEL_12;
    }
  }

LABEL_13:
  CFStringAppend(Mutable, v15);
  if (a4 <= 4)
  {
    [a5 addAttribute:*off_807D0[a4] value:Mutable];
  }

  CFRelease(Mutable);
}

+ (int)strokeWidth:(id)a3
{
  [a3 width];
  v5 = llroundf(v4);
  if (!v5)
  {
    [a3 width];
    v5 = v6 > 0.01;
  }

  v7 = [a3 pattern];
  if ([v7 type] == 2 || v7 == 0)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

@end