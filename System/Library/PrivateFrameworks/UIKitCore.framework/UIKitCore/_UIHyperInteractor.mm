@interface _UIHyperInteractor
- (BOOL)_isRubberBanding;
- (_UIHyperAnimator)_animator;
- (_UIHyperExtender)_extender;
- (_UIHyperInteractor)initWithDimensions:(unint64_t)dimensions;
- (_UIHyperInteractorDelegate)_delegate;
- (_UIHyperregion)_region;
- (const)_closestPoint;
- (const)_constrainedPoint;
- (const)_constrainedVelocity;
- (const)_effectiveVelocity;
- (const)_extentVector;
- (const)_presentationPoint;
- (const)_projectedPoint;
- (const)_translatedUnconstrainedPoint;
- (const)_unconstrainedExtentVector;
- (const)_unconstrainedPoint;
- (const)_unconstrainedVector;
- (double)_constrainedFraction;
- (double)_extent;
- (double)_unconstrainedExtent;
- (id)description;
- (void)_commitTranslation;
- (void)_copyInitialTranslation:(const double *)translation;
- (void)_copyOverridePresentationPoint:(const double *)point;
- (void)_copyTranslation:(const double *)translation;
- (void)_copyUnconstrainedPoint:(const double *)point;
- (void)_copyVelocity:(const double *)velocity;
- (void)_getUnconstrainedPoint:(double *)point forConstrainedPoint:(const double *)constrainedPoint;
- (void)_interactionBegan;
- (void)_interactionChangedCopyingTranslation:(const double *)translation velocity:(const double *)velocity mutatingState:(id)state;
- (void)_interactionChangedMutatingTranslation:(id)translation velocity:(id)velocity mutatingState:(id)state;
- (void)_interactionEndedMutatingState:(id)state;
- (void)_invalidateExtender;
- (void)_invalidateRegion;
- (void)_invalidateUnconstrainedPoint;
- (void)_mutateInitialTranslation:(id)translation;
- (void)_mutateInternalUnconstrainedPoint:(id)point;
- (void)_mutateOverridePresentationPoint:(id)point;
- (void)_mutateTranslation:(id)translation;
- (void)_mutateUnconstrainedPoint:(id)point;
- (void)_mutateVelocity:(id)velocity;
- (void)_setAnimator:(id)animator;
- (void)_setBroadcaster:(id)broadcaster;
- (void)_setDecelerationRate:(double)rate;
- (void)_setExtender:(id)extender;
- (void)_setInteractive:(BOOL)interactive;
- (void)_setInternalExtender:(id)extender;
- (void)_setInternalRegion:(id)region;
- (void)_setMinimumSpeed:(double)speed;
- (void)_setOverridingPresentationPoint:(BOOL)point;
- (void)_setRegion:(id)region;
- (void)_setRubberBandCoefficient:(double)coefficient;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _UIHyperInteractor

- (const)_extentVector
{
  if ((*(&self->_clean + 1) & 2) == 0)
  {
    if (!memcmp([(_UIHyperInteractor *)self _translatedUnconstrainedPoint], [(_UIHyperInteractor *)self _closestPoint], 8 * self->__dimensions))
    {
      catlas_dset_NEWLAPACK();
    }

    else
    {
      _extender = [(_UIHyperInteractor *)self _extender];
      [_extender _getExtentVector:self->__extentVector forUnconstrainedPoint:-[_UIHyperInteractor _translatedUnconstrainedPoint](self closestPoint:{"_translatedUnconstrainedPoint"), -[_UIHyperInteractor _closestPoint](self, "_closestPoint")}];
    }

    *&self->_clean |= 0x200u;
  }

  return self->__extentVector;
}

- (const)_unconstrainedExtentVector
{
  if ((*(&self->_clean + 1) & 8) == 0)
  {
    [(_UIHyperInteractor *)self _extent];
    unconstrainedExtentVector = self->__unconstrainedExtentVector;
    if (v4 == 0.0)
    {
      catlas_dset_NEWLAPACK();
    }

    else
    {
      _unconstrainedVector = [(_UIHyperInteractor *)self _unconstrainedVector];
      _extentVector = [(_UIHyperInteractor *)self _extentVector];
      dimensions = self->__dimensions;
      __B = _UIHyperFractionOfProjectionOnto(_unconstrainedVector, _extentVector, dimensions);
      vDSP_vsmulD(_extentVector, 1, &__B, unconstrainedExtentVector, 1, dimensions);
    }

    *&self->_clean |= 0x800u;
  }

  return self->__unconstrainedExtentVector;
}

