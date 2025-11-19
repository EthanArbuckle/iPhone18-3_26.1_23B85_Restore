@interface UIKBShape
+ (id)shape;
+ (id)shapeByCombining:(id)a3 withShape:(id)a4;
+ (id)shapeByResizingShape:(id)a3 byAmount:(CGSize)a4;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldUseGeometry;
- (CGRect)_scaleRect:(CGRect)a3 inYAxis:(BOOL)a4;
- (CGRect)frame;
- (CGRect)paddedFrame;
- (CGSize)concaveCornerOffset;
- (UIKBShape)init;
- (UIKBShape)initWithCoder:(id)a3;
- (UIKBShape)initWithGeometry:(id)a3 frame:(CGRect)a4 paddedFrame:(CGRect)a5;
- (UIKBShape)initWithGeometry:(id)a3 frame:(CGRect)a4 paddedFrame:(CGRect)a5 concaveCorner:(unint64_t)a6 concaveCornerOffset:(CGSize)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)addRectFrom:(id)a3;
- (void)addRectFrom:(id)a3 mergeActionFactors:(id)a4 inRightToLeft:(BOOL)a5;
- (void)addRectFrom:(id)a3 widthFraction:(double)a4 heightFraction:(double)a5 adjustOriginXFactor:(double)a6 adjustOriginYFactor:(double)a7 absoluteOriginFactors:(BOOL)a8;
- (void)encodeWithCoder:(id)a3;
- (void)makeLikeOther:(id)a3;
- (void)scaleIfNeeded:(double)a3 onlyYAxis:(BOOL)a4;
- (void)scaleWidth:(double)a3;
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

- (UIKBShape)initWithGeometry:(id)a3 frame:(CGRect)a4 paddedFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.size.height;
  v10 = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  v15 = a3;
  v21.receiver = self;
  v21.super_class = UIKBShape;
  v16 = [(UIKBShape *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->m_geometry, a3);
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

- (UIKBShape)initWithGeometry:(id)a3 frame:(CGRect)a4 paddedFrame:(CGRect)a5 concaveCorner:(unint64_t)a6 concaveCornerOffset:(CGSize)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a4.size.height;
  v13 = a4.size.width;
  v14 = a4.origin.y;
  v15 = a4.origin.x;
  v18 = a3;
  v24.receiver = self;
  v24.super_class = UIKBShape;
  v19 = [(UIKBShape *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->m_geometry, a3);
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
    v20->m_concaveCorner = a6;
    v20->m_concaveCornerOffset.width = v25;
    v20->m_concaveCornerOffset.height = v26;
    v22 = v20;
  }

  return v20;
}

- (UIKBShape)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"geometry"];
  m_geometry = self->m_geometry;
  self->m_geometry = v5;

  [v4 decodeFloatForKey:@"frame.x"];
  v8 = v7;
  [v4 decodeFloatForKey:@"frame.y"];
  v10 = v9;
  [v4 decodeFloatForKey:@"frame.w"];
  v12 = v11;
  [v4 decodeFloatForKey:@"frame.h"];
  self->m_frame.origin.x = v8;
  self->m_frame.origin.y = v10;
  self->m_frame.size.width = v12;
  self->m_frame.size.height = v13;
  [v4 decodeFloatForKey:@"paddedFrame.x"];
  v15 = v14;
  [v4 decodeFloatForKey:@"paddedFrame.y"];
  v17 = v16;
  [v4 decodeFloatForKey:@"paddedFrame.w"];
  v19 = v18;
  [v4 decodeFloatForKey:@"paddedFrame.h"];
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

- (void)encodeWithCoder:(id)a3
{
  m_geometry = self->m_geometry;
  v13 = a3;
  [v13 encodeObject:m_geometry forKey:@"geometry"];
  x = self->m_frame.origin.x;
  *&x = x;
  [v13 encodeFloat:@"frame.x" forKey:x];
  y = self->m_frame.origin.y;
  *&y = y;
  [v13 encodeFloat:@"frame.y" forKey:y];
  width = self->m_frame.size.width;
  *&width = width;
  [v13 encodeFloat:@"frame.w" forKey:width];
  height = self->m_frame.size.height;
  *&height = height;
  [v13 encodeFloat:@"frame.h" forKey:height];
  v9 = self->m_paddedFrame.origin.x;
  *&v9 = v9;
  [v13 encodeFloat:@"paddedFrame.x" forKey:v9];
  v10 = self->m_paddedFrame.origin.y;
  *&v10 = v10;
  [v13 encodeFloat:@"paddedFrame.y" forKey:v10];
  v11 = self->m_paddedFrame.size.width;
  *&v11 = v11;
  [v13 encodeFloat:@"paddedFrame.w" forKey:v11];
  v12 = self->m_paddedFrame.size.height;
  *&v12 = v12;
  [v13 encodeFloat:@"paddedFrame.h" forKey:v12];
}

