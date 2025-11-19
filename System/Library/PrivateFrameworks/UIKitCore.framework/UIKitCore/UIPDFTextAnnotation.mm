@interface UIPDFTextAnnotation
- (void)drawInContext:(CGContext *)a3;
@end

@implementation UIPDFTextAnnotation

- (void)drawInContext:(CGContext *)a3
{
  [(UIPDFAnnotation *)self Rect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  CGContextSetFillColorWithColor(a3, [+[UIColor CGColor] yellowColor];
  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;

  CGContextFillRect(a3, *&v12);
}

@end