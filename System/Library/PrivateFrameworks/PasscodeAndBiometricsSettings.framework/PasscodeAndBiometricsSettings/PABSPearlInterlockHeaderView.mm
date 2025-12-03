@interface PABSPearlInterlockHeaderView
- (PABSPearlInterlockHeaderView)initWithFrame:(CGRect)frame;
- (double)heightForWidth:(double)width;
@end

@implementation PABSPearlInterlockHeaderView

- (PABSPearlInterlockHeaderView)initWithFrame:(CGRect)frame
{
  v41.receiver = self;
  v41.super_class = PABSPearlInterlockHeaderView;
  v3 = [(PABSPearlInterlockHeaderView *)&v41 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = PABS_LocalizedStringForPasscodeLock(@"FACE_ID_HELP_LINK");
    v6 = [v4 URLWithString:v5];
    [(PABSPearlInterlockHeaderView *)v3 setInterlockURL:v6];

    v38 = PABS_LocalizedStringForPasscodeLock(@"PEARL_CAMERA_INTERLOCKED");
    v7 = PABS_LocalizedStringForPasscodeLock(@"PEARL_CAMERA_INTERLOCKED_LINK");
    v8 = [MEMORY[0x277D755B8] imageNamed:@"FaceID_warning"];
    v9 = objc_alloc(MEMORY[0x277D755E8]);
    [v8 size];
    v11 = v10;
    v39 = v8;
    [v8 size];
    firstValue = [v9 initWithFrame:{0.0, 0.0, v11, v12}];
    [firstValue setImage:v8];
    [firstValue setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PABSPearlInterlockHeaderView *)v3 addSubview:firstValue];
    v13 = objc_opt_new();
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 setText:v38];
    v14 = *MEMORY[0x277D76918];
    v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v13 setFont:v15];

    [v13 setTextAlignment:1];
    [v13 setNumberOfLines:0];
    [(PABSPearlInterlockHeaderView *)v3 addSubview:v13];
    v16 = objc_opt_new();
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v16 setBackgroundColor:clearColor];

    [v16 setShowsVerticalScrollIndicator:0];
    [v16 setEditable:0];
    [v16 setSelectable:1];
    [v16 setScrollEnabled:0];
    [v16 _setInteractiveTextSelectionDisabled:1];
    v37 = v7;
    v18 = [v37 length];
    v19 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v37];

    v36 = objc_alloc_init(MEMORY[0x277D74240]);
    [v36 setAlignment:1];
    [v19 addAttribute:*MEMORY[0x277D74118] value:v36 range:{0, v18}];
    v20 = *MEMORY[0x277D740A8];
    v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:v14];
    [v19 addAttribute:v20 value:v21 range:{0, v18}];

    v22 = *MEMORY[0x277D740C0];
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [v19 addAttribute:v22 value:systemBlueColor range:{0, v18}];

    v24 = *MEMORY[0x277D740E8];
    interlockURL = [(PABSPearlInterlockHeaderView *)v3 interlockURL];
    [v19 addAttribute:v24 value:interlockURL range:{0, v18}];

    [v19 addAttribute:*MEMORY[0x277D741F0] value:MEMORY[0x277CBEC28] range:{0, v18}];
    [v16 setAttributedText:v19];
    [(PABSPearlInterlockHeaderView *)v3 addSubview:v16];
    v26 = _NSDictionaryOfVariableBindings(&cfstr_Warningimagevi.isa, firstValue, v13, v16, 0);
    v27 = MEMORY[0x277CCABB0];
    [firstValue bounds];
    v29 = [v27 numberWithDouble:v28];
    v30 = _NSDictionaryOfVariableBindings(&cfstr_Warningimagehe.isa, v29, 0);
    v31 = MEMORY[0x277CCAAD0];
    v32 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-[interlockMessage]-|" options:0 metrics:0 views:v26];
    [v31 activateConstraints:v32];

    v33 = MEMORY[0x277CCAAD0];
    v34 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-40-[warningImageView(==warningImageHeight)]-25-[interlockMessage][interlockLink]|" options:512 metrics:v30 views:v26];
    [v33 activateConstraints:v34];
  }

  return v3;
}

- (double)heightForWidth:(double)width
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(PABSPearlInterlockHeaderView *)self systemLayoutSizeFittingSize:width withHorizontalFittingPriority:0.0 verticalFittingPriority:v3, v4];
  return v5;
}

@end