@interface SCROBrailleKey
- (BOOL)getRouterIndex:(int64_t *)index token:(int64_t *)token location:(int64_t *)location appToken:(id *)appToken;
- (SCROBrailleKey)init;
- (SCROBrailleKey)initWithCoder:(id)coder;
- (id)copy;
- (id)description;
- (id)identifier;
- (void)addKeyMask:(unsigned int)mask;
- (void)addModifierMask:(unsigned int)mask;
- (void)encodeWithCoder:(id)coder;
- (void)setRouterIndex:(int64_t)index token:(int64_t)token location:(int64_t)location appToken:(id)appToken;
@end

@implementation SCROBrailleKey

- (void)addModifierMask:(unsigned int)mask
{
  if (*MEMORY[0x277CF3390] != mask)
  {
    if ((*MEMORY[0x277CF33A8] & mask) != 0)
    {
      [(SCROBrailleKey *)self addKeyMask:67842];
      LODWORD(v5) = 67842;
    }

    else
    {
      LODWORD(v5) = 65538;
    }

    if ((*MEMORY[0x277CF3388] & mask) != 0)
    {
      LODWORD(v5) = 68354;
      [(SCROBrailleKey *)self addKeyMask:68354];
    }

    if ((*MEMORY[0x277CF3398] & mask) != 0)
    {
      LODWORD(v5) = 68610;
      [(SCROBrailleKey *)self addKeyMask:68610];
    }

    if ((*MEMORY[0x277CF3380] & mask) != 0)
    {
      LODWORD(v5) = 68098;
      [(SCROBrailleKey *)self addKeyMask:68098];
    }

    if ((*MEMORY[0x277CF33A0] & mask) != 0)
    {
      v5 = v5 & 0xFFFF00FF | 0xD00;
      [(SCROBrailleKey *)self addKeyMask:v5];
    }

    if ((*MEMORY[0x277CF3378] & mask) != 0)
    {

      [(SCROBrailleKey *)self addKeyMask:v5 & 0xFFFF00FF | 0xE00];
    }
  }
}

- (SCROBrailleKey)init
{
  v6.receiver = self;
  v6.super_class = SCROBrailleKey;
  v2 = [(SCROBrailleKey *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    maskArray = v2->_maskArray;
    v2->_maskArray = v3;

    v2->_isRouterKey = 0;
  }

  return v2;
}

- (id)copy
{
  v3 = objc_alloc_init(SCROBrailleKey);
  v3->_isRouterKey = self->_isRouterKey;
  v3->_routerIndex = self->_routerIndex;
  v3->_routerToken = self->_routerToken;
  v3->_routerLocation = self->_routerLocation;
  v3->_isSecondaryRouter = self->_isSecondaryRouter;
  v4 = [(NSString *)self->_identifier copy];
  identifier = v3->_identifier;
  v3->_identifier = v4;

  v6 = [(NSMutableArray *)self->_maskArray mutableCopy];
  maskArray = v3->_maskArray;
  v3->_maskArray = v6;

  objc_storeStrong(&v3->_appToken, self->_appToken);
  v3->_displayToken = self->_displayToken;
  v3->_displayMode = self->_displayMode;
  return v3;
}

- (SCROBrailleKey)initWithCoder:(id)coder
{
  v23[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = SCROBrailleKey;
  v5 = [(SCROBrailleKey *)&v21 init];
  v5->_isRouterKey = [coderCopy decodeBoolForKey:@"_isRouterKey"];
  v5->_routerIndex = [coderCopy decodeIntegerForKey:@"_routerIndex"];
  v5->_routerToken = [coderCopy decodeIntegerForKey:@"_routerToken"];
  v5->_routerLocation = [coderCopy decodeIntegerForKey:@"_routerLocation"];
  v5->_isSecondaryRouter = [coderCopy decodeBoolForKey:@"_isSecondaryRouter"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = MEMORY[0x277CBEB98];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_maskArray"];
  v12 = [v11 mutableCopy];
  maskArray = v5->_maskArray;
  v5->_maskArray = v12;

  v14 = MEMORY[0x277CBEB98];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v22[2] = objc_opt_class();
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v16 = [v14 setWithArray:v15];
  v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"_appToken"];
  appToken = v5->_appToken;
  v5->_appToken = v17;

  v5->_displayToken = [coderCopy decodeIntegerForKey:@"_displayToken"];
  v5->_displayMode = [coderCopy decodeIntegerForKey:@"_displayModeToken"];

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_isRouterKey forKey:@"_isRouterKey"];
  [coderCopy encodeInteger:self->_routerIndex forKey:@"_routerIndex"];
  [coderCopy encodeInteger:self->_routerToken forKey:@"_routerToken"];
  [coderCopy encodeInteger:self->_routerLocation forKey:@"_routerLocation"];
  [coderCopy encodeBool:self->_isSecondaryRouter forKey:@"_isSecondaryRouter"];
  [coderCopy encodeInteger:self->_displayToken forKey:@"_displayToken"];
  [coderCopy encodeInteger:self->_displayMode forKey:@"_displayModeToken"];
  identifier = self->_identifier;
  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"_identifier"];
  }

  maskArray = self->_maskArray;
  if (maskArray)
  {
    [coderCopy encodeObject:maskArray forKey:@"_maskArray"];
  }

  appToken = self->_appToken;
  v7 = coderCopy;
  if (appToken)
  {
    [coderCopy encodeObject:appToken forKey:@"_appToken"];
    v7 = coderCopy;
  }
}

