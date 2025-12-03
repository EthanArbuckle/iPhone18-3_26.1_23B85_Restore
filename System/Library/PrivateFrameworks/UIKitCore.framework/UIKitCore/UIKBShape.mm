@interface UIKBShape
+ (id)shape;
+ (id)shapeByCombining:(id)combining withShape:(id)shape;
+ (id)shapeByResizingShape:(id)shape byAmount:(CGSize)amount;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldUseGeometry;
- (CGRect)_scaleRect:(CGRect)rect inYAxis:(BOOL)axis;
- (CGRect)frame;
- (CGRect)paddedFrame;
- (CGSize)concaveCornerOffset;
- (UIKBShape)init;
- (UIKBShape)initWithCoder:(id)coder;
- (UIKBShape)initWithGeometry:(id)geometry frame:(CGRect)frame paddedFrame:(CGRect)paddedFrame;
- (UIKBShape)initWithGeometry:(id)geometry frame:(CGRect)frame paddedFrame:(CGRect)paddedFrame concaveCorner:(unint64_t)corner concaveCornerOffset:(CGSize)offset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)addRectFrom:(id)from;
- (void)addRectFrom:(id)from mergeActionFactors:(id)factors inRightToLeft:(BOOL)left;
- (void)addRectFrom:(id)from widthFraction:(double)fraction heightFraction:(double)heightFraction adjustOriginXFactor:(double)factor adjustOriginYFactor:(double)yFactor absoluteOriginFactors:(BOOL)factors;
- (void)encodeWithCoder:(id)coder;
- (void)makeLikeOther:(id)other;
- (void)scaleIfNeeded:(double)needed onlyYAxis:(BOOL)axis;
- (void)scaleWidth:(double)width;
@end

@implementation UIKBShape

