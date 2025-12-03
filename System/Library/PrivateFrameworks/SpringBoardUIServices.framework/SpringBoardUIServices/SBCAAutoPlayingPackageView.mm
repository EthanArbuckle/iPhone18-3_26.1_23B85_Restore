@interface SBCAAutoPlayingPackageView
- (BOOL)setState:(id)state onLayer:(id)layer animated:(BOOL)animated transitionSpeed:(double)speed completion:(id)completion;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SBCAAutoPlayingPackageView)initWithURL:(id)l startingState:(id)state endingState:(id)endingState;
- (void)_setPendingCompletion:(id)completion fromState:(id)state toState:(id)toState;
- (void)dealloc;
- (void)layoutSubviews;
- (void)stateController:(id)controller transitionDidStop:(id)stop completed:(BOOL)completed;
@end

@implementation SBCAAutoPlayingPackageView

- (SBCAAutoPlayingPackageView)initWithURL:(id)l startingState:(id)state endingState:(id)endingState
{
  v44 = *MEMORY[0x1E69E9840];
  lCopy = l;
  stateCopy = state;
  endingStateCopy = endingState;
  v11 = *MEMORY[0x1E6979EF8];
  v42 = 0;
  v12 = [MEMORY[0x1E6979400] packageWithContentsOfURL:lCopy type:v11 options:0 error:&v42];
  v13 = v42;
  rootLayer = [v12 rootLayer];
  [rootLayer frame];
  v41.receiver = self;
  v41.super_class = SBCAAutoPlayingPackageView;
  v15 = [(SBCAAutoPlayingPackageView *)&v41 initWithFrame:?];
  v16 = v15;
  if (v15)
  {
    v34 = v13;
    v35 = endingStateCopy;
    v36 = lCopy;
    objc_storeStrong(&v15->_rootLayer, rootLayer);
    v33 = rootLayer;
    [rootLayer frame];
    v16->_originalSize.width = v17;
    v16->_originalSize.height = v18;
    objc_storeStrong(&v16->_startingState, state);
    objc_storeStrong(&v16->_endingState, endingState);
    -[CALayer setGeometryFlipped:](v16->_rootLayer, "setGeometryFlipped:", [v12 isGeometryFlipped]);
    layer = [(SBCAAutoPlayingPackageView *)v16 layer];
    [layer addSublayer:v16->_rootLayer];

    publishedObjectNames = [v12 publishedObjectNames];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = [publishedObjectNames countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = *v38;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(publishedObjectNames);
          }

          v26 = *(*(&v37 + 1) + 8 * i);
          v27 = [v12 publishedObjectWithName:v26];
          if (v27)
          {
            if (!v23)
            {
              v23 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(publishedObjectNames, "count")}];
            }

            [v23 setObject:v27 forKey:v26];
          }
        }

        v22 = [publishedObjectNames countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v22);
    }

    else
    {
      v23 = 0;
    }

    v28 = [v23 copy];
    publishedObjectMap = v16->_publishedObjectMap;
    v16->_publishedObjectMap = v28;

    v30 = [objc_alloc(MEMORY[0x1E69794D0]) initWithLayer:v16->_rootLayer];
    stateController = v16->_stateController;
    v16->_stateController = v30;

    [(CAStateController *)v16->_stateController setDelegate:v16];
    [(SBCAAutoPlayingPackageView *)v16 setState:stateCopy];

    lCopy = v36;
    v13 = v34;
    endingStateCopy = v35;
    rootLayer = v33;
  }

  return v16;
}

- (void)dealloc
{
  [(CAStateController *)self->_stateController setDelegate:0];
  stateController = self->_stateController;
  self->_stateController = 0;

  v4.receiver = self;
  v4.super_class = SBCAAutoPlayingPackageView;
  [(SBCAAutoPlayingPackageView *)&v4 dealloc];
}

- (BOOL)setState:(id)state onLayer:(id)layer animated:(BOOL)animated transitionSpeed:(double)speed completion:(id)completion
{
  animatedCopy = animated;
  stateCopy = state;
  layerCopy = layer;
  completionCopy = completion;
  v15 = [layerCopy stateWithName:stateCopy];
  if (v15)
  {
    if (animatedCopy)
    {
      if (completionCopy)
      {
        v17 = [(CAStateController *)self->_stateController stateOfLayer:layerCopy];
        name = [v17 name];
        [(SBCAAutoPlayingPackageView *)self _setPendingCompletion:completionCopy fromState:name toState:stateCopy];
      }

      *&v16 = speed;
      [(CAStateController *)self->_stateController setState:v15 ofLayer:layerCopy transitionSpeed:v16];
    }

    else
    {
      [(SBCAAutoPlayingPackageView *)self _clearPendingCompletion];
      [(CAStateController *)self->_stateController setState:v15 ofLayer:layerCopy];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  return v15 != 0;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = self->_originalSize.width;
  height = self->_originalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = SBCAAutoPlayingPackageView;
  [(SBCAAutoPlayingPackageView *)&v8 layoutSubviews];
  [(SBCAAutoPlayingPackageView *)self bounds];
  if (v3 / self->_originalSize.width >= v4 / self->_originalSize.height)
  {
    v5 = v4 / self->_originalSize.height;
  }

  else
  {
    v5 = v3 / self->_originalSize.width;
  }

  [(CALayer *)self->_rootLayer setPosition:v3 * 0.5, v4 * 0.5];
  rootLayer = self->_rootLayer;
  CATransform3DMakeScale(&v7, v5, v5, 1.0);
  [(CALayer *)rootLayer setTransform:&v7];
}

- (void)stateController:(id)controller transitionDidStop:(id)stop completed:(BOOL)completed
{
  controllerCopy = controller;
  stopCopy = stop;
  v8 = stopCopy;
  if (self->_pendingCompletion)
  {
    toState = [stopCopy toState];
    v10 = [toState isEqualToString:self->_pendingCompletionToState];

    if (v10)
    {
      (*(self->_pendingCompletion + 2))();
      pendingCompletion = self->_pendingCompletion;
      self->_pendingCompletion = 0;

      pendingCompletionFromState = self->_pendingCompletionFromState;
      self->_pendingCompletionFromState = 0;

      pendingCompletionToState = self->_pendingCompletionToState;
      self->_pendingCompletionToState = 0;
    }
  }

  toState2 = [v8 toState];
  v15 = [toState2 isEqualToString:self->_endingState];

  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x1E69794D0]) initWithLayer:self->_rootLayer];
    stateController = self->_stateController;
    self->_stateController = v16;

    [(CAStateController *)self->_stateController setDelegate:self];
    [(SBCAAutoPlayingPackageView *)self setState:self->_startingState animated:1 transitionSpeed:0 completion:1.0];
  }
}

- (void)_setPendingCompletion:(id)completion fromState:(id)state toState:(id)toState
{
  completionCopy = completion;
  stateCopy = state;
  toStateCopy = toState;
  pendingCompletion = self->_pendingCompletion;
  if (pendingCompletion)
  {
    pendingCompletion[2](pendingCompletion, 0);
  }

  v11 = [completionCopy copy];
  v12 = self->_pendingCompletion;
  self->_pendingCompletion = v11;

  v13 = [stateCopy copy];
  pendingCompletionFromState = self->_pendingCompletionFromState;
  self->_pendingCompletionFromState = v13;

  v15 = [toStateCopy copy];
  pendingCompletionToState = self->_pendingCompletionToState;
  self->_pendingCompletionToState = v15;
}

@end