@interface SUStrokeEdgesImageModifier
- (BOOL)isEqual:(id)a3;
- (UIEdgeInsets)edgeInsets;
- (void)dealloc;
- (void)drawAfterImageForContext:(CGContext *)a3 imageFrame:(CGRect)a4 finalSize:(CGSize)a5;
@end

@implementation SUStrokeEdgesImageModifier

- (void)dealloc
{
  self->_strokeColor = 0;
  v3.receiver = self;
  v3.super_class = SUStrokeEdgesImageModifier;
  [(SUStrokeEdgesImageModifier *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ((-[SUStrokeEdgesImageModifier edgeInsets](self, "edgeInsets"), v6 = v5, v8 = v7, v10 = v9, v12 = v11, [a3 edgeInsets], v8 == v16) ? (v17 = v6 == v13) : (v17 = 0), v17 ? (v18 = v12 == v15) : (v18 = 0), v18 ? (v19 = v10 == v14) : (v19 = 0), v19 && (v20 = -[SUStrokeEdgesImageModifier fitToImage](self, "fitToImage"), v20 == objc_msgSend(a3, "fitToImage"))))
  {
    v21 = -[UIColor isEqual:](-[SUStrokeEdgesImageModifier strokeColor](self, "strokeColor"), "isEqual:", [a3 strokeColor]);
    if (v21)
    {
      v22 = [(SUStrokeEdgesImageModifier *)self strokeCurrentPath];
      LOBYTE(v21) = v22 ^ [a3 strokeCurrentPath] ^ 1;
    }
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21;
}

- (void)drawAfterImageForContext:(CGContext *)a3 imageFrame:(CGRect)a4 finalSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.size.height;
  v8 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  CGContextSetCompositeOperation();
  [(SUStrokeEdgesImageModifier *)self edgeInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if ([(SUStrokeEdgesImageModifier *)self strokeCurrentPath])
  {
    if (v12 >= v16)
    {
      v19 = v12;
    }

    else
    {
      v19 = v16;
    }

    if (v14 >= v18)
    {
      v20 = v14;
    }

    else
    {
      v20 = v18;
    }

    if (v19 < v20)
    {
      v19 = v20;
    }

    CGContextSetLineWidth(a3, v19);
    CGContextSetStrokeColorWithColor(a3, [(UIColor *)[(SUStrokeEdgesImageModifier *)self strokeColor] CGColor]);

    CGContextStrokePath(a3);
  }

  else
  {
    v33 = v16;
    CGContextSetFillColorWithColor(a3, [(UIColor *)[(SUStrokeEdgesImageModifier *)self strokeColor] CGColor]);
    v21 = *(MEMORY[0x1E695F058] + 8);
    v32 = *MEMORY[0x1E695F058];
    v22 = [(SUStrokeEdgesImageModifier *)self fitToImage];
    if (height >= width)
    {
      v23 = height;
    }

    else
    {
      v23 = width;
    }

    if (height >= width)
    {
      v24 = width;
    }

    else
    {
      v24 = height;
    }

    if (v8 > v7)
    {
      v25 = v24;
    }

    else
    {
      v25 = v23;
    }

    if (v8 <= v7)
    {
      v23 = v24;
    }

    if (v22)
    {
      v26 = y;
    }

    else
    {
      v7 = v25;
      v8 = v23;
      v26 = v21;
    }

    if (v22)
    {
      v27 = x;
    }

    else
    {
      v27 = v32;
    }

    v36 = v8 - v14;
    if (v12 > 0.00000011920929)
    {
      v38.size.width = v36 - v18;
      v38.origin.x = v14 + v27;
      v38.origin.y = v26;
      v38.size.height = v12;
      CGContextFillRect(a3, v38);
    }

    if (v18 > 0.00000011920929)
    {
      v39.origin.x = v27;
      v39.origin.y = v26;
      v39.size.width = v8;
      v39.size.height = v7;
      v40.origin.x = CGRectGetMaxX(v39) - v18;
      v40.origin.y = v26;
      v40.size.width = v18;
      v40.size.height = v7;
      CGContextFillRect(a3, v40);
    }

    if (v33 > 0.00000011920929)
    {
      v41.origin.x = v27;
      v41.origin.y = v26;
      v41.size.width = v8;
      v41.size.height = v7;
      v42.origin.y = CGRectGetMaxY(v41) - v33;
      v42.size.width = v36 - v18;
      v42.origin.x = v14 + v27;
      v42.size.height = v33;
      CGContextFillRect(a3, v42);
    }

    if (v14 > 0.00000011920929)
    {
      v28 = v27;
      v29 = v26;
      v30 = v14;
      v31 = v7;

      CGContextFillRect(a3, *&v28);
    }
  }
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end