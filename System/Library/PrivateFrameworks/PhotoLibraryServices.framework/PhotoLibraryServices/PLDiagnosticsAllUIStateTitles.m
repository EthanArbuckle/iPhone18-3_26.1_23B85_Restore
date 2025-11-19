@interface PLDiagnosticsAllUIStateTitles
@end

@implementation PLDiagnosticsAllUIStateTitles

void ___PLDiagnosticsAllUIStateTitles_block_invoke()
{
  v3[11] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F0FBEB30;
  v2[1] = &unk_1F0FBEB48;
  v3[0] = @"All";
  v3[1] = @"Contextual Diagnostics";
  v2[2] = &unk_1F0FBEB60;
  v2[3] = &unk_1F0FBEB78;
  v3[2] = @"Current Asset Identifier";
  v3[3] = @"Current Asset View Model";
  v2[4] = &unk_1F0FBEB90;
  v2[5] = &unk_1F0FBEBA8;
  v3[4] = @"Current Asset Detailed Description";
  v3[5] = @"Current Asset Metadata";
  v2[6] = &unk_1F0FBEBC0;
  v2[7] = &unk_1F0FBEBD8;
  v3[6] = @"View Model Description";
  v3[7] = @"View Controller Hierarchy";
  v2[8] = &unk_1F0FBEBF0;
  v2[9] = &unk_1F0FBEC08;
  v3[8] = @"View Controller Descriptions";
  v3[9] = @"Window Recursive Descriptions";
  v2[10] = &unk_1F0FBEC20;
  v3[10] = @"Tungsten Hiearchy";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:11];
  v1 = _PLDiagnosticsAllUIStateTitles_allUIStateTitles;
  _PLDiagnosticsAllUIStateTitles_allUIStateTitles = v0;
}

@end