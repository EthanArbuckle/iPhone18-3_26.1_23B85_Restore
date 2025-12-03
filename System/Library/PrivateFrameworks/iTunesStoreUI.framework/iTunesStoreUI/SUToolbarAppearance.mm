@interface SUToolbarAppearance
+ (id)defaultToolbarAppearance;
- (id)backgroundImageForPosition:(int64_t)position barMetrics:(int64_t)metrics;
- (id)copyWithZone:(_NSZone *)zone;
- (id)shadowImageForPosition:(int64_t)position;
- (void)dealloc;
- (void)enumerateBackgroundImagesUsingBlock:(id)block;
- (void)enumerateShadowImagesUsingBlock:(id)block;
- (void)setBackgroundImage:(id)image forPosition:(int64_t)position barMetrics:(int64_t)metrics;
- (void)setShadowImage:(id)image forPosition:(int64_t)position;
- (void)styleToolbar:(id)toolbar;
@end

@implementation SUToolbarAppearance

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUToolbarAppearance;
  [(SUToolbarAppearance *)&v3 dealloc];
}

+ (id)defaultToolbarAppearance
{
  v2 = objc_alloc_init(SUToolbarAppearance);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  -[SUToolbarAppearance setBackgroundImage:forPosition:barMetrics:](v2, "setBackgroundImage:forPosition:barMetrics:", [MEMORY[0x1E69DCAB8] imageNamed:@"UIBottomBarDefaultBackground" inBundle:v3], 0, 0);
  -[SUToolbarAppearance setBackgroundImage:forPosition:barMetrics:](v2, "setBackgroundImage:forPosition:barMetrics:", [MEMORY[0x1E69DCAB8] imageNamed:@"UIBottomBarMiniDefaultBackground" inBundle:v3], 0, 1);

  return v2;
}

- (id)backgroundImageForPosition:(int64_t)position barMetrics:(int64_t)metrics
{
  metrics = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld:%ld", position, metrics];
  v6 = [(NSMutableDictionary *)self->_backgroundImages objectForKey:metrics];

  return v6;
}

- (void)enumerateBackgroundImagesUsingBlock:(id)block
{
  backgroundImages = self->_backgroundImages;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__SUToolbarAppearance_enumerateBackgroundImagesUsingBlock___block_invoke;
  v4[3] = &unk_1E8167358;
  v4[4] = block;
  [(NSMutableDictionary *)backgroundImages enumerateKeysAndObjectsUsingBlock:v4];
}

uint64_t __59__SUToolbarAppearance_enumerateBackgroundImagesUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 componentsSeparatedByString:@":"];
  result = [v3 count];
  if (result == 2)
  {
    [objc_msgSend(v3 objectAtIndex:{0), "integerValue"}];
    [objc_msgSend(v3 objectAtIndex:{1), "integerValue"}];
    v5 = *(*(a1 + 32) + 16);

    return v5();
  }

  return result;
}

- (void)enumerateShadowImagesUsingBlock:(id)block
{
  shadowImages = self->_shadowImages;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SUToolbarAppearance_enumerateShadowImagesUsingBlock___block_invoke;
  v4[3] = &unk_1E8167380;
  v4[4] = block;
  [(NSMutableDictionary *)shadowImages enumerateKeysAndObjectsUsingBlock:v4];
}

uint64_t __55__SUToolbarAppearance_enumerateShadowImagesUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 integerValue];
  v6 = *(v4 + 16);

  return v6(v4, a3, v5);
}

- (void)setBackgroundImage:(id)image forPosition:(int64_t)position barMetrics:(int64_t)metrics
{
  metrics = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld:%ld", position, metrics];
  backgroundImages = self->_backgroundImages;
  v9 = metrics;
  if (image)
  {
    if (!backgroundImages)
    {
      backgroundImages = objc_alloc_init(MEMORY[0x1E695DF90]);
      metrics = v9;
      self->_backgroundImages = backgroundImages;
    }

    [(NSMutableDictionary *)backgroundImages setObject:image forKey:metrics];
  }

  else
  {
    [(NSMutableDictionary *)backgroundImages removeObjectForKey:metrics];
  }
}

- (void)setShadowImage:(id)image forPosition:(int64_t)position
{
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:position];
  shadowImages = self->_shadowImages;
  v8 = v6;
  if (image)
  {
    if (!shadowImages)
    {
      shadowImages = objc_alloc_init(MEMORY[0x1E695DF90]);
      v6 = v8;
      self->_shadowImages = shadowImages;
    }

    [(NSMutableDictionary *)shadowImages setObject:image forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)shadowImages removeObjectForKey:v6];
  }
}

- (id)shadowImageForPosition:(int64_t)position
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:position];
  v5 = [(NSMutableDictionary *)self->_shadowImages objectForKey:v4];

  return v5;
}

- (void)styleToolbar:(id)toolbar
{
  [toolbar setTintColor:self->_tintColor];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__SUToolbarAppearance_styleToolbar___block_invoke;
  v6[3] = &unk_1E81673A8;
  v6[4] = toolbar;
  [(SUToolbarAppearance *)self enumerateBackgroundImagesUsingBlock:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SUToolbarAppearance_styleToolbar___block_invoke_2;
  v5[3] = &unk_1E81673D0;
  v5[4] = toolbar;
  [(SUToolbarAppearance *)self enumerateShadowImagesUsingBlock:v5];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = [(NSMutableDictionary *)self->_backgroundImages mutableCopyWithZone:zone];
  v5[2] = [(NSMutableDictionary *)self->_shadowImages mutableCopyWithZone:zone];
  v5[3] = self->_tintColor;
  return v5;
}

@end