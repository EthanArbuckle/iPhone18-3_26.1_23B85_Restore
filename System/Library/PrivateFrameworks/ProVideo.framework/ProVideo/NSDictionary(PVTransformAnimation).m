@interface NSDictionary(PVTransformAnimation)
+ (id)dictionaryWithPVTransformAnimationInfo:()PVTransformAnimation;
- (void)PVTransformAnimationInfo;
@end

@implementation NSDictionary(PVTransformAnimation)

+ (id)dictionaryWithPVTransformAnimationInfo:()PVTransformAnimation
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"tV";
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:*a3];
  v13[0] = v4;
  v12[1] = @"tS";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a3 + 8)];
  v13[1] = v5;
  v12[2] = @"X";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a3 + 24)];
  v13[2] = v6;
  v12[3] = @"Y";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(a3 + 32)];
  v13[3] = v7;
  v12[4] = @"S";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(a3 + 40)];
  v13[4] = v8;
  v12[5] = @"R";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(a3 + 48)];
  v13[5] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  return v10;
}

- (void)PVTransformAnimationInfo
{
  v4 = MEMORY[0x277CC08F0];
  *a2 = *MEMORY[0x277CC08F0];
  *(a2 + 16) = *(v4 + 16);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = xmmword_2603426F0;
  v5 = [a1 objectForKeyedSubscript:@"tV"];
  v6 = [a1 objectForKeyedSubscript:@"tS"];
  CMTimeMake(&v15, [v5 longLongValue], objc_msgSend(v6, "intValue"));
  *a2 = v15;
  v7 = [a1 objectForKeyedSubscript:@"X"];

  [v7 doubleValue];
  *(a2 + 24) = v8;
  v9 = [a1 objectForKeyedSubscript:@"Y"];

  [v9 doubleValue];
  *(a2 + 32) = v10;
  v11 = [a1 objectForKeyedSubscript:@"S"];

  [v11 doubleValue];
  *(a2 + 40) = v12;
  v13 = [a1 objectForKeyedSubscript:@"R"];

  [v13 doubleValue];
  *(a2 + 48) = v14;
}

@end