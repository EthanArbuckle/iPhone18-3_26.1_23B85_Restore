@interface SCROBrailleKey
- (BOOL)getRouterIndex:(int64_t *)a3 token:(int64_t *)a4 location:(int64_t *)a5 appToken:(id *)a6;
- (SCROBrailleKey)init;
- (SCROBrailleKey)initWithCoder:(id)a3;
- (id)copy;
- (id)description;
- (id)identifier;
- (void)addKeyMask:(unsigned int)a3;
- (void)addModifierMask:(unsigned int)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setRouterIndex:(int64_t)a3 token:(int64_t)a4 location:(int64_t)a5 appToken:(id)a6;
@end

@implementation SCROBrailleKey

- (void)addModifierMask:(unsigned int)a3
{
  if (*MEMORY[0x277CF3390] != a3)
  {
    if ((*MEMORY[0x277CF33A8] & a3) != 0)
    {
      [(SCROBrailleKey *)self addKeyMask:67842];
      LODWORD(v5) = 67842;
    }

    else
    {
      LODWORD(v5) = 65538;
    }

    if ((*MEMORY[0x277CF3388] & a3) != 0)
    {
      LODWORD(v5) = 68354;
      [(SCROBrailleKey *)self addKeyMask:68354];
    }

    if ((*MEMORY[0x277CF3398] & a3) != 0)
    {
      LODWORD(v5) = 68610;
      [(SCROBrailleKey *)self addKeyMask:68610];
    }

    if ((*MEMORY[0x277CF3380] & a3) != 0)
    {
      LODWORD(v5) = 68098;
      [(SCROBrailleKey *)self addKeyMask:68098];
    }

    if ((*MEMORY[0x277CF33A0] & a3) != 0)
    {
      v5 = v5 & 0xFFFF00FF | 0xD00;
      [(SCROBrailleKey *)self addKeyMask:v5];
    }

    if ((*MEMORY[0x277CF3378] & a3) != 0)
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

- (SCROBrailleKey)initWithCoder:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SCROBrailleKey;
  v5 = [(SCROBrailleKey *)&v21 init];
  v5->_isRouterKey = [v4 decodeBoolForKey:@"_isRouterKey"];
  v5->_routerIndex = [v4 decodeIntegerForKey:@"_routerIndex"];
  v5->_routerToken = [v4 decodeIntegerForKey:@"_routerToken"];
  v5->_routerLocation = [v4 decodeIntegerForKey:@"_routerLocation"];
  v5->_isSecondaryRouter = [v4 decodeBoolForKey:@"_isSecondaryRouter"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = MEMORY[0x277CBEB98];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_maskArray"];
  v12 = [v11 mutableCopy];
  maskArray = v5->_maskArray;
  v5->_maskArray = v12;

  v14 = MEMORY[0x277CBEB98];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v22[2] = objc_opt_class();
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v16 = [v14 setWithArray:v15];
  v17 = [v4 decodeObjectOfClasses:v16 forKey:@"_appToken"];
  appToken = v5->_appToken;
  v5->_appToken = v17;

  v5->_displayToken = [v4 decodeIntegerForKey:@"_displayToken"];
  v5->_displayMode = [v4 decodeIntegerForKey:@"_displayModeToken"];

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeBool:self->_isRouterKey forKey:@"_isRouterKey"];
  [v8 encodeInteger:self->_routerIndex forKey:@"_routerIndex"];
  [v8 encodeInteger:self->_routerToken forKey:@"_routerToken"];
  [v8 encodeInteger:self->_routerLocation forKey:@"_routerLocation"];
  [v8 encodeBool:self->_isSecondaryRouter forKey:@"_isSecondaryRouter"];
  [v8 encodeInteger:self->_displayToken forKey:@"_displayToken"];
  [v8 encodeInteger:self->_displayMode forKey:@"_displayModeToken"];
  identifier = self->_identifier;
  if (identifier)
  {
    [v8 encodeObject:identifier forKey:@"_identifier"];
  }

  maskArray = self->_maskArray;
  if (maskArray)
  {
    [v8 encodeObject:maskArray forKey:@"_maskArray"];
  }

  appToken = self->_appToken;
  v7 = v8;
  if (appToken)
  {
    [v8 encodeObject:appToken forKey:@"_appToken"];
    v7 = v8;
  }
}

- (id)description
{
  isRouterKey = self->_isRouterKey;
  v4 = MEMORY[0x277CCACA8];
  displayMode = self->_displayMode;
  displayToken = self->_displayToken;
  v7 = [(SCROBrailleKey *)self identifier];
  v8 = v7;
  if (isRouterKey)
  {
    [v4 stringWithFormat:@"display = %ld, displayMode = %ld, identifier = %@, routerIndex = %ld, routerToken = %ld, routerLocation = %ld, isSecondaryRouter = %ld", displayToken, displayMode, v7, self->_routerIndex, self->_routerToken, self->_routerLocation, self->_isSecondaryRouter];
  }

  else
  {
    [v4 stringWithFormat:@"display = %ld, displayMode = %ld, identifier = %@", displayToken, displayMode, v7, v11, v12, v13, v14];
  }
  v9 = ;

  return v9;
}

- (void)addKeyMask:(unsigned int)a3
{
  maskArray = self->_maskArray;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
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
    v19 = self;
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

          v14 = [*(*(&v20 + 1) + 8 * v12) stringValue];
          [v4 appendString:v14];

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
    v16 = v19->_identifier;
    v19->_identifier = v15;

    identifier = v19->_identifier;
  }

  v17 = *MEMORY[0x277D85DE8];

  return identifier;
}

- (void)setRouterIndex:(int64_t)a3 token:(int64_t)a4 location:(int64_t)a5 appToken:(id)a6
{
  self->_isRouterKey = 1;
  self->_routerIndex = a3;
  self->_routerToken = a4;
  self->_routerLocation = a5;
  objc_storeStrong(&self->_appToken, a6);
}

- (BOOL)getRouterIndex:(int64_t *)a3 token:(int64_t *)a4 location:(int64_t *)a5 appToken:(id *)a6
{
  isRouterKey = self->_isRouterKey;
  if (isRouterKey)
  {
    if (a3)
    {
      *a3 = self->_routerIndex;
    }

    if (a4)
    {
      *a4 = self->_routerToken;
    }

    if (a5)
    {
      *a5 = self->_routerLocation;
    }

    if (a6)
    {
      *a6 = self->_appToken;
    }
  }

  return isRouterKey;
}

@end