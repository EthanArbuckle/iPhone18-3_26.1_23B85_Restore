@interface TextEffectsRenderer
- (BOOL)fragmentsValid;
- (CGPoint)convertPointFromRenderSpace:(CGPoint)space;
- (CGPoint)convertPointToRenderSpace:(CGPoint)space location:(id)location affinity:(int64_t)affinity;
- (CGPoint)convertPointToTextAnimationsCoordinateSpace:(CGPoint)space;
- (CGRect)customTextBounds;
- (NSCustomTextRenderingDelegate)delegate;
- (_NSCustomTextRenderingDisplayLink)externalDisplayLink;
- (id)animatorForTextAnimation:(id)animation;
- (id)animatorForTextAnimation:(id)animation notify:(id)notify;
- (void)beginLayout;
- (void)didLayoutFragment:(id)fragment;
- (void)endLayoutWithConsumer:(id)consumer;
- (void)enumerateTextSegmentsInRange:(id)range type:(int64_t)type options:(unint64_t)options textLayoutManager:(id)manager usingBlock:(id)block;
- (void)invalidateTemporaryAttributesInRange:(id)range;
- (void)postLayoutNotify;
- (void)setContentsScale:(double)scale;
- (void)setExternalDisplayLink:(id)link;
- (void)setNeedsDisplay;
@end

@implementation TextEffectsRenderer

- (void)setContentsScale:(double)scale
{
  v3 = *(self + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_contentsScale);
  *(self + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_contentsScale) = scale;
  selfCopy = self;
  TextEffectsRenderer.contentsScale.didset(v3);
}

- (void)beginLayout
{
  v3 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_updatedFragments;
  swift_beginAccess();
  *(self + v3) = MEMORY[0x1E69E7CC0];
}

- (void)setNeedsDisplay
{
  selfCopy = self;
  TextEffectsRenderer.setNeedsDisplay()();
}

- (void)endLayoutWithConsumer:(id)consumer
{
  v4 = _Block_copy(consumer);
  _Block_copy(v4);
  selfCopy = self;
  specialized TextEffectsRenderer.endLayout(with:)(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)didLayoutFragment:(id)fragment
{
  v5 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_updatedFragments;
  swift_beginAccess();
  fragmentCopy = fragment;
  selfCopy = self;
  MEMORY[0x19A8BD720]();
  if (*((*(self + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(self + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

- (void)postLayoutNotify
{
  selfCopy = self;
  TextEffectsRenderer.postLayoutNotify()();
}

- (NSCustomTextRenderingDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CGRect)customTextBounds
{
  v2 = (self + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentBounds);
  v3 = *(self + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_contentsScale);
  if (v3 == 0.0)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 1.0 / v3;
  }

  v9 = *v2;
  v10 = v2[1];
  CGRect.roundCoordinatesToNearestOrUp(toMultipleOf:)(v4);
  v6 = *(&v9 + 1);
  v5 = *&v9;
  v8 = *(&v10 + 1);
  v7 = *&v10;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (_NSCustomTextRenderingDisplayLink)externalDisplayLink
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setExternalDisplayLink:(id)link
{
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized TextEffectsRenderer.externalDisplayLink.setter(link);

  swift_unknownObjectRelease();
}

- (BOOL)fragmentsValid
{
  selfCopy = self;
  v3 = TextEffectsRenderer.fragmentsValid.getter();

  return v3;
}

- (void)enumerateTextSegmentsInRange:(id)range type:(int64_t)type options:(unint64_t)options textLayoutManager:(id)manager usingBlock:(id)block
{
  v12 = _Block_copy(block);
  v16[2] = v12;
  rangeCopy = range;
  managerCopy = manager;
  selfCopy = self;
  TextEffectsRenderer.enumerateTextSegments(in:type:options:textLayoutManager:using:)(rangeCopy, type, options, managerCopy, partial apply for thunk for @callee_unowned @convention(block) (@unowned NSTextRange?, @unowned CGRect, @unowned CGFloat, @unowned NSTextContainer) -> (@unowned ObjCBool), v16);
  _Block_release(v12);
}

- (void)invalidateTemporaryAttributesInRange:(id)range
{
  rangeCopy = range;
  selfCopy = self;
  TextEffectsRenderer.invalidateTemporaryAttributes(in:)(rangeCopy);
}

- (CGPoint)convertPointFromRenderSpace:(CGPoint)space
{
  y = space.y;
  x = space.x;
  selfCopy = self;
  v6 = TextEffectsRenderer.convertFromRenderSpace(_:)(__PAIR128__(*&y, *&x));

  v7 = v6.x;
  v8 = v6.y;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)convertPointToTextAnimationsCoordinateSpace:(CGPoint)space
{
  y = space.y;
  x = space.x;
  selfCopy = self;
  TextEffectsRenderer._convertToRenderSpace(_:textRange:)(0, x, y);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)convertPointToRenderSpace:(CGPoint)space location:(id)location affinity:(int64_t)affinity
{
  y = space.y;
  x = space.x;
  swift_unknownObjectRetain();
  selfCopy = self;
  TextEffectsRenderer.convertToRenderSpace(_:location:affinity:)(location, affinity, x, y);
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (id)animatorForTextAnimation:(id)animation
{
  type metadata accessor for AnyTextAnimation();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v3 = TextEffectsAnimationController.animator(for:)(v3);
  }

  return v3;
}

- (id)animatorForTextAnimation:(id)animation notify:(id)notify
{
  v5 = _Block_copy(notify);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  type metadata accessor for AnyTextAnimation();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    swift_unknownObjectRetain_n();
    selfCopy = self;
    v10 = TextEffectsAnimationController.animator(for:with:)(v8, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned _NSTextAnimator) -> (), v6);

    swift_unknownObjectRelease_n();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end