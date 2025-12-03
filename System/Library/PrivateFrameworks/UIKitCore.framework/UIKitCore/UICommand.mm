@interface UICommand
+ (UICommand)commandWithTitle:(NSString *)title image:(UIImage *)image action:(SEL)action propertyList:(id)propertyList;
+ (UICommand)commandWithTitle:(NSString *)title image:(UIImage *)image action:(SEL)action propertyList:(id)propertyList alternates:(NSArray *)alternates;
+ (UICommand)commandWithTitle:(id)title imageName:(id)name action:(SEL)action;
+ (UICommand)commandWithTitle:(id)title imageName:(id)name action:(SEL)action fallbackAction:(SEL)fallbackAction;
+ (UICommand)commandWithTitle:(id)title imageName:(id)name attributes:(unint64_t)attributes action:(SEL)action;
+ (UICommand)commandWithTitle:(id)title imageName:(id)name preferredDisplayMode:(unint64_t)mode action:(SEL)action;
+ (id)_defaultCommandForAction:(SEL)action;
+ (id)_originalCommandForAction:(SEL)action;
- (BOOL)_acceptBoolMenuVisit:(id)visit commandVisit:(id)commandVisit actionVisit:(id)actionVisit;
- (BOOL)_acceptBoolMenuVisit:(id)visit leafVisit:(id)leafVisit;
- (BOOL)_isDefaultCommand;
- (BOOL)isEqual:(id)equal;
- (NSArray)_leafAlternates;
- (NSString)description;
- (UICommand)initWithCoder:(NSCoder *)coder;
- (UICommand)initWithCommand:(id)command;
- (UICommand)initWithTitle:(id)title image:(id)image imageName:(id)name action:(SEL)action fallbackAction:(SEL)fallbackAction propertyList:(id)list leafOrCommandAlternates:(id)alternates discoverabilityTitle:(id)self0 attributes:(unint64_t)self1 state:(int64_t)self2;
- (UISPasteVariant)_pasteVariant;
- (id)_menuLeafWithKeyboardShortcut:(id)shortcut;
- (id)_resolvedTargetFromFirstTarget:(id)target sender:(id)sender;
- (id)_resolvedTargetFromFirstTarget:(id)target sender:(id)sender shouldUseFallbackActionOut:(BOOL *)out;
- (id)_storedLeafAlternates;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_acceptMenuVisit:(id)visit commandVisit:(id)commandVisit actionVisit:(id)actionVisit deferredElementVisit:(id)elementVisit;
- (void)_acceptMenuVisit:(id)visit leafVisit:(id)leafVisit;
- (void)_appendDescriptionComponentsToDescription:(id)description;
- (void)_performAction:(SEL)action withSender:(id)sender target:(id)target notifyingStateObservers:(BOOL)observers;
- (void)_performWithSender:(id)sender handler:(id)handler;
- (void)_setLeafAlternates:(id)alternates;
- (void)_setState:(int64_t)state notifyingObservers:(BOOL)observers;
- (void)encodeWithCoder:(id)coder;
- (void)performWithSender:(id)sender target:(id)target;
- (void)setImage:(UIImage *)image;
- (void)setRepeatBehavior:(int64_t)behavior;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(NSString *)title;
@end

@implementation UICommand

+ (UICommand)commandWithTitle:(id)title imageName:(id)name action:(SEL)action
{
  nameCopy = name;
  titleCopy = title;
  v10 = [self alloc];
  v11 = [v10 initWithTitle:titleCopy image:0 imageName:nameCopy action:action propertyList:0 leafOrCommandAlternates:MEMORY[0x1E695E0F0] discoverabilityTitle:0 attributes:0 state:0];

  return v11;
}

+ (UICommand)commandWithTitle:(id)title imageName:(id)name action:(SEL)action fallbackAction:(SEL)fallbackAction
{
  nameCopy = name;
  titleCopy = title;
  v12 = [self alloc];
  v13 = [v12 initWithTitle:titleCopy image:0 imageName:nameCopy action:action fallbackAction:fallbackAction propertyList:0 leafOrCommandAlternates:MEMORY[0x1E695E0F0] discoverabilityTitle:0 attributes:0 state:0];

  return v13;
}

+ (UICommand)commandWithTitle:(id)title imageName:(id)name preferredDisplayMode:(unint64_t)mode action:(SEL)action
{
  nameCopy = name;
  titleCopy = title;
  v12 = [self alloc];
  v13 = [v12 initWithTitle:titleCopy image:0 imageName:nameCopy action:action propertyList:0 leafOrCommandAlternates:MEMORY[0x1E695E0F0] discoverabilityTitle:0 attributes:0 state:0];

  v13[4] = mode;

  return v13;
}

