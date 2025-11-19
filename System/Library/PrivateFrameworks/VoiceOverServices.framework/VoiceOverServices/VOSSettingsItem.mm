@interface VOSSettingsItem
+ (NSArray)allSettingsItems;
+ (VOSSettingsItem)Activities;
+ (VOSSettingsItem)AudioDucking;
+ (VOSSettingsItem)BSIActivationGestures;
+ (VOSSettingsItem)BrailleAlerts;
+ (VOSSettingsItem)BrailleAutoAdvanceDuration;
+ (VOSSettingsItem)BrailleFormatting;
+ (VOSSettingsItem)BrailleInput;
+ (VOSSettingsItem)BrailleOutput;
+ (VOSSettingsItem)CaptionPanel;
+ (VOSSettingsItem)DirectTouch;
+ (VOSSettingsItem)DuckingAmount;
+ (VOSSettingsItem)GestureDirection;
+ (VOSSettingsItem)HardwareTypingFeedback;
+ (VOSSettingsItem)Hints;
+ (VOSSettingsItem)ImageDescriptions;
+ (VOSSettingsItem)LargeCursor;
+ (VOSSettingsItem)LiveRegions;
+ (VOSSettingsItem)MediaDescriptions;
+ (VOSSettingsItem)NavigateImages;
+ (VOSSettingsItem)NavigationStyle;
+ (VOSSettingsItem)PhoneticFeedback;
+ (VOSSettingsItem)Pitch;
+ (VOSSettingsItem)Punctuation;
+ (VOSSettingsItem)RotorActionConfirmation;
+ (VOSSettingsItem)ScreenRecognition;
+ (VOSSettingsItem)SendToHDMI;
+ (VOSSettingsItem)SlideToType;
+ (VOSSettingsItem)SoftwareTypingFeedback;
+ (VOSSettingsItem)SoundCurtain;
+ (VOSSettingsItem)Sounds;
+ (VOSSettingsItem)SpeakNotifications;
+ (VOSSettingsItem)SpeakingRate;
+ (VOSSettingsItem)TypingStyle;
+ (VOSSettingsItem)Voice;
+ (VOSSettingsItem)Volume;
+ (id)settingsIDtoItemMap:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)localizedName;
- (id)_initWithIdentifier:(id)a3 itemType:(int64_t)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation VOSSettingsItem

- (id)_initWithIdentifier:(id)a3 itemType:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = VOSSettingsItem;
  v7 = [(VOSSettingsItem *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(VOSSettingsItem *)v7 setIdentifier:v6];
    [(VOSSettingsItem *)v8 setItemType:a4];
  }

  return v8;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(VOSSettingsItem *)self identifier];
  v4 = [v2 stringWithFormat:@"VOSSettingsItem '%@'", v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(VOSSettingsItem *)self identifier];
    v6 = [v4 identifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(VOSSettingsItem *)self identifier];
  v3 = [v2 hash];

  return v3;
}

+ (VOSSettingsItem)Sounds
{
  if (Sounds_onceToken != -1)
  {
    +[VOSSettingsItem Sounds];
  }

  v3 = Sounds__SettingsItem;

  return v3;
}

uint64_t __25__VOSSettingsItem_Sounds__block_invoke()
{
  Sounds__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"Sounds" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)AudioDucking
{
  if (AudioDucking_onceToken != -1)
  {
    +[VOSSettingsItem AudioDucking];
  }

  v3 = AudioDucking__SettingsItem;

  return v3;
}

uint64_t __31__VOSSettingsItem_AudioDucking__block_invoke()
{
  AudioDucking__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"AudioDucking" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)Volume
{
  if (Volume_onceToken != -1)
  {
    +[VOSSettingsItem Volume];
  }

  v3 = Volume__SettingsItem;

  return v3;
}

uint64_t __25__VOSSettingsItem_Volume__block_invoke()
{
  Volume__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"Volume" itemType:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)Pitch
{
  if (Pitch_onceToken != -1)
  {
    +[VOSSettingsItem Pitch];
  }

  v3 = Pitch__SettingsItem;

  return v3;
}

