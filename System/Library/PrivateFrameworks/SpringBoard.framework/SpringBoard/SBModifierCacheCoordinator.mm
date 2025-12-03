@interface SBModifierCacheCoordinator
- (void)performResponse:(unint64_t)response;
@end

@implementation SBModifierCacheCoordinator

- (void)performResponse:(unint64_t)response
{
  if (response <= 2)
  {
    *(&self->super.isa + qword_21F8A75F0[response]) = (*(&self->super.isa + qword_21F8A75F0[response]) + qword_21F8A7608[response]);
  }
}

@end