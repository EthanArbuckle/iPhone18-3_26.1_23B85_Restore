@interface SBSUserNotificationButtonDefinition
+ (id)_buttonDefinitionsFromSerializedDefinitions:(id)definitions;
- (BOOL)isEqual:(id)equal;
- (SBSUserNotificationButtonDefinition)init;
- (SBSUserNotificationButtonDefinition)initWithTitle:(id)title;
- (id)_initWithDictionary:(id)dictionary;
- (id)build;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_copyPropertiesToDefinition:(id)definition;
@end

@implementation SBSUserNotificationButtonDefinition

- (SBSUserNotificationButtonDefinition)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSCFUserNotificationButtonDefinition.m" lineNumber:29 description:@"[SBSUserNotificationButtonDefinition init] is unavailable for use."];

  return 0;
}

- (id)_initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    [(SBSUserNotificationButtonDefinition *)a2 _initWithDictionary:?];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v11.receiver = self;
  v11.super_class = SBSUserNotificationButtonDefinition;
  self = [(SBSUserNotificationButtonDefinition *)&v11 init];
  if (self)
  {
    v6 = [dictionaryCopy bs_safeStringForKey:@"_SBSButtonTitle"];
    title = self->_title;
    self->_title = v6;

    if (self->_title)
    {
      v8 = [dictionaryCopy bs_safeNumberForKey:@"_SBSButtonPresentationStyle"];
      self->_presentationStyle = [v8 intValue];

      self->_isPreferredButton = [dictionaryCopy bs_BOOLForKey:@"_SBSButtonPreferred"];
      goto LABEL_7;
    }

LABEL_8:
    selfCopy = 0;
    goto LABEL_9;
  }

LABEL_7:
  self = self;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (SBSUserNotificationButtonDefinition)initWithTitle:(id)title
{
  titleCopy = title;
  if (!titleCopy)
  {
    [(SBSUserNotificationButtonDefinition *)a2 initWithTitle:?];
  }

  v10.receiver = self;
  v10.super_class = SBSUserNotificationButtonDefinition;
  v6 = [(SBSUserNotificationButtonDefinition *)&v10 init];
  if (v6)
  {
    v7 = [titleCopy copy];
    title = v6->_title;
    v6->_title = v7;
  }

  return v6;
}

+ (id)_buttonDefinitionsFromSerializedDefinitions:(id)definitions
{
  v19 = *MEMORY[0x1E69E9840];
  definitionsCopy = definitions;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = definitionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [SBSUserNotificationButtonDefinition alloc];
        v12 = [(SBSUserNotificationButtonDefinition *)v11 _initWithDictionary:v10, v14];
        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)build
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_title forKeyedSubscript:@"_SBSButtonTitle"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_presentationStyle];
  [v3 setObject:v4 forKeyedSubscript:@"_SBSButtonPresentationStyle"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPreferredButton];
  [v3 setObject:v5 forKeyedSubscript:@"_SBSButtonPreferred"];

  v6 = [v3 copy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (BSEqualBools() && self->_presentationStyle == v5->_presentationStyle)
      {
        title = self->_title;
        title = [(SBSUserNotificationButtonDefinition *)v5 title];
        v8 = [(NSString *)title isEqualToString:title];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_copyPropertiesToDefinition:(id)definition
{
  objc_storeStrong(definition + 1, self->_title);
  definitionCopy = definition;
  definitionCopy[4] = self->_presentationStyle;
  *(definitionCopy + 20) = self->_isPreferredButton;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(SBSUserNotificationButtonDefinition *)[SBSMutableUserNotificationButtonDefinition alloc] initWithTitle:self->_title];
  [(SBSUserNotificationButtonDefinition *)self _copyPropertiesToDefinition:v4];
  return v4;
}

- (void)_initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSCFUserNotificationButtonDefinition.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
}

- (void)initWithTitle:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSCFUserNotificationButtonDefinition.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"title"}];
}

@end