@interface RFSnippetRenderingContext
- (void)emitWithTurnIdentifier:(id)identifier;
- (void)emitWithTurnIdentifier:(id)identifier aceViewId:(id)id;
@end

@implementation RFSnippetRenderingContext

- (void)emitWithTurnIdentifier:(id)identifier
{
  v4 = sub_26A84ACC8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84ACA8();
  selfCopy = self;
  sub_26A5229CC(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)emitWithTurnIdentifier:(id)identifier aceViewId:(id)id
{
  v5 = sub_26A84ACC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_26A84ACA8();
  sub_26A84ACA8();
  selfCopy = self;
  sub_26A522D54(v11, v8);

  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
}

@end