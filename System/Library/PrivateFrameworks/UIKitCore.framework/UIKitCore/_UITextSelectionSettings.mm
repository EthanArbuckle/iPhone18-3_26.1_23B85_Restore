@interface _UITextSelectionSettings
+ (id)sharedInstance;
- (void)setDefaultValues;
@end

@implementation _UITextSelectionSettings

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___UITextSelectionSettings_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED4963E8 != -1)
  {
    dispatch_once(&qword_1ED4963E8, block);
  }

  v2 = _MergedGlobals_8;

  return v2;
}

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = _UITextSelectionSettings;
  [(PTSettings *)&v5 setDefaultValues];
  [(_UITextSelectionSettings *)self setMinPinkWidth:10.0];
  [(_UITextSelectionSettings *)self setMaxPinkWidth:30.0];
  [(_UITextSelectionSettings *)self setPinkWidthFactor:0.3];
  [(_UITextSelectionSettings *)self setLinear:2.0];
  [(_UITextSelectionSettings *)self setParabolic:5.0];
  [(_UITextSelectionSettings *)self setGain:0.2];
  [(_UITextSelectionSettings *)self setAllowableSeparation:300.0];
  [(_UITextSelectionSettings *)self setAllowableForceMovement:15.0];
  v3 = MEMORY[0x1E695E118];
  [(_UITextSelectionSettings *)self setAllowExtendingSelections:MEMORY[0x1E695E118]];
  [(_UITextSelectionSettings *)self setShouldUseAcceleration:v3];
  v4 = MEMORY[0x1E695E110];
  [(_UITextSelectionSettings *)self setShouldPreferEndOfWord:MEMORY[0x1E695E110]];
  [(_UITextSelectionSettings *)self setEnableDeepPress:v4];
}

@end