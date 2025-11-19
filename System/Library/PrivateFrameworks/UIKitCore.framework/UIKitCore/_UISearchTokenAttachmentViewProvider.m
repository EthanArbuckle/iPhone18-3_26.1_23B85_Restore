@interface _UISearchTokenAttachmentViewProvider
- (BOOL)isLastAttachmentBeforeText;
- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7;
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6;
- (_UISearchTokenAttachmentViewProvider)initWithTextAttachment:(id)a3 parentView:(id)a4 textLayoutManager:(id)a5 location:(id)a6;
- (void)loadView;
@end

@implementation _UISearchTokenAttachmentViewProvider

- (_UISearchTokenAttachmentViewProvider)initWithTextAttachment:(id)a3 parentView:(id)a4 textLayoutManager:(id)a5 location:(id)a6
{
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _UISearchTokenAttachmentViewProvider;
  v11 = [(NSTextAttachmentViewProvider *)&v14 initWithTextAttachment:a3 parentView:v10 textLayoutManager:a5 location:a6];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_parentView, v10);
  }

  return v12;
}

- (void)loadView
{
  v3 = [(NSTextAttachmentViewProvider *)self textLayoutManager];
  v19 = [v3 textContentManager];

  v4 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v5 = v19;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 attributedString];
  }

  else
  {
    v8 = [(NSTextAttachmentViewProvider *)self layoutManager];
    v7 = [v8 textStorage];
  }

  v9 = [v7 attribute:*off_1E70EC918 atIndex:-[NSTextAttachmentViewProvider characterIndex](self effectiveRange:{"characterIndex"), 0}];
  v10 = objc_alloc_init(_UISearchAtomView);
  v11 = [(NSTextAttachmentViewProvider *)self textAttachment];
  v12 = [v11 token];

  v13 = [v12 text];
  v14 = [(_UISearchAtomView *)v10 textLabel];
  [v14 setText:v13];

  v15 = [v12 image];
  v16 = [(_UISearchAtomView *)v10 leadingImage];
  [v16 setImage:v15];

  [(_UISearchAtomView *)v10 setAtomFont:v9];
  WeakRetained = objc_loadWeakRetained(&self->_parentView);
  [WeakRetained bounds];
  [(_UISearchAtomView *)v10 setViewportWidth:CGRectGetWidth(v21)];

  v18 = [[_UISearchTokenLayoutView alloc] initWithDelegateView:v10];
  [(NSTextAttachmentViewProvider *)self setView:v18];
}

- (BOOL)isLastAttachmentBeforeText
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(NSTextAttachmentViewProvider *)self textLayoutManager];
  v4 = [(NSTextAttachmentViewProvider *)self location];
  v5 = [v3 locationFromLocation:v4 withOffset:1];

  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66___UISearchTokenAttachmentViewProvider_isLastAttachmentBeforeText__block_invoke;
    v8[3] = &unk_1E70F8BE0;
    v8[4] = &v9;
    [v3 enumerateSubstringsFromLocation:v5 options:2 usingBlock:v8];
  }

  v6 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v6;
}

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6
{
  y = a5.y;
  x = a5.x;
  height = a4.size.height;
  width = a4.size.width;
  v10 = a4.origin.y;
  v11 = a4.origin.x;
  v13 = a3;
  v14 = [(NSTextAttachmentViewProvider *)self view];
  [v14 boundsForTextContainer:v13 proposedLineFragment:v11 glyphPosition:{v10, width, height, x, y}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  height = a6.size.height;
  width = a6.size.width;
  v11 = a6.origin.y;
  v12 = a6.origin.x;
  v14 = a5;
  v15 = [(NSTextAttachmentViewProvider *)self view];
  [v15 setIsLastSearchToken:{-[_UISearchTokenAttachmentViewProvider isLastAttachmentBeforeText](self, "isLastAttachmentBeforeText")}];
  [v15 boundsForTextContainer:v14 proposedLineFragment:v12 glyphPosition:{v11, width, height, x, y}];
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

@end