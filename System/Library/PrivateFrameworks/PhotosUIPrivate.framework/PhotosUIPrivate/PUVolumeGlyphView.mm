@interface PUVolumeGlyphView
+ (id)classSubstitions;
- (Class)CAMLParser:(id)parser didFailToFindClassWithName:(id)name;
- (PUVolumeGlyphView)initWithFrame:(CGRect)frame;
- (void)_handleGlyphLayerDidLoad:(id)load;
- (void)layoutSubviews;
- (void)setStateName:(id)name;
@end

@implementation PUVolumeGlyphView

- (Class)CAMLParser:(id)parser didFailToFindClassWithName:(id)name
{
  nameCopy = name;
  classSubstitions = [objc_opt_class() classSubstitions];
  v6 = [classSubstitions objectForKeyedSubscript:nameCopy];

  return v6;
}

- (void)setStateName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (self->_stateName != nameCopy)
  {
    v10 = nameCopy;
    nameCopy = [nameCopy isEqual:?];
    v5 = v10;
    if ((nameCopy & 1) == 0)
    {
      v6 = [v10 copy];
      stateName = self->_stateName;
      self->_stateName = v6;

      v8 = [(CALayer *)self->_glyphLayer stateWithName:v10];
      LODWORD(v9) = 1.0;
      [(CAStateController *)self->_stateController setState:v8 ofLayer:self->_glyphLayer transitionSpeed:v9];

      v5 = v10;
    }
  }

  MEMORY[0x1EEE66BB8](nameCopy, v5);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUVolumeGlyphView;
  [(PUVolumeGlyphView *)&v3 layoutSubviews];
  [(PUVolumeGlyphView *)self bounds];
  UIRectGetCenter();
  [(CALayer *)self->_glyphLayer setPosition:?];
}

- (void)_handleGlyphLayerDidLoad:(id)load
{
  objc_storeStrong(&self->_glyphLayer, load);
  loadCopy = load;
  v6 = [objc_alloc(MEMORY[0x1E69794D0]) initWithLayer:loadCopy];
  stateController = self->_stateController;
  self->_stateController = v6;

  layer = [(PUVolumeGlyphView *)self layer];
  [layer addSublayer:loadCopy];

  [(PUVolumeGlyphView *)self setNeedsLayout];
  stateName = [(PUVolumeGlyphView *)self stateName];
  v9 = [(CALayer *)self->_glyphLayer stateWithName:stateName];
  [(CAStateController *)self->_stateController setState:v9 ofLayer:self->_glyphLayer];
}

- (PUVolumeGlyphView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = PUVolumeGlyphView;
  v3 = [(PUVolumeGlyphView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.PUVolumeGlyphView", 0);
    loadingQueue = v3->_loadingQueue;
    v3->_loadingQueue = v4;

    objc_initWeak(&location, v3);
    v6 = v3->_loadingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__PUVolumeGlyphView_initWithFrame___block_invoke;
    block[3] = &unk_1E7B80610;
    v9 = v3;
    objc_copyWeak(&v10, &location);
    dispatch_async(v6, block);
    objc_destroyWeak(&v10);

    objc_destroyWeak(&location);
  }

  return v3;
}

void __35__PUVolumeGlyphView_initWithFrame___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] pu_PhotosUIFrameworkBundle];
  v3 = [v2 URLForResource:@"VolumeGlyph" withExtension:@"caml"];

  v4 = [MEMORY[0x1E69793B0] parser];
  v5 = *(a1 + 32);
  v6 = *(v5 + 432);
  *(v5 + 432) = @"mute";

  [v4 setDelegate:*(a1 + 32)];
  [v4 parseContentsOfURL:v3];
  v7 = [v4 result];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__PUVolumeGlyphView_initWithFrame___block_invoke_2;
  v9[3] = &unk_1E7B80610;
  objc_copyWeak(&v11, (a1 + 40));
  v10 = v7;
  v8 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v11);
}

void __35__PUVolumeGlyphView_initWithFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleGlyphLayerDidLoad:*(a1 + 32)];
}

+ (id)classSubstitions
{
  if (classSubstitions_onceToken != -1)
  {
    dispatch_once(&classSubstitions_onceToken, &__block_literal_global_60403);
  }

  v3 = classSubstitions_substitutions;

  return v3;
}

void __37__PUVolumeGlyphView_classSubstitions__block_invoke()
{
  v3[11] = *MEMORY[0x1E69E9840];
  v2[0] = @"LKState";
  v3[0] = objc_opt_class();
  v2[1] = @"LKEventHandler";
  v3[1] = objc_opt_class();
  v2[2] = @"LKStateAddAnimation";
  v3[2] = objc_opt_class();
  v2[3] = @"LKStateAddElement";
  v3[3] = objc_opt_class();
  v2[4] = @"LKStateElement";
  v3[4] = objc_opt_class();
  v2[5] = @"LKStateRemoveAnimation";
  v3[5] = objc_opt_class();
  v2[6] = @"LKStateRemoveElement";
  v3[6] = objc_opt_class();
  v2[7] = @"LKStateSetValue";
  v3[7] = objc_opt_class();
  v2[8] = @"LKStateSetProperty";
  v3[8] = objc_opt_class();
  v2[9] = @"LKStateTransition";
  v3[9] = objc_opt_class();
  v2[10] = @"LKStateTransitionElement";
  v3[10] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:11];
  v1 = classSubstitions_substitutions;
  classSubstitions_substitutions = v0;
}

@end