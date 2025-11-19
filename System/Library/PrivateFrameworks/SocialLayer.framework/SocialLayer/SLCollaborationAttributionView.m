@interface SLCollaborationAttributionView
- (BOOL)automaticallyAdjustsMaxWidthToFitBounds;
- (CGSize)intrinsicContentSize;
- (SLCollaborationAttributionView)initWithCoder:(id)a3;
- (SLCollaborationAttributionView)initWithFrame:(CGRect)a3;
- (SLCollaborationAttributionView)initWithHighlight:(id)a3 variant:(int64_t)a4;
- (SLCollaborationAttributionView)initWithServiceProxyClass:(Class)a3 maxWidth:(double)a4;
- (SLCollaborationAttributionViewDelegate)delegate;
- (id)makePlaceholderSlotContentForStyle:(id)a3;
- (void)layoutSubviews;
- (void)remoteContentIsLoadedValueChanged;
- (void)renderRemoteContentForLayerContextID:(int64_t)a3 style:(id)a4 yield:(id)a5;
- (void)setAutomaticallyAdjustsMaxWidthToFitBounds:(BOOL)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePlaceHolderSymbolScale:(int64_t)a3 weight:(int64_t)a4 pointSize:(double)a5;
@end

@implementation SLCollaborationAttributionView

- (CGSize)intrinsicContentSize
{
  v2 = self;
  [(SLRemoteView *)v2 maxWidth];
  v4 = v3;
  v5 = [(SLRemoteView *)v2 maxWidth];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x150))(v5);

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (SLCollaborationAttributionViewDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)automaticallyAdjustsMaxWidthToFitBounds
{
  v3 = OBJC_IVAR___SLCollaborationAttributionView_automaticallyAdjustsMaxWidthToFitBounds;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAutomaticallyAdjustsMaxWidthToFitBounds:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR___SLCollaborationAttributionView_automaticallyAdjustsMaxWidthToFitBounds;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v3;
  if ((v6 & 1) == 0 && v3)
  {
    [(SLCollaborationAttributionView *)self setNeedsLayout];
  }
}

- (SLCollaborationAttributionView)initWithHighlight:(id)a3 variant:(int64_t)a4
{
  v5 = a3;
  v6 = specialized CollaborationAttributionView.init(highlight:variant:)(v5, a4);

  return v6;
}

- (SLCollaborationAttributionView)initWithCoder:(id)a3
{
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)layoutSubviews
{
  v2 = self;
  CollaborationAttributionView.layoutSubviews()();
}

- (void)updatePlaceHolderSymbolScale:(int64_t)a3 weight:(int64_t)a4 pointSize:(double)a5
{
  v8 = self;
  CollaborationAttributionView.updatePlaceholderSymbol(scale:weight:pointSize:)(a3, a4, a5);
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CollaborationAttributionView();
  v2 = v6.receiver;
  [(SLCollaborationAttributionView *)&v6 tintColorDidChange];
  v3 = [v2 slotView];
  v4 = [v2 tintColor];
  [v3 setTintColor_];

  v5 = [v2 slotView];
  [v5 _updateContent];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  CollaborationAttributionView.traitCollectionDidChange(_:)(v9);
}

- (id)makePlaceholderSlotContentForStyle:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = CollaborationAttributionView.makePlaceholderSlotContent(for:)(v4);

  return v6;
}

- (void)renderRemoteContentForLayerContextID:(int64_t)a3 style:(id)a4 yield:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a4;
  v11 = self;
  CollaborationAttributionView.renderRemoteContent(forLayerContextID:style:yield:)(a3, v10, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UISSlotAnyContent) -> (@unowned ObjCBool), v9);
}

- (void)remoteContentIsLoadedValueChanged
{
  v4 = self;
  if ([(SLRemoteView *)v4 remoteContentIsLoaded]&& (v2 = (*((*MEMORY[0x277D85000] & *v4) + 0xA0))()) != 0)
  {
    v3 = v2;
    v2();

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
  }

  else
  {
  }
}

- (SLCollaborationAttributionView)initWithServiceProxyClass:(Class)a3 maxWidth:(double)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (SLCollaborationAttributionView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end