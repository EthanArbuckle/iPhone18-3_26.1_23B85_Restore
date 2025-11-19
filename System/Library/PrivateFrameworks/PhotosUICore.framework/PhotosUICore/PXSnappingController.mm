@interface PXSnappingController
- (PXSnappingController)init;
- (PXSnappingController)initWithSnappingTarget:(double)a3;
- (void)_reset;
- (void)_setBoolPointer:(BOOL *)a3 toValue:(BOOL)a4;
- (void)setAttractionOffsetThreshold:(double)a3;
- (void)setAttractionVelocityThreshold:(double)a3;
- (void)setRetentionOffsetThreshold:(double)a3;
- (void)updateOffset:(double *)a3 withVelocity:(double)a4 shouldSnap:(BOOL *)a5 shouldBreak:(BOOL *)a6;
@end

@implementation PXSnappingController

- (void)updateOffset:(double *)a3 withVelocity:(double)a4 shouldSnap:(BOOL *)a5 shouldBreak:(BOOL *)a6
{
  if ([(PXSnappingController *)self _isPreviousOffsetInvalid])
  {
    v11 = *a3;
    v12 = *a3;
  }

  else
  {
    [(PXSnappingController *)self _previousOffset];
    v12 = v13;
    v11 = *a3;
  }

  [(PXSnappingController *)self _accumulatedOffset];
  v15 = v14;
  [(PXSnappingController *)self retentionOffsetThreshold];
  v17 = [(PXSnappingController *)self _isOffset:v12 inThreshold:v16];
  [(PXSnappingController *)self attractionOffsetThreshold];
  v19 = [(PXSnappingController *)self _isOffset:v12 inThreshold:v18];
  [(PXSnappingController *)self retentionOffsetThreshold];
  v21 = [(PXSnappingController *)self _isOffset:v11 + v15 inThreshold:v20];
  [(PXSnappingController *)self attractionOffsetThreshold];
  v23 = [(PXSnappingController *)self _isOffset:v11 inThreshold:v22];
  if (v19 != v23)
  {
    [(PXSnappingController *)self _setHasEnteredAttractionThreshold:v23 & (v19 ^ 1u)];
  }

  if (v17 != v21)
  {
    [(PXSnappingController *)self _setHasEnteredRetentionThreshold:(v17 ^ 1) & v21];
  }

  v24 = ![(PXSnappingController *)self _hasEnteredRetentionThreshold]&& [(PXSnappingController *)self isSnappedToTarget];
  if ([(PXSnappingController *)self _hasEnteredRetentionThreshold])
  {
    v25 = [(PXSnappingController *)self isSnappedToTarget];
  }

  else
  {
    v25 = 0;
  }

  if ([(PXSnappingController *)self _hasEnteredAttractionThreshold]&& !(v26 = [(PXSnappingController *)self isSnappedToTarget]) && ((v27 = v26, [(PXSnappingController *)self attractionVelocityThreshold], v28 <= 0.0) || (([(PXSnappingController *)self attractionVelocityThreshold], v30 = v29, a4 >= 0.0) ? (v32 = 0) : ([(PXSnappingController *)self snappingTarget], v32 = v11 > v31), (v33 = !v27, v34 = fabs(a4), a4 <= 0.0) ? (v36 = 0) : ([(PXSnappingController *)self snappingTarget], v36 = v11 < v35), ((v34 <= v30) & (v32 || v36) & v33) == 1)))
  {
    [(PXSnappingController *)self didSnapByAttraction];
  }

  else if (!v25)
  {
    goto LABEL_30;
  }

  [(PXSnappingController *)self snappingTarget];
  v11 = v37;
  self->_snappedToTarget = 1;
  [(PXSnappingController *)self _setBoolPointer:a5 toValue:1];
  [(PXSnappingController *)self _setHasEnteredRetentionThreshold:1];
  [(PXSnappingController *)self _setHasEnteredAttractionThreshold:1];
  if (v25 && [(PXSnappingController *)self accumulateOffsetWhileSnapped])
  {
    v38 = *a3;
    [(PXSnappingController *)self snappingTarget];
    v40 = v38 - v39;
    [(PXSnappingController *)self _accumulatedOffset];
    [(PXSnappingController *)self _setAccumulatedOffset:v41 + v40];
  }

LABEL_30:
  if (v24)
  {
    [(PXSnappingController *)self _setBoolPointer:a6 toValue:1];
    [(PXSnappingController *)self _reset];
  }

  else
  {
    [(PXSnappingController *)self _setPreviousOffset:*a3];
    [(PXSnappingController *)self _setPreviousOffsetInvalid:0];
  }

  *a3 = v11;
}

- (void)_reset
{
  self->_snappedToTarget = 0;
  [(PXSnappingController *)self _setAccumulatedOffset:0.0];
  [(PXSnappingController *)self _setPreviousOffsetInvalid:1];
  [(PXSnappingController *)self _setHasEnteredRetentionThreshold:0];

  [(PXSnappingController *)self _setHasEnteredAttractionThreshold:0];
}

- (void)_setBoolPointer:(BOOL *)a3 toValue:(BOOL)a4
{
  if (a3)
  {
    *a3 = a4;
  }
}

- (void)setAttractionVelocityThreshold:(double)a3
{
  if (a3 < 0.0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXSnappingController.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"attractionVelocityThreshold >= 0"}];
  }

  self->_attractionVelocityThreshold = a3;
}

- (void)setAttractionOffsetThreshold:(double)a3
{
  if (a3 < 0.0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXSnappingController.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"attractionOffsetThreshold >= 0"}];
  }

  self->_attractionOffsetThreshold = a3;
}

- (void)setRetentionOffsetThreshold:(double)a3
{
  if (a3 < 0.0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXSnappingController.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"retentionOffsetThreshold >= 0"}];
  }

  self->_retentionOffsetThreshold = a3;
}

- (PXSnappingController)initWithSnappingTarget:(double)a3
{
  v5.receiver = self;
  v5.super_class = PXSnappingController;
  result = [(PXSnappingController *)&v5 init];
  if (result)
  {
    result->__previousOffsetInvalid = 1;
    result->_snappingTarget = a3;
  }

  return result;
}

- (PXSnappingController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSnappingController.m" lineNumber:24 description:{@"%s is not available as initializer", "-[PXSnappingController init]"}];

  abort();
}

@end