- (const)_constrainedPoint
{
  if ((*(&self->_clean + 1) & 0x40) == 0)
  {
    constrainedPoint = self->__constrainedPoint;
    _unconstrainedExtentVector = [(_UIHyperInteractor *)self _unconstrainedExtentVector];
    [(_UIHyperInteractor *)self _constrainedFraction];
    v6 = v5;
    _closestPoint = [(_UIHyperInteractor *)self _closestPoint];
    dimensions = self->__dimensions;
    __B = v6;
    vDSP_vsmaD(_unconstrainedExtentVector, 1, &__B, _closestPoint, 1, constrainedPoint, 1, dimensions);
    *&self->_clean |= 0x4000u;
  }

  return self->__constrainedPoint;
}

- (const)_translatedUnconstrainedPoint
{
  if ((*&self->_clean & 8) == 0)
  {
    vDSP_vaddD([(_UIHyperInteractor *)self _unconstrainedPoint], 1, self->__initialTranslation, 1, self->__translatedUnconstrainedPoint, 1, self->__dimensions);
    vDSP_vaddD(self->__translatedUnconstrainedPoint, 1, self->__translation, 1, self->__translatedUnconstrainedPoint, 1, self->__dimensions);
    *&self->_clean |= 8u;
  }

  return self->__translatedUnconstrainedPoint;
}

- (double)_constrainedFraction
{
  if ((*(&self->_clean + 1) & 0x20) != 0)
  {
    return self->__constrainedFraction;
  }

  [(_UIHyperInteractor *)self _extent];
  v4 = v3;
  result = 0.0;
  if (v4 != 0.0)
  {
    [(_UIHyperInteractor *)self _unconstrainedExtent];
    v7 = v6;
    v8 = v6 / v4;
    [(_UIHyperInteractor *)self _rubberBandCoefficient];
    result = v4 * (1.0 - 1.0 / (v8 * v9 + 1.0)) / v7;
  }

  self->__constrainedFraction = result;
  *&self->_clean |= 0x2000u;
  return result;
}

- (const)_unconstrainedPoint
{
  clean = self->_clean;
  if ((*&clean & 4) == 0)
  {
    if (self->__unconstrainedPointGetter)
    {
      [(_UIHyperInteractor *)self _mutateInternalUnconstrainedPoint:?];
      clean = self->_clean;
    }

    self->_clean = (*&clean | 4);
  }

  return self->__unconstrainedPoint;
}

- (const)_closestPoint
{
  if ((*&self->_clean & 0x40) == 0)
  {
    _region = [(_UIHyperInteractor *)self _region];
    [_region _closestPoint:self->__closestPoint toPoint:{-[_UIHyperInteractor _translatedUnconstrainedPoint](self, "_translatedUnconstrainedPoint")}];

    *&self->_clean |= 0x40u;
  }

  return self->__closestPoint;
}

- (double)_extent
{
  if ((*(&self->_clean + 1) & 4) != 0)
  {
    return self->__extent;
  }

  [(_UIHyperInteractor *)self _extentVector];
  cblas_dnrm2_NEWLAPACK();
  self->__extent = result;
  *&self->_clean |= 0x400u;
  return result;
}

- (_UIHyperregion)_region
{
  if ((*&self->_clean & 1) == 0)
  {
    regionGetter = self->__regionGetter;
    if (regionGetter)
    {
      v4 = regionGetter[2](regionGetter, a2);
      [(_UIHyperInteractor *)self _setInternalRegion:v4];
    }

    if (!self->__region)
    {
      v5 = [[_UIHyperspace alloc] initWithDimensions:self->__dimensions];
      [(_UIHyperInteractor *)self _setInternalRegion:v5];
    }

    *&self->_clean |= 1u;
  }

  region = self->__region;

  return region;
}

- (void)_invalidateRegion
{
  clean = self->_clean;
  if (*&clean)
  {
    self->_clean = (*&clean & 0xFFFFFFFE);
    _UIHyperInteractorDirtyClosestPoint(self);
  }
}

