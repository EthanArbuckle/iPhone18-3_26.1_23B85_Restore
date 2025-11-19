@interface SLCollaborationAttributionViewMetricsProvider
- (CGSize)drawingSize;
- (SLCollaborationAttributionViewMetricsProvider)init;
- (SLCollaborationAttributionViewMetricsProvider)initWithSlotStyle:(id)a3 tag:(id)a4;
- (double)avatarDiameter;
- (double)avatarLabelSpace;
- (double)titleSubtitleSpace;
@end

@implementation SLCollaborationAttributionViewMetricsProvider

- (SLCollaborationAttributionViewMetricsProvider)initWithSlotStyle:(id)a3 tag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 variant];
  [v7 maxWidth];
  v10 = v9;
  v11 = [v7 placeholderGlyphConfiguration];
  v12 = [(SLCollaborationAttributionViewMetricsProvider *)self initWithVariant:v8 slotStyle:v6 maxWidth:v11 placeholderGlyphConfig:v10];

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
  v8 = self;
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
  v7 = self;
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
  v7 = self;
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
  v7 = self;
  v8 = v6(v4, v5);

  return v8;
}

@end