uint64_t __24__VOSSettingsItem_Pitch__block_invoke()
{
  Pitch__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"Pitch" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)PhoneticFeedback
{
  if (PhoneticFeedback_onceToken != -1)
  {
    +[VOSSettingsItem PhoneticFeedback];
  }

  v3 = PhoneticFeedback__SettingsItem;

  return v3;
}

uint64_t __35__VOSSettingsItem_PhoneticFeedback__block_invoke()
{
  PhoneticFeedback__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"PhoneticFeedback" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)SendToHDMI
{
  if (SendToHDMI_onceToken != -1)
  {
    +[VOSSettingsItem SendToHDMI];
  }

  v3 = SendToHDMI__SettingsItem;

  return v3;
}

uint64_t __29__VOSSettingsItem_SendToHDMI__block_invoke()
{
  SendToHDMI__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"SendToHDMI" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)SpeakNotifications
{
  if (SpeakNotifications_onceToken != -1)
  {
    +[VOSSettingsItem SpeakNotifications];
  }

  v3 = SpeakNotifications__SettingsItem;

  return v3;
}

uint64_t __37__VOSSettingsItem_SpeakNotifications__block_invoke()
{
  SpeakNotifications__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"SpeakNotifications" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)SoundCurtain
{
  if (SoundCurtain_onceToken != -1)
  {
    +[VOSSettingsItem SoundCurtain];
  }

  v3 = SoundCurtain__SettingsItem;

  return v3;
}

uint64_t __31__VOSSettingsItem_SoundCurtain__block_invoke()
{
  SoundCurtain__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"SoundCurtain" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)SpeakingRate
{
  if (SpeakingRate_onceToken != -1)
  {
    +[VOSSettingsItem SpeakingRate];
  }

  v3 = SpeakingRate__SettingsItem;

  return v3;
}

uint64_t __31__VOSSettingsItem_SpeakingRate__block_invoke()
{
  SpeakingRate__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"SpeakingRate" itemType:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)Voice
{
  if (Voice_onceToken != -1)
  {
    +[VOSSettingsItem Voice];
  }

  v3 = Voice__SettingsItem;

  return v3;
}

uint64_t __24__VOSSettingsItem_Voice__block_invoke()
{
  Voice__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"Voice" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)DuckingAmount
{
  if (DuckingAmount_onceToken != -1)
  {
    +[VOSSettingsItem DuckingAmount];
  }

  v3 = DuckingAmount__SettingsItem;

  return v3;
}

uint64_t __32__VOSSettingsItem_DuckingAmount__block_invoke()
{
  DuckingAmount__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"DuckingAmount" itemType:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)Hints
{
  if (Hints_onceToken != -1)
  {
    +[VOSSettingsItem Hints];
  }

  v3 = Hints__SettingsItem;

  return v3;
}

uint64_t __24__VOSSettingsItem_Hints__block_invoke()
{
  Hints__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"Hints" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)MediaDescriptions
{
  if (MediaDescriptions_onceToken != -1)
  {
    +[VOSSettingsItem MediaDescriptions];
  }

  v3 = MediaDescriptions__SettingsItem;

  return v3;
}

uint64_t __36__VOSSettingsItem_MediaDescriptions__block_invoke()
{
  MediaDescriptions__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"MediaDescriptions" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)RotorActionConfirmation
{
  if (RotorActionConfirmation_onceToken != -1)
  {
    +[VOSSettingsItem RotorActionConfirmation];
  }

  v3 = RotorActionConfirmation__SettingsItem;

  return v3;
}

uint64_t __42__VOSSettingsItem_RotorActionConfirmation__block_invoke()
{
  RotorActionConfirmation__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"RotorActionConfirmation" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)Activities
{
  if (Activities_onceToken != -1)
  {
    +[VOSSettingsItem Activities];
  }

  v3 = Activities__SettingsItem;

  return v3;
}

