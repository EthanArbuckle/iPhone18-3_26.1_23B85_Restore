@interface FMR1GlyphButton
- (BOOL)isUserInteractionEnabled;
- (_TtC10TVRemoteUI15FMR1GlyphButton)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)ringDisplayLinkUpdateWithDisplaylink:(id)displaylink;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation FMR1GlyphButton

- (void)ringDisplayLinkUpdateWithDisplaylink:(id)displaylink
{
  displaylinkCopy = displaylink;
  selfCopy = self;
  FMR1GlyphButton.ringDisplayLinkUpdate(displaylink:)(displaylinkCopy);
}

- (void)drawRect:(CGRect)rect
{
  selfCopy = self;
  specialized FMR1GlyphButton.draw(_:)();
}

- (BOOL)isUserInteractionEnabled
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMR1GlyphButton();
  return [(FMR1GlyphButton *)&v3 isUserInteractionEnabled];
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  selfCopy = self;
  FMR1GlyphButton.isUserInteractionEnabled.setter(enabled);
}

- (_TtC10TVRemoteUI15FMR1GlyphButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end