@interface SLCollaborationAttributionView
- (BOOL)automaticallyAdjustsMaxWidthToFitBounds;
- (CGSize)intrinsicContentSize;
- (SLCollaborationAttributionView)initWithCoder:(id)coder;
- (SLCollaborationAttributionView)initWithFrame:(CGRect)frame;
- (SLCollaborationAttributionView)initWithHighlight:(id)highlight variant:(int64_t)variant;
- (SLCollaborationAttributionView)initWithServiceProxyClass:(Class)class maxWidth:(double)width;
- (SLCollaborationAttributionViewDelegate)delegate;
- (id)makePlaceholderSlotContentForStyle:(id)style;
- (void)layoutSubviews;
- (void)remoteContentIsLoadedValueChanged;
- (void)renderRemoteContentForLayerContextID:(int64_t)d style:(id)style yield:(id)yield;
- (void)setAutomaticallyAdjustsMaxWidthToFitBounds:(BOOL)bounds;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePlaceHolderSymbolScale:(int64_t)scale weight:(int64_t)weight pointSize:(double)size;
@end

@implementation SLCollaborationAttributionView

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  [(SLRemoteView *)selfCopy maxWidth];
  v4 = v3;
  maxWidth = [(SLRemoteView *)selfCopy maxWidth];
  v6 = (*((*MEMORY[0x277D85000] & *selfCopy) + 0x150))(maxWidth);

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

- (void)setAutomaticallyAdjustsMaxWidthToFitBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  v5 = OBJC_IVAR___SLCollaborationAttributionView_automaticallyAdjustsMaxWidthToFitBounds;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = boundsCopy;
  if ((v6 & 1) == 0 && boundsCopy)
  {
    [(SLCollaborationAttributionView *)self setNeedsLayout];
  }
}

- (SLCollaborationAttributionView)initWithHighlight:(id)highlight variant:(int64_t)variant
{
  highlightCopy = highlight;
  v6 = specialized CollaborationAttributionView.init(highlight:variant:)(highlightCopy, variant);

  return v6;
}

- (SLCollaborationAttributionView)initWithCoder:(id)coder
{
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)layoutSubviews
{
  selfCopy = self;
  CollaborationAttributionView.layoutSubviews()();
}

- (void)updatePlaceHolderSymbolScale:(int64_t)scale weight:(int64_t)weight pointSize:(double)size
{
  selfCopy = self;
  CollaborationAttributionView.updatePlaceholderSymbol(scale:weight:pointSize:)(scale, weight, size);
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CollaborationAttributionView();
  v2 = v6.receiver;
  [(SLCollaborationAttributionView *)&v6 tintColorDidChange];
  slotView = [v2 slotView];
  tintColor = [v2 tintColor];
  [slotView setTintColor_];

  slotView2 = [v2 slotView];
  [slotView2 _updateContent];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  CollaborationAttributionView.traitCollectionDidChange(_:)(v9);
}

- (id)makePlaceholderSlotContentForStyle:(id)style
{
  styleCopy = style;
  selfCopy = self;
  v6 = CollaborationAttributionView.makePlaceholderSlotContent(for:)(styleCopy);

  return v6;
}

- (void)renderRemoteContentForLayerContextID:(int64_t)d style:(id)style yield:(id)yield
{
  v8 = _Block_copy(yield);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  styleCopy = style;
  selfCopy = self;
  CollaborationAttributionView.renderRemoteContent(forLayerContextID:style:yield:)(d, styleCopy, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UISSlotAnyContent) -> (@unowned ObjCBool), v9);
}

- (void)remoteContentIsLoadedValueChanged
{
  selfCopy = self;
  if ([(SLRemoteView *)selfCopy remoteContentIsLoaded]&& (v2 = (*((*MEMORY[0x277D85000] & *selfCopy) + 0xA0))()) != 0)
  {
    v3 = v2;
    v2();

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
  }

  else
  {
  }
}

- (SLCollaborationAttributionView)initWithServiceProxyClass:(Class)class maxWidth:(double)width
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (SLCollaborationAttributionView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end