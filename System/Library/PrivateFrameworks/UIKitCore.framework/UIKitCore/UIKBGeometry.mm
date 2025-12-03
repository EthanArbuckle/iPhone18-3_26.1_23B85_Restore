@interface UIKBGeometry
+ (id)codeStringForValue:(id)value;
+ (id)geometry;
+ (id)geometryWithOriginValue:(id)value sizeValue:(id)sizeValue;
+ (id)geometryWithRect:(CGRect)rect;
+ (void)performOperations:(id)operations withScale:(double)scale;
- ($000CCD7ED2ADA2E18343834BA3C2DAF0)h;
- ($000CCD7ED2ADA2E18343834BA3C2DAF0)paddingBottom;
- ($000CCD7ED2ADA2E18343834BA3C2DAF0)paddingLeft;
- ($000CCD7ED2ADA2E18343834BA3C2DAF0)paddingRight;
- ($000CCD7ED2ADA2E18343834BA3C2DAF0)paddingTop;
- ($000CCD7ED2ADA2E18343834BA3C2DAF0)w;
- ($000CCD7ED2ADA2E18343834BA3C2DAF0)x;
- ($000CCD7ED2ADA2E18343834BA3C2DAF0)y;
- (BOOL)isEqual:(id)equal;
- (BOOL)usesAutomaticMetrics;
- (BOOL)usesPercentages;
- (CGRect)frame;
- (CGRect)frameWithContainingFrame:(CGRect)frame;
- (CGRect)paddedFrameWithContainingFrame:(CGRect)frame;
- (CGRect)paddedFrameWithResolvedFrame:(CGRect)frame;
- (UIKBGeometry)init;
- (UIKBGeometry)initWithCoder:(id)coder;
- (UIKBGeometry)initWithName:(id)name rect:(id *)rect padding:(id *)padding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initTemplateWithName:(id)name rect:(id *)rect padding:(id *)padding;
- (id)overrideGeometry:(id)geometry;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setName:(id)name;
@end

@implementation UIKBGeometry

+ (id)geometry
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (id)geometryWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = objc_alloc_init(UIKBGeometry);
  [(UIKBGeometry *)v7 setX:*&x, 3];
  [(UIKBGeometry *)v7 setY:*&y, 3];
  [(UIKBGeometry *)v7 setW:*&width, 3];
  [(UIKBGeometry *)v7 setH:*&height, 3];

  return v7;
}

+ (id)geometryWithOriginValue:(id)value sizeValue:(id)sizeValue
{
  v4 = *&sizeValue.var1;
  var0 = sizeValue.var0;
  v6 = *&value.var1;
  v7 = value.var0;
  v8 = objc_alloc_init(UIKBGeometry);
  [(UIKBGeometry *)v8 setX:*&v7, v6];
  [(UIKBGeometry *)v8 setY:*&v7, v6];
  [(UIKBGeometry *)v8 setW:*&var0, v4];
  [(UIKBGeometry *)v8 setH:*&var0, v4];

  return v8;
}

- (UIKBGeometry)initWithName:(id)name rect:(id *)rect padding:(id *)padding
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = UIKBGeometry;
  v10 = [(UIKBGeometry *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->m_name, name);
    v11->m_x = rect->var0[0];
    v11->m_y = rect->var0[1];
    v11->m_w = rect->var0[2];
    v11->m_h = rect->var0[3];
    v11->m_paddingTop = padding->var0[0];
    v11->m_paddingLeft = padding->var0[1];
    v11->m_paddingBottom = padding->var0[2];
    v11->m_paddingRight = padding->var0[3];
    v11->m_explicitlySpecified = 1;
    v12 = v11;
  }

  return v11;
}

- (id)initTemplateWithName:(id)name rect:(id *)rect padding:(id *)padding
{
  v5 = rect->var0[1];
  v11[0] = rect->var0[0];
  v11[1] = v5;
  v6 = rect->var0[3];
  v11[2] = rect->var0[2];
  v11[3] = v6;
  v7 = padding->var0[1];
  v10[0] = padding->var0[0];
  v10[1] = v7;
  v8 = padding->var0[3];
  v10[2] = padding->var0[2];
  v10[3] = v8;
  result = [(UIKBGeometry *)self initWithName:name rect:v11 padding:v10];
  *(result + 145) = 1;
  return result;
}

