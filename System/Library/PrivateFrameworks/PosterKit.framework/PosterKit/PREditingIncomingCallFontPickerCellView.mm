@interface PREditingIncomingCallFontPickerCellView
- (id)imageFromGlyph:(unsigned __int16)glyph fromFontRef:(__CTFont *)ref;
- (id)imageRepresentingFont:(id)font text:(id)text;
- (unsigned)glyphForText:(id)text usingFontRef:(__CTFont *)ref;
- (void)configureWithFont:(id)font text:(id)text;
- (void)displayImage:(id)image;
- (void)displayText:(id)text usingFont:(id)font;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PREditingIncomingCallFontPickerCellView

- (void)configureWithFont:(id)font text:(id)text
{
  fontCopy = font;
  v9.receiver = self;
  v9.super_class = PREditingIncomingCallFontPickerCellView;
  textCopy = text;
  [(PREditingFontPickerCellView *)&v9 configureWithFont:fontCopy text:textCopy];
  if ([textCopy length] == 1)
  {
    v8 = [(PREditingIncomingCallFontPickerCellView *)self imageRepresentingFont:fontCopy text:textCopy];

    if (v8)
    {
      [(PREditingIncomingCallFontPickerCellView *)self displayImage:v8];
    }

    else
    {
      [(PREditingIncomingCallFontPickerCellView *)self displayText:@"Aa" usingFont:fontCopy];
    }
  }

  else
  {
    [(PREditingIncomingCallFontPickerCellView *)self displayText:textCopy usingFont:fontCopy];
    v8 = textCopy;
  }
}

- (void)displayText:(id)text usingFont:(id)font
{
  v31[4] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  textCopy = text;
  contentView = [(PREditingIncomingCallFontPickerCellView *)self contentView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  contentView2 = [(PREditingIncomingCallFontPickerCellView *)self contentView];
  v11 = contentView2;
  if (isKindOfClass)
  {
    v12 = objc_opt_class();
    v13 = v11;
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    [contentView2 removeFromSuperview];

    v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v15 setMinimumScaleFactor:0.5];
    [v15 setTextAlignment:1];
    [v15 setAdjustsFontSizeToFitWidth:1];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PREditingIncomingCallFontPickerCellView *)self addSubview:v15];
    v24 = MEMORY[0x1E696ACD8];
    topAnchor = [v15 topAnchor];
    topAnchor2 = [(PREditingIncomingCallFontPickerCellView *)self topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
    v31[0] = v27;
    bottomAnchor = [v15 bottomAnchor];
    bottomAnchor2 = [(PREditingIncomingCallFontPickerCellView *)self bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-4.0];
    v31[1] = v23;
    [v15 leadingAnchor];
    v16 = v30 = textCopy;
    leadingAnchor = [(PREditingIncomingCallFontPickerCellView *)self leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:leadingAnchor constant:4.0];
    v31[2] = v18;
    trailingAnchor = [v15 trailingAnchor];
    trailingAnchor2 = [(PREditingIncomingCallFontPickerCellView *)self trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-4.0];
    v31[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    [v24 activateConstraints:v22];

    textCopy = v30;
    objc_storeStrong(&self->_contentView, v15);
  }

  [v15 setFont:fontCopy];

  [v15 setText:textCopy];
}

