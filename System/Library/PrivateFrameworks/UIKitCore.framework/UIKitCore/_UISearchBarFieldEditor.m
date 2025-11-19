@interface _UISearchBarFieldEditor
- (BOOL)layoutManager:(id)a3 shouldSetLineFragmentRect:(CGRect *)a4 lineFragmentUsedRect:(CGRect *)a5 baselineOffset:(double *)a6 inTextContainer:(id)a7 forGlyphRange:(_NSRange)a8;
- (id)selectionRectsForRange:(id)a3;
- (void)_updateTokenViews;
- (void)activateEditor;
- (void)deactivateEditorDiscardingEdits:(BOOL)a3;
- (void)layoutManager:(id)a3 didCompleteLayoutForTextContainer:(id)a4 atEnd:(BOOL)a5;
- (void)layoutSubviews;
@end

@implementation _UISearchBarFieldEditor

- (void)_updateTokenViews
{
  v2 = [(UIFieldEditor *)self textField];
  v3 = [v2 _textCanvasView];

  if (objc_opt_respondsToSelector())
  {
    [v3 _updateTokenViews];
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
  v3 = [(UIFieldEditor *)self textField];
  [v3 _updateAtomViewSelection:1];
}

- (void)deactivateEditorDiscardingEdits:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIFieldEditor *)self textField];
  [v5 _updateAtomViewSelection:0];

  v6.receiver = self;
  v6.super_class = _UISearchBarFieldEditor;
  [(UIFieldEditor *)&v6 deactivateEditorDiscardingEdits:v3];
}

- (BOOL)layoutManager:(id)a3 shouldSetLineFragmentRect:(CGRect *)a4 lineFragmentUsedRect:(CGRect *)a5 baselineOffset:(double *)a6 inTextContainer:(id)a7 forGlyphRange:(_NSRange)a8
{
  v11 = [(UIFieldEditor *)self _textStorage:a3];
  v12 = [v11 font];

  [v12 ascender];
  *a6 = v13;
  [v12 lineHeight];
  a5->size.height = v14;
  a4->size.height = v14;

  return 1;
}

- (void)layoutManager:(id)a3 didCompleteLayoutForTextContainer:(id)a4 atEnd:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v8 = a4;
  if (v5 && (*&self->_flags & 1) == 0)
  {
    [(UIScrollView *)self setNeedsLayout];
  }
}

- (id)selectionRectsForRange:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = objc_opt_new();
  v7 = [(UIFieldEditor *)self textStorage];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50___UISearchBarFieldEditor_selectionRectsForRange___block_invoke;
  v14[3] = &unk_1E70F83A8;
  v14[4] = self;
  v15 = v4;
  v16 = v6;
  v8 = v5;
  v17 = v8;
  v9 = v6;
  v10 = v4;
  [v7 coordinateReading:v14];

  v11 = v17;
  v12 = v8;

  return v8;
}

@end