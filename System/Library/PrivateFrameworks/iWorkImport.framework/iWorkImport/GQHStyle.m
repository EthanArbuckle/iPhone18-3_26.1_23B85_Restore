@interface GQHStyle
+ (void)appendParentClass:(__CFString *)a3 style:(id)a4 classType:(Class)a5 state:(id)a6;
+ (void)createBaseStyleClassString:(id)a3 classString:(__CFString *)a4 classType:(Class)a5 state:(id)a6;
+ (void)createBaseStyleClassesString:(__CFArray *)a3 classString:(__CFString *)a4 classTypes:(__CFArray *)a5 state:(id)a6;
+ (void)setSingleStyleAttribute:(__CFString *)a3 intValue:(int)a4 node:(id)a5;
+ (void)setSingleStyleAttribute:(__CFString *)a3 pxValue:(int)a4 node:(id)a5;
+ (void)setSingleStyleAttribute:(__CFString *)a3 value:(__CFString *)a4 node:(id)a5;
- (BOOL)getAttribute:(__CFString *)a3 intValue:(int *)a4;
- (BOOL)getAttribute:(__CFString *)a3 trblValue:(id *)a4;
- (BOOL)getAttribute:(__CFString *)a3 value:(const __CFString *)a4;
- (GQHStyle)init;
- (__CFString)createNamedStyle:(__CFString *)a3;
- (void)addClass:(__CFString *)a3;
- (void)dealloc;
- (void)setStyleOnCurrentNode:(id)a3;
- (void)setStyleOnCurrentNode:(id)a3 mappingBaseStyleClass:(id)a4 baseClassType:(Class)a5;
- (void)setStyleOnCurrentNode:(id)a3 mappingBaseStyleClasses:(__CFArray *)a4 baseClassTypes:(__CFArray *)a5;
- (void)setupCssClassAttribute:(id)a3;
@end

@implementation GQHStyle

- (GQHStyle)init
{
  v4.receiver = self;
  v4.super_class = GQHStyle;
  v2 = [(GQHStyle *)&v4 init];
  if (v2)
  {
    v2->mStyles = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v2->mCssClassAttribute = CFStringCreateMutable(0, 0);
  }

  return v2;
}

- (void)dealloc
{
  CFRelease(self->mStyles);
  CFRelease(self->mCssClassAttribute);
  mCachedCssStyleName = self->mCachedCssStyleName;
  if (mCachedCssStyleName)
  {
    CFRelease(mCachedCssStyleName);
  }

  v4.receiver = self;
  v4.super_class = GQHStyle;
  [(GQHStyle *)&v4 dealloc];
}

- (BOOL)getAttribute:(__CFString *)a3 intValue:(int *)a4
{
  Value = CFDictionaryGetValue(self->mStyles, a3);
  if (Value)
  {
    v6 = Value;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *a4 = [v6 value];
      LOBYTE(Value) = 1;
    }

    else
    {
      LOBYTE(Value) = 0;
    }
  }

  return Value;
}

- (BOOL)getAttribute:(__CFString *)a3 value:(const __CFString *)a4
{
  Value = CFDictionaryGetValue(self->mStyles, a3);
  if (Value)
  {
    v6 = Value;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *a4 = v6;
      LOBYTE(Value) = 1;
    }

    else
    {
      LOBYTE(Value) = 0;
    }
  }

  return Value;
}

- (BOOL)getAttribute:(__CFString *)a3 trblValue:(id *)a4
{
  Value = CFDictionaryGetValue(self->mStyles, a3);
  if (Value)
  {
    v6 = Value;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *a4 = v6;
      LOBYTE(Value) = 1;
    }

    else
    {
      LOBYTE(Value) = 0;
    }
  }

  return Value;
}

- (__CFString)createNamedStyle:(__CFString *)a3
{
  if (CFDictionaryGetCount(self->mStyles) < 1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppendFormat(Mutable, 0, @".%@ {\n", a3);
  CFDictionaryApplyFunction(self->mStyles, sub_30BE0, Mutable);
  CFStringAppend(Mutable, @"} \n\n");
  return Mutable;
}

- (void)setupCssClassAttribute:(id)a3
{
  if (CFDictionaryGetCount(self->mStyles) >= 1)
  {
    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
    CFDictionaryApplyFunction(self->mStyles, sub_30D18, Mutable);
    v6 = [a3 makeInlineStyle:Mutable];
    if (CFStringGetLength(v6) >= 1)
    {
      mCachedCssStyleName = self->mCachedCssStyleName;
      if (!mCachedCssStyleName || CFStringCompare(v6, mCachedCssStyleName, 0))
      {
        CFStringAppend(self->mCssClassAttribute, v6);
        CFStringAppend(self->mCssClassAttribute, @" ");
        v8 = self->mCachedCssStyleName;
        if (v8)
        {
          CFRelease(v8);
        }

        self->mCachedCssStyleName = v6;
        CFRetain(v6);
      }
    }

    CFRelease(Mutable);
  }
}

- (void)setStyleOnCurrentNode:(id)a3
{
  [(GQHStyle *)self setupCssClassAttribute:?];
  v5 = [a3 htmlDoc];
  mCssClassAttribute = self->mCssClassAttribute;

  [v5 setAttribute:"class" cfStringValue:mCssClassAttribute];
}

- (void)addClass:(__CFString *)a3
{
  CFStringAppend(self->mCssClassAttribute, a3);
  mCssClassAttribute = self->mCssClassAttribute;

  CFStringAppend(mCssClassAttribute, @" ");
}

+ (void)setSingleStyleAttribute:(__CFString *)a3 value:(__CFString *)a4 node:(id)a5
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  sub_30D18(a3, a4, Mutable);
  [a5 setAttribute:"style" cfStringValue:Mutable];

  CFRelease(Mutable);
}

