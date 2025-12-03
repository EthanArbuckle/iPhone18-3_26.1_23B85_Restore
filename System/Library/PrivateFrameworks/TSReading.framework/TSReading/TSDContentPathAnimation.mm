@interface TSDContentPathAnimation
- (id)i_animationWithTransformBlock:(id)block;
- (void)dealloc;
- (void)setContentPath:(id)path;
@end

@implementation TSDContentPathAnimation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDContentPathAnimation;
  [(TSDContentPathAnimation *)&v3 dealloc];
}

- (void)setContentPath:(id)path
{
  i_contentLocations = [path i_contentLocations];

  [(TSDContentPathAnimation *)self setContentLocations:i_contentLocations];
}

- (id)i_animationWithTransformBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  contentLocations = self->_contentLocations;
  v7 = [(NSArray *)contentLocations countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(contentLocations);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        (*(block + 2))(&v15, block, v11);
        v14[4] = v19;
        v14[5] = v20;
        v14[6] = v21;
        v14[7] = v22;
        v14[0] = v15;
        v14[1] = v16;
        v14[2] = v17;
        v14[3] = v18;
        [array addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCATransform3D:", v14)}];
      }

      v8 = [(NSArray *)contentLocations countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform"];
  [v12 setValues:array];
  [(TSDContentPathAnimation *)self duration];
  [v12 setDuration:?];
  [v12 setTimingFunction:{-[TSDContentPathAnimation timingFunction](self, "timingFunction")}];
  [v12 setKeyTimes:self->_keyTimes];
  [v12 setTimingFunctions:self->_timingFunctions];
  return v12;
}

@end