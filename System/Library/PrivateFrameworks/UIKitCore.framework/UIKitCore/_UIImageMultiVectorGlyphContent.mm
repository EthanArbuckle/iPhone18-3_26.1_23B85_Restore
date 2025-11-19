@interface _UIImageMultiVectorGlyphContent
- (BOOL)isEqual:(id)a3;
- (CGImage)CGImage;
- (CGSize)sizeInPixels;
- (_UIImageMultiVectorGlyphContent)initWithScale:(double)a3;
- (_UIImageMultiVectorGlyphContent)initWithSize:(CGSize)a3 glyphs:(id)a4 colors:(id)a5 offsets:(id)a6 scaleFactors:(id)a7 anchorPoint:(CGPoint)a8;
- (id)description;
- (void)_drawWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5 renditionContext:(id)a6;
- (void)_prepareForDrawingWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5;
- (void)dealloc;
@end

@implementation _UIImageMultiVectorGlyphContent

- (_UIImageMultiVectorGlyphContent)initWithSize:(CGSize)a3 glyphs:(id)a4 colors:(id)a5 offsets:(id)a6 scaleFactors:(id)a7 anchorPoint:(CGPoint)a8
{
  y = a8.y;
  x = a8.x;
  height = a3.height;
  width = a3.width;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  if (![v17 count])
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:2415 description:@"Need to pass some glyhps"];
  }

  v21 = [v17 objectAtIndexedSubscript:0];
  [v21 scale];
  v36.receiver = self;
  v36.super_class = _UIImageMultiVectorGlyphContent;
  v22 = [(_UIImageContent *)&v36 initWithScale:?];

  if (v22)
  {
    v23 = [v17 copy];
    glyphs = v22->_glyphs;
    v22->_glyphs = v23;

    v25 = [v18 copy];
    colors = v22->_colors;
    v22->_colors = v25;

    v27 = [v19 copy];
    offsets = v22->_offsets;
    v22->_offsets = v27;

    v29 = [v20 copy];
    scaleFactors = v22->_scaleFactors;
    v22->_scaleFactors = v29;

    [(_UIImageContent *)v22 scale];
    v32 = width * v31;
    [(_UIImageContent *)v22 scale];
    v22->_sizeInPixels.width = v32;
    v22->_sizeInPixels.height = height * v33;
    v22->_anchorPoint.x = x;
    v22->_anchorPoint.y = y;
  }

  return v22;
}

- (_UIImageMultiVectorGlyphContent)initWithScale:(double)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:2433 description:@"You need to use -initWithCGImage:CUIVectorGlyph:scale:symbolScaleFactor:"];

  return 0;
}

- (void)dealloc
{
  imageRef = self->_imageRef;
  if (imageRef)
  {
    CGImageRelease(imageRef);
  }

  v4.receiver = self;
  v4.super_class = _UIImageMultiVectorGlyphContent;
  [(_UIImageMultiVectorGlyphContent *)&v4 dealloc];
}

- (CGSize)sizeInPixels
{
  width = self->_sizeInPixels.width;
  height = self->_sizeInPixels.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGImage)CGImage
{
  result = self->_imageRef;
  if (!result)
  {
    [(_UIImageContent *)self scale];
    v5 = v4;
    [(_UIImageContent *)self size];
    v7 = v6;
    v9 = v8;
    v10 = +[UIGraphicsImageRendererFormat preferredFormat];
    [v10 setScale:v5];
    v11 = [UIGraphicsImageRenderer alloc];
    [(_UIImageContent *)self size];
    v12 = [(UIGraphicsImageRenderer *)v11 initWithSize:v10 format:?];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __42___UIImageMultiVectorGlyphContent_CGImage__block_invoke;
    v14[3] = &unk_1E7106F60;
    v14[4] = self;
    v14[5] = v7;
    v14[6] = v9;
    *&v14[7] = v5;
    v13 = [(UIGraphicsImageRenderer *)v12 imageWithActions:v14];
    self->_imageRef = CFRetain([v13 CGImage]);

    return self->_imageRef;
  }

  return result;
}

- (void)_prepareForDrawingWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5
{
  height = a3.height;
  width = a3.width;
  v11.receiver = self;
  v11.super_class = _UIImageMultiVectorGlyphContent;
  [(_UIImageContent *)&v11 _prepareForDrawingWithSize:a3.width scale:a3.height inContext:a4];
  CGContextTranslateCTM(a5, 0.0, height);
  CGContextScaleCTM(a5, 1.0, -1.0);
  [(_UIImageContent *)self size];
  CGContextScaleCTM(a5, width / v9, height / v10);
}

