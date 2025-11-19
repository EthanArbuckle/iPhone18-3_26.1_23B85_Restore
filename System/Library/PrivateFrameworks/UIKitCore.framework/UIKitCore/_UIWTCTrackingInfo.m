@interface _UIWTCTrackingInfo
- (BOOL)isMarkedForRemovalTargetedPreview:(id)a3;
- (NSMutableArray)anticipationAnimationSubranges;
- (NSMutableArray)insertionAnimationSubranges;
- (NSMutableArray)removalAnimationSubranges;
- (NSMutableDictionary)anticipationAnimationPreviews;
- (NSMutableDictionary)backingProofreadingSuggestionStatePerSuggestionID;
- (NSMutableDictionary)customAnimationFillColorsBySubrangeIndex;
- (NSMutableDictionary)decorationContainerViewsPerRange;
- (NSMutableDictionary)insertionAnimationPreviews;
- (NSMutableDictionary)proofreadingSuggestionIDsPerDeliveryID;
- (NSMutableDictionary)removalAnimationPreviews;
- (NSMutableIndexSet)finishedAnticipationSubrangeIndexes;
- (NSMutableIndexSet)finishedInsertionSubrangeIndexes;
- (NSMutableIndexSet)finishedRemovalSubrangeIndexes;
- (NSMutableIndexSet)landedReplacementSubrangeIndexes;
- (id)customFillColorForSubrangeIndex:(unint64_t)a3;
- (id)finishedSubrangeIndexesForTextAnimation:(int64_t)a3;
- (id)proofreadingSuggestionIDsForDelivery:(id)a3;
- (id)subrangesForTextAnimation:(int64_t)a3;
- (id)targetedPreviewForTextAnimation:(int64_t)a3 subrangeIndex:(unint64_t)a4;
- (id)targetedPreviewsForTextAnimation:(int64_t)a3;
- (int64_t)backingProofreadingSuggestionStateForSuggestion:(id)a3;
- (void)markForRemovalTargetedPreviewForTextAnimation:(int64_t)a3 subrangeIndex:(unint64_t)a4;
- (void)setCustomFillColor:(id)a3 forSubrangeIndex:(unint64_t)a4;
@end

@implementation _UIWTCTrackingInfo

- (NSMutableArray)anticipationAnimationSubranges
{
  anticipationAnimationSubranges = self->_anticipationAnimationSubranges;
  if (!anticipationAnimationSubranges)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = self->_anticipationAnimationSubranges;
    self->_anticipationAnimationSubranges = v4;

    anticipationAnimationSubranges = self->_anticipationAnimationSubranges;
  }

  return anticipationAnimationSubranges;
}

- (NSMutableArray)removalAnimationSubranges
{
  removalAnimationSubranges = self->_removalAnimationSubranges;
  if (!removalAnimationSubranges)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = self->_removalAnimationSubranges;
    self->_removalAnimationSubranges = v4;

    removalAnimationSubranges = self->_removalAnimationSubranges;
  }

  return removalAnimationSubranges;
}

- (NSMutableArray)insertionAnimationSubranges
{
  insertionAnimationSubranges = self->_insertionAnimationSubranges;
  if (!insertionAnimationSubranges)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = self->_insertionAnimationSubranges;
    self->_insertionAnimationSubranges = v4;

    insertionAnimationSubranges = self->_insertionAnimationSubranges;
  }

  return insertionAnimationSubranges;
}

- (NSMutableIndexSet)finishedAnticipationSubrangeIndexes
{
  finishedAnticipationSubrangeIndexes = self->_finishedAnticipationSubrangeIndexes;
  if (!finishedAnticipationSubrangeIndexes)
  {
    v4 = [MEMORY[0x1E696AD50] indexSet];
    v5 = self->_finishedAnticipationSubrangeIndexes;
    self->_finishedAnticipationSubrangeIndexes = v4;

    finishedAnticipationSubrangeIndexes = self->_finishedAnticipationSubrangeIndexes;
  }

  return finishedAnticipationSubrangeIndexes;
}

