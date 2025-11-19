@interface SRUIFMutableStack
- (id)copyWithZone:(_NSZone *)a3;
- (id)popTopObject;
- (void)popObjectsUsingBlock:(id)a3;
- (void)pushObject:(id)a3;
@end

@implementation SRUIFMutableStack

- (void)pushObject:(id)a3
{
  v4 = a3;
  v5 = [(SRUIFStack *)self _elements];
  [v5 addObject:v4];
}

- (id)popTopObject
{
  v3 = [(SRUIFStack *)self topObject];
  v4 = [(SRUIFStack *)self _elements];
  [v4 removeLastObject];

  return v3;
}

- (void)popObjectsUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = 0;
    v5 = [(SRUIFStack *)self _elements];
    v6 = [v5 count];

    if (v6)
    {
      v7 = v6 - 1;
      do
      {
        v8 = [(SRUIFMutableStack *)self popTopObject];
        v4[2](v4, v8, &v10);

        if (!v7)
        {
          break;
        }

        --v7;
      }

      while ((v10 & 1) == 0);
    }
  }

  else
  {
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_FAULT))
    {
      [SRUIFMutableStack popObjectsUsingBlock:v9];
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SRUIFStack alloc];

  return [(SRUIFStack *)v4 initWithStack:self];
}

- (void)popObjectsUsingBlock:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SRUIFMutableStack popObjectsUsingBlock:]";
  _os_log_fault_impl(&dword_26951F000, log, OS_LOG_TYPE_FAULT, "%s nil block provided to pop stack; returning", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end