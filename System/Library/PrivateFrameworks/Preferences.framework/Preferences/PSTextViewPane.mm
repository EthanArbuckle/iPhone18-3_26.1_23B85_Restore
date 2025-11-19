@interface PSTextViewPane
- (PSTextViewPane)initWithFrame:(CGRect)a3;
- (void)setPreferenceSpecifier:(id)a3;
@end

@implementation PSTextViewPane

- (PSTextViewPane)initWithFrame:(CGRect)a3
{
  v31[4] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = PSTextViewPane;
  v3 = [(PSEditingPane *)&v30 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DD168] textViewUsingTextLayoutManager:0];
    textView = v3->_textView;
    v3->_textView = v4;

    [(UITextView *)v3->_textView setEditable:0];
    v6 = v3->_textView;
    v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UITextView *)v6 setBackgroundColor:v7];

    [(UITextView *)v3->_textView setOpaque:1];
    v8 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v8 scale];

    v9 = v3->_textView;
    v10 = UISystemFontForSize();
    [(UITextView *)v9 setFont:v10];

    [(PSTextViewPane *)v3 addSubview:v3->_textView];
    [(UITextView *)v3->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = MEMORY[0x1E696ACD8];
    v29 = [(PSTextViewPane *)v3 safeAreaLayoutGuide];
    v28 = [v29 leadingAnchor];
    v27 = [(UITextView *)v3->_textView leadingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v31[0] = v26;
    v25 = [(PSTextViewPane *)v3 safeAreaLayoutGuide];
    v24 = [v25 topAnchor];
    v23 = [(UITextView *)v3->_textView topAnchor];
    v21 = [v24 constraintEqualToAnchor:v23];
    v31[1] = v21;
    v11 = [(PSTextViewPane *)v3 safeAreaLayoutGuide];
    v12 = [v11 trailingAnchor];
    v13 = [(UITextView *)v3->_textView trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v31[2] = v14;
    v15 = [(PSTextViewPane *)v3 safeAreaLayoutGuide];
    v16 = [v15 bottomAnchor];
    v17 = [(UITextView *)v3->_textView bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v31[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    [v22 activateConstraints:v19];
  }

  return v3;
}

- (void)setPreferenceSpecifier:(id)a3
{
  v16.receiver = self;
  v16.super_class = PSTextViewPane;
  v4 = a3;
  [(PSEditingPane *)&v16 setPreferenceSpecifier:v4];
  v5 = [MEMORY[0x1E696AD60] string];
  v6 = [v4 propertyForKey:@"file-path"];

  if (v6)
  {
    v7 = [v6 pathExtension];
    v8 = [v6 lastPathComponent];
    if ([v7 isEqualToString:@"synced"])
    {
      v9 = [v6 stringByDeletingPathExtension];
      v10 = [v9 pathExtension];

      v7 = v10;
    }

    if ([v7 isEqualToString:@"plist"])
    {
      v11 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v6];
      v12 = [v11 objectForKey:@"description"];
      if (v12)
      {
        v13 = [MEMORY[0x1E696AD60] stringWithString:v12];

        v5 = v13;
      }
    }

    else if (([v7 isEqualToString:@"metriclog"] & 1) != 0 || objc_msgSend(v6, "hasSuffix:", @"metriclog.anon"))
    {
      setupAWDConnection();
      v11 = createDescriptionForMetriclogFile();
      if (v11)
      {
        v14 = [MEMORY[0x1E696AD60] stringWithString:v11];

        v5 = v14;
      }

      teardownAWDConnection();
    }

    else if ([v7 isEqualToString:@"gz"])
    {
      v11 = v5;
      v5 = 0;
    }

    else if ([v8 hasPrefix:@"HealthWrap"])
    {
      v11 = PSDescriptionForHealthAnalyticsFileWithName(v8);
      if (v11)
      {
        v15 = [MEMORY[0x1E696AD60] stringWithString:v11];

        v5 = v15;
      }
    }

    else
    {
      [MEMORY[0x1E696AD60] stringWithContentsOfFile:v6 usedEncoding:0 error:0];
      v5 = v11 = v5;
    }

    [(UITextView *)self->_textView setText:v5];
  }
}

@end