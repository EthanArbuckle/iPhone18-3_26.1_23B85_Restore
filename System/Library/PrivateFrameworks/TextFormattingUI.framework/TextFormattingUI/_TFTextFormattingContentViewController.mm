@interface _TFTextFormattingContentViewController
- (_TFTextFormattingContentViewController)initWithCoder:(id)a3;
- (_TFTextFormattingContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_presentColorPicker:(CGRect)a3 selectedColor:(id)a4;
- (void)_presentFontPickerWithConfiguration:(id)a3 selectedFonts:(id)a4;
- (void)_presentTypographySettingsForFont:(id)a3;
- (void)_setConfiguration:(id)a3;
- (void)_setDisabledComponents:(id)a3;
- (void)_setFormattingDescriptor:(id)a3;
- (void)_textFormattingDidChangeValue:(id)a3 textAttributesData:(id)a4;
- (void)_textFormattingDidFinish;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation _TFTextFormattingContentViewController

- (_TFTextFormattingContentViewController)initWithCoder:(id)a3
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
  v2 = self;
  sub_26D34968C();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_26D3497E4();
}

- (_TFTextFormattingContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_setConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  _TFTextFormattingContentViewController._setConfiguration(_:)(v4);
}

- (void)_setFormattingDescriptor:(id)a3
{
  v4 = a3;
  v5 = self;
  _TFTextFormattingContentViewController._setFormattingDescriptor(_:)();
}

- (void)_setDisabledComponents:(id)a3
{
  type metadata accessor for ComponentKey(0);
  sub_26D34C534(&qword_2804FADD0, type metadata accessor for ComponentKey);
  sub_26D3A1118();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D39FF78();
}

- (void)_textFormattingDidChangeValue:(id)a3 textAttributesData:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    v8 = a4;
    v9 = sub_26D39FE68();
    v11 = v10;
  }

  else
  {
    v12 = a3;
    v13 = self;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  v14 = [(_TFTextFormattingContentViewController *)self parentViewController];
  if (v14)
  {
    v15 = v14;
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
  v5 = self;
  v2 = [(_TFTextFormattingContentViewController *)v5 parentViewController];
  if (v2)
  {
    v3 = v2;
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

- (void)_presentColorPicker:(CGRect)a3 selectedColor:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v13 = self;
  v10 = [(_TFTextFormattingContentViewController *)v13 parentViewController];
  if (v10)
  {
    v11 = v10;
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

- (void)_presentFontPickerWithConfiguration:(id)a3 selectedFonts:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = self;
  v8 = [(_TFTextFormattingContentViewController *)v11 parentViewController];
  if (v8)
  {
    v9 = v8;
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

- (void)_presentTypographySettingsForFont:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = [(_TFTextFormattingContentViewController *)v8 parentViewController];
  if (v5)
  {
    v6 = v5;
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