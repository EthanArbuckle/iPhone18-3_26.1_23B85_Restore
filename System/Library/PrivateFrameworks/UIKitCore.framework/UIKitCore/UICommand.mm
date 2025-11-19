@interface UICommand
+ (UICommand)commandWithTitle:(NSString *)title image:(UIImage *)image action:(SEL)action propertyList:(id)propertyList;
+ (UICommand)commandWithTitle:(NSString *)title image:(UIImage *)image action:(SEL)action propertyList:(id)propertyList alternates:(NSArray *)alternates;
+ (UICommand)commandWithTitle:(id)a3 imageName:(id)a4 action:(SEL)a5;
+ (UICommand)commandWithTitle:(id)a3 imageName:(id)a4 action:(SEL)a5 fallbackAction:(SEL)a6;
+ (UICommand)commandWithTitle:(id)a3 imageName:(id)a4 attributes:(unint64_t)a5 action:(SEL)a6;
+ (UICommand)commandWithTitle:(id)a3 imageName:(id)a4 preferredDisplayMode:(unint64_t)a5 action:(SEL)a6;
+ (id)_defaultCommandForAction:(SEL)a3;
+ (id)_originalCommandForAction:(SEL)a3;
- (BOOL)_acceptBoolMenuVisit:(id)a3 commandVisit:(id)a4 actionVisit:(id)a5;
- (BOOL)_acceptBoolMenuVisit:(id)a3 leafVisit:(id)a4;
- (BOOL)_isDefaultCommand;
- (BOOL)isEqual:(id)a3;
- (NSArray)_leafAlternates;
- (NSString)description;
- (UICommand)initWithCoder:(NSCoder *)coder;
- (UICommand)initWithCommand:(id)a3;
- (UICommand)initWithTitle:(id)a3 image:(id)a4 imageName:(id)a5 action:(SEL)a6 fallbackAction:(SEL)a7 propertyList:(id)a8 leafOrCommandAlternates:(id)a9 discoverabilityTitle:(id)a10 attributes:(unint64_t)a11 state:(int64_t)a12;
- (UISPasteVariant)_pasteVariant;
- (id)_menuLeafWithKeyboardShortcut:(id)a3;
- (id)_resolvedTargetFromFirstTarget:(id)a3 sender:(id)a4;
- (id)_resolvedTargetFromFirstTarget:(id)a3 sender:(id)a4 shouldUseFallbackActionOut:(BOOL *)a5;
- (id)_storedLeafAlternates;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_acceptMenuVisit:(id)a3 commandVisit:(id)a4 actionVisit:(id)a5 deferredElementVisit:(id)a6;
- (void)_acceptMenuVisit:(id)a3 leafVisit:(id)a4;
- (void)_appendDescriptionComponentsToDescription:(id)a3;
- (void)_performAction:(SEL)a3 withSender:(id)a4 target:(id)a5 notifyingStateObservers:(BOOL)a6;
- (void)_performWithSender:(id)a3 handler:(id)a4;
- (void)_setLeafAlternates:(id)a3;
- (void)_setState:(int64_t)a3 notifyingObservers:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
- (void)performWithSender:(id)a3 target:(id)a4;
- (void)setImage:(UIImage *)image;
- (void)setRepeatBehavior:(int64_t)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(NSString *)title;
@end

@implementation UICommand

+ (UICommand)commandWithTitle:(id)a3 imageName:(id)a4 action:(SEL)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 alloc];
  v11 = [v10 initWithTitle:v9 image:0 imageName:v8 action:a5 propertyList:0 leafOrCommandAlternates:MEMORY[0x1E695E0F0] discoverabilityTitle:0 attributes:0 state:0];

  return v11;
}

+ (UICommand)commandWithTitle:(id)a3 imageName:(id)a4 action:(SEL)a5 fallbackAction:(SEL)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [a1 alloc];
  v13 = [v12 initWithTitle:v11 image:0 imageName:v10 action:a5 fallbackAction:a6 propertyList:0 leafOrCommandAlternates:MEMORY[0x1E695E0F0] discoverabilityTitle:0 attributes:0 state:0];

  return v13;
}

+ (UICommand)commandWithTitle:(id)a3 imageName:(id)a4 preferredDisplayMode:(unint64_t)a5 action:(SEL)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [a1 alloc];
  v13 = [v12 initWithTitle:v11 image:0 imageName:v10 action:a6 propertyList:0 leafOrCommandAlternates:MEMORY[0x1E695E0F0] discoverabilityTitle:0 attributes:0 state:0];

  v13[4] = a5;

  return v13;
}

