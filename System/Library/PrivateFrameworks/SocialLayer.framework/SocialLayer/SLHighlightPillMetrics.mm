@interface SLHighlightPillMetrics
+ (CGSize)chevronSizeWithStyle:(id)style variant:(unint64_t)variant;
+ (NSEdgeInsets)pillMarginsWithStyle:(id)style variant:(unint64_t)variant maxWidth:(double)width;
+ (const)chevronFontDescriptorWithStyle:(id)style variant:(unint64_t)variant;
+ (const)truncatedLineFrom:(id)from maxWidth:(double)width;
+ (double)pillHeightWithStyle:(id)style variant:(unint64_t)variant maxWidth:(double)width;
+ (id)accessibilityLabelFor:(id)for;
+ (int64_t)maxSendersToDisplayWithStyle:(id)style variant:(unint64_t)variant;
- (BOOL)hasValidMetricsForDrawing;
- (BOOL)shouldDisplayPin;
- (BOOL)useDoubleLinedLabel;
- (CGSize)chevronSize;
- (CGSize)pillSize;
- (NSEdgeInsets)labelHorizontalMargins;
- (NSEdgeInsets)margins;
- (NSEdgeInsets)minimumLabelHorizontalMargines;
- (SLHighlightPillMetrics)init;
- (SLHighlightPillMetrics)initWithSlotStyle:(id)style tag:(id)tag;
- (const)baseFont;
- (const)chevronFontDescriptor;
- (const)firstLine;
- (const)secondLine;
- (double)avatarContainerWidth;
- (double)avatarDiameter;
- (double)avatarKnockoutWidth;
- (double)overlappedAvatarKnockoutBorderWidth;
- (double)overlappedAvatarVisibleWidth;
- (double)specMaxWidth;
- (int64_t)imageCount;
@end

@implementation SLHighlightPillMetrics

- (SLHighlightPillMetrics)initWithSlotStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  v8 = -[SLHighlightPillMetrics initWithSlotStyle:tag:variant:](self, sel_initWithSlotStyle_tag_variant_, styleCopy, tagCopy, [tagCopy variant]);

  return v8;
}

- (SLHighlightPillMetrics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSEdgeInsets)margins
{
  selfCopy = self;
  PillMetrics.pillMetrics.getter(v7);

  outlined destroy of SLDHighlightPillMetrics(v7);
  v3 = *&v7[1];
  v4 = *&v7[2];
  v5 = *&v7[3];
  v6 = *&v7[4];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGSize)pillSize
{
  selfCopy = self;
  PillMetrics.pillMetrics.getter(v5);

  outlined destroy of SLDHighlightPillMetrics(v5);
  v3 = *&v5[5];
  v4 = *&v5[6];
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)hasValidMetricsForDrawing
{
  selfCopy = self;
  PillMetrics.pillMetrics.getter(v4);

  outlined destroy of SLDHighlightPillMetrics(v4);
  return v4[0];
}

- (const)firstLine
{
  selfCopy = self;
  PillMetrics.pillMetrics.getter(v5);

  v3 = v5[7];
  outlined destroy of SLDHighlightPillMetrics(v5);

  return v3;
}

- (const)secondLine
{
  selfCopy = self;
  PillMetrics.pillMetrics.getter(v5);

  v3 = v5[8];
  outlined destroy of SLDHighlightPillMetrics(v5);

  return v3;
}

- (double)overlappedAvatarKnockoutBorderWidth
{
  selfCopy = self;
  PillMetrics.pillMetrics.getter(v4);

  outlined destroy of SLDHighlightPillMetrics(v4);
  return *&v4[9];
}

- (NSEdgeInsets)labelHorizontalMargins
{
  selfCopy = self;
  PillMetrics.pillMetrics.getter(v7);

  outlined destroy of SLDHighlightPillMetrics(v7);
  v3 = *&v7[10];
  v4 = *&v7[11];
  v5 = *&v7[12];
  v6 = *&v7[13];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)specMaxWidth
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightPillMetrics_metrics, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 80))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (NSEdgeInsets)minimumLabelHorizontalMargines
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightPillMetrics_metrics, v15);
  v2 = v16;
  v3 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v4 = (*(v3 + 88))(v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_0(v15);
  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (double)avatarDiameter
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightPillMetrics_metrics, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 96))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (double)avatarContainerWidth
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightPillMetrics_metrics, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 112))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (double)avatarKnockoutWidth
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightPillMetrics_metrics, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 120))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (double)overlappedAvatarVisibleWidth
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightPillMetrics_metrics, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 104))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (BOOL)useDoubleLinedLabel
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  LOBYTE(v2) = (*(v3 + 128))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v2 & 1;
}

- (CGSize)chevronSize
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightPillMetrics_metrics, v9);
  v2 = v10;
  v3 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v4 = (*(v3 + 192))(v2, v3);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(v9);
  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

+ (id)accessibilityLabelFor:(id)for
{
  forCopy = for;
  v4 = specialized static PillMetrics.accessibilityLabel(for:)(forCopy);
  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x231934530](v4, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (double)pillHeightWithStyle:(id)style variant:(unint64_t)variant maxWidth:(double)width
{
  styleCopy = style;
  specialized static PillMetrics.pillHeight(style:variant:maxWidth:)(styleCopy, variant, width);
  v9 = v8;

  return v9;
}

+ (NSEdgeInsets)pillMarginsWithStyle:(id)style variant:(unint64_t)variant maxWidth:(double)width
{
  styleCopy = style;
  specialized static PillMetrics.pillMargins(style:variant:maxWidth:)(styleCopy, variant, width);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

+ (int64_t)maxSendersToDisplayWithStyle:(id)style variant:(unint64_t)variant
{
  swift_getObjCClassMetadata();
  styleCopy = style;
  static PillMetrics.metricsPlaceholder(for:variant:)(styleCopy, variant, v14);
  v7 = v15;
  v8 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v9 = (*(v8 + 40))(v7, v8);
  v10 = v15;
  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v12 = (*(v11 + 48))(v10, v11);

  if (v12 > v9)
  {
    v9 = v12;
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v9;
}

+ (const)chevronFontDescriptorWithStyle:(id)style variant:(unint64_t)variant
{
  swift_getObjCClassMetadata();
  styleCopy = style;
  static PillMetrics.metricsPlaceholder(for:variant:)(styleCopy, variant, v11);
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v9 = (*(v8 + 184))(v7, v8);

  __swift_destroy_boxed_opaque_existential_0(v11);

  return v9;
}

+ (CGSize)chevronSizeWithStyle:(id)style variant:(unint64_t)variant
{
  swift_getObjCClassMetadata();
  styleCopy = style;
  static PillMetrics.metricsPlaceholder(for:variant:)(styleCopy, variant, v14);
  v7 = v15;
  v8 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v9 = (*(v8 + 192))(v7, v8);
  v11 = v10;

  __swift_destroy_boxed_opaque_existential_0(v14);
  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (const)truncatedLineFrom:(id)from maxWidth:(double)width
{
  fromCopy = from;
  v5 = CTLineCreateWithAttributedString(fromCopy);
  TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();

  return TruncatedLineWithTokenHandler;
}

- (int64_t)imageCount
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightPillMetrics_metrics, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 64))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (BOOL)shouldDisplayPin
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  LOBYTE(v2) = (*(v3 + 72))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v2 & 1;
}

- (const)chevronFontDescriptor
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightPillMetrics_metrics, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 184))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v6);

  return v4;
}

- (const)baseFont
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(self + OBJC_IVAR___SLHighlightPillMetrics_metrics, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 152))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v6);

  return v4;
}

@end