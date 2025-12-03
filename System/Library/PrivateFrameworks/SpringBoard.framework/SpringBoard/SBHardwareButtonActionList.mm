@interface SBHardwareButtonActionList
- (void)performQueuedButtonUpActions;
- (void)scheduleButtonUpActionBlock:(id)block;
@end

@implementation SBHardwareButtonActionList

- (void)performQueuedButtonUpActions
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *self;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "maximum reentrant queued button list actions exceeded (%d)", v3, 8u);
}

- (void)scheduleButtonUpActionBlock:(id)block
{
  blockCopy = block;
  v10 = blockCopy;
  if (self->_buttonDown)
  {
    if (!self->_actionBlocks)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      actionBlocks = self->_actionBlocks;
      self->_actionBlocks = v5;

      blockCopy = v10;
    }

    v7 = [blockCopy copy];
    v8 = self->_actionBlocks;
    v9 = MEMORY[0x223D6F7F0]();
    [(NSMutableArray *)v8 addObject:v9];
  }

  else
  {
    blockCopy[2]();
  }
}

@end