uint64_t __29__VOSSettingsItem_Activities__block_invoke()
{
  Activities__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"Activities" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)Punctuation
{
  if (Punctuation_onceToken != -1)
  {
    +[VOSSettingsItem Punctuation];
  }

  v3 = Punctuation__SettingsItem;

  return v3;
}

uint64_t __30__VOSSettingsItem_Punctuation__block_invoke()
{
  Punctuation__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"Punctuation" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)ScreenRecognition
{
  if (ScreenRecognition_onceToken != -1)
  {
    +[VOSSettingsItem ScreenRecognition];
  }

  v3 = ScreenRecognition__SettingsItem;

  return v3;
}

uint64_t __36__VOSSettingsItem_ScreenRecognition__block_invoke()
{
  ScreenRecognition__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"ScreenRecognition" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)ImageDescriptions
{
  if (ImageDescriptions_onceToken != -1)
  {
    +[VOSSettingsItem ImageDescriptions];
  }

  v3 = ImageDescriptions__SettingsItem;

  return v3;
}

uint64_t __36__VOSSettingsItem_ImageDescriptions__block_invoke()
{
  ImageDescriptions__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"ImageDescriptions" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)DirectTouch
{
  if (DirectTouch_onceToken != -1)
  {
    +[VOSSettingsItem DirectTouch];
  }

  v3 = DirectTouch__SettingsItem;

  return v3;
}

uint64_t __30__VOSSettingsItem_DirectTouch__block_invoke()
{
  DirectTouch__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"DirectTouch" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)NavigationStyle
{
  if (NavigationStyle_onceToken != -1)
  {
    +[VOSSettingsItem NavigationStyle];
  }

  v3 = NavigationStyle__SettingsItem;

  return v3;
}

uint64_t __34__VOSSettingsItem_NavigationStyle__block_invoke()
{
  NavigationStyle__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"NavigationStyle" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)NavigateImages
{
  if (NavigateImages_onceToken != -1)
  {
    +[VOSSettingsItem NavigateImages];
  }

  v3 = NavigateImages__SettingsItem;

  return v3;
}

uint64_t __33__VOSSettingsItem_NavigateImages__block_invoke()
{
  NavigateImages__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"NavigateImages" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)GestureDirection
{
  if (GestureDirection_onceToken != -1)
  {
    +[VOSSettingsItem GestureDirection];
  }

  v3 = GestureDirection__SettingsItem;

  return v3;
}

uint64_t __35__VOSSettingsItem_GestureDirection__block_invoke()
{
  GestureDirection__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"GestureDirection" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)TypingStyle
{
  if (TypingStyle_onceToken != -1)
  {
    +[VOSSettingsItem TypingStyle];
  }

  v3 = TypingStyle__SettingsItem;

  return v3;
}

uint64_t __30__VOSSettingsItem_TypingStyle__block_invoke()
{
  TypingStyle__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"TypingStyle" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)SoftwareTypingFeedback
{
  if (SoftwareTypingFeedback_onceToken != -1)
  {
    +[VOSSettingsItem SoftwareTypingFeedback];
  }

  v3 = SoftwareTypingFeedback__SettingsItem;

  return v3;
}

uint64_t __41__VOSSettingsItem_SoftwareTypingFeedback__block_invoke()
{
  SoftwareTypingFeedback__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"SoftwareTypingFeedback" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)HardwareTypingFeedback
{
  if (HardwareTypingFeedback_onceToken != -1)
  {
    +[VOSSettingsItem HardwareTypingFeedback];
  }

  v3 = HardwareTypingFeedback__SettingsItem;

  return v3;
}

uint64_t __41__VOSSettingsItem_HardwareTypingFeedback__block_invoke()
{
  HardwareTypingFeedback__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"HardwareTypingFeedback" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)SlideToType
{
  if (SlideToType_onceToken != -1)
  {
    +[VOSSettingsItem SlideToType];
  }

  v3 = SlideToType__SettingsItem;

  return v3;
}

uint64_t __30__VOSSettingsItem_SlideToType__block_invoke()
{
  SlideToType__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"SlideToType" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)CaptionPanel
{
  if (CaptionPanel_onceToken != -1)
  {
    +[VOSSettingsItem CaptionPanel];
  }

  v3 = CaptionPanel__SettingsItem;

  return v3;
}

