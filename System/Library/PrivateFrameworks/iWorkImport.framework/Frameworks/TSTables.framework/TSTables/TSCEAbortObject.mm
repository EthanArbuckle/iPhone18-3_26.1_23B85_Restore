@interface TSCEAbortObject
- (TSCEAbortObject)initWithSecondsTillAbort:(int)abort;
@end

@implementation TSCEAbortObject

- (TSCEAbortObject)initWithSecondsTillAbort:(int)abort
{
  v10.receiver = self;
  v10.super_class = TSCEAbortObject;
  v4 = [(TSCEAbortObject *)&v10 init];
  if (v4)
  {
    v5 = dispatch_time(0, 1000000000 * (abort & ~(abort >> 31)));
    v6 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_221230C14;
    block[3] = &unk_27845E3F8;
    v9 = v4;
    dispatch_after(v5, v6, block);
  }

  return v4;
}

@end