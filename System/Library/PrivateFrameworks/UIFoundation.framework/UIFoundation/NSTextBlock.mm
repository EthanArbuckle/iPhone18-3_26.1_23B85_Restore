@interface NSTextBlock
+ (void)initialize;
- (NSColor)borderColorForEdge:(NSRectEdge)edge;
- (NSRect)boundsRectForContentRect:(NSRect)contentRect inRect:(NSRect)rect textContainer:(NSTextContainer *)textContainer characterRange:(NSRange)charRange;
- (NSRect)rectForLayoutAtPoint:(NSPoint)startingPoint inRect:(NSRect)rect textContainer:(NSTextContainer *)textContainer characterRange:(NSRange)charRange;
- (NSTextBlock)init;
- (NSTextBlock)initWithCoder:(id)coder;
- (double)_valueForParameter:(unint64_t)parameter;
- (id)_attributeDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_createFloatStorage;
- (void)_destroyFloatStorage;
- (void)_setValue:(double)value type:(unint64_t)type forParameter:(unint64_t)parameter;
- (void)_takeValuesFromTextBlock:(id)block;
- (void)dealloc;
- (void)drawBackgroundWithFrame:(NSRect)frameRect inView:(NSView *)controlView characterRange:(NSRange)charRange layoutManager:(NSLayoutManager *)layoutManager;
- (void)encodeWithCoder:(id)coder;
- (void)setBackgroundColor:(NSColor *)backgroundColor;
- (void)setBorderColor:(NSColor *)color;
- (void)setBorderColor:(NSColor *)color forEdge:(NSRectEdge)edge;
- (void)setWidth:(CGFloat)val type:(NSTextBlockValueType)type forLayer:(NSTextBlockLayer)layer;
@end

@implementation NSTextBlock

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    [NSTextBlock setVersion:1];
    __NSTextBlockClass = self;
  }
}

- (NSTextBlock)init
{
  v3.receiver = self;
  v3.super_class = NSTextBlock;
  return [(NSTextBlock *)&v3 init];
}

- (void)_createFloatStorage
{
  propVals = self->_propVals;
  if (!propVals)
  {
    propVals = NSZoneMalloc([(NSTextBlock *)self zone], 0xA0uLL);
    self->_propVals = propVals;
  }

  propVals[8] = 0u;
  propVals[9] = 0u;
  propVals[6] = 0u;
  propVals[7] = 0u;
  propVals[4] = 0u;
  propVals[5] = 0u;
  propVals[2] = 0u;
  propVals[3] = 0u;
  *propVals = 0u;
  propVals[1] = 0u;
}

- (void)_destroyFloatStorage
{
  propVals = self->_propVals;
  if (propVals)
  {
    v4 = MEMORY[0x193AD4070](propVals, a2);
    v5 = self->_propVals;

    NSZoneFree(v4, v5);
  }
}