- (const)_presentationPoint
{
  clean = self->_clean;
  if ((*&clean & 0x10000) != 0)
  {
    return self->__presentationPoint;
  }

  if (self->__overridingPresentationPoint)
  {
    result = self->__overridePresentationPoint;
  }

  else
  {
    result = [(_UIHyperInteractor *)self _constrainedPoint];
    clean = self->_clean;
  }

  self->__presentationPoint = result;
  self->_clean = (*&clean | 0x10000);
  return result;
}

- (void)_invalidateUnconstrainedPoint
{
  clean = self->_clean;
  if ((*&clean & 4) != 0)
  {
    self->_clean = (*&clean & 0xFFFFFFFB);
    _UIHyperInteractorDirtyTranslatedUnconstrainedPoint(self);
  }
}

- (void)dealloc
{
  [(_UIHyperregion *)self->__region removeObserver:self forKeyPath:@"self" context:_MergedGlobals_963];
  [(_UIHyperExtender *)self->__extender removeObserver:self forKeyPath:@"self" context:off_1ED491BB0];
  free(self->__unconstrainedPoint);
  free(self->__initialTranslation);
  free(self->__translation);
  free(self->__translatedUnconstrainedPoint);
  free(self->__velocity);
  free(self->__effectiveVelocity);
  free(self->__projectedPoint);
  free(self->__closestPoint);
  free(self->__unconstrainedVector);
  free(self->__extentVector);
  free(self->__unconstrainedExtentVector);
  free(self->__constrainedPoint);
  free(self->__constrainedVelocity);
  free(self->__overridePresentationPoint);
  free(self->__lastConstrainedPoint);
  v3.receiver = self;
  v3.super_class = _UIHyperInteractor;
  [(_UIHyperInteractor *)&v3 dealloc];
}

- (_UIHyperInteractor)initWithDimensions:(unint64_t)dimensions
{
  v7.receiver = self;
  v7.super_class = _UIHyperInteractor;
  v4 = [(_UIHyperInteractor *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->__dimensions = dimensions;
    *&v4->__minimumSpeed = xmmword_18A677D40;
    v4->__rubberBandCoefficient = _UIScrollViewRubberBandCoefficient(0);
    v5->__unconstrainedPoint = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
    v5->__initialTranslation = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
    v5->__translation = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
    v5->__translatedUnconstrainedPoint = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
    v5->__velocity = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
    v5->__effectiveVelocity = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
    v5->__projectedPoint = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
    v5->__closestPoint = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
    v5->__unconstrainedVector = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
    v5->__extentVector = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
    v5->__unconstrainedExtentVector = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
    v5->__constrainedPoint = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
    v5->__constrainedVelocity = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
    v5->__overridePresentationPoint = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
    v5->__lastConstrainedPoint = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
  }

  return v5;
}

- (id)description
{
  v23 = MEMORY[0x1E696AEC0];
  v22 = objc_opt_class();
  _region = [(_UIHyperInteractor *)self _region];
  _extender = [(_UIHyperInteractor *)self _extender];
  _animator = [(_UIHyperInteractor *)self _animator];
  [(_UIHyperInteractor *)self _minimumSpeed];
  v4 = v3;
  [(_UIHyperInteractor *)self _decelerationRate];
  v6 = v5;
  [(_UIHyperInteractor *)self _rubberBandCoefficient];
  v8 = v7;
  v24 = _UIVectorDescription([(_UIHyperInteractor *)self _unconstrainedPoint], self->__dimensions);
  v18 = _UIVectorDescription([(_UIHyperInteractor *)self _initialTranslation], self->__dimensions);
  v17 = _UIVectorDescription([(_UIHyperInteractor *)self _translation], self->__dimensions);
  v9 = _UIVectorDescription([(_UIHyperInteractor *)self _velocity], self->__dimensions);
  v10 = _UIVectorDescription([(_UIHyperInteractor *)self _effectiveVelocity], self->__dimensions);
  v11 = _UIVectorDescription([(_UIHyperInteractor *)self _projectedPoint], self->__dimensions);
  v12 = _UIVectorDescription([(_UIHyperInteractor *)self _closestPoint], self->__dimensions);
  v13 = _UIVectorDescription([(_UIHyperInteractor *)self _constrainedPoint], self->__dimensions);
  v14 = _UIVectorDescription([(_UIHyperInteractor *)self _constrainedVelocity], self->__dimensions);
  v15 = [v23 stringWithFormat:@"<%@: %p region = %@; extender = %@; animator = %@; minimumSpeed = %g; decelerationRate = %g; rubberBandCoefficient = %g; unconstrainedPoint = %@; initialTranslation = %@; translation = %@; velocity = %@; effectiveVelocity = %@; projectedPoint = %@; closestPoint = %@; constrainedPoint = %@; constrainedVelocity = %@>", v22, self, _region, _extender, _animator, v4, v6, v8, v24, v18, v17, v9, v10, v11, v12, v13, v14];;

  return v15;
}

- (void)_setRegion:(id)region
{
  regionCopy = region;
  if (self->__region != regionCopy)
  {
    v6 = regionCopy;
    [(_UIHyperInteractor *)self _setInternalRegion:regionCopy];
    regionCopy = v6;
    clean = self->_clean;
    if (*&clean)
    {
      self->_clean = (*&clean & 0xFFFFFFFE);
      _UIHyperInteractorDirtyClosestPoint(self);
      regionCopy = v6;
    }
  }
}

- (void)_setInternalRegion:(id)region
{
  regionCopy = region;
  if ([regionCopy _dimensions] != self->__dimensions)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHyperInteractor.m" lineNumber:186 description:{@"Tried to set _region %@ (%lu) with unequal dimensions to %@ (%lu)", regionCopy, objc_msgSend(regionCopy, "_dimensions"), self, self->__dimensions}];
  }

  [(_UIHyperregion *)self->__region removeObserver:self forKeyPath:@"self" context:_MergedGlobals_963];
  region = self->__region;
  self->__region = regionCopy;
  v7 = regionCopy;

  [(_UIHyperregion *)self->__region addObserver:self forKeyPath:@"self" options:0 context:_MergedGlobals_963];
  _broadcaster = [(_UIHyperInteractor *)self _broadcaster];
  [_broadcaster _broadcastIfPossible];
}