- (id)description
{
  isRouterKey = self->_isRouterKey;
  v4 = MEMORY[0x277CCACA8];
  displayMode = self->_displayMode;
  displayToken = self->_displayToken;
  identifier = [(SCROBrailleKey *)self identifier];
  v8 = identifier;
  if (isRouterKey)
  {
    [v4 stringWithFormat:@"display = %ld, displayMode = %ld, identifier = %@, routerIndex = %ld, routerToken = %ld, routerLocation = %ld, isSecondaryRouter = %ld", displayToken, displayMode, identifier, self->_routerIndex, self->_routerToken, self->_routerLocation, self->_isSecondaryRouter];
  }

  else
  {
    [v4 stringWithFormat:@"display = %ld, displayMode = %ld, identifier = %@", displayToken, displayMode, identifier, v11, v12, v13, v14];
  }
  v9 = ;

  return v9;
}

- (void)addKeyMask:(unsigned int)mask
{
  maskArray = self->_maskArray;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:mask];
  [(NSMutableArray *)maskArray addObject:v5];

  identifier = self->_identifier;
  self->_identifier = 0;
}

- (id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifier = self->_identifier;
  if (!identifier)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    selfCopy = self;
    v5 = [(NSMutableArray *)self->_maskArray sortedArrayUsingSelector:sel_compare_];
    v6 = [v5 count];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v21;
      do
      {
        v12 = 0;
        v13 = v10 + 1;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v7);
          }

          stringValue = [*(*(&v20 + 1) + 8 * v12) stringValue];
          [v4 appendString:stringValue];

          if (v13 < v6)
          {
            [v4 appendString:@"."];
          }

          ++v12;
          ++v13;
        }

        while (v9 != v12);
        v10 += v9;
        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    v15 = [v4 copy];
    v16 = selfCopy->_identifier;
    selfCopy->_identifier = v15;

    identifier = selfCopy->_identifier;
  }

  v17 = *MEMORY[0x277D85DE8];

  return identifier;
}

- (void)setRouterIndex:(int64_t)index token:(int64_t)token location:(int64_t)location appToken:(id)appToken
{
  self->_isRouterKey = 1;
  self->_routerIndex = index;
  self->_routerToken = token;
  self->_routerLocation = location;
  objc_storeStrong(&self->_appToken, appToken);
}

- (BOOL)getRouterIndex:(int64_t *)index token:(int64_t *)token location:(int64_t *)location appToken:(id *)appToken
{
  isRouterKey = self->_isRouterKey;
  if (isRouterKey)
  {
    if (index)
    {
      *index = self->_routerIndex;
    }

    if (token)
    {
      *token = self->_routerToken;
    }

    if (location)
    {
      *location = self->_routerLocation;
    }

    if (appToken)
    {
      *appToken = self->_appToken;
    }
  }

  return isRouterKey;
}

@end