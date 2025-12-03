@interface GQHStyle
+ (void)appendParentClass:(__CFString *)class style:(id)style classType:(Class)type state:(id)state;
+ (void)createBaseStyleClassString:(id)string classString:(__CFString *)classString classType:(Class)type state:(id)state;
+ (void)createBaseStyleClassesString:(__CFArray *)string classString:(__CFString *)classString classTypes:(__CFArray *)types state:(id)state;
+ (void)setSingleStyleAttribute:(__CFString *)attribute intValue:(int)value node:(id)node;
+ (void)setSingleStyleAttribute:(__CFString *)attribute pxValue:(int)value node:(id)node;
+ (void)setSingleStyleAttribute:(__CFString *)attribute value:(__CFString *)value node:(id)node;
- (BOOL)getAttribute:(__CFString *)attribute intValue:(int *)value;
- (BOOL)getAttribute:(__CFString *)attribute trblValue:(id *)value;
- (BOOL)getAttribute:(__CFString *)attribute value:(const __CFString *)value;
- (GQHStyle)init;
- (__CFString)createNamedStyle:(__CFString *)style;
- (void)addClass:(__CFString *)class;
- (void)dealloc;
- (void)setStyleOnCurrentNode:(id)node;
- (void)setStyleOnCurrentNode:(id)node mappingBaseStyleClass:(id)class baseClassType:(Class)type;
- (void)setStyleOnCurrentNode:(id)node mappingBaseStyleClasses:(__CFArray *)classes baseClassTypes:(__CFArray *)types;
- (void)setupCssClassAttribute:(id)attribute;
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

- (BOOL)getAttribute:(__CFString *)attribute intValue:(int *)value
{
  Value = CFDictionaryGetValue(self->mStyles, attribute);
  if (Value)
  {
    v6 = Value;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *value = [v6 value];
      LOBYTE(Value) = 1;
    }

    else
    {
      LOBYTE(Value) = 0;
    }
  }

  return Value;
}

- (BOOL)getAttribute:(__CFString *)attribute value:(const __CFString *)value
{
  Value = CFDictionaryGetValue(self->mStyles, attribute);
  if (Value)
  {
    v6 = Value;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *value = v6;
      LOBYTE(Value) = 1;
    }

    else
    {
      LOBYTE(Value) = 0;
    }
  }

  return Value;
}

- (BOOL)getAttribute:(__CFString *)attribute trblValue:(id *)value
{
  Value = CFDictionaryGetValue(self->mStyles, attribute);
  if (Value)
  {
    v6 = Value;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *value = v6;
      LOBYTE(Value) = 1;
    }

    else
    {
      LOBYTE(Value) = 0;
    }
  }

  return Value;
}

