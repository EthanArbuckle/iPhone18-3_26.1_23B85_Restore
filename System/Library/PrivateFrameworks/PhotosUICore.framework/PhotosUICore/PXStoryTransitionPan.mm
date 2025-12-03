@interface PXStoryTransitionPan
+ (id)panWithConfiguration:(id)configuration;
+ (id)panWithEffect:(id)effect transitionInfo:(id *)info;
- (void)_configureClipLayoutsContentBoundsForTime:(id *)time;
- (void)configureEffectForTime:(id *)time;
- (void)timeDidChange;
- (void)wasStopped;
@end

@implementation PXStoryTransitionPan

+ (id)panWithEffect:(id)effect transitionInfo:(id *)info
{
  effectCopy = effect;
  v7 = [self alloc];
  v19 = *(&info->var1 + 3);
  v20 = *&info->var2.var2;
  v8 = [v7 initWithKind:5 duration:&v19 effect:effectCopy];

  LODWORD(v9) = 1042536202;
  LODWORD(v10) = 1.0;
  LODWORD(v11) = 1.0;
  v12 = [MEMORY[0x1E69793D0] functionWithControlPoints:v9 :0.0 :v10 :v11];
  v13 = v8[40];
  v8[40] = v12;

  LODWORD(v14) = 1059648963;
  LODWORD(v15) = 1.0;
  v16 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :v14 :v15];
  v17 = v8[41];
  v8[41] = v16;

  return v8;
}

+ (id)panWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  identifier = [configurationCopy identifier];
  v9 = [v7 stringByAppendingFormat:@".%@", identifier];

  v21.receiver = self;
  v21.super_class = &OBJC_METACLASS___PXStoryTransitionPan;
  v10 = objc_msgSendSuper2(&v21, sel_alloc);
  if (configurationCopy)
  {
    [configurationCopy duration];
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  v11 = [v10 initWithIdentifier:v9 kind:5 duration:v20 event:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong((v11 + 312), configuration);
    LODWORD(v13) = 1045220557;
    LODWORD(v14) = 1051931443;
    LODWORD(v15) = 1042536202;
    LODWORD(v16) = 1.0;
    v17 = [MEMORY[0x1E69793D0] functionWithControlPoints:v13 :v14 :v15 :v16];
    v18 = v12[42];
    v12[42] = v17;
  }

  return v12;
}

- (void)configureEffectForTime:(id *)time
{
  [(PXStoryConcreteTransition *)self effect];
  objc_claimAutoreleasedReturnValue();
  time = *time;
  CMTimeGetSeconds(&time);
  [(PXStoryConcreteTransition *)self duration];
  time = v5;
  CMTimeGetSeconds(&time);
  PXClamp();
}

- (void)wasStopped
{
  [(PXStoryPanTransitionConfiguration *)self->_configuration enumerateLayoutsUsingBlock:&__block_literal_global_306];
  v3.receiver = self;
  v3.super_class = PXStoryTransitionPan;
  [(PXStoryConcreteTransition *)&v3 wasStopped];
}

void __34__PXStoryTransitionPan_wasStopped__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setContentBounds:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  [v2 setUseContentBoundsForContentEdgeInsets:1];
  v3 = [v2 clip];
  if (v3)
  {
    v4 = v3;
    [v3 info];

    if (v6[1] == 3)
    {
      LODWORD(v5) = 1.0;
      [v2 setContentAlpha:v5];
    }
  }

  else
  {
    bzero(v6, 0x300uLL);
  }
}

- (void)_configureClipLayoutsContentBoundsForTime:(id *)time
{
  time = *time;
  CMTimeGetSeconds(&time);
  [(PXStoryConcreteTransition *)self duration];
  time = v4;
  CMTimeGetSeconds(&time);
  PXClamp();
}

- (void)timeDidChange
{
  v6 = 0uLL;
  v7 = 0;
  [(PXStoryAnimation *)self time];
  if (self->_configuration)
  {
    v4 = v6;
    v5 = v7;
    [(PXStoryTransitionPan *)self _configureClipLayoutsContentBoundsForTime:&v4];
  }

  v3.receiver = self;
  v3.super_class = PXStoryTransitionPan;
  [(PXStoryConcreteTransition *)&v3 timeDidChange];
}

@end