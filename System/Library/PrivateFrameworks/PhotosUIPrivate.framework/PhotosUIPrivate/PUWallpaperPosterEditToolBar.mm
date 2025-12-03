@interface PUWallpaperPosterEditToolBar
- (PUWallpaperPosterEditToolBar)initWithFrame:(CGRect)frame;
- (PUWallpaperPosterEditToolbarDelegate)delegate;
- (id)_createActionButton;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)viewForMenuElementIdentifier:(id)identifier;
- (void)_removeMenuElement:(id)element fromButton:(id)button;
- (void)_setMenuElement:(id)element onButton:(id)button;
- (void)_setMenuElements:(id)elements oldMenuElements:(id)menuElements onButtonOne:(id)one onButtonTwo:(id)two;
- (void)_setupView;
- (void)setLeadingMenuElements:(id)elements;
- (void)setTrailingMenuElements:(id)elements;
@end

@implementation PUWallpaperPosterEditToolBar

- (PUWallpaperPosterEditToolbarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = PUWallpaperPosterEditToolBar;
  v4 = [(PUWallpaperPosterEditToolBar *)&v6 hitTest:event withEvent:test.x, test.y];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = 0;
  }

  return v4;
}

- (void)_removeMenuElement:(id)element fromButton:(id)button
{
  elementCopy = element;
  buttonCopy = button;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [buttonCopy setMenu:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [buttonCopy removeAction:elementCopy forControlEvents:0x2000];
    }
  }
}

- (void)_setMenuElement:(id)element onButton:(id)button
{
  elementCopy = element;
  buttonCopy = button;
  image = [elementCopy image];
  [buttonCopy setImage:image forState:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [buttonCopy setShowsMenuAsPrimaryAction:1];
    [buttonCopy setMenu:elementCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [buttonCopy setShowsMenuAsPrimaryAction:0];
      [buttonCopy setMenu:0];
      [buttonCopy addAction:elementCopy forControlEvents:0x2000];
    }
  }
}

- (void)_setMenuElements:(id)elements oldMenuElements:(id)menuElements onButtonOne:(id)one onButtonTwo:(id)two
{
  elementsCopy = elements;
  menuElementsCopy = menuElements;
  oneCopy = one;
  twoCopy = two;
  firstObject = [menuElementsCopy firstObject];
  if ([menuElementsCopy count] < 2)
  {
    v14 = 0;
    if (!firstObject)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = [menuElementsCopy objectAtIndex:1];
  if (firstObject)
  {
LABEL_5:
    [(PUWallpaperPosterEditToolBar *)self _removeMenuElement:firstObject fromButton:oneCopy];
  }

LABEL_6:
  if (v14)
  {
    [(PUWallpaperPosterEditToolBar *)self _removeMenuElement:v14 fromButton:twoCopy];
  }

  firstObject2 = [elementsCopy firstObject];
  if ([elementsCopy count] < 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = [elementsCopy objectAtIndex:1];
  }

  [oneCopy setHidden:firstObject2 == 0];
  [twoCopy setHidden:v16 == 0];
  if (firstObject2)
  {
    [(PUWallpaperPosterEditToolBar *)self _setMenuElement:firstObject2 onButton:oneCopy];
  }

  if (v16)
  {
    [(PUWallpaperPosterEditToolBar *)self _setMenuElement:v16 onButton:twoCopy];
  }
}

- (id)viewForMenuElementIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(NSArray *)self->_leadingMenuElements count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSArray *)self->_leadingMenuElements objectAtIndex:v5];
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      identifier = [v7 identifier];

      if (identifier == identifierCopy)
      {
        break;
      }

      if (++v5 >= [(NSArray *)self->_leadingMenuElements count])
      {
        goto LABEL_9;
      }
    }

    if (v5)
    {
      [(PUWallpaperPosterEditToolBar *)self secondActionButton];
    }

    else
    {
      [(PUWallpaperPosterEditToolBar *)self firstActionButton];
    }
  }

  else
  {
LABEL_9:
    if (![(NSArray *)self->_trailingMenuElements count])
    {
LABEL_17:
      v11 = 0;
      goto LABEL_25;
    }

    v9 = 0;
    while (1)
    {
      v6 = [(NSArray *)self->_trailingMenuElements objectAtIndex:v9];
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      identifier2 = [v7 identifier];

      if (identifier2 == identifierCopy)
      {
        break;
      }

      if (++v9 >= [(NSArray *)self->_trailingMenuElements count])
      {
        goto LABEL_17;
      }
    }

    if (v9)
    {
      [(PUWallpaperPosterEditToolBar *)self fourthActionButton];
    }

    else
    {
      [(PUWallpaperPosterEditToolBar *)self thirdActionButton];
    }
  }
  v12 = ;
  v11 = v12;

LABEL_25:

  return v11;
}

- (void)setTrailingMenuElements:(id)elements
{
  elementsCopy = elements;
  trailingMenuElements = self->_trailingMenuElements;
  if (trailingMenuElements != elementsCopy)
  {
    v9 = elementsCopy;
    thirdActionButton = [(PUWallpaperPosterEditToolBar *)self thirdActionButton];
    fourthActionButton = [(PUWallpaperPosterEditToolBar *)self fourthActionButton];
    [(PUWallpaperPosterEditToolBar *)self _setMenuElements:v9 oldMenuElements:trailingMenuElements onButtonOne:thirdActionButton onButtonTwo:fourthActionButton];

    objc_storeStrong(&self->_trailingMenuElements, elements);
    elementsCopy = v9;
  }
}

