@interface SKDiskImagePartitionedResizer
- (id)resizeStateMachine:(id *)a3;
@end

@implementation SKDiskImagePartitionedResizer

- (id)resizeStateMachine:(id *)a3
{
  v27[10] = *MEMORY[0x277D85DE8];
  v5 = [(SKDiskImageResizerBase *)self limits];
  v6 = objc_opt_class();
  v7 = [(SKDiskResizerBase *)self disk];
  v8 = [v7 type];
  LOBYTE(v6) = [v6 isSupportedWholeDisk:v8];

  if (v6)
  {
    v26 = transitionEntrySEL(@"kImageResize", kGrowEvent, sel_imageResize_, @"kMoveRecovery");
    v27[0] = v26;
    v25 = transitionEntrySEL(@"kMoveRecovery", kGrowEvent, sel_moveRecovery_, @"kVolumeResize");
    v27[1] = v25;
    v24 = transitionEntrySEL(@"kVolumeResize", kGrowEvent, sel_volumeResize_, kDoneGrow);
    v27[2] = v24;
    v23 = endTransitionEntrySEL(kDoneGrow, kGrowEvent, sel_fitToSize_);
    v27[3] = v23;
    v9 = transitionEntrySEL(kDoneGrow, kShrinkEvent, sel_volumeResize_, @"kMoveRecovery");
    v27[4] = v9;
    v10 = transitionEntrySEL(@"kVolumeResize", kShrinkEvent, sel_volumeResize_, @"kMoveRecovery");
    v27[5] = v10;
    v11 = transitionEntrySEL(@"kMoveRecovery", kShrinkEvent, sel_moveRecovery_, @"kImageResize");
    v27[6] = v11;
    v12 = transitionEntrySEL(@"kImageResize", kShrinkEvent, sel_imageResize_, kDoneShrink);
    v27[7] = v12;
    v13 = endTransitionEntrySEL(kDoneShrink, kShrinkEvent, sel_fitToSize_);
    v27[8] = v13;
    v14 = transitionEntrySEL(kDoneShrink, kGrowEvent, sel_imageResize_, @"kMoveRecovery");
    v27[9] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:10];
    v16 = [SKStateTransitionTable tableWithTransitionEntries:v15 selectorTarget:self];

    v17 = [(SKDiskResizerBase *)self eventFromSize];
    if ([v17 isEqualToString:kGrowEvent])
    {
      v18 = @"kImageResize";
    }

    else
    {
      v18 = @"kVolumeResize";
    }

    v19 = [(SKDiskResizerBase *)self eventFromSize];
    v20 = [SKStateMachine machineWithStateTransitionTable:v16 startState:v18 startEvent:v19];
  }

  else
  {
    v20 = [SKError nilWithPOSIXCode:45 error:a3];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end