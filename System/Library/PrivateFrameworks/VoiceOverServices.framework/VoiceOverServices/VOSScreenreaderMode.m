@interface VOSScreenreaderMode
+ (NSSet)allModes;
+ (VOSScreenreaderMode)BrailleScreenInput;
+ (VOSScreenreaderMode)Default;
+ (VOSScreenreaderMode)Handwriting;
+ (VOSScreenreaderMode)Invalid;
+ (VOSScreenreaderMode)modeWithStringValue:(id)a3;
- (NSString)localizedName;
- (id)_initWithRawValue:(id)a3;
- (id)description;
@end

@implementation VOSScreenreaderMode

- (id)_initWithRawValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VOSScreenreaderMode;
  v6 = [(VOSScreenreaderMode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawValue, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@<%p>: %@", v5, self, self->_rawValue];

  return v6;
}

+ (VOSScreenreaderMode)Default
{
  if (Default_onceToken != -1)
  {
    +[VOSScreenreaderMode Default];
  }

  v3 = Default__Mode;

  return v3;
}

uint64_t __30__VOSScreenreaderMode_Default__block_invoke()
{
  Default__Mode = [[VOSScreenreaderMode alloc] _initWithRawValue:@"Default"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSScreenreaderMode)Handwriting
{
  if (Handwriting_onceToken != -1)
  {
    +[VOSScreenreaderMode Handwriting];
  }

  v3 = Handwriting__Mode;

  return v3;
}

uint64_t __34__VOSScreenreaderMode_Handwriting__block_invoke()
{
  Handwriting__Mode = [[VOSScreenreaderMode alloc] _initWithRawValue:@"Handwriting"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSScreenreaderMode)BrailleScreenInput
{
  if (BrailleScreenInput_onceToken != -1)
  {
    +[VOSScreenreaderMode BrailleScreenInput];
  }

  v3 = BrailleScreenInput__Mode;

  return v3;
}

uint64_t __41__VOSScreenreaderMode_BrailleScreenInput__block_invoke()
{
  BrailleScreenInput__Mode = [[VOSScreenreaderMode alloc] _initWithRawValue:@"BrailleScreenInput"];

  return MEMORY[0x2821F96F8]();
}

+ (VOSScreenreaderMode)Invalid
{
  if (Invalid_onceToken_0 != -1)
  {
    +[VOSScreenreaderMode Invalid];
  }

  v3 = Invalid__Mode;

  return v3;
}

uint64_t __30__VOSScreenreaderMode_Invalid__block_invoke()
{
  Invalid__Mode = [[VOSScreenreaderMode alloc] _initWithRawValue:@"Invalid"];

  return MEMORY[0x2821F96F8]();
}

+ (NSSet)allModes
{
  if (allModes_onceToken != -1)
  {
    +[VOSScreenreaderMode allModes];
  }

  v3 = allModes__AllModes;

  return v3;
}

void __31__VOSScreenreaderMode_allModes__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v5 = +[VOSScreenreaderMode Default];
  v1 = +[VOSScreenreaderMode Handwriting];
  v2 = +[VOSScreenreaderMode BrailleScreenInput];
  v3 = [v0 setWithObjects:{v5, v1, v2, 0}];
  v4 = allModes__AllModes;
  allModes__AllModes = v3;
}

+ (VOSScreenreaderMode)modeWithStringValue:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a1 allModes];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9[1] isEqualToString:v4])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSString)localizedName
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"VOSScreenReaderMode.%@", self->_rawValue];
  v3 = VOSLocString(v2);

  return v3;
}

@end