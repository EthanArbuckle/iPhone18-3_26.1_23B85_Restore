@interface _UIDragDestinationControllerReorderingState
- (UICollectionView)collectionView;
- (id)_reorderCadenceSettings;
- (void)didReorder;
@end

@implementation _UIDragDestinationControllerReorderingState

- (void)didReorder
{
  ++a1[3];
  a1[7] = 0;
  if (!a1[8])
  {
    a1[8] = 1;
    v3 = [a1 _reorderCadenceSettings];
    v4 = a1[4];
    a1[4] = v3;
  }
}

- (id)_reorderCadenceSettings
{
  v3 = [(_UIDragDestinationControllerReorderingState *)self collectionView];
  v4 = [v3 reorderingCadence];

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
    v7 = [_UIDragMovementCadenceSettings defaultSettingsForMovementPhase:[(_UIDragDestinationControllerReorderingState *)self dragMovementPhase] cadence:v4];
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