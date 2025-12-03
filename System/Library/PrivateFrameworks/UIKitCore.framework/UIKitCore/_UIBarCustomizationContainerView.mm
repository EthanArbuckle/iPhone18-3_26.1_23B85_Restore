@interface _UIBarCustomizationContainerView
- (_UIBarCustomizationContainerView)initWithParentTraitEnvironment:(id)environment;
- (_UITraitEnvironmentInternal)parentTraitEnvironment;
- (id)traitCollection;
- (void)_traitCollectionDidChangeOnSubtreeInternal:(const _UITraitCollectionChangeDescription *)internal;
@end

@implementation _UIBarCustomizationContainerView

- (_UIBarCustomizationContainerView)initWithParentTraitEnvironment:(id)environment
{
  environmentCopy = environment;
  v9.receiver = self;
  v9.super_class = _UIBarCustomizationContainerView;
  v5 = [(UIView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(UIView *)v5 setAutoresizingMask:18];
    [(_UIBarCustomizationContainerView *)v6 setParentTraitEnvironment:environmentCopy];
    v7 = +[_UIBarCustomizationCustomViewPortalSourceContainer sharedContainer];
    [(UIView *)v6 addSubview:v7];
  }

  return v6;
}

- (id)traitCollection
{
  parentTraitEnvironment = [(_UIBarCustomizationContainerView *)self parentTraitEnvironment];
  v4 = [parentTraitEnvironment _traitCollectionForChildEnvironment:self];

  v5 = [v4 _traitCollectionByReplacingNSIntegerValue:1 forTraitToken:0x1EFE32488];

  return v5;
}

- (void)_traitCollectionDidChangeOnSubtreeInternal:(const _UITraitCollectionChangeDescription *)internal
{
  v6.receiver = self;
  v6.super_class = _UIBarCustomizationContainerView;
  [(UIView *)&v6 _traitCollectionDidChangeOnSubtreeInternal:internal];
  traitChangeHandler = [(_UIBarCustomizationContainerView *)self traitChangeHandler];

  if (traitChangeHandler)
  {
    traitChangeHandler2 = [(_UIBarCustomizationContainerView *)self traitChangeHandler];
    (traitChangeHandler2)[2](traitChangeHandler2, self);
  }
}

- (_UITraitEnvironmentInternal)parentTraitEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_parentTraitEnvironment);

  return WeakRetained;
}

@end