- (_UIHyperExtender)_extender
{
  if ((*&self->_clean & 2) == 0)
  {
    extenderGetter = self->__extenderGetter;
    if (extenderGetter)
    {
      v4 = extenderGetter[2](extenderGetter, a2);
      [(_UIHyperInteractor *)self _setInternalExtender:v4];
    }

    if (!self->__extender)
    {
      v5 = [[_UIHyperConstantExtender alloc] initWithDimensions:self->__dimensions];
      [(_UIHyperInteractor *)self _setInternalExtender:v5];
    }

    *&self->_clean |= 2u;
  }

  extender = self->__extender;

  return extender;
}

- (void)_setExtender:(id)extender
{
  extenderCopy = extender;
  if (self->__extender != extenderCopy)
  {
    v6 = extenderCopy;
    [(_UIHyperInteractor *)self _setInternalExtender:extenderCopy];
    extenderCopy = v6;
    clean = self->_clean;
    if ((*&clean & 2) != 0)
    {
      self->_clean = (*&clean & 0xFFFFFFFD);
      _UIHyperInteractorDirtyExtentVector(self);
      extenderCopy = v6;
    }
  }
}

- (void)_setInternalExtender:(id)extender
{
  extenderCopy = extender;
  if ([extenderCopy _dimensions] != self->__dimensions)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHyperInteractor.m" lineNumber:226 description:{@"Tried to set _extender %@ (%lu) with unequal dimensions to %@ (%lu)", extenderCopy, objc_msgSend(extenderCopy, "_dimensions"), self, self->__dimensions}];
  }

  [(_UIHyperExtender *)self->__extender removeObserver:self forKeyPath:@"self" context:off_1ED491BB0];
  extender = self->__extender;
  self->__extender = extenderCopy;
  v7 = extenderCopy;

  [(_UIHyperExtender *)self->__extender addObserver:self forKeyPath:@"self" options:0 context:off_1ED491BB0];
  _broadcaster = [(_UIHyperInteractor *)self _broadcaster];
  [_broadcaster _broadcastIfPossible];
}