- (void)_drawWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5 renditionContext:(id)a6
{
  height = a3.height;
  width = a3.width;
  rect_8 = a6;
  [(_UIImageContent *)self size];
  v64 = v12;
  v65 = v11;
  v13 = 40;
  if ([(NSArray *)self->_glyphs count])
  {
    v14 = 0;
    v15 = &OBJC_IVAR____UIImageMultiVectorGlyphContent__colors;
    v16 = *(MEMORY[0x1E695EFF8] + 8);
    v61 = *MEMORY[0x1E695EFF8];
    v62 = width;
    v17 = 0x1E695D000uLL;
    v18 = &OBJC_IVAR____UIImageMultiVectorGlyphContent__scaleFactors;
    v19 = 1.0;
    v63 = height;
    v60 = 40;
    do
    {
      CGContextSaveGState(a5);
      v20 = [*(&self->super.super.isa + v13) objectAtIndexedSubscript:v14];
      v21 = [*(&self->super.super.isa + v15[1]) objectAtIndexedSubscript:v14];
      [v21 CGPointValue];
      v23 = v22;
      v25 = v24;

      v26 = [*(&self->super.super.isa + *v15) objectAtIndexedSubscript:v14];
      v27 = [*(v17 + 4016) null];

      if (v26 == v27)
      {

        v26 = 0;
      }

      [v20 size];
      v29 = v28;
      v31 = v30;
      v32 = [*(&self->super.super.isa + *v18) objectAtIndexedSubscript:v14];
      [v32 floatValue];
      v34 = v33;

      v35 = v29 * v34;
      v36 = (self + v18[2]);
      UIRoundToScale(v23 + (v65 - v35) * *v36, a4);
      rect = v37;
      v38 = v31 * v34;
      UIRoundToScale((v64 - v38) * (v19 - v36[1]) - v25, a4);
      v40 = v39;
      UIRoundToScale(v35, a4);
      v42 = v41;
      UIRoundToScale(v38, a4);
      v44 = v43;
      if (!rect_8 || v26)
      {
        v46 = [v20 renditionWithSize:0 scale:v42 renditionContext:{v43, a4}];
        v48 = v63;
        if (v26)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v45 = [v20 renditionWithSize:rect_8 scale:v42 renditionContext:{v43, a4}];
        v46 = v45;
        if (v45)
        {
          v47 = *(v45 + 40);
        }

        else
        {
          v47 = 0;
        }

        v48 = v63;
        v26 = v47;
        if (v26)
        {
LABEL_12:
          [v26 alphaComponent];
          if (v49 > 0.0)
          {
            v50 = v40;
            [v26 alphaComponent];
            if (v51 >= v19)
            {
              v58 = v61;
              v57 = v62;
            }

            else
            {
              CGContextSaveGState(a5);
              CGContextSetBlendMode(a5, kCGBlendModeDestinationOut);
              CGContextBeginTransparencyLayer(a5, 0);
              v52 = [(_UIImageContentRendition *)v46 CGImage];
              v69.origin.x = rect;
              v69.origin.y = v40;
              v69.size.width = v42;
              v69.size.height = v44;
              CGContextDrawImage(a5, v69, v52);
              CGContextScaleCTM(a5, a4, a4);
              +[UIColor blackColor];
              v53 = v18;
              v54 = v15;
              v56 = v55 = v17;
              [v56 setFill];

              v17 = v55;
              v15 = v54;
              v18 = v53;
              v13 = v60;
              CGContextSetBlendMode(a5, kCGBlendModeSourceIn);
              v58 = v61;
              v57 = v62;
              v70.origin.x = v61;
              v70.origin.y = v16;
              v70.size.width = v62;
              v70.size.height = v48;
              CGContextFillRect(a5, v70);
              CGContextEndTransparencyLayer(a5);
              CGContextSetBlendMode(a5, kCGBlendModeNormal);
              CGContextRestoreGState(a5);
            }

            CGContextBeginTransparencyLayer(a5, 0);
            v59 = [(_UIImageContentRendition *)v46 CGImage];
            v71.origin.x = rect;
            v71.origin.y = v50;
            v71.size.width = v42;
            v71.size.height = v44;
            CGContextDrawImage(a5, v71, v59);
            CGContextScaleCTM(a5, a4, a4);
            [v26 setFill];
            CGContextSetBlendMode(a5, kCGBlendModeSourceIn);
            v72.origin.x = v58;
            v72.origin.y = v16;
            v72.size.width = v57;
            v72.size.height = v48;
            CGContextFillRect(a5, v72);
            CGContextEndTransparencyLayer(a5);
            v19 = 1.0;
          }

          goto LABEL_17;
        }
      }

      [_UIImageContentRendition drawInContext:v46];
LABEL_17:
      CGContextRestoreGState(a5);

      ++v14;
    }

    while (v14 < [*(&self->super.super.isa + v13) count]);
  }
}

- (id)description
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_glyphs, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_glyphs;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        if (v9)
        {
          v10 = *(v9 + 40);
        }

        else
        {
          v10 = 0;
        }

        v11 = [v10 name];
        [v3 addObject:v11];

        ++v8;
      }

      while (v6 != v8);
      v12 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v6 = v12;
    }

    while (v12);
  }

  v13 = MEMORY[0x1E696AEC0];
  v14 = [(NSArray *)self->_glyphs count];
  v15 = [v3 componentsJoinedByString:{@", "}];
  v16 = [v13 stringWithFormat:@"composite-symbol:(%ld:%@)", v14, v15, v18];

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![_UIImageContent content:v4 isEqualToContent:?])
  {
    goto LABEL_8;
  }

  v5 = v4[5];
  v6 = self->_glyphs;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_10;
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    goto LABEL_16;
  }

  v10 = [(NSArray *)v6 isEqual:v7];

  if (v10)
  {
LABEL_10:
    colors = self->_colors;
    v13 = v4[6];
    v6 = colors;
    v14 = v13;
    v8 = v14;
    if (v6 == v14)
    {
      v11 = 1;
      goto LABEL_18;
    }

    if (v6)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v11 = [(NSArray *)v6 isEqual:v14];
LABEL_18:

      goto LABEL_19;
    }

LABEL_16:
    v11 = 0;
    goto LABEL_18;
  }

LABEL_8:
  v11 = 0;
LABEL_19:

  return v11;
}

@end