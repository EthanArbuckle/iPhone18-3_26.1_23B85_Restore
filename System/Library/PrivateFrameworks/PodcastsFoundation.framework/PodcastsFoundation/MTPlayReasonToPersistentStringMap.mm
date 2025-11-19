@interface MTPlayReasonToPersistentStringMap
@end

@implementation MTPlayReasonToPersistentStringMap

void __MTPlayReasonToPersistentStringMap_inverted_block_invoke()
{
  v6[16] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F54BD550;
  v5[1] = &unk_1F54BD580;
  v6[0] = @"none";
  v6[1] = @"restoration";
  v5[2] = &unk_1F54BD598;
  v5[3] = &unk_1F54BD5B0;
  v6[2] = @"handoff";
  v6[3] = @"user";
  v5[4] = &unk_1F54BD5C8;
  v5[5] = &unk_1F54BD5E0;
  v6[4] = @"car-play";
  v6[5] = @"magical-moments";
  v5[6] = &unk_1F54BD5F8;
  v5[7] = &unk_1F54BD610;
  v6[6] = @"store";
  v6[7] = @"media-remote";
  v5[8] = &unk_1F54BD628;
  v5[9] = &unk_1F54BD640;
  v6[8] = @"siri";
  v6[9] = @"quick-actions";
  v5[10] = &unk_1F54BD658;
  v5[11] = &unk_1F54BD670;
  v6[10] = @"top-shelf";
  v6[11] = @"shared-queue";
  v5[12] = &unk_1F54BD688;
  v5[13] = &unk_1F54BD6A0;
  v6[12] = @"rich-notifications";
  v6[13] = @"playthrough";
  v5[14] = &unk_1F54BD6B8;
  v5[15] = &unk_1F54BD6D0;
  v6[14] = @"widget";
  v6[15] = @"**Invalid(enum-count)**";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:16];
  v1 = MTPlayReasonToPersistentStringMap_inverted_map;
  MTPlayReasonToPersistentStringMap_inverted_map = v0;

  v2 = [MTPlayReasonToPersistentStringMap_inverted_map mt_invertedDictionary];
  v3 = MTPlayReasonToPersistentStringMap_inverted_invertedMap;
  MTPlayReasonToPersistentStringMap_inverted_invertedMap = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end