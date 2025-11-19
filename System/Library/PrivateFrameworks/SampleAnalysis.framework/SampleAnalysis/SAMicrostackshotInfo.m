@interface SAMicrostackshotInfo
- (double)clear;
- (void)setBootinfo:(uint64_t)a3 microSnapshotFlags:(int)a4 wallTime:(void *)a5 processID:(void *)a6 processName:(uint64_t)a7 processMainBinaryUUID:(uint64_t)a8 processResourceCoalitionID:(double)a9 threadID:(int)a10 threadOnBehalfOfProximatePid:(int)a11 threadOnBehalfOfOriginPid:;
@end

@implementation SAMicrostackshotInfo

- (double)clear
{
  if (a1)
  {
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;

    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 8) = -1;
    v3 = *(a1 + 48);
    *(a1 + 48) = 0;

    v4 = *(a1 + 56);
    *(a1 + 56) = 0;

    *(a1 + 64) = 0u;
    result = NAN;
    *(a1 + 12) = -1;
  }

  return result;
}

- (void)setBootinfo:(uint64_t)a3 microSnapshotFlags:(int)a4 wallTime:(void *)a5 processID:(void *)a6 processName:(uint64_t)a7 processMainBinaryUUID:(uint64_t)a8 processResourceCoalitionID:(double)a9 threadID:(int)a10 threadOnBehalfOfProximatePid:(int)a11 threadOnBehalfOfOriginPid:
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
    *(a1 + 32) = a3;
    *(a1 + 40) = a9;
    *(a1 + 8) = a4;
    objc_storeStrong((a1 + 48), a5);
    objc_storeStrong((a1 + 56), a6);
    *(a1 + 64) = a7;
    *(a1 + 72) = a8;
    *(a1 + 12) = a10;
    *(a1 + 16) = a11;
  }
}

@end