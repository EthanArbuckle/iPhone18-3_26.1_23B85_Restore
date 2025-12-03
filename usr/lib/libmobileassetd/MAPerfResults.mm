@interface MAPerfResults
- ($50828A08DC8D0425568E958C1030530A)qosLevelTimeCount;
- (BOOL)getPerfResults:(BOOL)results;
- (MAPerfResults)init;
@end

@implementation MAPerfResults

- (MAPerfResults)init
{
  v3.receiver = self;
  v3.super_class = MAPerfResults;
  return [(MAPerfResults *)&v3 init];
}

- ($50828A08DC8D0425568E958C1030530A)qosLevelTimeCount
{
  v3 = *&self[10].var3;
  v4 = *&self[4].var2;
  v5 = vsubq_s64(*&self[10].var1, *&self[4].var0);
  *&retstr->var0 = vsubq_s64(*&self[9].var4, *&self[3].var3);
  *&retstr->var2 = v5;
  *&retstr->var4 = vsubq_s64(v3, v4);
  return self;
}

- (BOOL)getPerfResults:(BOOL)results
{
  resultsCopy = results;
  v5 = getpid();
  v6 = 304;
  if (resultsCopy)
  {
    v6 = 8;
  }

  return proc_pid_rusage(v5, 4, (&self->super.isa + v6)) != 0;
}

@end