- (void)makeLikeOther:(id)a3
{
  v27 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v27;
  if (isKindOfClass)
  {
    v6 = v27;
    v7 = [(UIKBShape *)self geometry];

    if (!v7)
    {
      v8 = [v6 geometry];
      v9 = [v8 copy];
      [(UIKBShape *)self setGeometry:v9];

      v10 = [v6 geometry];
      v11 = [v10 name];
      v12 = [v11 copy];
      v13 = [(UIKBShape *)self geometry];
      [v13 setName:v12];
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

    v26 = [v6 originalShape];
    [(UIKBShape *)self setOriginalShape:v26];

    v5 = v27;
  }
}

- (unint64_t)hash
{
  v2 = [(UIKBShape *)self uid];
  v3 = 9 * ((v2 + ~(v2 << 15)) ^ ((v2 + ~(v2 << 15)) >> 10));
  v4 = (v3 ^ (v3 >> 6)) + ~((v3 ^ (v3 >> 6)) << 11);
  return v4 ^ (v4 >> 16);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
    v32 = [(UIKBShape *)self concaveCorner];
    v33 = [v5 concaveCorner];
    [(UIKBShape *)self concaveCornerOffset];
    v35 = v34;
    v37 = v36;
    [v5 concaveCornerOffset];
    v40 = 0;
    if (v18 && v31 && v32 == v33 && v35 == v38 && v37 == v39)
    {
      v41 = [(UIKBShape *)self geometry];
      v42 = [v5 geometry];
      v40 = [v41 isEqual:v42];
    }
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(UIKBShape);
  v5 = [(UIKBShape *)self geometry];
  v6 = [v5 copy];
  [(UIKBShape *)v4 setGeometry:v6];

  [(UIKBShape *)self frame];
  [(UIKBShape *)v4 setFrame:?];
  [(UIKBShape *)self paddedFrame];
  [(UIKBShape *)v4 setPaddedFrame:?];
  v7 = [(UIKBShape *)self originalShape];
  [(UIKBShape *)v4 setOriginalShape:v7];

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
  v3 = [(UIKBShape *)self geometry];

  if (v3)
  {
    v4 = [(UIKBShape *)self geometry];
    v5 = [v4 shortDescription];
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
    v5 = [v6 stringByAppendingFormat:@" - %@_%@", v7, v8];

    if ([(UIKBShape *)self concaveCorner])
    {
      v9 = [(UIKBShape *)self concaveCorner];
      [(UIKBShape *)self concaveCornerOffset];
      v10 = NSStringFromCGSize(v15);
      v11 = [v5 stringByAppendingFormat:@"_concaveCorner=%lux_concaveCornerOffset=%@", v9, v10];

      v5 = v11;
    }
  }

  return v5;
}

- (void)addRectFrom:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [v4 frame];
    v17.origin.x = v5;
    v17.origin.y = v6;
    v17.size.width = v7;
    v17.size.height = v8;
    self->m_frame = CGRectUnion(self->m_frame, v17);
    [v4 paddedFrame];
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

- (void)addRectFrom:(id)a3 widthFraction:(double)a4 heightFraction:(double)a5 adjustOriginXFactor:(double)a6 adjustOriginYFactor:(double)a7 absoluteOriginFactors:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  if (v14)
  {
    v25 = v14;
    [v14 frame];
    v16 = ceil(v15 * a4);
    [v25 frame];
    v18 = ceil(v17 * a5);
    v19 = self->m_frame.size.height + v18;
    self->m_frame.size.width = self->m_frame.size.width + v16;
    self->m_frame.size.height = v19;
    v20 = v18 + self->m_paddedFrame.size.height;
    self->m_paddedFrame.size.width = v16 + self->m_paddedFrame.size.width;
    self->m_paddedFrame.size.height = v20;
    if (a6 != 0.0)
    {
      if (v8)
      {
        [v25 frame];
        v16 = v21;
      }

      v22 = floor(v16 * a6);
      self->m_frame.origin.x = self->m_frame.origin.x + v22;
      self->m_paddedFrame.origin.x = v22 + self->m_paddedFrame.origin.x;
    }

    v14 = v25;
    if (a7 != 0.0)
    {
      if (v8)
      {
        [v25 frame];
        v14 = v25;
        v18 = v23;
      }

      v24 = floor(v18 * a7);
      self->m_frame.origin.y = self->m_frame.origin.y + v24;
      self->m_paddedFrame.origin.y = v24 + self->m_paddedFrame.origin.y;
    }
  }
}

