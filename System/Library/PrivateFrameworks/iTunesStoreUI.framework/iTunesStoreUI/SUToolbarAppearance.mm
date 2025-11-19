@interface SUToolbarAppearance
+ (id)defaultToolbarAppearance;
- (id)backgroundImageForPosition:(int64_t)a3 barMetrics:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)shadowImageForPosition:(int64_t)a3;
- (void)dealloc;
- (void)enumerateBackgroundImagesUsingBlock:(id)a3;
- (void)enumerateShadowImagesUsingBlock:(id)a3;
- (void)setBackgroundImage:(id)a3 forPosition:(int64_t)a4 barMetrics:(int64_t)a5;
- (void)setShadowImage:(id)a3 forPosition:(int64_t)a4;
- (void)styleToolbar:(id)a3;
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

- (id)backgroundImageForPosition:(int64_t)a3 barMetrics:(int64_t)a4
{
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld:%ld", a3, a4];
  v6 = [(NSMutableDictionary *)self->_backgroundImages objectForKey:v5];

  return v6;
}

- (void)enumerateBackgroundImagesUsingBlock:(id)a3
{
  backgroundImages = self->_backgroundImages;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__SUToolbarAppearance_enumerateBackgroundImagesUsingBlock___block_invoke;
  v4[3] = &unk_1E8167358;
  v4[4] = a3;
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

- (void)enumerateShadowImagesUsingBlock:(id)a3
{
  shadowImages = self->_shadowImages;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SUToolbarAppearance_enumerateShadowImagesUsingBlock___block_invoke;
  v4[3] = &unk_1E8167380;
  v4[4] = a3;
  [(NSMutableDictionary *)shadowImages enumerateKeysAndObjectsUsingBlock:v4];
}

uint64_t __55__SUToolbarAppearance_enumerateShadowImagesUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 integerValue];
  v6 = *(v4 + 16);

  return v6(v4, a3, v5);
}

- (void)setBackgroundImage:(id)a3 forPosition:(int64_t)a4 barMetrics:(int64_t)a5
{
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld:%ld", a4, a5];
  backgroundImages = self->_backgroundImages;
  v9 = v7;
  if (a3)
  {
    if (!backgroundImages)
    {
      backgroundImages = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = v9;
      self->_backgroundImages = backgroundImages;
    }

    [(NSMutableDictionary *)backgroundImages setObject:a3 forKey:v7];
  }

  else
  {
    [(NSMutableDictionary *)backgroundImages removeObjectForKey:v7];
  }
}

- (void)setShadowImage:(id)a3 forPosition:(int64_t)a4
{
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:a4];
  shadowImages = self->_shadowImages;
  v8 = v6;
  if (a3)
  {
    if (!shadowImages)
    {
      shadowImages = objc_alloc_init(MEMORY[0x1E695DF90]);
      v6 = v8;
      self->_shadowImages = shadowImages;
    }

    [(NSMutableDictionary *)shadowImages setObject:a3 forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)shadowImages removeObjectForKey:v6];
  }
}

- (id)shadowImageForPosition:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:a3];
  v5 = [(NSMutableDictionary *)self->_shadowImages objectForKey:v4];

  return v5;
}

- (void)styleToolbar:(id)a3
{
  [a3 setTintColor:self->_tintColor];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__SUToolbarAppearance_styleToolbar___block_invoke;
  v6[3] = &unk_1E81673A8;
  v6[4] = a3;
  [(SUToolbarAppearance *)self enumerateBackgroundImagesUsingBlock:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SUToolbarAppearance_styleToolbar___block_invoke_2;
  v5[3] = &unk_1E81673D0;
  v5[4] = a3;
  [(SUToolbarAppearance *)self enumerateShadowImagesUsingBlock:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = [(NSMutableDictionary *)self->_backgroundImages mutableCopyWithZone:a3];
  v5[2] = [(NSMutableDictionary *)self->_shadowImages mutableCopyWithZone:a3];
  v5[3] = self->_tintColor;
  return v5;
}

@end