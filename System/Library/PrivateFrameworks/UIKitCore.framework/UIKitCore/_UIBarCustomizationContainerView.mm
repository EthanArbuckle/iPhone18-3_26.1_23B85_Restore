@interface _UIBarCustomizationContainerView
- (_UIBarCustomizationContainerView)initWithParentTraitEnvironment:(id)a3;
- (_UITraitEnvironmentInternal)parentTraitEnvironment;
- (id)traitCollection;
- (void)_traitCollectionDidChangeOnSubtreeInternal:(const _UITraitCollectionChangeDescription *)a3;
@end

@implementation _UIBarCustomizationContainerView

- (_UIBarCustomizationContainerView)initWithParentTraitEnvironment:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIBarCustomizationContainerView;
  v5 = [(UIView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(UIView *)v5 setAutoresizingMask:18];
    [(_UIBarCustomizationContainerView *)v6 setParentTraitEnvironment:v4];
    v7 = +[_UIBarCustomizationCustomViewPortalSourceContainer sharedContainer];
    [(UIView *)v6 addSubview:v7];
  }

  return v6;
}

- (id)traitCollection
{
  v3 = [(_UIBarCustomizationContainerView *)self parentTraitEnvironment];
  v4 = [v3 _traitCollectionForChildEnvironment:self];

  v5 = [v4 _traitCollectionByReplacingNSIntegerValue:1 forTraitToken:0x1EFE32488];

  return v5;
}

- (void)_traitCollectionDidChangeOnSubtreeInternal:(const _UITraitCollectionChangeDescription *)a3
{
  v6.receiver = self;
  v6.super_class = _UIBarCustomizationContainerView;
  [(UIView *)&v6 _traitCollectionDidChangeOnSubtreeInternal:a3];
  v4 = [(_UIBarCustomizationContainerView *)self traitChangeHandler];

  if (v4)
  {
    v5 = [(_UIBarCustomizationContainerView *)self traitChangeHandler];
    (v5)[2](v5, self);
  }
}

- (_UITraitEnvironmentInternal)parentTraitEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_parentTraitEnvironment);

  return WeakRetained;
}

@end