- (UIKBGeometry)init
{
  v6.receiver = self;
  v6.super_class = UIKBGeometry;
  v2 = [(UIKBGeometry *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->m_explicitlySpecified = 0;
    v4 = v2;
  }

  return v3;
}

- (UIKBGeometry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"name"];
  m_name = self->m_name;
  self->m_name = v5;

  [coderCopy decodeFloatForKey:@"x-amount"];
  v8 = v7;
  v9 = [coderCopy decodeIntForKey:@"x-unit"];
  self->m_x.amount = v8;
  *&self->m_x.unit = v9;
  [coderCopy decodeFloatForKey:@"y-amount"];
  v11 = v10;
  v12 = [coderCopy decodeIntForKey:@"y-unit"];
  self->m_y.amount = v11;
  *&self->m_y.unit = v12;
  [coderCopy decodeFloatForKey:@"w-amount"];
  v14 = v13;
  v15 = [coderCopy decodeIntForKey:@"w-unit"];
  self->m_w.amount = v14;
  *&self->m_w.unit = v15;
  [coderCopy decodeFloatForKey:@"h-amount"];
  v17 = v16;
  v18 = [coderCopy decodeIntForKey:@"h-unit"];
  self->m_h.amount = v17;
  *&self->m_h.unit = v18;
  [coderCopy decodeFloatForKey:@"paddingTop-amount"];
  v20 = v19;
  v21 = [coderCopy decodeIntForKey:@"paddingTop-unit"];
  self->m_paddingTop.amount = v20;
  *&self->m_paddingTop.unit = v21;
  [coderCopy decodeFloatForKey:@"paddingLeft-amount"];
  v23 = v22;
  v24 = [coderCopy decodeIntForKey:@"paddingLeft-unit"];
  self->m_paddingLeft.amount = v23;
  *&self->m_paddingLeft.unit = v24;
  [coderCopy decodeFloatForKey:@"paddingBottom-amount"];
  v26 = v25;
  v27 = [coderCopy decodeIntForKey:@"paddingBottom-unit"];
  self->m_paddingBottom.amount = v26;
  *&self->m_paddingBottom.unit = v27;
  [coderCopy decodeFloatForKey:@"paddingRight-amount"];
  v29 = v28;
  v30 = [coderCopy decodeIntForKey:@"paddingRight-unit"];
  self->m_paddingRight.amount = v29;
  *&self->m_paddingRight.unit = v30;
  self->m_explicitlySpecified = [coderCopy decodeBoolForKey:@"explicit"];
  v31 = [coderCopy decodeBoolForKey:@"isTemplate"];

  self->m_isTemplate = v31;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  m_name = self->m_name;
  coderCopy = coder;
  [coderCopy encodeObject:m_name forKey:@"name"];
  amount = self->m_x.amount;
  *&amount = amount;
  [coderCopy encodeFloat:@"x-amount" forKey:amount];
  [coderCopy encodeInt:self->m_x.unit forKey:@"x-unit"];
  v6 = self->m_y.amount;
  *&v6 = v6;
  [coderCopy encodeFloat:@"y-amount" forKey:v6];
  [coderCopy encodeInt:self->m_y.unit forKey:@"y-unit"];
  v7 = self->m_w.amount;
  *&v7 = v7;
  [coderCopy encodeFloat:@"w-amount" forKey:v7];
  [coderCopy encodeInt:self->m_w.unit forKey:@"w-unit"];
  v8 = self->m_h.amount;
  *&v8 = v8;
  [coderCopy encodeFloat:@"h-amount" forKey:v8];
  [coderCopy encodeInt:self->m_h.unit forKey:@"h-unit"];
  v9 = self->m_paddingTop.amount;
  *&v9 = v9;
  [coderCopy encodeFloat:@"paddingTop-amount" forKey:v9];
  [coderCopy encodeInt:self->m_paddingTop.unit forKey:@"paddingTop-unit"];
  v10 = self->m_paddingLeft.amount;
  *&v10 = v10;
  [coderCopy encodeFloat:@"paddingLeft-amount" forKey:v10];
  [coderCopy encodeInt:self->m_paddingLeft.unit forKey:@"paddingLeft-unit"];
  v11 = self->m_paddingBottom.amount;
  *&v11 = v11;
  [coderCopy encodeFloat:@"paddingBottom-amount" forKey:v11];
  [coderCopy encodeInt:self->m_paddingBottom.unit forKey:@"paddingBottom-unit"];
  v12 = self->m_paddingRight.amount;
  *&v12 = v12;
  [coderCopy encodeFloat:@"paddingRight-amount" forKey:v12];
  [coderCopy encodeInt:self->m_paddingRight.unit forKey:@"paddingRight-unit"];
  [coderCopy encodeBool:self->m_explicitlySpecified forKey:@"explicit"];
  [coderCopy encodeBool:self->m_isTemplate forKey:@"isTemplate"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UIKBGeometry);
  name = [(UIKBGeometry *)self name];
  [(UIKBGeometry *)v4 setName:name];

  v6 = [(UIKBGeometry *)self x];
  [(UIKBGeometry *)v4 setX:v6, v7];
  v8 = [(UIKBGeometry *)self y];
  [(UIKBGeometry *)v4 setY:v8, v9];
  v10 = [(UIKBGeometry *)self w];
  [(UIKBGeometry *)v4 setW:v10, v11];
  v12 = [(UIKBGeometry *)self h];
  [(UIKBGeometry *)v4 setH:v12, v13];
  paddingTop = [(UIKBGeometry *)self paddingTop];
  [(UIKBGeometry *)v4 setPaddingTop:paddingTop, v15];
  paddingLeft = [(UIKBGeometry *)self paddingLeft];
  [(UIKBGeometry *)v4 setPaddingLeft:paddingLeft, v17];
  paddingBottom = [(UIKBGeometry *)self paddingBottom];
  [(UIKBGeometry *)v4 setPaddingBottom:paddingBottom, v19];
  paddingRight = [(UIKBGeometry *)self paddingRight];
  [(UIKBGeometry *)v4 setPaddingRight:paddingRight, v21];
  [(UIKBGeometry *)v4 setExplicitlySpecified:[(UIKBGeometry *)self explicitlySpecified]];
  [(UIKBGeometry *)v4 setIsTemplate:[(UIKBGeometry *)self isTemplate]];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v57 = equalCopy;
    v5 = equalCopy;
    *&v6 = COERCE_DOUBLE([(UIKBGeometry *)self x]);
    v56 = v7;
    *&v8 = COERCE_DOUBLE([v5 x]);
    v55 = v9;
    v10 = *&v6;
    v11 = *&v8;
    v12 = COERCE_DOUBLE([(UIKBGeometry *)self y]);
    v54 = v13;
    v14 = COERCE_DOUBLE([v5 y]);
    v16 = v15;
    v17 = COERCE_DOUBLE([(UIKBGeometry *)self w]);
    v53 = v18;
    v19 = COERCE_DOUBLE([v5 w]);
    v21 = v20;
    v22 = COERCE_DOUBLE([(UIKBGeometry *)self h]);
    v52 = v23;
    v24 = COERCE_DOUBLE([v5 h]);
    LOBYTE(v26) = 0;
    if (v10 == v11 && v56 == v55 && v12 == v14 && v54 == v16 && v17 == v19 && v53 == v21 && (v27 = v22, v22 == v24))
    {
      equalCopy = v57;
      if (v52 == v25)
      {
        v28 = COERCE_DOUBLE([(UIKBGeometry *)self paddingTop]);
        v30 = v29;
        v33 = v28 == COERCE_DOUBLE([v5 paddingTop]) && v30 == v31;
        v34 = COERCE_DOUBLE([(UIKBGeometry *)self paddingLeft]);
        v36 = v35;
        if (v34 != COERCE_DOUBLE([v5 paddingLeft]) || v36 != v37)
        {
          v33 = 0;
        }

        v39 = COERCE_DOUBLE([(UIKBGeometry *)self paddingBottom]);
        v41 = v40;
        if (v39 != COERCE_DOUBLE([v5 paddingBottom]) || v41 != v42)
        {
          v33 = 0;
        }

        v44 = COERCE_DOUBLE([(UIKBGeometry *)self paddingRight]);
        v46 = v45;
        v49 = v44 == COERCE_DOUBLE([v5 paddingRight]) && v46 == v47 && v33;
        isTemplate = [(UIKBGeometry *)self isTemplate];
        v26 = v49 & (isTemplate ^ [v5 isTemplate] ^ 1);
      }
    }

    else
    {
      equalCopy = v57;
    }
  }

  else
  {
    LOBYTE(v26) = 0;
  }

  return v26;
}