+ (UICommand)commandWithTitle:(id)a3 imageName:(id)a4 attributes:(unint64_t)a5 action:(SEL)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [a1 alloc];
  v13 = [v12 initWithTitle:v11 image:0 imageName:v10 action:a6 propertyList:0 leafOrCommandAlternates:MEMORY[0x1E695E0F0] discoverabilityTitle:0 attributes:a5 state:0];

  return v13;
}

+ (UICommand)commandWithTitle:(NSString *)title image:(UIImage *)image action:(SEL)action propertyList:(id)propertyList
{
  v10 = propertyList;
  v11 = image;
  v12 = title;
  v13 = [a1 alloc];
  v14 = [v13 initWithTitle:v12 image:v11 imageName:0 action:action propertyList:v10 leafOrCommandAlternates:MEMORY[0x1E695E0F0] discoverabilityTitle:0 attributes:0 state:0];

  return v14;
}

+ (UICommand)commandWithTitle:(NSString *)title image:(UIImage *)image action:(SEL)action propertyList:(id)propertyList alternates:(NSArray *)alternates
{
  v12 = alternates;
  v13 = propertyList;
  v14 = image;
  v15 = title;
  v16 = [[a1 alloc] initWithTitle:v15 image:v14 imageName:0 action:action propertyList:v13 leafOrCommandAlternates:v12 discoverabilityTitle:0 attributes:0 state:0];

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

- (UICommand)initWithTitle:(id)a3 image:(id)a4 imageName:(id)a5 action:(SEL)a6 fallbackAction:(SEL)a7 propertyList:(id)a8 leafOrCommandAlternates:(id)a9 discoverabilityTitle:(id)a10 attributes:(unint64_t)a11 state:(int64_t)a12
{
  v51 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v44 = a5;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  if (v17)
  {
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v17, 0);
    if (!DeepCopy)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"UICommand.m" lineNumber:355 description:{@"Invalid parameter not satisfying: %@", @"propertyListCopy"}];
    }
  }

  else
  {
    DeepCopy = 0;
  }

  v41 = v16;
  v42 = v15;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v22 = v18;
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

      v28 = [*(*(&v46 + 1) + 8 * i) modifierFlags];
      if (!v28 || [v25 containsIndex:v28])
      {
        v29 = [MEMORY[0x1E696AAA8] currentHandler];
        [v29 handleFailureInMethod:a2 object:self file:@"UICommand.m" lineNumber:364 description:{@"Invalid parameter not satisfying: %@", @"alternateModifierFlags != 0 && ![allAlternateModifierFlags containsIndex:alternateModifierFlags]"}];

        if (v25)
        {
LABEL_13:
          [v25 addIndex:v28];
          continue;
        }
      }

      else if (v25)
      {
        goto LABEL_13;
      }

      v25 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndex:v28];
    }

    v24 = [v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
  }

  while (v24);
LABEL_20:

  v45.receiver = self;
  v45.super_class = UICommand;
  v30 = [(UIMenuElement *)&v45 initWithTitle:v42 image:v41 imageName:v44];
  v31 = v30;
  if (v30)
  {
    target = v30->__target;
    v30->__target = 0;

    v31->_action = a6;
    v31->_fallbackAction = a7;
    objc_storeStrong(&v31->_propertyList, DeepCopy);
    v33 = [v22 copy];
    alternates = v31->_alternates;
    v31->_alternates = v33;

    v35 = [v19 copy];
    discoverabilityTitle = v31->_discoverabilityTitle;
    v31->_discoverabilityTitle = v35;

    *(v31 + 20) = a11;
    *(v31 + 21) = a12;
  }

  return v31;
}