- (CGRect)paddedFrame
{
  x = self->m_paddedFrame.origin.x;
  y = self->m_paddedFrame.origin.y;
  width = self->m_paddedFrame.size.width;
  height = self->m_paddedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)frame
{
  x = self->m_frame.origin.x;
  y = self->m_frame.origin.y;
  width = self->m_frame.size.width;
  height = self->m_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)concaveCornerOffset
{
  width = self->m_concaveCornerOffset.width;
  height = self->m_concaveCornerOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (id)shape
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (UIKBShape)init
{
  v10.receiver = self;
  v10.super_class = UIKBShape;
  v2 = [(UIKBShape *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 16);
    v2->m_frame.origin = *MEMORY[0x1E695F058];
    v2->m_frame.size = v5;
    v2->m_paddedFrame.origin = v4;
    v2->m_paddedFrame.size = v5;
    v6 = UIKBNextUID_counter++;
    v2->m_uid = v6;
    m_geometry = v2->m_geometry;
    v2->m_geometry = 0;

    v3->m_concaveCorner = 0;
    v3->m_concaveCornerOffset = *MEMORY[0x1E695F060];
    v8 = v3;
  }

  return v3;
}

- (UIKBShape)initWithGeometry:(id)geometry frame:(CGRect)frame paddedFrame:(CGRect)paddedFrame
{
  height = paddedFrame.size.height;
  width = paddedFrame.size.width;
  y = paddedFrame.origin.y;
  x = paddedFrame.origin.x;
  v9 = frame.size.height;
  v10 = frame.size.width;
  v11 = frame.origin.y;
  v12 = frame.origin.x;
  geometryCopy = geometry;
  v21.receiver = self;
  v21.super_class = UIKBShape;
  v16 = [(UIKBShape *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->m_geometry, geometry);
    v17->m_frame.origin.x = v12;
    v17->m_frame.origin.y = v11;
    v17->m_frame.size.width = v10;
    v17->m_frame.size.height = v9;
    v17->m_paddedFrame.origin.x = x;
    v17->m_paddedFrame.origin.y = y;
    v17->m_paddedFrame.size.width = width;
    v17->m_paddedFrame.size.height = height;
    v18 = UIKBNextUID_counter++;
    v17->m_uid = v18;
    v17->m_concaveCorner = 0;
    v17->m_concaveCornerOffset = *MEMORY[0x1E695F060];
    v19 = v17;
  }

  return v17;
}

- (UIKBShape)initWithGeometry:(id)geometry frame:(CGRect)frame paddedFrame:(CGRect)paddedFrame concaveCorner:(unint64_t)corner concaveCornerOffset:(CGSize)offset
{
  height = paddedFrame.size.height;
  width = paddedFrame.size.width;
  y = paddedFrame.origin.y;
  x = paddedFrame.origin.x;
  v12 = frame.size.height;
  v13 = frame.size.width;
  v14 = frame.origin.y;
  v15 = frame.origin.x;
  geometryCopy = geometry;
  v24.receiver = self;
  v24.super_class = UIKBShape;
  v19 = [(UIKBShape *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->m_geometry, geometry);
    v20->m_frame.origin.x = v15;
    v20->m_frame.origin.y = v14;
    v20->m_frame.size.width = v13;
    v20->m_frame.size.height = v12;
    v20->m_paddedFrame.origin.x = x;
    v20->m_paddedFrame.origin.y = y;
    v20->m_paddedFrame.size.width = width;
    v20->m_paddedFrame.size.height = height;
    v21 = UIKBNextUID_counter++;
    v20->m_uid = v21;
    v20->m_concaveCorner = corner;
    v20->m_concaveCornerOffset.width = v25;
    v20->m_concaveCornerOffset.height = v26;
    v22 = v20;
  }

  return v20;
}

- (UIKBShape)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"geometry"];
  m_geometry = self->m_geometry;
  self->m_geometry = v5;

  [coderCopy decodeFloatForKey:@"frame.x"];
  v8 = v7;
  [coderCopy decodeFloatForKey:@"frame.y"];
  v10 = v9;
  [coderCopy decodeFloatForKey:@"frame.w"];
  v12 = v11;
  [coderCopy decodeFloatForKey:@"frame.h"];
  self->m_frame.origin.x = v8;
  self->m_frame.origin.y = v10;
  self->m_frame.size.width = v12;
  self->m_frame.size.height = v13;
  [coderCopy decodeFloatForKey:@"paddedFrame.x"];
  v15 = v14;
  [coderCopy decodeFloatForKey:@"paddedFrame.y"];
  v17 = v16;
  [coderCopy decodeFloatForKey:@"paddedFrame.w"];
  v19 = v18;
  [coderCopy decodeFloatForKey:@"paddedFrame.h"];
  v21 = v20;

  self->m_paddedFrame.origin.x = v15;
  self->m_paddedFrame.origin.y = v17;
  self->m_paddedFrame.size.width = v19;
  self->m_paddedFrame.size.height = v21;
  v22 = UIKBNextUID_counter++;
  self->m_uid = v22;
  self->m_concaveCorner = 0;
  self->m_concaveCornerOffset = *MEMORY[0x1E695F060];
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  m_geometry = self->m_geometry;
  coderCopy = coder;
  [coderCopy encodeObject:m_geometry forKey:@"geometry"];
  x = self->m_frame.origin.x;
  *&x = x;
  [coderCopy encodeFloat:@"frame.x" forKey:x];
  y = self->m_frame.origin.y;
  *&y = y;
  [coderCopy encodeFloat:@"frame.y" forKey:y];
  width = self->m_frame.size.width;
  *&width = width;
  [coderCopy encodeFloat:@"frame.w" forKey:width];
  height = self->m_frame.size.height;
  *&height = height;
  [coderCopy encodeFloat:@"frame.h" forKey:height];
  v9 = self->m_paddedFrame.origin.x;
  *&v9 = v9;
  [coderCopy encodeFloat:@"paddedFrame.x" forKey:v9];
  v10 = self->m_paddedFrame.origin.y;
  *&v10 = v10;
  [coderCopy encodeFloat:@"paddedFrame.y" forKey:v10];
  v11 = self->m_paddedFrame.size.width;
  *&v11 = v11;
  [coderCopy encodeFloat:@"paddedFrame.w" forKey:v11];
  v12 = self->m_paddedFrame.size.height;
  *&v12 = v12;
  [coderCopy encodeFloat:@"paddedFrame.h" forKey:v12];
}