- (void)setName:(id)name
{
  v4 = [name copy];
  m_name = self->m_name;
  self->m_name = v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(UIKBGeometry *)self name];
  if (name)
  {
    name2 = [(UIKBGeometry *)self name];
  }

  else
  {
    name2 = @"no name";
  }

  unit = self->m_x.unit;
  switch(unit)
  {
    case 2:
      v8 = @"%";
      break;
    case 100:
      v8 = @"*";
      break;
    case 3:
      v8 = @"pt";
      break;
    default:
      v8 = &stru_1EFB14550;
      break;
  }

  v9 = self->m_y.unit;
  switch(v9)
  {
    case 2:
      v10 = @"%";
      break;
    case 100:
      v10 = @"*";
      break;
    case 3:
      v10 = @"pt";
      break;
    default:
      v10 = &stru_1EFB14550;
      break;
  }

  v11 = self->m_w.unit;
  switch(v11)
  {
    case 2:
      v12 = @"%";
      break;
    case 100:
      v12 = @"*";
      break;
    case 3:
      v12 = @"pt";
      break;
    default:
      v12 = &stru_1EFB14550;
      break;
  }

  v13 = self->m_h.unit;
  switch(v13)
  {
    case 2:
      v14 = @"%";
      break;
    case 100:
      v14 = @"*";
      break;
    case 3:
      v14 = @"pt";
      break;
    default:
      v14 = &stru_1EFB14550;
      break;
  }

  v15 = self->m_paddingTop.unit;
  switch(v15)
  {
    case 2:
      v16 = @"%";
      break;
    case 100:
      v16 = @"*";
      break;
    case 3:
      v16 = @"pt";
      break;
    default:
      v16 = &stru_1EFB14550;
      break;
  }

  v17 = self->m_paddingLeft.unit;
  switch(v17)
  {
    case 2:
      v18 = @"%";
      break;
    case 100:
      v18 = @"*";
      break;
    case 3:
      v18 = @"pt";
      break;
    default:
      v18 = &stru_1EFB14550;
      break;
  }

  v19 = self->m_paddingBottom.unit;
  switch(v19)
  {
    case 2:
      v20 = @"%";
      break;
    case 100:
      v20 = @"*";
      break;
    case 3:
      v20 = @"pt";
      break;
    default:
      v20 = &stru_1EFB14550;
      break;
  }

  v21 = self->m_paddingRight.unit;
  switch(v21)
  {
    case 2:
      v22 = @"%";
      break;
    case 100:
      v22 = @"*";
      break;
    case 3:
      v22 = @"pt";
      break;
    default:
      v22 = &stru_1EFB14550;
      break;
  }

  v23 = [v3 stringWithFormat:@"<%@ : %@> dims(%.2f%@, %.2f%@, %.2f%@, %.2f%@) padding(%.2f%@, %.2f%@, %.2f%@, %.2f%@)", v4, name2, *&self->m_x.amount, v8, *&self->m_y.amount, v10, *&self->m_w.amount, v12, *&self->m_h.amount, v14, *&self->m_paddingTop.amount, v16, *&self->m_paddingLeft.amount, v18, *&self->m_paddingBottom.amount, v20, *&self->m_paddingRight.amount, v22];
  if (name)
  {
  }

  return v23;
}

