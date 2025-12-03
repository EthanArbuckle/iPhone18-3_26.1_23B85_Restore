@interface UITextAttachmentView
- (CGPoint)cellBaselineOffset;
- (CGRect)cellFrameForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
- (CGSize)cellSize;
- (NSTextAttachment)attachment;
- (UITextAttachmentView)initWithContentView:(id)view;
- (UITextAttachmentView)initWithTextAttachment:(id)attachment image:(id)image;
- (id)contentView;
- (void)drawWithFrame:(CGRect)frame inView:(id)view characterIndex:(unint64_t)index layoutManager:(id)manager;
@end

@implementation UITextAttachmentView

- (UITextAttachmentView)initWithContentView:(id)view
{
  viewCopy = view;
  [viewCopy frame];
  v8.receiver = self;
  v8.super_class = UITextAttachmentView;
  v5 = [(UIView *)&v8 initWithFrame:0.0, 0.0];
  if (v5)
  {
    [viewCopy setAutoresizingMask:18];
    [(UIView *)v5 addSubview:viewCopy];
    v6 = +[UIColor clearColor];
    [(UIView *)v5 setBackgroundColor:v6];
  }

  return v5;
}

- (UITextAttachmentView)initWithTextAttachment:(id)attachment image:(id)image
{
  attachmentCopy = attachment;
  imageCopy = image;
  v8 = MEMORY[0x1E6982C40];
  fileType = [attachmentCopy fileType];
  v10 = [v8 _typeWithIdentifier:fileType allowUndeclared:1];

  if (([v10 conformsToType:*MEMORY[0x1E6982DE8]] & 1) != 0 || objc_msgSend(v10, "conformsToType:", *MEMORY[0x1E6982F28]))
  {
    if (imageCopy)
    {
      v11 = [[_UIAnimatedAttachmentView alloc] initWithAttachment:attachmentCopy];
      goto LABEL_8;
    }
  }

  else
  {
    v12 = [v10 conformsToType:*MEMORY[0x1E6982E30]];
    if (imageCopy && v12)
    {
      v11 = [(UIImageView *)[_UITextAttachmentImageView alloc] initWithImage:imageCopy];
LABEL_8:
      v13 = v11;
      if (v11)
      {
        goto LABEL_10;
      }
    }
  }

  v13 = [(UIImageView *)[_UITextAttachmentPlaceholderView alloc] initWithImage:imageCopy];
LABEL_10:
  v14 = [(UITextAttachmentView *)self initWithContentView:v13];
  v15 = v14;
  if (v14)
  {
    [(UITextAttachmentView *)v14 setAttachment:attachmentCopy];
  }

  return v15;
}

- (id)contentView
{
  subviews = [(UIView *)self subviews];
  lastObject = [subviews lastObject];

  return lastObject;
}

- (CGSize)cellSize
{
  attachment = [(UITextAttachmentView *)self attachment];
  [attachment bounds];
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
  attachment = [(UITextAttachmentView *)self attachment];
  [attachment bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)drawWithFrame:(CGRect)frame inView:(id)view characterIndex:(unint64_t)index layoutManager:(id)manager
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  managerCopy = manager;
  if (pthread_main_np() == 1)
  {
    [(UIView *)self setFrame:x, y, width, height];
    if (viewCopy && managerCopy)
    {
      v14 = [managerCopy temporaryAttributesAtCharacterIndex:index effectiveRange:0];
      v15 = [v14 objectForKey:@"NSViewTextAttachmentCellHelper"];

      if (!v15)
      {
        attachment = [(UITextAttachmentView *)self attachment];
        v15 = [_UITextAttachmentViewHelper helperForAttachment:attachment];

        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v15, @"NSViewTextAttachmentCellHelper", 0}];
        [managerCopy addTemporaryAttributes:v17 forCharacterRange:{index, 1}];
      }

      superview = [(UIView *)self superview];

      if (superview != viewCopy)
      {
        [(UIView *)self removeFromSuperview];
        [viewCopy addSubview:self];
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
      layer = [(UIView *)self layer];
      [layer renderInContext:v24];

      CGContextRestoreGState(v24);
    }
  }

  else
  {
    attachment2 = [(UITextAttachmentView *)self attachment];
    image = [attachment2 image];

    if (image)
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
      cGImage = [image CGImage];
      v31.origin.x = v25;
      v31.origin.y = v26;
      v31.size.width = width;
      v31.size.height = height;
      CGContextDrawImage(v22, v31, cGImage);
      CGContextRestoreGState(v22);
    }
  }
}

- (CGRect)cellFrameForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  y = position.y;
  x = position.x;
  height = fragment.size.height;
  width = fragment.size.width;
  v11 = fragment.origin.y;
  v12 = fragment.origin.x;
  containerCopy = container;
  attachment = [(UITextAttachmentView *)self attachment];
  [attachment attachmentBoundsForTextContainer:containerCopy proposedLineFragment:index glyphPosition:v12 characterIndex:{v11, width, height, x, y}];
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