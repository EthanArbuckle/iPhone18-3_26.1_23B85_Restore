@interface WFDragFeedbackGenerator
- (WFDragFeedbackGenerator)init;
- (WFDragFeedbackGenerator)initWithCollectionView:(id)view;
- (void)draggedObjectLanded;
- (void)draggedObjectLifted;
- (void)draggingItemDropped;
- (void)draggingItemSnapped;
- (void)draggingStarted;
- (void)dropTargetUpdated;
- (void)objectSnapped;
- (void)performFeedbackWithDelay:(double)delay insideBlock:(id)block;
- (void)positionUpdated;
- (void)userInteractionCancelled;
- (void)userInteractionEnded;
- (void)userInteractionStarted;
@end

@implementation WFDragFeedbackGenerator

- (void)objectSnapped
{
  if (objc_opt_respondsToSelector())
  {
    feedbackGenerator = self->_feedbackGenerator;

    [(_UIDragSnappingFeedbackGenerator *)feedbackGenerator objectSnapped];
  }
}

- (void)draggedObjectLanded
{
  if (objc_opt_respondsToSelector())
  {
    feedbackGenerator = self->_feedbackGenerator;

    [(_UIDragSnappingFeedbackGenerator *)feedbackGenerator draggedObjectLanded];
  }
}

- (void)draggedObjectLifted
{
  if (objc_opt_respondsToSelector())
  {
    feedbackGenerator = self->_feedbackGenerator;

    [(_UIDragSnappingFeedbackGenerator *)feedbackGenerator draggedObjectLifted];
  }
}

- (void)dropTargetUpdated
{
  if (objc_opt_respondsToSelector())
  {
    feedbackGenerator = self->_feedbackGenerator;

    [(_UIDragSnappingFeedbackGenerator *)feedbackGenerator dropTargetUpdated];
  }
}

- (void)positionUpdated
{
  if (objc_opt_respondsToSelector())
  {
    feedbackGenerator = self->_feedbackGenerator;

    [(_UIDragSnappingFeedbackGenerator *)feedbackGenerator positionUpdated];
  }
}

- (void)userInteractionCancelled
{
  v2 = self->_activeDragSessions - 1;
  self->_activeDragSessions = v2;
  if (!v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    feedbackGenerator = self->_feedbackGenerator;

    [(_UIDragSnappingFeedbackGenerator *)feedbackGenerator userInteractionCancelled];
  }
}

- (void)userInteractionEnded
{
  v2 = self->_activeDragSessions - 1;
  self->_activeDragSessions = v2;
  if (!v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    feedbackGenerator = self->_feedbackGenerator;

    [(_UIDragSnappingFeedbackGenerator *)feedbackGenerator userInteractionEnded];
  }
}

- (void)userInteractionStarted
{
  activeDragSessions = self->_activeDragSessions;
  self->_activeDragSessions = activeDragSessions + 1;
  if (!activeDragSessions && (objc_opt_respondsToSelector() & 1) != 0)
  {
    feedbackGenerator = self->_feedbackGenerator;

    [(_UIDragSnappingFeedbackGenerator *)feedbackGenerator userInteractionStarted];
  }
}

- (void)performFeedbackWithDelay:(double)delay insideBlock:(id)block
{
  blockCopy = block;
  if (objc_opt_respondsToSelector())
  {
    [(_UIDragSnappingFeedbackGenerator *)self->_feedbackGenerator performFeedbackWithDelay:blockCopy insideBlock:delay];
  }
}

- (void)draggingItemDropped
{
  [(WFDragFeedbackGenerator *)self userInteractionEnded];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__WFDragFeedbackGenerator_draggingItemDropped__block_invoke;
  v3[3] = &unk_279EDC288;
  v3[4] = self;
  [(WFDragFeedbackGenerator *)self performFeedbackWithDelay:v3 insideBlock:0.3];
}

- (void)draggingItemSnapped
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__WFDragFeedbackGenerator_draggingItemSnapped__block_invoke;
  v2[3] = &unk_279EDC288;
  v2[4] = self;
  [(WFDragFeedbackGenerator *)self performFeedbackWithDelay:v2 insideBlock:0.05];
}

uint64_t __46__WFDragFeedbackGenerator_draggingItemSnapped__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1] <= 0)
  {
    [v2 userInteractionStarted];
    [*(a1 + 32) objectSnapped];
    v4 = *(a1 + 32);

    return [v4 userInteractionEnded];
  }

  else
  {

    return [v2 objectSnapped];
  }
}

- (void)draggingStarted
{
  [(WFDragFeedbackGenerator *)self userInteractionStarted];

  [(WFDragFeedbackGenerator *)self draggedObjectLifted];
}

- (WFDragFeedbackGenerator)init
{
  v7.receiver = self;
  v7.super_class = WFDragFeedbackGenerator;
  v2 = [(WFDragFeedbackGenerator *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75F10]);
    feedbackGenerator = v2->_feedbackGenerator;
    v2->_feedbackGenerator = v3;

    v5 = v2;
  }

  return v2;
}

- (WFDragFeedbackGenerator)initWithCollectionView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDragFeedbackGenerator.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"collectionView"}];
  }

  v12.receiver = self;
  v12.super_class = WFDragFeedbackGenerator;
  v6 = [(WFDragFeedbackGenerator *)&v12 init];
  if (v6)
  {
    if (objc_opt_respondsToSelector())
    {
      _reorderFeedbackGenerator = [viewCopy _reorderFeedbackGenerator];
      feedbackGenerator = v6->_feedbackGenerator;
      v6->_feedbackGenerator = _reorderFeedbackGenerator;
    }

    v9 = v6;
  }

  return v6;
}

@end