uint64_t __31__VOSSettingsItem_CaptionPanel__block_invoke()
{
  CaptionPanel__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"CaptionPanel" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)LargeCursor
{
  if (LargeCursor_onceToken != -1)
  {
    +[VOSSettingsItem LargeCursor];
  }

  v3 = LargeCursor__SettingsItem;

  return v3;
}

uint64_t __30__VOSSettingsItem_LargeCursor__block_invoke()
{
  LargeCursor__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"LargeCursor" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)BrailleAlerts
{
  if (BrailleAlerts_onceToken != -1)
  {
    +[VOSSettingsItem BrailleAlerts];
  }

  v3 = BrailleAlerts__SettingsItem;

  return v3;
}

uint64_t __32__VOSSettingsItem_BrailleAlerts__block_invoke()
{
  BrailleAlerts__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"BrailleAlerts" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)BrailleFormatting
{
  if (BrailleFormatting_onceToken != -1)
  {
    +[VOSSettingsItem BrailleFormatting];
  }

  v3 = BrailleFormatting__SettingsItem;

  return v3;
}

uint64_t __36__VOSSettingsItem_BrailleFormatting__block_invoke()
{
  BrailleFormatting__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"BrailleFormatting" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)BrailleAutoAdvanceDuration
{
  if (BrailleAutoAdvanceDuration_onceToken != -1)
  {
    +[VOSSettingsItem BrailleAutoAdvanceDuration];
  }

  v3 = BrailleAutoAdvanceDuration__SettingsItem;

  return v3;
}

uint64_t __45__VOSSettingsItem_BrailleAutoAdvanceDuration__block_invoke()
{
  BrailleAutoAdvanceDuration__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"BrailleAutoAdvanceDuration" itemType:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)BrailleOutput
{
  if (BrailleOutput_onceToken != -1)
  {
    +[VOSSettingsItem BrailleOutput];
  }

  v3 = BrailleOutput__SettingsItem;

  return v3;
}

uint64_t __32__VOSSettingsItem_BrailleOutput__block_invoke()
{
  BrailleOutput__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"BrailleOutput" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)BrailleInput
{
  if (BrailleInput_onceToken != -1)
  {
    +[VOSSettingsItem BrailleInput];
  }

  v3 = BrailleInput__SettingsItem;

  return v3;
}

uint64_t __31__VOSSettingsItem_BrailleInput__block_invoke()
{
  BrailleInput__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"BrailleInput" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)LiveRegions
{
  if (LiveRegions_onceToken != -1)
  {
    +[VOSSettingsItem LiveRegions];
  }

  v3 = LiveRegions__SettingsItem;

  return v3;
}

uint64_t __30__VOSSettingsItem_LiveRegions__block_invoke()
{
  LiveRegions__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"LiveRegions" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)BSIActivationGestures
{
  if (BSIActivationGestures_onceToken != -1)
  {
    +[VOSSettingsItem BSIActivationGestures];
  }

  v3 = BSIActivationGestures__SettingsItem;

  return v3;
}