- (void)displayImage:(id)image
{
  v30[4] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  contentView = [(PREditingIncomingCallFontPickerCellView *)self contentView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  contentView2 = [(PREditingIncomingCallFontPickerCellView *)self contentView];
  v8 = contentView2;
  if (isKindOfClass)
  {
    v9 = objc_opt_class();
    v10 = v8;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
  }

  else
  {
    [contentView2 removeFromSuperview];

    v12 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v12 setTintColor:labelColor];

    [v12 setContentMode:1];
    LODWORD(v14) = 1144750080;
    [v12 setContentCompressionResistancePriority:0 forAxis:v14];
    LODWORD(v15) = 1144750080;
    [v12 setContentCompressionResistancePriority:1 forAxis:v15];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PREditingIncomingCallFontPickerCellView *)self addSubview:v12];
    v24 = MEMORY[0x1E696ACD8];
    topAnchor = [v12 topAnchor];
    topAnchor2 = [(PREditingIncomingCallFontPickerCellView *)self topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v30[0] = v27;
    bottomAnchor = [v12 bottomAnchor];
    bottomAnchor2 = [(PREditingIncomingCallFontPickerCellView *)self bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v30[1] = v23;
    leadingAnchor = [v12 leadingAnchor];
    leadingAnchor2 = [(PREditingIncomingCallFontPickerCellView *)self leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v30[2] = v18;
    trailingAnchor = [v12 trailingAnchor];
    trailingAnchor2 = [(PREditingIncomingCallFontPickerCellView *)self trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v30[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
    [v24 activateConstraints:v22];

    objc_storeStrong(&self->_contentView, v12);
  }

  [v12 setImage:imageCopy];
}

- (id)imageRepresentingFont:(id)font text:(id)text
{
  v5 = MEMORY[0x1E69DB878];
  textCopy = text;
  contentFont = [(PREditingFontPickerCellView *)self contentFont];
  fontName = [contentFont fontName];
  v9 = [v5 pr_fontWithName:fontName forRole:@"PRPosterRoleIncomingCall" includingFallbackFonts:0];
  contentFont2 = [(PREditingFontPickerCellView *)self contentFont];
  [contentFont2 pointSize];
  v11 = [v9 fontWithSize:?];

  v12 = [(PREditingIncomingCallFontPickerCellView *)self glyphForText:textCopy usingFontRef:v11];
  if (v12)
  {
    v13 = [(PREditingIncomingCallFontPickerCellView *)self imageFromGlyph:v12 fromFontRef:v11];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)imageFromGlyph:(unsigned __int16)glyph fromFontRef:(__CTFont *)ref
{
  PathForGlyph = CTFontCreatePathForGlyph(ref, glyph, 0);
  [(PREditingFontPickerCellView *)self cellSize];
  v7 = v6;
  v9 = v8;
  PathBoundingBox = CGPathGetPathBoundingBox(PathForGlyph);
  memset(&v22, 0, sizeof(v22));
  CGAffineTransformMakeTranslation(&v22, (v7 - PathBoundingBox.size.width) * 0.5 - PathBoundingBox.origin.x, (v9 - PathBoundingBox.size.height) * 0.5 - PathBoundingBox.origin.y);
  memset(&v21, 0, sizeof(v21));
  CGAffineTransformMakeScale(&v21, 1.0, -1.0);
  memset(&v20, 0, sizeof(v20));
  CGAffineTransformMakeTranslation(&v20, 0.0, v9);
  memset(&v19, 0, sizeof(v19));
  t1 = v21;
  v16 = v20;
  CGAffineTransformConcat(&t2, &t1, &v16);
  t1 = v22;
  CGAffineTransformConcat(&v19, &t1, &t2);
  v10 = MEMORY[0x1AC574030](PathForGlyph, &v19);
  [(PREditingFontPickerCellView *)self cellSize];
  UIGraphicsBeginImageContextWithOptions(v24, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  CGContextSetStrokeColorWithColor(CurrentContext, [clearColor CGColor]);

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  CGContextSetFillColorWithColor(CurrentContext, [labelColor CGColor]);

  CGContextAddPath(CurrentContext, v10);
  CGContextDrawPath(CurrentContext, kCGPathFillStroke);
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  CGPathRelease(PathForGlyph);
  CGPathRelease(v10);

  return v14;
}

- (unsigned)glyphForText:(id)text usingFontRef:(__CTFont *)ref
{
  v13[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  v6 = [textCopy length];
  MEMORY[0x1EEE9AC00](v6);
  v7 = (2 * v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = [textCopy getCharacters:v13 - v7 range:{0, v6}];
  MEMORY[0x1EEE9AC00](v8);
  v9 = (v13 - v7);
  CTFontGetGlyphsForCharacters(ref, (v13 - v7), (v13 - v7), v6);
  if (v6)
  {
    while (1)
    {
      v11 = *v9++;
      v10 = v11;
      if (v11)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v10 = 0;
  }

  return v10;
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = PREditingIncomingCallFontPickerCellView;
  [(PREditingIncomingCallFontPickerCellView *)&v6 traitCollectionDidChange:change];
  contentFont = [(PREditingFontPickerCellView *)self contentFont];
  contentText = [(PREditingFontPickerCellView *)self contentText];
  [(PREditingIncomingCallFontPickerCellView *)self configureWithFont:contentFont text:contentText];
}

@end