+ (UICommand)commandWithTitle:(id)title imageName:(id)name attributes:(unint64_t)attributes action:(SEL)action
{
  nameCopy = name;
  titleCopy = title;
  v12 = [self alloc];
  v13 = [v12 initWithTitle:titleCopy image:0 imageName:nameCopy action:action propertyList:0 leafOrCommandAlternates:MEMORY[0x1E695E0F0] discoverabilityTitle:0 attributes:attributes state:0];

  return v13;
}

+ (UICommand)commandWithTitle:(NSString *)title image:(UIImage *)image action:(SEL)action propertyList:(id)propertyList
{
  v10 = propertyList;
  v11 = image;
  v12 = title;
  v13 = [self alloc];
  v14 = [v13 initWithTitle:v12 image:v11 imageName:0 action:action propertyList:v10 leafOrCommandAlternates:MEMORY[0x1E695E0F0] discoverabilityTitle:0 attributes:0 state:0];

  return v14;
}

+ (UICommand)commandWithTitle:(NSString *)title image:(UIImage *)image action:(SEL)action propertyList:(id)propertyList alternates:(NSArray *)alternates
{
  v12 = alternates;
  v13 = propertyList;
  v14 = image;
  v15 = title;
  v16 = [[self alloc] initWithTitle:v15 image:v14 imageName:0 action:action propertyList:v13 leafOrCommandAlternates:v12 discoverabilityTitle:0 attributes:0 state:0];

  return v16;
}

- (UICommand)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v27.receiver = self;
  v27.super_class = UICommand;
  v5 = [(UIMenuElement *)&v27 initWithCoder:v4];
  if (v5)
  {
    v6 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"discoverabilityTitle"];
    discoverabilityTitle = v5->_discoverabilityTitle;
    v5->_discoverabilityTitle = v6;

    v8 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    v5->_action = NSSelectorFromString(v8);

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v9 setWithObjects:{v10, v11, v12, v13, v14, objc_opt_class(), 0}];
    v16 = [(NSCoder *)v4 decodeObjectOfClasses:v15 forKey:@"propertyList"];
    propertyList = v5->_propertyList;
    v5->_propertyList = v16;

    *(v5 + 20) = [(NSCoder *)v4 decodeIntegerForKey:@"attributes"];
    *(v5 + 21) = [(NSCoder *)v4 decodeIntegerForKey:@"states"];
    v18 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedImage"];
    selectedImage = v5->_selectedImage;
    v5->_selectedImage = v18;

    *(v5 + 22) = [(NSCoder *)v4 decodeIntegerForKey:@"repeatBehavior"];
    v20 = @"leafAlternates";
    LODWORD(v10) = [(NSCoder *)v4 containsValueForKey:@"leafAlternates"];
    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    if (!v10)
    {
      v20 = @"alternates";
    }

    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [(NSCoder *)v4 decodeObjectOfClasses:v23 forKey:v20];
    alternates = v5->_alternates;
    v5->_alternates = v24;

    if (!v5->_alternates)
    {
      v5->_alternates = MEMORY[0x1E695E0F0];
    }
  }

  return v5;
}

- (UICommand)initWithTitle:(id)title image:(id)image imageName:(id)name action:(SEL)action fallbackAction:(SEL)fallbackAction propertyList:(id)list leafOrCommandAlternates:(id)alternates discoverabilityTitle:(id)self0 attributes:(unint64_t)self1 state:(int64_t)self2
{
  v51 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  imageCopy = image;
  nameCopy = name;
  listCopy = list;
  alternatesCopy = alternates;
  discoverabilityTitleCopy = discoverabilityTitle;
  if (listCopy)
  {
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], listCopy, 0);
    if (!DeepCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UICommand.m" lineNumber:355 description:{@"Invalid parameter not satisfying: %@", @"propertyListCopy"}];
    }
  }

  else
  {
    DeepCopy = 0;
  }

  v41 = imageCopy;
  v42 = titleCopy;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v22 = alternatesCopy;
  v23 = [v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (!v23)
  {
    v25 = 0;
    goto LABEL_20;
  }

  v24 = v23;
  v25 = 0;
  v26 = *v47;
  do
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v47 != v26)
      {
        objc_enumerationMutation(v22);
      }

      modifierFlags = [*(*(&v46 + 1) + 8 * i) modifierFlags];
      if (!modifierFlags || [v25 containsIndex:modifierFlags])
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"UICommand.m" lineNumber:364 description:{@"Invalid parameter not satisfying: %@", @"alternateModifierFlags != 0 && ![allAlternateModifierFlags containsIndex:alternateModifierFlags]"}];

        if (v25)
        {
LABEL_13:
          [v25 addIndex:modifierFlags];
          continue;
        }
      }

      else if (v25)
      {
        goto LABEL_13;
      }

      v25 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndex:modifierFlags];
    }

    v24 = [v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
  }

  while (v24);
