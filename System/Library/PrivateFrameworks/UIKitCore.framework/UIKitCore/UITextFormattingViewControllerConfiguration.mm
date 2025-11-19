@interface UITextFormattingViewControllerConfiguration
+ (id)_forTextAnimationsUIWithSupportedAnimationNames:(id)a3 titles:(id)a4 accessibilityHints:(id)a5;
- (BOOL)isEqual:(id)a3;
- (UITextFormattingViewControllerConfiguration)init;
- (UITextFormattingViewControllerConfiguration)initWithCoder:(id)a3;
- (UITextFormattingViewControllerConfiguration)initWithGroups:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UITextFormattingViewControllerConfiguration

- (UITextFormattingViewControllerConfiguration)init
{
  v24[2] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = UITextFormattingViewControllerConfiguration;
  v2 = [(UITextFormattingViewControllerConfiguration *)&v21 init];
  v3 = v2;
  if (v2)
  {
    [(UITextFormattingViewControllerConfiguration *)v2 set_preferringDimmingVisible:1];
    [(UITextFormattingViewControllerConfiguration *)v3 set_allowContentToScroll:0];
    [(UITextFormattingViewControllerConfiguration *)v3 set_includeDefaultFont:0];
    v4 = [UITextFormattingViewControllerComponentGroup alloc];
    v20 = [[UITextFormattingViewControllerComponent alloc] initWithComponentKey:@"UITextFormattingViewControllerFormattingStylesComponent" preferredSize:5];
    v23 = v20;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    v18 = [(UITextFormattingViewControllerComponentGroup *)v4 initWithComponents:v19];
    v24[0] = v18;
    v5 = [UITextFormattingViewControllerComponentGroup alloc];
    v17 = [[UITextFormattingViewControllerComponent alloc] initWithComponentKey:@"UITextFormattingViewControllerFontAttributesComponent" preferredSize:5];
    v22[0] = v17;
    v6 = [[UITextFormattingViewControllerComponent alloc] initWithComponentKey:@"UITextFormattingViewControllerTextColorComponent" preferredSize:1];
    v22[1] = v6;
    v7 = [[UITextFormattingViewControllerComponent alloc] initWithComponentKey:@"UITextFormattingViewControllerFontPickerComponent" preferredSize:3];
    v22[2] = v7;
    v8 = [[UITextFormattingViewControllerComponent alloc] initWithComponentKey:@"UITextFormattingViewControllerFontSizeComponent" preferredSize:2];
    v22[3] = v8;
    v9 = [[UITextFormattingViewControllerComponent alloc] initWithComponentKey:@"UITextFormattingViewControllerHighlightComponent" preferredSize:1];
    v22[4] = v9;
    v10 = [[UITextFormattingViewControllerComponent alloc] initWithComponentKey:@"UITextFormattingViewControllerTextAlignmentComponent" preferredSize:3];
    v22[5] = v10;
    v11 = [[UITextFormattingViewControllerComponent alloc] initWithComponentKey:@"UITextFormattingViewControllerListStylesComponent" preferredSize:3];
    v22[6] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:7];
    v13 = [(UITextFormattingViewControllerComponentGroup *)v5 initWithComponents:v12];
    v24[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    groups = v3->_groups;
    v3->_groups = v14;
  }

  return v3;
}

+ (id)_forTextAnimationsUIWithSupportedAnimationNames:(id)a3 titles:(id)a4 accessibilityHints:(id)a5
{
  v6 = a4;
  if (a3)
  {
    v7 = sub_18A4A7548();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a4)
  {
LABEL_3:
    v6 = sub_18A4A70A8();
  }

LABEL_4:
  if (a5)
  {
    a5 = sub_18A4A70A8();
  }

  v8 = sub_188F751CC(v7, v6, a5);

  return v8;
}

