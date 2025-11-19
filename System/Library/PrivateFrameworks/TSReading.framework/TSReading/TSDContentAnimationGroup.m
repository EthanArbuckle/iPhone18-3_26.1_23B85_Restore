@interface TSDContentAnimationGroup
- (id)i_animationWithTransformBlock:(id)a3;
- (id)i_endLocation;
- (void)dealloc;
@end

@implementation TSDContentAnimationGroup

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDContentAnimationGroup;
  [(TSDContentAnimationGroup *)&v3 dealloc];
}

- (id)i_animationWithTransformBlock:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = self;
  animations = self->_animations;
  v7 = [(NSArray *)animations countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(animations);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if (([v11 i_canProduceAnimation] & 1) == 0)
        {
          v12 = [MEMORY[0x277D6C290] currentHandler];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDContentAnimationGroup i_animationWithTransformBlock:]"];
          [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDContentAnimation.m"), 168, @"group shouldn't contain animations that can't produce CAAnimations"}];
        }

        v14 = [v11 i_animationWithTransformBlock:a3];
        if (v14)
        {
          [v5 addObject:v14];
        }
      }

      v8 = [(NSArray *)animations countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [MEMORY[0x277CD9E00] animation];
  [v15 setAnimations:v5];
  [(TSDContentAnimationGroup *)v17 duration];
  [v15 setDuration:?];
  [v15 setTimingFunction:{-[TSDContentAnimationGroup timingFunction](v17, "timingFunction")}];
  return v15;
}

- (id)i_endLocation
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  animations = self->_animations;
  result = [(NSArray *)animations countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v8 != v5)
      {
        objc_enumerationMutation(animations);
      }

      result = [*(*(&v7 + 1) + 8 * v6) i_endLocation];
      if (result)
      {
        break;
      }

      if (v4 == ++v6)
      {
        result = [(NSArray *)animations countByEnumeratingWithState:&v7 objects:v11 count:16];
        v4 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

@end