@interface PXPlacesMapUpdatePlanResultImpl
- (NSString)description;
- (PXPlacesMapUpdatePlanResultImpl)init;
@end

@implementation PXPlacesMapUpdatePlanResultImpl

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v19.receiver = self;
  v19.super_class = PXPlacesMapUpdatePlanResultImpl;
  v4 = [(PXPlacesMapUpdatePlanResultImpl *)&v19 description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  [v5 appendString:@"---------------------\n"];
  annotationsToAddImmediately = [(PXPlacesMapUpdatePlanResultImpl *)self annotationsToAddImmediately];
  v7 = [annotationsToAddImmediately count];
  annotationsToAddImmediately2 = [(PXPlacesMapUpdatePlanResultImpl *)self annotationsToAddImmediately];
  [v5 appendFormat:@"- Add Immediately: %lu:\n%@\n\n", v7, annotationsToAddImmediately2];

  annotationsToRemoveImmediately = [(PXPlacesMapUpdatePlanResultImpl *)self annotationsToRemoveImmediately];
  v10 = [annotationsToRemoveImmediately count];
  annotationsToRemoveImmediately2 = [(PXPlacesMapUpdatePlanResultImpl *)self annotationsToRemoveImmediately];
  [v5 appendFormat:@"- Remove Immediately: %lu:\n%@\n\n", v10, annotationsToRemoveImmediately2];

  annotationsToRemoveAfterAnimationHasStarted = [(PXPlacesMapUpdatePlanResultImpl *)self annotationsToRemoveAfterAnimationHasStarted];
  v13 = [annotationsToRemoveAfterAnimationHasStarted count];
  annotationsToRemoveAfterAnimationHasStarted2 = [(PXPlacesMapUpdatePlanResultImpl *)self annotationsToRemoveAfterAnimationHasStarted];
  [v5 appendFormat:@"- Remove After Animation Started: %lu:\n%@\n\n", v13, annotationsToRemoveAfterAnimationHasStarted2];

  annotationsToRemoveAfterAnimationHasEnded = [(PXPlacesMapUpdatePlanResultImpl *)self annotationsToRemoveAfterAnimationHasEnded];
  v16 = [annotationsToRemoveAfterAnimationHasEnded count];
  annotationsToRemoveAfterAnimationHasEnded2 = [(PXPlacesMapUpdatePlanResultImpl *)self annotationsToRemoveAfterAnimationHasEnded];
  [v5 appendFormat:@"- Remove After Animation Ended: %lu:\n%@\n\n", v16, annotationsToRemoveAfterAnimationHasEnded2];

  return v5;
}

- (PXPlacesMapUpdatePlanResultImpl)init
{
  v20.receiver = self;
  v20.super_class = PXPlacesMapUpdatePlanResultImpl;
  v2 = [(PXPlacesMapUpdatePlanResultImpl *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    annotationsToAddImmediately = v2->_annotationsToAddImmediately;
    v2->_annotationsToAddImmediately = v3;

    v5 = [MEMORY[0x1E695DFA8] set];
    annotationsToRemoveImmediately = v2->_annotationsToRemoveImmediately;
    v2->_annotationsToRemoveImmediately = v5;

    v7 = [MEMORY[0x1E695DFA8] set];
    annotationsToRemoveAfterAnimationHasEnded = v2->_annotationsToRemoveAfterAnimationHasEnded;
    v2->_annotationsToRemoveAfterAnimationHasEnded = v7;

    v9 = [MEMORY[0x1E695DFA8] set];
    annotationsToRemoveAfterAnimationHasStarted = v2->_annotationsToRemoveAfterAnimationHasStarted;
    v2->_annotationsToRemoveAfterAnimationHasStarted = v9;

    v11 = [MEMORY[0x1E695DFA8] set];
    annotationsToRedraw = v2->_annotationsToRedraw;
    v2->_annotationsToRedraw = v11;

    v13 = [MEMORY[0x1E695DFA8] set];
    annotationsWithUpdatedIndex = v2->_annotationsWithUpdatedIndex;
    v2->_annotationsWithUpdatedIndex = v13;

    v15 = [MEMORY[0x1E695DFA8] set];
    overlaysToAddImmediately = v2->_overlaysToAddImmediately;
    v2->_overlaysToAddImmediately = v15;

    v17 = [MEMORY[0x1E695DFA8] set];
    overlaysToRemoveImmediately = v2->_overlaysToRemoveImmediately;
    v2->_overlaysToRemoveImmediately = v17;
  }

  return v2;
}

@end