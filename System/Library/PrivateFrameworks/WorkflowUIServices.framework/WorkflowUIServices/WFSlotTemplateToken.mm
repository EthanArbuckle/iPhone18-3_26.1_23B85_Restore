@interface WFSlotTemplateToken
- (NSHashTable)delegates;
- (WFSlotTemplateToken)initWithDisplayName:(id)a3 icon:(id)a4 isAvailable:(BOOL)a5;
- (void)addDelegate:(id)a3;
- (void)propertiesUpdated;
- (void)removeDelegate:(id)a3;
- (void)updatePropertiesWithToken:(id)a3;
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
  v3 = [(WFSlotTemplateToken *)self delegates];
  v4 = [v3 copy];

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

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTemplateToken *)self delegates];
  [v5 removeObject:v4];
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTemplateToken *)self delegates];
  [v5 addObject:v4];
}

- (NSHashTable)delegates
{
  delegates = self->_delegates;
  if (!delegates)
  {
    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v5 = self->_delegates;
    self->_delegates = v4;

    delegates = self->_delegates;
  }

  return delegates;
}

- (void)updatePropertiesWithToken:(id)a3
{
  v21 = a3;
  v4 = [(WFSlotTemplateToken *)self displayName];
  v5 = [v21 displayName];
  v6 = v4;
  v7 = v5;
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

  v12 = [(WFSlotTemplateToken *)self icon];
  v13 = [v21 icon];
  v10 = v12;
  v14 = v13;
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

  v16 = [(WFSlotTemplateToken *)self isAvailable];
  v17 = [v21 isAvailable];

  if (v16 != v17)
  {
LABEL_18:
    v18 = [v21 displayName];
    v19 = [v18 copy];
    [(WFSlotTemplateToken *)self setDisplayName:v19];

    v20 = [v21 icon];
    [(WFSlotTemplateToken *)self setIcon:v20];

    -[WFSlotTemplateToken setIsAvailable:](self, "setIsAvailable:", [v21 isAvailable]);
    [(WFSlotTemplateToken *)self propertiesUpdated];
  }
}

- (WFSlotTemplateToken)initWithDisplayName:(id)a3 icon:(id)a4 isAvailable:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateToken.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v17.receiver = self;
  v17.super_class = WFSlotTemplateToken;
  v11 = [(WFSlotTemplateToken *)&v17 init];
  if (v11)
  {
    v12 = [v9 copy];
    displayName = v11->_displayName;
    v11->_displayName = v12;

    objc_storeStrong(&v11->_icon, a4);
    v11->_isAvailable = a5;
    v14 = v11;
  }

  return v11;
}

@end