- (void)makeLikeOther:(id)other
{
  otherCopy = other;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = otherCopy;
  if (isKindOfClass)
  {
    v6 = otherCopy;
    geometry = [(UIKBShape *)self geometry];

    if (!geometry)
    {
      geometry2 = [v6 geometry];
      v9 = [geometry2 copy];
      [(UIKBShape *)self setGeometry:v9];

      geometry3 = [v6 geometry];
      name = [geometry3 name];
      v12 = [name copy];
      geometry4 = [(UIKBShape *)self geometry];
      [geometry4 setName:v12];
    }

    v14 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v16 = *(MEMORY[0x1E695F058] + 16);
    v17 = *(MEMORY[0x1E695F058] + 24);
    v29.origin.x = *MEMORY[0x1E695F058];
    v29.origin.y = v15;
    v29.size.width = v16;
    v29.size.height = v17;
    if (!CGRectEqualToRect(self->m_frame, v29))
    {
      [v6 frame];
      self->m_frame.origin.x = v18;
      self->m_frame.origin.y = v19;
      self->m_frame.size.width = v20;
      self->m_frame.size.height = v21;
    }

    v30.origin.x = v14;
    v30.origin.y = v15;
    v30.size.width = v16;
    v30.size.height = v17;
    if (!CGRectEqualToRect(self->m_paddedFrame, v30))
    {
      [v6 paddedFrame];
      self->m_paddedFrame.origin.x = v22;
      self->m_paddedFrame.origin.y = v23;
      self->m_paddedFrame.size.width = v24;
      self->m_paddedFrame.size.height = v25;
    }

    originalShape = [v6 originalShape];
    [(UIKBShape *)self setOriginalShape:originalShape];

    v5 = otherCopy;
  }
}

- (unint64_t)hash
{
  v2 = [(UIKBShape *)self uid];
  v3 = 9 * ((v2 + ~(v2 << 15)) ^ ((v2 + ~(v2 << 15)) >> 10));
  v4 = (v3 ^ (v3 >> 6)) + ~((v3 ^ (v3 >> 6)) << 11);
  return v4 ^ (v4 >> 16);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(UIKBShape *)self frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v5 frame];
    v46.origin.x = v14;
    v46.origin.y = v15;
    v46.size.width = v16;
    v46.size.height = v17;
    v44.origin.x = v7;
    v44.origin.y = v9;
    v44.size.width = v11;
    v44.size.height = v13;
    v18 = CGRectEqualToRect(v44, v46);
    [(UIKBShape *)self paddedFrame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [v5 paddedFrame];
    v47.origin.x = v27;
    v47.origin.y = v28;
    v47.size.width = v29;
    v47.size.height = v30;
    v45.origin.x = v20;
    v45.origin.y = v22;
    v45.size.width = v24;
    v45.size.height = v26;
    v31 = CGRectEqualToRect(v45, v47);
    concaveCorner = [(UIKBShape *)self concaveCorner];
    concaveCorner2 = [v5 concaveCorner];
    [(UIKBShape *)self concaveCornerOffset];
    v35 = v34;
    v37 = v36;
    [v5 concaveCornerOffset];
    v40 = 0;
    if (v18 && v31 && concaveCorner == concaveCorner2 && v35 == v38 && v37 == v39)
    {
      geometry = [(UIKBShape *)self geometry];
      geometry2 = [v5 geometry];
      v40 = [geometry isEqual:geometry2];
    }
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UIKBShape);
  geometry = [(UIKBShape *)self geometry];
  v6 = [geometry copy];
  [(UIKBShape *)v4 setGeometry:v6];

  [(UIKBShape *)self frame];
  [(UIKBShape *)v4 setFrame:?];
  [(UIKBShape *)self paddedFrame];
  [(UIKBShape *)v4 setPaddedFrame:?];
  originalShape = [(UIKBShape *)self originalShape];
  [(UIKBShape *)v4 setOriginalShape:originalShape];

  [(UIKBShape *)v4 setConcaveCorner:[(UIKBShape *)self concaveCorner]];
  [(UIKBShape *)self concaveCornerOffset];
  [(UIKBShape *)v4 setConcaveCornerOffset:?];
  return v4;
}

- (BOOL)isEmpty
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v13.origin.x = *MEMORY[0x1E695F058];
  v13.origin.y = v4;
  v13.size.width = v5;
  v13.size.height = v6;
  v7 = CGRectEqualToRect(self->m_frame, v13);
  v14.origin.x = v3;
  v14.origin.y = v4;
  v14.size.width = v5;
  v14.size.height = v6;
  v8 = CGRectEqualToRect(self->m_paddedFrame, v14);
  m_geometry = self->m_geometry;
  if (m_geometry)
  {
    v10 = +[UIKBGeometry geometry];
    v11 = [(UIKBGeometry *)m_geometry isEqual:v10];
  }

  else
  {
    v11 = 1;
  }

  return (v7 && v8) & v11;
}

