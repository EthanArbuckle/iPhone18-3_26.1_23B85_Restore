@interface SCRCArgumentSubcommand
+ (id)subcommandWithName:(id)name;
- (BOOL)isEqual:(id)equal;
- (NSArray)optionArray;
- (SCRCArgumentSubcommand)init;
- (SCRCArgumentSubcommand)initWithName:(id)name;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)addOption:(char)option argument:(id)argument target:(id)target action:(SEL)action argumentDescription:(id)description required:(BOOL)required;
@end

@implementation SCRCArgumentSubcommand

+ (id)subcommandWithName:(id)name
{
  nameCopy = name;
  v4 = [[SCRCArgumentSubcommand alloc] initWithName:nameCopy];

  return v4;
}

- (SCRCArgumentSubcommand)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = SCRCArgumentSubcommand;
  v6 = [(SCRCArgumentSubcommand *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subcommandName, name);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    optionMutableArray = v7->__optionMutableArray;
    v7->__optionMutableArray = v8;
  }

  return v7;
}

- (SCRCArgumentSubcommand)init
{
  v6.receiver = self;
  v6.super_class = SCRCArgumentSubcommand;
  v2 = [(SCRCArgumentSubcommand *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    optionMutableArray = v2->__optionMutableArray;
    v2->__optionMutableArray = v3;
  }

  return v2;
}

- (NSArray)optionArray
{
  _optionMutableArray = [(SCRCArgumentSubcommand *)self _optionMutableArray];
  v3 = [_optionMutableArray copy];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    subcommandName = [equalCopy subcommandName];

    subcommandName2 = [(SCRCArgumentSubcommand *)self subcommandName];
    v7 = [subcommandName isEqualToString:subcommandName2];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SCRCArgumentSubcommand;
    v7 = [(SCRCArgumentSubcommand *)&v9 isEqual:equalCopy];
  }

  return v7;
}

- (unint64_t)hash
{
  subcommandName = [(SCRCArgumentSubcommand *)self subcommandName];
  v3 = [subcommandName hash];

  return v3;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  subcommandName = [(SCRCArgumentSubcommand *)self subcommandName];
  subcommandName2 = [compareCopy subcommandName];

  v7 = [subcommandName compare:subcommandName2 options:1];
  return v7;
}

- (void)addOption:(char)option argument:(id)argument target:(id)target action:(SEL)action argumentDescription:(id)description required:(BOOL)required
{
  requiredCopy = required;
  optionCopy = option;
  v14 = MEMORY[0x277CCACA8];
  descriptionCopy = description;
  targetCopy = target;
  argumentCopy = argument;
  optionCopy = [v14 stringWithFormat:@"%c", optionCopy];
  v18 = [[SCRCArgumentHolder alloc] initWithArgument:argumentCopy option:optionCopy description:descriptionCopy target:targetCopy action:action required:requiredCopy];

  _optionMutableArray = [(SCRCArgumentSubcommand *)self _optionMutableArray];
  v20 = [_optionMutableArray indexOfObject:v18];

  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    _optionMutableArray2 = [(SCRCArgumentSubcommand *)self _optionMutableArray];
    [_optionMutableArray2 removeObjectAtIndex:v20];
  }

  _optionMutableArray3 = [(SCRCArgumentSubcommand *)self _optionMutableArray];
  [_optionMutableArray3 addObject:v18];
}

- (id)description
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = SCRCArgumentSubcommand;
  v3 = [(SCRCArgumentSubcommand *)&v18 description];
  string = [MEMORY[0x277CCAB68] string];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  optionArray = [(SCRCArgumentSubcommand *)self optionArray];
  v6 = [optionArray countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(optionArray);
        }

        [string appendFormat:@" %@", *(*(&v14 + 1) + 8 * i)];
      }

      v7 = [optionArray countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  v10 = MEMORY[0x277CCACA8];
  subcommandName = [(SCRCArgumentSubcommand *)self subcommandName];
  v12 = [v10 stringWithFormat:@"%@ { %@%@ }", v3, subcommandName, string];

  return v12;
}

@end