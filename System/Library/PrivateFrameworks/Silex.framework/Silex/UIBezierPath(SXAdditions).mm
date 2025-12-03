@interface UIBezierPath(SXAdditions)
+ (id)sx_bezierPathWithNonContinuousRoundedRect:()SXAdditions byRoundingCorners:cornerRadius:;
+ (id)sx_bezierPathWithRect:()SXAdditions byRoundingCorners:cornerRadius:continuousCorners:;
@end

@implementation UIBezierPath(SXAdditions)

+ (id)sx_bezierPathWithRect:()SXAdditions byRoundingCorners:cornerRadius:continuousCorners:
{
  if (a5 > 0.0)
  {
    if (a9)
    {
      [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:self byRoundingCorners:a2 cornerRadii:{a3, a4, a5, a5}];
    }

    else
    {
      [MEMORY[0x1E69DC728] sx_bezierPathWithNonContinuousRoundedRect:? byRoundingCorners:? cornerRadius:?];
    }
    v9 = ;
  }

  else
  {
    v9 = [MEMORY[0x1E69DC728] bezierPathWithRect:?];
  }

  return v9;
}

+ (id)sx_bezierPathWithNonContinuousRoundedRect:()SXAdditions byRoundingCorners:cornerRadius:
{
  if ((~a8 & 5) == 0 || (a8 & 0xA) == 0xALL)
  {
    v14 = CGRectGetHeight(*&self) * 0.5;
    if (v14 <= a5)
    {
      a5 = v14;
    }
  }

  if ((~a8 & 3) == 0 || (a8 & 0xC) == 0xCLL)
  {
    v46.origin.x = self;
    v46.origin.y = a2;
    v46.size.width = a3;
    v46.size.height = a4;
    v15 = CGRectGetWidth(v46) * 0.5;
    if (a5 >= v15)
    {
      a5 = v15;
    }
  }

  v47.origin.x = self;
  v47.origin.y = a2;
  v47.size.width = a3;
  v47.size.height = a4;
  Width = CGRectGetWidth(v47);
  v48.origin.x = self;
  v48.origin.y = a2;
  v48.size.width = a3;
  v48.size.height = a4;
  Height = CGRectGetHeight(v48);
  if (Width < Height)
  {
    Height = Width;
  }

  if (a5 >= Height)
  {
    a5 = Height;
  }

  Mutable = CGPathCreateMutable();
  v19 = 0.0;
  if (a8)
  {
    v20 = a5;
  }

  else
  {
    v20 = 0.0;
  }

  if ((a8 & 2) != 0)
  {
    v21 = a5;
  }

  else
  {
    v21 = 0.0;
  }

  if ((a8 & 8) != 0)
  {
    v22 = a5;
  }

  else
  {
    v22 = 0.0;
  }

  if ((a8 & 4) != 0)
  {
    v19 = a5;
  }

  v43 = v19;
  v49.origin.x = self;
  v49.origin.y = a2;
  v49.size.width = a3;
  v49.size.height = a4;
  v44 = v20;
  v23 = CGRectGetMinX(v49) + v20;
  v50.origin.x = self;
  v50.origin.y = a2;
  v50.size.width = a3;
  v50.size.height = a4;
  MinY = CGRectGetMinY(v50);
  CGPathMoveToPoint(Mutable, 0, v23, MinY);
  v51.origin.x = self;
  v51.origin.y = a2;
  v51.size.width = a3;
  v51.size.height = a4;
  v25 = CGRectGetMaxX(v51) - v21;
  v52.origin.x = self;
  v52.origin.y = a2;
  v52.size.width = a3;
  v52.size.height = a4;
  v26 = CGRectGetMinY(v52);
  CGPathAddLineToPoint(Mutable, 0, v25, v26);
  if (v21 > 0.0)
  {
    v53.origin.x = self;
    v53.origin.y = a2;
    v53.size.width = a3;
    v53.size.height = a4;
    v27 = CGRectGetMaxX(v53) - a5;
    v54.origin.x = self;
    v54.origin.y = a2;
    v54.size.width = a3;
    v54.size.height = a4;
    v28 = CGRectGetMinY(v54);
    CGPathAddArc(Mutable, 0, v27, a5 + v28, a5, 4.71238898, 6.28318531, 0);
  }

  v55.origin.x = self;
  v55.origin.y = a2;
  v55.size.width = a3;
  v55.size.height = a4;
  MaxX = CGRectGetMaxX(v55);
  v56.origin.x = self;
  v56.origin.y = a2;
  v56.size.width = a3;
  v56.size.height = a4;
  MaxY = CGRectGetMaxY(v56);
  CGPathAddLineToPoint(Mutable, 0, MaxX, MaxY - v22);
  if (v22 > 0.0)
  {
    v57.origin.x = self;
    v57.origin.y = a2;
    v57.size.width = a3;
    v57.size.height = a4;
    v31 = CGRectGetMaxX(v57) - a5;
    v58.origin.x = self;
    v58.origin.y = a2;
    v58.size.width = a3;
    v58.size.height = a4;
    v32 = CGRectGetMaxY(v58);
    CGPathAddArc(Mutable, 0, v31, v32 - a5, a5, 0.0, 1.57079633, 0);
  }

  v59.origin.x = self;
  v59.origin.y = a2;
  v59.size.width = a3;
  v59.size.height = a4;
  v33 = v43 + CGRectGetMinX(v59);
  v60.origin.x = self;
  v60.origin.y = a2;
  v60.size.width = a3;
  v60.size.height = a4;
  v34 = CGRectGetMaxY(v60);
  CGPathAddLineToPoint(Mutable, 0, v33, v34);
  if (v43 > 0.0)
  {
    v61.origin.x = self;
    v61.origin.y = a2;
    v61.size.width = a3;
    v61.size.height = a4;
    v35 = a5 + CGRectGetMinX(v61);
    v62.origin.x = self;
    v62.origin.y = a2;
    v62.size.width = a3;
    v62.size.height = a4;
    v36 = CGRectGetMaxY(v62);
    CGPathAddArc(Mutable, 0, v35, v36 - a5, a5, 1.57079633, 3.14159265, 0);
  }

  v63.origin.x = self;
  v63.origin.y = a2;
  v63.size.width = a3;
  v63.size.height = a4;
  MinX = CGRectGetMinX(v63);
  v64.origin.x = self;
  v64.origin.y = a2;
  v64.size.width = a3;
  v64.size.height = a4;
  v38 = CGRectGetMinY(v64);
  CGPathAddLineToPoint(Mutable, 0, MinX, v44 + v38);
  if (v44 > 0.0)
  {
    v65.origin.x = self;
    v65.origin.y = a2;
    v65.size.width = a3;
    v65.size.height = a4;
    v39 = a5 + CGRectGetMinX(v65);
    v66.origin.x = self;
    v66.origin.y = a2;
    v66.size.width = a3;
    v66.size.height = a4;
    v40 = CGRectGetMinY(v66);
    CGPathAddArc(Mutable, 0, v39, a5 + v40, a5, 3.14159265, 4.71238898, 0);
  }

  v41 = [MEMORY[0x1E69DC728] bezierPathWithCGPath:{Mutable, *&v43}];
  CFRelease(Mutable);

  return v41;
}

@end