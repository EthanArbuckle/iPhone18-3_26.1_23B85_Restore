@interface WatchControlSettings(GreySupportFeatures)
@end

@implementation WatchControlSettings(GreySupportFeatures)

- (void)setWatchControlHandGeturesEnabled:()GreySupportFeatures .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = NSStringFromBOOL();
  OUTLINED_FUNCTION_2(&dword_2729FD000, v1, v2, "Set AssistiveTouch hand gestures: %@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setVoiceOverHandGestures:()GreySupportFeatures .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = NSStringFromBOOL();
  OUTLINED_FUNCTION_2(&dword_2729FD000, v1, v2, "Set VoiceOver hand gestures: %@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setZoomHandGestures:()GreySupportFeatures .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = NSStringFromBOOL();
  OUTLINED_FUNCTION_2(&dword_2729FD000, v1, v2, "Set zoom hand gestures: %@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

@end