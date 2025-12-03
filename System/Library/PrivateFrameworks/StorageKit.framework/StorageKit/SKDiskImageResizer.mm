@interface SKDiskImageResizer
- (id)resizeStateMachine:(id *)machine;
@end

@implementation SKDiskImageResizer

- (id)resizeStateMachine:(id *)machine
{
  v25[8] = *MEMORY[0x277D85DE8];
  limits = [(SKDiskImageResizerBase *)self limits];
  v6 = objc_opt_class();
  disk = [(SKDiskResizerBase *)self disk];
  type = [disk type];
  LOBYTE(v6) = [v6 isSupportedWholeDisk:type];

  if (v6)
  {
    v24 = transitionEntrySEL(@"kImageResize", kGrowEvent, sel_imageResize_, @"kMoveRecovery");
    v25[0] = v24;
    v23 = transitionEntrySEL(@"kMoveRecovery", kGrowEvent, sel_moveRecovery_, kDoneGrow);
    v25[1] = v23;
    v9 = endTransitionEntrySEL(kDoneGrow, kGrowEvent, sel_fitToSize_);
    v25[2] = v9;
    v10 = transitionEntrySEL(kDoneGrow, kShrinkEvent, sel_moveRecovery_, @"kImageResize");
    v25[3] = v10;
    v11 = transitionEntrySEL(@"kMoveRecovery", kShrinkEvent, sel_moveRecovery_, @"kImageResize");
    v25[4] = v11;
    v12 = transitionEntrySEL(@"kImageResize", kShrinkEvent, sel_imageResize_, kDoneShrink);
    v25[5] = v12;
    v13 = endTransitionEntrySEL(kDoneShrink, kShrinkEvent, sel_fitToSize_);
    v25[6] = v13;
    v14 = transitionEntrySEL(kDoneShrink, kGrowEvent, sel_imageResize_, @"kMoveRecovery");
    v25[7] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:8];
    v16 = [SKStateTransitionTable tableWithTransitionEntries:v15 selectorTarget:self];

    eventFromSize = [(SKDiskResizerBase *)self eventFromSize];
    if ([eventFromSize isEqualToString:kGrowEvent])
    {
      v18 = @"kImageResize";
    }

    else
    {
      v18 = @"kMoveRecovery";
    }

    eventFromSize2 = [(SKDiskResizerBase *)self eventFromSize];
    v20 = [SKStateMachine machineWithStateTransitionTable:v16 startState:v18 startEvent:eventFromSize2];
  }

  else
  {
    v20 = [SKError nilWithPOSIXCode:45 error:machine];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end