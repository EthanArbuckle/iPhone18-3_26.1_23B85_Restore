@interface OKWidgetSpriteEmitterViewProxy
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (BOOL)prepareForDisplay:(BOOL)display;
- (BOOL)prepareForUnload:(BOOL)unload;
- (BOOL)prepareForWarmup:(BOOL)warmup;
- (OKWidgetSpriteEmitterViewProxy)initWithWidget:(id)widget;
- (id)valueForUndefinedKey:(id)key;
- (void)dealloc;
- (void)layoutSubviews;
- (void)loadEmitterIfNeeded;
- (void)setAntialiasing:(BOOL)antialiasing;
- (void)setSettingBackgroundColor:(id)color;
- (void)setSettingEmitterResource:(id)resource;
- (void)setSettingParticuleResource:(id)resource;
- (void)unloadEmitter;
- (void)updateEmitter;
@end

@implementation OKWidgetSpriteEmitterViewProxy

- (OKWidgetSpriteEmitterViewProxy)initWithWidget:(id)widget
{
  v11.receiver = self;
  v11.super_class = OKWidgetSpriteEmitterViewProxy;
  v3 = [(OKWidgetViewProxy *)&v11 initWithWidget:widget];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CDCFA8]);
    [(OFUIView *)[(OKWidgetViewProxy *)v3 contentView] bounds];
    v5 = [v4 initWithFrame:?];
    v3->_skView = v5;
    [-[SKView layer](v5 "layer")];
    [(SKView *)v3->_skView setAutoresizingMask:18];
    v6 = objc_alloc(MEMORY[0x277CDCF68]);
    [(OFUIView *)[(OKWidgetViewProxy *)v3 contentView] bounds];
    v9 = [v6 initWithSize:{v7, v8}];
    [v9 setScaleMode:3];
    [(SKView *)v3->_skView presentScene:v9];

    [(OFUIView *)[(OKWidgetViewProxy *)v3 contentView] addSubview:v3->_skView];
    v3->_emitterResourceName = 0;
    v3->_emitterNode = 0;
  }

  return v3;
}

- (void)dealloc
{
  skView = self->_skView;
  if (skView)
  {

    self->_skView = 0;
  }

  emitterResourceName = self->_emitterResourceName;
  if (emitterResourceName)
  {

    self->_emitterResourceName = 0;
  }

  particuleResourceName = self->_particuleResourceName;
  if (particuleResourceName)
  {

    self->_particuleResourceName = 0;
  }

  emitterNode = self->_emitterNode;
  if (emitterNode)
  {

    self->_emitterNode = 0;
  }

  particuleTexture = self->_particuleTexture;
  if (particuleTexture)
  {

    self->_particuleTexture = 0;
  }

  v8.receiver = self;
  v8.super_class = OKWidgetSpriteEmitterViewProxy;
  [(OKWidgetView *)&v8 dealloc];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = OKWidgetSpriteEmitterViewProxy;
  [(OKWidgetViewProxy *)&v8 layoutSubviews];
  [(OFUIView *)[(OKWidgetViewProxy *)self contentView] bounds];
  [(SKScene *)[(SKView *)self->_skView scene] setSize:v3, v4];
  if (self->_emitterNode)
  {
    [(OFUIView *)[(OKWidgetViewProxy *)self contentView] bounds];
    v6 = v5 * 0.5;
    [(OFUIView *)[(OKWidgetViewProxy *)self contentView] bounds];
    [(SKEmitterNode *)self->_emitterNode setPosition:v6, v7 * 0.5];
  }
}

+ (id)supportedSettings
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___OKWidgetSpriteEmitterViewProxy;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v9[0] = @"emitterResource";
  v7[0] = @"type";
  v7[1] = @"default";
  v8[0] = &unk_287AF15C8;
  v8[1] = [MEMORY[0x277CBEB68] null];
  v10[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v9[1] = @"particuleResource";
  v5[1] = @"default";
  v6[0] = &unk_287AF15C8;
  v5[0] = @"type";
  v6[1] = [MEMORY[0x277CBEB68] null];
  v10[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v10, v9, 2)}];
  return v2;
}

- (id)valueForUndefinedKey:(id)key
{
  v4.receiver = self;
  v4.super_class = OKWidgetSpriteEmitterViewProxy;
  return [(OKWidgetViewProxy *)&v4 valueForUndefinedKey:key];
}

- (void)setSettingBackgroundColor:(id)color
{
  scene = [(SKView *)self->_skView scene];

  [(SKScene *)scene setBackgroundColor:color];
}

- (void)setSettingParticuleResource:(id)resource
{
  if (![(NSString *)self->_particuleResourceName isEqualToString:?])
  {
    particuleTexture = self->_particuleTexture;
    if (particuleTexture)
    {

      self->_particuleTexture = 0;
    }

    [(OKWidgetSpriteEmitterViewProxy *)self setParticuleResourceName:resource];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__OKWidgetSpriteEmitterViewProxy_setSettingParticuleResource___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"reloadEmitter"];
  }
}

uint64_t __62__OKWidgetSpriteEmitterViewProxy_setSettingParticuleResource___block_invoke(uint64_t a1)
{
  [*(a1 + 32) unloadEmitter];
  v2 = *(a1 + 32);

  return [v2 updateEmitter];
}

- (void)setSettingEmitterResource:(id)resource
{
  if (![(NSString *)self->_emitterResourceName isEqualToString:?])
  {
    emitterNode = self->_emitterNode;
    if (emitterNode)
    {

      self->_emitterNode = 0;
    }

    [(OKWidgetSpriteEmitterViewProxy *)self setEmitterResourceName:resource];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__OKWidgetSpriteEmitterViewProxy_setSettingEmitterResource___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"reloadEmitter"];
  }
}