- (NSMutableIndexSet)finishedRemovalSubrangeIndexes
{
  finishedRemovalSubrangeIndexes = self->_finishedRemovalSubrangeIndexes;
  if (!finishedRemovalSubrangeIndexes)
  {
    v4 = [MEMORY[0x1E696AD50] indexSet];
    v5 = self->_finishedRemovalSubrangeIndexes;
    self->_finishedRemovalSubrangeIndexes = v4;

    finishedRemovalSubrangeIndexes = self->_finishedRemovalSubrangeIndexes;
  }

  return finishedRemovalSubrangeIndexes;
}

- (NSMutableIndexSet)finishedInsertionSubrangeIndexes
{
  finishedInsertionSubrangeIndexes = self->_finishedInsertionSubrangeIndexes;
  if (!finishedInsertionSubrangeIndexes)
  {
    v4 = [MEMORY[0x1E696AD50] indexSet];
    v5 = self->_finishedInsertionSubrangeIndexes;
    self->_finishedInsertionSubrangeIndexes = v4;

    finishedInsertionSubrangeIndexes = self->_finishedInsertionSubrangeIndexes;
  }

  return finishedInsertionSubrangeIndexes;
}

- (NSMutableIndexSet)landedReplacementSubrangeIndexes
{
  landedReplacementSubrangeIndexes = self->_landedReplacementSubrangeIndexes;
  if (!landedReplacementSubrangeIndexes)
  {
    v4 = [MEMORY[0x1E696AD50] indexSet];
    v5 = self->_landedReplacementSubrangeIndexes;
    self->_landedReplacementSubrangeIndexes = v4;

    landedReplacementSubrangeIndexes = self->_landedReplacementSubrangeIndexes;
  }

  return landedReplacementSubrangeIndexes;
}

- (id)subrangesForTextAnimation:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = [(_UIWTCTrackingInfo *)self insertionAnimationSubranges];
  }

  else if (a3 == 1)
  {
    v3 = [(_UIWTCTrackingInfo *)self removalAnimationSubranges];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(_UIWTCTrackingInfo *)self anticipationAnimationSubranges];
  }

  return v3;
}

- (id)finishedSubrangeIndexesForTextAnimation:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = [(_UIWTCTrackingInfo *)self finishedInsertionSubrangeIndexes];
  }

  else if (a3 == 1)
  {
    v3 = [(_UIWTCTrackingInfo *)self finishedRemovalSubrangeIndexes];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(_UIWTCTrackingInfo *)self finishedAnticipationSubrangeIndexes];
  }

  return v3;
}

- (NSMutableDictionary)anticipationAnimationPreviews
{
  anticipationAnimationPreviews = self->_anticipationAnimationPreviews;
  if (!anticipationAnimationPreviews)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_anticipationAnimationPreviews;
    self->_anticipationAnimationPreviews = v4;

    anticipationAnimationPreviews = self->_anticipationAnimationPreviews;
  }

  return anticipationAnimationPreviews;
}

- (NSMutableDictionary)removalAnimationPreviews
{
  removalAnimationPreviews = self->_removalAnimationPreviews;
  if (!removalAnimationPreviews)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_removalAnimationPreviews;
    self->_removalAnimationPreviews = v4;

    removalAnimationPreviews = self->_removalAnimationPreviews;
  }

  return removalAnimationPreviews;
}

- (NSMutableDictionary)insertionAnimationPreviews
{
  insertionAnimationPreviews = self->_insertionAnimationPreviews;
  if (!insertionAnimationPreviews)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_insertionAnimationPreviews;
    self->_insertionAnimationPreviews = v4;

    insertionAnimationPreviews = self->_insertionAnimationPreviews;
  }

  return insertionAnimationPreviews;
}

- (id)targetedPreviewsForTextAnimation:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = [(_UIWTCTrackingInfo *)self insertionAnimationPreviews];
  }

  else if (a3 == 1)
  {
    v3 = [(_UIWTCTrackingInfo *)self removalAnimationPreviews];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(_UIWTCTrackingInfo *)self anticipationAnimationPreviews];
  }

  return v3;
}