- (BOOL)shouldUseGeometry
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v10.origin.x = *MEMORY[0x1E695F058];
  v10.origin.y = v4;
  v10.size.width = v5;
  v10.size.height = v6;
  v7 = CGRectEqualToRect(self->m_frame, v10);
  v11.origin.x = v3;
  v11.origin.y = v4;
  v11.size.width = v5;
  v11.size.height = v6;
  v8 = v7 & CGRectEqualToRect(self->m_paddedFrame, v11);
  return self->m_geometry && v8;
}

- (id)description
{
  geometry = [(UIKBShape *)self geometry];

  if (geometry)
  {
    geometry2 = [(UIKBShape *)self geometry];
    shortDescription = [geometry2 shortDescription];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = UIKBShape;
    v6 = [(UIKBShape *)&v13 description];
    [(UIKBShape *)self frame];
    v7 = NSStringFromCGRect(v16);
    [(UIKBShape *)self paddedFrame];
    v8 = NSStringFromCGRect(v17);
    shortDescription = [v6 stringByAppendingFormat:@" - %@_%@", v7, v8];

    if ([(UIKBShape *)self concaveCorner])
    {
      concaveCorner = [(UIKBShape *)self concaveCorner];
      [(UIKBShape *)self concaveCornerOffset];
      v10 = NSStringFromCGSize(v15);
      v11 = [shortDescription stringByAppendingFormat:@"_concaveCorner=%lux_concaveCornerOffset=%@", concaveCorner, v10];

      shortDescription = v11;
    }
  }

  return shortDescription;
}

