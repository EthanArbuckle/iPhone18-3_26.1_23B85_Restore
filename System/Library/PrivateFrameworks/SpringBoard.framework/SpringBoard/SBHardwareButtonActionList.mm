@interface SBHardwareButtonActionList
- (void)performQueuedButtonUpActions;
- (void)scheduleButtonUpActionBlock:(id)a3;
@end

@implementation SBHardwareButtonActionList

- (void)performQueuedButtonUpActions
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "maximum reentrant queued button list actions exceeded (%d)", v3, 8u);
}

- (void)scheduleButtonUpActionBlock:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_buttonDown)
  {
    if (!self->_actionBlocks)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      actionBlocks = self->_actionBlocks;
      self->_actionBlocks = v5;

      v4 = v10;
    }

    v7 = [v4 copy];
    v8 = self->_actionBlocks;
    v9 = MEMORY[0x223D6F7F0]();
    [(NSMutableArray *)v8 addObject:v9];
  }

  else
  {
    v4[2]();
  }
}

@end