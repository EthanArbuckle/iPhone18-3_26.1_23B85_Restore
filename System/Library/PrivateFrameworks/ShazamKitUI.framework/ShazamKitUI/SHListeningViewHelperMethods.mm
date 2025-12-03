@interface SHListeningViewHelperMethods
+ (id)animationFromAnimation:(id)animation withStartOffset:(double)offset duration:(double)duration;
@end

@implementation SHListeningViewHelperMethods

+ (id)animationFromAnimation:(id)animation withStartOffset:(double)offset duration:(double)duration
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = -offset;
  animationCopy = animation;
  [animationCopy setBeginTime:v6];
  animation = [MEMORY[0x277CD9E00] animation];
  v12[0] = animationCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  [animation setAnimations:v9];
  [animation setDuration:duration];
  v10 = *MEMORY[0x277D85DE8];

  return animation;
}

@end