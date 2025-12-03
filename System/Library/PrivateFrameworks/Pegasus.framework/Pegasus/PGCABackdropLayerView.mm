@interface PGCABackdropLayerView
+ (id)baseFilters;
+ (id)blurFilters;
+ (id)materialFilters;
+ (id)reducedTransparencyColor;
- (BOOL)_hasAnyDependentsThatWantsCapturedBlur;
- (BOOL)_isCaptureOnly;
- (BOOL)_isTransparentOrHasTransparentAncestor;
- (BOOL)_wantsCapturedBlur;
- (PGCABackdropLayerView)groupLeader;
- (PGCABackdropLayerView)initWithFrame:(CGRect)frame captureOnly:(BOOL)only;
- (PGCABackdropLayerView)initWithFrame:(CGRect)frame wantsGlassBackground:(BOOL)background;
- (id)_preferredBackgroundColor;
- (int64_t)_preferredEffect;
- (void)_addDependent:(id)dependent;
- (void)_ensureDependents;
- (void)_enumerateDependents:(id)dependents;
- (void)_removeDependent:(id)dependent;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setCustomBackgroundColor:(id)color;
- (void)setGroupLeader:(id)leader;
- (void)setWantsBlur:(BOOL)blur;
- (void)updateEffects;
@end

@implementation PGCABackdropLayerView

+ (id)baseFilters
{
  if (baseFilters_onceToken != -1)
  {
    +[PGCABackdropLayerView baseFilters];
  }

  v3 = baseFilters_baseFilters;

  return v3;
}

void __36__PGCABackdropLayerView_baseFilters__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D08]];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v2 = baseFilters_baseFilters;
  baseFilters_baseFilters = v1;
}

+ (id)materialFilters
{
  if (materialFilters_onceToken != -1)
  {
    +[PGCABackdropLayerView materialFilters];
  }

  v3 = materialFilters_materialFilters;

  return v3;
}

void __40__PGCABackdropLayerView_materialFilters__block_invoke()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  [v0 setValue:&unk_1F3959150 forKey:@"inputRadius"];
  [v0 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
  [v0 setValue:@"low" forKey:@"inputQuality"];
  [v0 setValue:@"low" forKey:@"inputIntermediateBitDepth"];
  v1 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979880]];
  CAColorMatrixMakeSaturation();
  CAColorMatrixMakeColorSourceOver();
  CAColorMatrixMakeColorSourceOver();
  CAColorMatrixConcat();
  CAColorMatrixConcat();
  memset(v5, 0, sizeof(v5));
  v2 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:{v5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}];
  [v1 setValue:v2 forKey:@"inputColorMatrix"];

  v6[0] = v0;
  v6[1] = v1;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = materialFilters_materialFilters;
  materialFilters_materialFilters = v3;
}

+ (id)blurFilters
{
  if (blurFilters_onceToken != -1)
  {
    +[PGCABackdropLayerView blurFilters];
  }

  v3 = blurFilters_blurFilters;

  return v3;
}

void __36__PGCABackdropLayerView_blurFilters__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  [v0 setValue:&unk_1F3959150 forKey:@"inputRadius"];
  [v0 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
  [v0 setValue:@"low" forKey:@"inputQuality"];
  [v0 setValue:@"low" forKey:@"inputIntermediateBitDepth"];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v2 = blurFilters_blurFilters;
  blurFilters_blurFilters = v1;
}

+ (id)reducedTransparencyColor
{
  if (reducedTransparencyColor_onceToken != -1)
  {
    +[PGCABackdropLayerView reducedTransparencyColor];
  }

  v3 = reducedTransparencyColor_reducedTransparencyColor;

  return v3;
}

uint64_t __49__PGCABackdropLayerView_reducedTransparencyColor__block_invoke()
{
  reducedTransparencyColor_reducedTransparencyColor = [MEMORY[0x1E69DC888] colorWithRed:0.168627451 green:0.180392157 blue:0.188235294 alpha:1.0];

  return MEMORY[0x1EEE66BB8]();
}

- (PGCABackdropLayerView)initWithFrame:(CGRect)frame captureOnly:(BOOL)only
{
  onlyCopy = only;
  v5 = [(PGCABackdropLayerView *)self initWithFrame:0 wantsGlassBackground:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5 && onlyCopy)
  {
    layer = [(PGCABackdropLayerView *)v5 layer];
    [layer setCaptureOnly:1];

    layer2 = [(PGCABackdropLayerView *)v6 layer];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [layer2 setGroupName:uUIDString];
  }

  return v6;
}

