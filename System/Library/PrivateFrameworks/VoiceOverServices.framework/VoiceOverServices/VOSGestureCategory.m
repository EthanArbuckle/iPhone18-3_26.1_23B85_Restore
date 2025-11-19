@interface VOSGestureCategory
+ (BOOL)isFlickGesture:(id)a3;
+ (BOOL)isRotateGesture:(id)a3;
+ (BOOL)isScrubGesture:(id)a3;
+ (BOOL)isSplitFlickGesture:(id)a3;
+ (BOOL)isTapAndHoldGesture:(id)a3;
+ (BOOL)isTapGesture:(id)a3;
+ (NSArray)allCategories;
+ (VOSGestureCategory)backTaps;
+ (VOSGestureCategory)fiveFingerTaps;
+ (VOSGestureCategory)fourFingerFlicks;
+ (VOSGestureCategory)fourFingerTaps;
+ (VOSGestureCategory)oneFingerFlicks;
+ (VOSGestureCategory)oneFingerSplitFlicks;
+ (VOSGestureCategory)oneFingerTapAndHolds;
+ (VOSGestureCategory)oneFingerTaps;
+ (VOSGestureCategory)threeFingerDoubleTapHoldAndFlicks;
+ (VOSGestureCategory)threeFingerFlicks;
+ (VOSGestureCategory)threeFingerTapAndHolds;
+ (VOSGestureCategory)threeFingerTaps;
+ (VOSGestureCategory)twoFingerFlicks;
+ (VOSGestureCategory)twoFingerPinches;
+ (VOSGestureCategory)twoFingerRotates;
+ (VOSGestureCategory)twoFingerScrubs;
+ (VOSGestureCategory)twoFingerSplitFlicks;
+ (VOSGestureCategory)twoFingerTapAndHolds;
+ (VOSGestureCategory)twoFingerTaps;
- (BOOL)containsGesture:(id)a3;
- (BOOL)isEqual:(id)a3;
- (VOSGestureCategory)init;
- (VOSGestureCategory)initWithGestures:(id)a3 localizedCategoryName:(id)a4;
- (unint64_t)hash;
@end

@implementation VOSGestureCategory

