@interface SBSwitcherModifierEventResponseSnapshot
- (SBSwitcherModifierEventResponseSnapshot)initWithEventResponse:(id)response;
@end

@implementation SBSwitcherModifierEventResponseSnapshot

- (SBSwitcherModifierEventResponseSnapshot)initWithEventResponse:(id)response
{
  responseCopy = response;
  if (responseCopy)
  {
    v19.receiver = self;
    v19.super_class = SBSwitcherModifierEventResponseSnapshot;
    v5 = [(SBSwitcherModifierEventResponseSnapshot *)&v19 init];
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __65__SBSwitcherModifierEventResponseSnapshot_initWithEventResponse___block_invoke;
      v16[3] = &unk_2783C2C10;
      v8 = v6;
      v17 = v8;
      v9 = v7;
      v18 = v9;
      [responseCopy enumerateResponseTreeUsingBlock:v16];
      responseNames = v5->_responseNames;
      v5->_responseNames = v8;
      v11 = v8;

      responseDescriptions = v5->_responseDescriptions;
      v5->_responseDescriptions = v9;
      v13 = v9;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __65__SBSwitcherModifierEventResponseSnapshot_initWithEventResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = NSStringFromSBSwitcherModifierEventResponseType([v4 type]);
  [v3 addObject:v5];

  v6 = *(a1 + 40);
  v7 = [v4 description];

  [v6 addObject:v7];
}

@end