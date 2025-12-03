@interface PXProtoFeaturePlaceholderView
- (PXProtoFeaturePlaceholderView)initWithFrame:(CGRect)frame;
- (void)_setStatusDescription:(id)description;
- (void)_updateStatusDescription;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXProtoFeaturePlaceholderView

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXProtoStatusControllerObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXProtoFeatureView.m" lineNumber:289 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 3) != 0)
  {
    v11 = observableCopy;
    [(PXProtoFeaturePlaceholderView *)self _updateStatusDescription];
    observableCopy = v11;
  }
}

- (void)_setStatusDescription:(id)description
{
  descriptionCopy = description;
  v5 = descriptionCopy;
  if (self->_statusDescription != descriptionCopy)
  {
    v9 = descriptionCopy;
    v6 = [(NSString *)descriptionCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      statusDescription = self->_statusDescription;
      self->_statusDescription = v7;

      [(PXProtoFeaturePlaceholderView *)self statusDescriptionDidChange];
      v5 = v9;
    }
  }
}

- (void)_updateStatusDescription
{
  graphStatus = [(PXPhotoAnalysisStatusController *)self->_statusController graphStatus];
  if (graphStatus == 3)
  {
    v6 = @"An unexpected error occurred";
  }

  else if (graphStatus == 2)
  {
    v4 = MEMORY[0x1E696AEC0];
    [(PXPhotoAnalysisStatusController *)self->_statusController graphFractionCompleted];
    v6 = [v4 stringWithFormat:@"Analyzing Library (%0.1f%%)", v5 * 100.0];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(PXProtoFeaturePlaceholderView *)self _setStatusDescription:v6];
}

- (PXProtoFeaturePlaceholderView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PXProtoFeaturePlaceholderView;
  v3 = [(PXProtoFeaturePlaceholderView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[PXPhotoAnalysisStatusController sharedStatusController];
    statusController = v3->_statusController;
    v3->_statusController = v4;

    [(PXPhotoAnalysisStatusController *)v3->_statusController registerChangeObserver:v3 context:PXProtoStatusControllerObservationContext];
    [(PXProtoFeaturePlaceholderView *)v3 _updateStatusDescription];
    v3->_preferredStatusWidth = 250.0;
  }

  return v3;
}

@end