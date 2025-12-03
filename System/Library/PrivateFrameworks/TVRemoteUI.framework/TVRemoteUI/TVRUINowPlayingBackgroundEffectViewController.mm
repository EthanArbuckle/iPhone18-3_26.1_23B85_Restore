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
  view = [(TVRUINowPlayingBackgroundEffectViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  _configureContentView = [(TVRUINowPlayingBackgroundEffectViewController *)self _configureContentView];
  [(TVRUINowPlayingBackgroundEffectViewController *)self setContentView:_configureContentView];
}

- (id)_configureContentView
{
  v23[4] = *MEMORY[0x277D85DE8];
  view = [(TVRUINowPlayingBackgroundEffectViewController *)self view];
  v4 = objc_alloc(MEMORY[0x277D75D68]);
  visualEffect = [(TVRUINowPlayingBackgroundEffectViewController *)self visualEffect];
  v6 = [v4 initWithEffect:visualEffect];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v6];
  v17 = MEMORY[0x277CCAAD0];
  leadingAnchor = [v6 leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v23[0] = v20;
  trailingAnchor = [v6 trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v23[1] = v7;
  topAnchor = [v6 topAnchor];
  topAnchor2 = [view topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v23[2] = v10;
  bottomAnchor = [v6 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v23[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  [v17 activateConstraints:v14];

  contentView = [v6 contentView];

  return contentView;
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