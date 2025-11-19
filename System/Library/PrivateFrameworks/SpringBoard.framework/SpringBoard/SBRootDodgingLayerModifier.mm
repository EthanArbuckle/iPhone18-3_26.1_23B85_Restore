@interface SBRootDodgingLayerModifier
- (id)handleInsertionEvent:(id)a3;
- (id)handlePreferenceChangeEvent:(id)a3;
- (id)handleRemovalEvent:(id)a3;
- (id)handleRotationEvent:(id)a3;
- (void)_setup;
- (void)didMoveToParentModifier:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation SBRootDodgingLayerModifier

- (void)setDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBRootDodgingLayerModifier;
  [(SBChainableModifier *)&v5 setDelegate:?];
  if (a3)
  {
    if (!self->_hasPerformedInitialSetup)
    {
      self->_hasPerformedInitialSetup = 1;
      [(SBRootDodgingLayerModifier *)self _setup];
    }
  }
}

- (void)didMoveToParentModifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBRootDodgingLayerModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (a3)
  {
    if (!self->_hasPerformedInitialSetup)
    {
      self->_hasPerformedInitialSetup = 1;
      [(SBRootDodgingLayerModifier *)self _setup];
    }
  }
}

- (void)_setup
{
  v3 = [(SBRootDodgingLayerModifier *)self _floorModifier];
  if (!v3)
  {
    v4 = objc_alloc_init(SBFloorDodgingLayerModifier);
    [(SBChainableModifier *)self addChildModifier:v4 atLevel:1 key:@"Floor Modifier"];

    v3 = 0;
  }
}

- (id)handleInsertionEvent:(id)a3
{
  v18.receiver = self;
  v18.super_class = SBRootDodgingLayerModifier;
  v4 = a3;
  v5 = [(SBDodgingModifier *)&v18 handleInsertionEvent:v4];
  v6 = [SBInsertionDodgingModifier alloc];
  v7 = [v4 identifier];
  [v4 center];
  v9 = v8;
  v11 = v10;
  [v4 size];
  v13 = v12;
  v15 = v14;

  v16 = [(SBInsertionDodgingModifier *)v6 initWithIdentifier:v7 initialCenter:v9 initialSize:v11, v13, v15];
  [(SBChainableModifier *)self addChildModifier:v16 atLevel:0 key:0];

  return v5;
}

- (id)handleRemovalEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBRootDodgingLayerModifier;
  v4 = a3;
  v5 = [(SBDodgingModifier *)&v10 handleRemovalEvent:v4];
  v6 = [SBRemovalDodgingModifier alloc];
  v7 = [v4 identifier];

  v8 = [(SBRemovalDodgingModifier *)v6 initWithIdentifier:v7];
  [(SBChainableModifier *)self addChildModifier:v8 atLevel:0 key:0];

  return v5;
}

- (id)handleRotationEvent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBRootDodgingLayerModifier;
  v5 = [(SBDodgingModifier *)&v10 handleRotationEvent:v4];
  if (![v4 phase])
  {
    v6 = [SBRotationDodgingModifier alloc];
    v7 = [v4 identifier];
    v8 = -[SBRotationDodgingModifier initWithIdentifier:fromOrientation:toOrientation:](v6, "initWithIdentifier:fromOrientation:toOrientation:", v7, [v4 fromOrientation], objc_msgSend(v4, "toOrientation"));

    [(SBChainableModifier *)self addChildModifier:v8 atLevel:0 key:0];
  }

  return v5;
}

- (id)handlePreferenceChangeEvent:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SBRootDodgingLayerModifier;
  v5 = [(SBDodgingModifier *)&v14 handlePreferenceChangeEvent:v4];
  v6 = [v4 style];
  if (![v4 phase] && (objc_msgSend(v4, "isHandled") & 1) == 0)
  {
    if (v6 == 1)
    {
      v7 = [SBInteractivePreferenceChangeDodgingModifier alloc];
      v8 = [v4 identifier];
      v9 = [(SBInteractivePreferenceChangeDodgingModifier *)v7 initWithIdentifier:v8];
    }

    else
    {
      v10 = v6 == 2;
      v11 = [SBPreferenceChangeDodgingModifier alloc];
      v8 = [v4 identifier];
      v9 = [(SBPreferenceChangeDodgingModifier *)v11 initWithIdentifier:v8 animated:v10];
    }

    v12 = v9;

    [(SBChainableModifier *)self addChildModifier:v12 atLevel:0 key:0];
  }

  return v5;
}

@end