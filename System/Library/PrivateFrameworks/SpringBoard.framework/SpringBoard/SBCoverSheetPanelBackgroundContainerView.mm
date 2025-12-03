@interface SBCoverSheetPanelBackgroundContainerView
- (void)_setPresentationValue:(id)value forKey:(id)key;
@end

@implementation SBCoverSheetPanelBackgroundContainerView

- (void)_setPresentationValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v8 = valueCopy;
  v9 = v8;
  if ([keyCopy isEqualToString:@"position"])
  {
    [v8 CGPointValue];
    v11 = v10;
    v13 = v12;
    [(SBCoverSheetPanelBackgroundContainerView *)self bounds];
    if (v13 >= v14 * 0.5)
    {
      v15 = v14 * 0.5;
    }

    else
    {
      v15 = v13;
    }

    v9 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v11, v15}];
  }

  v16.receiver = self;
  v16.super_class = SBCoverSheetPanelBackgroundContainerView;
  [(SBCoverSheetPanelBackgroundContainerView *)&v16 _setPresentationValue:v9 forKey:keyCopy];
}

@end