- (id)shortDescription
{
  v2 = MEMORY[0x1E696AEC0];
  amount = self->m_x.amount;
  unit = self->m_x.unit;
  v5 = &stru_1EFB14550;
  if (unit == 2)
  {
    v6 = @"%";
  }

  else
  {
    v6 = &stru_1EFB14550;
  }

  if (unit == 100)
  {
    v7 = @"*";
  }

  else
  {
    v7 = v6;
  }

  v8 = self->m_y.amount;
  v9 = self->m_y.unit;
  if (v9 == 2)
  {
    v10 = @"%";
  }

  else
  {
    v10 = &stru_1EFB14550;
  }

  if (v9 == 100)
  {
    v11 = @"*";
  }

  else
  {
    v11 = v10;
  }

  v12 = self->m_w.amount;
  v13 = self->m_w.unit;
  if (v13 == 2)
  {
    v14 = @"%";
  }

  else
  {
    v14 = &stru_1EFB14550;
  }

  if (v13 == 100)
  {
    v15 = @"*";
  }

  else
  {
    v15 = v14;
  }

  v16 = self->m_h.amount;
  v17 = self->m_h.unit;
  if (v17 == 2)
  {
    v18 = @"%";
  }

  else
  {
    v18 = &stru_1EFB14550;
  }

  if (v17 == 100)
  {
    v19 = @"*";
  }

  else
  {
    v19 = v18;
  }

  v20 = self->m_paddingTop.amount;
  v21 = self->m_paddingTop.unit;
  if (v21 == 2)
  {
    v22 = @"%";
  }

  else
  {
    v22 = &stru_1EFB14550;
  }

  if (v21 == 100)
  {
    v23 = @"*";
  }

  else
  {
    v23 = v22;
  }

  v24 = self->m_paddingLeft.amount;
  v25 = self->m_paddingLeft.unit;
  if (v25 == 2)
  {
    v26 = @"%";
  }

  else
  {
    v26 = &stru_1EFB14550;
  }

  if (v25 == 100)
  {
    v27 = @"*";
  }

  else
  {
    v27 = v26;
  }

  v28 = self->m_paddingBottom.amount;
  v29 = self->m_paddingBottom.unit;
  if (v29 == 2)
  {
    v30 = @"%";
  }

  else
  {
    v30 = &stru_1EFB14550;
  }

  if (v29 == 100)
  {
    v31 = @"*";
  }

  else
  {
    v31 = v30;
  }

  v32 = self->m_paddingRight.amount;
  v33 = self->m_paddingRight.unit;
  if (v33 == 2)
  {
    v5 = @"%";
  }

  if (v33 == 100)
  {
    v34 = @"*";
  }

  else
  {
    v34 = v5;
  }

  v35 = v31;
  v36 = v27;
  v37 = v23;
  v38 = v19;
  v39 = v15;
  v40 = v11;
  v41 = v7;
  v42 = [v2 stringWithFormat:@"d(%g%@, %g%@, %g%@, %g%@) p(%g%@, %g%@, %g%@, %g%@)", *&amount, v41, *&v8, v40, *&v12, v39, *&v16, v38, *&v20, v37, *&v24, v36, *&v28, v35, *&v32, v34];

  return v42;
}