- (void)addRectFrom:(id)from
{
  if (from)
  {
    fromCopy = from;
    [fromCopy frame];
    v17.origin.x = v5;
    v17.origin.y = v6;
    v17.size.width = v7;
    v17.size.height = v8;
    self->m_frame = CGRectUnion(self->m_frame, v17);
    [fromCopy paddedFrame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v18.origin.x = v10;
    v18.origin.y = v12;
    v18.size.width = v14;
    v18.size.height = v16;
    self->m_paddedFrame = CGRectUnion(self->m_paddedFrame, v18);
  }
}

- (void)addRectFrom:(id)from widthFraction:(double)fraction heightFraction:(double)heightFraction adjustOriginXFactor:(double)factor adjustOriginYFactor:(double)yFactor absoluteOriginFactors:(BOOL)factors
{
  factorsCopy = factors;
  fromCopy = from;
  if (fromCopy)
  {
    v25 = fromCopy;
    [fromCopy frame];
    v16 = ceil(v15 * fraction);
    [v25 frame];
    v18 = ceil(v17 * heightFraction);
    v19 = self->m_frame.size.height + v18;
    self->m_frame.size.width = self->m_frame.size.width + v16;
    self->m_frame.size.height = v19;
    v20 = v18 + self->m_paddedFrame.size.height;
    self->m_paddedFrame.size.width = v16 + self->m_paddedFrame.size.width;
    self->m_paddedFrame.size.height = v20;
    if (factor != 0.0)
    {
      if (factorsCopy)
      {
        [v25 frame];
        v16 = v21;
      }

      v22 = floor(v16 * factor);
      self->m_frame.origin.x = self->m_frame.origin.x + v22;
      self->m_paddedFrame.origin.x = v22 + self->m_paddedFrame.origin.x;
    }

    fromCopy = v25;
    if (yFactor != 0.0)
    {
      if (factorsCopy)
      {
        [v25 frame];
        fromCopy = v25;
        v18 = v23;
      }

      v24 = floor(v18 * yFactor);
      self->m_frame.origin.y = self->m_frame.origin.y + v24;
      self->m_paddedFrame.origin.y = v24 + self->m_paddedFrame.origin.y;
    }
  }
}

- (void)addRectFrom:(id)from mergeActionFactors:(id)factors inRightToLeft:(BOOL)left
{
  leftCopy = left;
  fromCopy = from;
  factorsCopy = factors;
  if (self != fromCopy)
  {
    [(UIKBShape *)self frame];
    v11 = v10 + v9 * 0.5;
    [(UIKBShape *)fromCopy frame];
    v14 = vabdd_f64(v11, v13 + v12 * 0.5);
    [(UIKBShape *)self frame];
    v17 = v16 + v15 * 0.5;
    [(UIKBShape *)fromCopy frame];
    v20 = vabdd_f64(v17, v19 + v18 * 0.5);
    v21 = 0.0;
    v22 = v14 < 1.0;
    v23 = 0.0;
    v24 = 0.0;
    if (v22)
    {
      v25 = COERCE_DOUBLE([factorsCopy w]);
      [factorsCopy w];
      if (v26 == 2)
      {
        v24 = v25 * 0.01;
      }

      else
      {
        [(UIKBShape *)fromCopy frame];
        v24 = v25 / v27;
      }

      v28 = COERCE_DOUBLE([factorsCopy x]);
      [factorsCopy x];
      if (v29 == 2)
      {
        v30 = v28 * 0.01;
        v31 = fromCopy;
      }

      else
      {
        [(UIKBShape *)fromCopy frame];
        v31 = fromCopy;
        v30 = v28 / v32;
      }

      [(UIKBShape *)v31 frame];
      if (v33 >= self->m_frame.origin.x)
      {
        v34 = v30;
      }

      else
      {
        v34 = -v30;
      }

      if (leftCopy)
      {
        v23 = v34 - v24;
      }

      else
      {
        v23 = v34;
      }
    }

    v22 = v20 < 1.0;
    v35 = 0.0;
    if (v22)
    {
      v36 = COERCE_DOUBLE([factorsCopy h]);
      [factorsCopy h];
      if (v37 == 2)
      {
        v35 = v36 * 0.01;
      }

      else
      {
        [(UIKBShape *)fromCopy frame];
        v35 = v36 / v38;
      }

      v39 = COERCE_DOUBLE([factorsCopy y]);
      [factorsCopy y];
      if (v40 == 2)
      {
        v21 = v39 * 0.01;
        v41 = fromCopy;
      }

      else
      {
        [(UIKBShape *)fromCopy frame];
        v41 = fromCopy;
        v21 = v39 / v42;
      }

      [(UIKBShape *)v41 frame];
      if (v43 < self->m_frame.origin.y)
      {
        v21 = -v21;
      }
    }

    [(UIKBShape *)self addRectFrom:fromCopy widthFraction:1 heightFraction:v24 adjustOriginXFactor:v35 adjustOriginYFactor:v23 absoluteOriginFactors:v21];
    [factorsCopy w];
    if (v44 == 100 || ([factorsCopy h], v45 == 100))
    {
      [(UIKBShape *)fromCopy frame];
      self->m_frame.size.width = v46;
      self->m_frame.size.height = v47;
      [(UIKBShape *)fromCopy paddedFrame];
      self->m_paddedFrame.size.width = v48;
      self->m_paddedFrame.size.height = v49;
    }
  }
}

- (void)scaleWidth:(double)width
{
  width = self->m_paddedFrame.size.width;
  v4 = width * width;
  self->m_frame.size.width = self->m_frame.size.width - v4;
  self->m_paddedFrame.size.width = width - v4;
}

- (CGRect)_scaleRect:(CGRect)rect inYAxis:(BOOL)axis
{
  axisCopy = axis;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (axis)
  {
    v8 = rect.origin.y;
  }

  else
  {
    v8 = rect.origin.x;
  }

  if (axis)
  {
    v9 = rect.size.height;
  }

  else
  {
    v9 = rect.size.width;
  }

  v10 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v10 preferencesActions];
  [preferencesActions rivenSizeFactor:v8];
  v13 = v12;

  v14 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions2 = [v14 preferencesActions];
  [preferencesActions2 rivenSizeFactor:v9];
  v17 = v16;

  v18 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions3 = [v18 preferencesActions];
  [preferencesActions3 rivenSizeFactor:1.0];
  v21 = v20;

  v22 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions4 = [v22 preferencesActions];
  [preferencesActions4 rivenSizeFactor:1.0];
  v25 = v9 * v24;
  v26 = v25 <= 150.0;
  v27 = v8 * v21 - v13 + v25 - v17;
  if (axisCopy && v26)
  {
    v27 = 0.0;
  }

  v28 = v17 + round(v27);
  if (axisCopy)
  {
    v29 = x;
  }

  else
  {
    v29 = v13;
  }

  if (axisCopy)
  {
    y = v13;
  }

  else
  {
    width = v28;
  }

  if (axisCopy)
  {
    v30 = v28;
  }

  else
  {
    v30 = height;
  }

  v31 = v29;
  v32 = y;
  v33 = width;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)scaleIfNeeded:(double)needed onlyYAxis:(BOOL)axis
{
  if (!self->m_scaled)
  {
    v7 = needed == 0.0 || axis;
    x = self->m_frame.origin.x;
    if (!v7)
    {
      x = x - needed;
      self->m_frame.origin.x = x;
      self->m_paddedFrame.origin.x = self->m_paddedFrame.origin.x - needed;
    }

    [(UIKBShape *)self _scaleRect:1 inYAxis:x, self->m_frame.origin.y, self->m_frame.size.width, self->m_frame.size.height];
    self->m_frame.origin.x = v9;
    self->m_frame.origin.y = v10;
    self->m_frame.size.width = v11;
    self->m_frame.size.height = v12;
    [(UIKBShape *)self _scaleRect:1 inYAxis:self->m_paddedFrame.origin.x, self->m_paddedFrame.origin.y, self->m_paddedFrame.size.width, self->m_paddedFrame.size.height];
    self->m_paddedFrame.origin.x = v13;
    self->m_paddedFrame.origin.y = v14;
    self->m_paddedFrame.size.width = v15;
    self->m_paddedFrame.size.height = v16;
    if (!axis)
    {
      [(UIKBShape *)self _scaleRect:0 inYAxis:self->m_frame.origin.x, self->m_frame.origin.y, self->m_frame.size.width, self->m_frame.size.height];
      self->m_frame.origin.x = v17;
      self->m_frame.origin.y = v18;
      self->m_frame.size.width = v19;
      self->m_frame.size.height = v20;
      [(UIKBShape *)self _scaleRect:0 inYAxis:self->m_paddedFrame.origin.x, self->m_paddedFrame.origin.y, self->m_paddedFrame.size.width, self->m_paddedFrame.size.height];
      self->m_paddedFrame.origin.x = v21;
      self->m_paddedFrame.origin.y = v22;
      self->m_paddedFrame.size.width = v23;
      self->m_paddedFrame.size.height = v24;
      if (!v7)
      {
        self->m_frame.origin.x = self->m_frame.origin.x + needed;
        self->m_paddedFrame.origin.x = v21 + needed;
      }
    }

    self->m_scaled = 1;
  }
}