- (PGCABackdropLayerView)initWithFrame:(CGRect)frame wantsGlassBackground:(BOOL)background
{
  v9.receiver = self;
  v9.super_class = PGCABackdropLayerView;
  v5 = [(PGCABackdropLayerView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_wantsGlassBackground = background;
    [(PGCABackdropLayerView *)v5 setUserInteractionEnabled:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_updateEffects name:*MEMORY[0x1E69DD920] object:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DD920] object:0];

  v4.receiver = self;
  v4.super_class = PGCABackdropLayerView;
  [(PGCABackdropLayerView *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PGCABackdropLayerView;
  [(PGCABackdropLayerView *)&v3 didMoveToWindow];
  [(PGCABackdropLayerView *)self updateEffects];
}

- (void)setCustomBackgroundColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_customBackgroundColor isEqual:colorCopy]& 1) == 0 && self->_customBackgroundColor != colorCopy)
  {
    v4 = [(UIColor *)colorCopy copy];
    customBackgroundColor = self->_customBackgroundColor;
    self->_customBackgroundColor = v4;

    [(PGCABackdropLayerView *)self updateEffects];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setWantsBlur:(BOOL)blur
{
  if (self->_wantsBlur != blur)
  {
    self->_wantsBlur = blur;
    [(PGCABackdropLayerView *)self updateEffects];
  }
}

- (void)updateEffects
{
  _preferredEffect = [(PGCABackdropLayerView *)self _preferredEffect];
  _preferredBackgroundColor = [(PGCABackdropLayerView *)self _preferredBackgroundColor];
  if (_preferredEffect == 1)
  {
    v4 = 0.25;
  }

  else
  {
    v4 = 0.0;
  }

  array = [MEMORY[0x1E695DF70] array];
  if (self->_wantsGlassBackground)
  {
    v6 = +[PGCABackdropLayerView baseFilters];
    [array addObjectsFromArray:v6];

    if (_preferredEffect == 1)
    {
      v7 = +[PGCABackdropLayerView blurFilters];
LABEL_9:
      v8 = v7;
      [array addObjectsFromArray:v7];

      goto LABEL_11;
    }
  }

  else if (_preferredEffect == 1)
  {
    v7 = +[PGCABackdropLayerView materialFilters];
    goto LABEL_9;
  }

  [array addObjectsFromArray:MEMORY[0x1E695E0F0]];
LABEL_11:
  if ([(PGCABackdropLayerView *)self _isCaptureOnly])
  {
    layer = [(PGCABackdropLayerView *)self layer];
    -[PGCABackdropLayerView setHidden:](self, "setHidden:", [layer isEnabled] ^ 1);
  }

  else
  {
    pG_backdropGroupLeader = [(UIView *)self PG_backdropGroupLeader];
    [(PGCABackdropLayerView *)self setGroupLeader:pG_backdropGroupLeader];

    if (_preferredEffect == 1)
    {
      groupLeader = [(PGCABackdropLayerView *)self groupLeader];
      layer2 = [groupLeader layer];
      layer = [layer2 groupName];
    }

    else
    {
      layer = 0;
    }

    layer3 = [(PGCABackdropLayerView *)self layer];
    groupName = [layer3 groupName];

    if (layer != groupName && ([layer isEqualToString:groupName] & 1) == 0)
    {
      layer4 = [(PGCABackdropLayerView *)self layer];
      [layer4 setGroupName:layer];
    }
  }

  layer5 = [(PGCABackdropLayerView *)self layer];
  [layer5 scale];
  v18 = v17;

  if (v18 != v4)
  {
    layer6 = [(PGCABackdropLayerView *)self layer];
    [layer6 setScale:v4];
  }

  layer7 = [(PGCABackdropLayerView *)self layer];
  filters = [layer7 filters];
  v22 = [filters isEqualToArray:array];

  if ((v22 & 1) == 0)
  {
    layer8 = [(PGCABackdropLayerView *)self layer];
    [layer8 setFilters:array];
  }

  layer9 = [(PGCABackdropLayerView *)self layer];
  isEnabled = [layer9 isEnabled];

  if ((_preferredEffect == 1) != isEnabled)
  {
    layer10 = [(PGCABackdropLayerView *)self layer];
    [layer10 setEnabled:_preferredEffect == 1];
  }

  if (self->_wantsGlassBackground)
  {
    layer11 = [(PGCABackdropLayerView *)self layer];
    LODWORD(v28) = 1061997773;
    [layer11 setOpacity:v28];
  }

  backgroundColor = [(PGCABackdropLayerView *)self backgroundColor];
  if ([_preferredBackgroundColor isEqual:backgroundColor])
  {
  }

  else
  {
    backgroundColor2 = [(PGCABackdropLayerView *)self backgroundColor];

    if (_preferredBackgroundColor != backgroundColor2)
    {
      [(PGCABackdropLayerView *)self setBackgroundColor:_preferredBackgroundColor];
    }
  }
}

- (int64_t)_preferredEffect
{
  if (self->_wantsGlassBackground)
  {
    LODWORD(result) = [(PGCABackdropLayerView *)self wantsBlur];
    return result;
  }

  if ([(PGCABackdropLayerView *)self _isCaptureOnly])
  {
    LODWORD(result) = [(PGCABackdropLayerView *)self _hasAnyDependentsThatWantsCapturedBlur];
    return result;
  }

  customBackgroundColor = [(PGCABackdropLayerView *)self customBackgroundColor];

  if (customBackgroundColor)
  {
    return 0;
  }

  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    return 2;
  }

  return 1;
}