uint64_t __40__VOSSettingsItem_BSIActivationGestures__block_invoke()
{
  BSIActivationGestures__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"BSIActivationGestures" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (NSArray)allSettingsItems
{
  if (allSettingsItems_onceToken != -1)
  {
    +[VOSSettingsItem allSettingsItems];
  }

  v3 = allSettingsItems_FinalList;

  return v3;
}

void __35__VOSSettingsItem_allSettingsItems__block_invoke()
{
  v42[35] = *MEMORY[0x277D85DE8];
  v41 = +[VOSSettingsItem Sounds];
  v42[0] = v41;
  v40 = +[VOSSettingsItem AudioDucking];
  v42[1] = v40;
  v39 = +[VOSSettingsItem Volume];
  v42[2] = v39;
  v38 = +[VOSSettingsItem Pitch];
  v42[3] = v38;
  v37 = +[VOSSettingsItem PhoneticFeedback];
  v42[4] = v37;
  v36 = +[VOSSettingsItem SendToHDMI];
  v42[5] = v36;
  v35 = +[VOSSettingsItem SpeakNotifications];
  v42[6] = v35;
  v34 = +[VOSSettingsItem SoundCurtain];
  v42[7] = v34;
  v33 = +[VOSSettingsItem SpeakingRate];
  v42[8] = v33;
  v32 = +[VOSSettingsItem Voice];
  v42[9] = v32;
  v31 = +[VOSSettingsItem DuckingAmount];
  v42[10] = v31;
  v30 = +[VOSSettingsItem Hints];
  v42[11] = v30;
  v29 = +[VOSSettingsItem MediaDescriptions];
  v42[12] = v29;
  v28 = +[VOSSettingsItem RotorActionConfirmation];
  v42[13] = v28;
  v27 = +[VOSSettingsItem Activities];
  v42[14] = v27;
  v26 = +[VOSSettingsItem Punctuation];
  v42[15] = v26;
  v25 = +[VOSSettingsItem ScreenRecognition];
  v42[16] = v25;
  v24 = +[VOSSettingsItem ImageDescriptions];
  v42[17] = v24;
  v23 = +[VOSSettingsItem DirectTouch];
  v42[18] = v23;
  v22 = +[VOSSettingsItem NavigationStyle];
  v42[19] = v22;
  v21 = +[VOSSettingsItem NavigateImages];
  v42[20] = v21;
  v20 = +[VOSSettingsItem GestureDirection];
  v42[21] = v20;
  v19 = +[VOSSettingsItem TypingStyle];
  v42[22] = v19;
  v17 = +[VOSSettingsItem SoftwareTypingFeedback];
  v42[23] = v17;
  v16 = +[VOSSettingsItem HardwareTypingFeedback];
  v42[24] = v16;
  v15 = +[VOSSettingsItem SlideToType];
  v42[25] = v15;
  v0 = +[VOSSettingsItem CaptionPanel];
  v42[26] = v0;
  v1 = +[VOSSettingsItem LargeCursor];
  v42[27] = v1;
  v2 = +[VOSSettingsItem BrailleAlerts];
  v42[28] = v2;
  v3 = +[VOSSettingsItem BrailleFormatting];
  v42[29] = v3;
  v4 = +[VOSSettingsItem BrailleAutoAdvanceDuration];
  v42[30] = v4;
  v5 = +[VOSSettingsItem BrailleOutput];
  v42[31] = v5;
  v6 = +[VOSSettingsItem BrailleInput];
  v42[32] = v6;
  v7 = +[VOSSettingsItem LiveRegions];
  v42[33] = v7;
  v8 = +[VOSSettingsItem BSIActivationGestures];
  v42[34] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:35];
  v18 = [v9 mutableCopy];

  v10 = [v18 ax_filteredArrayUsingBlock:&__block_literal_global_463];
  v11 = allSettingsItems_FinalList;
  allSettingsItems_FinalList = v10;

  v12 = [allSettingsItems_FinalList sortedArrayUsingComparator:&__block_literal_global_467_0];
  v13 = allSettingsItems_FinalList;
  allSettingsItems_FinalList = v12;

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __35__VOSSettingsItem_allSettingsItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[VOSSettingsHelper sharedInstance];
  v4 = [v3 isItemSupported:v2];

  return v4;
}

uint64_t __35__VOSSettingsItem_allSettingsItems__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = +[VOSSettingsHelper sharedInstance];
  v7 = [v6 nameForItem:v5];

  v8 = +[VOSSettingsHelper sharedInstance];
  v9 = [v8 nameForItem:v4];

  v10 = [v7 localizedStandardCompare:v9];
  return v10;
}

+ (id)settingsIDtoItemMap:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 identifier];
        [v4 setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSString)localizedName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(VOSSettingsItem *)self identifier];
  v4 = [v2 stringWithFormat:@"VOSSettingsItem.%@", v3];

  v5 = VOSLocString(v4);

  return v5;
}

@end