+ (id)shapeByCombining:(id)combining withShape:(id)shape
{
  shapeCopy = shape;
  combiningCopy = combining;
  [combiningCopy frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [shapeCopy frame];
  v46.origin.x = v15;
  v46.origin.y = v16;
  v46.size.width = v17;
  v46.size.height = v18;
  v42.origin.x = v8;
  v42.origin.y = v10;
  v42.size.width = v12;
  v42.size.height = v14;
  v43 = CGRectUnion(v42, v46);
  y = v43.origin.y;
  x = v43.origin.x;
  height = v43.size.height;
  width = v43.size.width;
  [combiningCopy paddedFrame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [shapeCopy paddedFrame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v44.origin.x = v20;
  v44.origin.y = v22;
  v44.size.width = v24;
  v44.size.height = v26;
  v47.origin.x = v28;
  v47.origin.y = v30;
  v47.size.width = v32;
  v47.size.height = v34;
  v45 = CGRectUnion(v44, v47);
  v35 = [[UIKBShape alloc] initWithGeometry:0 frame:x paddedFrame:y, width, height, v45.origin.x, v45.origin.y, v45.size.width, v45.size.height];

  return v35;
}

+ (id)shapeByResizingShape:(id)shape byAmount:(CGSize)amount
{
  height = amount.height;
  width = amount.width;
  shapeCopy = shape;
  [shapeCopy frame];
  v24 = v7;
  v9 = v8;
  [shapeCopy frame];
  v11 = v10 - width;
  [shapeCopy frame];
  v13 = v12 - height;
  [shapeCopy paddedFrame];
  v15 = v14;
  v17 = v16;
  [shapeCopy paddedFrame];
  v19 = v18 - width;
  [shapeCopy paddedFrame];
  v21 = v20;

  height = [[UIKBShape alloc] initWithGeometry:0 frame:v24 paddedFrame:v9, v11, v13, v15, v17, v19, v21 - height];

  return height;
}

@end