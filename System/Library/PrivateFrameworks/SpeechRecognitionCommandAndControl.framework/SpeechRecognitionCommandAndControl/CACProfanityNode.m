@interface CACProfanityNode
- (CACProfanityNode)init;
- (id)description;
- (void)createChildForKey:(id)a3;
- (void)setTerminal:(id)a3 originalWord:(id)a4 forKey:(id)a5;
@end

@implementation CACProfanityNode

- (CACProfanityNode)init
{
  v10.receiver = self;
  v10.super_class = CACProfanityNode;
  v2 = [(CACProfanityNode *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    childMap = v2->_childMap;
    v2->_childMap = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    terminalMap = v2->_terminalMap;
    v2->_terminalMap = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    originalWordMap = v2->_originalWordMap;
    v2->_originalWordMap = v7;
  }

  return v2;
}

- (void)createChildForKey:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableDictionary *)self->_childMap objectForKey:?];

  if (!v4)
  {
    v5 = objc_alloc_init(CACProfanityNode);
    [(NSMutableDictionary *)self->_childMap setObject:v5 forKey:v6];
  }
}

- (void)setTerminal:(id)a3 originalWord:(id)a4 forKey:(id)a5
{
  terminalMap = self->_terminalMap;
  v9 = a5;
  v10 = a4;
  [(NSMutableDictionary *)terminalMap setObject:a3 forKey:v9];
  [(NSMutableDictionary *)self->_originalWordMap setObject:v10 forKey:v9];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSMutableDictionary *)self->_childMap allKeys];
  v5 = [v4 count];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"child:%@", self->_childMap];
  }

  else
  {
    v6 = &stru_287BD8610;
  }

  v7 = [(NSMutableDictionary *)self->_terminalMap allKeys];
  if ([v7 count])
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"terminal:%@", self->_terminalMap];
    v9 = [v3 stringWithFormat:@"%@%@", v6, v8];
  }

  else
  {
    v9 = [v3 stringWithFormat:@"%@%@", v6, &stru_287BD8610];
  }

  if (v5)
  {
  }

  return v9;
}

@end