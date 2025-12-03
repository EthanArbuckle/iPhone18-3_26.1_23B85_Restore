@interface SRUIFMutableStack
- (id)copyWithZone:(_NSZone *)zone;
- (id)popTopObject;
- (void)popObjectsUsingBlock:(id)block;
- (void)pushObject:(id)object;
@end

@implementation SRUIFMutableStack

- (void)pushObject:(id)object
{
  objectCopy = object;
  _elements = [(SRUIFStack *)self _elements];
  [_elements addObject:objectCopy];
}

- (id)popTopObject
{
  topObject = [(SRUIFStack *)self topObject];
  _elements = [(SRUIFStack *)self _elements];
  [_elements removeLastObject];

  return topObject;
}

- (void)popObjectsUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v10 = 0;
    _elements = [(SRUIFStack *)self _elements];
    v6 = [_elements count];

    if (v6)
    {
      v7 = v6 - 1;
      do
      {
        popTopObject = [(SRUIFMutableStack *)self popTopObject];
        blockCopy[2](blockCopy, popTopObject, &v10);

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

- (id)copyWithZone:(_NSZone *)zone
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