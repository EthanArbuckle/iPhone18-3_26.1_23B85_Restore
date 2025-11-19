@interface VSBindableSwitch
- (void)_updateBindingForValueChanged:(id)a3;
- (void)vs_bind:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6;
- (void)vs_unbind:(id)a3;
@end

@implementation VSBindableSwitch

- (void)_updateBindingForValueChanged:(id)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[VSBindableSwitch isOn](self, "isOn", a3)}];
  [(VSBindableSwitch *)self vs_setValue:v4 forBinding:@"on"];
}

- (void)vs_bind:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The binding parameter must not be nil."];
    if (v11)
    {
LABEL_3:
      if (v12)
      {
        goto LABEL_4;
      }

LABEL_10:
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keyPath parameter must not be nil."];
      if (v13)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The observable parameter must not be nil."];
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v13)
  {
    goto LABEL_5;
  }

LABEL_11:
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The options parameter must not be nil."];
LABEL_5:
  v14.receiver = self;
  v14.super_class = VSBindableSwitch;
  [(VSBindableSwitch *)&v14 vs_bind:v10 toObject:v11 withKeyPath:v12 options:v13];
  if ([v10 isEqual:@"on"])
  {
    [(VSBindableSwitch *)self addTarget:self action:sel__updateBindingForValueChanged_ forControlEvents:4096];
  }
}

- (void)vs_unbind:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The binding parameter must not be nil."];
  }

  if ([v4 isEqual:@"on"])
  {
    [(VSBindableSwitch *)self removeTarget:self action:sel__updateBindingForValueChanged_ forControlEvents:4096];
  }

  v5.receiver = self;
  v5.super_class = VSBindableSwitch;
  [(VSBindableSwitch *)&v5 vs_unbind:v4];
}

@end