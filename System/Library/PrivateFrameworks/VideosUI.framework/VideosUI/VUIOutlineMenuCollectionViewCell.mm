@interface VUIOutlineMenuCollectionViewCell
- (void)_updateViewConfigurationsWithState:(unint64_t)state;
- (void)prepareForReuse;
- (void)setImageName:(id)name;
- (void)setTitle:(id)title;
@end

@implementation VUIOutlineMenuCollectionViewCell

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = VUIOutlineMenuCollectionViewCell;
  [(VUIOutlineMenuCollectionViewCell *)&v5 prepareForReuse];
  title = self->_title;
  self->_title = 0;

  imageName = self->_imageName;
  self->_imageName = 0;

  self->_shouldAppearAsHeader = 0;
  [(VUIOutlineMenuCollectionViewCell *)self setTrailingAccessoryConfigurations:MEMORY[0x1E695E0F0]];
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);

  [(VUIOutlineMenuCollectionViewCell *)self _setNeedsConfigurationStateUpdate];
}

- (void)setImageName:(id)name
{
  objc_storeStrong(&self->_imageName, name);

  [(VUIOutlineMenuCollectionViewCell *)self _setNeedsConfigurationStateUpdate];
}

- (void)_updateViewConfigurationsWithState:(unint64_t)state
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VUIOutlineMenuCollectionViewCell;
  [(VUIOutlineMenuCollectionViewCell *)&v10 _updateViewConfigurationsWithState:state];
  outlineCellConfiguration = [MEMORY[0x1E69DD388] outlineCellConfiguration];
  if (self->_shouldAppearAsHeader)
  {
    outlineRootParentCellConfiguration = [MEMORY[0x1E69DD388] outlineRootParentCellConfiguration];

    v6 = [objc_alloc(MEMORY[0x1E69DD3D0]) initWithCellSelectionTogglesExpansionState:1];
    v11[0] = v6;
    imageView = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(VUIOutlineMenuCollectionViewCell *)self setTrailingAccessoryConfigurations:imageView];
    outlineCellConfiguration = outlineRootParentCellConfiguration;
  }

  else
  {
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:self->_imageName];
    imageView = [outlineCellConfiguration imageView];
    [imageView setImage:v6];
  }

  title = self->_title;
  textLabel = [outlineCellConfiguration textLabel];
  [textLabel setText:title];

  [(VUIOutlineMenuCollectionViewCell *)self _setContentViewConfiguration:outlineCellConfiguration];
}

@end