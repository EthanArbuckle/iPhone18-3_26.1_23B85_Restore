@interface UIKeyboardTransitionSlice
+ (UIKeyboardTransitionSlice)sliceWithStart:(CGRect)a3 end:(CGRect)a4;
- (CGRect)endRect;
- (CGRect)startRect;
- (UIKeyboardTransitionSlice)init;
- (id)description;
- (void)addStartRect:(CGRect)a3 end:(CGRect)a4;
@end

@implementation UIKeyboardTransitionSlice

- (UIKeyboardTransitionSlice)init
{
  v10.receiver = self;
  v10.super_class = UIKeyboardTransitionSlice;
  v2 = [(UIKeyboardTransitionSlice *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x1E695F050];
    v5 = *(MEMORY[0x1E695F050] + 16);
    *(v2 + 8) = *MEMORY[0x1E695F050];
    *(v2 + 24) = v5;
    *(v2 + 40) = v4;
    *(v2 + 56) = v5;
    v6 = *(v2 + 9);
    *(v2 + 9) = 0;

    endToken = v3->_endToken;
    v3->_endToken = 0;

    v3->_normalization = 0;
    v3->_delayCrossfade = 0;
    v8 = v3;
  }

  return v3;
}

+ (UIKeyboardTransitionSlice)sliceWithStart:(CGRect)a3 end:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v12 = objc_alloc_init(a1);
  [v12 setStartRect:{v11, v10, v9, v8}];
  [v12 setEndRect:{x, y, width, height}];

  return v12;
}

- (void)addStartRect:(CGRect)a3 end:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  self->_startRect = CGRectUnion(self->_startRect, a3);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  self->_endRect = CGRectUnion(self->_endRect, v9);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromCGRect(self->_startRect);
  v5 = NSStringFromCGRect(self->_endRect);
  v6 = [v3 stringWithFormat:@"%@ : %@", v4, v5];

  return v6;
}

- (CGRect)startRect
{
  objc_copyStruct(v6, &self->_startRect, 32, 1, 0);
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

- (CGRect)endRect
{
  objc_copyStruct(v6, &self->_endRect, 32, 1, 0);
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