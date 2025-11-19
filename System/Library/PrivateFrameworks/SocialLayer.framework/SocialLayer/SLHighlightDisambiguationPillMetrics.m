@interface SLHighlightDisambiguationPillMetrics
+ (id)accessibilityLabelFor:(id)a3;
- (BOOL)useChevron;
- (BOOL)useSingleLineLayout;
- (CGColor)firstLineColor;
- (CGColor)secondLineColor;
- (CGImage)chevronImage;
- (CGSize)chevronSize;
- (CGSize)firstLineSize;
- (CGSize)pillSize;
- (CGSize)secondLineSize;
- (NSEdgeInsets)labelHorizontalMargins;
- (NSEdgeInsets)margins;
- (NSMutableAttributedString)firstLineAttributedString;
- (NSMutableAttributedString)secondLineAttributedString;
- (SLHighlightDisambiguationPillMetrics)init;
- (SLHighlightDisambiguationPillMetrics)initWithSlotStyle:(id)a3 tag:(id)a4;
- (const)firstLineFont;
- (const)lineFrom:(id)a3 maxWidth:(double)a4;
- (const)secondLineFont;
- (double)avatarDiameter;
- (double)chevronLeadingMargin;
- (double)pillHeight;
@end

@implementation SLHighlightDisambiguationPillMetrics

- (SLHighlightDisambiguationPillMetrics)initWithSlotStyle:(id)a3 tag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[SLHighlightDisambiguationPillMetrics initWithSlotStyle:tag:variant:](self, sel_initWithSlotStyle_tag_variant_, v6, v7, [v7 variant]);

  return v8;
}

+ (id)accessibilityLabelFor:(id)a3
{
  v3 = a3;
  v4 = specialized static DisambiguationPillMetrics.firstLineString(for:)(v3);
  v6 = v5;
  v7 = specialized static DisambiguationPillMetrics.secondLineString(for:)(v3);
  v9 = v8;

  MEMORY[0x231934620](v7, v9);

  v10 = MEMORY[0x231934530](v4, v6);

  return v10;
}

- (SLHighlightDisambiguationPillMetrics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSEdgeInsets)margins
{
  v2 = self;
  DisambiguationPillMetrics.pillMetrics.getter(&v7);

  v4 = *(&v7 + 1);
  v3 = *&v7;
  v5 = v8;
  v6 = v9;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)pillHeight
{
  v2 = self;
  v3 = DisambiguationPillMetrics.pillHeight.getter();

  return v3;
}

- (CGSize)pillSize
{
  v2 = self;
  DisambiguationPillMetrics.pillMetrics.getter(&v5);

  v3 = v6;
  v4 = v7;
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)avatarDiameter
{
  v2 = self;
  DisambiguationPillMetrics.pillMetrics.getter(v4);

  return v5;
}

- (BOOL)useSingleLineLayout
{
  v2 = self;
  DisambiguationPillMetrics.pillMetrics.getter(v4);

  return v5;
}

- (BOOL)useChevron
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  LOBYTE(v2) = (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v2 & 1;
}

- (CGImage)chevronImage
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 152))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v6);

  return v4;
}

- (CGSize)chevronSize
{
  v2 = self;
  DisambiguationPillMetrics.chevronSize.getter();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (double)chevronLeadingMargin
{
  v2 = self;
  DisambiguationPillMetrics.chevronLeadingMargin.getter();
  v4 = v3;

  return v4;
}

- (NSEdgeInsets)labelHorizontalMargins
{
  v2 = self;
  DisambiguationPillMetrics.pillMetrics.getter(v7);

  v3 = v8;
  v4 = v9;
  v5 = v10;
  v6 = v11;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (const)lineFrom:(id)a3 maxWidth:(double)a4
{
  v4 = a3;
  v5 = CTLineCreateWithAttributedString(v4);
  TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();
  if (TruncatedLineWithTokenHandler)
  {
    v7 = TruncatedLineWithTokenHandler;

    return v7;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

- (CGSize)firstLineSize
{
  v2 = self;
  DisambiguationPillMetrics.pillMetrics.getter(v5);

  v3 = v6;
  v4 = v7;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGColor)firstLineColor
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 64))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v6);

  return v4;
}

- (const)firstLineFont
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 72))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v6);

  return v4;
}

- (NSMutableAttributedString)firstLineAttributedString
{
  v3 = OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics;
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v15);
  v4 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + v3, v12);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v7 = *(v6 + 80);
  v8 = self;
  v9 = v7(v5, v6);
  v10 = (*(v4 + 192))(v9);

  __swift_destroy_boxed_opaque_existential_0(v12);
  __swift_destroy_boxed_opaque_existential_0(v15);

  return v10;
}

- (CGColor)secondLineColor
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 88))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v6);

  return v4;
}

- (const)secondLineFont
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 96))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v6);

  return v4;
}

- (CGSize)secondLineSize
{
  v2 = self;
  DisambiguationPillMetrics.pillMetrics.getter(v5);

  v3 = v6;
  v4 = v7;
  result.height = v4;
  result.width = v3;
  return result;
}

- (NSMutableAttributedString)secondLineAttributedString
{
  v3 = OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics;
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v15);
  v4 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + v3, v12);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v7 = *(v6 + 104);
  v8 = self;
  v9 = v7(v5, v6);
  v10 = (*(v4 + 200))(v9);

  __swift_destroy_boxed_opaque_existential_0(v12);
  __swift_destroy_boxed_opaque_existential_0(v15);

  return v10;
}

@end