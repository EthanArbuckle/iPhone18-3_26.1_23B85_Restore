@interface SUICStreamingLayoutManager
- (_TtC10SiriUICore26SUICStreamingLayoutManager)init;
- (_TtC10SiriUICore26SUICStreamingLayoutManager)initWithCoder:(id)coder;
- (void)drawUnderlineForGlyphRange:(_NSRange)range underlineType:(int64_t)type baselineOffset:(double)offset lineFragmentRect:(CGRect)rect lineFragmentGlyphRange:(_NSRange)glyphRange containerOrigin:(CGPoint)origin;
@end

@implementation SUICStreamingLayoutManager

- (void)drawUnderlineForGlyphRange:(_NSRange)range underlineType:(int64_t)type baselineOffset:(double)offset lineFragmentRect:(CGRect)rect lineFragmentGlyphRange:(_NSRange)glyphRange containerOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  length = range.length;
  location = range.location;
  selfCopy = self;
  v12 = [(SUICStreamingLayoutManager *)selfCopy textContainerForGlyphAtIndex:location effectiveRange:0];
  if (v12)
  {
    v13 = v12;
    [(SUICStreamingLayoutManager *)selfCopy boundingRectForGlyphRange:location inTextContainer:length, v12];
    v17 = CGRectOffset(v16, x, y);
    (*((*MEMORY[0x1E69E7D40] & selfCopy->super.super.isa) + 0x50))(v17.origin, *&v17.origin.y, v17.size, *&v17.size.height);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC10SiriUICore26SUICStreamingLayoutManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SUICStreamingLayoutManager();
  return [(SUICStreamingLayoutManager *)&v3 init];
}

- (_TtC10SiriUICore26SUICStreamingLayoutManager)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SUICStreamingLayoutManager();
  coderCopy = coder;
  v5 = [(SUICStreamingLayoutManager *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end