@interface SBIconLabelImageMetrics
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToImageMetrics:(id)a3;
- (CGRect)drawingRect;
- (CGRect)imageRect;
- (SBIconLabelImageMetrics)init;
- (SBIconLabelImageMetrics)initWithCoder:(id)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)invertedTextInsets;
- (id)initWithDrawingText:(CGFloat)a3 attributedText:(CGFloat)a4 attributes:(CGFloat)a5 imageRect:(CGFloat)a6 drawingRect:(CGFloat)a7 baselineOffsetFromBottom:(CGFloat)a8 scale:(CGFloat)a9 hasBaseline:(uint64_t)a10 invertedTextInsets:(void *)a11 alignmentRectInsets:(void *)a12;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBIconLabelImageMetrics

- (CGRect)imageRect
{
  x = self->_imageRect.origin.x;
  y = self->_imageRect.origin.y;
  width = self->_imageRect.size.width;
  height = self->_imageRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  top = self->_alignmentRectInsets.top;
  left = self->_alignmentRectInsets.left;
  bottom = self->_alignmentRectInsets.bottom;
  right = self->_alignmentRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)drawingRect
{
  x = self->_drawingRect.origin.x;
  y = self->_drawingRect.origin.y;
  width = self->_drawingRect.size.width;
  height = self->_drawingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)invertedTextInsets
{
  top = self->_invertedTextInsets.top;
  left = self->_invertedTextInsets.left;
  bottom = self->_invertedTextInsets.bottom;
  right = self->_invertedTextInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)initWithDrawingText:(CGFloat)a3 attributedText:(CGFloat)a4 attributes:(CGFloat)a5 imageRect:(CGFloat)a6 drawingRect:(CGFloat)a7 baselineOffsetFromBottom:(CGFloat)a8 scale:(CGFloat)a9 hasBaseline:(uint64_t)a10 invertedTextInsets:(void *)a11 alignmentRectInsets:(void *)a12
{
  v37 = a11;
  v38 = a12;
  v39 = a13;
  v68.receiver = a1;
  v68.super_class = SBIconLabelImageMetrics;
  v40 = objc_msgSendSuper2(&v68, sel_init);
  if (v40)
  {
    v41 = [v37 copy];
    v42 = *(v40 + 7);
    *(v40 + 7) = v41;

    v43 = [v38 copy];
    v44 = *(v40 + 5);
    *(v40 + 5) = v43;

    v45 = [v39 copy];
    v46 = *(v40 + 6);
    *(v40 + 6) = v45;

    *(v40 + 8) = a2;
    *(v40 + 9) = a3;
    *(v40 + 10) = a4;
    *(v40 + 11) = a5;
    *(v40 + 12) = a6;
    *(v40 + 13) = a7;
    *(v40 + 14) = a8;
    *(v40 + 15) = a9;
    *(v40 + 3) = a15;
    *(v40 + 4) = a16;
    *(v40 + 16) = a14;
    *(v40 + 16) = a17;
    *(v40 + 17) = a18;
    *(v40 + 18) = a19;
    *(v40 + 19) = a20;
    *(v40 + 20) = a21;
    *(v40 + 21) = a22;
    *(v40 + 22) = a23;
    *(v40 + 23) = a24;
    v47 = 0xBF58476D1CE4E5B9 * ((a23 + a21 + a22 + a24) ^ ((a23 + a21 + a22 + a24) >> 30));
    v63 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((a19 + a17 + a18 + a20) ^ ((a19 + a17 + a18 + a20) >> 30))) ^ ((0xBF58476D1CE4E5B9 * ((a19 + a17 + a18 + a20) ^ ((a19 + a17 + a18 + a20) >> 30))) >> 27));
    v64 = 0x94D049BB133111EBLL * (v47 ^ (v47 >> 27));
    v61 = [*(v40 + 7) hash];
    v60 = [*(v40 + 5) hash];
    v59 = [*(v40 + 6) hash];
    v69.origin.x = a2;
    v69.origin.y = a3;
    v69.size.width = a4;
    v69.size.height = a5;
    v62 = NSStringFromCGRect(v69);
    v58 = [v62 hash];
    v70.origin.y = a7;
    v70.origin.x = a6;
    v70.size.width = a8;
    v70.size.height = a9;
    v48 = NSStringFromCGRect(v70);
    v66 = v37;
    v49 = [v48 hash];
    [MEMORY[0x1E696AD98] numberWithDouble:a15];
    v50 = v67 = v38;
    v51 = [v50 hash];
    v52 = [MEMORY[0x1E696AD98] numberWithDouble:a16];
    v53 = [v52 hash];
    v54 = [MEMORY[0x1E696AD98] numberWithBool:a14];
    v55 = [v54 hash];
    v56 = v60 ^ v59 ^ v58 ^ v49;
    v37 = v66;
    *(v40 + 1) = v61 ^ ((v64 ^ v63) >> 31) ^ v56 ^ v51 ^ v53 ^ v55 ^ v63 ^ v64;

    v38 = v67;
  }

  return v40;
}

