@interface TipManager
- (void)barCompressionStatusDidChange:(id)a3;
@end

@implementation TipManager

- (void)barCompressionStatusDidChange:(id)a3
{
  v3 = sub_1D818E454();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E414();

  sub_1D81878FC();

  (*(v4 + 8))(v6, v3);
}

@end