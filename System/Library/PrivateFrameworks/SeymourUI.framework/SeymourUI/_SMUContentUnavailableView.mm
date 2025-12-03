@interface _SMUContentUnavailableView
- (id)configurationForType:(int64_t)type;
- (void)smu_updateWithType:(int64_t)type text:(id)text secondaryText:(id)secondaryText image:(id)image buttonTitle:(id)title buttonPrimaryAction:(id)action;
@end

@implementation _SMUContentUnavailableView

- (void)smu_updateWithType:(int64_t)type text:(id)text secondaryText:(id)secondaryText image:(id)image buttonTitle:(id)title buttonPrimaryAction:(id)action
{
  actionCopy = action;
  titleCopy = title;
  imageCopy = image;
  secondaryTextCopy = secondaryText;
  textCopy = text;
  v22 = [(_SMUContentUnavailableView *)self configurationForType:type];
  [v22 setText:textCopy];

  [v22 setSecondaryText:secondaryTextCopy];
  [v22 setImage:imageCopy];

  buttonProperties = [v22 buttonProperties];
  configuration = [buttonProperties configuration];
  [configuration setTitle:titleCopy];

  buttonProperties2 = [v22 buttonProperties];
  [buttonProperties2 setPrimaryAction:actionCopy];

  [(UIContentUnavailableView *)self setConfiguration:v22];
}

- (id)configurationForType:(int64_t)type
{
  switch(type)
  {
    case 2:
      self = [MEMORY[0x277D75390] loadingConfiguration];
      break;
    case 1:
      self = [MEMORY[0x277D75390] emptyProminentConfiguration];
      break;
    case 0:
      self = [MEMORY[0x277D75390] emptyConfiguration];
      break;
  }

  return self;
}

@end