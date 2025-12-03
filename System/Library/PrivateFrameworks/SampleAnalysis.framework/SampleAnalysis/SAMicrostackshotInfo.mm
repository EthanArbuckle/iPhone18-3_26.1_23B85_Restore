@interface SAMicrostackshotInfo
- (double)clear;
- (void)setBootinfo:(uint64_t)bootinfo microSnapshotFlags:(int)flags wallTime:(void *)time processID:(void *)d processName:(uint64_t)name processMainBinaryUUID:(uint64_t)iD processResourceCoalitionID:(double)coalitionID threadID:(int)self0 threadOnBehalfOfProximatePid:(int)self1 threadOnBehalfOfOriginPid:;
@end

@implementation SAMicrostackshotInfo

- (double)clear
{
  if (self)
  {
    v2 = *(self + 24);
    *(self + 24) = 0;

    *(self + 32) = 0;
    *(self + 40) = 0;
    *(self + 8) = -1;
    v3 = *(self + 48);
    *(self + 48) = 0;

    v4 = *(self + 56);
    *(self + 56) = 0;

    *(self + 64) = 0u;
    result = NAN;
    *(self + 12) = -1;
  }

  return result;
}

- (void)setBootinfo:(uint64_t)bootinfo microSnapshotFlags:(int)flags wallTime:(void *)time processID:(void *)d processName:(uint64_t)name processMainBinaryUUID:(uint64_t)iD processResourceCoalitionID:(double)coalitionID threadID:(int)self0 threadOnBehalfOfProximatePid:(int)self1 threadOnBehalfOfOriginPid:
{
  if (self)
  {
    objc_storeStrong((self + 24), a2);
    *(self + 32) = bootinfo;
    *(self + 40) = coalitionID;
    *(self + 8) = flags;
    objc_storeStrong((self + 48), time);
    objc_storeStrong((self + 56), d);
    *(self + 64) = name;
    *(self + 72) = iD;
    *(self + 12) = threadID;
    *(self + 16) = pid;
  }
}

@end