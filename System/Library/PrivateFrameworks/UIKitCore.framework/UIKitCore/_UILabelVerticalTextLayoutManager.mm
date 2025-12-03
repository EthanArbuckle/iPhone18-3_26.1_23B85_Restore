@interface _UILabelVerticalTextLayoutManager
- (CGRect)_boundingRectWithString:(id)string size:(CGSize)size options:(int64_t)options context:(id)context;
- (CGRect)boundingRectWithString:(id)string size:(CGSize)size options:(int64_t)options attributes:(id)attributes context:(id)context;
- (_UILabelVerticalTextLayoutManager)initWithConfiguration:(id)configuration;
- (void)_drawWithAttributedString:(id)string rect:(CGRect)rect options:(int64_t)options context:(id)context;
- (void)drawWithString:(id)string rect:(CGRect)rect options:(int64_t)options attributes:(id)attributes context:(id)context;
@end

@implementation _UILabelVerticalTextLayoutManager

- (_UILabelVerticalTextLayoutManager)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = _UILabelVerticalTextLayoutManager;
  v5 = [(_UILabelVerticalTextLayoutManager *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc_init(off_1E70ECBD8);
    layoutManager = v5->_layoutManager;
    v5->_layoutManager = v6;

    v8 = objc_alloc_init(_UIVerticalTextContainer);
    textContainer = v5->_textContainer;
    v5->_textContainer = &v8->super;

    [(NSTextContainer *)v5->_textContainer setLineBreakMode:4];
    -[NSTextContainer setMaximumNumberOfLines:](v5->_textContainer, "setMaximumNumberOfLines:", [configurationCopy numberOfLines]);
    v10 = 0.0;
    [(NSTextContainer *)v5->_textContainer setLineFragmentPadding:0.0];
    if (configurationCopy)
    {
      v10 = configurationCopy[19];
    }

    v5->_scale = v10;
    [(NSTextLayoutManager *)v5->_layoutManager setTextContainer:v5->_textContainer];
    v11 = objc_alloc_init(off_1E70ECBC0);
    contentStorage = v5->_contentStorage;
    v5->_contentStorage = v11;

    [(NSTextLayoutManager *)v5->_layoutManager replaceTextContentManager:v5->_contentStorage];
  }

  return v5;
}

- (CGRect)_boundingRectWithString:(id)string size:(CGSize)size options:(int64_t)options context:(id)context
{
  height = size.height;
  width = size.width;
  [(NSTextContentStorage *)self->_contentStorage setAttributedString:string, options, context];
  [(NSTextContainer *)self->_textContainer size];
  if (v10 != width || v9 != height)
  {
    [(NSTextContainer *)self->_textContainer setSize:width, height];
    layoutManager = self->_layoutManager;
    documentRange = [(NSTextLayoutManager *)layoutManager documentRange];
    [(NSTextLayoutManager *)layoutManager invalidateLayoutForRange:documentRange];
  }

  v14 = self->_layoutManager;
  documentRange2 = [(NSTextLayoutManager *)v14 documentRange];
  [(NSTextLayoutManager *)v14 ensureLayoutForRange:documentRange2];

  [(NSTextLayoutManager *)self->_layoutManager usageBoundsForTextContainer];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  scale = self->_scale;
  UICeilToScale(v23, scale);
  v25 = v24;
  UICeilToScale(v21, scale);
  v27 = v26;
  v28 = v17;
  v29 = v19;
  v30 = v25;
  result.size.height = v30;
  result.size.width = v27;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)boundingRectWithString:(id)string size:(CGSize)size options:(int64_t)options attributes:(id)attributes context:(id)context
{
  height = size.height;
  width = size.width;
  v13 = MEMORY[0x1E696AAB0];
  contextCopy = context;
  attributesCopy = attributes;
  stringCopy = string;
  v17 = [[v13 alloc] initWithString:stringCopy attributes:attributesCopy];

  [(_UILabelVerticalTextLayoutManager *)self _boundingRectWithString:v17 size:options options:contextCopy context:width, height];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)_drawWithAttributedString:(id)string rect:(CGRect)rect options:(int64_t)options context:(id)context
{
  width = rect.size.width;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextTranslateCTM(v9, width, 0.0);
  CGContextRotateCTM(v9, 1.57079633);
  layoutManager = self->_layoutManager;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84___UILabelVerticalTextLayoutManager__drawWithAttributedString_rect_options_context___block_invoke;
  v12[3] = &__block_descriptor_40_e30_B16__0__NSTextLayoutFragment_8l;
  v12[4] = v9;
  v11 = [(NSTextLayoutManager *)layoutManager enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v12];
}

- (void)drawWithString:(id)string rect:(CGRect)rect options:(int64_t)options attributes:(id)attributes context:(id)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = MEMORY[0x1E696AAB0];
  contextCopy = context;
  attributesCopy = attributes;
  stringCopy = string;
  v19 = [[v15 alloc] initWithString:stringCopy attributes:attributesCopy];

  [(_UILabelVerticalTextLayoutManager *)self _drawWithAttributedString:v19 rect:options options:contextCopy context:x, y, width, height];
}

@end