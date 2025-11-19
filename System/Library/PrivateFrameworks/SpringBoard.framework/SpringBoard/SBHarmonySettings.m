@interface SBHarmonySettings
- (void)setDefaultValues;
@end

@implementation SBHarmonySettings

- (void)setDefaultValues
{
  v4 = +[SBHarmonyController sharedInstance];
  [v4 whitePointAdaptationStrengthForWhitePointAdaptivityStyle:0];
  [(SBHarmonySettings *)self setWhitePointAdaptationStrengthStandard:?];
  [v4 whitePointAdaptationStrengthForWhitePointAdaptivityStyle:1];
  [(SBHarmonySettings *)self setWhitePointAdaptationStrengthReading:?];
  [v4 whitePointAdaptationStrengthForWhitePointAdaptivityStyle:2];
  [(SBHarmonySettings *)self setWhitePointAdaptationStrengthPhoto:?];
  [v4 whitePointAdaptationStrengthForWhitePointAdaptivityStyle:3];
  [(SBHarmonySettings *)self setWhitePointAdaptationStrengthVideo:?];
  [v4 whitePointAdaptationStrengthForWhitePointAdaptivityStyle:4];
  [(SBHarmonySettings *)self setWhitePointAdaptationStrengthGame:?];
  LODWORD(v3) = 2.0;
  [(SBHarmonySettings *)self setWhitePointAdaptationUpdateDefaultDuration:v3];
  [(SBHarmonySettings *)self setWhitePointAdaptationInteractiveUpdateEnabled:1];
  [(SBHarmonySettings *)self setWhitePointAdaptationInteractiveUpdateTimingFunctionName:*MEMORY[0x277CDA7B8]];
}

@end