- (unint64_t)hash
{
  name = [(UIKBGeometry *)self name];

  if (name)
  {
    name2 = [(UIKBGeometry *)self name];
    v5 = [name2 hash];

    name = 257 * v5;
  }

  v6 = 257 * (name + (COERCE_DOUBLE([(UIKBGeometry *)self x]) * 100.0));
  [(UIKBGeometry *)self x];
  v8 = 257 * (257 * (v6 + v7) + (COERCE_DOUBLE([(UIKBGeometry *)self y]) * 100.0));
  [(UIKBGeometry *)self y];
  v10 = 257 * (257 * (v8 + v9) + (COERCE_DOUBLE([(UIKBGeometry *)self w]) * 100.0));
  [(UIKBGeometry *)self w];
  v12 = 257 * (257 * (v10 + v11) + (COERCE_DOUBLE([(UIKBGeometry *)self h]) * 100.0));
  [(UIKBGeometry *)self h];
  v14 = 257 * (257 * (v12 + v13) + (COERCE_DOUBLE([(UIKBGeometry *)self paddingTop]) * 100.0));
  [(UIKBGeometry *)self paddingTop];
  v16 = 257 * (257 * (v14 + v15) + (COERCE_DOUBLE([(UIKBGeometry *)self paddingLeft]) * 100.0));
  [(UIKBGeometry *)self paddingLeft];
  v18 = 257 * (257 * (v16 + v17) + (COERCE_DOUBLE([(UIKBGeometry *)self paddingBottom]) * 100.0));
  [(UIKBGeometry *)self paddingBottom];
  v20 = 257 * (257 * (v18 + v19) + (COERCE_DOUBLE([(UIKBGeometry *)self paddingRight]) * 100.0));
  [(UIKBGeometry *)self paddingRight];
  v22 = 257 * (257 * (v20 + v21) + [(UIKBGeometry *)self explicitlySpecified]);
  return v22 + [(UIKBGeometry *)self isTemplate];
}

