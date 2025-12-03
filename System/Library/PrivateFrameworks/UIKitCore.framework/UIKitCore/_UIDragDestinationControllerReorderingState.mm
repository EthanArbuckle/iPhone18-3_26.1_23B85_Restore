@interface _UIDragDestinationControllerReorderingState
- (UICollectionView)collectionView;
- (id)_reorderCadenceSettings;
- (void)didReorder;
@end

@implementation _UIDragDestinationControllerReorderingState

- (void)didReorder
{
  ++self[3];
  self[7] = 0;
  if (!self[8])
  {
    self[8] = 1;
    _reorderCadenceSettings = [self _reorderCadenceSettings];
    v4 = self[4];
    self[4] = _reorderCadenceSettings;
  }
}

- (id)_reorderCadenceSettings
{
  collectionView = [(_UIDragDestinationControllerReorderingState *)self collectionView];
  reorderingCadence = [collectionView reorderingCadence];

  v5 = 0.0;
  if (_UIInternalPreferenceUsesDefault_1(&unk_1ED48AB10, @"DraggingCadenceVelocityThreshold"))
  {
    v6 = 0.0;
  }

  else
  {
    v6 = *&qword_1ED48AB18;
  }

  if (!_UIInternalPreferenceUsesDefault_1(&_MergedGlobals_926, @"DraggingCadenceDwellTimeThreshold"))
  {
    v5 = *&qword_1ED48AB08;
  }

  if (v6 == 0.0 && v5 == 0.0)
  {
    v7 = [_UIDragMovementCadenceSettings defaultSettingsForMovementPhase:[(_UIDragDestinationControllerReorderingState *)self dragMovementPhase] cadence:reorderingCadence];
  }

  else
  {
    v7 = [[_UIDragMovementCadenceSettings alloc] initWithVelocityMagnitudeThreshold:v6 dwellTimeThreshold:v5];
  }

  return v7;
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

@end