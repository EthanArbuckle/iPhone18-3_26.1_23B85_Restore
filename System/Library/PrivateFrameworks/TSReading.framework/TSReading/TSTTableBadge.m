@interface TSTTableBadge
+ (id)badgeWithType:(int)a3 color:(id)a4 viewScale:(double)a5 frame:(CGRect)a6;
- (CGRect)frame;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation TSTTableBadge

+ (id)badgeWithType:(int)a3 color:(id)a4 viewScale:(double)a5 frame:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v12 = *&a3;
  v13 = objc_alloc_init(TSTTableBadge);
  [(TSTTableBadge *)v13 setBadgeType:v12];
  [(TSTTableBadge *)v13 setColor:a4];
  [(TSTTableBadge *)v13 setViewScale:a5];
  [(TSTTableBadge *)v13 setFrame:x, y, width, height];
  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableBadge;
  [(TSTTableBadge *)&v3 dealloc];
}

- (void)drawInContext:(CGContext *)a3
{
  v5 = [(TSTTableBadge *)self badgeType];
  switch(v5)
  {
    case 3:
      [(TSTTableBadge *)self viewScale];
      v17 = v16;
      [(TSTTableBadge *)self frame];

      TSTTableBadgeDrawCellErrorIndicator(a3, v17, v18, v19, v20, v21);
      break;
    case 2:

      [(TSTTableBadge *)self frame];
      break;
    case 1:
      [(TSTTableBadge *)self frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v14 = [(TSTTableBadge *)self color];
      CGContextSaveGState(a3);
      v15 = newTSTTableBadgeCellCommentBadgePath(v7, v9, v11, v13);
      CGContextAddPath(a3, v15);
      CGContextSetFillColorWithColor(a3, [(TSUColor *)v14 CGColor]);
      CGContextFillPath(a3);
      CGPathRelease(v15);

      CGContextRestoreGState(a3);
      break;
  }
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end