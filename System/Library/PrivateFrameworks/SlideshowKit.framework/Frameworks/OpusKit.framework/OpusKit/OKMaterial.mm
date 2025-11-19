@interface OKMaterial
- (OKMaterial)initWithMaterial:(id)a3;
- (void)applySettings;
- (void)applySettingsIfNeeded;
- (void)dealloc;
- (void)load;
- (void)unload;
@end

@implementation OKMaterial

- (OKMaterial)initWithMaterial:(id)a3
{
  v6.receiver = self;
  v6.super_class = OKMaterial;
  v4 = [(OKMaterial *)&v6 init];
  if (v4)
  {
    v4->_material = a3;
    *&v4->_needsApplySettings = 0;
  }

  return v4;
}

- (void)dealloc
{
  material = self->_material;
  if (material)
  {

    self->_material = 0;
  }

  v4.receiver = self;
  v4.super_class = OKMaterial;
  [(OKMaterial *)&v4 dealloc];
}

- (void)applySettingsIfNeeded
{
  if (self->_needsApplySettings || !self->_hasSettingsApplied)
  {
    [(OKMaterial *)self applySettings];
  }
}

- (void)applySettings
{
  material = self->_material;
  if (material)
  {
    +[OKSettings resetAndApplySettings:toObject:withResolution:](OKSettings, "resetAndApplySettings:toObject:withResolution:", -[OKPresentationCanvas settings](material, "settings"), self, [objc_msgSend(-[OKWidgetProtocol pageViewController](-[OKMaterial parentWidget](self "parentWidget")]);
    *&self->_needsApplySettings = 256;
  }
}

- (void)load
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Materials/OKMaterial.m" line:99 andFormat:@"%s need to be overrided", "-[OKMaterial load]"];
  }
}

- (void)unload
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Materials/OKMaterial.m" line:104 andFormat:@"%s need to be overrided", "-[OKMaterial unload]"];
  }
}

@end