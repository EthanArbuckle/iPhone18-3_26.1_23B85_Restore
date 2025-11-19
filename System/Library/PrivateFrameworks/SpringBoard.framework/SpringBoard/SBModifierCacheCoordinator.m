@interface SBModifierCacheCoordinator
- (void)performResponse:(unint64_t)a3;
@end

@implementation SBModifierCacheCoordinator

- (void)performResponse:(unint64_t)a3
{
  if (a3 <= 2)
  {
    *(&self->super.isa + qword_21F8A75F0[a3]) = (*(&self->super.isa + qword_21F8A75F0[a3]) + qword_21F8A7608[a3]);
  }
}

@end