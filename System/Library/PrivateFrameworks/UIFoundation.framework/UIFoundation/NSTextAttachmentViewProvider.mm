@interface NSTextAttachmentViewProvider
+ (BOOL)acceptsViewProviderForContext:(CGContext *)a3;
- (CGRect)attachmentBoundsForAttributes:(NSDictionary *)attributes location:(id)location textContainer:(NSTextContainer *)textContainer proposedLineFragment:(CGRect)proposedLineFragment position:(CGPoint)position;
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6;
- (NSTextAttachmentViewProvider)initWithTextAttachment:(NSTextAttachment *)textAttachment parentView:(UIView *)parentView textLayoutManager:(NSTextLayoutManager *)textLayoutManager location:(id)location;
- (NSTextAttachmentViewProvider)initWithTextAttachment:(id)a3 parentView:(id)a4 characterIndex:(unint64_t)a5 layoutManager:(id)a6;
- (UIView)view;
- (void)dealloc;
- (void)removeView;
- (void)setView:(UIView *)view;
@end

@implementation NSTextAttachmentViewProvider

- (UIView)view
{
  if (!self->_view)
  {
    [(NSTextAttachmentViewProvider *)self loadView];
  }

  objc_sync_enter(self);
  v3 = self->_view;
  objc_sync_exit(self);
  return v3;
}

- (NSTextAttachmentViewProvider)initWithTextAttachment:(NSTextAttachment *)textAttachment parentView:(UIView *)parentView textLayoutManager:(NSTextLayoutManager *)textLayoutManager location:(id)location
{
  v12.receiver = self;
  v12.super_class = NSTextAttachmentViewProvider;
  v9 = [(NSTextAttachmentViewProvider *)&v12 init:textAttachment];
  v10 = v9;
  if (v9)
  {
    [(NSTextAttachmentViewProvider *)v9 setTextAttachment:textAttachment];
    v10->_location = location;
    [(NSTextAttachmentViewProvider *)v10 setTracksTextAttachmentViewBounds:0];
    [(NSTextAttachmentViewProvider *)v10 setTextLayoutManager:textLayoutManager];
  }

  return v10;
}

- (void)setView:(UIView *)view
{
  if (self->_view != view)
  {
    objc_sync_enter(self);

    self->_view = view;

    objc_sync_exit(self);
  }
}

- (void)removeView
{
  v3 = [(NSTextAttachmentViewProvider *)self view];
  if (v3)
  {
    v4 = v3;
    v5 = [(NSTextAttachmentViewProvider *)self textAttachment];
    v6 = [(UIView *)v4 superview];

    [(NSTextAttachment *)v5 detachView:v4 fromParentView:v6];
  }
}

- (void)dealloc
{
  view = self->_view;
  if (view)
  {
    [[(NSTextAttachmentViewProvider *)self textAttachment] detachView:view fromParentView:[(UIView *)view superview]];
    v4 = self->_view;
  }

  else
  {
    v4 = 0;
  }

  [(NSTextAttachmentViewProvider *)self setTextAttachment:0];
  [(NSTextAttachmentViewProvider *)self setTextLayoutManager:0];
  [(NSTextAttachmentViewProvider *)self setLayoutManager:0];
  v5.receiver = self;
  v5.super_class = NSTextAttachmentViewProvider;
  [(NSTextAttachmentViewProvider *)&v5 dealloc];
}

- (CGRect)attachmentBoundsForAttributes:(NSDictionary *)attributes location:(id)location textContainer:(NSTextContainer *)textContainer proposedLineFragment:(CGRect)proposedLineFragment position:(CGPoint)position
{
  v7 = MEMORY[0x1E696AA80];
  v8 = *MEMORY[0x1E696AA80];
  v9 = *(MEMORY[0x1E696AA80] + 8);
  v10 = [(NSTextAttachmentViewProvider *)self view:attributes];
  if (v10)
  {
    [(UIView *)v10 intrinsicContentSize];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = *(v7 + 16);
    v14 = *(v7 + 24);
  }

  v15 = v8;
  v16 = v9;
  result.size.height = v14;
  result.size.width = v12;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (NSTextAttachmentViewProvider)initWithTextAttachment:(id)a3 parentView:(id)a4 characterIndex:(unint64_t)a5 layoutManager:(id)a6
{
  v11 = [[NSCountableTextLocation alloc] initWithIndex:a5];
  v12 = [(NSTextAttachmentViewProvider *)self initWithTextAttachment:a3 parentView:a4 textLayoutManager:0 location:v11];
  v13 = v12;
  if (v12)
  {
    [(NSTextAttachmentViewProvider *)v12 setLayoutManager:a6];
    v13->_characterIndex = a5;
  }

  return v13;
}

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6
{
  v6 = MEMORY[0x1E696AA80];
  v7 = *MEMORY[0x1E696AA80];
  v8 = *(MEMORY[0x1E696AA80] + 8);
  v9 = [(NSTextAttachmentViewProvider *)self view:a3];
  if (v9)
  {
    [(UIView *)v9 intrinsicContentSize];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v11 = *(v6 + 16);
    v13 = *(v6 + 24);
  }

  v14 = v7;
  v15 = v8;
  result.size.height = v13;
  result.size.width = v11;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

+ (BOOL)acceptsViewProviderForContext:(CGContext *)a3
{
  if (a3)
  {
    Type = CGContextGetType();
    if (Type <= 9)
    {
      v4 = 0x1E9u >> Type;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

@end