- (UITextFormattingViewControllerConfiguration)initWithGroups:(id)a3
{
  v5 = a3;
  v6 = [(UITextFormattingViewControllerConfiguration *)self init];
  v7 = v6;
  if (v6)
  {
    [(UITextFormattingViewControllerConfiguration *)v6 set_preferringDimmingVisible:1];
    [(UITextFormattingViewControllerConfiguration *)v7 set_allowContentToScroll:0];
    [(UITextFormattingViewControllerConfiguration *)v7 set_includeDefaultFont:0];
    objc_storeStrong(&v7->_groups, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(UITextFormattingViewControllerConfiguration *)self fontPickerConfiguration];
  [v4 setFontPickerConfiguration:v5];

  [v4 set_preferringDimmingVisible:{-[UITextFormattingViewControllerConfiguration _preferringDimmingVisible](self, "_preferringDimmingVisible")}];
  [v4 set_allowContentToScroll:{-[UITextFormattingViewControllerConfiguration _allowContentToScroll](self, "_allowContentToScroll")}];
  [v4 set_includeDefaultFont:{-[UITextFormattingViewControllerConfiguration _includeDefaultFont](self, "_includeDefaultFont")}];
  [v4 _setHasPopoverPresentation:{-[UITextFormattingViewControllerConfiguration _hasPopoverPresentation](self, "_hasPopoverPresentation")}];
  [v4 _setUseLandscapeLayout:{-[UITextFormattingViewControllerConfiguration _useLandscapeLayout](self, "_useLandscapeLayout")}];
  [v4 _setHasParentViewController:{-[UITextFormattingViewControllerConfiguration _hasParentViewController](self, "_hasParentViewController")}];
  v6 = [(UITextFormattingViewControllerConfiguration *)self formattingStyles];
  v7 = [v6 copy];
  v8 = *(v4 + 32);
  *(v4 + 32) = v7;

  v9 = [(UITextFormattingViewControllerConfiguration *)self _emphasisStyles];
  v10 = [v9 copy];
  v11 = *(v4 + 48);
  *(v4 + 48) = v10;

  v12 = [(UITextFormattingViewControllerConfiguration *)self groups];
  v13 = [v12 copy];
  v14 = *(v4 + 24);
  *(v4 + 24) = v13;

  *(v4 + 8) = [(UITextFormattingViewControllerConfiguration *)self _textAnimationsConfiguration];
  *(v4 + 9) = [(UITextFormattingViewControllerConfiguration *)self _textViewConfiguration];
  *(v4 + 10) = [(UITextFormattingViewControllerConfiguration *)self _useReducedMetrics];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UITextFormattingViewControllerConfiguration *)self fontPickerConfiguration];
      v7 = [(UITextFormattingViewControllerConfiguration *)v5 fontPickerConfiguration];
      if ([v6 isEqual:v7] && (v8 = -[UITextFormattingViewControllerConfiguration _preferringDimmingVisible](self, "_preferringDimmingVisible"), v8 == -[UITextFormattingViewControllerConfiguration _preferringDimmingVisible](v5, "_preferringDimmingVisible")) && (v9 = -[UITextFormattingViewControllerConfiguration _allowContentToScroll](self, "_allowContentToScroll"), v9 == -[UITextFormattingViewControllerConfiguration _allowContentToScroll](v5, "_allowContentToScroll")) && (v10 = -[UITextFormattingViewControllerConfiguration _includeDefaultFont](self, "_includeDefaultFont"), v10 == -[UITextFormattingViewControllerConfiguration _includeDefaultFont](v5, "_includeDefaultFont")) && (v11 = -[UITextFormattingViewControllerConfiguration _hasPopoverPresentation](self, "_hasPopoverPresentation"), v11 == -[UITextFormattingViewControllerConfiguration _hasPopoverPresentation](v5, "_hasPopoverPresentation")) && (v12 = -[UITextFormattingViewControllerConfiguration _useLandscapeLayout](self, "_useLandscapeLayout"), v12 == -[UITextFormattingViewControllerConfiguration _useLandscapeLayout](v5, "_useLandscapeLayout")) && (v13 = -[UITextFormattingViewControllerConfiguration _hasParentViewController](self, "_hasParentViewController"), v13 == -[UITextFormattingViewControllerConfiguration _hasParentViewController](v5, "_hasParentViewController")))
      {
        v16 = [(UITextFormattingViewControllerConfiguration *)self formattingStyles];
        v17 = [(UITextFormattingViewControllerConfiguration *)v5 formattingStyles];
        if ([v16 isEqualToArray:v17])
        {
          v18 = [(UITextFormattingViewControllerConfiguration *)self _emphasisStyles];
          v19 = [(UITextFormattingViewControllerConfiguration *)v5 _emphasisStyles];
          if ([v18 isEqualToArray:v19])
          {
            v20 = [(UITextFormattingViewControllerConfiguration *)self groups];
            v25 = [(UITextFormattingViewControllerConfiguration *)v5 groups];
            if ([v20 isEqualToArray:?])
            {
              v24 = v20;
              v21 = [(UITextFormattingViewControllerConfiguration *)self _textAnimationsConfiguration];
              if (v21 == [(UITextFormattingViewControllerConfiguration *)v5 _textAnimationsConfiguration]&& (v22 = [(UITextFormattingViewControllerConfiguration *)self _textViewConfiguration], v22 == [(UITextFormattingViewControllerConfiguration *)v5 _textViewConfiguration]))
              {
                v23 = [(UITextFormattingViewControllerConfiguration *)self _useReducedMetrics];
                v14 = v23 ^ [(UITextFormattingViewControllerConfiguration *)v5 _useReducedMetrics]^ 1;
              }

              else
              {
                LOBYTE(v14) = 0;
              }

              v20 = v24;
            }

            else
            {
              LOBYTE(v14) = 0;
            }
          }

          else
          {
            LOBYTE(v14) = 0;
          }
        }

        else
        {
          LOBYTE(v14) = 0;
        }
      }

      else
      {
        LOBYTE(v14) = 0;
      }
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v20 = [(UITextFormattingViewControllerConfiguration *)self fontPickerConfiguration];
  v19 = [v20 hash];
  v18 = [(UITextFormattingViewControllerConfiguration *)self _preferringDimmingVisible];
  v17 = [(UITextFormattingViewControllerConfiguration *)self _allowContentToScroll];
  v16 = [(UITextFormattingViewControllerConfiguration *)self _includeDefaultFont];
  v15 = [(UITextFormattingViewControllerConfiguration *)self _hasPopoverPresentation];
  v3 = [(UITextFormattingViewControllerConfiguration *)self _useLandscapeLayout];
  v4 = [(UITextFormattingViewControllerConfiguration *)self _hasParentViewController];
  v5 = [(UITextFormattingViewControllerConfiguration *)self _textAnimationsConfiguration];
  v6 = [(UITextFormattingViewControllerConfiguration *)self _textViewConfiguration];
  v7 = [(UITextFormattingViewControllerConfiguration *)self _useReducedMetrics];
  v8 = [(UITextFormattingViewControllerConfiguration *)self formattingStyles];
  v9 = [v8 hash];
  v10 = [(UITextFormattingViewControllerConfiguration *)self _emphasisStyles];
  v11 = [v10 hash];
  v12 = [(UITextFormattingViewControllerConfiguration *)self groups];
  v13 = v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v9 ^ v11 ^ [v12 hash];

  return v13 ^ 8;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(UITextFormattingViewControllerConfiguration *)self fontPickerConfiguration];
  [v8 encodeObject:v4 forKey:@"_FontPickerConfiguration"];

  [v8 encodeBool:-[UITextFormattingViewControllerConfiguration _preferringDimmingVisible](self forKey:{"_preferringDimmingVisible"), @"_PreferringDimmingVisible"}];
  [v8 encodeBool:-[UITextFormattingViewControllerConfiguration _allowContentToScroll](self forKey:{"_allowContentToScroll"), @"_AllowContentToScroll"}];
  [v8 encodeBool:-[UITextFormattingViewControllerConfiguration _includeDefaultFont](self forKey:{"_includeDefaultFont"), @"_IncludeDefaultFont"}];
  [v8 encodeBool:-[UITextFormattingViewControllerConfiguration _hasPopoverPresentation](self forKey:{"_hasPopoverPresentation"), @"_HasPopoverPresentation"}];
  [v8 encodeBool:-[UITextFormattingViewControllerConfiguration _useLandscapeLayout](self forKey:{"_useLandscapeLayout"), @"_UseLandscapeLayout"}];
  [v8 encodeBool:-[UITextFormattingViewControllerConfiguration _hasParentViewController](self forKey:{"_hasParentViewController"), @"_HasParentViewController"}];
  v5 = [(UITextFormattingViewControllerConfiguration *)self formattingStyles];
  [v8 encodeObject:v5 forKey:@"_FormattingStyles"];

  v6 = [(UITextFormattingViewControllerConfiguration *)self _emphasisStyles];
  [v8 encodeObject:v6 forKey:@"_EmphasisStyles"];

  v7 = [(UITextFormattingViewControllerConfiguration *)self groups];
  [v8 encodeObject:v7 forKey:@"_Groups"];

  [v8 encodeBool:-[UITextFormattingViewControllerConfiguration _textAnimationsConfiguration](self forKey:{"_textAnimationsConfiguration"), @"_TextAnimationsConfiguration"}];
  [v8 encodeBool:-[UITextFormattingViewControllerConfiguration _textViewConfiguration](self forKey:{"_textViewConfiguration"), @"_TextViewConfiguration"}];
  [v8 encodeBool:-[UITextFormattingViewControllerConfiguration _useReducedMetrics](self forKey:{"_useReducedMetrics"), @"_UseReducedMetrics"}];
}

