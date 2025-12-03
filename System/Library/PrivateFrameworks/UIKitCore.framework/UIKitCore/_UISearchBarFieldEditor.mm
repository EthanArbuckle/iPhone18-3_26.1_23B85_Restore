@interface _UISearchBarFieldEditor
- (BOOL)layoutManager:(id)manager shouldSetLineFragmentRect:(CGRect *)rect lineFragmentUsedRect:(CGRect *)usedRect baselineOffset:(double *)offset inTextContainer:(id)container forGlyphRange:(_NSRange)range;
- (id)selectionRectsForRange:(id)range;
- (void)_updateTokenViews;
- (void)activateEditor;
- (void)deactivateEditorDiscardingEdits:(BOOL)edits;
- (void)layoutManager:(id)manager didCompleteLayoutForTextContainer:(id)container atEnd:(BOOL)end;
- (void)layoutSubviews;
@end

@implementation _UISearchBarFieldEditor

- (void)_updateTokenViews
{
  textField = [(UIFieldEditor *)self textField];
  _textCanvasView = [textField _textCanvasView];

  if (objc_opt_respondsToSelector())
  {
    [_textCanvasView _updateTokenViews];
  }
}

- (void)layoutSubviews
{
  flags = self->_flags;
  if ((flags & 1) == 0)
  {
    *&self->_flags = flags | 1;
  }

  v5.receiver = self;
  v5.super_class = _UISearchBarFieldEditor;
  [(UIFieldEditor *)&v5 layoutSubviews];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41___UISearchBarFieldEditor_layoutSubviews__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [UIView performWithoutAnimation:v4];
  if ((flags & 1) == 0)
  {
    *&self->_flags &= ~1u;
  }
}

- (void)activateEditor
{
  v4.receiver = self;
  v4.super_class = _UISearchBarFieldEditor;
  [(UIFieldEditor *)&v4 activateEditor];
  textField = [(UIFieldEditor *)self textField];
  [textField _updateAtomViewSelection:1];
}

- (void)deactivateEditorDiscardingEdits:(BOOL)edits
{
  editsCopy = edits;
  textField = [(UIFieldEditor *)self textField];
  [textField _updateAtomViewSelection:0];

  v6.receiver = self;
  v6.super_class = _UISearchBarFieldEditor;
  [(UIFieldEditor *)&v6 deactivateEditorDiscardingEdits:editsCopy];
}

- (BOOL)layoutManager:(id)manager shouldSetLineFragmentRect:(CGRect *)rect lineFragmentUsedRect:(CGRect *)usedRect baselineOffset:(double *)offset inTextContainer:(id)container forGlyphRange:(_NSRange)range
{
  v11 = [(UIFieldEditor *)self _textStorage:manager];
  font = [v11 font];

  [font ascender];
  *offset = v13;
  [font lineHeight];
  usedRect->size.height = v14;
  rect->size.height = v14;

  return 1;
}

- (void)layoutManager:(id)manager didCompleteLayoutForTextContainer:(id)container atEnd:(BOOL)end
{
  endCopy = end;
  managerCopy = manager;
  containerCopy = container;
  if (endCopy && (*&self->_flags & 1) == 0)
  {
    [(UIScrollView *)self setNeedsLayout];
  }
}

- (id)selectionRectsForRange:(id)range
{
  rangeCopy = range;
  array = [MEMORY[0x1E695DF70] array];
  v6 = objc_opt_new();
  textStorage = [(UIFieldEditor *)self textStorage];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50___UISearchBarFieldEditor_selectionRectsForRange___block_invoke;
  v14[3] = &unk_1E70F83A8;
  v14[4] = self;
  v15 = rangeCopy;
  v16 = v6;
  v8 = array;
  v17 = v8;
  v9 = v6;
  v10 = rangeCopy;
  [textStorage coordinateReading:v14];

  v11 = v17;
  v12 = v8;

  return v8;
}

@end