@interface FMR1GlyphButton
- (BOOL)isUserInteractionEnabled;
- (_TtC10TVRemoteUI15FMR1GlyphButton)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)ringDisplayLinkUpdateWithDisplaylink:(id)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation FMR1GlyphButton

- (void)ringDisplayLinkUpdateWithDisplaylink:(id)a3
{
  v4 = a3;
  v5 = self;
  FMR1GlyphButton.ringDisplayLinkUpdate(displaylink:)(v4);
}

- (void)drawRect:(CGRect)a3
{
  v3 = self;
  specialized FMR1GlyphButton.draw(_:)();
}

- (BOOL)isUserInteractionEnabled
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMR1GlyphButton();
  return [(FMR1GlyphButton *)&v3 isUserInteractionEnabled];
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v4 = self;
  FMR1GlyphButton.isUserInteractionEnabled.setter(a3);
}

- (_TtC10TVRemoteUI15FMR1GlyphButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end