LABEL_20:

  v45.receiver = self;
  v45.super_class = UICommand;
  v30 = [(UIMenuElement *)&v45 initWithTitle:v42 image:v41 imageName:nameCopy];
  v31 = v30;
  if (v30)
  {
    target = v30->__target;
    v30->__target = 0;

    v31->_action = action;
    v31->_fallbackAction = fallbackAction;
    objc_storeStrong(&v31->_propertyList, DeepCopy);
    v33 = [v22 copy];
    alternates = v31->_alternates;
    v31->_alternates = v33;

    v35 = [discoverabilityTitleCopy copy];
    discoverabilityTitle = v31->_discoverabilityTitle;
    v31->_discoverabilityTitle = v35;

    *(v31 + 20) = attributes;
    *(v31 + 21) = state;
  }

  return v31;
}

- (UICommand)initWithCommand:(id)command
{
  commandCopy = command;
  _imageOrName = [commandCopy _imageOrName];
  title = [commandCopy title];
  _asMenuElementImage = [_imageOrName _asMenuElementImage];
  _asMenuElementImageName = [_imageOrName _asMenuElementImageName];
  v11.receiver = self;
  v11.super_class = UICommand;
  v9 = [(UIMenuElement *)&v11 initWithTitle:title image:_asMenuElementImage imageName:_asMenuElementImageName];

  if (v9)
  {
    objc_storeStrong(&v9->__target, commandCopy[19]);
    v9->_action = commandCopy[16];
    v9->_fallbackAction = commandCopy[18];
    objc_storeStrong(&v9->super._attributedTitle, commandCopy[1]);
    objc_storeStrong(&v9->super._subtitle, commandCopy[2]);
    objc_storeStrong(&v9->_propertyList, commandCopy[17]);
    objc_storeStrong(&v9->_alternates, commandCopy[9]);
    objc_storeStrong(&v9->_discoverabilityTitle, commandCopy[15]);
    *(v9 + 20) = *(commandCopy + 20);
    *(v9 + 21) = *(commandCopy + 21);
    objc_storeStrong(&v9->_selectedImage, commandCopy[14]);
    *(v9 + 22) = *(commandCopy + 22);
    objc_storeStrong(&v9->super._accessibilityIdentifier, commandCopy[3]);
    v9->super.__preferredDisplayMode = commandCopy[4];
  }

  return v9;
}

- (void)setTitle:(NSString *)title
{
  v3.receiver = self;
  v3.super_class = UICommand;
  [(UIMenuElement *)&v3 _setTitle:title];
}

- (void)setSubtitle:(id)subtitle
{
  v3.receiver = self;
  v3.super_class = UICommand;
  [(UIMenuElement *)&v3 _setSubtitle:subtitle];
}

- (void)setImage:(UIImage *)image
{
  v3.receiver = self;
  v3.super_class = UICommand;
  [(UIMenuElement *)&v3 _setImage:image];
}

- (void)_acceptMenuVisit:(id)visit commandVisit:(id)commandVisit actionVisit:(id)actionVisit deferredElementVisit:(id)elementVisit
{
  if (commandVisit)
  {
    (*(commandVisit + 2))(commandVisit, self);
  }
}

- (BOOL)_acceptBoolMenuVisit:(id)visit commandVisit:(id)commandVisit actionVisit:(id)actionVisit
{
  if (commandVisit)
  {
    return (*(commandVisit + 2))(commandVisit, self);
  }

  else
  {
    return 0;
  }
}

- (void)_acceptMenuVisit:(id)visit leafVisit:(id)leafVisit
{
  if (leafVisit)
  {
    (*(leafVisit + 2))(leafVisit, self);
  }
}

- (BOOL)_acceptBoolMenuVisit:(id)visit leafVisit:(id)leafVisit
{
  if (leafVisit)
  {
    return (*(leafVisit + 2))(leafVisit, self);
  }

  else
  {
    return 0;
  }
}

- (UISPasteVariant)_pasteVariant
{
  v2 = MEMORY[0x1E69DEC00];
  action = [(UICommand *)self action];

  return [v2 variantForSelector:action];
}

