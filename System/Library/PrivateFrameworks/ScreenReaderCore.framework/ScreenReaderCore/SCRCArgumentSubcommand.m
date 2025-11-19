@interface SCRCArgumentSubcommand
+ (id)subcommandWithName:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSArray)optionArray;
- (SCRCArgumentSubcommand)init;
- (SCRCArgumentSubcommand)initWithName:(id)a3;
- (id)description;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)addOption:(char)a3 argument:(id)a4 target:(id)a5 action:(SEL)a6 argumentDescription:(id)a7 required:(BOOL)a8;
@end

@implementation SCRCArgumentSubcommand

+ (id)subcommandWithName:(id)a3
{
  v3 = a3;
  v4 = [[SCRCArgumentSubcommand alloc] initWithName:v3];

  return v4;
}

- (SCRCArgumentSubcommand)initWithName:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SCRCArgumentSubcommand;
  v6 = [(SCRCArgumentSubcommand *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subcommandName, a3);
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
  v2 = [(SCRCArgumentSubcommand *)self _optionMutableArray];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 subcommandName];

    v6 = [(SCRCArgumentSubcommand *)self subcommandName];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SCRCArgumentSubcommand;
    v7 = [(SCRCArgumentSubcommand *)&v9 isEqual:v4];
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(SCRCArgumentSubcommand *)self subcommandName];
  v3 = [v2 hash];

  return v3;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(SCRCArgumentSubcommand *)self subcommandName];
  v6 = [v4 subcommandName];

  v7 = [v5 compare:v6 options:1];
  return v7;
}

- (void)addOption:(char)a3 argument:(id)a4 target:(id)a5 action:(SEL)a6 argumentDescription:(id)a7 required:(BOOL)a8
{
  v8 = a8;
  v12 = a3;
  v14 = MEMORY[0x277CCACA8];
  v15 = a7;
  v16 = a5;
  v17 = a4;
  v23 = [v14 stringWithFormat:@"%c", v12];
  v18 = [[SCRCArgumentHolder alloc] initWithArgument:v17 option:v23 description:v15 target:v16 action:a6 required:v8];

  v19 = [(SCRCArgumentSubcommand *)self _optionMutableArray];
  v20 = [v19 indexOfObject:v18];

  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = [(SCRCArgumentSubcommand *)self _optionMutableArray];
    [v21 removeObjectAtIndex:v20];
  }

  v22 = [(SCRCArgumentSubcommand *)self _optionMutableArray];
  [v22 addObject:v18];
}

- (id)description
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = SCRCArgumentSubcommand;
  v3 = [(SCRCArgumentSubcommand *)&v18 description];
  v4 = [MEMORY[0x277CCAB68] string];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SCRCArgumentSubcommand *)self optionArray];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        [v4 appendFormat:@" %@", *(*(&v14 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = [(SCRCArgumentSubcommand *)self subcommandName];
  v12 = [v10 stringWithFormat:@"%@ { %@%@ }", v3, v11, v4];

  return v12;
}

@end