- (void)dealloc
{
  [(NSTextBlock *)self _destroyFloatStorage];

  v3.receiver = self;
  v3.super_class = NSTextBlock;
  [(NSTextBlock *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v23 = *MEMORY[0x1E69E9840];
  if ([coder allowsKeyedCoding])
  {
    propMask = self->_propMask;
    if (propMask)
    {
      [coder encodeInteger:propMask forKey:@"NSValueTypes"];
    }

    typeMask = self->_typeMask;
    if (typeMask)
    {
      [coder encodeInteger:typeMask forKey:@"NSFlags"];
    }

    if (self->_propVals)
    {
      for (i = 0; i != 20; ++i)
      {
        v8 = *(self->_propVals + i);
        if (v8 != 0.0)
        {
          [coder encodeDouble:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithFormat:", @"NSParam%lu", i), v8}];
        }
      }
    }

    primParamVal = self->_primParamVal;
    if (primParamVal)
    {
      [coder encodeObject:primParamVal forKey:@"NSBackgroundColor"];
    }

    if (self->_otherParamVals)
    {

      [coder encodeObject:? forKey:?];
    }
  }

  else
  {
    propVals = self->_propVals;
    v20 = self->_propMask;
    v21 = 0;
    v19 = self->_typeMask;
    if (propVals)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = propVals[v11];
        if (v14 != 0.0)
        {
          v13 |= 1 << v11;
          v15 = v14;
          v22[v12++] = v15;
        }

        ++v11;
      }

      while (v11 != 20);
      v21 = v13;
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    p_primParamVal = &self->_primParamVal;
    if (self->_primParamVal)
    {
      v13 |= 0x10000000u;
      v21 = v13;
    }

    otherParamVals = self->_otherParamVals;
    p_otherParamVals = &self->_otherParamVals;
    if (otherParamVals)
    {
      v21 = v13 | 0x20000000;
    }

    [coder encodeValuesOfObjCTypes:{"III", &v21, &v20, &v19}];
    if (v12)
    {
      [coder encodeArrayOfObjCType:"f" count:v12 at:v22];
    }

    if (*p_primParamVal)
    {
      [coder encodeValuesOfObjCTypes:{"@", p_primParamVal}];
    }

    if (*p_otherParamVals)
    {
      [coder encodeValuesOfObjCTypes:{"@", p_otherParamVals}];
    }
  }
}

- (NSTextBlock)initWithCoder:(id)coder
{
  v35 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = NSTextBlock;
  v4 = [(NSTextBlock *)&v33 init];
  if (!v4)
  {
    return v4;
  }

  if ([coder allowsKeyedCoding])
  {
    if ([coder containsValueForKey:@"NSValueTypes"])
    {
      v4->_propMask = [coder decodeInt64ForKey:@"NSValueTypes"];
    }

    if ([coder containsValueForKey:@"NSFlags"])
    {
      v4->_typeMask = [coder decodeIntegerForKey:@"NSFlags"];
    }

    for (i = 0; i != 20; ++i)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSParam%lu", i];
      if ([coder containsValueForKey:v6])
      {
        if (!v4->_propVals)
        {
          [(NSTextBlock *)v4 _createFloatStorage];
        }

        [coder decodeDoubleForKey:v6];
        *(v4->_propVals + i) = v7;
      }
    }

    if ([coder containsValueForKey:@"NSBackgroundColor"])
    {
      v8 = MEMORY[0x1E695DFD8];
      if (__NSTextBlockPrimaryColorClass_onceToken != -1)
      {
        [NSTextBlock initWithCoder:];
      }

      v9 = __NSTextBlockPrimaryColorClass_colorClass;
      if (__NSTextBlockSecondaryColorClass_onceToken != -1)
      {
        [NSTextBlock initWithCoder:];
      }

      v4->_primParamVal = [coder decodeObjectOfClasses:objc_msgSend(v8 forKey:{"setWithObjects:", v9, __NSTextBlockSecondaryColorClass_colorClass, 0), @"NSBackgroundColor"}];
    }

    if ([coder containsValueForKey:@"NSBorderColors"])
    {
      v10 = MEMORY[0x1E695DFD8];
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      if (__NSTextBlockPrimaryColorClass_onceToken != -1)
      {
        [NSTextBlock initWithCoder:];
      }

      v14 = __NSTextBlockPrimaryColorClass_colorClass;
      if (__NSTextBlockSecondaryColorClass_onceToken != -1)
      {
        [NSTextBlock initWithCoder:];
      }

      v4->_otherParamVals = [coder decodeObjectOfClasses:objc_msgSend(v10 forKey:{"setWithObjects:", v11, v12, v13, v14, __NSTextBlockSecondaryColorClass_colorClass, 0), @"NSBorderColors"}];
    }

    return v4;
  }

  v15 = [coder versionForClassName:@"NSTextBlock"];
  if (v15 != 1)
  {
    v27 = v15;
    v28 = _NSFullMethodName();
    NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v28, 1, v27);

    return 0;
  }

  v31 = 0;
  v32 = 0;
  v30 = 0;
  [coder decodeValuesOfObjCTypes:{"III", &v31 + 4, &v31, &v30}];
  v16 = v30;
  v4->_propMask = v31;
  v4->_typeMask = v16;
  v17 = HIDWORD(v31);
  if (HIDWORD(v31))
  {
    v18 = xmmword_18E8566C0;
    v19 = vdupq_n_s32(HIDWORD(v31));
    v20 = 0uLL;
    v21 = 20;
    v22.i64[0] = 0x100000001;
    v22.i64[1] = 0x100000001;
    v23.i64[0] = 0x400000004;
    v23.i64[1] = 0x400000004;
    do
    {
      v20 = vaddq_s32(vandq_s8(vshlq_u32(v19, vnegq_s32(v18)), v22), v20);
      v18 = vaddq_s32(v18, v23);
      v21 -= 4;
    }

    while (v21);
    if (vaddvq_s32(v20))
    {
      [coder decodeArrayOfObjCType:"f" count:? at:?];
      [(NSTextBlock *)v4 _createFloatStorage];
      v24 = 0;
      v25 = 0;
      v17 = HIDWORD(v31);
      do
      {
        if ((v17 >> v24))
        {
          v26 = v34[v25++];
          *(v4->_propVals + v24) = v26;
        }

        ++v24;
      }

      while (v24 != 20);
    }

    if ((v17 & 0x10000000) != 0)
    {
      [coder decodeValuesOfObjCTypes:{"@", &v4->_primParamVal}];
      v17 = HIDWORD(v31);
      if ((v31 & 0x2000000000000000) == 0)
      {
LABEL_36:
        if ((v17 & 0x40000000) == 0)
        {
          return v4;
        }

        goto LABEL_41;
      }
    }

    else if ((v17 & 0x20000000) == 0)
    {
      goto LABEL_36;
    }

    [coder decodeValuesOfObjCTypes:{"@", &v4->_otherParamVals}];
    if ((v31 & 0x4000000000000000) == 0)
    {
      return v4;
    }

LABEL_41:
    [coder decodeValuesOfObjCTypes:{"@", &v32}];
  }

  return v4;
}

