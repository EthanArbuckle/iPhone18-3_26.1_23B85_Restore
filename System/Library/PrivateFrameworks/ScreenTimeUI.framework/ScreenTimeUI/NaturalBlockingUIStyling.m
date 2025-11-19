@interface NaturalBlockingUIStyling
+ (UIButtonConfiguration)primaryButtonConfiguration;
+ (UIButtonConfiguration)secondaryButtonConfiguration;
+ (void)applyButtonGroupStyle:(id)a3;
+ (void)applyPrimaryButtonStyle:(id)a3;
+ (void)applyPrimaryLabelStyle:(id)a3;
+ (void)applySecondaryButtonStyle:(id)a3;
+ (void)applySecondaryLabelStyle:(id)a3;
- (_TtC12ScreenTimeUI24NaturalBlockingUIStyling)init;
@end

@implementation NaturalBlockingUIStyling

+ (void)applyPrimaryLabelStyle:(id)a3
{
  v4 = objc_opt_self();
  v5 = *MEMORY[0x277D76A20];
  v6 = a3;
  v10 = [v4 preferredFontDescriptorWithTextStyle_];
  v7 = [v10 fontDescriptorWithSymbolicTraits_];
  if (v7)
  {
    v8 = v7;

    v10 = v8;
  }

  v9 = [objc_opt_self() fontWithDescriptor:v10 size:0.0];
  [v6 setFont_];
}

+ (void)applySecondaryLabelStyle:(id)a3
{
  v4 = objc_opt_self();
  v5 = *MEMORY[0x277D76A20];
  v6 = a3;
  v7 = [v4 preferredFontDescriptorWithTextStyle_];
  v8 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];
  [v6 setFont_];

  v9 = [objc_opt_self() secondaryLabelColor];
  [v6 setTextColor_];
}

+ (void)applyPrimaryButtonStyle:(id)a3
{
  v3 = a3;
  _s12ScreenTimeUI24NaturalBlockingUIStylingC23applyPrimaryButtonStyleyySo8UIButtonCFZ_0(v3);
}

+ (UIButtonConfiguration)primaryButtonConfiguration
{
  v2 = sub_21DDBDBA0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DDBDC00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DDBDC50();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  if (_UISolariumEnabled())
  {
    sub_21DDBDBC0();
  }

  else
  {
    sub_21DDBDC40();
  }

  (*(v7 + 104))(v9, *MEMORY[0x277D75020], v6);
  sub_21DDBDB90();
  (*(v3 + 104))(v5, *MEMORY[0x277D74FD8], v2);
  sub_21DDBDBB0();
  (*(v11 + 32))(v16, v14, v10);
  v17 = sub_21DDBDBD0();
  (*(v11 + 8))(v16, v10);

  return v17;
}

+ (void)applySecondaryButtonStyle:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  static NaturalBlockingUIStyling.applySecondaryButtonStyle(_:)();
}

+ (UIButtonConfiguration)secondaryButtonConfiguration
{
  v2 = sub_21DDBDC50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static NaturalBlockingUIStyling.secondaryButtonConfiguration.getter();
  v6 = sub_21DDBDBD0();
  (*(v3 + 8))(v5, v2);

  return v6;
}

+ (void)applyButtonGroupStyle:(id)a3
{
  v3 = a3;
  if (_UISolariumEnabled())
  {
    v4[3] = sub_21DDBD650();
    v4[4] = MEMORY[0x277D74A50];
    __swift_allocate_boxed_opaque_existential_1(v4);
    sub_21DDBD640();
    sub_21DDBDB80();
  }

  else
  {
  }
}

- (_TtC12ScreenTimeUI24NaturalBlockingUIStyling)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NaturalBlockingUIStyling();
  return [(NaturalBlockingUIStyling *)&v3 init];
}

@end