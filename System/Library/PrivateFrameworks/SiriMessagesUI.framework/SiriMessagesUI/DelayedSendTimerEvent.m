@interface DelayedSendTimerEvent
- (void)emitWithTurnIdentifier:(id)a3;
- (void)emitWithTurnIdentifier:(id)a3 aceViewId:(id)a4;
@end

@implementation DelayedSendTimerEvent

- (void)emitWithTurnIdentifier:(id)a3
{
  v4 = sub_26804BE4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26804BE2C();
  v8 = self;
  sub_267FBFE80();

  (*(v5 + 8))(v7, v4);
}

- (void)emitWithTurnIdentifier:(id)a3 aceViewId:(id)a4
{
  v5 = sub_26804BE4C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  sub_26804BE2C();
  sub_26804BE2C();
  v12 = self;
  sub_267FC00C8();

  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
}

@end