- (void)_setValue:(double)value type:(unint64_t)type forParameter:(unint64_t)parameter
{
  if (parameter > 0x13)
  {
    goto LABEL_7;
  }

  propVals = self->_propVals;
  if (value == 0.0)
  {
    if (!propVals)
    {
      goto LABEL_7;
    }
  }

  else if (!propVals)
  {
    [(NSTextBlock *)self _createFloatStorage];
    propVals = self->_propVals;
  }

  propVals[parameter] = value;
LABEL_7:
  v10 = 1 << parameter;
  if (type == 1)
  {
    v11 = self->_propMask | v10;
  }

  else
  {
    v11 = self->_propMask & ~v10;
  }

  self->_propMask = v11;
}

- (double)_valueForParameter:(unint64_t)parameter
{
  result = 0.0;
  if (parameter <= 0x13)
  {
    propVals = self->_propVals;
    if (propVals)
    {
      return propVals[parameter];
    }
  }

  return result;
}

- (void)_takeValuesFromTextBlock:(id)block
{
  if (*(block + 1))
  {
    [(NSTextBlock *)self _createFloatStorage];
    v5 = 0;
    v6 = *(block + 1);
    propVals = self->_propVals;
    do
    {
      *&propVals[v5] = *(v6 + v5);
      v5 += 8;
    }

    while (v5 != 160);
  }

  self->_propMask = *(block + 2);
  self->_typeMask = *(block + 3);
  v8 = *(block + 4);
  if (v8)
  {
    self->_primParamVal = [v8 copy];
  }

  v9 = *(block + 5);
  if (v9)
  {
    self->_otherParamVals = [v9 mutableCopy];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 _takeValuesFromTextBlock:self];
  return v4;
}

- (void)setWidth:(CGFloat)val type:(NSTextBlockValueType)type forLayer:(NSTextBlockLayer)layer
{
  [(NSTextBlock *)self setWidth:type type:layer forLayer:0 edge:?];
  [(NSTextBlock *)self setWidth:type type:layer forLayer:1 edge:val];
  [(NSTextBlock *)self setWidth:type type:layer forLayer:2 edge:val];

  [(NSTextBlock *)self setWidth:type type:layer forLayer:3 edge:val];
}