- (id)targetedPreviewForTextAnimation:(int64_t)a3 subrangeIndex:(unint64_t)a4
{
  v5 = [(_UIWTCTrackingInfo *)self targetedPreviewsForTextAnimation:a3];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (void)markForRemovalTargetedPreviewForTextAnimation:(int64_t)a3 subrangeIndex:(unint64_t)a4
{
  v5 = [(_UIWTCTrackingInfo *)self targetedPreviewsForTextAnimation:a3];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  object = [v5 objectForKeyedSubscript:v6];

  objc_setAssociatedObject(object, &_UIWTCTargetedPreviewIsMarkedForRemovalKey, MEMORY[0x1E695E118], 1);
}

- (BOOL)isMarkedForRemovalTargetedPreview:(id)a3
{
  v3 = objc_getAssociatedObject(a3, &_UIWTCTargetedPreviewIsMarkedForRemovalKey);
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSMutableDictionary)customAnimationFillColorsBySubrangeIndex
{
  customAnimationFillColorsBySubrangeIndex = self->_customAnimationFillColorsBySubrangeIndex;
  if (!customAnimationFillColorsBySubrangeIndex)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_customAnimationFillColorsBySubrangeIndex;
    self->_customAnimationFillColorsBySubrangeIndex = v4;

    customAnimationFillColorsBySubrangeIndex = self->_customAnimationFillColorsBySubrangeIndex;
  }

  return customAnimationFillColorsBySubrangeIndex;
}

- (void)setCustomFillColor:(id)a3 forSubrangeIndex:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v10 = v6;
    v7 = [(_UIWTCTrackingInfo *)self customAnimationFillColorsBySubrangeIndex];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [v7 setObject:v10 forKeyedSubscript:v8];
  }

  else
  {
    customAnimationFillColorsBySubrangeIndex = self->_customAnimationFillColorsBySubrangeIndex;
    if (!customAnimationFillColorsBySubrangeIndex)
    {
      goto LABEL_6;
    }

    v10 = 0;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)customAnimationFillColorsBySubrangeIndex removeObjectForKey:v7];
  }

  v6 = v10;
LABEL_6:
}

- (id)customFillColorForSubrangeIndex:(unint64_t)a3
{
  customAnimationFillColorsBySubrangeIndex = self->_customAnimationFillColorsBySubrangeIndex;
  if (customAnimationFillColorsBySubrangeIndex)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    customAnimationFillColorsBySubrangeIndex = [customAnimationFillColorsBySubrangeIndex objectForKeyedSubscript:v4];
  }

  return customAnimationFillColorsBySubrangeIndex;
}

- (NSMutableDictionary)proofreadingSuggestionIDsPerDeliveryID
{
  proofreadingSuggestionIDsPerDeliveryID = self->_proofreadingSuggestionIDsPerDeliveryID;
  if (!proofreadingSuggestionIDsPerDeliveryID)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_proofreadingSuggestionIDsPerDeliveryID;
    self->_proofreadingSuggestionIDsPerDeliveryID = v4;

    proofreadingSuggestionIDsPerDeliveryID = self->_proofreadingSuggestionIDsPerDeliveryID;
  }

  return proofreadingSuggestionIDsPerDeliveryID;
}

- (NSMutableDictionary)backingProofreadingSuggestionStatePerSuggestionID
{
  backingProofreadingSuggestionStatePerSuggestionID = self->_backingProofreadingSuggestionStatePerSuggestionID;
  if (!backingProofreadingSuggestionStatePerSuggestionID)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_backingProofreadingSuggestionStatePerSuggestionID;
    self->_backingProofreadingSuggestionStatePerSuggestionID = v4;

    backingProofreadingSuggestionStatePerSuggestionID = self->_backingProofreadingSuggestionStatePerSuggestionID;
  }

  return backingProofreadingSuggestionStatePerSuggestionID;
}

- (id)proofreadingSuggestionIDsForDelivery:(id)a3
{
  v4 = a3;
  v5 = [(_UIWTCTrackingInfo *)self proofreadingSuggestionIDsPerDeliveryID];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (int64_t)backingProofreadingSuggestionStateForSuggestion:(id)a3
{
  v4 = a3;
  v5 = [(_UIWTCTrackingInfo *)self backingProofreadingSuggestionStatePerSuggestionID];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 integerValue];
  return v7;
}

- (NSMutableDictionary)decorationContainerViewsPerRange
{
  decorationContainerViewsPerRange = self->_decorationContainerViewsPerRange;
  if (!decorationContainerViewsPerRange)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_decorationContainerViewsPerRange;
    self->_decorationContainerViewsPerRange = v4;

    decorationContainerViewsPerRange = self->_decorationContainerViewsPerRange;
  }

  return decorationContainerViewsPerRange;
}

@end