@interface CSDSignposts
+ (BOOL)shouldTraceSingposts;
+ (void)trace:(unint64_t)a3;
@end

@implementation CSDSignposts

+ (BOOL)shouldTraceSingposts
{
  if (qword_1006ACED0 != -1)
  {
    sub_10047C680();
  }

  return byte_1006ACEC8;
}

+ (void)trace:(unint64_t)a3
{
  v3 = a3;
  if ([a1 shouldTraceSingposts])
  {

    _kdebug_trace((4 * (v3 & 0x3FFF)) | 0x2B170000u, 0, 0, 0, 0);
  }
}

@end