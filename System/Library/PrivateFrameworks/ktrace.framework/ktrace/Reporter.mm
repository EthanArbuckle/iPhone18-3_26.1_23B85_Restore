@interface Reporter
- (void)failWithReason:(id)a3;
- (void)warnWithMessage:(id)a3;
@end

@implementation Reporter

- (void)failWithReason:(id)a3
{
  v4 = sub_22EE3C124();
  v6 = v5;
  v7 = *(self->super.isa + 29);

  v7(v4, v6);
}

- (void)warnWithMessage:(id)a3
{
  v4 = sub_22EE3C124();
  v6 = v5;

  MEMORY[0x2318F58F0](v4, v6);

  (*(self->super.isa + 27))(0x3A676E696E726177, 0xE900000000000020, 1, 0);
}

@end