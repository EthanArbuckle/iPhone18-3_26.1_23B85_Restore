@interface _SMUContentUnavailableView
- (id)configurationForType:(int64_t)a3;
- (void)smu_updateWithType:(int64_t)a3 text:(id)a4 secondaryText:(id)a5 image:(id)a6 buttonTitle:(id)a7 buttonPrimaryAction:(id)a8;
@end

@implementation _SMUContentUnavailableView

- (void)smu_updateWithType:(int64_t)a3 text:(id)a4 secondaryText:(id)a5 image:(id)a6 buttonTitle:(id)a7 buttonPrimaryAction:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v22 = [(_SMUContentUnavailableView *)self configurationForType:a3];
  [v22 setText:v18];

  [v22 setSecondaryText:v17];
  [v22 setImage:v16];

  v19 = [v22 buttonProperties];
  v20 = [v19 configuration];
  [v20 setTitle:v15];

  v21 = [v22 buttonProperties];
  [v21 setPrimaryAction:v14];

  [(UIContentUnavailableView *)self setConfiguration:v22];
}

- (id)configurationForType:(int64_t)a3
{
  switch(a3)
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