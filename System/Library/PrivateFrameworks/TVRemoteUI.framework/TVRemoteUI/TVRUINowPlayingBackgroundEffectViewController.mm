@interface TVRUINowPlayingBackgroundEffectViewController
- (UIVisualEffect)visualEffect;
- (id)_configureContentView;
- (void)viewDidLoad;
@end

@implementation TVRUINowPlayingBackgroundEffectViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = TVRUINowPlayingBackgroundEffectViewController;
  [(TVRUINowPlayingBackgroundEffectViewController *)&v5 viewDidLoad];
  v3 = [(TVRUINowPlayingBackgroundEffectViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(TVRUINowPlayingBackgroundEffectViewController *)self _configureContentView];
  [(TVRUINowPlayingBackgroundEffectViewController *)self setContentView:v4];
}

- (id)_configureContentView
{
  v23[4] = *MEMORY[0x277D85DE8];
  v3 = [(TVRUINowPlayingBackgroundEffectViewController *)self view];
  v4 = objc_alloc(MEMORY[0x277D75D68]);
  v5 = [(TVRUINowPlayingBackgroundEffectViewController *)self visualEffect];
  v6 = [v4 initWithEffect:v5];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v6];
  v17 = MEMORY[0x277CCAAD0];
  v22 = [v6 leadingAnchor];
  v21 = [v3 leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v23[0] = v20;
  v19 = [v6 trailingAnchor];
  v18 = [v3 trailingAnchor];
  v7 = [v19 constraintEqualToAnchor:v18];
  v23[1] = v7;
  v8 = [v6 topAnchor];
  v9 = [v3 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v23[2] = v10;
  v11 = [v6 bottomAnchor];
  v12 = [v3 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v23[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  [v17 activateConstraints:v14];

  v15 = [v6 contentView];

  return v15;
}

- (UIVisualEffect)visualEffect
{
  visualEffect = self->_visualEffect;
  if (!visualEffect)
  {
    v4 = [MEMORY[0x277D75210] effectWithStyle:2];
    v5 = self->_visualEffect;
    self->_visualEffect = v4;

    visualEffect = self->_visualEffect;
  }

  return visualEffect;
}

@end