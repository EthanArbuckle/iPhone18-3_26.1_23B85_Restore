@interface SKUIAddToWishlistAnimation
- (SKUIAddToWishlistAnimation)initWithImage:(id)image buttonItem:(id)item navigationBar:(id)bar;
- (void)animateWithCompletionBlock:(id)block;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation SKUIAddToWishlistAnimation

- (SKUIAddToWishlistAnimation)initWithImage:(id)image buttonItem:(id)item navigationBar:(id)bar
{
  v34 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  itemCopy = item;
  barCopy = bar;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIAddToWishlistAnimation initWithImage:buttonItem:navigationBar:];
  }

  v32.receiver = self;
  v32.super_class = SKUIAddToWishlistAnimation;
  v12 = [(SKUIAddToWishlistAnimation *)&v32 init];
  v13 = v12;
  if (v12)
  {
    v27 = imageCopy;
    objc_storeStrong(&v12->_image, image);
    image = [itemCopy image];
    title = [itemCopy title];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = barCopy;
    _allViews = [barCopy _allViews];
    v17 = [_allViews countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      v25 = v13;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(_allViews);
          }

          v21 = *(*(&v28 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = [v21 imageForState:0];
            v23 = [v21 titleForState:0];
            if (v22 == image || ([title isEqualToString:v23] & 1) != 0)
            {
              v13 = v25;
              objc_storeStrong(&v25->_targetButton, v21);

              goto LABEL_19;
            }
          }
        }

        v18 = [_allViews countByEnumeratingWithState:&v28 objects:v33 count:16];
        v13 = v25;
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    if (!v13->_targetButton)
    {

      v13 = 0;
    }

    imageCopy = v27;
    barCopy = v26;
  }

  return v13;
}

- (void)animateWithCompletionBlock:(id)block
{
  v56[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CD9FF0];
  blockCopy = block;
  [v4 begin];
  v6 = [blockCopy copy];

  completionBlock = self->_completionBlock;
  self->_completionBlock = v6;

  selfCopy = self;
  v9 = __AddToWishlistAnimations;
  if (!__AddToWishlistAnimations)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v11 = __AddToWishlistAnimations;
    __AddToWishlistAnimations = v10;

    v9 = __AddToWishlistAnimations;
  }

  [v9 addObject:selfCopy];

  window = [(UINavigationButton *)selfCopy->_targetButton window];
  targetButton = selfCopy->_targetButton;
  [(UINavigationButton *)targetButton bounds];
  [(UINavigationButton *)targetButton convertRect:window toView:?];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:selfCopy->_image];
  [v22 frame];
  v24 = (v19 - v23) * 0.5;
  v26 = (v21 - v25) * 0.5;
  [v22 setFrame:{v15 + floorf(v24), v17 + floorf(v26)}];
  [window addSubview:v22];
  v27 = MEMORY[0x277D75D18];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __57__SKUIAddToWishlistAnimation_animateWithCompletionBlock___block_invoke;
  v53[3] = &unk_2781F80F0;
  v54 = v22;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __57__SKUIAddToWishlistAnimation_animateWithCompletionBlock___block_invoke_2;
  v51[3] = &unk_2781F84A0;
  v52 = v54;
  v28 = v54;
  [v27 animateWithDuration:0x20000 delay:v53 options:v51 animations:0.4 completion:0.0];
  v29 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform"];
  [v29 setBeginTime:CACurrentMediaTime() + 0.4];
  [v29 setDelegate:selfCopy];
  [v29 setDuration:0.33];
  [v29 setFillMode:*MEMORY[0x277CDA230]];
  UIAnimationDragCoefficient();
  *&v31 = 1.0 / v30;
  [v29 setSpeed:v31];
  [v29 setKeyTimes:&unk_2828D2FA8];
  v32 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
  v56[0] = v32;
  v33 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7A8]];
  v56[1] = v33;
  v34 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
  v56[2] = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:3];
  [v29 setTimingFunctions:v35];

  v48 = *(MEMORY[0x277CD9DE8] + 80);
  *&v50.m31 = *(MEMORY[0x277CD9DE8] + 64);
  v49 = *&v50.m31;
  *&v50.m33 = v48;
  v46 = *(MEMORY[0x277CD9DE8] + 112);
  *&v50.m41 = *(MEMORY[0x277CD9DE8] + 96);
  v47 = *&v50.m41;
  *&v50.m43 = v46;
  v44 = *(MEMORY[0x277CD9DE8] + 16);
  *&v50.m11 = *MEMORY[0x277CD9DE8];
  v45 = *&v50.m11;
  *&v50.m13 = v44;
  v42 = *(MEMORY[0x277CD9DE8] + 48);
  *&v50.m21 = *(MEMORY[0x277CD9DE8] + 32);
  v43 = *&v50.m21;
  *&v50.m23 = v42;
  v36 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v50];
  v55[0] = v36;
  v37 = MEMORY[0x277CCAE60];
  CATransform3DMakeScale(&v50, 1.4, 1.4, 1.0);
  v38 = [v37 valueWithCATransform3D:&v50];
  v55[1] = v38;
  *&v50.m31 = v49;
  *&v50.m33 = v48;
  *&v50.m41 = v47;
  *&v50.m43 = v46;
  *&v50.m11 = v45;
  *&v50.m13 = v44;
  *&v50.m21 = v43;
  *&v50.m23 = v42;
  v39 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v50];
  v55[2] = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
  [v29 setValues:v40];

  layer = [(UINavigationButton *)selfCopy->_targetButton layer];
  [layer addAnimation:v29 forKey:@"WishlistPop"];

  [MEMORY[0x277CD9FF0] commit];
}

uint64_t __57__SKUIAddToWishlistAnimation_animateWithCompletionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  CGAffineTransformMakeScale(&v3, 0.0, 0.0);
  return [v1 setTransform:&v3];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2]();
    v6 = self->_completionBlock;
    self->_completionBlock = 0;
  }

  [__AddToWishlistAnimations removeObject:self];
  if (![__AddToWishlistAnimations count])
  {
    v7 = __AddToWishlistAnimations;
    __AddToWishlistAnimations = 0;
  }
}

- (void)initWithImage:buttonItem:navigationBar:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIAddToWishlistAnimation initWithImage:buttonItem:navigationBar:]";
}

@end