@interface SHListeningViewHelperMethods
+ (id)animationFromAnimation:(id)a3 withStartOffset:(double)a4 duration:(double)a5;
@end

@implementation SHListeningViewHelperMethods

+ (id)animationFromAnimation:(id)a3 withStartOffset:(double)a4 duration:(double)a5
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = -a4;
  v7 = a3;
  [v7 setBeginTime:v6];
  v8 = [MEMORY[0x277CD9E00] animation];
  v12[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  [v8 setAnimations:v9];
  [v8 setDuration:a5];
  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

@end