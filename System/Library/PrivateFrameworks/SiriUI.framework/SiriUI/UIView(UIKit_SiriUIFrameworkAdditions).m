@interface UIView(UIKit_SiriUIFrameworkAdditions)
- (void)siriui_setBlendEffectEnabled:()UIKit_SiriUIFrameworkAdditions;
@end

@implementation UIView(UIKit_SiriUIFrameworkAdditions)

- (void)siriui_setBlendEffectEnabled:()UIKit_SiriUIFrameworkAdditions
{
  v5 = [a1 layer];

  if (v5)
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
    v7 = [a1 layer];
    v8 = [v6 initWithObjects:{v7, 0}];

    while ([v8 count])
    {
      v9 = [v8 objectAtIndex:0];
      [v8 removeObjectAtIndex:0];
      v10 = [v9 sublayers];
      v11 = [v10 count];

      if (v11)
      {
        v12 = [v9 sublayers];
        [v8 addObjectsFromArray:v12];
      }

      else
      {
        [v9 setCompositingFilter:v13];
        [v9 setAllowsGroupBlending:a3 ^ 1u];
        v12 = [v9 superlayer];
        [v12 setAllowsGroupBlending:a3 ^ 1u];
      }
    }
  }
}

@end