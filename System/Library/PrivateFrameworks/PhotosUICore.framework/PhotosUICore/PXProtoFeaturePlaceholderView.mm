@interface PXProtoFeaturePlaceholderView
- (PXProtoFeaturePlaceholderView)initWithFrame:(CGRect)a3;
- (void)_setStatusDescription:(id)a3;
- (void)_updateStatusDescription;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXProtoFeaturePlaceholderView

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXProtoStatusControllerObservationContext != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXProtoFeatureView.m" lineNumber:289 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 3) != 0)
  {
    v11 = v9;
    [(PXProtoFeaturePlaceholderView *)self _updateStatusDescription];
    v9 = v11;
  }
}

- (void)_setStatusDescription:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_statusDescription != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
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
  v3 = [(PXPhotoAnalysisStatusController *)self->_statusController graphStatus];
  if (v3 == 3)
  {
    v6 = @"An unexpected error occurred";
  }

  else if (v3 == 2)
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

- (PXProtoFeaturePlaceholderView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PXProtoFeaturePlaceholderView;
  v3 = [(PXProtoFeaturePlaceholderView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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