- (void)_invalidateExtender
{
  clean = self->_clean;
  if ((*&clean & 2) != 0)
  {
    self->_clean = (*&clean & 0xFFFFFFFD);
    _UIHyperInteractorDirtyExtentVector(self);
  }
}

- (_UIHyperAnimator)_animator
{
  animator = self->__animator;
  if (!animator)
  {
    v4 = [[_UIHyperOutOfProcessViewAnimator alloc] initWithDimensions:self->__dimensions];
    [(_UIHyperInteractor *)self _setAnimator:v4];

    animator = self->__animator;
  }

  return animator;
}

- (void)_setAnimator:(id)animator
{
  animatorCopy = animator;
  if (self->__animator != animatorCopy)
  {
    v12 = animatorCopy;
    if ([(_UIHyperAnimator *)animatorCopy _dimensions]!= self->__dimensions)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHyperInteractor.m" lineNumber:250 description:{@"Tried to set _animator %@ (%lu) with unequal dimensions to %@ (%lu)", v12, -[_UIHyperAnimator _dimensions](v12, "_dimensions"), self, self->__dimensions}];
    }

    _interactor = [(_UIHyperAnimator *)v12 _interactor];

    if (_interactor)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      _interactor2 = [(_UIHyperAnimator *)v12 _interactor];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIHyperInteractor.m" lineNumber:251 description:{@"Cannot set _animator %@ on %@ that is already assigned to %@.", v12, self, _interactor2}];
    }

    [(_UIHyperAnimator *)self->__animator _setInteractor:0];
    objc_storeStrong(&self->__animator, animator);
    [(_UIHyperAnimator *)self->__animator _setInteractor:self];
    _broadcaster = [(_UIHyperInteractor *)self _broadcaster];
    [_broadcaster _broadcastIfPossible];

    animatorCopy = v12;
  }
}

- (void)_setBroadcaster:(id)broadcaster
{
  broadcasterCopy = broadcaster;
  broadcaster = self->__broadcaster;
  if (broadcaster != broadcasterCopy)
  {
    v10 = broadcasterCopy;
    _interactor = [(_UIHyperInteractorBroadcaster *)broadcaster _interactor];

    if (_interactor == self)
    {
      [(_UIHyperInteractorBroadcaster *)self->__broadcaster _setInteractor:0];
    }

    objc_storeStrong(&self->__broadcaster, broadcaster);
    _interactor2 = [(_UIHyperInteractorBroadcaster *)self->__broadcaster _interactor];

    if (_interactor2)
    {
      _interactor3 = [(_UIHyperInteractorBroadcaster *)self->__broadcaster _interactor];
      [_interactor3 _setBroadcaster:0];
    }

    [(_UIHyperInteractorBroadcaster *)self->__broadcaster _setInteractor:self];
    broadcasterCopy = v10;
  }
}

- (void)_setMinimumSpeed:(double)speed
{
  if (self->__minimumSpeed != speed)
  {
    self->__minimumSpeed = speed;
    _UIHyperInteractorDirtyEffectiveVelocity(self);
    _broadcaster = [(_UIHyperInteractor *)self _broadcaster];
    [_broadcaster _broadcastIfPossible];
  }
}

- (void)_setDecelerationRate:(double)rate
{
  if (self->__decelerationRate != rate)
  {
    self->__decelerationRate = rate;
    clean = self->_clean;
    if ((*&clean & 0x20) != 0)
    {
      self->_clean = (*&clean & 0xFFFFFFDF);
    }

    _broadcaster = [(_UIHyperInteractor *)self _broadcaster];
    [_broadcaster _broadcastIfPossible];
  }
}

- (void)_setRubberBandCoefficient:(double)coefficient
{
  if (self->__rubberBandCoefficient != coefficient)
  {
    self->__rubberBandCoefficient = coefficient;
    _UIHyperInteractorDirtyConstrainedFraction(self);
    _broadcaster = [(_UIHyperInteractor *)self _broadcaster];
    [_broadcaster _broadcastIfPossible];
  }
}

- (void)_copyUnconstrainedPoint:(const double *)point
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46___UIHyperInteractor__copyUnconstrainedPoint___block_invoke;
  v3[3] = &unk_1E70F59D8;
  v3[4] = self;
  v3[5] = point;
  [(_UIHyperInteractor *)self _mutateUnconstrainedPoint:v3];
}