+ (void)setSingleStyleAttribute:(__CFString *)a3 intValue:(int)a4 node:(id)a5
{
  v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", a4);
  [a1 setSingleStyleAttribute:a3 value:v8 node:a5];

  CFRelease(v8);
}

+ (void)setSingleStyleAttribute:(__CFString *)a3 pxValue:(int)a4 node:(id)a5
{
  v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%dpx", a4);
  [a1 setSingleStyleAttribute:a3 value:v8 node:a5];

  CFRelease(v8);
}

- (void)setStyleOnCurrentNode:(id)a3 mappingBaseStyleClass:(id)a4 baseClassType:(Class)a5
{
  v9 = a5;
  values = a4;
  if (a4)
  {
    if (a5)
    {
      v7 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      v8 = CFArrayCreate(kCFAllocatorDefault, &v9, 1, &kCFTypeArrayCallBacks);
      [(GQHStyle *)self setStyleOnCurrentNode:a3 mappingBaseStyleClasses:v7 baseClassTypes:v8, v9, values];
      CFRelease(v7);
      CFRelease(v8);
    }
  }
}

+ (void)appendParentClass:(__CFString *)a3 style:(id)a4 classType:(Class)a5 state:(id)a6
{
  v10 = [a4 parent];
  if (!v10)
  {
    return;
  }

  v11 = v10;
  [a1 appendParentClass:a3 style:v10 classType:a5 state:a6];
  v12 = [a6 className:v11];
  if (v12)
  {
    v13 = v12;
    CFRetain(v12);
LABEL_4:
    Mutable = *a3;
    if (!*a3)
    {
      Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
      *a3 = Mutable;
    }

    CFStringAppendFormat(Mutable, 0, @"%@ ", v13);

    CFRelease(v13);
    return;
  }

  v17 = objc_alloc_init(GQHStyle);
  [a6 pushImplicitStyle:v11];
  [(objc_class *)a5 mapStyle:v11 style:v17 state:a6];
  [a6 popImplicitStyle];
  v13 = [a6 createStyleName:v11 type:{-[objc_class name](a5, "name")}];
  v15 = [(GQHStyle *)v17 createNamedStyle:v13];
  if (v15)
  {
    v16 = v15;
    [a6 addStyle:v15 className:v13 srcStyle:v11];
    CFRelease(v16);

    if (!v13)
    {
      return;
    }

    goto LABEL_4;
  }

  CFRelease(v13);
}

+ (void)createBaseStyleClassString:(id)a3 classString:(__CFString *)a4 classType:(Class)a5 state:(id)a6
{
  v11 = a5;
  values = a3;
  if (a3)
  {
    if (a5)
    {
      v9 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
      v10 = CFArrayCreate(0, &v11, 1, &kCFTypeArrayCallBacks);
      [a1 createBaseStyleClassesString:v9 classString:a4 classTypes:v10 state:{a6, v11, values}];
      CFRelease(v9);
      CFRelease(v10);
    }
  }
}

+ (void)createBaseStyleClassesString:(__CFArray *)a3 classString:(__CFString *)a4 classTypes:(__CFArray *)a5 state:(id)a6
{
  Count = CFArrayGetCount(a3);
  if (Count == CFArrayGetCount(a5) && Count >= 1)
  {
    v12 = 0;
    v13 = Count & 0x7FFFFFFF;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v12);
      v15 = CFArrayGetValueAtIndex(a5, v12);
      if (ValueAtIndex)
      {
        if (v15)
        {
          [a1 appendParentClass:a4 style:ValueAtIndex classType:v15 state:a6];
        }
      }

      ++v12;
    }

    while (v13 != v12);
  }
}

- (void)setStyleOnCurrentNode:(id)a3 mappingBaseStyleClasses:(__CFArray *)a4 baseClassTypes:(__CFArray *)a5
{
  [(GQHStyle *)self setupCssClassAttribute:?];
  appendedString = 0;
  [GQHStyle createBaseStyleClassesString:a4 classString:&appendedString classTypes:a5 state:a3];
  if (appendedString)
  {
    CFStringAppend(self->mCssClassAttribute, appendedString);
    CFStringAppend(self->mCssClassAttribute, @" ");
    CFRelease(appendedString);
  }

  [objc_msgSend(a3 "htmlDoc")];
}

@end