@interface _UIWTCTrackingInfo
- (BOOL)isMarkedForRemovalTargetedPreview:(id)preview;
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
- (id)customFillColorForSubrangeIndex:(unint64_t)index;
- (id)finishedSubrangeIndexesForTextAnimation:(int64_t)animation;
- (id)proofreadingSuggestionIDsForDelivery:(id)delivery;
- (id)subrangesForTextAnimation:(int64_t)animation;
- (id)targetedPreviewForTextAnimation:(int64_t)animation subrangeIndex:(unint64_t)index;
- (id)targetedPreviewsForTextAnimation:(int64_t)animation;
- (int64_t)backingProofreadingSuggestionStateForSuggestion:(id)suggestion;
- (void)markForRemovalTargetedPreviewForTextAnimation:(int64_t)animation subrangeIndex:(unint64_t)index;
- (void)setCustomFillColor:(id)color forSubrangeIndex:(unint64_t)index;
@end

@implementation _UIWTCTrackingInfo

- (NSMutableArray)anticipationAnimationSubranges
{
  anticipationAnimationSubranges = self->_anticipationAnimationSubranges;
  if (!anticipationAnimationSubranges)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = self->_anticipationAnimationSubranges;
    self->_anticipationAnimationSubranges = array;

    anticipationAnimationSubranges = self->_anticipationAnimationSubranges;
  }

  return anticipationAnimationSubranges;
}

- (NSMutableArray)removalAnimationSubranges
{
  removalAnimationSubranges = self->_removalAnimationSubranges;
  if (!removalAnimationSubranges)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = self->_removalAnimationSubranges;
    self->_removalAnimationSubranges = array;

    removalAnimationSubranges = self->_removalAnimationSubranges;
  }

  return removalAnimationSubranges;
}

- (NSMutableArray)insertionAnimationSubranges
{
  insertionAnimationSubranges = self->_insertionAnimationSubranges;
  if (!insertionAnimationSubranges)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = self->_insertionAnimationSubranges;
    self->_insertionAnimationSubranges = array;

    insertionAnimationSubranges = self->_insertionAnimationSubranges;
  }

  return insertionAnimationSubranges;
}

- (NSMutableIndexSet)finishedAnticipationSubrangeIndexes
{
  finishedAnticipationSubrangeIndexes = self->_finishedAnticipationSubrangeIndexes;
  if (!finishedAnticipationSubrangeIndexes)
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v5 = self->_finishedAnticipationSubrangeIndexes;
    self->_finishedAnticipationSubrangeIndexes = indexSet;

    finishedAnticipationSubrangeIndexes = self->_finishedAnticipationSubrangeIndexes;
  }

  return finishedAnticipationSubrangeIndexes;
}

- (NSMutableIndexSet)finishedRemovalSubrangeIndexes
{
  finishedRemovalSubrangeIndexes = self->_finishedRemovalSubrangeIndexes;
  if (!finishedRemovalSubrangeIndexes)
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v5 = self->_finishedRemovalSubrangeIndexes;
    self->_finishedRemovalSubrangeIndexes = indexSet;

    finishedRemovalSubrangeIndexes = self->_finishedRemovalSubrangeIndexes;
  }

  return finishedRemovalSubrangeIndexes;
}

- (NSMutableIndexSet)finishedInsertionSubrangeIndexes
{
  finishedInsertionSubrangeIndexes = self->_finishedInsertionSubrangeIndexes;
  if (!finishedInsertionSubrangeIndexes)
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v5 = self->_finishedInsertionSubrangeIndexes;
    self->_finishedInsertionSubrangeIndexes = indexSet;

    finishedInsertionSubrangeIndexes = self->_finishedInsertionSubrangeIndexes;
  }

  return finishedInsertionSubrangeIndexes;
}

- (NSMutableIndexSet)landedReplacementSubrangeIndexes
{
  landedReplacementSubrangeIndexes = self->_landedReplacementSubrangeIndexes;
  if (!landedReplacementSubrangeIndexes)
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v5 = self->_landedReplacementSubrangeIndexes;
    self->_landedReplacementSubrangeIndexes = indexSet;

    landedReplacementSubrangeIndexes = self->_landedReplacementSubrangeIndexes;
  }

  return landedReplacementSubrangeIndexes;
}

