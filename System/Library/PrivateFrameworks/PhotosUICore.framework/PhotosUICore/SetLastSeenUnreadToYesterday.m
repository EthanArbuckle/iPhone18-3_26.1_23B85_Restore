@interface SetLastSeenUnreadToYesterday
@end

@implementation SetLastSeenUnreadToYesterday

uint64_t ___SetLastSeenUnreadToYesterday_block_invoke()
{
  v0 = [MEMORY[0x1E695DF00] now];
  v1 = [MEMORY[0x1E695DEE8] currentCalendar];
  v2 = [v1 dateByAddingUnit:16 value:-1 toDate:v0 options:0];
  PXSetSharedAlbumsActivityLastSeenDateToDate(v2);

  return 1;
}

@end