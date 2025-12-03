@interface TSTTableBadge
+ (id)badgeWithType:(int)type color:(id)color viewScale:(double)scale frame:(CGRect)frame;
- (CGRect)frame;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context;
@end

@implementation TSTTableBadge

+ (id)badgeWithType:(int)type color:(id)color viewScale:(double)scale frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12 = *&type;
  v13 = objc_alloc_init(TSTTableBadge);
  [(TSTTableBadge *)v13 setBadgeType:v12];
  [(TSTTableBadge *)v13 setColor:color];
  [(TSTTableBadge *)v13 setViewScale:scale];
  [(TSTTableBadge *)v13 setFrame:x, y, width, height];
  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableBadge;
  [(TSTTableBadge *)&v3 dealloc];
}

- (void)drawInContext:(CGContext *)context
{
  badgeType = [(TSTTableBadge *)self badgeType];
  switch(badgeType)
  {
    case 3:
      [(TSTTableBadge *)self viewScale];
      v17 = v16;
      [(TSTTableBadge *)self frame];

      TSTTableBadgeDrawCellErrorIndicator(context, v17, v18, v19, v20, v21);
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
      color = [(TSTTableBadge *)self color];
      CGContextSaveGState(context);
      v15 = newTSTTableBadgeCellCommentBadgePath(v7, v9, v11, v13);
      CGContextAddPath(context, v15);
      CGContextSetFillColorWithColor(context, [(TSUColor *)color CGColor]);
      CGContextFillPath(context);
      CGPathRelease(v15);

      CGContextRestoreGState(context);
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