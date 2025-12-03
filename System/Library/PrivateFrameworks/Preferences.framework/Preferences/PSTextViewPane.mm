@interface PSTextViewPane
- (PSTextViewPane)initWithFrame:(CGRect)frame;
- (void)setPreferenceSpecifier:(id)specifier;
@end

@implementation PSTextViewPane

- (PSTextViewPane)initWithFrame:(CGRect)frame
{
  v31[4] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = PSTextViewPane;
  v3 = [(PSEditingPane *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DD168] textViewUsingTextLayoutManager:0];
    textView = v3->_textView;
    v3->_textView = v4;

    [(UITextView *)v3->_textView setEditable:0];
    v6 = v3->_textView;
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UITextView *)v6 setBackgroundColor:systemBackgroundColor];

    [(UITextView *)v3->_textView setOpaque:1];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];

    v9 = v3->_textView;
    v10 = UISystemFontForSize();
    [(UITextView *)v9 setFont:v10];

    [(PSTextViewPane *)v3 addSubview:v3->_textView];
    [(UITextView *)v3->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = MEMORY[0x1E696ACD8];
    safeAreaLayoutGuide = [(PSTextViewPane *)v3 safeAreaLayoutGuide];
    leadingAnchor = [safeAreaLayoutGuide leadingAnchor];
    leadingAnchor2 = [(UITextView *)v3->_textView leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v31[0] = v26;
    safeAreaLayoutGuide2 = [(PSTextViewPane *)v3 safeAreaLayoutGuide];
    topAnchor = [safeAreaLayoutGuide2 topAnchor];
    topAnchor2 = [(UITextView *)v3->_textView topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v31[1] = v21;
    safeAreaLayoutGuide3 = [(PSTextViewPane *)v3 safeAreaLayoutGuide];
    trailingAnchor = [safeAreaLayoutGuide3 trailingAnchor];
    trailingAnchor2 = [(UITextView *)v3->_textView trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v31[2] = v14;
    safeAreaLayoutGuide4 = [(PSTextViewPane *)v3 safeAreaLayoutGuide];
    bottomAnchor = [safeAreaLayoutGuide4 bottomAnchor];
    bottomAnchor2 = [(UITextView *)v3->_textView bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v31[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    [v22 activateConstraints:v19];
  }

  return v3;
}

- (void)setPreferenceSpecifier:(id)specifier
{
  v16.receiver = self;
  v16.super_class = PSTextViewPane;
  specifierCopy = specifier;
  [(PSEditingPane *)&v16 setPreferenceSpecifier:specifierCopy];
  string = [MEMORY[0x1E696AD60] string];
  v6 = [specifierCopy propertyForKey:@"file-path"];

  if (v6)
  {
    pathExtension = [v6 pathExtension];
    lastPathComponent = [v6 lastPathComponent];
    if ([pathExtension isEqualToString:@"synced"])
    {
      stringByDeletingPathExtension = [v6 stringByDeletingPathExtension];
      pathExtension2 = [stringByDeletingPathExtension pathExtension];

      pathExtension = pathExtension2;
    }

    if ([pathExtension isEqualToString:@"plist"])
    {
      v11 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v6];
      v12 = [v11 objectForKey:@"description"];
      if (v12)
      {
        v13 = [MEMORY[0x1E696AD60] stringWithString:v12];

        string = v13;
      }
    }

    else if (([pathExtension isEqualToString:@"metriclog"] & 1) != 0 || objc_msgSend(v6, "hasSuffix:", @"metriclog.anon"))
    {
      setupAWDConnection();
      v11 = createDescriptionForMetriclogFile();
      if (v11)
      {
        v14 = [MEMORY[0x1E696AD60] stringWithString:v11];

        string = v14;
      }

      teardownAWDConnection();
    }

    else if ([pathExtension isEqualToString:@"gz"])
    {
      v11 = string;
      string = 0;
    }

    else if ([lastPathComponent hasPrefix:@"HealthWrap"])
    {
      v11 = PSDescriptionForHealthAnalyticsFileWithName(lastPathComponent);
      if (v11)
      {
        v15 = [MEMORY[0x1E696AD60] stringWithString:v11];

        string = v15;
      }
    }

    else
    {
      [MEMORY[0x1E696AD60] stringWithContentsOfFile:v6 usedEncoding:0 error:0];
      string = v11 = string;
    }

    [(UITextView *)self->_textView setText:string];
  }
}

@end