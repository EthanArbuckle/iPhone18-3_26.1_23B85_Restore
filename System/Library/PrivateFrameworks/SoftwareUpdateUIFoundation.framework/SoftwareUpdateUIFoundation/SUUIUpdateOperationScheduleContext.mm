@interface SUUIUpdateOperationScheduleContext
- (SUUIUpdateOperationScheduleContext)initWithUnattendedPurge:(BOOL)purge;
@end

@implementation SUUIUpdateOperationScheduleContext

- (SUUIUpdateOperationScheduleContext)initWithUnattendedPurge:(BOOL)purge
{
  v8 = a2;
  purgeCopy = purge;
  v9 = 0;
  v6.receiver = self;
  v6.super_class = SUUIUpdateOperationScheduleContext;
  v5 = [(SUUIUpdateOperationScheduleContext *)&v6 init];
  v9 = v5;
  objc_storeStrong(&v9, v5);
  if (v5)
  {
    v9->_unattendedPurge = purgeCopy;
  }

  v4 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v4;
}

@end