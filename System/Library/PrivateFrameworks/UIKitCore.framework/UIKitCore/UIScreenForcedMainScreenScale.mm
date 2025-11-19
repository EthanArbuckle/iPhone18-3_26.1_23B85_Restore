@interface UIScreenForcedMainScreenScale
@end

@implementation UIScreenForcedMainScreenScale

void ___UIScreenForcedMainScreenScale_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  +[UIApplication _classicMode];
  if (v1 <= 2.0 || dyld_program_sdk_at_least())
  {
    qword_1ED49AB78 = 0;
  }

  else
  {
    qword_1ED49AB78 = 0x4000000000000000;
    qword_1ED49AB68 = _dyld_get_image_name(0);
    v6 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:qword_1ED49AB68 isDirectory:0 relativeToURL:0];
    v2 = [v6 URLByResolvingSymlinksInPath];
    v3 = [v2 URLByDeletingLastPathComponent];
    v4 = [v3 absoluteString];
    v5 = qword_1ED49AB70;
    qword_1ED49AB70 = v4;
  }
}

@end