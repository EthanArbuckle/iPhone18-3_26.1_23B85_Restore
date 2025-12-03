@interface RFVisualResponseShown
- (_TtC9SnippetUI21RFVisualResponseShown)initWithCardData:(id)data responseViewId:(id)id;
- (void)emitWithTurnIdentifier:(id)identifier;
- (void)emitWithTurnIdentifier:(id)identifier aceViewId:(id)id;
@end

@implementation RFVisualResponseShown

- (_TtC9SnippetUI21RFVisualResponseShown)initWithCardData:(id)data responseViewId:(id)id
{
  dataCopy = data;
  idCopy = id;
  v7 = sub_26A84ABF8();
  v9 = v8;

  v10 = sub_26A8517B8();
  v12 = v11;

  return RFVisualResponseShown.init(cardData:responseViewId:)(v7, v9, v10, v12);
}

- (void)emitWithTurnIdentifier:(id)identifier
{
  v4 = sub_26A84ACC8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84ACA8();
  selfCopy = self;
  sub_26A7F6584(v7);

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
  sub_26A6ADBA0();

  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
}

@end