- (id)_storedLeafAlternates
{
  v2 = [(NSArray *)self->_alternates bs_compactMap:&__block_literal_global_151_0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (NSArray)_leafAlternates
{
  alternates = self->_alternates;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__UICommand__leafAlternates__block_invoke;
  v8[3] = &unk_1E7124A88;
  v8[4] = self;
  v8[5] = a2;
  v3 = [(NSArray *)alternates bs_map:v8];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

id __28__UICommand__leafAlternates__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 leafAlternate];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [v3 commandAlternate];
    if (!v7)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"UICommand.m" lineNumber:482 description:@"Stored _UIMenuLeafAlternateOrCommandAlternate was neither a _UIMenuLeafAlternate nor a UICommandAlternate. This is a UIKit internal bug."];
    }

    v8 = [*(a1 + 32) copy];
    v9 = [v7 title];
    [v8 setTitle:v9];

    [v8 setDiscoverabilityTitle:0];
    [v8 setAttributedTitle:0];
    v8[16] = [v7 action];
    v10 = v8[9];
    v8[9] = MEMORY[0x1E695E0F0];

    v6 = +[_UIMenuLeafAlternate alternateWithModifierFlags:menuLeaf:](_UIMenuLeafAlternate, "alternateWithModifierFlags:menuLeaf:", [v7 modifierFlags], v8);
  }

  return v6;
}

- (void)_setLeafAlternates:(id)alternates
{
  if (self->_alternates != alternates)
  {
    v4 = MEMORY[0x1E695DEC8];
    alternatesCopy = alternates;
    v6 = [[v4 alloc] initWithArray:alternatesCopy copyItems:1];

    alternates = self->_alternates;
    self->_alternates = v6;
  }
}

- (id)_menuLeafWithKeyboardShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  if (shortcutCopy)
  {
    selfCopy = [[UIKeyCommand alloc] _initWithCommand:self keyboardShortcut:shortcutCopy];
  }

  else
  {
    _keyboardShortcut = [(UICommand *)self _keyboardShortcut];

    if (_keyboardShortcut)
    {
      selfCopy = [[UICommand alloc] initWithCommand:self];
    }

    else
    {
      selfCopy = self;
    }
  }

  v7 = selfCopy;

  return v7;
}

- (void)setRepeatBehavior:(int64_t)behavior
{
  if (*(self + 22) != behavior)
  {
    *(self + 22) = behavior;
  }
}

- (BOOL)_isDefaultCommand
{
  v2 = [UICommand _originalCommandForAction:self->_action];
  v3 = v2 != 0;

  return v3;
}

