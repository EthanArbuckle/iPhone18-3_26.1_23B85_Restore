@interface SUICStreamingLayoutManager
- (_TtC10SiriUICore26SUICStreamingLayoutManager)init;
- (_TtC10SiriUICore26SUICStreamingLayoutManager)initWithCoder:(id)a3;
- (void)drawUnderlineForGlyphRange:(_NSRange)a3 underlineType:(int64_t)a4 baselineOffset:(double)a5 lineFragmentRect:(CGRect)a6 lineFragmentGlyphRange:(_NSRange)a7 containerOrigin:(CGPoint)a8;
@end

@implementation SUICStreamingLayoutManager

- (void)drawUnderlineForGlyphRange:(_NSRange)a3 underlineType:(int64_t)a4 baselineOffset:(double)a5 lineFragmentRect:(CGRect)a6 lineFragmentGlyphRange:(_NSRange)a7 containerOrigin:(CGPoint)a8
{
  y = a8.y;
  x = a8.x;
  length = a3.length;
  location = a3.location;
  v14 = self;
  v12 = [(SUICStreamingLayoutManager *)v14 textContainerForGlyphAtIndex:location effectiveRange:0];
  if (v12)
  {
    v13 = v12;
    [(SUICStreamingLayoutManager *)v14 boundingRectForGlyphRange:location inTextContainer:length, v12];
    v17 = CGRectOffset(v16, x, y);
    (*((*MEMORY[0x1E69E7D40] & v14->super.super.isa) + 0x50))(v17.origin, *&v17.origin.y, v17.size, *&v17.size.height);
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

- (_TtC10SiriUICore26SUICStreamingLayoutManager)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SUICStreamingLayoutManager();
  v4 = a3;
  v5 = [(SUICStreamingLayoutManager *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end