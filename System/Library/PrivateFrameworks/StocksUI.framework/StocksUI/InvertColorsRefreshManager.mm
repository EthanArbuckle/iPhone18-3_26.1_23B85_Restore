@interface InvertColorsRefreshManager
- (void)accessibilityInvertColorsStatusDidChange:(id)change;
@end

@implementation InvertColorsRefreshManager

- (void)accessibilityInvertColorsStatusDidChange:(id)change
{
  v3 = sub_220884A6C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220884A5C();

  sub_2206E8B34();

  (*(v4 + 8))(v7, v3);
}

@end