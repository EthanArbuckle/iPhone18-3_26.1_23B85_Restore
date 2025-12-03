@interface PKSupply
+ (BOOL)isValidColorString:(const char *)string;
- (NSString)description;
- (PKSupply)initWithName:(const char *)name markerType:(const char *)type colors:(const char *)colors level:(int)level lowLevel:(int)lowLevel highLevel:(int)highLevel;
- (id)userCodableDictionary;
@end

@implementation PKSupply

+ (BOOL)isValidColorString:(const char *)string
{
  if (!string)
  {
    return 0;
  }

  stringCopy = string;
  v4 = strlen(string);
  result = 0;
  if (v4 >= 7 && !(v4 % 7))
  {
    do
    {
      result = _is_valid_color(stringCopy);
      if (!result)
      {
        break;
      }

      stringCopy += 7;
      v4 -= 7;
    }

    while (v4 >= 7);
  }

  return result;
}

- (PKSupply)initWithName:(const char *)name markerType:(const char *)type colors:(const char *)colors level:(int)level lowLevel:(int)lowLevel highLevel:(int)highLevel
{
  v39.receiver = self;
  v39.super_class = PKSupply;
  v12 = [(PKSupply *)&v39 init];
  if (v12)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:name];
    name = v12->_name;
    v12->_name = v13;

    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:type];
    markerType = v12->_markerType;
    v12->_markerType = v15;

    array = [MEMORY[0x277CBEB18] array];
    highLevelCopy = highLevel;
    __s1 = type;
    v18 = strlen(colors);
    if (v18 >= 7)
    {
      for (i = v18; i > 6; i -= 7)
      {
        if (_is_valid_color(colors))
        {
          v20 = __maskrune(colors[1], 0xFuLL);
          v21 = __maskrune(colors[2], 0xFuLL);
          v22 = __maskrune(colors[3], 0xFuLL);
          v23 = __maskrune(colors[4], 0xFuLL);
          v24 = __maskrune(colors[5], 0xFuLL);
          v25 = __maskrune(colors[6], 0xFuLL);
          v26 = [objc_alloc(getUIColorClass()) initWithRed:(v21 | (16 * v20)) / 255.0 green:(v23 | (16 * v22)) / 255.0 blue:(v25 | (16 * v24)) / 255.0 alpha:1.0];
          [array addObject:v26];
        }

        colors += 7;
      }
    }

    v27 = [MEMORY[0x277CBEA60] arrayWithArray:array];

    colors = v12->_colors;
    v12->_colors = v27;

    lowLevelCopy = lowLevel;
    if (lowLevel == -1)
    {
      lowLevelCopy = 0;
    }

    v12->_level = level;
    v12->_lowLevel = lowLevelCopy;
    if (highLevelCopy == -1)
    {
      v30 = 100;
    }

    else
    {
      v30 = highLevelCopy;
    }

    v12->_highLevel = v30;
    if (lowLevelCopy && v30 == 100)
    {
      v31 = 3;
    }

    else if (lowLevelCopy || v30 == 100)
    {
      v32 = 0;
      v33 = &qword_279A93088;
      while (strcmp(__s1, *(v33 - 1)) && (!*v33 || strcmp(__s1, *v33)))
      {
        ++v32;
        v33 += 3;
        if (v32 == 36)
        {
          goto LABEL_25;
        }
      }

      if (v32 < 0x24)
      {
        goto LABEL_26;
      }

LABEL_25:
      v32 = 1;
LABEL_26:
      v31 = *(&_supply_type_for_type(char const*)::markers + 3 * v32);
    }

    else
    {
      v31 = 4;
    }

    v12->_supplyType = v31;
  }

  return v12;
}

- (NSString)description
{
  v20[9] = *MEMORY[0x277D85DE8];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"PKSupply <%p> {", self];
  v20[0] = v19;
  v3 = MEMORY[0x277CCACA8];
  name = [(PKSupply *)self name];
  v4 = [v3 stringWithFormat:@"\tname: %@", name];
  v20[1] = v4;
  v5 = MEMORY[0x277CCACA8];
  markerType = [(PKSupply *)self markerType];
  v7 = [v5 stringWithFormat:@"\tmarkerType: %@", markerType];
  v20[2] = v7;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tsupplyType: %lu", -[PKSupply supplyType](self, "supplyType")];
  v20[3] = v8;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tlevel: %d", -[PKSupply level](self, "level")];
  v20[4] = v9;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tlowLevel: %d", -[PKSupply lowLevel](self, "lowLevel")];
  v20[5] = v10;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"\thighLevel: %d", -[PKSupply highLevel](self, "highLevel")];
  v20[6] = v11;
  v12 = MEMORY[0x277CCACA8];
  colors = [(PKSupply *)self colors];
  v14 = [v12 stringWithFormat:@"\tcolors: %@", colors];
  v20[7] = v14;
  v20[8] = @"}";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:9];

  v16 = [v15 componentsJoinedByString:@"\n"];

  return v16;
}

- (id)userCodableDictionary
{
  v3 = objc_opt_new();
  name = [(PKSupply *)self name];

  if (name)
  {
    name2 = [(PKSupply *)self name];
    [v3 setObject:name2 forKey:@"name"];
  }

  markerType = [(PKSupply *)self markerType];

  if (markerType)
  {
    markerType2 = [(PKSupply *)self markerType];
    [v3 setObject:markerType2 forKey:@"markerType"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInt:{-[PKSupply lowLevel](self, "lowLevel")}];
  [v3 setObject:v8 forKey:@"lowLevel"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:{-[PKSupply highLevel](self, "highLevel")}];
  [v3 setObject:v9 forKey:@"highLevel"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PKSupply supplyType](self, "supplyType")}];
  [v3 setObject:v10 forKey:@"supplyType"];

  colors = [(PKSupply *)self colors];

  if (colors)
  {
    colors2 = [(PKSupply *)self colors];
    v13 = objc_opt_new();
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___ZL21makeUserCodableColorsP7NSArray_block_invoke;
    v17[3] = &unk_279A933E0;
    v14 = v13;
    v18 = v14;
    [colors2 enumerateObjectsUsingBlock:v17];

    [v3 setObject:v14 forKey:@"colors"];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInt:{-[PKSupply level](self, "level")}];
  [v3 setObject:v15 forKey:@"level"];

  return v3;
}

@end