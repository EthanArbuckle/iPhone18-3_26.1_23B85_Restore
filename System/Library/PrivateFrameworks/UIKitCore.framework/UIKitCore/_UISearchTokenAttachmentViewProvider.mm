@interface _UISearchTokenAttachmentViewProvider
- (BOOL)isLastAttachmentBeforeText;
- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position;
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
- (_UISearchTokenAttachmentViewProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location;
- (void)loadView;
@end

@implementation _UISearchTokenAttachmentViewProvider

- (_UISearchTokenAttachmentViewProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location
{
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = _UISearchTokenAttachmentViewProvider;
  v11 = [(NSTextAttachmentViewProvider *)&v14 initWithTextAttachment:attachment parentView:viewCopy textLayoutManager:manager location:location];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_parentView, viewCopy);
  }

  return v12;
}

- (void)loadView
{
  textLayoutManager = [(NSTextAttachmentViewProvider *)self textLayoutManager];
  textContentManager = [textLayoutManager textContentManager];

  v4 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v5 = textContentManager;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    attributedString = [v6 attributedString];
  }

  else
  {
    layoutManager = [(NSTextAttachmentViewProvider *)self layoutManager];
    attributedString = [layoutManager textStorage];
  }

  v9 = [attributedString attribute:*off_1E70EC918 atIndex:-[NSTextAttachmentViewProvider characterIndex](self effectiveRange:{"characterIndex"), 0}];
  v10 = objc_alloc_init(_UISearchAtomView);
  textAttachment = [(NSTextAttachmentViewProvider *)self textAttachment];
  token = [textAttachment token];

  text = [token text];
  textLabel = [(_UISearchAtomView *)v10 textLabel];
  [textLabel setText:text];

  image = [token image];
  leadingImage = [(_UISearchAtomView *)v10 leadingImage];
  [leadingImage setImage:image];

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
  textLayoutManager = [(NSTextAttachmentViewProvider *)self textLayoutManager];
  location = [(NSTextAttachmentViewProvider *)self location];
  v5 = [textLayoutManager locationFromLocation:location withOffset:1];

  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66___UISearchTokenAttachmentViewProvider_isLastAttachmentBeforeText__block_invoke;
    v8[3] = &unk_1E70F8BE0;
    v8[4] = &v9;
    [textLayoutManager enumerateSubstringsFromLocation:v5 options:2 usingBlock:v8];
  }

  v6 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v6;
}

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  y = position.y;
  x = position.x;
  height = fragment.size.height;
  width = fragment.size.width;
  v10 = fragment.origin.y;
  v11 = fragment.origin.x;
  containerCopy = container;
  view = [(NSTextAttachmentViewProvider *)self view];
  [view boundsForTextContainer:containerCopy proposedLineFragment:v11 glyphPosition:{v10, width, height, x, y}];
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

- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position
{
  y = position.y;
  x = position.x;
  height = fragment.size.height;
  width = fragment.size.width;
  v11 = fragment.origin.y;
  v12 = fragment.origin.x;
  containerCopy = container;
  view = [(NSTextAttachmentViewProvider *)self view];
  [view setIsLastSearchToken:{-[_UISearchTokenAttachmentViewProvider isLastAttachmentBeforeText](self, "isLastAttachmentBeforeText")}];
  [view boundsForTextContainer:containerCopy proposedLineFragment:v12 glyphPosition:{v11, width, height, x, y}];
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