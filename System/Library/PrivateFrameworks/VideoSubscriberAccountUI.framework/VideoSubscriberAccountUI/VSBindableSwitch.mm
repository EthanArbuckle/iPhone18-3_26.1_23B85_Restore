@interface VSBindableSwitch
- (void)_updateBindingForValueChanged:(id)changed;
- (void)vs_bind:(id)vs_bind toObject:(id)object withKeyPath:(id)path options:(id)options;
- (void)vs_unbind:(id)vs_unbind;
@end

@implementation VSBindableSwitch

- (void)_updateBindingForValueChanged:(id)changed
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[VSBindableSwitch isOn](self, "isOn", changed)}];
  [(VSBindableSwitch *)self vs_setValue:v4 forBinding:@"on"];
}

- (void)vs_bind:(id)vs_bind toObject:(id)object withKeyPath:(id)path options:(id)options
{
  vs_bindCopy = vs_bind;
  objectCopy = object;
  pathCopy = path;
  optionsCopy = options;
  if (vs_bindCopy)
  {
    if (objectCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The binding parameter must not be nil."];
    if (objectCopy)
    {
LABEL_3:
      if (pathCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keyPath parameter must not be nil."];
      if (optionsCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The observable parameter must not be nil."];
  if (!pathCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (optionsCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The options parameter must not be nil."];
LABEL_5:
  v14.receiver = self;
  v14.super_class = VSBindableSwitch;
  [(VSBindableSwitch *)&v14 vs_bind:vs_bindCopy toObject:objectCopy withKeyPath:pathCopy options:optionsCopy];
  if ([vs_bindCopy isEqual:@"on"])
  {
    [(VSBindableSwitch *)self addTarget:self action:sel__updateBindingForValueChanged_ forControlEvents:4096];
  }
}

- (void)vs_unbind:(id)vs_unbind
{
  vs_unbindCopy = vs_unbind;
  if (!vs_unbindCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The binding parameter must not be nil."];
  }

  if ([vs_unbindCopy isEqual:@"on"])
  {
    [(VSBindableSwitch *)self removeTarget:self action:sel__updateBindingForValueChanged_ forControlEvents:4096];
  }

  v5.receiver = self;
  v5.super_class = VSBindableSwitch;
  [(VSBindableSwitch *)&v5 vs_unbind:vs_unbindCopy];
}

@end