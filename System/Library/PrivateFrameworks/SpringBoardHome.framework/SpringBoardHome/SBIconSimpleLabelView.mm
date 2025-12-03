@interface SBIconSimpleLabelView
- (SBIconLabelImageParameters)imageParameters;
- (SBIconView)iconView;
- (void)updateIconLabelWithSettings:(id)settings imageParameters:(id)parameters;
@end

@implementation SBIconSimpleLabelView

- (SBIconView)iconView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconView);

  return WeakRetained;
}

- (SBIconLabelImageParameters)imageParameters
{
  image = [(SBIconSimpleLabelView *)self image];
  parameters = [image parameters];

  return parameters;
}

- (void)updateIconLabelWithSettings:(id)settings imageParameters:(id)parameters
{
  v17[1] = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  if (parametersCopy)
  {
    image = [(SBIconSimpleLabelView *)self image];
    parameters = [image parameters];
    v8 = parameters;
    if (!image || ([parameters isEqual:parametersCopy] & 1) == 0)
    {
      iconView = [(SBIconSimpleLabelView *)self iconView];
      v10 = iconView;
      if (iconView)
      {
        v11 = [iconView labelImageWithParameters:parametersCopy];
      }

      else
      {
        v11 = 0;
      }

      [(SBIconSimpleLabelView *)self setImage:v11];
    }

    if ([parametersCopy isColorspaceGrayscale])
    {
      v12 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
      textColor = [parametersCopy textColor];
      [v12 setValue:objc_msgSend(textColor forKey:{"CGColor"), @"inputColor"}];

      layer = [(SBIconSimpleLabelView *)self layer];
      v17[0] = v12;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      [layer setFilters:v15];
    }

    else
    {
      layer2 = [(SBIconSimpleLabelView *)self layer];
      [layer2 setFilters:0];
    }
  }

  else
  {
    [(SBIconSimpleLabelView *)self setImage:0];
  }
}

@end