- (UICommand)initWithCommand:(id)a3
{
  v4 = a3;
  v5 = [v4 _imageOrName];
  v6 = [v4 title];
  v7 = [v5 _asMenuElementImage];
  v8 = [v5 _asMenuElementImageName];
  v11.receiver = self;
  v11.super_class = UICommand;
  v9 = [(UIMenuElement *)&v11 initWithTitle:v6 image:v7 imageName:v8];

  if (v9)
  {
    objc_storeStrong(&v9->__target, v4[19]);
    v9->_action = v4[16];
    v9->_fallbackAction = v4[18];
    objc_storeStrong(&v9->super._attributedTitle, v4[1]);
    objc_storeStrong(&v9->super._subtitle, v4[2]);
    objc_storeStrong(&v9->_propertyList, v4[17]);
    objc_storeStrong(&v9->_alternates, v4[9]);
    objc_storeStrong(&v9->_discoverabilityTitle, v4[15]);
    *(v9 + 20) = *(v4 + 20);
    *(v9 + 21) = *(v4 + 21);
    objc_storeStrong(&v9->_selectedImage, v4[14]);
    *(v9 + 22) = *(v4 + 22);
    objc_storeStrong(&v9->super._accessibilityIdentifier, v4[3]);
    v9->super.__preferredDisplayMode = v4[4];
  }

  return v9;
}

- (void)setTitle:(NSString *)title
{
  v3.receiver = self;
  v3.super_class = UICommand;
  [(UIMenuElement *)&v3 _setTitle:title];
}

- (void)setSubtitle:(id)a3
{
  v3.receiver = self;
  v3.super_class = UICommand;
  [(UIMenuElement *)&v3 _setSubtitle:a3];
}

- (void)setImage:(UIImage *)image
{
  v3.receiver = self;
  v3.super_class = UICommand;
  [(UIMenuElement *)&v3 _setImage:image];
}

- (void)_acceptMenuVisit:(id)a3 commandVisit:(id)a4 actionVisit:(id)a5 deferredElementVisit:(id)a6
{
  if (a4)
  {
    (*(a4 + 2))(a4, self);
  }
}

- (BOOL)_acceptBoolMenuVisit:(id)a3 commandVisit:(id)a4 actionVisit:(id)a5
{
  if (a4)
  {
    return (*(a4 + 2))(a4, self);
  }

  else
  {
    return 0;
  }
}

- (void)_acceptMenuVisit:(id)a3 leafVisit:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, self);
  }
}

- (BOOL)_acceptBoolMenuVisit:(id)a3 leafVisit:(id)a4
{
  if (a4)
  {
    return (*(a4 + 2))(a4, self);
  }

  else
  {
    return 0;
  }
}

- (UISPasteVariant)_pasteVariant
{
  v2 = MEMORY[0x1E69DEC00];
  v3 = [(UICommand *)self action];

  return [v2 variantForSelector:v3];
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

- (void)_setLeafAlternates:(id)a3
{
  if (self->_alternates != a3)
  {
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [[v4 alloc] initWithArray:v5 copyItems:1];

    alternates = self->_alternates;
    self->_alternates = v6;
  }
}

- (id)_menuLeafWithKeyboardShortcut:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[UIKeyCommand alloc] _initWithCommand:self keyboardShortcut:v4];
  }

  else
  {
    v6 = [(UICommand *)self _keyboardShortcut];

    if (v6)
    {
      v5 = [[UICommand alloc] initWithCommand:self];
    }

    else
    {
      v5 = self;
    }
  }

  v7 = v5;

  return v7;
}

- (void)setRepeatBehavior:(int64_t)a3
{
  if (*(self + 22) != a3)
  {
    *(self + 22) = a3;
  }
}

- (BOOL)_isDefaultCommand
{
  v2 = [UICommand _originalCommandForAction:self->_action];
  v3 = v2 != 0;

  return v3;
}

- (void)_performAction:(SEL)a3 withSender:(id)a4 target:(id)a5 notifyingStateObservers:(BOOL)a6
{
  v6 = a6;
  v16 = a4;
  v11 = a5;
  objc_storeStrong(&self->_sender, a4);
  if (v6)
  {
    _UIMenuStateObserverableLeafWillPerformAction(self);
  }

  if (self->__useSenderForResolvingTarget)
  {
    v12 = v16;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  if (v11)
  {
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = self;
    }

    [UIApp sendAction:a3 to:v11 from:v14 forEvent:0];
  }

  sender = self->_sender;
  self->_sender = 0;
}

- (void)performWithSender:(id)a3 target:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(UICommand *)self _performAction:[(UICommand *)self action] withSender:v7 target:v6 notifyingStateObservers:1];
}