- (void)setLeadingMenuElements:(id)elements
{
  elementsCopy = elements;
  leadingMenuElements = self->_leadingMenuElements;
  if (leadingMenuElements != elementsCopy)
  {
    v9 = elementsCopy;
    firstActionButton = [(PUWallpaperPosterEditToolBar *)self firstActionButton];
    secondActionButton = [(PUWallpaperPosterEditToolBar *)self secondActionButton];
    [(PUWallpaperPosterEditToolBar *)self _setMenuElements:v9 oldMenuElements:leadingMenuElements onButtonOne:firstActionButton onButtonTwo:secondActionButton];

    objc_storeStrong(&self->_leadingMenuElements, elements);
    elementsCopy = v9;
  }
}

- (id)_createActionButton
{
  v3 = [MEMORY[0x1E69DC738] buttonWithType:0];
  v4 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:20.0];
  [v3 setPreferredSymbolConfiguration:v4 forImageInState:0];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v3 setTintColor:whiteColor];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PUWallpaperPosterEditToolBar *)self addSubview:v3];

  return v3;
}

- (void)_setupView
{
  v49[12] = *MEMORY[0x1E69E9840];
  _createActionButton = [(PUWallpaperPosterEditToolBar *)self _createActionButton];
  firstActionButton = self->_firstActionButton;
  self->_firstActionButton = _createActionButton;

  _createActionButton2 = [(PUWallpaperPosterEditToolBar *)self _createActionButton];
  secondActionButton = self->_secondActionButton;
  self->_secondActionButton = _createActionButton2;

  _createActionButton3 = [(PUWallpaperPosterEditToolBar *)self _createActionButton];
  thirdActionButton = self->_thirdActionButton;
  self->_thirdActionButton = _createActionButton3;

  _createActionButton4 = [(PUWallpaperPosterEditToolBar *)self _createActionButton];
  fourthActionButton = self->_fourthActionButton;
  self->_fourthActionButton = _createActionButton4;

  v34 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UIButton *)self->_firstActionButton leadingAnchor];
  leadingAnchor2 = [(PUWallpaperPosterEditToolBar *)self leadingAnchor];
  v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v49[0] = v46;
  bottomAnchor = [(UIButton *)self->_firstActionButton bottomAnchor];
  bottomAnchor2 = [(PUWallpaperPosterEditToolBar *)self bottomAnchor];
  v43 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v49[1] = v43;
  topAnchor = [(UIButton *)self->_firstActionButton topAnchor];
  topAnchor2 = [(PUWallpaperPosterEditToolBar *)self topAnchor];
  v40 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v49[2] = v40;
  leadingAnchor3 = [(UIButton *)self->_secondActionButton leadingAnchor];
  trailingAnchor = [(UIButton *)self->_firstActionButton trailingAnchor];
  v37 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:20.0];
  v49[3] = v37;
  bottomAnchor3 = [(UIButton *)self->_secondActionButton bottomAnchor];
  bottomAnchor4 = [(PUWallpaperPosterEditToolBar *)self bottomAnchor];
  v33 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v49[4] = v33;
  topAnchor3 = [(UIButton *)self->_secondActionButton topAnchor];
  topAnchor4 = [(PUWallpaperPosterEditToolBar *)self topAnchor];
  v30 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v49[5] = v30;
  trailingAnchor2 = [(UIButton *)self->_fourthActionButton trailingAnchor];
  trailingAnchor3 = [(PUWallpaperPosterEditToolBar *)self trailingAnchor];
  v27 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-20.0];
  v49[6] = v27;
  bottomAnchor5 = [(UIButton *)self->_fourthActionButton bottomAnchor];
  bottomAnchor6 = [(PUWallpaperPosterEditToolBar *)self bottomAnchor];
  v24 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v49[7] = v24;
  topAnchor5 = [(UIButton *)self->_fourthActionButton topAnchor];
  topAnchor6 = [(PUWallpaperPosterEditToolBar *)self topAnchor];
  v21 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v49[8] = v21;
  trailingAnchor4 = [(UIButton *)self->_thirdActionButton trailingAnchor];
  leadingAnchor4 = [(UIButton *)self->_fourthActionButton leadingAnchor];
  v13 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor4 constant:-20.0];
  v49[9] = v13;
  bottomAnchor7 = [(UIButton *)self->_thirdActionButton bottomAnchor];
  bottomAnchor8 = [(PUWallpaperPosterEditToolBar *)self bottomAnchor];
  v16 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v49[10] = v16;
  topAnchor7 = [(UIButton *)self->_thirdActionButton topAnchor];
  topAnchor8 = [(PUWallpaperPosterEditToolBar *)self topAnchor];
  v19 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v49[11] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:12];
  [v34 activateConstraints:v20];
}

- (PUWallpaperPosterEditToolBar)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PUWallpaperPosterEditToolBar;
  v3 = [(PUWallpaperPosterEditToolBar *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PUWallpaperPosterEditToolBar *)v3 _setupView];
  }

  return v4;
}

@end