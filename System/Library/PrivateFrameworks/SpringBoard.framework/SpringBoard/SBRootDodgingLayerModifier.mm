@interface SBRootDodgingLayerModifier
- (id)handleInsertionEvent:(id)event;
- (id)handlePreferenceChangeEvent:(id)event;
- (id)handleRemovalEvent:(id)event;
- (id)handleRotationEvent:(id)event;
- (void)_setup;
- (void)didMoveToParentModifier:(id)modifier;
- (void)setDelegate:(id)delegate;
@end

@implementation SBRootDodgingLayerModifier

- (void)setDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = SBRootDodgingLayerModifier;
  [(SBChainableModifier *)&v5 setDelegate:?];
  if (delegate)
  {
    if (!self->_hasPerformedInitialSetup)
    {
      self->_hasPerformedInitialSetup = 1;
      [(SBRootDodgingLayerModifier *)self _setup];
    }
  }
}

- (void)didMoveToParentModifier:(id)modifier
{
  v5.receiver = self;
  v5.super_class = SBRootDodgingLayerModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (modifier)
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
  _floorModifier = [(SBRootDodgingLayerModifier *)self _floorModifier];
  if (!_floorModifier)
  {
    v4 = objc_alloc_init(SBFloorDodgingLayerModifier);
    [(SBChainableModifier *)self addChildModifier:v4 atLevel:1 key:@"Floor Modifier"];

    _floorModifier = 0;
  }
}

- (id)handleInsertionEvent:(id)event
{
  v18.receiver = self;
  v18.super_class = SBRootDodgingLayerModifier;
  eventCopy = event;
  v5 = [(SBDodgingModifier *)&v18 handleInsertionEvent:eventCopy];
  v6 = [SBInsertionDodgingModifier alloc];
  identifier = [eventCopy identifier];
  [eventCopy center];
  v9 = v8;
  v11 = v10;
  [eventCopy size];
  v13 = v12;
  v15 = v14;

  v16 = [(SBInsertionDodgingModifier *)v6 initWithIdentifier:identifier initialCenter:v9 initialSize:v11, v13, v15];
  [(SBChainableModifier *)self addChildModifier:v16 atLevel:0 key:0];

  return v5;
}

- (id)handleRemovalEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBRootDodgingLayerModifier;
  eventCopy = event;
  v5 = [(SBDodgingModifier *)&v10 handleRemovalEvent:eventCopy];
  v6 = [SBRemovalDodgingModifier alloc];
  identifier = [eventCopy identifier];

  v8 = [(SBRemovalDodgingModifier *)v6 initWithIdentifier:identifier];
  [(SBChainableModifier *)self addChildModifier:v8 atLevel:0 key:0];

  return v5;
}

- (id)handleRotationEvent:(id)event
{
  eventCopy = event;
  v10.receiver = self;
  v10.super_class = SBRootDodgingLayerModifier;
  v5 = [(SBDodgingModifier *)&v10 handleRotationEvent:eventCopy];
  if (![eventCopy phase])
  {
    v6 = [SBRotationDodgingModifier alloc];
    identifier = [eventCopy identifier];
    v8 = -[SBRotationDodgingModifier initWithIdentifier:fromOrientation:toOrientation:](v6, "initWithIdentifier:fromOrientation:toOrientation:", identifier, [eventCopy fromOrientation], objc_msgSend(eventCopy, "toOrientation"));

    [(SBChainableModifier *)self addChildModifier:v8 atLevel:0 key:0];
  }

  return v5;
}

- (id)handlePreferenceChangeEvent:(id)event
{
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = SBRootDodgingLayerModifier;
  v5 = [(SBDodgingModifier *)&v14 handlePreferenceChangeEvent:eventCopy];
  style = [eventCopy style];
  if (![eventCopy phase] && (objc_msgSend(eventCopy, "isHandled") & 1) == 0)
  {
    if (style == 1)
    {
      v7 = [SBInteractivePreferenceChangeDodgingModifier alloc];
      identifier = [eventCopy identifier];
      v9 = [(SBInteractivePreferenceChangeDodgingModifier *)v7 initWithIdentifier:identifier];
    }

    else
    {
      v10 = style == 2;
      v11 = [SBPreferenceChangeDodgingModifier alloc];
      identifier = [eventCopy identifier];
      v9 = [(SBPreferenceChangeDodgingModifier *)v11 initWithIdentifier:identifier animated:v10];
    }

    v12 = v9;

    [(SBChainableModifier *)self addChildModifier:v12 atLevel:0 key:0];
  }

  return v5;
}

@end