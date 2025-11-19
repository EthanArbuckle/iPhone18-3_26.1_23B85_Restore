@interface UITextAttachmentView
- (CGPoint)cellBaselineOffset;
- (CGRect)cellFrameForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6;
- (CGSize)cellSize;
- (NSTextAttachment)attachment;
- (UITextAttachmentView)initWithContentView:(id)a3;
- (UITextAttachmentView)initWithTextAttachment:(id)a3 image:(id)a4;
- (id)contentView;
- (void)drawWithFrame:(CGRect)a3 inView:(id)a4 characterIndex:(unint64_t)a5 layoutManager:(id)a6;
@end

@implementation UITextAttachmentView

- (UITextAttachmentView)initWithContentView:(id)a3
{
  v4 = a3;
  [v4 frame];
  v8.receiver = self;
  v8.super_class = UITextAttachmentView;
  v5 = [(UIView *)&v8 initWithFrame:0.0, 0.0];
  if (v5)
  {
    [v4 setAutoresizingMask:18];
    [(UIView *)v5 addSubview:v4];
    v6 = +[UIColor clearColor];
    [(UIView *)v5 setBackgroundColor:v6];
  }

  return v5;
}

- (UITextAttachmentView)initWithTextAttachment:(id)a3 image:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E6982C40];
  v9 = [v6 fileType];
  v10 = [v8 _typeWithIdentifier:v9 allowUndeclared:1];

  if (([v10 conformsToType:*MEMORY[0x1E6982DE8]] & 1) != 0 || objc_msgSend(v10, "conformsToType:", *MEMORY[0x1E6982F28]))
  {
    if (v7)
    {
      v11 = [[_UIAnimatedAttachmentView alloc] initWithAttachment:v6];
      goto LABEL_8;
    }
  }

  else
  {
    v12 = [v10 conformsToType:*MEMORY[0x1E6982E30]];
    if (v7 && v12)
    {
      v11 = [(UIImageView *)[_UITextAttachmentImageView alloc] initWithImage:v7];
LABEL_8:
      v13 = v11;
      if (v11)
      {
        goto LABEL_10;
      }
    }
  }

  v13 = [(UIImageView *)[_UITextAttachmentPlaceholderView alloc] initWithImage:v7];
LABEL_10:
  v14 = [(UITextAttachmentView *)self initWithContentView:v13];
  v15 = v14;
  if (v14)
  {
    [(UITextAttachmentView *)v14 setAttachment:v6];
  }

  return v15;
}

- (id)contentView
{
  v2 = [(UIView *)self subviews];
  v3 = [v2 lastObject];

  return v3;
}

- (CGSize)cellSize
{
  v2 = [(UITextAttachmentView *)self attachment];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGPoint)cellBaselineOffset
{
  v2 = [(UITextAttachmentView *)self attachment];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)drawWithFrame:(CGRect)a3 inView:(id)a4 characterIndex:(unint64_t)a5 layoutManager:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v29 = a4;
  v13 = a6;
  if (pthread_main_np() == 1)
  {
    [(UIView *)self setFrame:x, y, width, height];
    if (v29 && v13)
    {
      v14 = [v13 temporaryAttributesAtCharacterIndex:a5 effectiveRange:0];
      v15 = [v14 objectForKey:@"NSViewTextAttachmentCellHelper"];

      if (!v15)
      {
        v16 = [(UITextAttachmentView *)self attachment];
        v15 = [_UITextAttachmentViewHelper helperForAttachment:v16];

        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v15, @"NSViewTextAttachmentCellHelper", 0}];
        [v13 addTemporaryAttributes:v17 forCharacterRange:{a5, 1}];
      }

      v18 = [(UIView *)self superview];

      if (v18 != v29)
      {
        [(UIView *)self removeFromSuperview];
        [v29 addSubview:self];
      }
    }

    else
    {
      ContextStack = GetContextStack(0);
      if (*ContextStack < 1)
      {
        v24 = 0;
      }

      else
      {
        v24 = ContextStack[3 * (*ContextStack - 1) + 1];
      }

      CGContextSaveGState(v24);
      CGContextTranslateCTM(v24, x, y);
      v28 = [(UIView *)self layer];
      [v28 renderInContext:v24];

      CGContextRestoreGState(v24);
    }
  }

  else
  {
    v19 = [(UITextAttachmentView *)self attachment];
    v20 = [v19 image];

    if (v20)
    {
      v21 = GetContextStack(0);
      if (*v21 < 1)
      {
        v22 = 0;
      }

      else
      {
        v22 = v21[3 * (*v21 - 1) + 1];
      }

      CGContextSaveGState(v22);
      CGContextTranslateCTM(v22, x, y + height);
      v25 = *MEMORY[0x1E695EFF8];
      v26 = *(MEMORY[0x1E695EFF8] + 8);
      CGContextScaleCTM(v22, 1.0, -1.0);
      v27 = [v20 CGImage];
      v31.origin.x = v25;
      v31.origin.y = v26;
      v31.size.width = width;
      v31.size.height = height;
      CGContextDrawImage(v22, v31, v27);
      CGContextRestoreGState(v22);
    }
  }
}

- (CGRect)cellFrameForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6
{
  y = a5.y;
  x = a5.x;
  height = a4.size.height;
  width = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  v14 = a3;
  v15 = [(UITextAttachmentView *)self attachment];
  [v15 attachmentBoundsForTextContainer:v14 proposedLineFragment:a6 glyphPosition:v12 characterIndex:{v11, width, height, x, y}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (NSTextAttachment)attachment
{
  WeakRetained = objc_loadWeakRetained(&self->_attachment);

  return WeakRetained;
}

@end