- (void)_mutateUnconstrainedPoint:(id)point
{
  [(_UIHyperInteractor *)self _mutateInternalUnconstrainedPoint:point];
  clean = self->_clean;
  if ((*&clean & 4) != 0)
  {
    self->_clean = (*&clean & 0xFFFFFFFB);

    _UIHyperInteractorDirtyTranslatedUnconstrainedPoint(self);
  }
}

- (void)_mutateInternalUnconstrainedPoint:(id)point
{
  (*(point + 2))(point, self->__unconstrainedPoint);
  _broadcaster = [(_UIHyperInteractor *)self _broadcaster];
  [_broadcaster _broadcastIfPossible];
}

- (void)_copyInitialTranslation:(const double *)translation
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46___UIHyperInteractor__copyInitialTranslation___block_invoke;
  v3[3] = &unk_1E70F59D8;
  v3[4] = self;
  v3[5] = translation;
  [(_UIHyperInteractor *)self _mutateInitialTranslation:v3];
}

- (void)_mutateInitialTranslation:(id)translation
{
  (*(translation + 2))(translation, self->__initialTranslation);

  _UIHyperInteractorDirtyTranslatedUnconstrainedPoint(self);
}

- (void)_copyTranslation:(const double *)translation
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39___UIHyperInteractor__copyTranslation___block_invoke;
  v3[3] = &unk_1E70F59D8;
  v3[4] = self;
  v3[5] = translation;
  [(_UIHyperInteractor *)self _mutateTranslation:v3];
}

- (void)_mutateTranslation:(id)translation
{
  (*(translation + 2))(translation, self->__translation);

  _UIHyperInteractorDirtyTranslatedUnconstrainedPoint(self);
}

- (void)_commitTranslation
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40___UIHyperInteractor__commitTranslation__block_invoke;
  v5[3] = &unk_1E70F4AC0;
  v5[4] = self;
  [(_UIHyperInteractor *)self _mutateUnconstrainedPoint:v5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40___UIHyperInteractor__commitTranslation__block_invoke_2;
  v4[3] = &unk_1E70F4AC0;
  v4[4] = self;
  [(_UIHyperInteractor *)self _mutateInitialTranslation:v4];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40___UIHyperInteractor__commitTranslation__block_invoke_3;
  v3[3] = &unk_1E70F4AC0;
  v3[4] = self;
  [(_UIHyperInteractor *)self _mutateTranslation:v3];
}

- (void)_copyVelocity:(const double *)velocity
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36___UIHyperInteractor__copyVelocity___block_invoke;
  v3[3] = &unk_1E70F59D8;
  v3[4] = self;
  v3[5] = velocity;
  [(_UIHyperInteractor *)self _mutateVelocity:v3];
}

- (void)_mutateVelocity:(id)velocity
{
  (*(velocity + 2))(velocity, self->__velocity);

  _UIHyperInteractorDirtyEffectiveVelocity(self);
}

- (void)_copyOverridePresentationPoint:(const double *)point
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53___UIHyperInteractor__copyOverridePresentationPoint___block_invoke;
  v3[3] = &unk_1E70F59D8;
  v3[4] = self;
  v3[5] = point;
  [(_UIHyperInteractor *)self _mutateOverridePresentationPoint:v3];
}

- (void)_mutateOverridePresentationPoint:(id)point
{
  (*(point + 2))(point, self->__overridePresentationPoint);

  _UIHyperInteractorDirtyPresentationPoint(self);
}

- (void)_setOverridingPresentationPoint:(BOOL)point
{
  if (self->__overridingPresentationPoint != point)
  {
    self->__overridingPresentationPoint = point;
    _UIHyperInteractorDirtyPresentationPoint(self);
  }
}

- (void)_interactionBegan
{
  [(_UIHyperInteractor *)self _setInteractive:1];
  _animator = [(_UIHyperInteractor *)self _animator];
  [_animator _interactionBegan];

  _broadcaster = [(_UIHyperInteractor *)self _broadcaster];
  [_broadcaster _interactionDidBegin];
}