- (id)_resolvedTargetFromFirstTarget:(id)a3 sender:(id)a4
{
  objc_storeStrong(&self->_sender, a4);
  v7 = a4;
  v8 = a3;
  if (self->__useSenderForResolvingTarget)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  action = self->_action;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = self;
  }

  v12 = v9;
  v13 = [v8 targetForAction:action withSender:v11];

  sender = self->_sender;
  self->_sender = 0;

  return v13;
}

- (id)_resolvedTargetFromFirstTarget:(id)a3 sender:(id)a4 shouldUseFallbackActionOut:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  objc_storeStrong(&self->_sender, a4);
  if (self->__useSenderForResolvingTarget)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = self;
  }

  v14 = [v8 targetForAction:self->_action withSender:v13];
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
    v17 = [v8 targetForAction:? withSender:?];
    v15 = v17;
    if (v17)
    {
      v18 = v17;
      if (a5)
      {
        *a5 = 1;
      }
    }
  }

  sender = self->_sender;
  self->_sender = 0;

  return v15;
}

- (void)_performWithSender:(id)a3 handler:(id)a4
{
  objc_storeStrong(&self->_sender, a3);
  v9 = a3;
  v7 = a4;
  v7[2]();

  sender = self->_sender;
  self->_sender = 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UICommand alloc];

  return [(UICommand *)v4 initWithCommand:self];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (self->__target)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UICommand.m" lineNumber:652 description:@"Commands with explicit targets cannot be encoded."];
  }

  v16.receiver = self;
  v16.super_class = UICommand;
  [(UIMenuElement *)&v16 encodeWithCoder:v5];
  v6 = NSStringFromSelector(self->_action);
  [v5 encodeObject:v6 forKey:@"action"];

  discoverabilityTitle = self->_discoverabilityTitle;
  if (discoverabilityTitle)
  {
    [v5 encodeObject:discoverabilityTitle forKey:@"discoverabilityTitle"];
  }

  propertyList = self->_propertyList;
  if (propertyList)
  {
    [v5 encodeObject:propertyList forKey:@"propertyList"];
  }

  if ([(NSArray *)self->_alternates count])
  {
    v9 = [(UICommand *)self alternates];
    if ([v9 count])
    {
      [v5 encodeObject:v9 forKey:@"alternates"];
    }

    else
    {
      v10 = [(UICommand *)self _storedLeafAlternates];
      [v5 encodeObject:v10 forKey:@"leafAlternates"];
    }
  }

  v11 = *(self + 20);
  if (v11)
  {
    [v5 encodeInteger:v11 forKey:@"attributes"];
  }

  v12 = *(self + 21);
  if (v12)
  {
    [v5 encodeInteger:v12 forKey:@"states"];
  }

  selectedImage = self->_selectedImage;
  if (selectedImage)
  {
    [v5 encodeObject:selectedImage forKey:@"selectedImage"];
  }

  v14 = *(self + 22);
  if (v14)
  {
    [v5 encodeInteger:v14 forKey:@"repeatBehavior"];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = v4;
    v7 = [v6 action];
    if (v7 == [(UICommand *)self action])
    {
      v8 = [v6 propertyList];
      v9 = [(UICommand *)self propertyList];
      v10 = v8;
      v11 = v9;
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

- (void)_appendDescriptionComponentsToDescription:(id)a3
{
  v8 = a3;
  v4 = [(UIMenuElement *)self title];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(UIMenuElement *)self title];
    [v8 appendFormat:@"; title = %@", v6];
  }

  if ([(UICommand *)self action])
  {
    v7 = NSStringFromSelector([(UICommand *)self action]);
    [v8 appendFormat:@"; action: %@", v7];
  }
}

- (void)_setState:(int64_t)a3 notifyingObservers:(BOOL)a4
{
  if (*(self + 21) != a3)
  {
    *(self + 21) = a3;
    if (a4)
    {
      _UIMenuStateObserverableLeafStateDidChange(self);
    }
  }
}

+ (id)_defaultCommandForAction:(SEL)a3
{
  v4 = +[_UIDefaultCommands sharedCommands];
  v5 = [(_UIDefaultCommands *)v4 defaultCommandForAction:a3 wantsCopy:1];

  return v5;
}

+ (id)_originalCommandForAction:(SEL)a3
{
  v4 = +[_UIDefaultCommands sharedCommands];
  v5 = [(_UIDefaultCommands *)v4 defaultCommandForAction:a3 wantsCopy:0];

  return v5;
}

@end