- (id)subrangesForTextAnimation:(int64_t)animation
{
  if (animation == 2)
  {
    insertionAnimationSubranges = [(_UIWTCTrackingInfo *)self insertionAnimationSubranges];
  }

  else if (animation == 1)
  {
    insertionAnimationSubranges = [(_UIWTCTrackingInfo *)self removalAnimationSubranges];
  }

  else if (animation)
  {
    insertionAnimationSubranges = 0;
  }

  else
  {
    insertionAnimationSubranges = [(_UIWTCTrackingInfo *)self anticipationAnimationSubranges];
  }

  return insertionAnimationSubranges;
}

- (id)finishedSubrangeIndexesForTextAnimation:(int64_t)animation
{
  if (animation == 2)
  {
    finishedInsertionSubrangeIndexes = [(_UIWTCTrackingInfo *)self finishedInsertionSubrangeIndexes];
  }

  else if (animation == 1)
  {
    finishedInsertionSubrangeIndexes = [(_UIWTCTrackingInfo *)self finishedRemovalSubrangeIndexes];
  }

  else if (animation)
  {
    finishedInsertionSubrangeIndexes = 0;
  }

  else
  {
    finishedInsertionSubrangeIndexes = [(_UIWTCTrackingInfo *)self finishedAnticipationSubrangeIndexes];
  }

  return finishedInsertionSubrangeIndexes;
}

- (NSMutableDictionary)anticipationAnimationPreviews
{
  anticipationAnimationPreviews = self->_anticipationAnimationPreviews;
  if (!anticipationAnimationPreviews)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_anticipationAnimationPreviews;
    self->_anticipationAnimationPreviews = dictionary;

    anticipationAnimationPreviews = self->_anticipationAnimationPreviews;
  }

  return anticipationAnimationPreviews;
}

- (NSMutableDictionary)removalAnimationPreviews
{
  removalAnimationPreviews = self->_removalAnimationPreviews;
  if (!removalAnimationPreviews)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_removalAnimationPreviews;
    self->_removalAnimationPreviews = dictionary;

    removalAnimationPreviews = self->_removalAnimationPreviews;
  }

  return removalAnimationPreviews;
}

- (NSMutableDictionary)insertionAnimationPreviews
{
  insertionAnimationPreviews = self->_insertionAnimationPreviews;
  if (!insertionAnimationPreviews)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_insertionAnimationPreviews;
    self->_insertionAnimationPreviews = dictionary;

    insertionAnimationPreviews = self->_insertionAnimationPreviews;
  }

  return insertionAnimationPreviews;
}

- (id)targetedPreviewsForTextAnimation:(int64_t)animation
{
  if (animation == 2)
  {
    insertionAnimationPreviews = [(_UIWTCTrackingInfo *)self insertionAnimationPreviews];
  }

  else if (animation == 1)
  {
    insertionAnimationPreviews = [(_UIWTCTrackingInfo *)self removalAnimationPreviews];
  }

  else if (animation)
  {
    insertionAnimationPreviews = 0;
  }

  else
  {
    insertionAnimationPreviews = [(_UIWTCTrackingInfo *)self anticipationAnimationPreviews];
  }

  return insertionAnimationPreviews;
}

- (id)targetedPreviewForTextAnimation:(int64_t)animation subrangeIndex:(unint64_t)index
{
  v5 = [(_UIWTCTrackingInfo *)self targetedPreviewsForTextAnimation:animation];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (void)markForRemovalTargetedPreviewForTextAnimation:(int64_t)animation subrangeIndex:(unint64_t)index
{
  v5 = [(_UIWTCTrackingInfo *)self targetedPreviewsForTextAnimation:animation];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  object = [v5 objectForKeyedSubscript:v6];

  objc_setAssociatedObject(object, &_UIWTCTargetedPreviewIsMarkedForRemovalKey, MEMORY[0x1E695E118], 1);
}

- (BOOL)isMarkedForRemovalTargetedPreview:(id)preview
{
  v3 = objc_getAssociatedObject(preview, &_UIWTCTargetedPreviewIsMarkedForRemovalKey);
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSMutableDictionary)customAnimationFillColorsBySubrangeIndex
{
  customAnimationFillColorsBySubrangeIndex = self->_customAnimationFillColorsBySubrangeIndex;
  if (!customAnimationFillColorsBySubrangeIndex)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_customAnimationFillColorsBySubrangeIndex;
    self->_customAnimationFillColorsBySubrangeIndex = dictionary;

    customAnimationFillColorsBySubrangeIndex = self->_customAnimationFillColorsBySubrangeIndex;
  }

  return customAnimationFillColorsBySubrangeIndex;
}

