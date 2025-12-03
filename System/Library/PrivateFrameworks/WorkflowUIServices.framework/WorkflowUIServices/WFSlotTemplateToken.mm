@interface WFSlotTemplateToken
- (NSHashTable)delegates;
- (WFSlotTemplateToken)initWithDisplayName:(id)name icon:(id)icon isAvailable:(BOOL)available;
- (void)addDelegate:(id)delegate;
- (void)propertiesUpdated;
- (void)removeDelegate:(id)delegate;
- (void)updatePropertiesWithToken:(id)token;
@end

@implementation WFSlotTemplateToken

- (void)propertiesUpdated
{
  v15 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  delegates = [(WFSlotTemplateToken *)self delegates];
  v4 = [delegates copy];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 templateTokenDidChange:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegates = [(WFSlotTemplateToken *)self delegates];
  [delegates removeObject:delegateCopy];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegates = [(WFSlotTemplateToken *)self delegates];
  [delegates addObject:delegateCopy];
}

- (NSHashTable)delegates
{
  delegates = self->_delegates;
  if (!delegates)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v5 = self->_delegates;
    self->_delegates = weakObjectsHashTable;

    delegates = self->_delegates;
  }

  return delegates;
}

- (void)updatePropertiesWithToken:(id)token
{
  tokenCopy = token;
  displayName = [(WFSlotTemplateToken *)self displayName];
  displayName2 = [tokenCopy displayName];
  v6 = displayName;
  v7 = displayName2;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    v9 = v7;
    v10 = v6;
    if (!v6)
    {
      goto LABEL_16;
    }

    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      goto LABEL_16;
    }

    v11 = [v6 isEqualToString:v7];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  icon = [(WFSlotTemplateToken *)self icon];
  icon2 = [tokenCopy icon];
  v10 = icon;
  v14 = icon2;
  v9 = v14;
  if (v10 == v14)
  {
  }

  else
  {
    if (!v10 || !v14)
    {

LABEL_16:
LABEL_17:

      goto LABEL_18;
    }

    v15 = [v10 isEqual:v14];

    if (!v15)
    {
      goto LABEL_16;
    }
  }

  isAvailable = [(WFSlotTemplateToken *)self isAvailable];
  isAvailable2 = [tokenCopy isAvailable];

  if (isAvailable != isAvailable2)
  {
LABEL_18:
    displayName3 = [tokenCopy displayName];
    v19 = [displayName3 copy];
    [(WFSlotTemplateToken *)self setDisplayName:v19];

    icon3 = [tokenCopy icon];
    [(WFSlotTemplateToken *)self setIcon:icon3];

    -[WFSlotTemplateToken setIsAvailable:](self, "setIsAvailable:", [tokenCopy isAvailable]);
    [(WFSlotTemplateToken *)self propertiesUpdated];
  }
}

- (WFSlotTemplateToken)initWithDisplayName:(id)name icon:(id)icon isAvailable:(BOOL)available
{
  nameCopy = name;
  iconCopy = icon;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSlotTemplateToken.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v17.receiver = self;
  v17.super_class = WFSlotTemplateToken;
  v11 = [(WFSlotTemplateToken *)&v17 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    displayName = v11->_displayName;
    v11->_displayName = v12;

    objc_storeStrong(&v11->_icon, icon);
    v11->_isAvailable = available;
    v14 = v11;
  }

  return v11;
}

@end