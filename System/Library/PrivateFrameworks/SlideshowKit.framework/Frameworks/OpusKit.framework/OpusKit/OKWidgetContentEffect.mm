@interface OKWidgetContentEffect
+ (id)supportedSettings;
- (OKWidgetContentEffect)init;
- (OKWidgetContentEffect)initWithSettings:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)applySettings;
- (void)applySettingsIfNeeded;
- (void)dealloc;
- (void)pauseAnimation;
- (void)prepareContentEffectWithView:(id)a3;
- (void)resumeAnimation;
- (void)stopAnimation;
@end

@implementation OKWidgetContentEffect

- (OKWidgetContentEffect)init
{
  v4.receiver = self;
  v4.super_class = OKWidgetContentEffect;
  v2 = [(OKWidgetContentEffect *)&v4 init];
  if (v2)
  {
    v2->_uuid = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", objc_msgSend(objc_opt_class(), "animationKeyPrefix"), objc_msgSend(MEMORY[0x277CCACA8], "generateUUID")];
    v2->_animation = 0;
    objc_storeWeak(&v2->_animatedView, 0);
    *&v2->_loop = 16777472;
    [objc_msgSend(+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
  }

  return v2;
}

- (OKWidgetContentEffect)initWithSettings:(id)a3
{
  v4 = [(OKWidgetContentEffect *)self init];
  if (v4)
  {
    v4->_settings = a3;
  }

  return v4;
}

- (void)dealloc
{
  uuid = self->_uuid;
  if (uuid)
  {

    self->_uuid = 0;
  }

  animation = self->_animation;
  if (animation)
  {

    self->_animation = 0;
  }

  settings = self->_settings;
  if (settings)
  {

    self->_settings = 0;
  }

  objc_storeWeak(&self->_animatedView, 0);
  [objc_msgSend(+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
  v6.receiver = self;
  v6.super_class = OKWidgetContentEffect;
  [(OKWidgetContentEffect *)&v6 dealloc];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  if ([a3 isEqual:{objc_msgSend(-[OFUIView layer](-[OKWidgetContentEffect animatedView](self, "animatedView"), "layer"), "animationForKey:", self->_uuid)}])
  {
    [(CAAnimation *)[(OKWidgetContentEffect *)self animation] setDelegate:0];
    if (v4 && self->_loop && self->_animation)
    {
      [(CAAnimation *)[(OKWidgetContentEffect *)self animation] setDelegate:self];
      v6 = [(OFUIView *)[(OKWidgetContentEffect *)self animatedView] layer];
      animation = self->_animation;
      uuid = self->_uuid;

      [v6 addAnimation:animation forKey:uuid];
    }
  }
}

+ (id)supportedSettings
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v8[0] = @"loop";
  v6[0] = @"type";
  v6[1] = @"default";
  v7[0] = &unk_287AF1610;
  v7[1] = MEMORY[0x277CBEC28];
  v9[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v8[1] = @"autoplay";
  v4[0] = @"type";
  v4[1] = @"default";
  v5[0] = &unk_287AF1610;
  v5[1] = MEMORY[0x277CBEC38];
  v9[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v9, v8, 2)}];
  return v2;
}

- (void)applySettingsIfNeeded
{
  if (self->_needsApplySettings)
  {
    [(OKWidgetContentEffect *)self applySettings];
  }
}

- (void)applySettings
{
  v3 = [(NSDictionary *)self->_settings objectForKey:@"loop"];
  if (v3)
  {
    -[OKWidgetContentEffect setLoop:](self, "setLoop:", [v3 BOOLValue]);
  }

  v4 = [(NSDictionary *)self->_settings objectForKey:@"autoplay"];
  if (v4)
  {
    v5 = [v4 BOOLValue];

    [(OKWidgetContentEffect *)self setAutoplay:v5];
  }
}

- (void)prepareContentEffectWithView:(id)a3
{
  [(OKWidgetContentEffect *)self setAnimatedView:a3];
  [(CAAnimation *)[(OKWidgetContentEffect *)self animation] setDelegate:self];
  if (self->_animation)
  {
    v4 = [(OFUIView *)[(OKWidgetContentEffect *)self animatedView] layer];
    animation = self->_animation;
    uuid = self->_uuid;

    [v4 addAnimation:animation forKey:uuid];
  }
}

- (void)pauseAnimation
{
  if (!self->_isPaused)
  {
    self->_isPaused = 1;
  }
}

- (void)resumeAnimation
{
  if (self->_isPaused)
  {
    self->_isPaused = 0;
  }
}

- (void)stopAnimation
{
  [(CAAnimation *)[(OKWidgetContentEffect *)self animation] setDelegate:0];
  v3 = [(OFUIView *)[(OKWidgetContentEffect *)self animatedView] layer];
  uuid = self->_uuid;

  [v3 removeAnimationForKey:uuid];
}

@end