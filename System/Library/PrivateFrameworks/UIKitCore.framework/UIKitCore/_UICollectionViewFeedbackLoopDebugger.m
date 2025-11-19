@interface _UICollectionViewFeedbackLoopDebugger
- (_UICollectionViewFeedbackLoopDebugger)init;
- (void)printCollectedRecordsForCollectionView:(id)a3 raiseException:(BOOL)a4;
- (void)recordCollectionViewPointPropertyChange:(id)a3 fromPoint:(CGPoint)a4 toPoint:(CGPoint)a5;
- (void)recordGenericChangeWithMessage:(id)a3;
- (void)recordInvalidationWithContext:(id)a3;
- (void)recordPreferredAttributesChangeForElementWithAttributes:(id)a3 reason:(id)a4 changedAttribute:(id)a5 fromValue:(id)a6 toValue:(id)a7 layoutGeneratedValue:(id)a8;
- (void)recordUpdateVisibleCellsScheduledWithCallStack:(id)a3;
@end

@implementation _UICollectionViewFeedbackLoopDebugger

- (void)recordPreferredAttributesChangeForElementWithAttributes:(id)a3 reason:(id)a4 changedAttribute:(id)a5 fromValue:(id)a6 toValue:(id)a7 layoutGeneratedValue:(id)a8
{
  v23 = sub_18A4A7288();
  v14 = v13;
  v15 = sub_18A4A7288();
  v17 = v16;
  v18 = a3;
  v22 = a6;
  v19 = a7;
  v20 = a8;
  v21 = self;
  sub_188F70200(v18, v23, v14, v15, v17, a6, a7, a8);
}

- (void)recordCollectionViewPointPropertyChange:(id)a3 fromPoint:(CGPoint)a4 toPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  v10 = sub_18A4A7288();
  v12 = v11;
  v13 = OBJC_IVAR____UICollectionViewFeedbackLoopDebugger_currentlyTrackedChangeRecords;
  swift_beginAccess();
  v14 = *(&self->super.isa + v13);
  v15 = self;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(&self->super.isa + v13) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_188E4BDB0(0, *(v14 + 2) + 1, 1, v14);
    *(&self->super.isa + v13) = v14;
  }

  v18 = *(v14 + 2);
  v17 = *(v14 + 3);
  if (v18 >= v17 >> 1)
  {
    v14 = sub_188E4BDB0((v17 > 1), v18 + 1, 1, v14);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937F10);
  v22 = sub_188A34360(&qword_1EA937F18, &qword_1EA937F10);
  v19 = swift_allocObject();
  *&v20 = v19;
  *(v19 + 2) = v10;
  *(v19 + 3) = v12;
  v19[4] = v8;
  v19[5] = v7;
  v19[6] = x;
  v19[7] = y;
  *(v14 + 2) = v18 + 1;
  sub_188A5EBAC(&v20, v14 + 40 * v18 + 32);
  *(&self->super.isa + v13) = v14;
  swift_endAccess();
}

- (void)recordGenericChangeWithMessage:(id)a3
{
  v4 = sub_18A4A7288();
  v6 = v5;
  v7 = OBJC_IVAR____UICollectionViewFeedbackLoopDebugger_currentlyTrackedChangeRecords;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  v9 = self;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(&self->super.isa + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_188E4BDB0(0, *(v8 + 2) + 1, 1, v8);
    *(&self->super.isa + v7) = v8;
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_188E4BDB0((v11 > 1), v12 + 1, 1, v8);
  }

  v14 = MEMORY[0x1E69E6158];
  v15 = &off_1EFAD0A28;
  *&v13 = v4;
  *(&v13 + 1) = v6;
  *(v8 + 2) = v12 + 1;
  sub_188A5EBAC(&v13, v8 + 40 * v12 + 32);
  *(&self->super.isa + v7) = v8;
  swift_endAccess();
}

- (void)recordInvalidationWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188F70A10(v4);
}

- (void)recordUpdateVisibleCellsScheduledWithCallStack:(id)a3
{
  v4 = sub_18A4A7548();
  v5 = self;
  sub_188F70BB4(v4);
}

- (void)printCollectedRecordsForCollectionView:(id)a3 raiseException:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_188F70D54(v6, v4);
}

- (_UICollectionViewFeedbackLoopDebugger)init
{
  v2 = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR____UICollectionViewFeedbackLoopDebugger_currentlyTrackedChangeRecords) = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR____UICollectionViewFeedbackLoopDebugger_invalidationRecords) = v2;
  *(&self->super.isa + OBJC_IVAR____UICollectionViewFeedbackLoopDebugger_updateVisibleCellsRecords) = v2;
  v4.receiver = self;
  v4.super_class = _UICollectionViewFeedbackLoopDebugger;
  return [(_UICollectionViewFeedbackLoopDebugger *)&v4 init];
}

@end