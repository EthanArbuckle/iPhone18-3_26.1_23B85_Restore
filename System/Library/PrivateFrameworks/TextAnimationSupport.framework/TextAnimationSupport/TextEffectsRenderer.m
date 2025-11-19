@interface TextEffectsRenderer
- (BOOL)fragmentsValid;
- (CGPoint)convertPointFromRenderSpace:(CGPoint)a3;
- (CGPoint)convertPointToRenderSpace:(CGPoint)a3 location:(id)a4 affinity:(int64_t)a5;
- (CGPoint)convertPointToTextAnimationsCoordinateSpace:(CGPoint)a3;
- (CGRect)customTextBounds;
- (NSCustomTextRenderingDelegate)delegate;
- (_NSCustomTextRenderingDisplayLink)externalDisplayLink;
- (id)animatorForTextAnimation:(id)a3;
- (id)animatorForTextAnimation:(id)a3 notify:(id)a4;
- (void)beginLayout;
- (void)didLayoutFragment:(id)a3;
- (void)endLayoutWithConsumer:(id)a3;
- (void)enumerateTextSegmentsInRange:(id)a3 type:(int64_t)a4 options:(unint64_t)a5 textLayoutManager:(id)a6 usingBlock:(id)a7;
- (void)invalidateTemporaryAttributesInRange:(id)a3;
- (void)postLayoutNotify;
- (void)setContentsScale:(double)a3;
- (void)setExternalDisplayLink:(id)a3;
- (void)setNeedsDisplay;
@end

@implementation TextEffectsRenderer

- (void)setContentsScale:(double)a3
{
  v3 = *(self + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_contentsScale);
  *(self + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_contentsScale) = a3;
  v4 = self;
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
  v2 = self;
  TextEffectsRenderer.setNeedsDisplay()();
}

- (void)endLayoutWithConsumer:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  specialized TextEffectsRenderer.endLayout(with:)(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)didLayoutFragment:(id)a3
{
  v5 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_updatedFragments;
  swift_beginAccess();
  v6 = a3;
  v7 = self;
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
  v2 = self;
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

- (void)setExternalDisplayLink:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  specialized TextEffectsRenderer.externalDisplayLink.setter(a3);

  swift_unknownObjectRelease();
}

- (BOOL)fragmentsValid
{
  v2 = self;
  v3 = TextEffectsRenderer.fragmentsValid.getter();

  return v3;
}

- (void)enumerateTextSegmentsInRange:(id)a3 type:(int64_t)a4 options:(unint64_t)a5 textLayoutManager:(id)a6 usingBlock:(id)a7
{
  v12 = _Block_copy(a7);
  v16[2] = v12;
  v13 = a3;
  v14 = a6;
  v15 = self;
  TextEffectsRenderer.enumerateTextSegments(in:type:options:textLayoutManager:using:)(v13, a4, a5, v14, partial apply for thunk for @callee_unowned @convention(block) (@unowned NSTextRange?, @unowned CGRect, @unowned CGFloat, @unowned NSTextContainer) -> (@unowned ObjCBool), v16);
  _Block_release(v12);
}

- (void)invalidateTemporaryAttributesInRange:(id)a3
{
  v4 = a3;
  v5 = self;
  TextEffectsRenderer.invalidateTemporaryAttributes(in:)(v4);
}

- (CGPoint)convertPointFromRenderSpace:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = TextEffectsRenderer.convertFromRenderSpace(_:)(__PAIR128__(*&y, *&x));

  v7 = v6.x;
  v8 = v6.y;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)convertPointToTextAnimationsCoordinateSpace:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  TextEffectsRenderer._convertToRenderSpace(_:textRange:)(0, x, y);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)convertPointToRenderSpace:(CGPoint)a3 location:(id)a4 affinity:(int64_t)a5
{
  y = a3.y;
  x = a3.x;
  swift_unknownObjectRetain();
  v10 = self;
  TextEffectsRenderer.convertToRenderSpace(_:location:affinity:)(a4, a5, x, y);
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (id)animatorForTextAnimation:(id)a3
{
  type metadata accessor for AnyTextAnimation();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v3 = TextEffectsAnimationController.animator(for:)(v3);
  }

  return v3;
}

- (id)animatorForTextAnimation:(id)a3 notify:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  type metadata accessor for AnyTextAnimation();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    swift_unknownObjectRetain_n();
    v9 = self;
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