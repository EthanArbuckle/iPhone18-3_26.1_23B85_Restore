@interface UIPDFTextAnnotation
- (void)drawInContext:(CGContext *)context;
@end

@implementation UIPDFTextAnnotation

- (void)drawInContext:(CGContext *)context
{
  [(UIPDFAnnotation *)self Rect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  CGContextSetFillColorWithColor(context, [+[UIColor CGColor] yellowColor];
  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;

  CGContextFillRect(context, *&v12);
}

@end