- (void)setBackgroundColor:(NSColor *)backgroundColor
{
  primParamVal = self->_primParamVal;
  if (primParamVal != backgroundColor)
  {

    self->_primParamVal = [(NSColor *)backgroundColor copy];
  }
}

- (void)setBorderColor:(NSColor *)color forEdge:(NSRectEdge)edge
{
  null = color;
  otherParamVals = self->_otherParamVals;
  if (otherParamVals)
  {
    if (color)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  self->_otherParamVals = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{-[NSTextBlock zone](self, "zone")), "init"}];
  v8 = 4;
  do
  {
    [self->_otherParamVals addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
    --v8;
  }

  while (v8);
  otherParamVals = self->_otherParamVals;
  if (!null)
  {
LABEL_9:
    null = [MEMORY[0x1E695DFB0] null];
  }

LABEL_3:

  [otherParamVals replaceObjectAtIndex:edge withObject:null];
}

- (NSColor)borderColorForEdge:(NSRectEdge)edge
{
  otherParamVals = self->_otherParamVals;
  if (otherParamVals)
  {
    v4 = [otherParamVals objectAtIndex:edge];
  }

  else
  {
    v4 = 0;
  }

  if (__NSTextBlockSecondaryColorClass_onceToken == -1)
  {
    if (!v4)
    {
      return v4;
    }
  }

  else
  {
    [NSTextBlock borderColorForEdge:];
    if (!v4)
    {
      return v4;
    }
  }

  v5 = __NSTextBlockSecondaryColorClass_colorClass;
  if (__NSTextBlockPrimaryColorClass_onceToken != -1)
  {
    [NSTextBlock borderColorForEdge:];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0 && (!v5 || (objc_opt_isKindOfClass() & 1) == 0))
  {
    return 0;
  }

  return v4;
}

- (void)setBorderColor:(NSColor *)color
{
  [(NSTextBlock *)self setBorderColor:color forEdge:0];
  [(NSTextBlock *)self setBorderColor:color forEdge:1];
  [(NSTextBlock *)self setBorderColor:color forEdge:2];

  [(NSTextBlock *)self setBorderColor:color forEdge:3];
}

