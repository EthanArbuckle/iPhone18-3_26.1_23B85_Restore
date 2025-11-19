@interface BaseQueryHistoryManager
- (void)resetHistory;
@end

@implementation BaseQueryHistoryManager

- (void)resetHistory
{
  swift_beginAccess();
  v3 = *self->history;
  *self->history = MEMORY[0x277D84F90];
}

@end