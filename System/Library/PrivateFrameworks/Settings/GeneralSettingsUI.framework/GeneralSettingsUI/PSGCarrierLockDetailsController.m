@interface PSGCarrierLockDetailsController
- (id)specifiers;
@end

@implementation PSGCarrierLockDetailsController

- (id)specifiers
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:sel_valueString_ detail:0 cell:4 edit:0];
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v7 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v6;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

@end