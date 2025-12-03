@interface UITextFormattingViewControllerConfiguration
+ (id)_forTextAnimationsUIWithSupportedAnimationNames:(id)names titles:(id)titles accessibilityHints:(id)hints;
- (BOOL)isEqual:(id)equal;
- (UITextFormattingViewControllerConfiguration)init;
- (UITextFormattingViewControllerConfiguration)initWithCoder:(id)coder;
- (UITextFormattingViewControllerConfiguration)initWithGroups:(id)groups;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

+ (id)_forTextAnimationsUIWithSupportedAnimationNames:(id)names titles:(id)titles accessibilityHints:(id)hints
{
  titlesCopy = titles;
  if (names)
  {
    v7 = sub_18A4A7548();
    if (!titlesCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (titles)
  {
LABEL_3:
    titlesCopy = sub_18A4A70A8();
  }

LABEL_4:
  if (hints)
  {
    hints = sub_18A4A70A8();
  }

  v8 = sub_188F751CC(v7, titlesCopy, hints);

  return v8;
}

- (UITextFormattingViewControllerConfiguration)initWithGroups:(id)groups
{
  groupsCopy = groups;
  v6 = [(UITextFormattingViewControllerConfiguration *)self init];
  v7 = v6;
  if (v6)
  {
    [(UITextFormattingViewControllerConfiguration *)v6 set_preferringDimmingVisible:1];
    [(UITextFormattingViewControllerConfiguration *)v7 set_allowContentToScroll:0];
    [(UITextFormattingViewControllerConfiguration *)v7 set_includeDefaultFont:0];
    objc_storeStrong(&v7->_groups, groups);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  fontPickerConfiguration = [(UITextFormattingViewControllerConfiguration *)self fontPickerConfiguration];
  [v4 setFontPickerConfiguration:fontPickerConfiguration];

  [v4 set_preferringDimmingVisible:{-[UITextFormattingViewControllerConfiguration _preferringDimmingVisible](self, "_preferringDimmingVisible")}];
  [v4 set_allowContentToScroll:{-[UITextFormattingViewControllerConfiguration _allowContentToScroll](self, "_allowContentToScroll")}];
  [v4 set_includeDefaultFont:{-[UITextFormattingViewControllerConfiguration _includeDefaultFont](self, "_includeDefaultFont")}];
  [v4 _setHasPopoverPresentation:{-[UITextFormattingViewControllerConfiguration _hasPopoverPresentation](self, "_hasPopoverPresentation")}];
  [v4 _setUseLandscapeLayout:{-[UITextFormattingViewControllerConfiguration _useLandscapeLayout](self, "_useLandscapeLayout")}];
  [v4 _setHasParentViewController:{-[UITextFormattingViewControllerConfiguration _hasParentViewController](self, "_hasParentViewController")}];
  formattingStyles = [(UITextFormattingViewControllerConfiguration *)self formattingStyles];
  v7 = [formattingStyles copy];
  v8 = *(v4 + 32);
  *(v4 + 32) = v7;

  _emphasisStyles = [(UITextFormattingViewControllerConfiguration *)self _emphasisStyles];
  v10 = [_emphasisStyles copy];
  v11 = *(v4 + 48);
  *(v4 + 48) = v10;

  groups = [(UITextFormattingViewControllerConfiguration *)self groups];
  v13 = [groups copy];
  v14 = *(v4 + 24);
  *(v4 + 24) = v13;

  *(v4 + 8) = [(UITextFormattingViewControllerConfiguration *)self _textAnimationsConfiguration];
  *(v4 + 9) = [(UITextFormattingViewControllerConfiguration *)self _textViewConfiguration];
  *(v4 + 10) = [(UITextFormattingViewControllerConfiguration *)self _useReducedMetrics];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      fontPickerConfiguration = [(UITextFormattingViewControllerConfiguration *)self fontPickerConfiguration];
      fontPickerConfiguration2 = [(UITextFormattingViewControllerConfiguration *)v5 fontPickerConfiguration];
      if ([fontPickerConfiguration isEqual:fontPickerConfiguration2] && (v8 = -[UITextFormattingViewControllerConfiguration _preferringDimmingVisible](self, "_preferringDimmingVisible"), v8 == -[UITextFormattingViewControllerConfiguration _preferringDimmingVisible](v5, "_preferringDimmingVisible")) && (v9 = -[UITextFormattingViewControllerConfiguration _allowContentToScroll](self, "_allowContentToScroll"), v9 == -[UITextFormattingViewControllerConfiguration _allowContentToScroll](v5, "_allowContentToScroll")) && (v10 = -[UITextFormattingViewControllerConfiguration _includeDefaultFont](self, "_includeDefaultFont"), v10 == -[UITextFormattingViewControllerConfiguration _includeDefaultFont](v5, "_includeDefaultFont")) && (v11 = -[UITextFormattingViewControllerConfiguration _hasPopoverPresentation](self, "_hasPopoverPresentation"), v11 == -[UITextFormattingViewControllerConfiguration _hasPopoverPresentation](v5, "_hasPopoverPresentation")) && (v12 = -[UITextFormattingViewControllerConfiguration _useLandscapeLayout](self, "_useLandscapeLayout"), v12 == -[UITextFormattingViewControllerConfiguration _useLandscapeLayout](v5, "_useLandscapeLayout")) && (v13 = -[UITextFormattingViewControllerConfiguration _hasParentViewController](self, "_hasParentViewController"), v13 == -[UITextFormattingViewControllerConfiguration _hasParentViewController](v5, "_hasParentViewController")))
      {
        formattingStyles = [(UITextFormattingViewControllerConfiguration *)self formattingStyles];
        formattingStyles2 = [(UITextFormattingViewControllerConfiguration *)v5 formattingStyles];
        if ([formattingStyles isEqualToArray:formattingStyles2])
        {
          _emphasisStyles = [(UITextFormattingViewControllerConfiguration *)self _emphasisStyles];
          _emphasisStyles2 = [(UITextFormattingViewControllerConfiguration *)v5 _emphasisStyles];
          if ([_emphasisStyles isEqualToArray:_emphasisStyles2])
          {
            groups = [(UITextFormattingViewControllerConfiguration *)self groups];
            groups2 = [(UITextFormattingViewControllerConfiguration *)v5 groups];
            if ([groups isEqualToArray:?])
            {
              v24 = groups;
              _textAnimationsConfiguration = [(UITextFormattingViewControllerConfiguration *)self _textAnimationsConfiguration];
              if (_textAnimationsConfiguration == [(UITextFormattingViewControllerConfiguration *)v5 _textAnimationsConfiguration]&& (v22 = [(UITextFormattingViewControllerConfiguration *)self _textViewConfiguration], v22 == [(UITextFormattingViewControllerConfiguration *)v5 _textViewConfiguration]))
              {
                _useReducedMetrics = [(UITextFormattingViewControllerConfiguration *)self _useReducedMetrics];
                v14 = _useReducedMetrics ^ [(UITextFormattingViewControllerConfiguration *)v5 _useReducedMetrics]^ 1;
              }

              else
              {
                LOBYTE(v14) = 0;
              }

              groups = v24;
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
  fontPickerConfiguration = [(UITextFormattingViewControllerConfiguration *)self fontPickerConfiguration];
  v19 = [fontPickerConfiguration hash];
  _preferringDimmingVisible = [(UITextFormattingViewControllerConfiguration *)self _preferringDimmingVisible];
  _allowContentToScroll = [(UITextFormattingViewControllerConfiguration *)self _allowContentToScroll];
  _includeDefaultFont = [(UITextFormattingViewControllerConfiguration *)self _includeDefaultFont];
  _hasPopoverPresentation = [(UITextFormattingViewControllerConfiguration *)self _hasPopoverPresentation];
  _useLandscapeLayout = [(UITextFormattingViewControllerConfiguration *)self _useLandscapeLayout];
  _hasParentViewController = [(UITextFormattingViewControllerConfiguration *)self _hasParentViewController];
  _textAnimationsConfiguration = [(UITextFormattingViewControllerConfiguration *)self _textAnimationsConfiguration];
  _textViewConfiguration = [(UITextFormattingViewControllerConfiguration *)self _textViewConfiguration];
  _useReducedMetrics = [(UITextFormattingViewControllerConfiguration *)self _useReducedMetrics];
  formattingStyles = [(UITextFormattingViewControllerConfiguration *)self formattingStyles];
  v9 = [formattingStyles hash];
  _emphasisStyles = [(UITextFormattingViewControllerConfiguration *)self _emphasisStyles];
  v11 = [_emphasisStyles hash];
  groups = [(UITextFormattingViewControllerConfiguration *)self groups];
  v13 = v19 ^ _preferringDimmingVisible ^ _allowContentToScroll ^ _includeDefaultFont ^ _hasPopoverPresentation ^ _useLandscapeLayout ^ _hasParentViewController ^ _textAnimationsConfiguration ^ _textViewConfiguration ^ _useReducedMetrics ^ v9 ^ v11 ^ [groups hash];

  return v13 ^ 8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fontPickerConfiguration = [(UITextFormattingViewControllerConfiguration *)self fontPickerConfiguration];
  [coderCopy encodeObject:fontPickerConfiguration forKey:@"_FontPickerConfiguration"];

  [coderCopy encodeBool:-[UITextFormattingViewControllerConfiguration _preferringDimmingVisible](self forKey:{"_preferringDimmingVisible"), @"_PreferringDimmingVisible"}];
  [coderCopy encodeBool:-[UITextFormattingViewControllerConfiguration _allowContentToScroll](self forKey:{"_allowContentToScroll"), @"_AllowContentToScroll"}];
  [coderCopy encodeBool:-[UITextFormattingViewControllerConfiguration _includeDefaultFont](self forKey:{"_includeDefaultFont"), @"_IncludeDefaultFont"}];
  [coderCopy encodeBool:-[UITextFormattingViewControllerConfiguration _hasPopoverPresentation](self forKey:{"_hasPopoverPresentation"), @"_HasPopoverPresentation"}];
  [coderCopy encodeBool:-[UITextFormattingViewControllerConfiguration _useLandscapeLayout](self forKey:{"_useLandscapeLayout"), @"_UseLandscapeLayout"}];
  [coderCopy encodeBool:-[UITextFormattingViewControllerConfiguration _hasParentViewController](self forKey:{"_hasParentViewController"), @"_HasParentViewController"}];
  formattingStyles = [(UITextFormattingViewControllerConfiguration *)self formattingStyles];
  [coderCopy encodeObject:formattingStyles forKey:@"_FormattingStyles"];

  _emphasisStyles = [(UITextFormattingViewControllerConfiguration *)self _emphasisStyles];
  [coderCopy encodeObject:_emphasisStyles forKey:@"_EmphasisStyles"];

  groups = [(UITextFormattingViewControllerConfiguration *)self groups];
  [coderCopy encodeObject:groups forKey:@"_Groups"];

  [coderCopy encodeBool:-[UITextFormattingViewControllerConfiguration _textAnimationsConfiguration](self forKey:{"_textAnimationsConfiguration"), @"_TextAnimationsConfiguration"}];
  [coderCopy encodeBool:-[UITextFormattingViewControllerConfiguration _textViewConfiguration](self forKey:{"_textViewConfiguration"), @"_TextViewConfiguration"}];
  [coderCopy encodeBool:-[UITextFormattingViewControllerConfiguration _useReducedMetrics](self forKey:{"_useReducedMetrics"), @"_UseReducedMetrics"}];
}

- (UITextFormattingViewControllerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UITextFormattingViewControllerConfiguration *)self init];
  if (v5)
  {
    v6 = _UITextFormattingViewControllerConfigurationClasses();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"_FontPickerConfiguration"];
    [(UITextFormattingViewControllerConfiguration *)v5 setFontPickerConfiguration:v7];

    -[UITextFormattingViewControllerConfiguration set_preferringDimmingVisible:](v5, "set_preferringDimmingVisible:", [coderCopy decodeBoolForKey:@"_PreferringDimmingVisible"]);
    -[UITextFormattingViewControllerConfiguration set_allowContentToScroll:](v5, "set_allowContentToScroll:", [coderCopy decodeBoolForKey:@"_AllowContentToScroll"]);
    -[UITextFormattingViewControllerConfiguration set_includeDefaultFont:](v5, "set_includeDefaultFont:", [coderCopy decodeBoolForKey:@"_IncludeDefaultFont"]);
    -[UITextFormattingViewControllerConfiguration _setHasPopoverPresentation:](v5, "_setHasPopoverPresentation:", [coderCopy decodeBoolForKey:@"_HasPopoverPresentation"]);
    -[UITextFormattingViewControllerConfiguration _setUseLandscapeLayout:](v5, "_setUseLandscapeLayout:", [coderCopy decodeBoolForKey:@"_UseLandscapeLayout"]);
    -[UITextFormattingViewControllerConfiguration _setHasParentViewController:](v5, "_setHasParentViewController:", [coderCopy decodeBoolForKey:@"_HasParentViewController"]);
    v8 = _UITextFormattingViewControllerConfigurationClasses();
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_FormattingStyles"];
    [(UITextFormattingViewControllerConfiguration *)v5 setFormattingStyles:v9];

    v10 = _UITextFormattingViewControllerConfigurationClasses();
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_EmphasisStyles"];
    [(UITextFormattingViewControllerConfiguration *)v5 set_emphasisStyles:v11];

    v12 = _UITextFormattingViewControllerConfigurationClasses();
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_Groups"];
    groups = v5->_groups;
    v5->_groups = v13;

    v5->__textAnimationsConfiguration = [coderCopy decodeBoolForKey:@"_TextAnimationsConfiguration"];
    v5->__textViewConfiguration = [coderCopy decodeBoolForKey:@"_TextViewConfiguration"];
    v5->__useReducedMetrics = [coderCopy decodeBoolForKey:@"_UseReducedMetrics"];
  }

  return v5;
}

@end