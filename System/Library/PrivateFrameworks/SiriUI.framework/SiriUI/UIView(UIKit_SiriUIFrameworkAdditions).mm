@interface UIView(UIKit_SiriUIFrameworkAdditions)
- (void)siriui_setBlendEffectEnabled:()UIKit_SiriUIFrameworkAdditions;
@end

@implementation UIView(UIKit_SiriUIFrameworkAdditions)

- (void)siriui_setBlendEffectEnabled:()UIKit_SiriUIFrameworkAdditions
{
  layer = [self layer];

  if (layer)
  {
    if (a3)
    {
      v13 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    }

    else
    {
      v13 = 0;
    }

    v6 = objc_alloc(MEMORY[0x277CBEB18]);
    layer2 = [self layer];
    v8 = [v6 initWithObjects:{layer2, 0}];

    while ([v8 count])
    {
      v9 = [v8 objectAtIndex:0];
      [v8 removeObjectAtIndex:0];
      sublayers = [v9 sublayers];
      v11 = [sublayers count];

      if (v11)
      {
        sublayers2 = [v9 sublayers];
        [v8 addObjectsFromArray:sublayers2];
      }

      else
      {
        [v9 setCompositingFilter:v13];
        [v9 setAllowsGroupBlending:a3 ^ 1u];
        sublayers2 = [v9 superlayer];
        [sublayers2 setAllowsGroupBlending:a3 ^ 1u];
      }
    }
  }
}

@end