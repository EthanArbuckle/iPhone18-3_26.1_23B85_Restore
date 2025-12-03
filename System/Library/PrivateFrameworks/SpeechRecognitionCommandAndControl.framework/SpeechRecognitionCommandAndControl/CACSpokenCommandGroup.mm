@interface CACSpokenCommandGroup
- (BOOL)isEqual:(id)equal;
- (CACSpokenCommandGroup)initWithIdentifier:(id)identifier;
- (NSMutableArray)commandsArray;
- (NSString)displayString;
- (id)cloneWithoutCommands;
- (void)saveToPreferences;
@end

@implementation CACSpokenCommandGroup

- (CACSpokenCommandGroup)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CACSpokenCommandGroup;
  v6 = [(CACSpokenCommandGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v7->_isCustom = [(NSString *)v7->_identifier hasPrefix:@"Custom"];
  }

  return v7;
}

- (id)cloneWithoutCommands
{
  v3 = objc_alloc_init(objc_opt_class());
  [v3 setIdentifier:self->_identifier];
  [v3 setDisplayString:self->_displayString];
  [v3 setIsEnabled:self->_isEnabled];
  [v3 setIsConfirmationRequired:self->_isConfirmationRequired];
  [v3 setIsCustom:self->_isCustom];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  identifier = self->_identifier;
  identifier = [equal identifier];
  LOBYTE(identifier) = [(NSString *)identifier isEqualToString:identifier];

  return identifier;
}

- (NSString)displayString
{
  displayString = self->_displayString;
  if (!displayString)
  {
    if (!self->_identifier || (+[CACPreferences sharedPreferences](CACPreferences, "sharedPreferences"), v4 = objc_claimAutoreleasedReturnValue(), [v4 displayNameForCommandSetIdentifier:self->_identifier], v5 = objc_claimAutoreleasedReturnValue(), -[CACSpokenCommandGroup setDisplayString:](self, "setDisplayString:", v5), v5, v4, (displayString = self->_displayString) == 0))
    {
      [(CACSpokenCommandGroup *)self setDisplayString:&stru_287BD8610];
      displayString = self->_displayString;
    }
  }

  return displayString;
}

- (NSMutableArray)commandsArray
{
  commandsArray = self->_commandsArray;
  if (!commandsArray)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_commandsArray;
    self->_commandsArray = v4;

    commandsArray = self->_commandsArray;
  }

  return commandsArray;
}

- (void)saveToPreferences
{
  if ([(CACSpokenCommandGroup *)self isGroup])
  {
    commandsArray = self->_commandsArray;

    [(NSMutableArray *)commandsArray makeObjectsPerformSelector:sel_saveToPreferences];
  }
}

@end