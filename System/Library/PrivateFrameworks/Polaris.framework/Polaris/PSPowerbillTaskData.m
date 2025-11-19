@interface PSPowerbillTaskData
- (void)addToCounts:(const thsc_time_cpi *)a3;
@end

@implementation PSPowerbillTaskData

- (void)addToCounts:(const thsc_time_cpi *)a3
{
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = &a3[v3];
    v7 = &self->_counts[v3];
    v8 = *&v7->ttci_instructions;
    *&v7->ttci_user_time_mach = vaddq_s64(*&v7->ttci_user_time_mach, v6[1]);
    *&v7->ttci_instructions = vaddq_s64(v8, *v6);
    v3 = 1;
    v4 = 0;
  }

  while ((v5 & 1) != 0);
}

@end