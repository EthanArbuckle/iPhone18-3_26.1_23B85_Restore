@interface _PUIFontWeightSliderTrackView
- (_PUIFontWeightSliderTrackView)initWithTrackBackgroundColor:(id)color;
- (void)drawRect:(CGRect)rect;
@end

@implementation _PUIFontWeightSliderTrackView

- (_PUIFontWeightSliderTrackView)initWithTrackBackgroundColor:(id)color
{
  colorCopy = color;
  v9.receiver = self;
  v9.super_class = _PUIFontWeightSliderTrackView;
  v6 = [(_PUIFontWeightSliderTrackView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trackBackgroundColor, color);
    [(_PUIFontWeightSliderTrackView *)v7 setOpaque:0];
    [(_PUIFontWeightSliderTrackView *)v7 setContentMode:3];
  }

  return v7;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v29.receiver = self;
  v29.super_class = _PUIFontWeightSliderTrackView;
  [(_PUIFontWeightSliderTrackView *)&v29 drawRect:?];
  v8 = MEMORY[0x1E69DDA98];
  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  if (userInterfaceLayoutDirection == 1)
  {
    v27 = CGRectGetMaxX(*&v10) + -2.0;
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    MidY = CGRectGetMidY(v30);
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v28 = CGRectGetMaxX(v31) + -2.0;
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v26 = CGRectGetMidY(v32);
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v24 = CGRectGetMaxX(v33) + -2.0;
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    v14 = CGRectGetMidY(v34);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v15 = 7.0;
    v16 = CGRectGetMinX(v35) + 7.0;
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v17 = CGRectGetMidY(v36);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    MinX = CGRectGetMinX(v37);
  }

  else
  {
    v27 = CGRectGetMinX(*&v10) + 2.0;
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    MidY = CGRectGetMidY(v38);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v28 = CGRectGetMinX(v39) + 2.0;
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v26 = CGRectGetMidY(v40);
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    v24 = CGRectGetMinX(v41) + 2.0;
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    v14 = CGRectGetMidY(v42);
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v15 = -7.0;
    v16 = CGRectGetMaxX(v43) + -7.0;
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    v17 = CGRectGetMidY(v44);
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    MinX = CGRectGetMaxX(v45);
  }

  v19 = MinX + v15;
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v20 = CGRectGetMidY(v46);
  v21 = objc_alloc_init(MEMORY[0x1E69DC728]);
  [v21 moveToPoint:{v27, MidY + -2.0}];
  [v21 addLineToPoint:{v16, v17 + -7.0}];
  v22 = [*v8 userInterfaceLayoutDirection] != 1;
  [v21 addArcWithCenter:v22 radius:v19 startAngle:v20 endAngle:7.0 clockwise:{4.71238898, 1.57079633}];
  [v21 addLineToPoint:{v24, v14 + 2.0}];
  [v21 addArcWithCenter:v22 radius:v28 startAngle:v26 endAngle:2.0 clockwise:{1.57079633, 4.71238898}];
  trackBackgroundColor = [(_PUIFontWeightSliderTrackView *)self trackBackgroundColor];
  [trackBackgroundColor setFill];

  [v21 fill];
}

@end