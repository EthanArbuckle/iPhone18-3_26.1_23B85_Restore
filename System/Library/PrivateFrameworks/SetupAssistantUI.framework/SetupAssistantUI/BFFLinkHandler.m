@interface BFFLinkHandler
- (BFFLinkHandler)init;
- (void)buttonPressed:(id)a3;
@end

@implementation BFFLinkHandler

- (BFFLinkHandler)init
{
  v10.receiver = self;
  v10.super_class = BFFLinkHandler;
  v2 = [(BFFLinkHandler *)&v10 init];
  v3 = objc_alloc_init(MEMORY[0x277D4DA70]);
  featureFlags = v2->_featureFlags;
  v2->_featureFlags = v3;

  v5 = [MEMORY[0x277D75220] buttonWithType:1];
  button = v2->_button;
  v2->_button = v5;

  v7 = [(UIButton *)v2->_button titleLabel];
  [v7 setAdjustsFontSizeToFitWidth:1];
  if ([(BuddyFeatureFlags *)v2->_featureFlags isSolariumEnabled])
  {
    v8 = 4;
  }

  else
  {
    v8 = 1;
  }

  [v7 setTextAlignment:v8];
  [v7 setNumberOfLines:0];
  [(UIButton *)v2->_button setExclusiveTouch:1];
  [(UIButton *)v2->_button addTarget:v2 action:sel_buttonPressed_ forControlEvents:64];

  return v2;
}

- (void)buttonPressed:(id)a3
{
  v4 = [(BFFLinkHandler *)self handler];

  if (v4)
  {
    v5 = [(BFFLinkHandler *)self handler];
    v5[2]();
  }
}

@end