- (id)_attributeDescription
{
  string = [MEMORY[0x1E696AD60] string];
  [(NSTextBlock *)self valueForDimension:0];
  v77 = v4;
  [(NSTextBlock *)self valueForDimension:1];
  v6 = v5;
  [(NSTextBlock *)self valueForDimension:2];
  v76 = v7;
  [(NSTextBlock *)self valueForDimension:4];
  v79 = v8;
  [(NSTextBlock *)self valueForDimension:5];
  v10 = v9;
  [(NSTextBlock *)self valueForDimension:6];
  v81 = v11;
  v12 = [(NSTextBlock *)self valueTypeForDimension:0];
  v63 = [(NSTextBlock *)self valueTypeForDimension:1];
  v61 = [(NSTextBlock *)self valueTypeForDimension:2];
  v75 = [(NSTextBlock *)self valueTypeForDimension:4];
  v71 = [(NSTextBlock *)self valueTypeForDimension:5];
  v69 = [(NSTextBlock *)self valueTypeForDimension:6];
  v13 = _colorValForColor([(NSTextBlock *)self backgroundColor]);
  [(NSTextBlock *)self widthForLayer:1 edge:1];
  v15 = v14;
  [(NSTextBlock *)self widthForLayer:1 edge:2];
  v80 = v16;
  [(NSTextBlock *)self widthForLayer:1 edge:3];
  v78 = v17;
  [(NSTextBlock *)self widthForLayer:1 edge:0];
  v19 = v18;
  v70 = [(NSTextBlock *)self widthValueTypeForLayer:1 edge:1];
  v68 = [(NSTextBlock *)self widthValueTypeForLayer:1 edge:2];
  v67 = [(NSTextBlock *)self widthValueTypeForLayer:1 edge:3];
  v65 = [(NSTextBlock *)self widthValueTypeForLayer:1 edge:0];
  [(NSTextBlock *)self widthForLayer:0 edge:1];
  v21 = v20;
  [(NSTextBlock *)self widthForLayer:0 edge:2];
  v23 = v22;
  [(NSTextBlock *)self widthForLayer:0 edge:3];
  v25 = v24;
  [(NSTextBlock *)self widthForLayer:0 edge:0];
  v27 = v26;
  v66 = [(NSTextBlock *)self widthValueTypeForLayer:0 edge:1];
  v64 = [(NSTextBlock *)self widthValueTypeForLayer:0 edge:2];
  v62 = [(NSTextBlock *)self widthValueTypeForLayer:0 edge:3];
  v60 = [(NSTextBlock *)self widthValueTypeForLayer:0 edge:0];
  v28 = [(NSTextBlock *)self borderColorForEdge:1];
  v29 = [(NSTextBlock *)self borderColorForEdge:2];
  v30 = [(NSTextBlock *)self borderColorForEdge:3];
  v31 = [(NSTextBlock *)self borderColorForEdge:0];
  v32 = _colorValForColor(v28);
  v33 = _colorValForColor(v29);
  v34 = _colorValForColor(v30);
  v35 = _colorValForColor(v31);
  [(NSTextBlock *)self widthForLayer:-1 edge:1];
  v85 = v36;
  [(NSTextBlock *)self widthForLayer:-1 edge:2];
  v84 = v37;
  [(NSTextBlock *)self widthForLayer:-1 edge:3];
  v83 = v38;
  [(NSTextBlock *)self widthForLayer:-1 edge:0];
  v82 = v39;
  v74 = [(NSTextBlock *)self widthValueTypeForLayer:-1 edge:1];
  v73 = [(NSTextBlock *)self widthValueTypeForLayer:-1 edge:2];
  v72 = [(NSTextBlock *)self widthValueTypeForLayer:-1 edge:3];
  v40 = [(NSTextBlock *)self widthValueTypeForLayer:-1 edge:0];
  if (v12 == NSTextBlockPercentageValueType)
  {
    v41 = @"%";
  }

  else
  {
    v41 = &stru_1F01AD578;
  }

  [string appendFormat:@"w %g%@ ", v77, v41];
  if (v6 > 0.0 || v76 > 0.0)
  {
    if (v63 == NSTextBlockPercentageValueType)
    {
      v42 = @"%";
    }

    else
    {
      v42 = &stru_1F01AD578;
    }

    if (v61 == NSTextBlockPercentageValueType)
    {
      v43 = @"%";
    }

    else
    {
      v43 = &stru_1F01AD578;
    }

    [string appendFormat:@"%g%@-%g%@ ", *&v6, v42, *&v76, v43];
  }

  if (v75 == NSTextBlockPercentageValueType)
  {
    v44 = @"%";
  }

  else
  {
    v44 = &stru_1F01AD578;
  }

  [string appendFormat:@"h %g%@ ", v79, v44];
  if (v10 > 0.0 || v81 > 0.0)
  {
    if (v71 == NSTextBlockPercentageValueType)
    {
      v45 = @"%";
    }

    else
    {
      v45 = &stru_1F01AD578;
    }

    if (v69 == NSTextBlockPercentageValueType)
    {
      v46 = @"%";
    }

    else
    {
      v46 = &stru_1F01AD578;
    }

    [string appendFormat:@"%g%@-%g%@ ", *&v10, v45, *&v81, v46];
  }

  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [string appendFormat:@"bgc #%.6x ", v13];
  }

  if (v19 > 0.0 || v15 > 0.0 || v80 > 0.0 || v78 > 0.0)
  {
    if (v70 == NSTextBlockPercentageValueType)
    {
      v47 = @"%";
    }

    else
    {
      v47 = &stru_1F01AD578;
    }

    if (v68 == NSTextBlockPercentageValueType)
    {
      v48 = @"%";
    }

    else
    {
      v48 = &stru_1F01AD578;
    }

    if (v67 == NSTextBlockPercentageValueType)
    {
      v49 = @"%";
    }

    else
    {
      v49 = &stru_1F01AD578;
    }

    if (v65 == NSTextBlockPercentageValueType)
    {
      v50 = @"%";
    }

    else
    {
      v50 = &stru_1F01AD578;
    }

    [string appendFormat:@"m %g%@ %g%@ %g%@ %g%@ ", *&v15, v47, *&v80, v48, *&v78, v49, *&v19, v50];
  }

  if (v27 > 0.0 || v21 > 0.0 || v23 > 0.0 || v25 > 0.0)
  {
    v51 = v66 == NSTextBlockPercentageValueType ? @"%" : &stru_1F01AD578;
    v52 = v64 == NSTextBlockPercentageValueType ? @"%" : &stru_1F01AD578;
    v53 = v62 == NSTextBlockPercentageValueType ? @"%" : &stru_1F01AD578;
    v54 = v60 == NSTextBlockPercentageValueType ? @"%" : &stru_1F01AD578;
    [string appendFormat:@"b %g%@ %g%@ %g%@ %g%@ ", *&v21, v51, *&v23, v52, *&v25, v53, *&v27, v54];
    if (v35 != 0x7FFFFFFFFFFFFFFFLL || v32 != 0x7FFFFFFFFFFFFFFFLL || v33 != 0x7FFFFFFFFFFFFFFFLL || v34 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [string appendFormat:@"boc"];
      if (v32 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [string appendString:@" transparent"];
      }

      else
      {
        [string appendFormat:@" #%.6x", v32];
      }

      if (v33 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [string appendString:@" transparent"];
      }

      else
      {
        [string appendFormat:@" #%.6x", v33];
      }

      if (v34 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [string appendString:@" transparent"];
      }

      else
      {
        [string appendFormat:@" #%.6x", v34];
      }

      if (v35 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [string appendString:@" transparent "];
      }

      else
      {
        [string appendFormat:@" #%.6x ", v35];
      }
    }
  }

  if (v82 > 0.0 || v85 > 0.0 || v84 > 0.0 || v83 > 0.0)
  {
    if (v74 == NSTextBlockPercentageValueType)
    {
      v55 = @"%";
    }

    else
    {
      v55 = &stru_1F01AD578;
    }

    if (v73 == NSTextBlockPercentageValueType)
    {
      v56 = @"%";
    }

    else
    {
      v56 = &stru_1F01AD578;
    }

    if (v72 == NSTextBlockPercentageValueType)
    {
      v57 = @"%";
    }

    else
    {
      v57 = &stru_1F01AD578;
    }

    if (v40 == NSTextBlockPercentageValueType)
    {
      v58 = @"%";
    }

    else
    {
      v58 = &stru_1F01AD578;
    }

    [string appendFormat:@"p %g%@ %g%@ %g%@ %g%@ ", *&v85, v55, *&v84, v56, *&v83, v57, *&v82, v58];
  }

  return string;
}

