@interface PU
@end

@implementation PU

void __103__PU_VKCImageSubjectGlowLayer_configureAnimationWithViewScale_screenScale_path_index_count_identifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = MEMORY[0x1E696AD98];
  v8 = *(a1 + 72);
  v9 = a2;
  v10 = [v7 numberWithDouble:v8];
  [v3 renderGlowParameters:v9 path:v4 pathLength:v10 duration:*(a1 + 40) maxStrokeLengthFraction:v5 beginDelay:v6 identifier:*(a1 + 80)];
}

@end