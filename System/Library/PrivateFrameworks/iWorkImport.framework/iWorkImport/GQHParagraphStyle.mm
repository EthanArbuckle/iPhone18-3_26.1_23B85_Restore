@interface GQHParagraphStyle
+ (void)mapStyle:(id)style style:(id)a4 state:(id)state;
@end

@implementation GQHParagraphStyle

+ (void)mapStyle:(id)style style:(id)a4 state:(id)state
{
  v36 = 0;
  v35 = 0.0;
  v9 = [style overridesFloatProperty:23 value:&v36];
  v10 = [style overridesFloatProperty:24 value:&v35];
  if ((v9 & 1) != 0 || v10)
  {
    [a4 addAttribute:off_9CF38 pxValue:llroundf(*&v36 - v35)];
  }

  v34 = 0;
  v33 = 0;
  if ([style overridesIntProperty:29 value:&v33])
  {
    if (v33 > 4)
    {
      v11 = &off_9CFC8;
    }

    else
    {
      v11 = off_80800[v33];
    }

    [a4 addAttribute:off_9CF30 value:*v11];
  }

  v12 = objc_alloc_init(GQHTrbl);
  v13 = [style overridesFloatProperty:24 value:&v36 + 4];
  if (v13)
  {
    [(GQHTrbl *)v12 setLeft:llroundf(*(&v36 + 1))];
  }

  if (([style overridesFloatProperty:25 value:&v36 + 4] & 1) == 0)
  {
    if (([state useOutline] & 1) == 0)
    {
      if (!v13)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_15;
  }

  [(GQHTrbl *)v12 setRight:llroundf(*(&v36 + 1))];
  if ([state useOutline])
  {
LABEL_15:
    outlineLevel = [state outlineLevel];
    if ([state outlineStyleType] == 1)
    {
      ++outlineLevel;
    }

    left = [(GQHTrbl *)v12 left];
    [(GQHTrbl *)v12 setLeft:left + outlineLevel * dword_9D2A8];
  }

LABEL_18:
  [a4 addAttribute:off_9CEF0 trblValue:v12];
LABEL_19:

  v32 = 0;
  if ([style overridesObjectProperty:36 value:&v32])
  {
    if (v32)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [state setColoredBackground:1];
        v16 = [state getColorString:v32];
        [a4 addAttribute:off_9CE08 value:v16];
      }
    }
  }

  if ([style overridesFloatProperty:30 value:&v36 + 4])
  {
    v17 = llroundf(*(&v36 + 1));
    v18 = &off_9CED0;
    if (v32 && *(&v36 + 1) > 0.0)
    {
      [a4 addAttribute:off_9CF10 intValue:v17];
      v17 = 0;
      v18 = &off_9CEB0;
    }

    [a4 addAttribute:*v18 intValue:v17];
  }

  if ([style overridesFloatProperty:31 value:&v36 + 4])
  {
    v19 = llroundf(*(&v36 + 1));
    if (v32 && *(&v36 + 1) > 0.0)
    {
      [a4 addAttribute:off_9CEF8 intValue:v19];
      v19 = 0;
    }

    [a4 addAttribute:off_9CEB8 intValue:v19];
  }

  v31.receiver = self;
  v31.super_class = &OBJC_METACLASS___GQHParagraphStyle;
  objc_msgSendSuper2(&v31, "mapStyle:style:state:", style, a4, state);
  if ([style overridesObjectProperty:28 value:&v34])
  {
    v30 = 0;
    if ([a4 getAttribute:off_9CEA8 intValue:&v30])
    {
      v20 = v30;
    }

    else
    {
      v29 = 0;
      if (([style hasValueForObjectProperty:1 value:&v29] & 1) == 0)
      {
        [objc_msgSend(state "implicitStyle")];
      }

      v28 = -1.0;
      if (([style hasValueForFloatProperty:2 value:&v28] & 1) == 0)
      {
        [objc_msgSend(state "implicitStyle")];
      }

      v20 = -1;
      if (v29)
      {
        *&v21 = v28;
        if (v28 > -1.0)
        {
          if ([self getDefaultLineHeight:v21 fontSize:? defLineHeight:?])
          {
            v20 = 0;
          }

          else
          {
            v20 = -1;
          }
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mode = [v34 mode];
      [v34 amount];
      if (mode == 4)
      {
        if ((v20 & 0x80000000) != 0)
        {
          v27 = @"1";
          goto LABEL_57;
        }

        v24 = kCFAllocatorDefault;
        v25 = v23 + v20;
      }

      else
      {
        v24 = kCFAllocatorDefault;
        if (mode)
        {
LABEL_55:
          v26 = CFStringCreateWithFormat(v24, 0, @"%ldpx", llroundf(v23));
LABEL_56:
          v27 = v26;
LABEL_57:
          [a4 addAttribute:off_9CEA8 value:v27];
          CFRelease(v27);
          return;
        }

        if ((v20 & 0x80000000) != 0)
        {
          v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%.2f", v23);
          goto LABEL_56;
        }

        v25 = v23 * v20;
      }

      v23 = ceilf(v25);
      goto LABEL_55;
    }
  }
}

@end