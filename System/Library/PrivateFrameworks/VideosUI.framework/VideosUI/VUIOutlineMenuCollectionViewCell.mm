@interface VUIOutlineMenuCollectionViewCell
- (void)_updateViewConfigurationsWithState:(unint64_t)a3;
- (void)prepareForReuse;
- (void)setImageName:(id)a3;
- (void)setTitle:(id)a3;
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

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);

  [(VUIOutlineMenuCollectionViewCell *)self _setNeedsConfigurationStateUpdate];
}

- (void)setImageName:(id)a3
{
  objc_storeStrong(&self->_imageName, a3);

  [(VUIOutlineMenuCollectionViewCell *)self _setNeedsConfigurationStateUpdate];
}

- (void)_updateViewConfigurationsWithState:(unint64_t)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VUIOutlineMenuCollectionViewCell;
  [(VUIOutlineMenuCollectionViewCell *)&v10 _updateViewConfigurationsWithState:a3];
  v4 = [MEMORY[0x1E69DD388] outlineCellConfiguration];
  if (self->_shouldAppearAsHeader)
  {
    v5 = [MEMORY[0x1E69DD388] outlineRootParentCellConfiguration];

    v6 = [objc_alloc(MEMORY[0x1E69DD3D0]) initWithCellSelectionTogglesExpansionState:1];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(VUIOutlineMenuCollectionViewCell *)self setTrailingAccessoryConfigurations:v7];
    v4 = v5;
  }

  else
  {
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:self->_imageName];
    v7 = [v4 imageView];
    [v7 setImage:v6];
  }

  title = self->_title;
  v9 = [v4 textLabel];
  [v9 setText:title];

  [(VUIOutlineMenuCollectionViewCell *)self _setContentViewConfiguration:v4];
}

@end