- (id)_preferredBackgroundColor
{
  if ([(PGCABackdropLayerView *)self _isCaptureOnly])
  {
LABEL_5:
    customBackgroundColor = 0;
    goto LABEL_6;
  }

  _preferredEffect = [(PGCABackdropLayerView *)self _preferredEffect];
  if (_preferredEffect != 2)
  {
    if (!_preferredEffect)
    {
      customBackgroundColor = [(PGCABackdropLayerView *)self customBackgroundColor];
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  customBackgroundColor = [objc_opt_class() reducedTransparencyColor];
LABEL_6:

  return customBackgroundColor;
}

- (BOOL)_wantsCapturedBlur
{
  if ([(PGCABackdropLayerView *)self _preferredEffect]!= 1)
  {
    return 0;
  }

  return [(UIView *)self PG_preferredVisibilityForView:self];
}

- (BOOL)_isCaptureOnly
{
  layer = [(PGCABackdropLayerView *)self layer];
  captureOnly = [layer captureOnly];

  return captureOnly;
}

- (void)setGroupLeader:(id)leader
{
  obj = leader;
  _isCaptureOnly = [(PGCABackdropLayerView *)obj _isCaptureOnly];
  v6 = obj;
  if (obj && !_isCaptureOnly)
  {
    [(PGCABackdropLayerView *)a2 setGroupLeader:?];
    v6 = obj;
  }

  if (v6 == self)
  {
    [(PGCABackdropLayerView *)a2 setGroupLeader:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_groupLeader);

  v8 = obj;
  if (WeakRetained != obj)
  {
    v9 = objc_loadWeakRetained(&self->_groupLeader);
    [v9 _removeDependent:self];

    v10 = objc_storeWeak(&self->_groupLeader, obj);
    [(PGCABackdropLayerView *)obj _addDependent:self];

    v8 = obj;
  }
}

- (BOOL)_hasAnyDependentsThatWantsCapturedBlur
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__PGCABackdropLayerView__hasAnyDependentsThatWantsCapturedBlur__block_invoke;
  v4[3] = &unk_1E7F329B8;
  v4[4] = &v5;
  [(PGCABackdropLayerView *)self _enumerateDependents:v4];
  v2 = v6[3] > 0;
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __63__PGCABackdropLayerView__hasAnyDependentsThatWantsCapturedBlur__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 _wantsCapturedBlur];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

- (void)_addDependent:(id)dependent
{
  dependentCopy = dependent;
  [(PGCABackdropLayerView *)self _ensureDependents];
  [(NSHashTable *)self->_dependents addObject:dependentCopy];
}

- (void)_removeDependent:(id)dependent
{
  [(NSHashTable *)self->_dependents removeObject:dependent];

  [(PGCABackdropLayerView *)self updateEffects];
}

- (void)_ensureDependents
{
  if (!self->_dependents)
  {
    self->_dependents = [MEMORY[0x1E696AC70] weakObjectsHashTable];

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)_enumerateDependents:(id)dependents
{
  v16 = *MEMORY[0x1E69E9840];
  dependentsCopy = dependents;
  v5 = [(NSHashTable *)self->_dependents copy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        dependentsCopy[2](dependentsCopy, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)_isTransparentOrHasTransparentAncestor
{
  [(PGCABackdropLayerView *)self alpha];
  v4 = v3;
  superview = [(PGCABackdropLayerView *)self superview];
  while (superview)
  {
    if (v4 <= 0.0)
    {
      break;
    }

    v6 = superview;
    [superview alpha];
    if (v4 >= v7)
    {
      v4 = v7;
    }

    superview = [superview superview];
  }

  return v4 == 0.0;
}

- (PGCABackdropLayerView)groupLeader
{
  WeakRetained = objc_loadWeakRetained(&self->_groupLeader);

  return WeakRetained;
}

- (void)setGroupLeader:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PGCABackdropLayerView.m" lineNumber:265 description:{@"Invalid parameter not satisfying: %@", @"[groupLeader _isCaptureOnly] || groupLeader == nil"}];
}

- (void)setGroupLeader:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PGCABackdropLayerView.m" lineNumber:266 description:{@"Invalid parameter not satisfying: %@", @"groupLeader != self"}];
}

@end