- (void)_interactionChangedCopyingTranslation:(const double *)translation velocity:(const double *)velocity mutatingState:(id)state
{
  v5[5] = velocity;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83___UIHyperInteractor__interactionChangedCopyingTranslation_velocity_mutatingState___block_invoke;
  v6[3] = &unk_1E70F59D8;
  v6[4] = self;
  v6[5] = translation;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83___UIHyperInteractor__interactionChangedCopyingTranslation_velocity_mutatingState___block_invoke_2;
  v5[3] = &unk_1E70F59D8;
  v5[4] = self;
  [(_UIHyperInteractor *)self _interactionChangedMutatingTranslation:v6 velocity:v5 mutatingState:state];
}

- (void)_interactionChangedMutatingTranslation:(id)translation velocity:(id)velocity mutatingState:(id)state
{
  stateCopy = state;
  velocityCopy = velocity;
  translationCopy = translation;
  [(_UIHyperInteractor *)self _constrainedPoint];
  cblas_dcopy_NEWLAPACK();
  [(_UIHyperInteractor *)self _mutateTranslation:translationCopy];

  [(_UIHyperInteractor *)self _mutateVelocity:velocityCopy];
  if (stateCopy)
  {
    stateCopy[2]();
  }

  _animator = [(_UIHyperInteractor *)self _animator];
  [_animator _interactionChanged];

  _broadcaster = [(_UIHyperInteractor *)self _broadcaster];
  [_broadcaster _interactionDidChange];
}

- (void)_interactionEndedMutatingState:(id)state
{
  stateCopy = state;
  _broadcaster = [(_UIHyperInteractor *)self _broadcaster];
  [_broadcaster _interactionWillEnd];

  _animator = [(_UIHyperInteractor *)self _animator];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __53___UIHyperInteractor__interactionEndedMutatingState___block_invoke;
  v12 = &unk_1E70F4A50;
  selfCopy = self;
  v14 = stateCopy;
  v7 = stateCopy;
  [_animator _interactionEndedMutatingState:&v9];

  v8 = [(_UIHyperInteractor *)self _broadcaster:v9];
  [v8 _interactionDidEnd];
}

