@interface PLDuetServiceImpl
- (PLService)duetService;
@end

@implementation PLDuetServiceImpl

- (PLService)duetService
{
  WeakRetained = objc_loadWeakRetained(&self->_duetService);

  return WeakRetained;
}

@end