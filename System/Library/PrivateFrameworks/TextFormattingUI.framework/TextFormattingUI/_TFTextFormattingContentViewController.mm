@interface _TFTextFormattingContentViewController
- (_TFTextFormattingContentViewController)initWithCoder:(id)coder;
- (_TFTextFormattingContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_presentColorPicker:(CGRect)picker selectedColor:(id)color;
- (void)_presentFontPickerWithConfiguration:(id)configuration selectedFonts:(id)fonts;
- (void)_presentTypographySettingsForFont:(id)font;
- (void)_setConfiguration:(id)configuration;
- (void)_setDisabledComponents:(id)components;
- (void)_setFormattingDescriptor:(id)descriptor;
- (void)_textFormattingDidChangeValue:(id)value textAttributesData:(id)data;
- (void)_textFormattingDidFinish;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation _TFTextFormattingContentViewController

- (_TFTextFormattingContentViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TFTextFormattingContentViewController_viewState;
  type metadata accessor for TextFormattingState();
  swift_allocObject();
  *(&self->super.super.super.isa + v4) = sub_26D34EA6C();
  v5 = OBJC_IVAR____TFTextFormattingContentViewController_configuration;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x277D75BD0]) init];
  result = sub_26D3A1468();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_26D34968C();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_26D3497E4();
}

- (_TFTextFormattingContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  _TFTextFormattingContentViewController._setConfiguration(_:)(configurationCopy);
}

- (void)_setFormattingDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  selfCopy = self;
  _TFTextFormattingContentViewController._setFormattingDescriptor(_:)();
}

- (void)_setDisabledComponents:(id)components
{
  type metadata accessor for ComponentKey(0);
  sub_26D34C534(&qword_2804FADD0, type metadata accessor for ComponentKey);
  sub_26D3A1118();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D39FF78();
}

- (void)_textFormattingDidChangeValue:(id)value textAttributesData:(id)data
{
  if (data)
  {
    valueCopy = value;
    selfCopy = self;
    dataCopy = data;
    v9 = sub_26D39FE68();
    v11 = v10;
  }

  else
  {
    valueCopy2 = value;
    selfCopy2 = self;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  parentViewController = [(_TFTextFormattingContentViewController *)self parentViewController];
  if (parentViewController)
  {
    v15 = parentViewController;
    v16 = swift_dynamicCastObjCProtocolConditional();
    if (v16)
    {
      if (v11 >> 60 == 15)
      {
        v17 = 0;
      }

      else
      {
        v18 = v16;
        v17 = sub_26D39FE58();
        v16 = v18;
      }

      [v16 _textFormattingDidChangeValue_textAttributesData_];

      sub_26D34BA6C(v9, v11);
    }

    else
    {

      sub_26D34BA6C(v9, v11);
    }
  }

  else
  {

    sub_26D34BA6C(v9, v11);
  }
}

- (void)_textFormattingDidFinish
{
  selfCopy = self;
  parentViewController = [(_TFTextFormattingContentViewController *)selfCopy parentViewController];
  if (parentViewController)
  {
    v3 = parentViewController;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      [v4 _textFormattingDidFinish];
    }

    else
    {
    }
  }

  else
  {
  }
}

- (void)_presentColorPicker:(CGRect)picker selectedColor:(id)color
{
  height = picker.size.height;
  width = picker.size.width;
  y = picker.origin.y;
  x = picker.origin.x;
  colorCopy = color;
  selfCopy = self;
  parentViewController = [(_TFTextFormattingContentViewController *)selfCopy parentViewController];
  if (parentViewController)
  {
    v11 = parentViewController;
    v12 = swift_dynamicCastObjCProtocolConditional();
    if (v12)
    {
      [v12 _presentColorPicker_selectedColor_];
    }

    else
    {
    }
  }

  else
  {
  }
}

- (void)_presentFontPickerWithConfiguration:(id)configuration selectedFonts:(id)fonts
{
  configurationCopy = configuration;
  fontsCopy = fonts;
  selfCopy = self;
  parentViewController = [(_TFTextFormattingContentViewController *)selfCopy parentViewController];
  if (parentViewController)
  {
    v9 = parentViewController;
    v10 = swift_dynamicCastObjCProtocolConditional();
    if (v10)
    {
      [v10 _presentFontPickerWithConfiguration_selectedFonts_];
    }

    else
    {
    }
  }

  else
  {
  }
}

- (void)_presentTypographySettingsForFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  parentViewController = [(_TFTextFormattingContentViewController *)selfCopy parentViewController];
  if (parentViewController)
  {
    v6 = parentViewController;
    v7 = swift_dynamicCastObjCProtocolConditional();
    if (v7)
    {
      [v7 _presentTypographySettingsForFont_];
    }

    else
    {
    }
  }

  else
  {
  }
}

@end