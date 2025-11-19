@interface UIKBRTFingerDetectionFingerFeedbackView
@end

@implementation UIKBRTFingerDetectionFingerFeedbackView

void __78___UIKBRTFingerDetectionFingerFeedbackView_centerOn_withRadius_andIdentifier___block_invoke()
{
  v3[13] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1EFE31F90;
  v2[1] = &unk_1EFE31E70;
  v3[0] = @"?";
  v3[1] = @"L?";
  v2[2] = &unk_1EFE31F00;
  v2[3] = &unk_1EFE31ED0;
  v3[2] = @"R?";
  v3[3] = @"LL";
  v2[4] = &unk_1EFE31EB8;
  v2[5] = &unk_1EFE31EA0;
  v3[4] = @"LR";
  v3[5] = @"LM";
  v2[6] = &unk_1EFE31E88;
  v2[7] = &unk_1EFE31EE8;
  v3[6] = @"LI";
  v3[7] = @"LT";
  v2[8] = &unk_1EFE31F78;
  v2[9] = &unk_1EFE31F18;
  v3[8] = @"RT";
  v3[9] = @"RI";
  v2[10] = &unk_1EFE31F30;
  v2[11] = &unk_1EFE31F48;
  v3[10] = @"RM";
  v3[11] = @"RR";
  v2[12] = &unk_1EFE31F60;
  v3[12] = @"RL";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:13];
  v1 = qword_1ED499CA8;
  qword_1ED499CA8 = v0;
}

@end