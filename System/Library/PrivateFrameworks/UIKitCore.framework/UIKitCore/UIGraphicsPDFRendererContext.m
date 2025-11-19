@interface UIGraphicsPDFRendererContext
- (CGRect)documentBounds;
- (CGRect)pageBounds;
- (CGRect)pdfContextBounds;
- (void)addDestinationWithName:(NSString *)name atPoint:(CGPoint)point;
- (void)beginPage;
- (void)beginPageWithBounds:(CGRect)bounds pageInfo:(NSDictionary *)pageInfo;
- (void)setDestinationWithName:(NSString *)name forRect:(CGRect)rect;
- (void)setURL:(NSURL *)url forRect:(CGRect)rect;
- (void)updateAuxInfo:(id)a3;
@end

@implementation UIGraphicsPDFRendererContext

- (void)updateAuxInfo:(id)a3
{
  v14 = a3;
  ContextStack = GetContextStack(0);
  if (*ContextStack >= 1)
  {
    v4 = &ContextStack[3 * (*ContextStack - 1)];
    if (*(v4 + 4) == 2)
    {
      v5 = v4[3];
      if (v5)
      {
        [v14 documentBounds];
        *v5 = v6;
        *(v5 + 8) = v7;
        *(v5 + 16) = v8;
        *(v5 + 24) = v9;
        [v14 pageBounds];
        *(v5 + 32) = v10;
        *(v5 + 40) = v11;
        *(v5 + 48) = v12;
        *(v5 + 56) = v13;
        *(v5 + 64) = [v14 inPage];
      }
    }
  }
}

- (void)beginPage
{
  v3 = [(UIGraphicsRendererContext *)self format];
  [v3 bounds];
  [(UIGraphicsPDFRendererContext *)self beginPageWithBounds:MEMORY[0x1E695E0F8] pageInfo:?];
}

- (void)beginPageWithBounds:(CGRect)bounds pageInfo:(NSDictionary *)pageInfo
{
  v34 = bounds;
  v5 = pageInfo;
  v6 = [(UIGraphicsRendererContext *)self format];
  v7 = [(UIGraphicsRendererContext *)self CGContext];
  if ([(UIGraphicsPDFRendererContext *)self inPage])
  {
    CGPDFContextEndPage(v7);
  }

  v8 = [v6 documentInfo];
  *&v31.a = &v34;
  v9 = *MEMORY[0x1E695F390];
  v10 = [v8 objectForKey:{*MEMORY[0x1E695F390], &v34}];
  v11 = v10;
  if (v10)
  {
    [v10 getBytes:&v31 length:32];
  }

  if (CGRectIsEmpty(v34))
  {
    [(UIGraphicsPDFRendererContext *)self documentBounds];
    v34.origin.x = v12;
    v34.origin.y = v13;
    v34.size.width = v14;
    v34.size.height = v15;
  }

  [(UIGraphicsPDFRendererContext *)self setPageBounds:?];
  [(UIGraphicsPDFRendererContext *)self setInPage:1];
  [(UIGraphicsPDFRendererContext *)self pageBounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  *v32 = v16;
  *&v32[1] = v18;
  *&v32[2] = v20;
  ty = v22;
  v24 = [(NSDictionary *)v5 objectForKey:v9];
  if (v24)
  {
    v25 = v24;
LABEL_13:

    goto LABEL_14;
  }

  [(UIGraphicsPDFRendererContext *)self documentBounds];
  v37.origin.x = v26;
  v37.origin.y = v27;
  v37.size.width = v28;
  v37.size.height = v29;
  v35.origin.x = v17;
  v35.origin.y = v19;
  v35.size.width = v21;
  v35.size.height = v23;
  if (CGRectEqualToRect(v35, v37))
  {
    v25 = 0;
    goto LABEL_13;
  }

  v38.size.width = 612.0;
  v38.size.height = 792.0;
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v36.origin.x = v17;
  v36.origin.y = v19;
  v36.size.width = v21;
  v36.size.height = v23;
  if (!CGRectEqualToRect(v36, v38))
  {
    v25 = [MEMORY[0x1E695DEF0] dataWithBytes:v32 length:32];
    v30 = [(NSDictionary *)v5 mutableCopy];

    [(NSDictionary *)v30 setObject:v25 forKey:v9];
    v5 = v30;
    goto LABEL_13;
  }

LABEL_14:
  CGPDFContextBeginPage(v7, v5);
  CGContextTranslateCTM(v7, 0.0, ty);
  CGContextScaleCTM(v7, 1.0, -1.0);
  CGAffineTransformMakeScale(&v31, 1.0, -1.0);
  CGContextSetBaseCTM();
  [(UIGraphicsPDFRendererContext *)self updateAuxInfo:self];
}

- (CGRect)pdfContextBounds
{
  if ([(UIGraphicsPDFRendererContext *)self inPage])
  {
    [(UIGraphicsPDFRendererContext *)self pageBounds];
  }

  else
  {
    [(UIGraphicsPDFRendererContext *)self documentBounds];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setURL:(NSURL *)url forRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  urla = url;
  v9 = [(UIGraphicsRendererContext *)self CGContext];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGPDFContextSetURLForRect(v9, urla, v12);
}

- (void)addDestinationWithName:(NSString *)name atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  namea = name;
  v7 = [(UIGraphicsRendererContext *)self CGContext];
  v10.x = x;
  v10.y = y;
  CGPDFContextAddDestinationAtPoint(v7, namea, v10);
}

- (void)setDestinationWithName:(NSString *)name forRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  namea = name;
  v9 = [(UIGraphicsRendererContext *)self CGContext];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGPDFContextSetDestinationForRect(v9, namea, v12);
}

- (CGRect)documentBounds
{
  objc_copyStruct(v6, &self->_documentBounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)pageBounds
{
  objc_copyStruct(v6, &self->_pageBounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end