- (void)setCustomFillColor:(id)color forSubrangeIndex:(unint64_t)index
{
  colorCopy = color;
  if (colorCopy)
  {
    v10 = colorCopy;
    customAnimationFillColorsBySubrangeIndex = [(_UIWTCTrackingInfo *)self customAnimationFillColorsBySubrangeIndex];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    [customAnimationFillColorsBySubrangeIndex setObject:v10 forKeyedSubscript:v8];
  }

  else
  {
    customAnimationFillColorsBySubrangeIndex = self->_customAnimationFillColorsBySubrangeIndex;
    if (!customAnimationFillColorsBySubrangeIndex)
    {
      goto LABEL_6;
    }

    v10 = 0;
    customAnimationFillColorsBySubrangeIndex = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    [(NSMutableDictionary *)customAnimationFillColorsBySubrangeIndex removeObjectForKey:customAnimationFillColorsBySubrangeIndex];
  }

  colorCopy = v10;
LABEL_6:
}

- (id)customFillColorForSubrangeIndex:(unint64_t)index
{
  customAnimationFillColorsBySubrangeIndex = self->_customAnimationFillColorsBySubrangeIndex;
  if (customAnimationFillColorsBySubrangeIndex)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    customAnimationFillColorsBySubrangeIndex = [customAnimationFillColorsBySubrangeIndex objectForKeyedSubscript:v4];
  }

  return customAnimationFillColorsBySubrangeIndex;
}

- (NSMutableDictionary)proofreadingSuggestionIDsPerDeliveryID
{
  proofreadingSuggestionIDsPerDeliveryID = self->_proofreadingSuggestionIDsPerDeliveryID;
  if (!proofreadingSuggestionIDsPerDeliveryID)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_proofreadingSuggestionIDsPerDeliveryID;
    self->_proofreadingSuggestionIDsPerDeliveryID = dictionary;

    proofreadingSuggestionIDsPerDeliveryID = self->_proofreadingSuggestionIDsPerDeliveryID;
  }

  return proofreadingSuggestionIDsPerDeliveryID;
}

- (NSMutableDictionary)backingProofreadingSuggestionStatePerSuggestionID
{
  backingProofreadingSuggestionStatePerSuggestionID = self->_backingProofreadingSuggestionStatePerSuggestionID;
  if (!backingProofreadingSuggestionStatePerSuggestionID)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_backingProofreadingSuggestionStatePerSuggestionID;
    self->_backingProofreadingSuggestionStatePerSuggestionID = dictionary;

    backingProofreadingSuggestionStatePerSuggestionID = self->_backingProofreadingSuggestionStatePerSuggestionID;
  }

  return backingProofreadingSuggestionStatePerSuggestionID;
}

- (id)proofreadingSuggestionIDsForDelivery:(id)delivery
{
  deliveryCopy = delivery;
  proofreadingSuggestionIDsPerDeliveryID = [(_UIWTCTrackingInfo *)self proofreadingSuggestionIDsPerDeliveryID];
  v6 = [proofreadingSuggestionIDsPerDeliveryID objectForKeyedSubscript:deliveryCopy];

  return v6;
}

- (int64_t)backingProofreadingSuggestionStateForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  backingProofreadingSuggestionStatePerSuggestionID = [(_UIWTCTrackingInfo *)self backingProofreadingSuggestionStatePerSuggestionID];
  v6 = [backingProofreadingSuggestionStatePerSuggestionID objectForKeyedSubscript:suggestionCopy];

  integerValue = [v6 integerValue];
  return integerValue;
}

- (NSMutableDictionary)decorationContainerViewsPerRange
{
  decorationContainerViewsPerRange = self->_decorationContainerViewsPerRange;
  if (!decorationContainerViewsPerRange)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_decorationContainerViewsPerRange;
    self->_decorationContainerViewsPerRange = dictionary;

    decorationContainerViewsPerRange = self->_decorationContainerViewsPerRange;
  }

  return decorationContainerViewsPerRange;
}

@end