uint64_t __60__OKWidgetSpriteEmitterViewProxy_setSettingEmitterResource___block_invoke(uint64_t a1)
{
  [*(a1 + 32) unloadEmitter];
  v2 = *(a1 + 32);

  return [v2 updateEmitter];
}

- (void)setAntialiasing:(BOOL)antialiasing
{
  antialiasingCopy = antialiasing;
  v6.receiver = self;
  v6.super_class = OKWidgetSpriteEmitterViewProxy;
  [(OKWidgetViewProxy *)&v6 setAntialiasing:?];
  if (antialiasingCopy)
  {
    v5 = 15;
  }

  else
  {
    v5 = 0;
  }

  [-[SKView layer](self->_skView "layer")];
}

- (void)loadEmitterIfNeeded
{
  if (self->_emitterResourceName && !self->_emitterNode && self->_particuleResourceName && !self->_particuleTexture)
  {
    v3 = [(OKDocument *)[[(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] presentation] document] URLForResource:[(NSString *)self->_emitterResourceName stringByDeletingPathExtension] withExtension:[(NSString *)self->_emitterResourceName pathExtension]];
    v9 = 0;
    v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v3 options:2 error:&v9];
    if (v4)
    {
      v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v9];
      if (v5)
      {
        [(OKWidgetSpriteEmitterViewProxy *)self setEmitterNode:v5];
      }

      else if (*MEMORY[0x277D62808] >= 2)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Widgets/OKWidgetSpriteEmitterView.m" line:222 andFormat:@"Failed to unarchive emitter with url: %@, error: %@", v3, v9];
      }
    }

    else if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Widgets/OKWidgetSpriteEmitterView.m" line:225 andFormat:@"Failed to load data for emitter: %@", v9, v8];
    }

    if (self->_emitterNode)
    {
      [(SKScene *)[(SKView *)self->_skView scene] addChild:self->_emitterNode];
    }

    if (!self->_particuleTexture)
    {
      v6 = [(OKDocument *)[[(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] presentation] document] URLForResource:[(NSString *)self->_particuleResourceName stringByDeletingPathExtension] withExtension:[(NSString *)self->_particuleResourceName pathExtension]];
      -[OKWidgetSpriteEmitterViewProxy setParticuleTexture:](self, "setParticuleTexture:", [MEMORY[0x277CDCF88] textureWithImage:{objc_msgSend(MEMORY[0x277D755B8], "imageWithContentsOfFile:", objc_msgSend(v6, "relativePath"))}]);
      emitterNode = self->_emitterNode;
      if (emitterNode)
      {
        [(SKEmitterNode *)emitterNode setParticleTexture:self->_particuleTexture];
      }
    }
  }
}

- (void)unloadEmitter
{
  emitterNode = self->_emitterNode;
  if (emitterNode)
  {
    [(SKEmitterNode *)emitterNode removeFromParent];
    v4 = self->_emitterNode;
    if (v4)
    {

      self->_emitterNode = 0;
    }

    particuleTexture = self->_particuleTexture;
    if (particuleTexture)
    {

      self->_particuleTexture = 0;
    }
  }
}

- (void)updateEmitter
{
  if ([(OKWidgetViewProxy *)self prepareMode]== 1)
  {
    [(OKWidgetSpriteEmitterViewProxy *)self loadEmitterIfNeeded];
    emitterNode = self->_emitterNode;
    if (emitterNode)
    {
      [(SKEmitterNode *)emitterNode resetSimulation];
      [(SKEmitterNode *)self->_emitterNode setHidden:0];
    }

    scene = [(SKView *)self->_skView scene];
    v5 = 0;
LABEL_9:

    [(SKScene *)scene setPaused:v5];
    return;
  }

  if ([(OKWidgetViewProxy *)self prepareMode]== 2)
  {
    [(OKWidgetSpriteEmitterViewProxy *)self loadEmitterIfNeeded];
    v6 = self->_emitterNode;
    if (v6)
    {
      [(SKEmitterNode *)v6 resetSimulation];
      [(SKEmitterNode *)self->_emitterNode setHidden:1];
    }

    scene = [(SKView *)self->_skView scene];
    v5 = 1;
    goto LABEL_9;
  }

  [(OKWidgetSpriteEmitterViewProxy *)self unloadEmitter];
}

- (BOOL)prepareForDisplay:(BOOL)display
{
  v6.receiver = self;
  v6.super_class = OKWidgetSpriteEmitterViewProxy;
  v4 = [(OKWidgetViewProxy *)&v6 prepareForDisplay:display];
  if (v4)
  {
    [(OKWidgetSpriteEmitterViewProxy *)self updateEmitter];
  }

  return v4;
}

- (BOOL)prepareForWarmup:(BOOL)warmup
{
  v6.receiver = self;
  v6.super_class = OKWidgetSpriteEmitterViewProxy;
  v4 = [(OKWidgetViewProxy *)&v6 prepareForWarmup:warmup];
  if (v4)
  {
    [(OKWidgetSpriteEmitterViewProxy *)self updateEmitter];
  }

  return v4;
}

- (BOOL)prepareForUnload:(BOOL)unload
{
  v6.receiver = self;
  v6.super_class = OKWidgetSpriteEmitterViewProxy;
  v4 = [(OKWidgetViewProxy *)&v6 prepareForUnload:unload];
  if (v4)
  {
    [(OKWidgetSpriteEmitterViewProxy *)self updateEmitter];
  }

  return v4;
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetSpriteEmitterView"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:context];
}

@end