- (void)_setInteractive:(BOOL)interactive
{
  if (self->__interactive != interactive)
  {
    self->__interactive = interactive;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (_MergedGlobals_963 == context)
  {
    clean = self->_clean;
    if (*&clean)
    {
      self->_clean = (*&clean & 0xFFFFFFFE);
      _UIHyperInteractorDirtyClosestPoint(self);
    }
  }

  else if (off_1ED491BB0 == context)
  {
    v14 = self->_clean;
    if ((*&v14 & 2) != 0)
    {
      self->_clean = (*&v14 & 0xFFFFFFFD);
      _UIHyperInteractorDirtyExtentVector(self);
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = _UIHyperInteractor;
    [(_UIHyperInteractor *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (const)_effectiveVelocity
{
  if ((*&self->_clean & 0x10) == 0)
  {
    [(_UIHyperInteractor *)self _velocity];
    cblas_dnrm2_NEWLAPACK();
    v4 = v3;
    [(_UIHyperInteractor *)self _minimumSpeed];
    if (v4 >= v5)
    {
      cblas_dcopy_NEWLAPACK();
    }

    else
    {
      catlas_dset_NEWLAPACK();
    }

    *&self->_clean |= 0x10u;
  }

  return self->__effectiveVelocity;
}

- (const)_projectedPoint
{
  if ((*&self->_clean & 0x20) == 0)
  {
    [(_UIHyperInteractor *)self _decelerationRate];
    v4 = v3;
    projectedPoint = self->__projectedPoint;
    _effectiveVelocity = [(_UIHyperInteractor *)self _effectiveVelocity];
    _translatedUnconstrainedPoint = [(_UIHyperInteractor *)self _translatedUnconstrainedPoint];
    dimensions = self->__dimensions;
    __B = v4 / (1.0 - v4) / 1000.0;
    vDSP_vsmaD(_effectiveVelocity, 1, &__B, _translatedUnconstrainedPoint, 1, projectedPoint, 1, dimensions);
    *&self->_clean |= 0x20u;
  }

  return self->__projectedPoint;
}

- (BOOL)_isRubberBanding
{
  if ((*&self->_clean & 0x80) != 0)
  {
    return self->__rubberBanding;
  }

  else
  {
    v3 = memcmp([(_UIHyperInteractor *)self _translatedUnconstrainedPoint], [(_UIHyperInteractor *)self _closestPoint], 8 * self->__dimensions) != 0;
    self->__rubberBanding = v3;
    *&self->_clean |= 0x80u;
  }

  return v3;
}

- (const)_unconstrainedVector
{
  if ((*(&self->_clean + 1) & 1) == 0)
  {
    vDSP_vsubD([(_UIHyperInteractor *)self _closestPoint], 1, [(_UIHyperInteractor *)self _translatedUnconstrainedPoint], 1, self->__unconstrainedVector, 1, self->__dimensions);
    *&self->_clean |= 0x100u;
  }

  return self->__unconstrainedVector;
}

- (double)_unconstrainedExtent
{
  if ((*(&self->_clean + 1) & 0x10) != 0)
  {
    return self->__unconstrainedExtent;
  }

  [(_UIHyperInteractor *)self _unconstrainedExtentVector];
  cblas_dnrm2_NEWLAPACK();
  self->__unconstrainedExtent = result;
  *&self->_clean |= 0x1000u;
  return result;
}

- (const)_constrainedVelocity
{
  if ((*(&self->_clean + 1) & 0x80) == 0)
  {
    vDSP_vsubD([(_UIHyperInteractor *)self _unconstrainedExtentVector], 1, [(_UIHyperInteractor *)self _unconstrainedVector], 1, self->__constrainedVelocity, 1, self->__dimensions);
    cblas_dnrm2_NEWLAPACK();
    v4 = v3;
    constrainedVelocity = self->__constrainedVelocity;
    _effectiveVelocity = [(_UIHyperInteractor *)self _effectiveVelocity];
    if (v4 == 0.0)
    {
      cblas_dcopy_NEWLAPACK();
    }

    else
    {
      _UIHyperFractionalProjectionOntoHyperplane(constrainedVelocity, _effectiveVelocity, self->__constrainedVelocity, self->__dimensions, 1.0);
    }

    [(_UIHyperInteractor *)self _unconstrainedExtent];
    if (v7 != 0.0)
    {
      v8 = self->__constrainedVelocity;
      _unconstrainedExtentVector = [(_UIHyperInteractor *)self _unconstrainedExtentVector];
      [(_UIHyperInteractor *)self _constrainedFraction];
      _UIHyperFractionalProjectionOntoHyperplane(v8, v8, _unconstrainedExtentVector, self->__dimensions, 1.0 - v10);
    }

    *&self->_clean |= 0x8000u;
  }

  return self->__constrainedVelocity;
}

- (void)_getUnconstrainedPoint:(double *)point forConstrainedPoint:(const double *)constrainedPoint
{
  __B[1] = *MEMORY[0x1E69E9840];
  _region = [(_UIHyperInteractor *)self _region];
  [_region _closestPoint:point toPoint:constrainedPoint];

  v8 = 8 * self->__dimensions;
  v9 = memcmp(point, constrainedPoint, v8);
  if (v9)
  {
    v10 = (__B - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    _extender = [(_UIHyperInteractor *)self _extender];
    [_extender _getExtentVector:v10 forUnconstrainedPoint:constrainedPoint closestPoint:point];

    v12 = cblas_dnrm2_NEWLAPACK();
    if (v13 == 0.0 || (v14 = v13, MEMORY[0x1EEE9AC00](v12), v16 = (__B - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0)), vDSP_vsubD(point, 1, constrainedPoint, 1, v16, 1, v17), v18 = self->__dimensions, __B[0] = _UIHyperFractionOfProjectionOnto(v16, v10, v18), vDSP_vsmulD(v10, 1, __B, v16, 1, v18), cblas_dnrm2_NEWLAPACK(), v20 = v19, v21 = v19 / v14, v19 / v14 >= 1.0))
    {
      cblas_dcopy_NEWLAPACK();
    }

    else
    {
      [(_UIHyperInteractor *)self _rubberBandCoefficient];
      dimensions = self->__dimensions;
      __B[0] = v14 * ((-1.0 / (v21 + -1.0) + -1.0) / v22) / v20;
      vDSP_vsmaD(v16, 1, __B, point, 1, point, 1, dimensions);
    }
  }
}

- (_UIHyperInteractorDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->__delegate);

  return WeakRetained;
}

@end