- (void)addRectFrom:(id)a3 mergeActionFactors:(id)a4 inRightToLeft:(BOOL)a5
{
  v5 = a5;
  v50 = a3;
  v8 = a4;
  if (self != v50)
  {
    [(UIKBShape *)self frame];
    v11 = v10 + v9 * 0.5;
    [(UIKBShape *)v50 frame];
    v14 = vabdd_f64(v11, v13 + v12 * 0.5);
    [(UIKBShape *)self frame];
    v17 = v16 + v15 * 0.5;
    [(UIKBShape *)v50 frame];
    v20 = vabdd_f64(v17, v19 + v18 * 0.5);
    v21 = 0.0;
    v22 = v14 < 1.0;
    v23 = 0.0;
    v24 = 0.0;
    if (v22)
    {
      v25 = COERCE_DOUBLE([v8 w]);
      [v8 w];
      if (v26 == 2)
      {
        v24 = v25 * 0.01;
      }

      else
      {
        [(UIKBShape *)v50 frame];
        v24 = v25 / v27;
      }

      v28 = COERCE_DOUBLE([v8 x]);
      [v8 x];
      if (v29 == 2)
      {
        v30 = v28 * 0.01;
        v31 = v50;
      }

      else
      {
        [(UIKBShape *)v50 frame];
        v31 = v50;
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

      if (v5)
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
      v36 = COERCE_DOUBLE([v8 h]);
      [v8 h];
      if (v37 == 2)
      {
        v35 = v36 * 0.01;
      }

      else
      {
        [(UIKBShape *)v50 frame];
        v35 = v36 / v38;
      }

      v39 = COERCE_DOUBLE([v8 y]);
      [v8 y];
      if (v40 == 2)
      {
        v21 = v39 * 0.01;
        v41 = v50;
      }

      else
      {
        [(UIKBShape *)v50 frame];
        v41 = v50;
        v21 = v39 / v42;
      }

      [(UIKBShape *)v41 frame];
      if (v43 < self->m_frame.origin.y)
      {
        v21 = -v21;
      }
    }

    [(UIKBShape *)self addRectFrom:v50 widthFraction:1 heightFraction:v24 adjustOriginXFactor:v35 adjustOriginYFactor:v23 absoluteOriginFactors:v21];
    [v8 w];
    if (v44 == 100 || ([v8 h], v45 == 100))
    {
      [(UIKBShape *)v50 frame];
      self->m_frame.size.width = v46;
      self->m_frame.size.height = v47;
      [(UIKBShape *)v50 paddedFrame];
      self->m_paddedFrame.size.width = v48;
      self->m_paddedFrame.size.height = v49;
    }
  }
}

- (void)scaleWidth:(double)a3
{
  width = self->m_paddedFrame.size.width;
  v4 = width * a3;
  self->m_frame.size.width = self->m_frame.size.width - v4;
  self->m_paddedFrame.size.width = width - v4;
}

- (CGRect)_scaleRect:(CGRect)a3 inYAxis:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4)
  {
    v8 = a3.origin.y;
  }

  else
  {
    v8 = a3.origin.x;
  }

  if (a4)
  {
    v9 = a3.size.height;
  }

  else
  {
    v9 = a3.size.width;
  }

  v10 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v11 = [v10 preferencesActions];
  [v11 rivenSizeFactor:v8];
  v13 = v12;

  v14 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v15 = [v14 preferencesActions];
  [v15 rivenSizeFactor:v9];
  v17 = v16;

  v18 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v19 = [v18 preferencesActions];
  [v19 rivenSizeFactor:1.0];
  v21 = v20;

  v22 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v23 = [v22 preferencesActions];
  [v23 rivenSizeFactor:1.0];
  v25 = v9 * v24;
  v26 = v25 <= 150.0;
  v27 = v8 * v21 - v13 + v25 - v17;
  if (v4 && v26)
  {
    v27 = 0.0;
  }

  v28 = v17 + round(v27);
  if (v4)
  {
    v29 = x;
  }

  else
  {
    v29 = v13;
  }

  if (v4)
  {
    y = v13;
  }

  else
  {
    width = v28;
  }

  if (v4)
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

- (void)scaleIfNeeded:(double)a3 onlyYAxis:(BOOL)a4
{
  if (!self->m_scaled)
  {
    v7 = a3 == 0.0 || a4;
    x = self->m_frame.origin.x;
    if (!v7)
    {
      x = x - a3;
      self->m_frame.origin.x = x;
      self->m_paddedFrame.origin.x = self->m_paddedFrame.origin.x - a3;
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
    if (!a4)
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
        self->m_frame.origin.x = self->m_frame.origin.x + a3;
        self->m_paddedFrame.origin.x = v21 + a3;
      }
    }

    self->m_scaled = 1;
  }
}

+ (id)shapeByCombining:(id)a3 withShape:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v5 frame];
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
  [v6 paddedFrame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v5 paddedFrame];
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

+ (id)shapeByResizingShape:(id)a3 byAmount:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  [v6 frame];
  v24 = v7;
  v9 = v8;
  [v6 frame];
  v11 = v10 - width;
  [v6 frame];
  v13 = v12 - height;
  [v6 paddedFrame];
  v15 = v14;
  v17 = v16;
  [v6 paddedFrame];
  v19 = v18 - width;
  [v6 paddedFrame];
  v21 = v20;

  v22 = [[UIKBShape alloc] initWithGeometry:0 frame:v24 paddedFrame:v9, v11, v13, v15, v17, v19, v21 - height];

  return v22;
}

@end