- (UITextFormattingViewControllerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UITextFormattingViewControllerConfiguration *)self init];
  if (v5)
  {
    v6 = _UITextFormattingViewControllerConfigurationClasses();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"_FontPickerConfiguration"];
    [(UITextFormattingViewControllerConfiguration *)v5 setFontPickerConfiguration:v7];

    -[UITextFormattingViewControllerConfiguration set_preferringDimmingVisible:](v5, "set_preferringDimmingVisible:", [v4 decodeBoolForKey:@"_PreferringDimmingVisible"]);
    -[UITextFormattingViewControllerConfiguration set_allowContentToScroll:](v5, "set_allowContentToScroll:", [v4 decodeBoolForKey:@"_AllowContentToScroll"]);
    -[UITextFormattingViewControllerConfiguration set_includeDefaultFont:](v5, "set_includeDefaultFont:", [v4 decodeBoolForKey:@"_IncludeDefaultFont"]);
    -[UITextFormattingViewControllerConfiguration _setHasPopoverPresentation:](v5, "_setHasPopoverPresentation:", [v4 decodeBoolForKey:@"_HasPopoverPresentation"]);
    -[UITextFormattingViewControllerConfiguration _setUseLandscapeLayout:](v5, "_setUseLandscapeLayout:", [v4 decodeBoolForKey:@"_UseLandscapeLayout"]);
    -[UITextFormattingViewControllerConfiguration _setHasParentViewController:](v5, "_setHasParentViewController:", [v4 decodeBoolForKey:@"_HasParentViewController"]);
    v8 = _UITextFormattingViewControllerConfigurationClasses();
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_FormattingStyles"];
    [(UITextFormattingViewControllerConfiguration *)v5 setFormattingStyles:v9];

    v10 = _UITextFormattingViewControllerConfigurationClasses();
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_EmphasisStyles"];
    [(UITextFormattingViewControllerConfiguration *)v5 set_emphasisStyles:v11];

    v12 = _UITextFormattingViewControllerConfigurationClasses();
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"_Groups"];
    groups = v5->_groups;
    v5->_groups = v13;

    v5->__textAnimationsConfiguration = [v4 decodeBoolForKey:@"_TextAnimationsConfiguration"];
    v5->__textViewConfiguration = [v4 decodeBoolForKey:@"_TextViewConfiguration"];
    v5->__useReducedMetrics = [v4 decodeBoolForKey:@"_UseReducedMetrics"];
  }

  return v5;
}

@end