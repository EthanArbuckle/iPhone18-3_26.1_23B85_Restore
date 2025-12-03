@interface _TVInspectorHighlightMetadataView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TVInspectorHighlightMetadataView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation _TVInspectorHighlightMetadataView

- (_TVInspectorHighlightMetadataView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = _TVInspectorHighlightMetadataView;
  v3 = [(_TVInspectorHighlightMetadataView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    descriptionLabel = v3->_descriptionLabel;
    v3->_descriptionLabel = v9;

    [(UILabel *)v3->_descriptionLabel setLineBreakMode:4];
    [(UILabel *)v3->_descriptionLabel setNumberOfLines:1];
    [(_TVInspectorHighlightMetadataView *)v3 addSubview:v3->_descriptionLabel];
    v11 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    frameLabel = v3->_frameLabel;
    v3->_frameLabel = v11;

    [(UILabel *)v3->_frameLabel setNumberOfLines:1];
    [(_TVInspectorHighlightMetadataView *)v3 addSubview:v3->_frameLabel];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  frameLabel = [(_TVInspectorHighlightMetadataView *)self frameLabel];
  [frameLabel sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  descriptionLabel = [(_TVInspectorHighlightMetadataView *)self descriptionLabel];
  [descriptionLabel sizeThatFits:{width, height}];
  v13 = v12;
  v15 = v14;

  v16 = v8 + 5.0 + 5.0;
  v17 = v16 + 100.0 + 5.0;
  if (v16 + v13 + 5.0 <= width)
  {
    v17 = v16 + v13 + 5.0;
  }

  if (v10 >= v15)
  {
    v18 = v10;
  }

  else
  {
    v18 = v15;
  }

  result.height = v18;
  result.width = v17;
  return result;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = _TVInspectorHighlightMetadataView;
  [(_TVInspectorHighlightMetadataView *)&v24 layoutSubviews];
  [(_TVInspectorHighlightMetadataView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  frameLabel = [(_TVInspectorHighlightMetadataView *)self frameLabel];
  [frameLabel sizeThatFits:{v8, v10}];
  v13 = v12;
  v15 = v14;

  descriptionLabel = [(_TVInspectorHighlightMetadataView *)self descriptionLabel];
  [descriptionLabel sizeThatFits:{v8, v10}];
  v23 = v17;

  frameLabel2 = [(_TVInspectorHighlightMetadataView *)self frameLabel];
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  v19 = CGRectGetMaxX(v25) + -5.0 - v13;
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  [frameLabel2 setFrame:{v19, CGRectGetMidY(v26) - v15 * 0.5, v13, v15}];

  descriptionLabel2 = [(_TVInspectorHighlightMetadataView *)self descriptionLabel];
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  v21 = CGRectGetMidY(v27) - v23 * 0.5;
  frameLabel3 = [(_TVInspectorHighlightMetadataView *)self frameLabel];
  [frameLabel3 frame];
  [descriptionLabel2 setFrame:{5.0, v21, CGRectGetMinX(v28) + -5.0 + -5.0, v23}];
}

@end