- (SBIconLabelImageMetrics)init
{
  [(SBIconLabelImageMetrics *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else if (v4)
  {
    v6 = objc_opt_self();
    v7 = v5;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = v8;

    v9 = [(SBIconLabelImageMetrics *)self isEqualToImageMetrics:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqualToImageMetrics:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v47 = 1;
  }

  else if (v4 && ([(SBIconLabelImageMetrics *)v4 drawingText], v6 = objc_claimAutoreleasedReturnValue(), [(SBIconLabelImageMetrics *)self drawingText], v7 = objc_claimAutoreleasedReturnValue(), v8 = BSEqualStrings(), v7, v6, v8) && ([(SBIconLabelImageMetrics *)v5 attributedText], v9 = objc_claimAutoreleasedReturnValue(), [(SBIconLabelImageMetrics *)self attributedText], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualObjects(), v10, v9, v11) && ([(SBIconLabelImageMetrics *)v5 imageRect], v13 = v12, v15 = v14, v17 = v16, v19 = v18, [(SBIconLabelImageMetrics *)self imageRect], v66.origin.x = v20, v66.origin.y = v21, v66.size.width = v22, v66.size.height = v23, v64.origin.x = v13, v64.origin.y = v15, v64.size.width = v17, v64.size.height = v19, CGRectEqualToRect(v64, v66)) && ([(SBIconLabelImageMetrics *)v5 drawingRect], v25 = v24, v27 = v26, v29 = v28, v31 = v30, [(SBIconLabelImageMetrics *)self drawingRect], v67.origin.x = v32, v67.origin.y = v33, v67.size.width = v34, v67.size.height = v35, v65.origin.x = v25, v65.origin.y = v27, v65.size.width = v29, v65.size.height = v31, CGRectEqualToRect(v65, v67)) && ([(SBIconLabelImageMetrics *)v5 scale], [(SBIconLabelImageMetrics *)self scale], BSEqualDoubles()) && ([(SBIconLabelImageMetrics *)v5 baselineOffsetFromBottom], [(SBIconLabelImageMetrics *)self baselineOffsetFromBottom], BSEqualDoubles()) && ([(SBIconLabelImageMetrics *)v5 hasBaseline], [(SBIconLabelImageMetrics *)self hasBaseline], BSEqualBools()))
  {
    [(SBIconLabelImageMetrics *)v5 invertedTextInsets];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    [(SBIconLabelImageMetrics *)self invertedTextInsets];
    v47 = 0;
    if (v39 == v48 && v37 == v44 && v43 == v46 && v41 == v45)
    {
      [(SBIconLabelImageMetrics *)v5 alignmentRectInsets];
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;
      [(SBIconLabelImageMetrics *)self alignmentRectInsets];
      v47 = 0;
      if (v52 == v60 && v50 == v57 && v56 == v59 && v54 == v58)
      {
        v61 = [(SBIconLabelImageMetrics *)v5 attributes];
        v62 = [(SBIconLabelImageMetrics *)self attributes];
        v47 = BSEqualObjects();
      }
    }
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

- (SBIconLabelImageMetrics)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = objc_opt_self();
  v55 = [v3 decodeObjectOfClass:v4 forKey:@"_drawingText"];

  v5 = objc_opt_self();
  v6 = [v3 decodeObjectOfClass:v5 forKey:@"_attributedText"];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_self();
  v9 = objc_opt_self();
  v10 = objc_opt_self();
  v11 = objc_opt_self();
  v12 = objc_opt_self();
  v13 = objc_opt_self();
  v14 = [v7 setWithObjects:{v8, v9, v10, v11, v12, v13, 0}];
  v15 = [v3 decodeObjectOfClasses:v14 forKey:@"_attributes"];

  [v3 decodeCGRectForKey:@"_imageRect"];
  v53 = v17;
  v54 = v16;
  v51 = v19;
  v52 = v18;
  [v3 decodeCGRectForKey:@"_drawingRect"];
  v49 = v21;
  v50 = v20;
  v47 = v23;
  v48 = v22;
  [v3 decodeDoubleForKey:@"_baselineOffsetFromBottom"];
  v46 = v24;
  [v3 decodeDoubleForKey:@"_scale"];
  v45 = v25;
  v26 = [v3 decodeBoolForKey:@"_hasBaseline"];
  [v3 decodeUIEdgeInsetsForKey:@"_invertedTextInsets"];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  [v3 decodeUIEdgeInsetsForKey:@"_alignmentRectInsets"];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v43 = [(SBIconLabelImageMetrics *)self initWithDrawingText:v55 attributedText:v6 attributes:v15 imageRect:v26 drawingRect:v54 baselineOffsetFromBottom:v53 scale:v52 hasBaseline:v51 invertedTextInsets:v50 alignmentRectInsets:v49, v48, v47, v46, v45, v28, v30, v32, v34, v36, v38, v40, v42];
  return v43;
}

- (void)encodeWithCoder:(id)a3
{
  drawingText = self->_drawingText;
  v5 = a3;
  [v5 encodeObject:drawingText forKey:@"_drawingText"];
  [v5 encodeObject:self->_attributedText forKey:@"_attributedText"];
  [v5 encodeObject:self->_attributes forKey:@"_attributes"];
  [v5 encodeCGRect:@"_imageRect" forKey:{self->_imageRect.origin.x, self->_imageRect.origin.y, self->_imageRect.size.width, self->_imageRect.size.height}];
  [v5 encodeCGRect:@"_drawingRect" forKey:{self->_drawingRect.origin.x, self->_drawingRect.origin.y, self->_drawingRect.size.width, self->_drawingRect.size.height}];
  [v5 encodeDouble:@"_baselineOffsetFromBottom" forKey:self->_baselineOffsetFromBottom];
  [v5 encodeDouble:@"_scale" forKey:self->_scale];
  [v5 encodeBool:self->_hasBaseline forKey:@"_hasBaseline"];
  [v5 encodeUIEdgeInsets:@"_invertedTextInsets" forKey:{self->_invertedTextInsets.top, self->_invertedTextInsets.left, self->_invertedTextInsets.bottom, self->_invertedTextInsets.right}];
  [v5 encodeUIEdgeInsets:@"_alignmentRectInsets" forKey:{self->_alignmentRectInsets.top, self->_alignmentRectInsets.left, self->_alignmentRectInsets.bottom, self->_alignmentRectInsets.right}];
}

@end