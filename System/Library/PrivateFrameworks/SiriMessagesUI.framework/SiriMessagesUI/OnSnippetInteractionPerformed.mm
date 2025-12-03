@interface OnSnippetInteractionPerformed
- (void)emitWithTurnIdentifier:(id)identifier;
- (void)emitWithTurnIdentifier:(id)identifier aceViewId:(id)id;
@end

@implementation OnSnippetInteractionPerformed

- (void)emitWithTurnIdentifier:(id)identifier
{
  v4 = sub_26804BE4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26804BE2C();
  selfCopy = self;
  sub_26803E6E0();

  (*(v5 + 8))(v7, v4);
}

- (void)emitWithTurnIdentifier:(id)identifier aceViewId:(id)id
{
  v5 = sub_26804BE4C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  sub_26804BE2C();
  sub_26804BE2C();
  selfCopy = self;
  sub_26803E920();

  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
}

@end