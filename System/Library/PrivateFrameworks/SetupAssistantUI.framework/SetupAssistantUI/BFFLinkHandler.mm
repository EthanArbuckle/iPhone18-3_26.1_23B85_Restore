@interface BFFLinkHandler
- (BFFLinkHandler)init;
- (void)buttonPressed:(id)pressed;
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

  titleLabel = [(UIButton *)v2->_button titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:1];
  if ([(BuddyFeatureFlags *)v2->_featureFlags isSolariumEnabled])
  {
    v8 = 4;
  }

  else
  {
    v8 = 1;
  }

  [titleLabel setTextAlignment:v8];
  [titleLabel setNumberOfLines:0];
  [(UIButton *)v2->_button setExclusiveTouch:1];
  [(UIButton *)v2->_button addTarget:v2 action:sel_buttonPressed_ forControlEvents:64];

  return v2;
}

- (void)buttonPressed:(id)pressed
{
  handler = [(BFFLinkHandler *)self handler];

  if (handler)
  {
    handler2 = [(BFFLinkHandler *)self handler];
    handler2[2]();
  }
}

@end