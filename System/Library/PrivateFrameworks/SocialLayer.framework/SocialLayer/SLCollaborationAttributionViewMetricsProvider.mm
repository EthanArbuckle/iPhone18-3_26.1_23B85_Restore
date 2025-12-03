@interface SLCollaborationAttributionViewMetricsProvider
- (CGSize)drawingSize;
- (SLCollaborationAttributionViewMetricsProvider)init;
- (SLCollaborationAttributionViewMetricsProvider)initWithSlotStyle:(id)style tag:(id)tag;
- (double)avatarDiameter;
- (double)avatarLabelSpace;
- (double)titleSubtitleSpace;
@end

@implementation SLCollaborationAttributionViewMetricsProvider

- (SLCollaborationAttributionViewMetricsProvider)initWithSlotStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  variant = [tagCopy variant];
  [tagCopy maxWidth];
  v10 = v9;
  placeholderGlyphConfiguration = [tagCopy placeholderGlyphConfiguration];
  v12 = [(SLCollaborationAttributionViewMetricsProvider *)self initWithVariant:variant slotStyle:styleCopy maxWidth:placeholderGlyphConfiguration placeholderGlyphConfig:v10];

  return v12;
}

- (SLCollaborationAttributionViewMetricsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGSize)drawingSize
{
  v3 = (&self->super.isa + OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 8);
  v7 = *(v6 + 24);
  selfCopy = self;
  v9 = v7(v4, v6);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (double)avatarDiameter
{
  v3 = (&self->super.isa + OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 32);
  selfCopy = self;
  v8 = v6(v4, v5);

  return v8;
}

- (double)avatarLabelSpace
{
  v3 = (&self->super.isa + OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 48);
  selfCopy = self;
  v8 = v6(v4, v5);

  return v8;
}

- (double)titleSubtitleSpace
{
  v3 = (&self->super.isa + OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 56);
  selfCopy = self;
  v8 = v6(v4, v5);

  return v8;
}

@end