+ (VOSGestureCategory)oneFingerTaps
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = +[VOSGesture OneFingerSingleTap];
  v12[0] = v2;
  v3 = +[VOSGesture OneFingerDoubleTap];
  v12[1] = v3;
  v4 = +[VOSGesture OneFingerTripleTap];
  v12[2] = v4;
  v5 = +[VOSGesture OneFingerQuadrupleTap];
  v12[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  v7 = [VOSGestureCategory alloc];
  v8 = VOSLocString(@"VOSGestureCategory.OneFingerTaps");
  v9 = [(VOSGestureCategory *)v7 initWithGestures:v6 localizedCategoryName:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (VOSGestureCategory)twoFingerTaps
{
  v15[7] = *MEMORY[0x277D85DE8];
  v2 = +[VOSGesture TwoFingerSingleTap];
  v3 = +[VOSGesture TwoFingerDoubleTap];
  v15[1] = v3;
  v4 = +[VOSGesture TwoFingerTripleTap];
  v15[2] = v4;
  v5 = +[VOSGesture TwoFingerQuadrupleTap];
  v15[3] = v5;
  v6 = +[VOSGesture TwoDistantFingerSingleTap];
  v15[4] = v6;
  v7 = +[VOSGesture TwoDistantFingerDoubleTap];
  v15[5] = v7;
  v8 = +[VOSGesture TwoDistantFingerTripleTap];
  v15[6] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:7];

  v10 = [VOSGestureCategory alloc];
  v11 = VOSLocString(@"VOSGestureCategory.TwoFingerTaps");
  v12 = [(VOSGestureCategory *)v10 initWithGestures:v9 localizedCategoryName:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (VOSGestureCategory)threeFingerTaps
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = +[VOSGesture ThreeFingerSingleTap];
  v12[0] = v2;
  v3 = +[VOSGesture ThreeFingerDoubleTap];
  v12[1] = v3;
  v4 = +[VOSGesture ThreeFingerTripleTap];
  v12[2] = v4;
  v5 = +[VOSGesture ThreeFingerQuadrupleTap];
  v12[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  v7 = [VOSGestureCategory alloc];
  v8 = VOSLocString(@"VOSGestureCategory.ThreeFingerTaps");
  v9 = [(VOSGestureCategory *)v7 initWithGestures:v6 localizedCategoryName:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (VOSGestureCategory)fourFingerTaps
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = +[VOSGesture FourFingerSingleTap];
  v12[0] = v2;
  v3 = +[VOSGesture FourFingerDoubleTap];
  v12[1] = v3;
  v4 = +[VOSGesture FourFingerTripleTap];
  v12[2] = v4;
  v5 = +[VOSGesture FourFingerQuadrupleTap];
  v12[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  v7 = [VOSGestureCategory alloc];
  v8 = VOSLocString(@"VOSGestureCategory.FourFingerTaps");
  v9 = [(VOSGestureCategory *)v7 initWithGestures:v6 localizedCategoryName:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (VOSGestureCategory)fiveFingerTaps
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = +[VOSGesture FiveFingerSingleTap];
  v12[0] = v2;
  v3 = +[VOSGesture FiveFingerDoubleTap];
  v12[1] = v3;
  v4 = +[VOSGesture FiveFingerTripleTap];
  v12[2] = v4;
  v5 = +[VOSGesture FiveFingerQuadrupleTap];
  v12[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  v7 = [VOSGestureCategory alloc];
  v8 = VOSLocString(@"VOSGestureCategory.FiveFingerTaps");
  v9 = [(VOSGestureCategory *)v7 initWithGestures:v6 localizedCategoryName:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (VOSGestureCategory)oneFingerFlicks
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = +[VOSGesture OneFingerFlickLeft];
  v12[0] = v2;
  v3 = +[VOSGesture OneFingerFlickRight];
  v12[1] = v3;
  v4 = +[VOSGesture OneFingerFlickUp];
  v12[2] = v4;
  v5 = +[VOSGesture OneFingerFlickDown];
  v12[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  v7 = [VOSGestureCategory alloc];
  v8 = VOSLocString(@"VOSGestureCategory.OneFingerSwipes");
  v9 = [(VOSGestureCategory *)v7 initWithGestures:v6 localizedCategoryName:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (VOSGestureCategory)twoFingerFlicks
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = +[VOSGesture TwoFingerFlickLeft];
  v12[0] = v2;
  v3 = +[VOSGesture TwoFingerFlickRight];
  v12[1] = v3;
  v4 = +[VOSGesture TwoFingerFlickUp];
  v12[2] = v4;
  v5 = +[VOSGesture TwoFingerFlickDown];
  v12[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  v7 = [VOSGestureCategory alloc];
  v8 = VOSLocString(@"VOSGestureCategory.TwoFingerSwipes");
  v9 = [(VOSGestureCategory *)v7 initWithGestures:v6 localizedCategoryName:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (VOSGestureCategory)threeFingerFlicks
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = +[VOSGesture ThreeFingerFlickLeft];
  v12[0] = v2;
  v3 = +[VOSGesture ThreeFingerFlickRight];
  v12[1] = v3;
  v4 = +[VOSGesture ThreeFingerFlickUp];
  v12[2] = v4;
  v5 = +[VOSGesture ThreeFingerFlickDown];
  v12[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  v7 = [VOSGestureCategory alloc];
  v8 = VOSLocString(@"VOSGestureCategory.ThreeFingerSwipes");
  v9 = [(VOSGestureCategory *)v7 initWithGestures:v6 localizedCategoryName:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (VOSGestureCategory)fourFingerFlicks
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = +[VOSGesture FourFingerFlickLeft];
  v12[0] = v2;
  v3 = +[VOSGesture FourFingerFlickRight];
  v12[1] = v3;
  v4 = +[VOSGesture FourFingerFlickUp];
  v12[2] = v4;
  v5 = +[VOSGesture FourFingerFlickDown];
  v12[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  v7 = [VOSGestureCategory alloc];
  v8 = VOSLocString(@"VOSGestureCategory.FourFingerSwipes");
  v9 = [(VOSGestureCategory *)v7 initWithGestures:v6 localizedCategoryName:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (VOSGestureCategory)twoFingerRotates
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = +[VOSGesture TwoFingerRotateCounterclockwise];
  v10[0] = v2;
  v3 = +[VOSGesture TwoFingerRotateClockwise];
  v10[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v5 = [VOSGestureCategory alloc];
  v6 = VOSLocString(@"VOSGestureCategory.TwoFingerRotate");
  v7 = [(VOSGestureCategory *)v5 initWithGestures:v4 localizedCategoryName:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (VOSGestureCategory)twoFingerScrubs
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = +[VOSGesture TwoFingerScrub];
  v9[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v4 = [VOSGestureCategory alloc];
  v5 = VOSLocString(@"VOSGestureCategory.TwoFingerScrub");
  v6 = [(VOSGestureCategory *)v4 initWithGestures:v3 localizedCategoryName:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (VOSGestureCategory)twoFingerPinches
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = +[VOSGesture TwoFingerPinch];
  v9[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v4 = [VOSGestureCategory alloc];
  v5 = VOSLocString(@"VOSGestureCategory.TwoFingerPinch");
  v6 = [(VOSGestureCategory *)v4 initWithGestures:v3 localizedCategoryName:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (VOSGestureCategory)oneFingerTapAndHolds
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = +[VOSGesture OneFingerSingleTapAndHold];
  v10[0] = v2;
  v3 = +[VOSGesture OneFingerDoubleTapAndHold];
  v10[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v5 = [VOSGestureCategory alloc];
  v6 = VOSLocString(@"VOSGestureCategory.OneFingerTapAndHold");
  v7 = [(VOSGestureCategory *)v5 initWithGestures:v4 localizedCategoryName:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (VOSGestureCategory)twoFingerTapAndHolds
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = +[VOSGesture TwoFingerSingleTapAndHold];
  v10[0] = v2;
  v3 = +[VOSGesture TwoFingerDoubleTapAndHold];
  v10[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v5 = [VOSGestureCategory alloc];
  v6 = VOSLocString(@"VOSGestureCategory.TwoFingerTapAndHold");
  v7 = [(VOSGestureCategory *)v5 initWithGestures:v4 localizedCategoryName:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (VOSGestureCategory)threeFingerTapAndHolds
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = +[VOSGesture ThreeFingerSingleTapAndHold];
  v10[0] = v2;
  v3 = +[VOSGesture ThreeFingerDoubleTapAndHold];
  v10[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v5 = [VOSGestureCategory alloc];
  v6 = VOSLocString(@"VOSGestureCategory.ThreeFingerTapAndHold");
  v7 = [(VOSGestureCategory *)v5 initWithGestures:v4 localizedCategoryName:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (VOSGestureCategory)threeFingerDoubleTapHoldAndFlicks
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickUp];
  v12[0] = v2;
  v3 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickLeft];
  v12[1] = v3;
  v4 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickDown];
  v12[2] = v4;
  v5 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickRight];
  v12[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  v7 = [VOSGestureCategory alloc];
  v8 = VOSLocString(@"VOSGestureCategory.ThreeFingerDoubleTapHoldAndFlick");
  v9 = [(VOSGestureCategory *)v7 initWithGestures:v6 localizedCategoryName:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (VOSGestureCategory)oneFingerSplitFlicks
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = +[VOSGesture OneFingerSplitFlickLeft];
  v12[0] = v2;
  v3 = +[VOSGesture OneFingerSplitFlickRight];
  v12[1] = v3;
  v4 = +[VOSGesture OneFingerSplitFlickUp];
  v12[2] = v4;
  v5 = +[VOSGesture OneFingerSplitFlickDown];
  v12[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  v7 = [VOSGestureCategory alloc];
  v8 = VOSLocString(@"VOSGestureCategory.OneFingerSplitSwipes");
  v9 = [(VOSGestureCategory *)v7 initWithGestures:v6 localizedCategoryName:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (VOSGestureCategory)twoFingerSplitFlicks
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = +[VOSGesture TwoFingerSplitFlickLeft];
  v10[0] = v2;
  v3 = +[VOSGesture TwoFingerSplitFlickRight];
  v10[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v5 = [VOSGestureCategory alloc];
  v6 = VOSLocString(@"VOSGestureCategory.TwoFingerSplitSwipes");
  v7 = [(VOSGestureCategory *)v5 initWithGestures:v4 localizedCategoryName:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (VOSGestureCategory)backTaps
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (AXDeviceSupportsBackTap())
  {
    v2 = +[VOSGesture BackTapDoubleTap];
    v10[0] = v2;
    v3 = +[VOSGesture BackTapTripleTap];
    v10[1] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = [VOSGestureCategory alloc];
  v6 = VOSLocString(@"VOSGestureCategory.BackTap");
  v7 = [(VOSGestureCategory *)v5 initWithGestures:v4 localizedCategoryName:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (NSArray)allCategories
{
  v25[18] = *MEMORY[0x277D85DE8];
  v24 = +[VOSGestureCategory oneFingerTaps];
  v25[0] = v24;
  v23 = +[VOSGestureCategory twoFingerTaps];
  v25[1] = v23;
  v22 = +[VOSGestureCategory threeFingerTaps];
  v25[2] = v22;
  v21 = +[VOSGestureCategory fourFingerTaps];
  v25[3] = v21;
  v20 = +[VOSGestureCategory fiveFingerTaps];
  v25[4] = v20;
  v19 = +[VOSGestureCategory oneFingerFlicks];
  v25[5] = v19;
  v18 = +[VOSGestureCategory twoFingerFlicks];
  v25[6] = v18;
  v17 = +[VOSGestureCategory threeFingerFlicks];
  v25[7] = v17;
  v16 = +[VOSGestureCategory fourFingerFlicks];
  v25[8] = v16;
  v15 = +[VOSGestureCategory twoFingerRotates];
  v25[9] = v15;
  v2 = +[VOSGestureCategory twoFingerScrubs];
  v25[10] = v2;
  v3 = +[VOSGestureCategory twoFingerPinches];
  v25[11] = v3;
  v4 = +[VOSGestureCategory oneFingerTapAndHolds];
  v25[12] = v4;
  v5 = +[VOSGestureCategory twoFingerTapAndHolds];
  v25[13] = v5;
  v6 = +[VOSGestureCategory threeFingerTapAndHolds];
  v25[14] = v6;
  v7 = +[VOSGestureCategory threeFingerDoubleTapHoldAndFlicks];
  v25[15] = v7;
  v8 = +[VOSGestureCategory oneFingerSplitFlicks];
  v25[16] = v8;
  v9 = +[VOSGestureCategory twoFingerSplitFlicks];
  v25[17] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:18];

  if (AXDeviceSupportsBackTap())
  {
    v11 = +[VOSGestureCategory backTaps];
    v12 = [v10 arrayByAddingObject:v11];

    v10 = v12;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (VOSGestureCategory)initWithGestures:(id)a3 localizedCategoryName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VOSGestureCategory;
  v8 = [(VOSGestureCategory *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(VOSGestureCategory *)v8 setLocalizedCategoryName:v7];
    [(VOSGestureCategory *)v9 setGestures:v6];
  }

  return v9;
}

- (VOSGestureCategory)init
{
  v3 = [MEMORY[0x277CBEA60] array];
  v4 = [(VOSGestureCategory *)self initWithGestures:v3 localizedCategoryName:&stru_283729578];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(VOSGestureCategory *)self gestures];
    v7 = [v5 gestures];

    v8 = [v6 isEqualToArray:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(VOSGestureCategory *)self gestures];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 ^= [*(*(&v10 + 1) + 8 * i) hash];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)containsGesture:(id)a3
{
  v4 = a3;
  v5 = [(VOSGestureCategory *)self gestures];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (BOOL)isFlickGesture:(id)a3
{
  v4 = a3;
  v5 = [a1 oneFingerFlicks];
  if ([v5 containsGesture:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [a1 twoFingerFlicks];
    if ([v7 containsGesture:v4])
    {
      v6 = 1;
    }

    else
    {
      v8 = [a1 threeFingerFlicks];
      if ([v8 containsGesture:v4])
      {
        v6 = 1;
      }

      else
      {
        v9 = [a1 fourFingerFlicks];
        v6 = [v9 containsGesture:v4];
      }
    }
  }

  return v6;
}

+ (BOOL)isTapGesture:(id)a3
{
  v4 = a3;
  v5 = [a1 oneFingerTaps];
  if ([v5 containsGesture:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [a1 twoFingerTaps];
    if ([v7 containsGesture:v4])
    {
      v6 = 1;
    }

    else
    {
      v8 = [a1 threeFingerTaps];
      if ([v8 containsGesture:v4])
      {
        v6 = 1;
      }

      else
      {
        v9 = [a1 fourFingerTaps];
        if ([v9 containsGesture:v4])
        {
          v6 = 1;
        }

        else
        {
          v10 = [a1 fiveFingerTaps];
          v6 = [v10 containsGesture:v4];
        }
      }
    }
  }

  return v6;
}

+ (BOOL)isRotateGesture:(id)a3
{
  v4 = a3;
  v5 = [a1 twoFingerRotates];
  v6 = [v5 containsGesture:v4];

  return v6;
}

+ (BOOL)isScrubGesture:(id)a3
{
  v4 = a3;
  v5 = [a1 twoFingerScrubs];
  v6 = [v5 containsGesture:v4];

  return v6;
}

+ (BOOL)isTapAndHoldGesture:(id)a3
{
  v4 = a3;
  v5 = [a1 oneFingerTapAndHolds];
  if ([v5 containsGesture:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [a1 twoFingerTapAndHolds];
    if ([v7 containsGesture:v4])
    {
      v6 = 1;
    }

    else
    {
      v8 = [a1 threeFingerTapAndHolds];
      v6 = [v8 containsGesture:v4];
    }
  }

  return v6;
}

+ (BOOL)isSplitFlickGesture:(id)a3
{
  v4 = a3;
  v5 = [a1 oneFingerSplitFlicks];
  if ([v5 containsGesture:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [a1 twoFingerSplitFlicks];
    v6 = [v7 containsGesture:v4];
  }

  return v6;
}

@end