- (NSRect)rectForLayoutAtPoint:(NSPoint)startingPoint inRect:(NSRect)rect textContainer:(NSTextContainer *)textContainer characterRange:(NSRange)charRange
{
  length = charRange.length;
  location = charRange.location;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = startingPoint.y;
  layoutManager = [(NSTextContainer *)textContainer layoutManager];
  v15 = [NSTextBlockLayoutHelper alloc];
  [(NSLayoutManager *)layoutManager textStorage];
  v17 = [(NSTextBlockLayoutHelper *)v15 initWithTextBlock:location charRange:length text:width layoutManager:v16 containerWidth:layoutManager collapseBorders:0];
  v18 = v17[20];
  v19 = v17[14] + v17[15] + v17[16];
  v20 = v19 + v17[22] + v17[23] + v17[24];
  if (v20 <= width && v18 + v20 > width)
  {
    v18 = v18 * ((width - v20) / v18);
  }

  v22 = x + v19;
  v23 = v12 + v17[17] + v17[18] + v17[19];

  v24 = v22;
  v25 = v23;
  v26 = v18;
  v27 = y + height - v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (NSRect)boundsRectForContentRect:(NSRect)contentRect inRect:(NSRect)rect textContainer:(NSTextContainer *)textContainer characterRange:(NSRange)charRange
{
  length = charRange.length;
  location = charRange.location;
  width = rect.size.width;
  height = contentRect.size.height;
  v10 = contentRect.size.width;
  y = contentRect.origin.y;
  x = contentRect.origin.x;
  v14 = [(NSTextContainer *)textContainer layoutManager:contentRect.origin.x];
  v15 = [NSTextBlockLayoutHelper alloc];
  [(NSLayoutManager *)v14 textStorage];
  v17 = [(NSTextBlockLayoutHelper *)v15 initWithTextBlock:location charRange:length text:width layoutManager:v16 containerWidth:v14 collapseBorders:0];
  verticalAlignment = [(NSTextBlock *)self verticalAlignment];
  v19 = *(v17 + 21) - height;
  if (v19 > 0.0)
  {
    height = height + v19;
    if (verticalAlignment == NSTextBlockBottomAlignment)
    {
LABEL_5:
      _moveLinesInLayoutManager(v14, *(v17 + 4), *(v17 + 5), 0, v19);
      goto LABEL_6;
    }

    if (verticalAlignment == NSTextBlockMiddleAlignment)
    {
      v19 = v19 * 0.5;
      goto LABEL_5;
    }
  }

LABEL_6:
  v20 = *(v17 + 14) + *(v17 + 15) + *(v17 + 16);
  v21 = x - v20;
  v22 = *(v17 + 17) + *(v17 + 18) + *(v17 + 19);
  v23 = y - v22;
  v24 = v10 + v20 + *(v17 + 24) + *(v17 + 23) + *(v17 + 22);
  v25 = height + v22 + *(v17 + 27) + *(v17 + 26) + *(v17 + 25);

  v26 = v21;
  v27 = v23;
  v28 = v24;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)drawBackgroundWithFrame:(NSRect)frameRect inView:(NSView *)controlView characterRange:(NSRange)charRange layoutManager:(NSLayoutManager *)layoutManager
{
  length = charRange.length;
  location = charRange.location;
  height = frameRect.size.height;
  width = frameRect.size.width;
  y = frameRect.origin.y;
  x = frameRect.origin.x;
  v14 = [NSTextBlockLayoutHelper alloc];
  [(NSLayoutManager *)layoutManager textStorage];
  v16 = [(NSTextBlockLayoutHelper *)v14 initWithTextBlock:location charRange:length text:0.0 layoutManager:v15 containerWidth:layoutManager collapseBorders:0];
  backgroundColor = [(NSTextBlock *)self backgroundColor];
  v18 = [(NSTextBlock *)self borderColorForEdge:0];
  v19 = [(NSTextBlock *)self borderColorForEdge:1];
  v20 = [(NSTextBlock *)self borderColorForEdge:2];
  v21 = [(NSTextBlock *)self borderColorForEdge:3];
  v23 = *(v16 + 14);
  v22 = *(v16 + 15);
  v29 = x + v23;
  v25 = v23 + v22;
  if (backgroundColor)
  {
    v26 = *(v16 + 23);
    v24 = *(v16 + 17);
    [(NSColor *)backgroundColor set:x + v25];
    [OUTLINED_FUNCTION_1_5() fillBackgroundRectArray:? count:? forCharacterRange:? color:?];
    v22 = *(v16 + 15);
  }

  if (v22 > 0.0 && v18 != 0)
  {
    [(NSColor *)v18 set];
    [OUTLINED_FUNCTION_1_5() fillBackgroundRectArray:? count:? forCharacterRange:? color:?];
  }

  if (*(v16 + 18) > 0.0 && v19 != 0)
  {
    [(NSColor *)v19 set];
    [OUTLINED_FUNCTION_1_5() fillBackgroundRectArray:? count:? forCharacterRange:? color:?];
  }

  if (*(v16 + 23) > 0.0 && v20)
  {
    [(NSColor *)v20 set];
    [OUTLINED_FUNCTION_1_5() fillBackgroundRectArray:? count:? forCharacterRange:? color:?];
  }

  if (*(v16 + 26) > 0.0 && v21)
  {
    [(NSColor *)v21 set];
    [OUTLINED_FUNCTION_1_5() fillBackgroundRectArray:? count:? forCharacterRange:? color:?];
  }
}

@end