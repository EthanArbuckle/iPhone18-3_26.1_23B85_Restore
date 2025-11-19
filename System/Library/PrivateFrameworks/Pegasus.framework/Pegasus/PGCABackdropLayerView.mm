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
- (PGCABackdropLayerView)initWithFrame:(CGRect)a3 captureOnly:(BOOL)a4;
- (PGCABackdropLayerView)initWithFrame:(CGRect)a3 wantsGlassBackground:(BOOL)a4;
- (id)_preferredBackgroundColor;
- (int64_t)_preferredEffect;
- (void)_addDependent:(id)a3;
- (void)_ensureDependents;
- (void)_enumerateDependents:(id)a3;
- (void)_removeDependent:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setCustomBackgroundColor:(id)a3;
- (void)setGroupLeader:(id)a3;
- (void)setWantsBlur:(BOOL)a3;
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

- (PGCABackdropLayerView)initWithFrame:(CGRect)a3 captureOnly:(BOOL)a4
{
  v4 = a4;
  v5 = [(PGCABackdropLayerView *)self initWithFrame:0 wantsGlassBackground:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5 && v4)
  {
    v7 = [(PGCABackdropLayerView *)v5 layer];
    [v7 setCaptureOnly:1];

    v8 = [(PGCABackdropLayerView *)v6 layer];
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [v9 UUIDString];
    [v8 setGroupName:v10];
  }

  return v6;
}

- (PGCABackdropLayerView)initWithFrame:(CGRect)a3 wantsGlassBackground:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = PGCABackdropLayerView;
  v5 = [(PGCABackdropLayerView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_wantsGlassBackground = a4;
    [(PGCABackdropLayerView *)v5 setUserInteractionEnabled:0];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v6 selector:sel_updateEffects name:*MEMORY[0x1E69DD920] object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DD920] object:0];

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

- (void)setCustomBackgroundColor:(id)a3
{
  v6 = a3;
  if (([(UIColor *)self->_customBackgroundColor isEqual:v6]& 1) == 0 && self->_customBackgroundColor != v6)
  {
    v4 = [(UIColor *)v6 copy];
    customBackgroundColor = self->_customBackgroundColor;
    self->_customBackgroundColor = v4;

    [(PGCABackdropLayerView *)self updateEffects];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setWantsBlur:(BOOL)a3
{
  if (self->_wantsBlur != a3)
  {
    self->_wantsBlur = a3;
    [(PGCABackdropLayerView *)self updateEffects];
  }
}

- (void)updateEffects
{
  v3 = [(PGCABackdropLayerView *)self _preferredEffect];
  v31 = [(PGCABackdropLayerView *)self _preferredBackgroundColor];
  if (v3 == 1)
  {
    v4 = 0.25;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [MEMORY[0x1E695DF70] array];
  if (self->_wantsGlassBackground)
  {
    v6 = +[PGCABackdropLayerView baseFilters];
    [v5 addObjectsFromArray:v6];

    if (v3 == 1)
    {
      v7 = +[PGCABackdropLayerView blurFilters];
LABEL_9:
      v8 = v7;
      [v5 addObjectsFromArray:v7];

      goto LABEL_11;
    }
  }

  else if (v3 == 1)
  {
    v7 = +[PGCABackdropLayerView materialFilters];
    goto LABEL_9;
  }

  [v5 addObjectsFromArray:MEMORY[0x1E695E0F0]];
LABEL_11:
  if ([(PGCABackdropLayerView *)self _isCaptureOnly])
  {
    v9 = [(PGCABackdropLayerView *)self layer];
    -[PGCABackdropLayerView setHidden:](self, "setHidden:", [v9 isEnabled] ^ 1);
  }

  else
  {
    v10 = [(UIView *)self PG_backdropGroupLeader];
    [(PGCABackdropLayerView *)self setGroupLeader:v10];

    if (v3 == 1)
    {
      v11 = [(PGCABackdropLayerView *)self groupLeader];
      v12 = [v11 layer];
      v9 = [v12 groupName];
    }

    else
    {
      v9 = 0;
    }

    v13 = [(PGCABackdropLayerView *)self layer];
    v14 = [v13 groupName];

    if (v9 != v14 && ([v9 isEqualToString:v14] & 1) == 0)
    {
      v15 = [(PGCABackdropLayerView *)self layer];
      [v15 setGroupName:v9];
    }
  }

  v16 = [(PGCABackdropLayerView *)self layer];
  [v16 scale];
  v18 = v17;

  if (v18 != v4)
  {
    v19 = [(PGCABackdropLayerView *)self layer];
    [v19 setScale:v4];
  }

  v20 = [(PGCABackdropLayerView *)self layer];
  v21 = [v20 filters];
  v22 = [v21 isEqualToArray:v5];

  if ((v22 & 1) == 0)
  {
    v23 = [(PGCABackdropLayerView *)self layer];
    [v23 setFilters:v5];
  }

  v24 = [(PGCABackdropLayerView *)self layer];
  v25 = [v24 isEnabled];

  if ((v3 == 1) != v25)
  {
    v26 = [(PGCABackdropLayerView *)self layer];
    [v26 setEnabled:v3 == 1];
  }

  if (self->_wantsGlassBackground)
  {
    v27 = [(PGCABackdropLayerView *)self layer];
    LODWORD(v28) = 1061997773;
    [v27 setOpacity:v28];
  }

  v29 = [(PGCABackdropLayerView *)self backgroundColor];
  if ([v31 isEqual:v29])
  {
  }

  else
  {
    v30 = [(PGCABackdropLayerView *)self backgroundColor];

    if (v31 != v30)
    {
      [(PGCABackdropLayerView *)self setBackgroundColor:v31];
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

  v4 = [(PGCABackdropLayerView *)self customBackgroundColor];

  if (v4)
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
    v4 = 0;
    goto LABEL_6;
  }

  v3 = [(PGCABackdropLayerView *)self _preferredEffect];
  if (v3 != 2)
  {
    if (!v3)
    {
      v4 = [(PGCABackdropLayerView *)self customBackgroundColor];
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = [objc_opt_class() reducedTransparencyColor];
LABEL_6:

  return v4;
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
  v2 = [(PGCABackdropLayerView *)self layer];
  v3 = [v2 captureOnly];

  return v3;
}

- (void)setGroupLeader:(id)a3
{
  obj = a3;
  v5 = [(PGCABackdropLayerView *)obj _isCaptureOnly];
  v6 = obj;
  if (obj && !v5)
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

- (void)_addDependent:(id)a3
{
  v4 = a3;
  [(PGCABackdropLayerView *)self _ensureDependents];
  [(NSHashTable *)self->_dependents addObject:v4];
}

- (void)_removeDependent:(id)a3
{
  [(NSHashTable *)self->_dependents removeObject:a3];

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

- (void)_enumerateDependents:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

        v4[2](v4, *(*(&v11 + 1) + 8 * v10++));
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
  v5 = [(PGCABackdropLayerView *)self superview];
  while (v5)
  {
    if (v4 <= 0.0)
    {
      break;
    }

    v6 = v5;
    [v5 alpha];
    if (v4 >= v7)
    {
      v4 = v7;
    }

    v5 = [v5 superview];
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