+ (id)codeStringForValue:(id)value
{
  v3 = @"UIKBUnitAutomatic";
  v4 = @"UIKBUnitPoints";
  v5 = @"UIKBUnitNone";
  if (value.var1 == 2)
  {
    v5 = @"UIKBUnitPercent";
  }

  if (value.var1 != 3)
  {
    v4 = v5;
  }

  if (value.var1 != 100)
  {
    v3 = v4;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"UIKBValueMake(%g, %@)", *&value.var0, v3];
}

+ (void)performOperations:(id)operations withScale:(double)scale
{
  __UIKBGeometryScale = *&scale;
  (*(operations + 2))(operations, a2);
  __UIKBGeometryScale = 0x3FF0000000000000;
}

- (CGRect)frame
{
  [(UIKBGeometry *)self frameWithContainingFrame:0.0, 0.0, 0.0, 0.0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)frameWithContainingFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(UIKBGeometry *)self explicitlySpecified])
  {
    amount = self->m_x.amount;
    if (self->m_x.unit == 2)
    {
      amount = x + width * (amount / 100.0);
      if (*&__UIKBGeometryScale == 1.0)
      {
        v9 = floor(amount);
      }

      else
      {
        v9 = floor(amount * *&__UIKBGeometryScale) / *&__UIKBGeometryScale;
      }
    }

    else
    {
      v9 = self->m_x.amount;
    }

    v10 = self->m_y.amount;
    if (self->m_y.unit == 2)
    {
      v13 = y + height * (v10 / 100.0);
      if (*&__UIKBGeometryScale == 1.0)
      {
        v10 = round(v13);
      }

      else
      {
        v10 = round(v13 * *&__UIKBGeometryScale) / *&__UIKBGeometryScale;
      }
    }

    v11 = self->m_w.amount;
    if (self->m_w.unit == 2)
    {
      v14 = amount - v9 + width * (v11 / 100.0);
      if (*&__UIKBGeometryScale == 1.0)
      {
        v11 = ceil(v14);
      }

      else
      {
        v11 = ceil(v14 * *&__UIKBGeometryScale) / *&__UIKBGeometryScale;
      }
    }

    v12 = self->m_h.amount;
    if (self->m_h.unit == 2)
    {
      v15 = height * (v12 / 100.0);
      if (*&__UIKBGeometryScale == 1.0)
      {
        v12 = round(v15);
      }

      else
      {
        v12 = round(v15 * *&__UIKBGeometryScale) / *&__UIKBGeometryScale;
      }
    }

    if (width > 0.0)
    {
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      if (v9 + v11 > CGRectGetMaxX(v20))
      {
        v21.origin.x = x;
        v21.origin.y = y;
        v21.size.width = width;
        v21.size.height = height;
        v11 = CGRectGetMaxX(v21) - v9;
      }
    }
  }

  else
  {
    v9 = x;
    v10 = y;
    v11 = width;
    v12 = height;
  }

  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)paddedFrameWithContainingFrame:(CGRect)frame
{
  [(UIKBGeometry *)self frameWithContainingFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  [(UIKBGeometry *)self paddedFrameWithResolvedFrame:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)paddedFrameWithResolvedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(UIKBGeometry *)self explicitlySpecified])
  {
    amount = self->m_paddingLeft.amount;
    if (self->m_paddingLeft.unit == 2)
    {
      amount = width * (amount / 100.0);
    }

    if (amount <= width)
    {
      v9 = amount;
    }

    else
    {
      v9 = width;
    }

    v10 = self->m_paddingTop.amount;
    if (self->m_paddingTop.unit == 2)
    {
      v10 = height * (v10 / 100.0);
    }

    if (v10 > height)
    {
      v10 = height;
    }

    if (self->m_paddingRight.unit == 2)
    {
      v11 = width - v9 + width * (self->m_paddingRight.amount / -100.0);
    }

    else
    {
      v11 = width - v9 - self->m_paddingRight.amount;
    }

    if (v11 >= 0.0)
    {
      width = v11;
    }

    else
    {
      width = 0.0;
    }

    if (self->m_paddingBottom.unit == 2)
    {
      v12 = height - v10 + height * (self->m_paddingBottom.amount / -100.0);
    }

    else
    {
      v12 = height - v10 - self->m_paddingBottom.amount;
    }

    y = y + v10;
    if (v12 >= 0.0)
    {
      height = v12;
    }

    else
    {
      height = 0.0;
    }

    if (self->m_y.unit == 2 || self->m_h.unit == 2)
    {
      if (*&__UIKBGeometryScale == 1.0)
      {
        v21.origin.x = 0.0;
        v21.size.width = 0.0;
        v21.origin.y = y;
        v21.size.height = height;
        v22 = CGRectIntegral(v21);
      }

      else
      {
        UIRectIntegralWithScale(0.0, y, 0.0, height, *&__UIKBGeometryScale);
      }

      y = v22.origin.y;
      height = v22.size.height;
    }

    x = x + v9;
    if (self->m_x.unit == 2 || self->m_w.unit == 2)
    {
      v13 = 0;
      v14 = 0;
      if (*&__UIKBGeometryScale == 1.0)
      {
        v15 = x;
        v16 = width;
        v23 = CGRectIntegral(*(&v13 - 1));
      }

      else
      {
        v23.origin.x = UIRectIntegralWithScale(x, 0.0, width, 0.0, *&__UIKBGeometryScale);
      }

      x = v23.origin.x;
      width = v23.size.width;
    }
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)overrideGeometry:(id)geometry
{
  geometryCopy = geometry;
  if (geometryCopy)
  {
    selfCopy = [(UIKBGeometry *)self copy];
    [geometryCopy x];
    if (v6)
    {
      v7 = [geometryCopy x];
      [(UIKBGeometry *)selfCopy setX:v7, v8];
    }

    [geometryCopy y];
    if (v9)
    {
      v10 = [geometryCopy y];
      [(UIKBGeometry *)selfCopy setY:v10, v11];
    }

    [geometryCopy w];
    if (v12)
    {
      v13 = [geometryCopy w];
      [(UIKBGeometry *)selfCopy setW:v13, v14];
    }

    [geometryCopy h];
    if (v15)
    {
      v16 = [geometryCopy h];
      [(UIKBGeometry *)selfCopy setH:v16, v17];
    }

    [geometryCopy paddingTop];
    if (v18)
    {
      paddingTop = [geometryCopy paddingTop];
      [(UIKBGeometry *)selfCopy setPaddingTop:paddingTop, v20];
    }

    [geometryCopy paddingLeft];
    if (v21)
    {
      paddingLeft = [geometryCopy paddingLeft];
      [(UIKBGeometry *)selfCopy setPaddingLeft:paddingLeft, v23];
    }

    [geometryCopy paddingBottom];
    if (v24)
    {
      paddingBottom = [geometryCopy paddingBottom];
      [(UIKBGeometry *)selfCopy setPaddingBottom:paddingBottom, v26];
    }

    [geometryCopy paddingRight];
    if (v27)
    {
      paddingRight = [geometryCopy paddingRight];
      [(UIKBGeometry *)selfCopy setPaddingRight:paddingRight, v29];
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)usesPercentages
{
  [(UIKBGeometry *)self x];
  if (v3 == 2)
  {
    return 1;
  }

  [(UIKBGeometry *)self y];
  if (v4 == 2)
  {
    return 1;
  }

  [(UIKBGeometry *)self w];
  if (v5 == 2)
  {
    return 1;
  }

  [(UIKBGeometry *)self h];
  if (v6 == 2)
  {
    return 1;
  }

  [(UIKBGeometry *)self paddingTop];
  if (v7 == 2)
  {
    return 1;
  }

  [(UIKBGeometry *)self paddingLeft];
  if (v8 == 2)
  {
    return 1;
  }

  [(UIKBGeometry *)self paddingBottom];
  if (v9 == 2)
  {
    return 1;
  }

  [(UIKBGeometry *)self paddingRight];
  return v11 == 2;
}

- (BOOL)usesAutomaticMetrics
{
  [(UIKBGeometry *)self x];
  if (v3 == 100)
  {
    return 1;
  }

  [(UIKBGeometry *)self y];
  if (v4 == 100)
  {
    return 1;
  }

  [(UIKBGeometry *)self w];
  if (v5 == 100)
  {
    return 1;
  }

  [(UIKBGeometry *)self h];
  if (v6 == 100)
  {
    return 1;
  }

  [(UIKBGeometry *)self paddingTop];
  if (v7 == 100)
  {
    return 1;
  }

  [(UIKBGeometry *)self paddingLeft];
  if (v8 == 100)
  {
    return 1;
  }

  [(UIKBGeometry *)self paddingBottom];
  if (v9 == 100)
  {
    return 1;
  }

  [(UIKBGeometry *)self paddingRight];
  return v11 == 100;
}

- ($000CCD7ED2ADA2E18343834BA3C2DAF0)x
{
  v2 = *&self->m_x.unit;
  amount = self->m_x.amount;
  result.var1 = v2;
  result.var0 = amount;
  return result;
}

- ($000CCD7ED2ADA2E18343834BA3C2DAF0)y
{
  v2 = *&self->m_y.unit;
  amount = self->m_y.amount;
  result.var1 = v2;
  result.var0 = amount;
  return result;
}

- ($000CCD7ED2ADA2E18343834BA3C2DAF0)w
{
  v2 = *&self->m_w.unit;
  amount = self->m_w.amount;
  result.var1 = v2;
  result.var0 = amount;
  return result;
}

- ($000CCD7ED2ADA2E18343834BA3C2DAF0)h
{
  v2 = *&self->m_h.unit;
  amount = self->m_h.amount;
  result.var1 = v2;
  result.var0 = amount;
  return result;
}

- ($000CCD7ED2ADA2E18343834BA3C2DAF0)paddingTop
{
  v2 = *&self->m_paddingTop.unit;
  amount = self->m_paddingTop.amount;
  result.var1 = v2;
  result.var0 = amount;
  return result;
}

- ($000CCD7ED2ADA2E18343834BA3C2DAF0)paddingLeft
{
  v2 = *&self->m_paddingLeft.unit;
  amount = self->m_paddingLeft.amount;
  result.var1 = v2;
  result.var0 = amount;
  return result;
}

- ($000CCD7ED2ADA2E18343834BA3C2DAF0)paddingBottom
{
  v2 = *&self->m_paddingBottom.unit;
  amount = self->m_paddingBottom.amount;
  result.var1 = v2;
  result.var0 = amount;
  return result;
}

- ($000CCD7ED2ADA2E18343834BA3C2DAF0)paddingRight
{
  v2 = *&self->m_paddingRight.unit;
  amount = self->m_paddingRight.amount;
  result.var1 = v2;
  result.var0 = amount;
  return result;
}

@end