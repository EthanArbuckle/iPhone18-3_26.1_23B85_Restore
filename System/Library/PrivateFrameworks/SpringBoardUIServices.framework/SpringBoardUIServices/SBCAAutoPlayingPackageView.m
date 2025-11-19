@interface SBCAAutoPlayingPackageView
- (BOOL)setState:(id)a3 onLayer:(id)a4 animated:(BOOL)a5 transitionSpeed:(double)a6 completion:(id)a7;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SBCAAutoPlayingPackageView)initWithURL:(id)a3 startingState:(id)a4 endingState:(id)a5;
- (void)_setPendingCompletion:(id)a3 fromState:(id)a4 toState:(id)a5;
- (void)dealloc;
- (void)layoutSubviews;
- (void)stateController:(id)a3 transitionDidStop:(id)a4 completed:(BOOL)a5;
@end

@implementation SBCAAutoPlayingPackageView

- (SBCAAutoPlayingPackageView)initWithURL:(id)a3 startingState:(id)a4 endingState:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *MEMORY[0x1E6979EF8];
  v42 = 0;
  v12 = [MEMORY[0x1E6979400] packageWithContentsOfURL:v8 type:v11 options:0 error:&v42];
  v13 = v42;
  v14 = [v12 rootLayer];
  [v14 frame];
  v41.receiver = self;
  v41.super_class = SBCAAutoPlayingPackageView;
  v15 = [(SBCAAutoPlayingPackageView *)&v41 initWithFrame:?];
  v16 = v15;
  if (v15)
  {
    v34 = v13;
    v35 = v10;
    v36 = v8;
    objc_storeStrong(&v15->_rootLayer, v14);
    v33 = v14;
    [v14 frame];
    v16->_originalSize.width = v17;
    v16->_originalSize.height = v18;
    objc_storeStrong(&v16->_startingState, a4);
    objc_storeStrong(&v16->_endingState, a5);
    -[CALayer setGeometryFlipped:](v16->_rootLayer, "setGeometryFlipped:", [v12 isGeometryFlipped]);
    v19 = [(SBCAAutoPlayingPackageView *)v16 layer];
    [v19 addSublayer:v16->_rootLayer];

    v20 = [v12 publishedObjectNames];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v37 objects:v43 count:16];
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
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v37 + 1) + 8 * i);
          v27 = [v12 publishedObjectWithName:v26];
          if (v27)
          {
            if (!v23)
            {
              v23 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v20, "count")}];
            }

            [v23 setObject:v27 forKey:v26];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v37 objects:v43 count:16];
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
    [(SBCAAutoPlayingPackageView *)v16 setState:v9];

    v8 = v36;
    v13 = v34;
    v10 = v35;
    v14 = v33;
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

- (BOOL)setState:(id)a3 onLayer:(id)a4 animated:(BOOL)a5 transitionSpeed:(double)a6 completion:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [v13 stateWithName:v12];
  if (v15)
  {
    if (v9)
    {
      if (v14)
      {
        v17 = [(CAStateController *)self->_stateController stateOfLayer:v13];
        v18 = [v17 name];
        [(SBCAAutoPlayingPackageView *)self _setPendingCompletion:v14 fromState:v18 toState:v12];
      }

      *&v16 = a6;
      [(CAStateController *)self->_stateController setState:v15 ofLayer:v13 transitionSpeed:v16];
    }

    else
    {
      [(SBCAAutoPlayingPackageView *)self _clearPendingCompletion];
      [(CAStateController *)self->_stateController setState:v15 ofLayer:v13];
      if (v14)
      {
        v14[2](v14, 1);
      }
    }
  }

  else if (v14)
  {
    v14[2](v14, 0);
  }

  return v15 != 0;
}

- (CGSize)sizeThatFits:(CGSize)a3
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

- (void)stateController:(id)a3 transitionDidStop:(id)a4 completed:(BOOL)a5
{
  v18 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_pendingCompletion)
  {
    v9 = [v7 toState];
    v10 = [v9 isEqualToString:self->_pendingCompletionToState];

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

  v14 = [v8 toState];
  v15 = [v14 isEqualToString:self->_endingState];

  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x1E69794D0]) initWithLayer:self->_rootLayer];
    stateController = self->_stateController;
    self->_stateController = v16;

    [(CAStateController *)self->_stateController setDelegate:self];
    [(SBCAAutoPlayingPackageView *)self setState:self->_startingState animated:1 transitionSpeed:0 completion:1.0];
  }
}

- (void)_setPendingCompletion:(id)a3 fromState:(id)a4 toState:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  pendingCompletion = self->_pendingCompletion;
  if (pendingCompletion)
  {
    pendingCompletion[2](pendingCompletion, 0);
  }

  v11 = [v17 copy];
  v12 = self->_pendingCompletion;
  self->_pendingCompletion = v11;

  v13 = [v8 copy];
  pendingCompletionFromState = self->_pendingCompletionFromState;
  self->_pendingCompletionFromState = v13;

  v15 = [v9 copy];
  pendingCompletionToState = self->_pendingCompletionToState;
  self->_pendingCompletionToState = v15;
}

@end