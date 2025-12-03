@interface PXNavigationBarPalette
- (PXNavigationBarPalette)initWithContentView:(id)view;
- (_TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView)paletteContentView;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)sizeTraitsDidChange;
- (void)updatePreferredHeight;
@end

@implementation PXNavigationBarPalette

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXNavigationBarPalette;
  selfCopy = self;
  [(_UINavigationBarPalette *)&v3 layoutSubviews];
  [(PXNavigationBarPalette *)selfCopy updatePreferredHeight:v3.receiver];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = sub_1A524C674();
    v12 = v11;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1A4756188(&qword_1EB140E38, type metadata accessor for NSKeyValueChangeKey);
  v15 = sub_1A524C3E4();

LABEL_8:
  PXNavigationBarPalette.observeValue(forKeyPath:of:change:context:)(v10, v12, v18, v15, context);

  sub_1A3C35B00(v18);
}

- (void)updatePreferredHeight
{
  selfCopy = self;
  sub_1A47552E0();
}

- (void)sizeTraitsDidChange
{
  selfCopy = self;
  sub_1A47553EC();
}

- (_TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView)paletteContentView
{
  contentView = [(_UINavigationBarPalette *)self contentView];
  type metadata accessor for NavigationBarPaletteContentView();
  v3 = swift_dynamicCastClassUnconditional();

  return v3;
}

- (PXNavigationBarPalette)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end