- (void)_performAction:(SEL)action withSender:(id)sender target:(id)target notifyingStateObservers:(BOOL)observers
{
  observersCopy = observers;
  senderCopy = sender;
  targetCopy = target;
  objc_storeStrong(&self->_sender, sender);
  if (observersCopy)
  {
    _UIMenuStateObserverableLeafWillPerformAction(self);
  }

  if (self->__useSenderForResolvingTarget)
  {
    v12 = senderCopy;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  if (targetCopy)
  {
    if (v13)
    {
      selfCopy = v13;
    }

    else
    {
      selfCopy = self;
    }

    [UIApp sendAction:action to:targetCopy from:selfCopy forEvent:0];
  }

  sender = self->_sender;
  self->_sender = 0;
}

- (void)performWithSender:(id)sender target:(id)target
{
  targetCopy = target;
  senderCopy = sender;
  [(UICommand *)self _performAction:[(UICommand *)self action] withSender:senderCopy target:targetCopy notifyingStateObservers:1];
}

- (id)_resolvedTargetFromFirstTarget:(id)target sender:(id)sender
{
  objc_storeStrong(&self->_sender, sender);
  senderCopy = sender;
  targetCopy = target;
  if (self->__useSenderForResolvingTarget)
  {
    v9 = senderCopy;
  }

  else
  {
    v9 = 0;
  }

  action = self->_action;
  if (v9)
  {
    selfCopy = v9;
  }

  else
  {
    selfCopy = self;
  }

  v12 = v9;
  v13 = [targetCopy targetForAction:action withSender:selfCopy];

  sender = self->_sender;
  self->_sender = 0;

  return v13;
}

- (id)_resolvedTargetFromFirstTarget:(id)target sender:(id)sender shouldUseFallbackActionOut:(BOOL *)out
{
  targetCopy = target;
  senderCopy = sender;
  objc_storeStrong(&self->_sender, sender);
  if (self->__useSenderForResolvingTarget)
  {
    v10 = senderCopy;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = v11;
  if (v11)
  {
    selfCopy = v11;
  }

  else
  {
    selfCopy = self;
  }

  v14 = [targetCopy targetForAction:self->_action withSender:selfCopy];
  v15 = v14;
  if (self->_fallbackAction)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v17 = [targetCopy targetForAction:? withSender:?];
    v15 = v17;
    if (v17)
    {
      v18 = v17;
      if (out)
      {
        *out = 1;
      }
    }
  }

  sender = self->_sender;
  self->_sender = 0;

  return v15;
}

- (void)_performWithSender:(id)sender handler:(id)handler
{
  objc_storeStrong(&self->_sender, sender);
  senderCopy = sender;
  handlerCopy = handler;
  handlerCopy[2]();

  sender = self->_sender;
  self->_sender = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UICommand alloc];

  return [(UICommand *)v4 initWithCommand:self];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self->__target)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICommand.m" lineNumber:652 description:@"Commands with explicit targets cannot be encoded."];
  }

  v16.receiver = self;
  v16.super_class = UICommand;
  [(UIMenuElement *)&v16 encodeWithCoder:coderCopy];
  v6 = NSStringFromSelector(self->_action);
  [coderCopy encodeObject:v6 forKey:@"action"];

  discoverabilityTitle = self->_discoverabilityTitle;
  if (discoverabilityTitle)
  {
    [coderCopy encodeObject:discoverabilityTitle forKey:@"discoverabilityTitle"];
  }

  propertyList = self->_propertyList;
  if (propertyList)
  {
    [coderCopy encodeObject:propertyList forKey:@"propertyList"];
  }

  if ([(NSArray *)self->_alternates count])
  {
    alternates = [(UICommand *)self alternates];
    if ([alternates count])
    {
      [coderCopy encodeObject:alternates forKey:@"alternates"];
    }

    else
    {
      _storedLeafAlternates = [(UICommand *)self _storedLeafAlternates];
      [coderCopy encodeObject:_storedLeafAlternates forKey:@"leafAlternates"];
    }
  }

  v11 = *(self + 20);
  if (v11)
  {
    [coderCopy encodeInteger:v11 forKey:@"attributes"];
  }

  v12 = *(self + 21);
  if (v12)
  {
    [coderCopy encodeInteger:v12 forKey:@"states"];
  }

  selectedImage = self->_selectedImage;
  if (selectedImage)
  {
    [coderCopy encodeObject:selectedImage forKey:@"selectedImage"];
  }

  v14 = *(self + 22);
  if (v14)
  {
    [coderCopy encodeInteger:v14 forKey:@"repeatBehavior"];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = equalCopy;
    action = [v6 action];
    if (action == [(UICommand *)self action])
    {
      propertyList = [v6 propertyList];
      propertyList2 = [(UICommand *)self propertyList];
      v10 = propertyList;
      v11 = propertyList2;
      v12 = v11;
      if (v10 == v11)
      {
        v5 = 1;
      }

      else
      {
        v5 = 0;
        if (v10 && v11)
        {
          v5 = [v10 isEqual:v11];
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  [(UICommand *)self _appendDescriptionComponentsToDescription:v3];
  [v3 appendString:@">"];

  return v3;
}

- (void)_appendDescriptionComponentsToDescription:(id)description
{
  descriptionCopy = description;
  title = [(UIMenuElement *)self title];
  v5 = [title length];

  if (v5)
  {
    title2 = [(UIMenuElement *)self title];
    [descriptionCopy appendFormat:@"; title = %@", title2];
  }

  if ([(UICommand *)self action])
  {
    v7 = NSStringFromSelector([(UICommand *)self action]);
    [descriptionCopy appendFormat:@"; action: %@", v7];
  }
}

- (void)_setState:(int64_t)state notifyingObservers:(BOOL)observers
{
  if (*(self + 21) != state)
  {
    *(self + 21) = state;
    if (observers)
    {
      _UIMenuStateObserverableLeafStateDidChange(self);
    }
  }
}

+ (id)_defaultCommandForAction:(SEL)action
{
  v4 = +[_UIDefaultCommands sharedCommands];
  v5 = [(_UIDefaultCommands *)v4 defaultCommandForAction:action wantsCopy:1];

  return v5;
}

+ (id)_originalCommandForAction:(SEL)action
{
  v4 = +[_UIDefaultCommands sharedCommands];
  v5 = [(_UIDefaultCommands *)v4 defaultCommandForAction:action wantsCopy:0];

  return v5;
}

@end