- (__CFString)createNamedStyle:(__CFString *)style
{
  if (CFDictionaryGetCount(self->mStyles) < 1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppendFormat(Mutable, 0, @".%@ {\n", style);
  CFDictionaryApplyFunction(self->mStyles, sub_30BE0, Mutable);
  CFStringAppend(Mutable, @"} \n\n");
  return Mutable;
}

- (void)setupCssClassAttribute:(id)attribute
{
  if (CFDictionaryGetCount(self->mStyles) >= 1)
  {
    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
    CFDictionaryApplyFunction(self->mStyles, sub_30D18, Mutable);
    v6 = [attribute makeInlineStyle:Mutable];
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

- (void)setStyleOnCurrentNode:(id)node
{
  [(GQHStyle *)self setupCssClassAttribute:?];
  htmlDoc = [node htmlDoc];
  mCssClassAttribute = self->mCssClassAttribute;

  [htmlDoc setAttribute:"class" cfStringValue:mCssClassAttribute];
}

- (void)addClass:(__CFString *)class
{
  CFStringAppend(self->mCssClassAttribute, class);
  mCssClassAttribute = self->mCssClassAttribute;

  CFStringAppend(mCssClassAttribute, @" ");
}

+ (void)setSingleStyleAttribute:(__CFString *)attribute value:(__CFString *)value node:(id)node
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  sub_30D18(attribute, value, Mutable);
  [node setAttribute:"style" cfStringValue:Mutable];

  CFRelease(Mutable);
}

+ (void)setSingleStyleAttribute:(__CFString *)attribute intValue:(int)value node:(id)node
{
  v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", value);
  [self setSingleStyleAttribute:attribute value:v8 node:node];

  CFRelease(v8);
}

+ (void)setSingleStyleAttribute:(__CFString *)attribute pxValue:(int)value node:(id)node
{
  v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%dpx", value);
  [self setSingleStyleAttribute:attribute value:v8 node:node];

  CFRelease(v8);
}

- (void)setStyleOnCurrentNode:(id)node mappingBaseStyleClass:(id)class baseClassType:(Class)type
{
  typeCopy = type;
  values = class;
  if (class)
  {
    if (type)
    {
      v7 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      v8 = CFArrayCreate(kCFAllocatorDefault, &typeCopy, 1, &kCFTypeArrayCallBacks);
      [(GQHStyle *)self setStyleOnCurrentNode:node mappingBaseStyleClasses:v7 baseClassTypes:v8, typeCopy, values];
      CFRelease(v7);
      CFRelease(v8);
    }
  }
}

+ (void)appendParentClass:(__CFString *)class style:(id)style classType:(Class)type state:(id)state
{
  parent = [style parent];
  if (!parent)
  {
    return;
  }

  v11 = parent;
  [self appendParentClass:class style:parent classType:type state:state];
  v12 = [state className:v11];
  if (v12)
  {
    v13 = v12;
    CFRetain(v12);
LABEL_4:
    Mutable = *class;
    if (!*class)
    {
      Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
      *class = Mutable;
    }

    CFStringAppendFormat(Mutable, 0, @"%@ ", v13);

    CFRelease(v13);
    return;
  }

  v17 = objc_alloc_init(GQHStyle);
  [state pushImplicitStyle:v11];
  [(objc_class *)type mapStyle:v11 style:v17 state:state];
  [state popImplicitStyle];
  v13 = [state createStyleName:v11 type:{-[objc_class name](type, "name")}];
  v15 = [(GQHStyle *)v17 createNamedStyle:v13];
  if (v15)
  {
    v16 = v15;
    [state addStyle:v15 className:v13 srcStyle:v11];
    CFRelease(v16);

    if (!v13)
    {
      return;
    }

    goto LABEL_4;
  }

  CFRelease(v13);
}

+ (void)createBaseStyleClassString:(id)string classString:(__CFString *)classString classType:(Class)type state:(id)state
{
  typeCopy = type;
  values = string;
  if (string)
  {
    if (type)
    {
      v9 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
      v10 = CFArrayCreate(0, &typeCopy, 1, &kCFTypeArrayCallBacks);
      [self createBaseStyleClassesString:v9 classString:classString classTypes:v10 state:{state, typeCopy, values}];
      CFRelease(v9);
      CFRelease(v10);
    }
  }
}

+ (void)createBaseStyleClassesString:(__CFArray *)string classString:(__CFString *)classString classTypes:(__CFArray *)types state:(id)state
{
  Count = CFArrayGetCount(string);
  if (Count == CFArrayGetCount(types) && Count >= 1)
  {
    v12 = 0;
    v13 = Count & 0x7FFFFFFF;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(string, v12);
      v15 = CFArrayGetValueAtIndex(types, v12);
      if (ValueAtIndex)
      {
        if (v15)
        {
          [self appendParentClass:classString style:ValueAtIndex classType:v15 state:state];
        }
      }

      ++v12;
    }

    while (v13 != v12);
  }
}

- (void)setStyleOnCurrentNode:(id)node mappingBaseStyleClasses:(__CFArray *)classes baseClassTypes:(__CFArray *)types
{
  [(GQHStyle *)self setupCssClassAttribute:?];
  appendedString = 0;
  [GQHStyle createBaseStyleClassesString:classes classString:&appendedString classTypes:types state:node];
  if (appendedString)
  {
    CFStringAppend(self->mCssClassAttribute, appendedString);
    CFStringAppend(self->mCssClassAttribute, @" ");
    CFRelease(appendedString);
  }

  [objc_msgSend(node "htmlDoc")];
}

@end